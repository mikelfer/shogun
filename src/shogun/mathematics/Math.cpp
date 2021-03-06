/*
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 3 of the License, or
 * (at your option) any later version.
 *
 * Written (W) 1999-2009 Soeren Sonnenburg
 * Written (W) 1999-2008 Gunnar Raetsch
 * Copyright (C) 1999-2009 Fraunhofer Institute FIRST and Max-Planck-Society
 */
#include <shogun/lib/config.h>
#include <shogun/base/SGObject.h>
#include <shogun/lib/common.h>
#include <cmath>
#include <shogun/mathematics/Math.h>
#include <shogun/mathematics/lapack.h>
#include <shogun/io/SGIO.h>
#include <shogun/lib/SGVector.h>

#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <float.h>

#ifndef NAN
#include <stdlib.h>
#define NAN (strtod("NAN",NULL))
#endif


using namespace shogun;

#ifdef USE_LOGCACHE
#ifdef USE_HMMDEBUG
#define MAX_LOG_TABLE_SIZE 10*1024*1024
#define LOG_TABLE_PRECISION 1e-6
#else //USE_HMMDEBUG
#define MAX_LOG_TABLE_SIZE 123*1024*1024
#define LOG_TABLE_PRECISION 1e-15
#endif //USE_HMMDEBUG
int32_t CMath::LOGACCURACY         = 0; // 100000 steps per integer
#endif // USE_LOGCACHE

int32_t CMath::LOGRANGE            = 0; // range for logtable: log(1+exp(x))  -25 <= x <= 0

const float64_t CMath::NOT_A_NUMBER    	=  NAN;
const float64_t CMath::INFTY            =  INFINITY;	// infinity
const float64_t CMath::ALMOST_INFTY		=  +1e+300;		//a large number
const float64_t CMath::ALMOST_NEG_INFTY =  -1e+300;
const float64_t CMath::PI=M_PI;
const float64_t CMath::MACHINE_EPSILON=DBL_EPSILON;
const float64_t CMath::MAX_REAL_NUMBER=DBL_MAX;
const float64_t CMath::MIN_REAL_NUMBER=DBL_MIN;
const float32_t CMath::F_MAX_VAL32=FLT_MAX;
const float32_t CMath::F_MIN_NORM_VAL32=FLT_MIN;
const float64_t CMath::F_MAX_VAL64=DBL_MAX;
const float64_t CMath::F_MIN_NORM_VAL64=DBL_MIN;
const float32_t CMath::F_MIN_VAL32=(FLT_MIN * FLT_EPSILON);
const float64_t CMath::F_MIN_VAL64=(DBL_MIN * DBL_EPSILON);

#ifdef USE_LOGCACHE
float64_t* CMath::logtable = NULL;
#endif
uint32_t CMath::seed = 0;

CMath::CMath()
: CSGObject()
{
#ifdef USE_LOGCACHE
    LOGRANGE=CMath::determine_logrange();
    LOGACCURACY=CMath::determine_logaccuracy(LOGRANGE);
    CMath::logtable=SG_MALLOC(float64_t, LOGRANGE*LOGACCURACY);
    init_log_table();
#else
	int32_t i=0;
	while ((float64_t)log(1+((float64_t)exp(-float64_t(i)))))
		i++;

	LOGRANGE=i;
#endif
}

CMath::~CMath()
{
#ifdef USE_LOGCACHE
	SG_FREE(CMath::logtable);
	CMath::logtable=NULL;
#endif
}

#ifdef USE_LOGCACHE
int32_t CMath::determine_logrange()
{
    int32_t i;
    float64_t acc=0;
    for (i=0; i<50; i++)
	{
		acc=((float64_t)log(1+((float64_t)exp(-float64_t(i)))));
		if (acc<=(float64_t)LOG_TABLE_PRECISION)
			break;
	}

    SG_SINFO("determined range for x in table log(1+exp(-x)) is:%d (error:%G)\n",i,acc)
    return i;
}

int32_t CMath::determine_logaccuracy(int32_t range)
{
    range=MAX_LOG_TABLE_SIZE/range/((int)sizeof(float64_t));
    SG_SINFO("determined accuracy for x in table log(1+exp(-x)) is:%d (error:%G)\n",range,1.0/(double) range)
    return range;
}

