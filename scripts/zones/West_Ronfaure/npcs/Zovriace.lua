-----------------------------------
--  Area: West Ronfaure
--  NPC: Zovriace
--  Type: Patrol
--  @zone 100
-----------------------------------
package.loaded["scripts/zones/West_Ronfaure/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/pathfind");

local path = {
-439.970062, -16.752592, -255.100327,
-440.602631, -16.538126, -255.958786,
-441.127228, -16.394150, -256.900909,
-441.494019, -16.267317, -257.915710,
-441.581543, -16.133537, -258.985992,
-441.024231, -16.028330, -259.826294,
-439.954132, -16.028715, -259.822601,
-438.925629, -16.072157, -259.474915,
-437.941528, -16.180017, -259.014008,
-437.021820, -15.868464, -258.524048,
-436.108673, -15.583454, -258.000946,
-435.179413, -15.400028, -257.455811,
-432.864655, -15.075329, -256.065369,
-423.557495, -14.982476, -250.437790,
-422.761383, -15.055836, -249.708817,
-422.268677, -15.117037, -248.744232,
-421.972382, -15.198636, -247.701523,
-421.776733, -15.333975, -246.640106,
-421.618866, -15.467649, -245.572189,
-421.478943, -15.717875, -244.517334,
-421.351807, -15.921570, -243.463135,
-421.186218, -16.198463, -241.860138,
-421.114075, -16.145809, -240.774628,
-421.063721, -16.139482, -239.687912,
-420.994019, -16.130768, -237.785126,
-420.230377, -15.989685, -211.979935,
-420.197784, -15.922558, -210.893448,
-420.124512, -15.798100, -207.772995,
-420.100586, -15.813488, -206.552765,
-419.909180, -16.017889, -199.219910,
-420.047943, -16.120964, -198.143524,
-420.387573, -15.748003, -197.158432,
-420.822083, -15.460172, -196.220764,
-421.321320, -15.238870, -195.271896,
-421.853363, -15.129681, -194.327469,
-423.947327, -15.024358, -190.672211,
-427.640472, -14.942602, -184.327072,
-428.275848, -15.015442, -183.448257,
-428.993866, -15.115380, -182.637329,
-429.774628, -15.196917, -181.884567,
-430.584961, -15.269184, -181.162048,
-431.407013, -15.339080, -180.452606,
-432.945740, -15.590717, -179.147598,
-446.838165, -18.853514, -167.615036,
-447.872925, -18.977230, -166.740967,
-450.464325, -19.402002, -164.580673,
-451.186340, -19.500000, -163.781158,
-451.724823, -19.500000, -162.836929,
-452.156342, -19.526083, -161.839020,
-452.542633, -19.574369, -160.823151,
-452.902069, -19.619282, -159.797119,
-453.247406, -19.652224, -158.765945,
-454.379395, -19.973661, -155.298203,
-455.345062, -20.866318, -152.299789,
-455.671997, -20.945515, -151.285309,
-456.993286, -21.072395, -147.165604,
-457.321960, -21.268314, -146.147049,
-460.919006, -21.558647, -134.955734,
-461.252441, -21.516457, -133.920914,
-463.684235, -20.974045, -126.322334,
-463.735504, -21.005585, -125.238617,
-463.618225, -21.100723, -124.159538,
-463.476532, -21.130386, -123.083138,
-460.845245, -21.814005, -103.009911,
-460.340668, -21.860525, -102.053253,
-459.548370, -21.859089, -101.316696,
-458.651062, -21.799015, -100.705299,
-457.715729, -21.738424, -100.153778,
-456.764191, -21.662802, -99.631622,
-455.801666, -21.716837, -99.128433,
-452.543488, -21.461651, -97.451981,
-427.263428, -19.779127, -84.644547,
-426.292938, -19.805960, -84.153252,
-424.000397, -20.058718, -82.994804,
-423.030975, -19.983002, -82.507225,
-396.179047, -20.642097, -68.915520,
-395.230957, -20.758915, -68.394829,
-394.369598, -20.974821, -67.755898,
-393.589478, -21.246567, -67.048546,
-392.859406, -21.419449, -66.273178,
-392.153625, -21.557785, -65.456947,
-391.468964, -21.778866, -64.640053,
-390.559631, -22.323750, -63.552891,
-389.849030, -22.824114, -62.691097,
-387.739929, -24.336773, -60.088634,
-387.035553, -24.853951, -59.230145,
-386.339355, -25.370905, -58.366211,
-385.651886, -26.125864, -57.510376,
-385.033325, -27.045774, -56.701607,
-384.452972, -27.587692, -55.817024,
-383.951385, -27.987345, -54.938370,
-383.386536, -28.294943, -53.910427,
-382.906982, -28.606924, -52.984940,
-382.409454, -28.917976, -52.069004,
-381.867371, -29.025024, -51.137131,
-381.301788, -29.172449, -50.219383,
-380.727570, -29.320223, -49.307129,
-364.454529, -30.016165, -24.085087,
-354.090363, -29.671881, -8.006002,
-353.540497, -29.834528, -7.080005,
-353.008911, -30.037712, -6.150451,
-351.508148, -30.500000, -3.461302,
-344.298309, -31.130165, 9.622360,
-343.719788, -31.229996, 10.534849,
-343.014465, -31.336742, 11.354795,
-342.196075, -31.448938, 12.062510,
-341.337769, -31.562546, 12.721281,
-340.463776, -31.676613, 13.359138,
-339.578003, -31.747307, 13.983932,
-338.684845, -31.777473, 14.604170,
-331.282471, -31.493895, 19.661541,
-330.308228, -31.447271, 20.141212,
-329.288361, -31.455376, 20.518837,
-328.249207, -31.395697, 20.818035,
-327.199799, -31.337658, 21.087675,
-326.141876, -31.381889, 21.338877,
-325.082703, -31.432835, 21.581512,
-320.835022, -31.395533, 22.525442,
-319.773651, -31.337238, 22.757223,
-316.724976, -31.168060, 23.434225,
-315.697601, -31.067081, 23.774858,
-314.713531, -31.001366, 24.234629,
-313.761444, -30.953598, 24.758646,
-312.835083, -30.887995, 25.325043,
-311.918732, -30.789017, 25.902380,
-310.216614, -30.826614, 27.010038,
-307.517303, -31.226393, 28.788122,
-306.582703, -31.154129, 29.342878,
-305.625275, -31.055418, 29.852215,
-304.660309, -30.967735, 30.347439,
-303.691956, -30.867880, 30.831894,
-301.273224, -30.522186, 32.021267,
-300.325226, -30.253407, 32.488640,
-297.896606, -29.961315, 33.678493,
-296.921356, -29.980268, 34.155445,
-283.175232, -30.000000, 40.879360,
-282.197723, -30.000000, 41.357021,
-273.907654, -30.223761, 45.435520,
-273.112213, -30.613419, 46.087021,
-272.551117, -31.027349, 46.919304,
-272.154144, -31.419172, 47.850975,
-271.860565, -31.801704, 48.831139,
-271.583862, -32.090355, 49.799915,
-271.340332, -32.425247, 50.806000,
-270.992645, -32.844288, 52.328403,
-269.161621, -35.016342, 60.795799,
-268.899292, -35.537270, 62.046036,
-267.436157, -38.003387, 68.796013,
-267.218933, -38.403229, 69.785110,
-266.716248, -39.181328, 72.162575,
-266.646820, -39.236248, 73.245872,
-266.741486, -39.305218, 74.326553,
-266.943451, -39.503807, 75.379707,
-267.198029, -39.606842, 76.420052,
-267.467224, -39.573181, 77.473747,
-267.751343, -39.537670, 78.523438,
-269.489166, -39.688145, 84.654762,
-269.779968, -39.940563, 85.672394,
-270.407593, -40.357700, 87.859993,
-270.701263, -40.217247, 88.897224,
-271.803741, -39.582218, 92.765701,
-272.103394, -39.621971, 93.822968,
-274.938629, -40.094635, 103.757698,
-275.234436, -39.950058, 104.796463,
-278.316315, -39.956299, 115.598122,
-278.657959, -40.000000, 116.626968,
-279.067108, -40.000000, 117.634903,
-279.518555, -40.000000, 118.624847,
-279.993774, -40.000000, 119.603645,
-280.484222, -40.000000, 120.574821,
-280.980164, -40.000000, 121.543243,
-286.929169, -39.008667, 132.941757,
-287.430420, -38.897781, 133.901459,
-287.937683, -38.781601, 134.856888,
-288.510773, -38.692963, 135.778198,
-289.157349, -38.665531, 136.652649,
-289.833923, -38.639122, 137.504150,
-290.523529, -38.604607, 138.344910,
-291.396698, -38.552856, 139.386200,
-300.068176, -35.596138, 149.616638,
-300.450134, -35.417088, 150.612869,
-300.480957, -35.302635, 151.691971,
-300.363770, -35.374798, 152.765915,
-300.181000, -35.526699, 153.827637,
-299.967926, -35.682739, 154.883087,
-299.740814, -35.856140, 155.933807,
-299.166321, -36.110737, 158.434998,
-297.842926, -36.519508, 164.110306,
-297.711517, -36.728516, 165.169052,
-297.791962, -36.897087, 166.237534,
-298.034912, -37.036209, 167.288712,
-298.354279, -37.162457, 168.321182,
-298.708008, -37.283379, 169.343033,
-299.123047, -37.480621, 170.478378,
-299.870880, -38.047672, 172.461945,
-300.458160, -38.762894, 173.968826,
-301.121552, -39.588573, 175.707932,
-301.488495, -39.880459, 176.703125,
-301.741180, -40.187134, 177.714966,
-301.840820, -40.504196, 178.748749,
-301.855133, -40.822124, 179.788849,
-301.822845, -41.188747, 180.817581,
-301.758820, -41.552467, 181.840881,
-301.682739, -41.920956, 182.862518,
-301.407043, -42.825760, 186.114990,
-300.501160, -45.446545, 196.063461,
-300.327515, -45.781693, 197.086868,
-300.107330, -46.023857, 198.101761,
-299.892059, -46.020031, 199.202560,
-299.658722, -46.049198, 200.264832,
-299.083496, -45.989109, 202.775665,
-298.839966, -45.840462, 203.825668,
-298.599335, -45.612335, 204.856720,
-297.294495, -45.038647, 210.384552,
-296.802460, -45.031513, 211.348297,
-296.003754, -44.947575, 212.076996,
-295.089417, -44.939152, 212.665131,
-294.132080, -44.971771, 213.180725,
-293.159241, -45.004112, 213.666809,
-292.177643, -45.043068, 214.134933,
-290.945007, -45.035225, 214.709396,
-282.860168, -45.922268, 218.423615,
-281.928314, -46.162800, 218.882782,
-280.925964, -46.093803, 219.302551,
-279.942993, -46.035995, 219.765259,
-278.976990, -46.039272, 220.261993,
-278.019318, -46.126381, 220.774200,
-276.532257, -45.679039, 221.595612,
-273.266785, -45.098358, 223.469131,
-272.324432, -45.015408, 224.010422,
-268.550629, -45.024551, 226.176529,
-267.745361, -45.022247, 226.900223,
-267.117981, -44.979355, 227.787445,
-266.573853, -44.975834, 228.729248,
-266.066772, -44.982010, 229.691788,
-265.576538, -45.041542, 230.663071,
-265.079071, -45.163151, 231.627274,
-264.597351, -45.264587, 232.595947,
-264.152435, -45.446598, 233.563171,
-263.697998, -45.680012, 234.523819,
-262.016174, -46.281578, 238.029846,
-261.556702, -46.201237, 239.014328,
-256.600128, -45.025234, 249.377197,
-255.970734, -44.957794, 250.260529,
-255.212357, -44.939751, 251.038193,
-254.386093, -44.945457, 251.745514,
-253.526093, -44.969048, 252.411560,
-252.652176, -45.002594, 253.058823,
-251.770966, -45.036087, 253.696213,
-244.441742, -45.275829, 258.863953,
-243.505188, -45.542328, 259.357666,
-242.523361, -45.906620, 259.648193,
-241.460144, -46.028633, 259.823212,
-240.374603, -46.019741, 259.894318,
-239.287964, -46.013302, 259.945831,
-238.200699, -46.008728, 259.982391,
-235.359665, -46.299160, 260.041962,
-231.212814, -47.047096, 260.111084,
-228.414734, -47.613140, 260.165649,
-227.395874, -48.089172, 260.184479,
-225.697647, -48.950203, 260.216675,
-224.363464, -49.629337, 260.239838,
-223.352081, -49.953148, 260.253906,
-216.001205, -52.412048, 260.375458,
-214.947723, -52.636997, 260.390472,
-204.417313, -55.326168, 260.560699,
-203.368652, -55.655231, 260.576294,
-202.049591, -56.112896, 260.577698,
-200.935196, -56.080486, 260.591614,
-184.915848, -56.834442, 260.617188,
-183.857697, -57.100548, 260.594025,
-182.771301, -57.095242, 260.613068,
-181.551437, -57.195465, 260.611603,
-180.467743, -57.268650, 260.554718,
-179.388474, -57.235741, 260.443207,
-178.313416, -57.323948, 260.301849,
-177.240799, -57.410061, 260.141052,
-175.639709, -57.602425, 259.888031,
-153.454758, -59.971466, 256.230652,
-152.371017, -59.941368, 256.202332,
-151.338013, -59.899998, 256.526245,
-150.409531, -59.899998, 257.091797,
-149.546631, -59.905708, 257.754150,
-148.712616, -59.944000, 258.451752,
-147.891266, -59.982349, 259.164490,
-147.077164, -59.987167, 259.886108,
-145.559814, -59.996250, 261.249481,
-135.296967, -61.920395, 270.550049,-- report?
-136.090424, -61.731232, 269.830048,
-136.884094, -61.542065, 269.110352, 
-150.086914, -59.899998, 257.147797,
-151.020218, -59.899998, 256.592834,
-152.073257, -59.902092, 256.345337,
-153.159882, -59.929256, 256.347260,
-154.243652, -59.956352, 256.436890,
-155.322754, -59.991856, 256.572998,
-156.398727, -59.956062, 256.729126,
-158.145386, -59.938908, 257.003632,
-178.976608, -57.275406, 260.436218,
-180.056641, -57.302162, 260.523682,
-181.140915, -57.218544, 260.571320,
-182.225555, -57.135334, 260.593964,
-183.310730, -57.070732, 260.604950,
-184.389069, -56.970604, 260.592346,
-185.446976, -56.699245, 260.612305,
-186.534317, -56.616566, 260.619019,
-188.029251, -56.562798, 260.618652,
-207.543884, -54.695351, 260.506195,
-208.593231, -54.421879, 260.490112,
-227.786392, -47.844944, 260.176392,
-228.828674, -47.528126, 260.161072,
-230.026764, -47.278732, 260.139496,
-234.035889, -46.541107, 260.063751,
-240.660934, -46.011520, 259.960083,
-241.744278, -46.169971, 259.869843,
-242.749298, -45.785637, 259.621307,
-243.688675, -45.496006, 259.184814,
-244.613403, -45.269833, 258.647064,
-245.518509, -45.137951, 258.052887,
-246.419617, -45.087288, 257.445129,
-247.315887, -45.036938, 256.830475,
-249.769028, -45.024799, 255.119431,
-254.651855, -44.940964, 251.663010,
-255.433929, -44.937099, 250.909637,
-256.076324, -44.971489, 250.033737,
-256.635040, -45.035885, 249.102524,
-257.142975, -45.097923, 248.142441,
-257.629761, -45.233803, 247.177734,
-258.461090, -45.483078, 245.483109,
-259.049194, -45.740898, 244.276123,
-259.516541, -45.851563, 243.307846,
-264.719360, -45.247227, 232.364548,
-265.227234, -45.105091, 231.261398,
-265.719788, -44.985176, 230.292435,
-266.195129, -44.977989, 229.313889,
-266.685333, -44.971275, 228.342972,
-267.309906, -44.990795, 227.454300,
-268.097290, -45.024536, 226.706238,
-268.976410, -45.019974, 226.065643,
-269.888763, -45.017735, 225.473099,
-270.818024, -45.019180, 224.907379,
-271.753998, -45.000942, 224.352997,
-273.165039, -45.084061, 223.535965,
-274.098724, -45.217224, 222.991837,
-275.034912, -45.352219, 222.454132,
-276.433075, -45.645039, 221.653473,
-278.282349, -46.227036, 220.580002,
-279.259583, -46.019772, 220.105209,
-280.239838, -46.051945, 219.636856,
-281.715057, -46.138523, 218.944061,
-295.072144, -44.942986, 212.826477,
-295.975891, -44.965645, 212.229233,
-296.626495, -44.995678, 211.363297,
-297.092560, -45.025742, 210.383209,
-297.438629, -45.079567, 209.353546,
-297.736084, -45.130760, 208.308319,
-298.005737, -45.248287, 207.260376,
-298.264038, -45.386070, 206.212494,
-299.041473, -45.962364, 202.959167,
-299.294495, -46.129169, 201.913116,
-299.533417, -46.064907, 200.852234,
-299.778412, -46.034283, 199.792679,
-300.021393, -46.009171, 198.732605,
-300.230682, -45.949970, 197.678162,
-300.387177, -45.645302, 196.654877,
-300.517700, -45.328785, 195.618057,
-300.631744, -45.131599, 194.554199,
-300.736755, -44.933083, 193.489655,
-301.916626, -41.039673, 180.393494,
-301.952759, -40.689056, 179.362061,
-301.844147, -40.380367, 178.326706,
-301.584625, -40.074371, 177.315918,
-301.265717, -39.777336, 176.319107,
-300.939575, -39.442776, 175.363297,
-300.565338, -38.942703, 174.325500,
-300.181183, -38.417553, 173.289810,
-299.740601, -37.873989, 172.134750,
-299.364197, -37.599380, 171.148911,
-298.786713, -37.338978, 169.644882,
-298.402985, -37.208858, 168.635559,
-298.027802, -37.092781, 167.620956,
-297.779541, -36.955162, 166.573044,
-297.768494, -36.779991, 165.501678,
-297.893860, -36.572292, 164.441559,
-298.075348, -36.378498, 163.386337,
-298.291718, -36.245903, 162.328415,
-298.523804, -36.191105, 161.267609,
-299.099976, -36.119068, 158.749771,
-300.622803, -35.272141, 152.185272,
-300.546265, -35.356747, 151.112457,
-300.139984, -35.533932, 150.124802,
-299.563080, -35.738934, 149.226395,
-298.926300, -35.974628, 148.366928,
-298.292847, -36.369488, 147.566315,
-297.652222, -36.771412, 146.784256,
-296.598267, -37.424564, 145.524170,
-289.386353, -38.662991, 137.017761,
-288.751190, -38.680820, 136.135315,
-288.184235, -38.716503, 135.207581,
-287.656708, -38.841850, 134.261246,
-286.957916, -39.001762, 132.948334,
-286.436218, -38.979378, 131.993698,
-285.933044, -39.086742, 131.035538,
-279.544037, -40.000000, 118.786339,
-279.095001, -40.000000, 117.795532,
-278.723389, -40.000000, 116.773209,
-278.390717, -40.000000, 115.739441,
-278.077759, -39.844975, 114.705635,
-277.060913, -39.500000, 111.198402,
-271.665955, -39.568001, 92.294022,
-271.258362, -39.819828, 90.879639,
-269.650452, -39.829777, 85.218178,
-269.097565, -39.500000, 83.293137,
-266.809784, -39.475517, 75.200165,
-266.649567, -39.287212, 74.141655,
-266.706604, -39.230602, 73.057381,
-266.841522, -39.182301, 71.979034,
-267.013214, -38.883488, 70.972496,
-267.203888, -38.458267, 69.986374,
-267.405945, -38.092369, 68.997025,
-267.967316, -37.205059, 66.336739,
-269.169342, -35.011940, 60.768829,
-269.416901, -34.755840, 59.608253,
-271.049866, -32.833099, 52.036350,
-271.266663, -32.500420, 51.020298,
-271.939880, -31.580200, 47.963612,
-272.323029, -31.133356, 47.024605,
-273.091705, -30.631182, 46.207066,
-273.918060, -30.234310, 45.609779,
-274.847778, -30.141161, 45.052742,
-275.801636, -30.049332, 44.537346,
-276.767395, -30.004099, 44.039276,
-277.740051, -30.000000, 43.551609,
-295.029419, -30.001234, 35.084103,
-296.004395, -30.028824, 34.606136,
-298.320343, -30.011620, 33.472553,
-299.292633, -30.127960, 32.998138,
-300.744598, -30.420561, 32.287434,
-301.822388, -30.660269, 31.766117,
-305.449860, -31.039577, 29.961134,
-306.393860, -31.150333, 29.427002,
-307.322937, -31.208359, 28.864517,
-308.242828, -31.225145, 28.287502,
-309.370667, -30.999538, 27.554298,
-313.548218, -30.951408, 24.807213,
-314.496948, -30.999880, 24.278208,
-315.499756, -31.051682, 23.858809,
-316.537872, -31.154470, 23.544914,
-317.590332, -31.206734, 23.277721,
-318.646790, -31.269846, 23.025274,
-319.705627, -31.330627, 22.782150,
-328.585144, -31.461010, 20.809793,
-329.604736, -31.452932, 20.447485,
-330.576935, -31.458323, 19.959888,
-331.516846, -31.525490, 19.415882,
-332.434601, -31.586788, 18.835255,
-333.342133, -31.637566, 18.237196,
-334.808746, -31.720680, 17.253775,
-341.755096, -31.512569, 12.505347,
-342.587311, -31.399881, 11.814846,
-343.284424, -31.293304, 10.987100,
-343.903748, -31.204266, 10.098687,
-344.476776, -31.068769, 9.182813,
-345.021790, -30.936897, 8.250527,
-345.557404, -30.848867, 7.308527,
-346.944550, -30.665789, 4.819434,
-352.769531, -30.134678, -5.750056,
-353.430542, -29.865831, -6.908241,
-353.990356, -29.703238, -7.826676,
-354.571625, -29.606535, -8.750077,
-359.278839, -30.020227, -16.060516,
-359.865417, -29.940750, -16.974663,
-366.939056, -29.873177, -27.931231,
-367.528503, -29.888115, -28.845236,
-376.512451, -29.969620, -42.758610,
-377.103638, -29.932671, -43.671219,
-381.560516, -29.108587, -50.606083,
-382.097595, -28.962421, -51.540813,
-382.600891, -28.786295, -52.479153,
-383.076721, -28.473091, -53.406521,
-383.741272, -28.044344, -54.676407,
-384.273438, -27.694052, -55.554253,
-384.877289, -27.241680, -56.411148,
-385.524475, -26.414268, -57.283955,
-386.158508, -25.591860, -58.105274,
-386.828674, -24.977655, -58.949734,
-390.529175, -22.315744, -63.529224,
-392.262146, -21.522633, -65.653603,
-392.948425, -21.380217, -66.485573,
-393.689911, -21.182203, -67.244202,
-394.540680, -20.930220, -67.872482,
-395.454437, -20.739042, -68.440071,
-396.398987, -20.635540, -68.968857,
-397.357697, -20.571712, -69.479454,
-398.320526, -20.508863, -69.982239,
-400.858337, -20.346436, -71.281647,
-416.078491, -20.016394, -78.992798,
-417.048981, -19.936098, -79.480896,
-427.943085, -19.760998, -84.990929,
-428.913177, -19.807173, -85.480782,
-432.057404, -20.048246, -87.078934,
-433.018707, -20.206867, -87.563354,
-434.463531, -20.382471, -88.293999,
-435.430756, -20.458065, -88.786209,
-452.483673, -21.459229, -97.418785,
-453.453613, -21.498474, -97.910263,
-455.629822, -21.682997, -99.016502,
-456.597382, -21.676950, -99.507576,
-459.140961, -21.836069, -100.792534,
-459.946869, -21.893318, -101.510696,
-460.448151, -21.846874, -102.472565,
-460.755463, -21.810520, -103.514992,
-460.974854, -21.743179, -104.577850,
-461.155731, -21.659788, -105.647171,
-461.317200, -21.591896, -106.720940,
-461.468292, -21.524906, -107.796364,
-463.602295, -21.103918, -124.129204,
-463.619171, -21.024265, -125.213806,
-463.478882, -21.006443, -126.292236,
-463.249878, -21.002714, -127.355629,
-462.966309, -21.089417, -128.399185,
-462.668304, -21.285374, -129.427078,
-462.235779, -21.446602, -130.840286,
-460.657928, -21.688395, -135.754669,
-460.330139, -21.662376, -136.789734,
-455.015533, -20.520708, -153.317886,
-454.692139, -20.245014, -154.319489,
-452.376251, -19.553642, -161.505966,
-451.983276, -19.504547, -162.518814,
-451.383820, -19.500000, -163.425491,
-450.662170, -19.500000, -164.235107,
-449.881348, -19.324495, -164.978180,
-449.075256, -19.183504, -165.695129,
-448.256256, -19.045288, -166.398026,
-447.224274, -18.874338, -167.267380,
-446.393372, -18.880678, -167.969147,
-444.853027, -18.565512, -169.265442,
-429.819672, -15.220426, -181.753754,
-429.047333, -15.136473, -182.514877,
-428.378082, -15.023755, -183.364578,
-427.766907, -14.929929, -184.258438,
-427.184479, -14.948370, -185.176834,
-426.620789, -14.981401, -186.106918,
-420.939972, -15.316271, -195.861465,
-420.463104, -15.644215, -196.799393,
-420.179413, -15.996948, -197.782822,
-420.054016, -16.013285, -198.776382,
-420.006409, -16.007343, -199.863220,
-419.994202, -16.007246, -200.951035,
-420.002808, -16.006878, -202.039001,
-420.028076, -16.012650, -203.534683,
-420.136383, -15.819376, -208.158340,
-420.158417, -15.863979, -209.517258,
-420.217560, -15.970049, -212.114258,
-420.270721, -15.849182, -213.198792,
-420.324890, -15.797634, -214.692932,
-420.826080, -15.902279, -232.085022,
-420.854614, -15.979057, -233.178070,
-421.049957, -16.137796, -239.834213,
-421.117493, -16.146238, -240.920044,
-421.206573, -16.172615, -242.004349,
-421.315979, -15.984070, -243.070419,
-421.494659, -15.643467, -244.787292,
-421.819092, -15.221020, -247.595215,
-422.154602, -15.128119, -248.622253,
-422.758545, -15.061894, -249.519104,
-423.569183, -14.987906, -250.238434,
-424.447510, -14.935026, -250.876724,
-425.353729, -14.944465, -251.478790,
-426.272919, -14.957020, -252.060471,
-427.197968, -14.990112, -252.632385,
-435.669800, -15.466051, -257.761230,
-436.582245, -15.703817, -258.315826,
-437.807831, -16.083422, -259.079224,
-438.774384, -16.063610, -259.543793,
-439.841156, -16.037457, -259.752838,
-440.927063, -16.028862, -259.821381,
-442.012054, -16.065359, -259.827911,
-443.029694, -15.716091, -259.796082,
-444.055817, -15.340240, -259.815460,
-445.097931, -15.219767, -260.104065,
-446.074341, -15.110579, -260.570770,
-447.027344, -15.057332, -261.092285,
-447.959381, -15.005149, -261.650909,
-448.870300, -15.018632, -262.244598,
-452.834351, -15.055134, -264.874695,
-453.655518, -15.037918, -265.585449,
-454.313416, -14.975594, -266.448151,
-454.843811, -14.943377, -267.396851,
-455.317291, -14.926654, -268.376190,
-455.755920, -14.934984, -269.371826,
-456.179169, -14.990575, -270.372711,
-458.718781, -15.924042, -276.598358,
-459.454010, -16.074858, -278.487640,
-459.765564, -16.035896, -279.529297,
-460.018890, -16.008865, -280.586884,
-460.219788, -16.034010, -281.655853,
-460.388611, -15.869349, -282.697662,
-460.631561, -15.373913, -284.238556,
-463.079895, -10.491953, -301.043823,
-463.087708, -10.158780, -302.077850,
-462.960846, -9.836479, -303.109039,
-462.774170, -9.560242, -304.125580,
-462.522583, -8.986555, -305.196259,
-462.273163, -8.643255, -306.190765,
-462.021210, -8.278727, -307.184570,
-460.034760, -6.387301, -314.867249,
-459.871155, -6.200213, -315.926605,
-459.784912, -6.106617, -317.006958,
-459.729767, -6.040372, -318.091217,
-459.694733, -6.044695, -319.178589,
-459.585297, -6.053058, -324.342834,
-459.546967, -5.772733, -326.638885,
-459.503937, -5.646238, -328.802887,
-459.475159, -5.742835, -330.568115,
-459.458099, -5.785998, -331.654663,
-459.434814, -5.762313, -332.741577,
-459.407196, -5.823767, -334.235260,
-459.388367, -5.885840, -335.321259,
-459.238617, -5.855601, -343.748810,
-459.212708, -5.653573, -345.233765,
-459.171204, -5.405949, -347.661652,
-459.148193, -5.488004, -349.155365,
-459.102081, -5.651767, -351.733948,
-459.078918, -5.694240, -352.820526,
-459.029205, -6.086042, -355.647919,
-459.029083, -6.127892, -356.731750,
-459.140869, -6.113956, -357.812897,
-459.383789, -6.083621, -358.872314,
-459.727936, -6.040620, -359.903625,
-460.125519, -6.022241, -360.915192,
-460.547241, -6.109803, -361.916656,
-460.983124, -5.974494, -362.906189,
-461.694427, -5.748822, -364.503021,
-464.664276, -4.937500, -371.008911,
-465.236359, -4.933529, -371.931122,
-466.029266, -4.964595, -372.673553,
-466.928986, -4.997910, -373.282715,
-467.884674, -5.034942, -373.801270,
-468.857971, -5.029415, -374.286438,
-469.843262, -5.023180, -374.747375,
-470.833405, -5.019099, -375.197601,
-472.694275, -5.035691, -376.029572,
-473.677887, -5.200471, -376.472137,
-474.661591, -5.361502, -376.908600,
-476.374115, -5.724977, -377.667419,
-477.943665, -6.254426, -378.389740,
-478.940887, -6.155789, -378.806549,
-479.933899, -6.100767, -379.246948,
-480.918152, -6.043252, -379.707092,
-481.900665, -6.081943, -380.169891,
-484.013855, -5.418111, -381.186493,
-491.435669, -5.052667, -384.848053,
-492.353546, -5.041574, -385.430573,
-493.202301, -5.007907, -386.109772,
-493.992279, -4.974132, -386.856659,
-494.756409, -4.940371, -387.630280,
-495.507080, -4.923118, -388.417175,
-496.431793, -4.977174, -389.412140,
-497.107117, -5.046514, -390.261566,
-497.657043, -5.110490, -391.197357,
-498.112122, -5.190608, -392.182343,
-498.507446, -5.332036, -393.186005,
-498.873962, -5.472911, -394.200806,
-499.234314, -5.613681, -395.218109,
-499.678253, -5.800858, -396.489166,
-500.778503, -6.103849, -399.830353,
-501.068237, -6.140066, -400.878174,
-501.285126, -6.187640, -401.943726,
-501.455048, -5.907662, -402.972321,
-501.603912, -5.583361, -404.001343,
-501.743408, -5.360402, -405.062927,
-502.090485, -4.776625, -407.835724,
-503.105774, -2.217786, -416.217438,
-503.239807, -1.832487, -417.352051,
-503.333099, -1.481157, -418.377258,
-503.423798, -1.100163, -419.395477,
-503.386627, -0.703467, -420.402710,
-503.246399, -0.351263, -421.441803,
-502.988159, -0.045092, -422.453247,
-502.687469, 0.254894, -423.455109,
-502.373627, 0.594657, -424.430695,
-502.022430, 1.109420, -425.470734,
-501.691040, 1.542306, -426.415924,
-499.392395, 3.206969, -433.018402,
-499.253448, 3.375491, -434.080170,
-499.522461, 3.599207, -435.105164,
-500.032349, 3.822114, -436.033020,
-500.653107, 3.809904, -436.925049,
-501.312653, 3.793942, -437.789276,
-501.987488, 3.745028, -438.639038,
-503.010254, 3.617167, -439.904755,
-504.546265, 3.195670, -441.791504,
-505.474762, 3.454881, -442.943634,
-506.260468, 3.535620, -443.878723,
-506.956055, 3.542965, -444.714844,
-508.938232, 3.486761, -447.139069,
-509.594696, 3.471608, -448.007050,
-510.234344, 3.489084, -448.886902,
-512.427246, 3.586239, -451.998352,
-513.936096, 3.984726, -454.195862,
-514.540894, 4.233383, -455.064941,
-515.166321, 4.378668, -455.945282,
-516.262939, 4.290412, -457.499878,
-516.891174, 4.174067, -458.381256,
-517.627136, 3.970321, -459.154846,
-518.497131, 3.965434, -459.776428,
-519.472900, 3.961867, -460.252655,
-520.468811, 3.907594, -460.686981,
-521.475464, 3.856341, -461.097015,
-522.467651, 3.899534, -461.479309,
-523.431274, 4.273953, -461.837158,
-532.930542, 4.970236, -465.372864,
-533.836426, 5.003310, -465.964172,
-534.517090, 5.036720, -466.809723,
-535.063843, 5.069100, -467.748749,
-535.532227, 5.071708, -468.730682,
-535.968689, 5.042767, -469.726746,
-536.385559, 4.985219, -470.730225,
-536.996216, 4.874025, -472.240662,
-538.487976, 4.135559, -475.968048,
-538.877197, 4.030794, -476.973175,
-539.262268, 3.887287, -477.981995,
-539.575439, 3.940336, -479.021515,
-539.779053, 3.965811, -480.089569,
-539.916809, 3.983058, -481.168549,
-540.027405, 3.990070, -482.250732,
-540.122314, 3.997955, -483.334686,
-540.210938, 3.984653, -484.419312,
-541.090576, 3.211054, -496.324768,
-541.168152, 3.029897, -497.395050,
-541.225708, 2.852559, -498.466858,
-541.208801, 2.688696, -499.542267,
-541.137390, 2.576481, -500.620575,
-541.029846, 2.491427, -501.699982,
-540.901306, 2.387329, -502.777466,
-540.700256, 2.348901, -504.390961,
-539.072510, 0.190201, -516.318054,
-538.841309, 0.175944, -517.380859,
-538.530579, 0.156524, -518.422974,
-538.178406, 0.134513, -519.452148,
-537.805481, 0.111208, -520.473999,
-537.424194, 0.087378, -521.492676,
-536.306885, 0.056635, -524.412842,
-533.919128, 0.072274, -530.589355,
-534.307983, 0.225401, -529.584229,
-534.697571, 0.361172, -528.577515,
-538.121399, 0.130942, -519.723328,
-538.474670, 0.153023, -518.694641,
-538.752563, 0.170393, -517.643005,
-538.969421, 0.183949, -516.577148,
-539.157410, 0.272568, -515.513428,
-539.318237, 0.485071, -514.458435,
-539.542297, 0.803161, -512.873474,
-539.692932, 0.970816, -511.811584,
-539.838379, 1.181126, -510.753571,
-540.765686, 2.421811, -503.992981,
-540.907532, 2.391479, -502.915649,
-541.162781, 2.543372, -500.897217,
-541.213013, 2.639980, -499.816193,
-541.198853, 2.814182, -498.741730,
-541.153137, 2.989250, -497.668915,
-541.090637, 3.167528, -496.597382,
-540.901733, 3.472016, -493.766296,
-539.946655, 3.986804, -480.899536,
-539.758118, 3.963221, -479.829315,
-539.464539, 3.926524, -478.782715,
-539.127625, 3.884508, -477.750854,
-538.753662, 4.055820, -476.738281,
-538.086609, 4.375992, -474.991974,
-535.247925, 5.074961, -467.828430,
-534.701660, 5.041934, -466.858551,
-533.907593, 5.008235, -466.119568,
-532.972717, 4.975322, -465.566498,
-531.983582, 4.943339, -465.114624,
-530.979858, 4.951505, -464.695160,
-529.968079, 4.959478, -464.295441,
-528.951843, 4.983376, -463.907593,
-522.430969, 3.916511, -461.465240,
-521.404968, 3.857628, -461.086182,
-520.377686, 3.902210, -460.729462,
-519.369934, 3.953047, -460.322479,
-518.443848, 3.963709, -459.761841,
-517.644409, 3.968113, -459.040253,
-516.927307, 4.138369, -458.245422,
-516.257751, 4.275104, -457.397705,
-515.619324, 4.360233, -456.520050,
-514.989380, 4.372784, -455.633331,
-514.354065, 4.148522, -454.766449,
-513.569702, 3.888090, -453.690735,
-512.848206, 3.701035, -452.650909,
-512.268372, 3.550035, -451.781738,
-511.656403, 3.532558, -450.883881,
-510.565186, 3.495838, -449.323639,
-509.924683, 3.478686, -448.444824,
-509.263702, 3.481614, -447.580719,
-508.588806, 3.498191, -446.727631,
-507.732697, 3.521606, -445.671478,
-504.967285, 3.235765, -442.320770,
-504.184204, 3.426662, -441.405670,
-503.524536, 3.552731, -440.548615,
-502.838013, 3.638559, -439.709167,
-499.995270, 3.863406, -436.248932,
-499.458771, 3.631288, -435.332092,
-499.354584, 3.427225, -434.275543,
-499.518890, 3.263798, -433.213623,
-499.786255, 3.119409, -432.168945,
-500.093414, 2.942964, -431.138855,
-500.416901, 2.698143, -430.129211,
-500.756897, 2.452024, -429.125366,
-501.102753, 2.205250, -428.123657,
-501.993927, 1.130284, -425.598083,
-502.375153, 0.625838, -424.550262,
-502.760925, 0.259216, -423.439453,
-503.125061, -0.073914, -422.319733,
-503.344879, -0.434069, -421.301147,
-503.392548, -0.782053, -420.267029,
-503.345978, -1.156086, -419.237427,
-503.275909, -1.517113, -418.212494,
-503.200043, -1.875748, -417.190155,
-503.092529, -2.185827, -416.171051,
-501.571167, -5.735084, -403.501678,
-501.418823, -6.069547, -402.475281,
-501.176941, -6.153698, -401.405243,
-500.898254, -6.118875, -400.354431,
-500.586060, -6.079853, -399.313019,
-500.255157, -6.038494, -398.277283,
-499.919769, -5.917615, -397.250214,
-498.133850, -5.162109, -391.881653,
-497.607086, -5.099213, -390.933563,
-496.951874, -5.030679, -390.068451,
-496.247040, -4.960183, -389.242767,
-495.526642, -4.922899, -388.429321,
-494.798859, -4.939609, -387.620911,
-494.057587, -4.973323, -386.825287,
-493.242004, -5.007064, -386.107086,
-492.357513, -5.040519, -385.475281,
-491.422150, -5.050906, -384.920258,
-490.463867, -5.046978, -384.405090,
-489.496246, -5.027953, -383.907104,
-488.524017, -5.008810, -383.419098,
-483.903564, -5.444798, -381.144897,
-482.970856, -5.764278, -380.673676,
-482.046753, -6.081060, -380.195770,
-481.059265, -6.036974, -379.756531,
-480.068268, -6.092669, -379.310974,
-478.083740, -6.252785, -378.424103,
-475.939850, -5.600721, -377.478241,
-474.095123, -5.269806, -376.659973,
-472.988983, -5.088950, -376.167572,
-471.997314, -4.996942, -375.725739,
-467.519684, -5.021126, -373.745483,
-466.568787, -4.988472, -373.221497,
-465.785889, -4.954824, -372.473022,
-465.155731, -4.938012, -371.586975,
-464.613434, -4.943035, -370.644104,
-464.112732, -4.970317, -369.678741,
-463.636993, -5.030797, -368.702332,
-463.174835, -5.119479, -367.720856,
-462.721741, -5.261708, -366.742218,
-461.430298, -5.878856, -363.953918,
-460.990692, -5.964869, -362.965485,
-459.656555, -6.049467, -359.997162,
-459.353271, -6.087378, -358.954742,
-459.191864, -6.107553, -357.879517,
-459.106384, -6.118238, -356.795227,
-459.081055, -6.089601, -355.710297,
-459.074738, -5.935709, -354.633362,
-459.104004, -5.658697, -351.932465,
-459.120667, -5.591868, -350.846558,
-459.187042, -5.479144, -346.507324,
-459.430115, -5.749809, -332.941071,
-459.453735, -5.802073, -331.854553,
-459.471832, -5.754164, -330.767517,
-459.490845, -5.694329, -329.681580,
-459.512299, -5.627197, -328.459930,
-459.529968, -5.682715, -327.376678,
-459.596893, -6.022334, -323.863861,
-459.627655, -6.068361, -321.961487,
-459.653656, -6.049818, -320.465668,
-459.672607, -6.047450, -319.377808,
-459.690857, -6.045168, -318.289795,
-459.733826, -6.098748, -317.204376,
-459.866302, -6.163945, -316.126587,
-460.061859, -6.354894, -315.070129,
-460.284729, -6.588387, -314.031128,
-460.533112, -6.826213, -312.999054,
-460.823303, -7.095395, -311.840057,
-462.704620, -9.301330, -304.645416,
-462.954193, -9.692020, -303.546783,
-463.049988, -10.017150, -302.513519,
-463.025604, -10.351537, -301.479034,
-462.936340, -10.689318, -300.448883,
-462.818665, -11.044333, -299.424500,
-462.686890, -11.409551, -298.408417,
-462.388000, -12.191285, -296.252502,
-460.616119, -15.430405, -284.034149,
-460.460663, -15.766811, -283.004272,
-460.297577, -16.098799, -281.981476,
-460.138611, -16.023895, -280.905792,
-459.880035, -16.021536, -279.850311,
-459.524323, -16.066000, -278.793884,
-459.151947, -16.112444, -277.774414,
-458.760895, -15.948345, -276.768036,
-457.728149, -15.418857, -274.162994,
-457.121918, -15.183194, -272.663147,
-455.141998, -14.929026, -267.753723,
-454.605865, -14.961267, -266.809937,
-453.910492, -14.994783, -265.975586,
-453.106659, -15.028536, -265.243866,
-452.248810, -15.071724, -264.575989,
-451.363373, -15.070765, -263.944366,
-450.467194, -15.049448, -263.327393,
-449.339539, -15.027678, -262.566895,
-446.158661, -15.106158, -260.478607,
-445.146484, -15.217936, -260.096680,
-444.094391, -15.313764, -259.845978,
-443.059662, -15.693615, -259.832489,
-442.038452, -16.061672, -259.905914,
-440.926056, -16.011379, -259.961243,
-439.853027, -16.029181, -259.818878,
-438.834473, -16.076151, -259.442963,
-437.860443, -16.135080, -258.975220,
-436.944824, -15.842243, -258.482483,
-436.029755, -15.561083, -257.958588,
-435.103333, -15.389626, -257.408356,
-433.018707, -15.096863, -256.158447,
-423.253204, -15.007891, -250.244461,
-422.581299, -15.076889, -249.399033,
-422.162994, -15.134439, -248.398422,
-421.907043, -15.243899, -247.346481,
-421.727417, -15.378567, -246.282013,
-421.576630, -15.511925, -245.212921,
-421.436920, -15.814054, -244.166107,
-421.312561, -15.977121, -243.104950,
-421.161774, -16.151787, -241.633881,
-421.101837, -16.144278, -240.547592,
-421.054230, -16.138294, -239.460739,
-420.986694, -16.129854, -237.557938,
-420.237152, -15.986206, -212.018356,
-420.191437, -15.916931, -210.797974,
-420.120667, -15.789013, -207.812439,
-420.097992, -15.820995, -206.456985,
-419.913025, -16.017410, -199.259720,
-420.074188, -16.138962, -198.186157,
-420.394592, -15.806675, -197.200790,
-420.823639, -15.475427, -196.257751,
-421.315735, -15.246454, -195.308350,
-421.840698, -15.131503, -194.360291,
-422.374817, -15.078588, -193.413864,
-424.067291, -15.028349, -190.467560,
-427.695129, -14.944219, -184.241776,
-428.330750, -15.027770, -183.363968,
-429.060547, -15.124342, -182.563538,
-429.847046, -15.204210, -181.816025,
-430.657654, -15.276329, -181.094086,
-431.483185, -15.340816, -180.388275,
-432.919403, -15.584278, -179.168777,
-446.700073, -18.848972, -167.730667,
-447.838928, -18.971676, -166.769211,
-450.328156, -19.379137, -164.696960,
-451.060272, -19.534018, -163.909332,
-451.625610, -19.500000, -162.980560,
-452.083923, -19.517031, -161.994354,
-452.476959, -19.566160, -160.981140,
-452.841187, -19.611700, -159.956909,
-453.191650, -19.646599, -158.927551,
-454.367828, -19.964460, -155.331253,
-455.293671, -20.791029, -152.456436,
-455.619934, -20.976021, -151.448273,
-460.864044, -21.582912, -135.124496,
-461.198395, -21.523344, -134.089920,
-463.464020, -20.982677, -127.008972,
-463.628113, -20.996647, -125.935585,
-463.609283, -21.038952, -124.848961,
-463.521912, -21.146475, -123.767731,
-463.400543, -21.146563, -122.686722,
-463.201691, -21.188892, -121.067558,
-463.072876, -21.257940, -119.990120,
-462.932098, -21.293131, -118.911903,
-460.858124, -21.810720, -103.154648,
-460.394226, -21.855116, -102.181808,
-459.633484, -21.864172, -101.409859,
-458.751892, -21.805742, -100.775322,
-457.821533, -21.747103, -100.215164,
-456.871063, -21.669014, -99.690086,
-455.908997, -21.711084, -99.185425,
-452.652191, -21.466049, -97.507286,
-427.503632, -19.772459, -84.766029,
-426.533905, -19.798971, -84.273788,
-424.118073, -20.060156, -83.055641,
-423.148651, -19.991360, -82.567337
};


function onSpawn(npc)	
    npc:initNpcAi();
	npc:setPos(pathfind.first(path));
	onPath(npc);
end;

function onPath(npc)

	if(npc:atPoint(pathfind.get(path, 288))) then

		local col = GetNPCByID(17187489);

		col:showText(npc, ZOVRIACE_REPORT);

		-- small delay after path finish
		npc:wait(8000);
	end

	pathfind.patrol(npc, path);

end;

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
	player:showText(npc, ZOVRIACE_DIALOG);
	npc:wait();
end;

-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
	-- printf("CSID: %u",csid);
	-- printf("RESULT: %u",option);
end;

-----------------------------------
-- onEventFinish
-----------------------------------

function onEventFinish(player,csid,option)
	-- printf("CSID: %u",csid);
	-- printf("RESULT: %u",option);
end;

