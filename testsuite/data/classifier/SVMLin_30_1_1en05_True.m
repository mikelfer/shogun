data_type = 'double';
classifier_C = 30;
classifier_accuracy = 0.0001;
init_random = 42;
name = 'SVMLin';
classifier_num_threads = 1;
data_train = [0.415145654, 0.820253319, 0.765858644, 0.393555336, 0.59536637, 0.965638975, 0.976561023, 0.781890913, 0.671708859, 0.130717324, 0.785063921, 0.934543881, 0.648747114, 0.19571264, 0.422192234, 0.303385544, 0.249972891, 0.0733640675, 0.645602577, 0.663146249, 0.982739541, 0.691655652;0.575060573, 0.320854543, 0.745214743, 0.34501684, 0.206817893, 0.312189737, 0.504455942, 0.269161571, 0.995734452, 0.418969774, 0.512874742, 0.405325361, 0.256647207, 0.645218576, 0.920691401, 0.458028617, 0.596050116, 0.427466528, 0.752114333, 0.7293098, 0.43526228, 0.232224691;0.182813389, 0.751278924, 0.742292231, 0.370232186, 0.339240661, 0.843879411, 0.0547327069, 0.219634929, 0.956291882, 0.120363576, 0.0676047495, 0.846124211, 0.915001538, 0.909252694, 0.37667644, 0.204242106, 0.418695143, 0.167814596, 0.896995289, 0.000227038218, 0.198631614, 0.78338722;0.0355902308, 0.928807961, 0.302466317, 0.348831907, 0.374824924, 0.109013616, 0.724029189, 0.718718113, 0.621330624, 0.316942622, 0.248539821, 0.486173654, 0.119140672, 0.512392821, 0.857230937, 0.110603599, 0.808826323, 0.430535821, 0.0624313273, 0.858698121, 0.87548865, 0.76465095;0.994330303, 0.802396031, 0.510570409, 0.675586774, 0.331616849, 0.444183407, 0.0389578463, 0.945024065, 0.146695114, 0.312064045, 0.500579317, 0.50889407, 0.119952942, 0.232728349, 0.645725043, 0.34124445, 0.682540479, 0.690322847, 0.802401784, 0.0538305249, 0.391810895, 0.189875329;0.538394979, 0.952386752, 0.858506455, 0.861445686, 0.483232076, 0.811946235, 0.4607336, 0.328822618, 0.131686903, 0.778046306, 0.754569361, 0.137300033, 0.248604885, 0.662313739, 0.986895945, 0.988840541, 0.861418046, 0.00991069549, 0.945749702, 0.866035675, 0.312919548, 0.751825146;0.717464991, 0.706371997, 0.168858463, 0.677723241, 0.992135639, 0.0973668938, 0.0536347915, 0.818869271, 0.827523694, 0.475475715, 0.705040906, 0.345579586, 0.873043147, 0.252314736, 0.234754422, 0.74197773, 0.00698226188, 0.857530608, 0.84909802, 0.403480969, 0.337330609, 0.383397141;0.511113638, 0.417394782, 0.0681866198, 0.709388822, 0.460898338, 0.55554957, 0.18712427, 0.836442192, 0.168278589, 0.875904925, 0.37686688, 0.241165214, 0.189195792, 0.829562716, 0.548909632, 0.604312982, 0.720383999, 0.291361073, 0.233567361, 0.30781915, 0.828708984, 0.000597938835;0.298066201, 0.838853862, 0.106800704, 0.953402879, 0.407778034, 0.33015595, 0.879279556, 0.36298284, 0.492956972, 0.697024166, 0.112590467, 0.297650278, 0.886380362, 0.7253716, 0.320401286, 0.0471967017, 0.671012981, 0.783161431, 0.164286843, 0.105401377, 0.905298999, 0.0602269449;0.0778565196, 0.821250155, 0.631375978, 0.123846027, 0.248791789, 0.955448191, 0.679162568, 0.246961167, 0.0107152977, 0.393121798, 0.0705356376, 0.270559256, 0.942058219, 0.122497862, 0.298272454, 0.634906659, 0.775505297, 0.544630871, 0.909429504, 0.139254071, 0.190128766, 0.96141662;0.199219686, 0.369136194, 0.440664883, 0.520543837, 0.168810006, 0.344091618, 0.505520792, 0.88819135, 0.909202136, 0.879914627, 0.0132288129, 0.511780457, 0.507757838, 0.769442579, 0.544257337, 0.934795517, 0.859645345, 0.853942882, 0.975778819, 0.138371595, 0.357192334, 0.81962487];
classifier_labels = [-1, 1, -1, -1, 1, 1, -1, 1, 1, -1, -1, 1, 1, 1, 1, 1, -1, 1, -1, 1, 1, -1];
classifier_epsilon = 1e-05;
data_test = [0.829565831, 0.769061133, 0.242353695, 0.341641113, 0.56541594, 0.0684407092, 0.387972754, 0.425505659, 0.816655243, 0.897397318, 0.977283823, 0.728116437, 0.66331071, 0.975410368, 0.60025141, 0.021009157, 0.93539449, 0.538363102, 0.885238879, 0.769746623, 0.13035313, 0.913229686, 0.648464557, 0.203534874, 0.0867065676, 0.731250589, 0.0344313086, 0.133695654, 0.57356328, 0.550660459, 0.44582555, 0.1531445, 0.839099699, 0.119381011;0.738546053, 0.7653163, 0.929403484, 0.473435659, 0.597312378, 0.387223141, 0.088134431, 0.847547633, 0.39363552, 0.304490424, 0.700808418, 0.854547393, 0.869649685, 0.282765457, 0.815745381, 0.204802409, 0.797998035, 0.332172522, 0.275566776, 0.165499775, 0.535347768, 0.751423318, 0.938181173, 0.340004386, 0.706604129, 0.776798437, 0.0637945563, 0.430346532, 0.635323347, 0.363403932, 0.327842838, 0.676617234, 0.181817653, 0.941334393;0.258904275, 0.326220507, 0.756192234, 0.976617637, 0.608211377, 0.801840168, 0.377201782, 0.302775128, 0.218771708, 0.719245201, 0.434530963, 0.869533672, 0.196486967, 0.742369937, 0.444573501, 0.726084851, 0.180657541, 0.857934914, 0.121302998, 0.947686177, 0.930165203, 0.211745862, 0.527587973, 0.717676158, 0.666927447, 0.322067535, 0.0528266864, 0.559744661, 0.98294688, 0.0414973255, 0.642777413, 0.393755142, 0.435396323, 0.953120114;0.0573918437, 0.532470908, 0.884343428, 0.591716969, 0.727631138, 0.168020052, 0.701097587, 0.489785868, 0.379737405, 0.151742913, 0.399983018, 0.41933468, 0.474308665, 0.623379566, 0.600583197, 0.410731543, 0.666685652, 0.299929397, 0.228331252, 0.617194227, 0.504637288, 0.597808013, 0.35479729, 0.0584579872, 0.922603757, 0.969818865, 0.16625533, 0.528656604, 0.583307248, 0.192023369, 0.664739205, 0.60246917, 0.762212058, 0.564416588;0.475108365, 0.717261876, 0.50237182, 0.334442527, 0.00735304455, 0.582070131, 0.979031841, 0.92264514, 0.96670614, 0.909930158, 0.0384008773, 0.65830744, 0.368250107, 0.197555906, 0.386050936, 0.558171184, 0.437716825, 0.501945405, 0.185776955, 0.691720114, 0.0849662899, 0.661342679, 0.456888072, 0.864366266, 0.276754132, 0.805174397, 0.519312693, 0.420736563, 0.93286769, 0.436246026, 0.737132414, 0.327883994, 0.797804681, 0.347002335;0.0367129435, 0.0120030273, 0.429149492, 0.557688691, 0.0832230662, 0.549717255, 0.480559941, 0.740663581, 0.203994604, 0.97246139, 0.862959623, 0.518010431, 0.614186244, 0.074895842, 0.697166254, 0.417164279, 0.826464609, 0.474769006, 0.0854030302, 0.0687539064, 0.336323394, 0.469406842, 0.290876854, 0.971845301, 0.106160354, 0.552814876, 0.857857784, 0.0546103032, 0.483498085, 0.920535885, 0.236609783, 0.485017988, 0.877749405, 0.512615244;0.304903124, 0.332729477, 0.0619465186, 0.192676396, 0.709671344, 0.504911451, 0.343026713, 0.239819952, 0.843993472, 0.437899887, 0.485230456, 0.834164108, 0.780048087, 0.460355373, 0.891140092, 0.421712618, 0.194958271, 0.471626365, 0.262408376, 0.119210443, 0.83747252, 0.0527439522, 0.939924373, 0.117972484, 0.988124076, 0.297859398, 0.166185, 0.0364610508, 0.0451513644, 0.179163918, 0.57680792, 0.129071247, 0.768747131, 0.227481604;0.577613081, 0.0501753503, 0.428351801, 0.720456741, 0.281825003, 0.0393618798, 0.766595945, 0.332426692, 0.366798321, 0.0399225326, 0.0271066523, 0.570907054, 0.700865697, 0.467720616, 0.774485603, 0.134433427, 0.600792149, 0.783501503, 0.966274298, 0.865071099, 0.63077042, 0.184301397, 0.761889894, 0.970074457, 0.605896815, 0.285205803, 0.983711583, 0.0105132245, 0.021846712, 0.0966945598, 0.0994946689, 0.315533181, 0.449078514, 0.106623619;0.615069754, 0.278694316, 0.452824805, 0.962058499, 0.485634298, 0.535542473, 0.335816365, 0.281918356, 0.0562242949, 0.50895904, 0.546407074, 0.9128008, 0.343275489, 0.852048416, 0.0995797135, 0.887424535, 0.48201734, 0.75777656, 0.958871873, 0.893933511, 0.455649549, 0.142814304, 0.249744179, 0.514742194, 0.926907562, 0.559218132, 0.610363008, 0.432839921, 0.579829576, 0.476983393, 0.389208619, 0.924641791, 0.893304494, 0.318039612;0.879837748, 0.406416537, 0.282550268, 0.15452083, 0.33487829, 0.131287972, 0.0549663068, 0.082572158, 0.966558439, 0.0160281565, 0.766347213, 0.404968587, 0.575665253, 0.376986167, 0.648682953, 0.603213062, 0.303219784, 0.126115322, 0.27900829, 0.623505311, 0.316457131, 0.258792408, 0.963685189, 0.578541818, 0.0797150732, 0.683114286, 0.944707382, 0.998792936, 0.899248918, 0.581721527, 0.932566709, 0.439562942, 0.510460131, 0.0869670203;0.161447686, 0.984654478, 0.909595391, 0.0913257343, 0.468556995, 0.692908911, 0.756451088, 0.995421513, 0.948369553, 0.81068357, 0.209097365, 0.449943674, 0.474157946, 0.676398369, 0.225789552, 0.326170254, 0.0403338521, 0.538220102, 0.960746303, 0.00618382264, 0.30096632, 0.733160378, 0.257631999, 0.184044772, 0.537540144, 0.908826498, 0.309691711, 0.287511199, 0.570853936, 0.147958334, 0.616621978, 0.760400067, 0.0141966345, 0.201794948];
classifier_bias = 3.19896015729;
classifier_labeltype = 'twoclass';
classifier_bias_enabled = 'True';
classifier_type = 'linear';
feature_class = 'simple';
classifier_classified = [-4.4271198, 0.731620945, -0.942101504, -1.64815175, -4.45239954, 4.57117571, 1.15940573, 3.96924022, -2.40415716, 8.39798917, 0.286153118, -2.9972077, -4.88268046, -2.01620293, -7.43501173, 1.9719846, -1.30108914, -0.783638323, -0.979501683, -4.69168719, -5.97251389, 2.25592187, -9.60251482, 0.11985359, -5.58911005, 0.228333522, -0.365222551, -1.15450015, 1.67073405, 4.74991904, -1.32577944, 1.86616579, 0.292828738, -0.453014267];
feature_type = 'Real';
