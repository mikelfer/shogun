library("sg")

size_cache <- 10

fm_train_dna <- as.matrix(read.table('../data/fm_train_dna.dat'))
fm_test_dna <- as.matrix(read.table('../data/fm_test_dna.dat'))

# Weighted Degree Position String
print('WeightedDegreePositionString')

degree <- 20

dump <- sg('set_kernel', 'WEIGHTEDDEGREEPOS', 'CHAR', size_cache, degree)

dump <- sg('set_features', 'TRAIN', fm_train_dna, 'DNA')
km <- sg('get_kernel_matrix', 'TRAIN')

dump <- sg('set_features', 'TEST', fm_test_dna, 'DNA')
km <- sg('get_kernel_matrix', 'TEST')
