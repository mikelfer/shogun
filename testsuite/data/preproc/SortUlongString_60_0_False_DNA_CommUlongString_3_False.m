accuracy = 1e-09;
init_random = 42;
name = 'SortUlongString';
data_type = '';
km_train = [1, 0.510029323, 0.450062513, 0.509302436, 0.500267213, 0.370365886, 0.458078667, 0.390621453, 0.475111856, 0.588482349, 0.459737223;0.510029323, 1, 0.536484667, 0.41673813, 0.465812336, 0.422697915, 0.563103857, 0.561930247, 0.480858155, 0.505068648, 0.337463186;0.450062513, 0.536484667, 1, 0.456421399, 0.499078, 0.480754415, 0.504592842, 0.361079072, 0.346371784, 0.533933278, 0.47566557;0.509302436, 0.41673813, 0.456421399, 1, 0.417502456, 0.647308477, 0.502518908, 0.467473495, 0.566441184, 0.562542928, 0.509647191;0.500267213, 0.465812336, 0.499078, 0.417502456, 1, 0.381125855, 0.582452751, 0.439600191, 0.53679609, 0.490008873, 0.529414302;0.370365886, 0.422697915, 0.480754415, 0.647308477, 0.381125855, 1, 0.385337318, 0.546230994, 0.379197639, 0.530936851, 0.449734035;0.458078667, 0.563103857, 0.504592842, 0.502518908, 0.582452751, 0.385337318, 1, 0.527147622, 0.563601862, 0.4954235, 0.544654964;0.390621453, 0.561930247, 0.361079072, 0.467473495, 0.439600191, 0.546230994, 0.527147622, 1, 0.563133337, 0.676600666, 0.358163986;0.475111856, 0.480858155, 0.346371784, 0.566441184, 0.53679609, 0.379197639, 0.563601862, 0.563133337, 1, 0.574285575, 0.432225835;0.588482349, 0.505068648, 0.533933278, 0.562542928, 0.490008873, 0.530936851, 0.4954235, 0.676600666, 0.574285575, 1, 0.391983155;0.459737223, 0.337463186, 0.47566557, 0.509647191, 0.529414302, 0.449734035, 0.544654964, 0.358163986, 0.432225835, 0.391983155, 1];
data_train = {'GTAGGTCCCGTACTTTTCGGAGGATGTACGCGTAGGCTTGGCTGGTCTACCTTGGGTCCA', 'TGCATAGTCAGTGTAGGTATGCATACCTGTCGGTTAGAGCCCGCGCATCCGCACTGGGAC', 'TACCCTAGATACGGCCCCACCCGTGAATCAGGGCATCGGGCCGTTAATGTAGGGCAGCCT', 'CTAGTAACAGTCCCGAGGGAGAATGAAACAACGGGATTTTTGAGGGGACTGGCCTGTCGA', 'GCCGTATCCACGACTATCGCAAAAGTTGACCAGGCCTTCTTCCGTTACGGATGTTGCGAG', 'AGAAAAGGGAAAATACAAGGAACAATGGCCGGGAGCTGGAGACAGACTAGCATACGGGCA', 'GGTTTCCTCATTCACTTAATCGTAGACTCTGCACCACCGGGAAGCATTGATGTTTGAGGG', 'AATGTTGGTGGACGCACAACTGAAGCTGTCGCTGCCAGAGCGTTTAAGCCACATAGAGCT', 'TCTTTTAGAATCGTTTAACAACTGCGAATGTATGGGTGGTTCGCAGTTCGATTGTGGACG', 'GCTAGGGGCAGGAGCGTAATGGTTTGCCAGCTGGCAACAGTTGATTAGCTTATGTCTACA', 'TTTTACAAACCAAATTTCCTCCAACCGAATACTAACCGTAGGAGCCACCTACCGGGTTCG'};
feature_class = 'string_complex';
seqlen = 60;
data_test = {'TTTCACGCCTCTCCCTAATAGGCGAGCGAGACAATCTTGACTCAGTTAGAATACATTGTA', 'CCACTACAATCCTACCGTTCTAAACGGTGGAAGCTAACAAGAGCACTCTATAGGTCAATG', 'TACATGTCGGCTTTGCCTAGGGTCCACCCTTACTAAAGATCGACGTTGTTTAAAGCCTTT', 'CGCAACCTAGGCCCGCAAGTCGGTTGGTCCATTAGCATAAGGAGGAAGCTTTCTCCAAGC', 'AGCGCTTCCCTCAACCTACTTCCCTATGGACCAGTGGACAGTGACGCTTGCCACCGGACA', 'ATACATGAGGTATTTGGCTGGCGTATGTCCTCTCGCGCACATTCGCGTTCTCTAGGGATA', 'GACGCAACTTACAAGGAAATTAATTCAAGCAGATCAGCTGCGCTCGACTTAATTACCTAA', 'TACCCCGAGTTAACCCGAACGAGCTTCACAGTGTCAGCGCATATTTGGTCCGCCCGTATG', 'TGTATATTCATCTAATGTCGGGGGCCTAGAGGAAAGTAGCCTCCAACAGCGACGTATGGG', 'AAGCTCAGCGGTTGGTCACAGGGAGCGGCAATTGACGTAAGCCAGTTGGAGCGCAACAAT', 'CGTTGTCCCGGCAGAGGGTTCGGAACCGTAATACGGAAAGGAGTACGCCGTTGGCGCAGG', 'CTACATGCGCTCCTCAGTCACGAGTCCCATCCGCGATTGTACGGCCACAGAAGGTGCTGA', 'GTCCAACGATTGTACGTTCTATTAGACGGTGCTTATATCACGCAGTCACATTGCTGTGTG', 'CTGGAGGAAGTGAGACAAACACGCCTAGAAGGTGTAAAAGGATTCAAAAGACTGTACGAA', 'GGCCCACAATGGCCAAATGGCTACCTTATTACCTATCGCGTTTAGACGCGTAGCAATTTT', 'ACGCCCGGACGGAGACTGCGGTGGCACCGGCACCGAGTACAGGCGTAATGTGTCGTGACA', 'ACGGCGAAAGACCTAGGTTAATCGGGTTGCTAATCAATGGATTCCATGTCTTGTCAGGGA'};
gap = 0;
feature_obtain = 'Char';
km_test = [0.392198066, 0.430886842, 0.588482349, 0.526566926, 0.466731495, 0.618538242, 0.285805122, 0.444302117, 0.489734092, 0.39838715, 0.618999815, 0.498974358, 0.418166699, 0.378246011, 0.487549913, 0.504361979, 0.556901237;0.460830242, 0.377358491, 0.427365779, 0.592694229, 0.420246322, 0.551425952, 0.378762839, 0.588810762, 0.525396676, 0.427397822, 0.55491246, 0.565049255, 0.532733546, 0.371974166, 0.405817328, 0.586180584, 0.465812336;0.484245112, 0.411304911, 0.543139025, 0.430089395, 0.381355932, 0.380904036, 0.367534792, 0.504919303, 0.582525672, 0.388549193, 0.62078193, 0.450987617, 0.336612869, 0.280440075, 0.581217811, 0.589765132, 0.537468616;0.501545002, 0.425998977, 0.486265921, 0.436363636, 0.412534726, 0.42203611, 0.362959794, 0.486258996, 0.642261629, 0.453804381, 0.55365971, 0.467099366, 0.339463828, 0.589216691, 0.362959794, 0.50460264, 0.546729406;0.526912182, 0.475938691, 0.646394684, 0.477145663, 0.595054539, 0.481543412, 0.445281778, 0.531704184, 0.542676038, 0.449403532, 0.644462418, 0.553316745, 0.571832802, 0.462795681, 0.542082165, 0.551762204, 0.586956522;0.457845852, 0.574869165, 0.391674726, 0.514527251, 0.400628679, 0.36013855, 0.49296249, 0.293136029, 0.577418607, 0.547142225, 0.595091119, 0.346451164, 0.251259454, 0.71969697, 0.420230319, 0.509125195, 0.517242231;0.608839535, 0.491436093, 0.579750904, 0.54272042, 0.436666882, 0.557865568, 0.50892419, 0.436149444, 0.505639492, 0.49223359, 0.483751584, 0.494881205, 0.497007506, 0.403686714, 0.430628161, 0.459989172, 0.62641145;0.495581954, 0.533357522, 0.519707758, 0.589016604, 0.45134884, 0.462346456, 0.518954392, 0.48121774, 0.470376452, 0.686858205, 0.440831015, 0.530424509, 0.509524665, 0.512091556, 0.500745466, 0.482536539, 0.460046711;0.500417014, 0.43277234, 0.524778198, 0.396508829, 0.391947019, 0.533551154, 0.505630903, 0.485912658, 0.505282552, 0.435697584, 0.482226233, 0.353697787, 0.543078853, 0.430906408, 0.551597349, 0.450471168, 0.619380104;0.495082198, 0.543920083, 0.55, 0.572077554, 0.451081563, 0.567727765, 0.538516481, 0.481125224, 0.612372436, 0.709440943, 0.515122196, 0.479691741, 0.500370233, 0.330747546, 0.603509849, 0.417814511, 0.615117521;0.450242908, 0.657620567, 0.534522484, 0.526635431, 0.508470092, 0.342896333, 0.479748611, 0.488627275, 0.463713017, 0.360011521, 0.483938635, 0.372788896, 0.291461883, 0.395455789, 0.603821528, 0.388761806, 0.45511054];
feature_type = 'Ulong';
kernel_arg0_use_sign = 'False';
alphabet = 'DNA';
kernel_name = 'CommUlongString';
data_class = 'dna';
order = 3;
reverse = 'False';
