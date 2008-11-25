init_random = 42;
data_type = '';
km_train = [1, 0.521293011, 0.590118035, 0.402401623, 0.671931944, 0.541036111, 0.500834184, 0.476289672, 0.43907204, 0.645305583, 0.429949475;0.521293011, 1, 0.537862479, 0.336065574, 0.570940098, 0.570940098, 0.440244479, 0.46172573, 0.556063553, 0.388451011, 0.277448922;0.590118035, 0.537862479, 1, 0.457183107, 0.436232172, 0.504660747, 0.500356379, 0.619300446, 0.617496981, 0.481475006, 0.354005216;0.402401623, 0.336065574, 0.457183107, 1, 0.430160348, 0.445802543, 0.414347745, 0.487861149, 0.436296018, 0.509302436, 0.369931896;0.671931944, 0.570940098, 0.436232172, 0.430160348, 1, 0.320895522, 0.420069775, 0.282627645, 0.350999942, 0.576566358, 0.433870447;0.541036111, 0.570940098, 0.504660747, 0.445802543, 0.320895522, 1, 0.32946649, 0.532004979, 0.481604572, 0.469489749, 0.242673301;0.500834184, 0.440244479, 0.500356379, 0.414347745, 0.420069775, 0.32946649, 1, 0.532132486, 0.414431233, 0.545454545, 0.413937041;0.476289672, 0.46172573, 0.619300446, 0.487861149, 0.282627645, 0.532004979, 0.532132486, 1, 0.481897841, 0.4679096, 0.40136977;0.43907204, 0.556063553, 0.617496981, 0.436296018, 0.350999942, 0.481604572, 0.414431233, 0.481897841, 1, 0.423440607, 0.490660707;0.645305583, 0.388451011, 0.481475006, 0.509302436, 0.576566358, 0.469489749, 0.545454545, 0.4679096, 0.423440607, 1, 0.454519103;0.429949475, 0.277448922, 0.354005216, 0.369931896, 0.433870447, 0.242673301, 0.413937041, 0.40136977, 0.490660707, 0.454519103, 1];
seqlen = 60;
data_test = {'CTGTTACGCCTTTGCGCGATTGTCATTGATAGCTCTCCTAGCTACGCAGGAGTAGGAACT', 'ATGCGTACGAAACATTACAACCTCCAATATAGTACTAGAAATAAGCCAGGCAGTCAAGTA', 'CACCTATCTGATAGTAGTTGCGGGTAAGTCTTTTTTGAAAAATGCTCATCGCGTATAGTT', 'AAGACTGACTGGCACGCGGGATGAAGCAAATGGTGGCGACAAACTCTGGATAGGCACTTT', 'CCATCCTGGACTGCACGAGGTATGCTAGCGGAGGTACGAGACTTGTGGTGGCTCAAACTG', 'ATGGCTCACGGAAGGCTTAGAGCATTAACGTGGTGGGTACATCCTTTATCACGAGTCCCT', 'ACCTACCTAGATGGCCAGTCTATCCCGGCGACCGGGGATAGAGGCGAAGTCCGGCTGAAC', 'GATCGATTATCGTGTTTACGGGATTCAAAGTAGGCGGTCGCAACACGGACGCCGACAATC', 'GGAATTCCTCACCACGGACGAACATGCGCAAGACAAGTGGTAACCCAAGTCAGCACGTGC', 'CATGAGCTTAGCAGGAGGACGATAAAGGCCTACAACACTATGCGCATGTTAAATTGAATT', 'AACATCGCCATGCCAAGGCTGCATGAGCTTGGAGTCGTAAGTTGTGATAACCCACACTTT', 'CGCAGGTGATGTTCAAAACTTGACGATTCGAGAAGGGCGTTTTGGAATTGCACCCTAGCT', 'TCTGAGAGTTCCACACGTACCACCGTCGATAAACGTTCGGTGGGGAAGTCTACCTCCAGT', 'CTTATCAGGCATGCCACGGATCGCCAGCAACAGCGTGTTTATTCCTGCTCAGGTCTCGAC', 'TATCAAGCGGCCCTCACGGTTCCGTCCTCCTTACCTTTCAGCGGCTAGCGGACAAGACAG', 'GCGTAGCAGATAAGGGCTTCTGACATAGCGATATTGAATAAGCAGCAGCGAGCCAATCGT', 'GCCTGGCTGCGCATAGCCCTCAGAAAACCATATGATCCCGCAAGAACTCCTAGTTACATT'};
gap = 0;
feature_obtain = 'Char';
feature_type = 'Word';
reverse = 'False';
name = 'CommWordString';
data_train = {'TGCATTCGCGTAGACGAGCGAGGTTCAGGAAGTTACACTTCACTACGGTCGCTTTATCAA', 'GCTGAGACGTCTTCGGATTATATCTCGACATCGTTATAGGAACCTCTCTGTAGACGGAGG', 'AGGATGTATACATGAACAGGTTGACGCGTTACTTCGGCATGAGGTATAGGCCTGCAAATT', 'TAGATCAGCGGGTCCTGATAAAAAACCAGAACCCCGGTGCATACCGTTACTGCGGTGCGT', 'GGTGCGGACGCTCTCACGCAGCGTTCGCTTCAACGGCGTGAGGTCCGGGAGACGACGGAG', 'ACCATATTTCTTACAGGATATAGACGCGTATAAATATTCGTCACTTAATAGATTCACCCG', 'ACTGCGTGAATTGAGTCAGTAGGGGGAAGAGGAGGCCTCGAAATCAGAACCGCCTTTTGG', 'GTGATTTACCGACACGTAGAAGGTCTAAATAAGAAAAGGAATGGCATGACCATTACTAGG', 'GGGTCTACAGATGAGTGATGCCCTCATATCGATGTGACCGTCGTATCGCCATTATGTACG', 'ACCACTCAGGGTACTTGACAGAACCCCGCGCCGCGGTCCGACGACGTTCGAATACTTTTG', 'AGCCTCACATGGGGTGTTTGTCTTTTCACTACGGTGTGTCATGGCCGACCGGTGTGGAAG'};
feature_class = 'string_complex';
km_test = [0.590118035, 0.490573443, 0.455661188, 0.426357569, 0.5984996, 0.626294578, 0.347024144, 0.660973423, 0.569065194, 0.567040443, 0.46467017, 0.642672546, 0.515170462, 0.645973534, 0.580572009, 0.436319444, 0.412393049;0.510969355, 0.36053797, 0.458397004, 0.39838715, 0.501235714, 0.488893029, 0.445519748, 0.583691017, 0.369331579, 0.452773028, 0.380250133, 0.419796985, 0.513996567, 0.569621001, 0.4227782, 0.414518154, 0.425052231;0.568627451, 0.586646949, 0.483097489, 0.55129082, 0.55779546, 0.475270821, 0.404504722, 0.533551154, 0.40392085, 0.788240781, 0.574285575, 0.640622133, 0.371580268, 0.582117751, 0.382346859, 0.504660747, 0.555810807;0.376503735, 0.501235714, 0.491734968, 0.41464785, 0.466061278, 0.389303708, 0.546392144, 0.400743086, 0.44847406, 0.378850901, 0.371196559, 0.488136028, 0.522708373, 0.46690246, 0.47969065, 0.430160348, 0.619097814;0.504660747, 0.251718957, 0.286291924, 0.457708281, 0.595734864, 0.552875792, 0.409061666, 0.623443335, 0.595734864, 0.405573729, 0.336908686, 0.512343304, 0.498754668, 0.561337716, 0.605105863, 0.350746269, 0.290955067;0.410571456, 0.545391073, 0.477153207, 0.318068466, 0.26850022, 0.397379476, 0.34489513, 0.457191779, 0.385969067, 0.476108291, 0.362824739, 0.437820642, 0.457191779, 0.445506124, 0.372372839, 0.537313433, 0.44965783;0.557000498, 0.500085756, 0.53541741, 0.436679688, 0.481564061, 0.495800546, 0.557718708, 0.394512016, 0.444520672, 0.515755551, 0.476731295, 0.6785758, 0.477084298, 0.462208139, 0.368180913, 0.420069775, 0.506024314;0.447801861, 0.635541775, 0.46948637, 0.570323432, 0.448617723, 0.509992738, 0.518187725, 0.453703704, 0.532733546, 0.726748636, 0.461880215, 0.622572806, 0.481481481, 0.347369945, 0.29380298, 0.448879201, 0.530330086;0.439732698, 0.458889436, 0.4871223, 0.296994352, 0.394644915, 0.463006479, 0.456210564, 0.554637138, 0.385467127, 0.501485887, 0.56694671, 0.438137291, 0.518267489, 0.584760882, 0.305479905, 0.3836511, 0.491841928;0.509797066, 0.444520672, 0.394980056, 0.462366728, 0.472303214, 0.390919662, 0.486897284, 0.504608392, 0.500085756, 0.389249472, 0.390919662, 0.606605639, 0.504608392, 0.472042355, 0.488053768, 0.378886464, 0.437905656;0.379291303, 0.239775896, 0.336967417, 0.435737031, 0.520892463, 0.570341876, 0.379378486, 0.417752209, 0.471283657, 0.338835923, 0.425628265, 0.486504768, 0.409560989, 0.447782077, 0.44338154, 0.176489673, 0.312771621];
kernel_arg0_use_sign = 'False';
alphabet = 'DNA';
accuracy = 1e-09;
order = 3;
data_class = 'dna';
