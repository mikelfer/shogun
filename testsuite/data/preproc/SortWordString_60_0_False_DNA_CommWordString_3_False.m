accuracy = 1e-09;
init_random = 42;
name = 'SortWordString';
data_type = '';
km_train = [1, 0.330424024, 0.433781217, 0.394980056, 0.41673813, 0.473976068, 0.464359757, 0.57655101, 0.476830603, 0.360374985, 0.430089395;0.330424024, 1, 0.505630903, 0.492212536, 0.509709644, 0.428407207, 0.435858326, 0.578088097, 0.495176901, 0.692345099, 0.446637301;0.433781217, 0.505630903, 1, 0.538481207, 0.432871816, 0.658143698, 0.3652312, 0.551762204, 0.492763728, 0.456210564, 0.444460679;0.394980056, 0.492212536, 0.538481207, 1, 0.286125156, 0.593220339, 0.439720534, 0.460687385, 0.441592041, 0.443629238, 0.525423729;0.41673813, 0.509709644, 0.432871816, 0.286125156, 1, 0.393422089, 0.409361651, 0.587328597, 0.664180703, 0.495600591, 0.518601845;0.473976068, 0.428407207, 0.658143698, 0.593220339, 0.393422089, 1, 0.34487885, 0.479882693, 0.422800891, 0.548012588, 0.525423729;0.464359757, 0.435858326, 0.3652312, 0.439720534, 0.409361651, 0.34487885, 1, 0.449170776, 0.506626412, 0.424795395, 0.525940247;0.57655101, 0.578088097, 0.551762204, 0.460687385, 0.587328597, 0.479882693, 0.449170776, 1, 0.574598158, 0.522123144, 0.431894423;0.476830603, 0.495176901, 0.492763728, 0.441592041, 0.664180703, 0.422800891, 0.506626412, 0.574598158, 1, 0.443622131, 0.497965494;0.360374985, 0.692345099, 0.456210564, 0.443629238, 0.495600591, 0.548012588, 0.424795395, 0.522123144, 0.443622131, 1, 0.495820913;0.430089395, 0.446637301, 0.444460679, 0.525423729, 0.518601845, 0.525423729, 0.525940247, 0.431894423, 0.497965494, 0.495820913, 1];
data_train = {'AAGCTCTATTTTTGAATGTCAAGCACAGCTCCAACCGCGTTACAATACGGGACGACAACA', 'GGTAAAGGATAGGTGTCTATGTCGGGAAAATATCATGCGGATTGAGAACCTGGCCCTATG', 'CGCTTCCGTAGGGAGTAATATCATCGCGACTCGCTATCAAAGCTCAGGAAAGGCTTGTAA', 'CAGTAACTCGAATTATGTCGCGAACGAGTAGCTAGTTGCGTGATGGAGCGAGTATCTTGG', 'TCCGTTTCTAGACCCGCCACAAGGGCCTGCACCCGGGTTGTAAAGTATATCACCCCTGCG', 'GCCAAGAGGAGCTCTGAGTGTTAAGCTTCATCTCGAGCGAGTAAAGGGACGCTAGCCGGT', 'AAGGCAATACACAGATAGTGGCCGTGGGCAGTAGAGACTCGTTACATTGTGGATATTGAC', 'CCATGCCCGGTCTTATATCTTTTCACAGCTGTATTCGTAGCACAAATGTCCGCAGAGGAA', 'TCATAGTAAACAGAGTTGCGGCATCACCTGTACCACTAGAAATTTCAGCTACACGCCCCT', 'TTTCGCCTATCGGTGGAGAGGGAAGAAATGCCCTGAAAGTCAATCTGCAAGTGGATTCTG', 'GGTGACTACCCGTAAATGCTTTTCTCTGTGAGTTAAAGTAGTGGGGCGGTGTACAAGTAC'};
feature_class = 'string_complex';
seqlen = 60;
data_test = {'TAGGGACTGATAGATCCACTTCCGTGCCGAGCTAGCGAGGGGGTCTCAACTGTGCACCAA', 'GGTTGCGTACTCGGACCAATCGCTCCTTATCCAAGCCGTAGATGTAACCATACTCTACAA', 'TAGCCTAGTGTACCGTCGAGCTGCAAACTGGATGAGGACCATTGCCGGAGTCATACACTG', 'ATTTACTTAACTGCAGTCTTAGCTGGTCTGAGTCTTCTAAATGACGATTGTCTGGATCAA', 'GGGTAGATTGGCCTCCCTCAGTAAACCGGGCTCTGAGCGAATATCGGGCAACGTTTTGCT', 'GGACCTGCTACAGTCTCTTTATGCTCTAGGAAACCGCCGATTGGTAAATAGTTGATGAAT', 'GTTGGCCCTGTCGGGGAGACCGTGGGGACCCAACTCCAGCAGAAAAACTGGCTCAGACGT', 'CGTACCCCTGGCTTTAGACAGGACCCACTAACTGGCGAGTGTGATAGAACCCGAAGCGGT', 'GCGCCTCTTTTCCGCGGGCACATCAAGGCACCGGCATCGACAGTCAACAATCCTATCTGT', 'TCTCCCGAGGTTCCCAACCTGCGACGCCTTGGGACACGATTGGTATATCTTACTCTGCCA', 'TCGCGTTCTTGTAATCTTATCGGTACGGGACCTCATATGTCAGTGATTGTTGACACCACA', 'TTATGCAGTGAACCACTTCTCCAGTGCGATGCGGAGAGTTGGATCCCAGAGCAGACGATA', 'AGCACCTCTTCTCTAGCCGGAAGGTTTGCATGACTGCCACCATCTTAGCTAGGCAGGCGC', 'GATCCAAGCTACCAACCCGGACTGGCTTGTAATTACACTGCCACGTTATTTCCCAAACGC', 'ATTTTGTACAAAGTGATGCGCCTCCTGAAAGCATGAGGACTCGCAACAATTTTATATTGT', 'GCCGAGTATTTTGTTACGAGGAGTCAACTAGACTGACACGACCTTATCCTTTGCTCGCGA', 'ATAGAAAATCTGCGGTCCTTTCTCCAGACTAAATGCTTCGTGATGCCAATACGATACCAA'};
gap = 0;
feature_obtain = 'Char';
km_test = [0.440385506, 0.610216057, 0.452677051, 0.396092419, 0.54272042, 0.515755551, 0.43519414, 0.429058165, 0.593129419, 0.467196669, 0.520097037, 0.356859195, 0.437569771, 0.648354561, 0.681818182, 0.551618724, 0.472303214;0.428746463, 0.435664919, 0.580116035, 0.455091027, 0.542727719, 0.656867318, 0.460977223, 0.504975247, 0.386118144, 0.45546787, 0.560112034, 0.433860916, 0.435858326, 0.366354591, 0.547559811, 0.388367819, 0.548178297;0.455647827, 0.575655548, 0.431435422, 0.328266082, 0.548072205, 0.502239954, 0.398362308, 0.380675443, 0.517241379, 0.399244977, 0.525225731, 0.305128577, 0.443495028, 0.427099278, 0.442633895, 0.509849929, 0.396799165;0.434053436, 0.460287309, 0.548653268, 0.512618837, 0.553111384, 0.601316822, 0.319339007, 0.524727532, 0.299156226, 0.497110294, 0.511456436, 0.621870697, 0.362122793, 0.340612609, 0.456421399, 0.658969307, 0.366597856;0.532733546, 0.514781507, 0.500384912, 0.274721128, 0.593818613, 0.485744096, 0.505395418, 0.611910093, 0.586180584, 0.621622952, 0.539630787, 0.372396624, 0.536718609, 0.602197235, 0.41673813, 0.466687832, 0.41509434;0.57578517, 0.469493055, 0.604448515, 0.463797995, 0.504592842, 0.469778768, 0.403375587, 0.451081563, 0.376082113, 0.469493055, 0.399865941, 0.470604852, 0.560428132, 0.405052832, 0.412534726, 0.559672562, 0.366597856;0.450615059, 0.468292906, 0.539273888, 0.347689744, 0.523241509, 0.468390457, 0.547188454, 0.561951487, 0.417407086, 0.402731899, 0.520351997, 0.521538996, 0.368421053, 0.402731899, 0.517939729, 0.431647036, 0.400264725;0.501607721, 0.521286035, 0.547641551, 0.534477091, 0.48354568, 0.542676038, 0.390210831, 0.417028828, 0.609842435, 0.510860314, 0.610830961, 0.485384205, 0.595639507, 0.531711756, 0.566610475, 0.490716492, 0.536696822;0.422299883, 0.500104156, 0.608279748, 0.360843918, 0.570189215, 0.510416667, 0.484481395, 0.612372436, 0.549621082, 0.418454498, 0.567040443, 0.475164445, 0.516185401, 0.571547607, 0.447636893, 0.51040849, 0.485744096;0.445528193, 0.368515361, 0.563157617, 0.52617057, 0.488051682, 0.559349644, 0.474420072, 0.444108256, 0.473757124, 0.472455591, 0.381801774, 0.483045892, 0.424795395, 0.396862697, 0.567590601, 0.407687124, 0.550667324;0.434053436, 0.524727532, 0.49285802, 0.496345223, 0.533703967, 0.563734521, 0.386568271, 0.561550517, 0.350440151, 0.395847086, 0.53935406, 0.378164613, 0.362122793, 0.441875817, 0.509085406, 0.442321864, 0.473894789];
feature_type = 'Word';
kernel_arg0_use_sign = 'False';
alphabet = 'DNA';
kernel_name = 'CommWordString';
data_class = 'dna';
order = 3;
reverse = 'False';