//init log table of form log(1+exp(x))
void CMath::init_log_table()
{
  for (int32_t i=0; i< LOGACCURACY*LOGRANGE; i++)
    logtable[i]=log(1+exp(float64_t(-i)/float64_t(LOGACCURACY)));
}
#endif

void CMath::sort(int32_t *a, int32_t cols, int32_t sort_col)
{
  int32_t changed=1;
  if (a[0]==-1) return ;
  while (changed)
  {
      changed=0; int32_t i=0 ;
      while ((a[(i+1)*cols]!=-1) && (a[(i+1)*cols+1]!=-1)) // to be sure
	  {
		  if (a[i*cols+sort_col]>a[(i+1)*cols+sort_col])
		  {
			  for (int32_t j=0; j<cols; j++)
				  CMath::swap(a[i*cols+j],a[(i+1)*cols+j]) ;
			  changed=1 ;
		  } ;
		  i++ ;
	  } ;
  } ;
}

void CMath::sort(float64_t *a, int32_t* idx, int32_t N)
{
	int32_t changed=1;
	while (changed)
	{
		changed=0;
		for (int32_t i=0; i<N-1; i++)
		{
			if (a[i]>a[i+1])
			{
				swap(a[i],a[i+1]) ;
				swap(idx[i],idx[i+1]) ;
				changed=1 ;
			} ;
		} ;
	} ;

}

float64_t CMath::Align(
	char* seq1, char* seq2, int32_t l1, int32_t l2, float64_t gapCost)
{
  float64_t actCost=0 ;
  int32_t i1, i2 ;
  float64_t* const gapCosts1 = SG_MALLOC(float64_t,  l1 );
  float64_t* const gapCosts2 = SG_MALLOC(float64_t,  l2 );
  float64_t* costs2_0 = SG_MALLOC(float64_t,  l2 + 1 );
  float64_t* costs2_1 = SG_MALLOC(float64_t,  l2 + 1 );

  // initialize borders
  for( i1 = 0; i1 < l1; ++i1 ) {
    gapCosts1[ i1 ] = gapCost * i1;
  }
  costs2_1[ 0 ] = 0;
  for( i2 = 0; i2 < l2; ++i2 ) {
    gapCosts2[ i2 ] = gapCost * i2;
    costs2_1[ i2+1 ] = costs2_1[ i2 ] + gapCosts2[ i2 ];
  }
  // compute alignment
  for( i1 = 0; i1 < l1; ++i1 ) {
    swap( costs2_0, costs2_1 );
    actCost = costs2_0[ 0 ] + gapCosts1[ i1 ];
    costs2_1[ 0 ] = actCost;
    for( i2 = 0; i2 < l2; ++i2 ) {
      const float64_t actMatch = costs2_0[ i2 ] + ( seq1[i1] == seq2[i2] );
      const float64_t actGap1 = costs2_0[ i2+1 ] + gapCosts1[ i1 ];
      const float64_t actGap2 = actCost + gapCosts2[ i2 ];
      const float64_t actGap = min( actGap1, actGap2 );
      actCost = min( actMatch, actGap );
      costs2_1[ i2+1 ] = actCost;
    }
  }

  SG_FREE(gapCosts1);
  SG_FREE(gapCosts2);
  SG_FREE(costs2_0);
  SG_FREE(costs2_1);

  // return the final cost
  return actCost;
}

void CMath::linspace(float64_t* output, float64_t start, float64_t end, int32_t n)
{
	float64_t delta = (end-start) / (n-1);
	float64_t v = start;
	index_t i = 0;
	while ( v <= end )
	{
		output[i++] = v;
		v += delta;
	}
	output[n-1] = end;
}

int CMath::is_nan(double f)
{
#ifndef HAVE_STD_ISNAN
#if (HAVE_DECL_ISNAN == 1) || defined(HAVE_ISNAN)
  return ::isnan(f);
#else
  return ((f != f) ? 1 : 0);
#endif // #if (HAVE_DECL_ISNAN == 1) || defined(HAVE_ISNAN)
#endif // #ifndef HAVE_STD_ISNAN

	return std::isnan(f);
}

