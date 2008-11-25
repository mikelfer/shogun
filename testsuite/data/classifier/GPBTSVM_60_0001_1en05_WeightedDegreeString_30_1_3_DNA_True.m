classifier_accuracy = 0.0001;
init_random = 42;
accuracy = 1e-07;
classifier_labels = [1, -1, -1, 1, 1, -1, 1, -1, -1, 1, 1];
seqlen = 60;
classifier_tube_epsilon = 0.001;
classifier_epsilon = 1e-05;
data_test = {'ACATAGAGCTTCTTTTAGAATCGTTTAACAACTGCGAATGTATGGGTGGTTCGCAGTTCG', 'ATTGTGGACGGCTAGGGGCAGGAGCGTAATGGTTTGCCAGCTGGCAACAGTTGATTAGCT', 'TATGTCTACATTTTACAAACCAAATTTCCTCCAACCGAATACTAACCGTAGGAGCCACCT', 'ACCGGGTTCGTTTCACGCCTCTCCCTAATAGGCGAGCGAGACAATCTTGACTCAGTTAGA', 'ATACATTGTACCACTACAATCCTACCGTTCTAAACGGTGGAAGCTAACAAGAGCACTCTA', 'TAGGTCAATGTACATGTCGGCTTTGCCTAGGGTCCACCCTTACTAAAGATCGACGTTGTT', 'TAAAGCCTTTCGCAACCTAGGCCCGCAAGTCGGTTGGTCCATTAGCATAAGGAGGAAGCT', 'TTCTCCAAGCAGCGCTTCCCTCAACCTACTTCCCTATGGACCAGTGGACAGTGACGCTTG', 'CCACCGGACAATACATGAGGTATTTGGCTGGCGTATGTCCTCTCGCGCACATTCGCGTTC', 'TCTAGGGATAGACGCAACTTACAAGGAAATTAATTCAAGCAGATCAGCTGCGCTCGACTT', 'AATTACCTAATACCCCGAGTTAACCCGAACGAGCTTCACAGTGTCAGCGCATATTTGGTC', 'CGCCCGTATGTGTATATTCATCTAATGTCGGGGGCCTAGAGGAAAGTAGCCTCCAACAGC', 'GACGTATGGGAAGCTCAGCGGTTGGTCACAGGGAGCGGCAATTGACGTAAGCCAGTTGGA', 'GCGCAACAATCGTTGTCCCGGCAGAGGGTTCGGAACCGTAATACGGAAAGGAGTACGCCG', 'TTGGCGCAGGCTACATGCGCTCCTCAGTCACGAGTCCCATCCGCGATTGTACGGCCACAG', 'AAGGTGCTGAGTCCAACGATTGTACGTTCTATTAGACGGTGCTTATATCACGCAGTCACA', 'TTGCTGTGTGCTGGAGGAAGTGAGACAAACACGCCTAGAAGGTGTAAAAGGATTCAAAAG'};
data_type = '';
kernel_name = 'WeightedDegreeString';
classifier_type = 'kernel';
classifier_sv_sum = 55;
classifier_alpha_sum = 1.11022302463e-15;
feature_type = 'Char';
classifier_C = 30;
name = 'GPBTSVM';
classifier_num_threads = 1;
data_train = {'TCCCAAACGCATTTTGTACAAAGTGATGCGCCTCCTGAAAGCATGAGGACTCGCAACAAT', 'TTTATATTGTGCCGAGTATTTTGTTACGAGGAGTCAACTAGACTGACACGACCTTATCCT', 'TTGCTCGCGAATAGAAAATCTGCGGTCCTTTCTCCAGACTAAATGCTTCGTGATGCCAAT', 'ACGATACCAAGTAGGTCCCGTACTTTTCGGAGGATGTACGCGTAGGCTTGGCTGGTCTAC', 'CTTGGGTCCATGCATAGTCAGTGTAGGTATGCATACCTGTCGGTTAGAGCCCGCGCATCC', 'GCACTGGGACTACCCTAGATACGGCCCCACCCGTGAATCAGGGCATCGGGCCGTTAATGT', 'AGGGCAGCCTCTAGTAACAGTCCCGAGGGAGAATGAAACAACGGGATTTTTGAGGGGACT', 'GGCCTGTCGAGCCGTATCCACGACTATCGCAAAAGTTGACCAGGCCTTCTTCCGTTACGG', 'ATGTTGCGAGAGAAAAGGGAAAATACAAGGAACAATGGCCGGGAGCTGGAGACAGACTAG', 'CATACGGGCAGGTTTCCTCATTCACTTAATCGTAGACTCTGCACCACCGGGAAGCATTGA', 'TGTTTGAGGGAATGTTGGTGGACGCACAACTGAAGCTGTCGCTGCCAGAGCGTTTAAGCC'};
feature_class = 'string';
classifier_bias = 0.145146307228;
classifier_labeltype = 'twoclass';
kernel_arg0_degree = 3;
classifier_classified = [0.360122641, 0.328471793, 0.297491259, 0.208079053, 0.044932513, 0.177549615, 0.312456181, 0.0896795919, 0.253734852, 0.104561694, 0.0751076571, 0.427740325, 0.215331944, 0.513074591, 0.343688668, 0.0129737641, -0.197811316];
alphabet = 'DNA';
classifier_linadd_enabled = 'True';
data_class = 'dna';
