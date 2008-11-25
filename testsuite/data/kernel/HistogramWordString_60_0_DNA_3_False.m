accuracy = 1e-06;
feature_obtain = 'Char';
init_random = 42;
name = 'HistogramWordString';
classifier_labels = [-1, -1, 1, -1, 1, 1, 1, -1, -1, 1, -1];
km_train = [1, -0.000793761298, -0.162294862, -0.181144213, -0.201246789, -0.230928843, -0.139092075, 0.20449038, -0.00864824791, -0.0559606116, 0.261192398;-0.000793761298, 1, -0.117812267, -0.114052363, -0.145362011, -0.161382672, -0.106516032, -0.142715495, -0.0223276375, -0.0509316633, 0.048970202;-0.162294862, -0.117812267, 1, -0.170288099, -0.0314073432, -0.119515573, 0.0488259602, -0.20578528, -0.11091485, -0.0590100667, -0.180260124;-0.181144213, -0.114052363, -0.170288099, 1, -0.206158054, -0.199243348, -0.184146016, 0.119783008, -0.119612185, -0.129717143, -0.178159191;-0.201246789, -0.145362011, -0.0314073432, -0.206158054, 1, 0.324817518, 0.0346769164, -0.248965957, -0.136678243, -0.152871674, -0.218806147;-0.230928843, -0.161382672, -0.119515573, -0.199243348, 0.324817518, 1, 0.0358683016, -0.239342584, -0.150440983, -0.160644809, -0.21586696;-0.139092075, -0.106516032, 0.0488259602, -0.184146016, 0.0346769164, 0.0358683016, 1, -0.223804023, -0.101604963, -0.0731544071, -0.190532444;0.20449038, -0.142715495, -0.20578528, 0.119783008, -0.248965957, -0.239342584, -0.223804023, 1, -0.148226459, -0.159121318, -0.000333335947;-0.00864824791, -0.0223276375, -0.11091485, -0.119612185, -0.136678243, -0.150440983, -0.101604963, -0.148226459, 1, -0.0504123143, -0.0522332791;-0.0559606116, -0.0509316633, -0.0590100667, -0.129717143, -0.152871674, -0.160644809, -0.0731544071, -0.159121318, -0.0504123143, 1, -0.129141398;0.261192398, 0.048970202, -0.180260124, -0.178159191, -0.218806147, -0.21586696, -0.190532444, -0.000333335947, -0.0522332791, -0.129141398, 1];
data_train = {'CGTCTAGCACTTCTGGAGACGTGTTACGTTTGTCCGTTCTTGCGGGGTACGCTCCTATGA', 'TAGAATTAGTTCTGGTAACACGCCCACGATCTATGTGTGTTGGCTCGACGGCACGAGGTA', 'AGGATCCCTAAAGTCAAGATAAATGTCAGGGCAAGGTCTCATGGGCGTCGTACAGTGAGT', 'CTTAAGGTGCATAGAACCGATGCCGATGAGCATAGTACAAATTGCTGCCATGGGGAGTAT', 'CCGTCGCGAAACCGCAAACACCGGCACAATATATGCCGTCACATGACATTACTACCAATG', 'CCGCAAGAACATGAAGCTGCTCCGTGGCCAGAATCACCCAACCACCATTAAGGTCGTCAC', 'AATAATCACAATAGATGTCTTGAAAAGGGCAACGCGCTACACGGAAGCCTCGGTGACTAG', 'TGCACATGGCACCCCCCTCGACAGCATACCCGGCATCTCGTGCGGGAGAAGATTTGCCCA', 'CGACGAAAGGGAGGCCGCGAGCCCTTGGAGCCAAAAAGACTATGCAACACAGATATAGCG', 'ACACACAAGTCGGCAATCGGCCGACCTCGAATGCGAGATGCTTCTTGTCGTCCCTGCCAA', 'GCTGTATCGGCAAGCTCTAACTGAACGCGGTGCTCCTACAAAACTGGGTTTTAGGGCAAT'};
feature_class = 'string_complex';
seqlen = 60;
data_test = {'GCCGCCAACGACGTAGTTTGAGGCCGTCAGAGACGAACCGGCCATATGGGTTGATATGTT', 'AGAACAGTGATTGGTATTTCTCGTACTTTAGATAGCTGGCGCAGTAAGTATTACGTGCAC', 'GCGACAATAGACCAATAATCGAAGTACAATATATGTATGGTGTCGTACTCCCTTTGGAAA', 'ATTGTTGCAGACTCAGGAATATCCCTTCAATCACGTGAACATCCGGGTGTGAATTGGCGT', 'TCCCCCGATGTTGTCTATCACGAGTCGCGGCTGTGTAACTATAAAGTCGAGACGGAAGTT', 'TTCCACGTCGGGCTATTCCGCATCAGAAGCGTTAAGGTGACTTAGACATGTTAGTGGCGC', 'CAAAACAATTTTAACTTCAGCGTGTCGTGGGTACCTTAATCAACGCGTAATTCCCGACAT', 'CGAAGTGGAGAATTGTTATGTGGGCTACACAACCACTACAAGCCAGTAAAGACAAACACG', 'CGGGTAAGGGAGTCTCACCGGGACCTCTCAACTGTTGGGGCCGACTCGATCTTTACTTTG', 'CATGAAGGAAAATGGTCTTGCGTACTTCCCCTACTCTCTTCTTTCCCCCAGGTTCGTAAT', 'ATTCTCTTAGGATCGAGTGTGACAAATTACATCGGGCAACTCATAATGCTGAGGTTCGAA', 'CGGCTTGATTACTGGAGCACAGTCGCATAACGCATCACAGGTAAAAACAGCACAGCACAT', 'TAGCAATCTCATTTGCAACTGTCGTCCGGTCACAGATTAAGTAAGGAGTAGAAACTGAAG', 'ACGTAGAGGTGCAAGTGGCCCACTCGTCTCCAAGTAACGCGGCTCTAATGTCTAACTGCC', 'ACCGGTACCGCTGAATGAAGGACCTAGGAGAGGAATCCCTGGAACCGGCGAATGGCCATG', 'ATCTAAAATGGTATTCAGCTAGGACACTCTAGTCTGCTAAGTTATGTCGTCTCCTTCATT', 'GGTATCGCCGTGTATCAAGTGCAGACGTCATGTACTAGAGTCTCTCACGTCGTTGTGAAT'};
gap = 0;
data_type = '';
km_test = [0.194570989, 0.271271008, 0.167193913, 0.0736500215, 0.00119771138, 0.0495909665, 0.269572311, 0.0246772312, 0.242069074, 0.374304009, 0.048913457, -0.135644558, 0.224047842, -0.0233812028, -0.0789101782, 0.0294979975, 0.0178893716;0.0702373083, 0.00483830276, 0.0410568784, 0.0962646022, 0.186325904, 0.114875316, -0.0269686706, 0.117560714, 0.060721944, 0.0217965421, 0.105350702, -0.0979770457, 0.04604952, 0.157615093, -0.0596635286, 0.185230844, 0.154221165;-0.0429449288, -0.0706852782, -0.0378736635, 0.0521357727, -0.0297522228, -0.0346191451, -0.0258365638, -0.0602331443, -0.0300228157, -0.0676335963, 0.00500774157, -0.131232553, 0.0236918369, 0.228539276, -0.00167671693, -0.0488540101, -0.0652847435;0.0458634397, 0.00120549494, -0.0382889234, -0.010679749, -0.00877369093, -0.00783337298, -0.0208670154, -0.059520671, -0.0748977877, -0.0660903331, 0.0270722853, 0.0877837201, -0.0962809328, -0.0114788279, 0.0351899195, -0.0412121448, -0.0728670848;-0.135232957, -0.0869684336, -0.073897697, -0.0534005083, -0.0812756008, -0.0438082919, -0.0341252566, -0.0162716386, -0.0871749248, -0.0837293161, -0.0454158542, -0.099873182, -0.105759522, -0.0900705329, -0.0239419317, -0.0609329612, -0.0809535484;-0.100367116, -0.0947066608, -0.0729269555, -0.0683371722, -0.0905033983, -0.0568398724, -0.116739804, -0.0872502051, -0.0933441031, -0.0950574, -0.0585145167, 0.0800297419, -0.0422593254, -0.0962292018, 0.104413425, -0.0725594454, -0.0928934537;-0.116809597, -0.0657887537, -0.0836636042, -0.0290265217, -0.0480689078, -0.0229441609, -0.0449479598, 0.0352162924, -0.0677169088, -0.0590095983, -0.024245013, 0.184625954, -0.08628706, -0.0286154462, 0.179010357, -0.0391676722, -0.0434602405;0.0304545553, 0.084878281, 0.0107133952, -0.0471593747, -0.0890559382, 0.0101747629, 0.0323386408, -0.0854312825, 0.0488384691, 0.0790108023, -0.0567119893, 0.176512549, 0.0286614233, -0.0781558419, -0.0875676722, -0.0621508614, -0.0605138018;-0.0678696432, -0.0188387258, -0.0595724621, 0.0186579315, -0.0116820002, 0.0176150858, 0.0568673101, 0.0693324897, -0.0235942333, -0.00662867057, 0.0170414618, 0.058825015, -0.0494564038, -0.0250172294, 0.0186017825, 0.00521419317, -0.00347884486;0.0662330953, 0.00315171817, 0.0175739485, 0.0487080352, 0.0959063996, 0.0345885117, -0.0452894054, 0.0857804132, -0.00257634472, -0.0146859987, 0.0343723356, -0.060775378, -0.0523305411, 0.0319872655, -0.0500717686, 0.0337397172, 0.169006264;0.120557797, 0.0867347839, 0.20619297, -0.0322436761, 0.105438221, -0.0173673098, 0.0864726292, 0.0435938547, 0.153774603, 0.101542155, -0.0184460604, -0.147479934, 0.217333601, -0.0667949996, -0.0685558383, 0.125071028, 0.12652405];
feature_type = 'Word';
alphabet = 'DNA';
data_class = 'dna';
order = 3;
classifier_classified = [-154.707066, 384.437973, 217.910937, 110.812895, -140.315063, -34.3903369, 147.788017, -131.094557, 219.233821, 248.021382, 78.7761308, -29.2528815, 147.788017, 255.04772, -53.4827053, 232.332468, 363.332959];
reverse = 'False';