int CMath::is_infinity(double f)
{
#ifndef HAVE_STD_ISINF
#if (HAVE_DECL_ISINF == 1) || defined(HAVE_ISINF)
  return ::isinf(f);
#elif defined(FPCLASS)
  if (::fpclass(f) == FP_NINF) return -1;
  else if (::fpclass(f) == FP_PINF) return 1;
  else return 0;
#else
  if ((f == f) && ((f - f) != 0.0)) return (f < 0.0 ? -1 : 1);
  else return 0;
}
#endif // #if (HAVE_DECL_ISINF == 1) || defined(HAVE_ISINF)
#endif // #ifndef HAVE_STD_ISINF

	return std::isinf(f);
}

int CMath::is_finite(double f)
{
#ifndef HAVE_STD_ISFINITE
#if (HAVE_DECL_ISFINITE == 1) || defined(HAVE_ISFINITE)
  return ::isfinite(f);
#elif defined(HAVE_FINITE)
  return ::finite(f);
#else
  return ((!std::isnan(f) && !std::isinf(f)) ? 1 : 0);
#endif // #if (HAVE_DECL_ISFINITE == 1) || defined(HAVE_ISFINITE)
#endif // #ifndef HAVE_STD_ISFINITE

  return std::isfinite(f);
}

bool CMath::strtof(const char* str, float32_t* float_result)
{
	ASSERT(str);
	ASSERT(float_result);

	SGVector<char> buf(strlen(str)+1);

	for (index_t i=0; i<buf.vlen-1; i++)
		buf[i]=tolower(str[i]);
	buf[buf.vlen-1]='\0';

	if (strstr(buf, "inf") != NULL)
	{
		*float_result = CMath::INFTY;

		if (strchr(buf,'-') != NULL)
			*float_result *= -1;
		return true;
	}

	if (strstr(buf, "nan") != NULL)
	{
		*float_result = CMath::NOT_A_NUMBER;
		return true;
	}

	char* endptr = buf.vector;
	*float_result=::strtof(str, &endptr);
	return endptr != buf.vector;
}

bool CMath::strtod(const char* str, float64_t* double_result)
{
	ASSERT(str);
	ASSERT(double_result);

	SGVector<char> buf(strlen(str)+1);

	for (index_t i=0; i<buf.vlen-1; i++)
		buf[i]=tolower(str[i]);
	buf[buf.vlen-1]='\0';

	if (strstr(buf, "inf") != NULL)
	{
		*double_result = CMath::INFTY;

		if (strchr(buf,'-') != NULL)
			*double_result *= -1;
		return true;
	}

	if (strstr(buf, "nan") != NULL)
	{
		*double_result = CMath::NOT_A_NUMBER;
		return true;
	}

	char* endptr = buf.vector;
	*double_result=::strtod(str, &endptr);
	return endptr != buf.vector;
}

bool CMath::strtold(const char* str, floatmax_t* long_double_result)
{
	ASSERT(str);
	ASSERT(long_double_result);

	SGVector<char> buf(strlen(str)+1);

	for (index_t i=0; i<buf.vlen-1; i++)
		buf[i]=tolower(str[i]);
	buf[buf.vlen-1]='\0';

	if (strstr(buf, "inf") != NULL)
	{
		*long_double_result = CMath::INFTY;

		if (strchr(buf,'-') != NULL)
			*long_double_result *= -1;
		return true;
	}

	if (strstr(buf, "nan") != NULL)
	{
		*long_double_result = CMath::NOT_A_NUMBER;
		return true;
	}

	char* endptr = buf.vector;

// fall back to double on win32 / cygwin since strtold is undefined there
#if defined(WIN32) || defined(__CYGWIN__)
	*long_double_result=::strtod(str, &endptr);
#else
	*long_double_result=::strtold(str, &endptr);
#endif

	return endptr != buf.vector;
}

float64_t CMath::get_abs_tolorance(float64_t true_value, float64_t rel_tolorance)
{
	REQUIRE(rel_tolorance > 0 && rel_tolorance < 1.0,
		"Relative tolorance should be less than 1.0 and positive");
	REQUIRE(is_finite(true_value),
		"The true_value should be finite");
	float64_t abs_tolorance = 0.0;
	if (abs(true_value)>0.0)
	{
		if (log(abs(true_value)) + log(rel_tolorance) < log(F_MIN_VAL64))
			abs_tolorance = F_MIN_VAL64;
		else
			abs_tolorance = abs(true_value * rel_tolorance);
	}
	return abs_tolorance;
}
