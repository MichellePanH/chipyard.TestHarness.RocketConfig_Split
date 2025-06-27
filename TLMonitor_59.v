module TLMonitor_59( // @[:chipyard.TestHarness.RocketConfig.fir@229717.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@229718.4]
  input         reset, // @[:chipyard.TestHarness.RocketConfig.fir@229719.4]
  input         io_in_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@229720.4]
  input         io_in_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@229720.4]
  input  [2:0]  io_in_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@229720.4]
  input  [2:0]  io_in_a_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@229720.4]
  input  [3:0]  io_in_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@229720.4]
  input  [1:0]  io_in_a_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@229720.4]
  input  [31:0] io_in_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@229720.4]
  input  [7:0]  io_in_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@229720.4]
  input         io_in_a_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@229720.4]
  input         io_in_b_ready, // @[:chipyard.TestHarness.RocketConfig.fir@229720.4]
  input         io_in_b_valid, // @[:chipyard.TestHarness.RocketConfig.fir@229720.4]
  input  [2:0]  io_in_b_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@229720.4]
  input  [1:0]  io_in_b_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@229720.4]
  input  [3:0]  io_in_b_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@229720.4]
  input  [1:0]  io_in_b_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@229720.4]
  input  [31:0] io_in_b_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@229720.4]
  input  [7:0]  io_in_b_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@229720.4]
  input         io_in_b_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@229720.4]
  input         io_in_c_ready, // @[:chipyard.TestHarness.RocketConfig.fir@229720.4]
  input         io_in_c_valid, // @[:chipyard.TestHarness.RocketConfig.fir@229720.4]
  input  [2:0]  io_in_c_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@229720.4]
  input  [2:0]  io_in_c_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@229720.4]
  input  [3:0]  io_in_c_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@229720.4]
  input  [1:0]  io_in_c_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@229720.4]
  input  [31:0] io_in_c_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@229720.4]
  input         io_in_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@229720.4]
  input         io_in_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@229720.4]
  input  [2:0]  io_in_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@229720.4]
  input  [1:0]  io_in_d_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@229720.4]
  input  [3:0]  io_in_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@229720.4]
  input  [1:0]  io_in_d_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@229720.4]
  input  [2:0]  io_in_d_bits_sink, // @[:chipyard.TestHarness.RocketConfig.fir@229720.4]
  input         io_in_d_bits_denied, // @[:chipyard.TestHarness.RocketConfig.fir@229720.4]
  input         io_in_d_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@229720.4]
  input         io_in_e_ready, // @[:chipyard.TestHarness.RocketConfig.fir@229720.4]
  input         io_in_e_valid, // @[:chipyard.TestHarness.RocketConfig.fir@229720.4]
  input  [2:0]  io_in_e_bits_sink // @[:chipyard.TestHarness.RocketConfig.fir@229720.4]
);
  wire [31:0] plusarg_reader_out; // @[PlusArg.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232706.4]
  wire  _T_4; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@229731.6]
  wire  _T_5; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@229732.6]
  wire  _T_6; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@229733.6]
  wire  _T_8; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@229739.6]
  wire  _T_9; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@229740.6]
  wire [26:0] _T_11; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@229742.6]
  wire [11:0] _T_13; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@229744.6]
  wire [31:0] _GEN_71; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@229745.6]
  wire [31:0] _T_14; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@229745.6]
  wire  _T_15; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@229746.6]
  wire [3:0] _T_18; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@229749.6]
  wire [2:0] _T_20; // @[Misc.scala 201:81:chipyard.TestHarness.RocketConfig.fir@229751.6]
  wire  _T_21; // @[Misc.scala 205:21:chipyard.TestHarness.RocketConfig.fir@229752.6]
  wire  _T_24; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@229755.6]
  wire  _T_26; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@229757.6]
  wire  _T_27; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@229758.6]
  wire  _T_29; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@229760.6]
  wire  _T_30; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@229761.6]
  wire  _T_33; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@229764.6]
  wire  _T_34; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@229765.6]
  wire  _T_35; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@229766.6]
  wire  _T_36; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@229767.6]
  wire  _T_37; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@229768.6]
  wire  _T_38; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@229769.6]
  wire  _T_39; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@229770.6]
  wire  _T_40; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@229771.6]
  wire  _T_41; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@229772.6]
  wire  _T_42; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@229773.6]
  wire  _T_43; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@229774.6]
  wire  _T_44; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@229775.6]
  wire  _T_45; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@229776.6]
  wire  _T_48; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@229779.6]
  wire  _T_49; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@229780.6]
  wire  _T_50; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@229781.6]
  wire  _T_51; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@229782.6]
  wire  _T_52; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@229783.6]
  wire  _T_53; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@229784.6]
  wire  _T_54; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@229785.6]
  wire  _T_55; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@229786.6]
  wire  _T_56; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@229787.6]
  wire  _T_57; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@229788.6]
  wire  _T_58; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@229789.6]
  wire  _T_59; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@229790.6]
  wire  _T_60; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@229791.6]
  wire  _T_61; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@229792.6]
  wire  _T_62; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@229793.6]
  wire  _T_63; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@229794.6]
  wire  _T_64; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@229795.6]
  wire  _T_65; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@229796.6]
  wire  _T_66; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@229797.6]
  wire  _T_67; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@229798.6]
  wire  _T_68; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@229799.6]
  wire  _T_69; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@229800.6]
  wire  _T_70; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@229801.6]
  wire  _T_71; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@229802.6]
  wire  _T_72; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@229803.6]
  wire [7:0] _T_79; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@229810.6]
  wire [32:0] _T_83; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@229814.6]
  wire  _T_109; // @[Monitor.scala 79:25:chipyard.TestHarness.RocketConfig.fir@229844.6]
  wire [31:0] _T_111; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@229847.8]
  wire [32:0] _T_112; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@229848.8]
  wire [32:0] _T_114; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@229850.8]
  wire  _T_115; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@229851.8]
  wire [31:0] _T_116; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@229852.8]
  wire [32:0] _T_117; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@229853.8]
  wire [32:0] _T_119; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@229855.8]
  wire  _T_120; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@229856.8]
  wire [31:0] _T_121; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@229857.8]
  wire [32:0] _T_122; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@229858.8]
  wire [32:0] _T_124; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@229860.8]
  wire  _T_125; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@229861.8]
  wire [31:0] _T_126; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@229862.8]
  wire [32:0] _T_127; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@229863.8]
  wire [32:0] _T_129; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@229865.8]
  wire  _T_130; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@229866.8]
  wire [31:0] _T_131; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@229867.8]
  wire [32:0] _T_132; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@229868.8]
  wire [32:0] _T_134; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@229870.8]
  wire  _T_135; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@229871.8]
  wire [32:0] _T_139; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@229875.8]
  wire  _T_140; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@229876.8]
  wire [31:0] _T_141; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@229877.8]
  wire [32:0] _T_142; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@229878.8]
  wire [32:0] _T_144; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@229880.8]
  wire  _T_145; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@229881.8]
  wire  _T_146; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@229882.8]
  wire  _T_147; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@229883.8]
  wire  _T_148; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@229884.8]
  wire  _T_149; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@229885.8]
  wire  _T_150; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@229886.8]
  wire  _T_153; // @[Parameters.scala 92:48:chipyard.TestHarness.RocketConfig.fir@229889.8]
  wire [31:0] _T_155; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@229891.8]
  wire [32:0] _T_156; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@229892.8]
  wire [32:0] _T_158; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@229894.8]
  wire  _T_159; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@229895.8]
  wire  _T_160; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@229896.8]
  wire  _T_164; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@229900.8]
  wire  _T_165; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@229901.8]
  wire  _T_171; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@229915.8]
  wire  _T_178; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@229923.8]
  wire  _T_179; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@229924.8]
  wire  _T_181; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@229930.8]
  wire  _T_182; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@229931.8]
  wire  _T_185; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@229938.8]
  wire  _T_186; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@229939.8]
  wire  _T_188; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@229945.8]
  wire  _T_189; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@229946.8]
  wire  _T_190; // @[Bundles.scala 110:27:chipyard.TestHarness.RocketConfig.fir@229951.8]
  wire  _T_192; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@229953.8]
  wire  _T_193; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@229954.8]
  wire [7:0] _T_194; // @[Monitor.scala 86:18:chipyard.TestHarness.RocketConfig.fir@229959.8]
  wire  _T_195; // @[Monitor.scala 86:31:chipyard.TestHarness.RocketConfig.fir@229960.8]
  wire  _T_197; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@229962.8]
  wire  _T_198; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@229963.8]
  wire  _T_199; // @[Monitor.scala 87:18:chipyard.TestHarness.RocketConfig.fir@229968.8]
  wire  _T_201; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@229970.8]
  wire  _T_202; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@229971.8]
  wire  _T_203; // @[Monitor.scala 90:25:chipyard.TestHarness.RocketConfig.fir@229977.6]
  wire  _T_288; // @[Monitor.scala 97:31:chipyard.TestHarness.RocketConfig.fir@230092.8]
  wire  _T_290; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230094.8]
  wire  _T_291; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230095.8]
  wire  _T_301; // @[Monitor.scala 102:25:chipyard.TestHarness.RocketConfig.fir@230118.6]
  wire  _T_303; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@230121.8]
  wire  _T_311; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@230129.8]
  wire  _T_313; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@230131.8]
  wire  _T_351; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@230169.8]
  wire  _T_352; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@230170.8]
  wire  _T_353; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@230171.8]
  wire  _T_354; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@230172.8]
  wire  _T_355; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@230173.8]
  wire  _T_356; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@230174.8]
  wire  _T_357; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@230175.8]
  wire  _T_359; // @[Parameters.scala 553:30:chipyard.TestHarness.RocketConfig.fir@230177.8]
  wire  _T_361; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230179.8]
  wire  _T_362; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230180.8]
  wire  _T_369; // @[Monitor.scala 106:31:chipyard.TestHarness.RocketConfig.fir@230199.8]
  wire  _T_371; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230201.8]
  wire  _T_372; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230202.8]
  wire  _T_373; // @[Monitor.scala 107:30:chipyard.TestHarness.RocketConfig.fir@230207.8]
  wire  _T_375; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230209.8]
  wire  _T_376; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230210.8]
  wire  _T_381; // @[Monitor.scala 111:25:chipyard.TestHarness.RocketConfig.fir@230224.6]
  wire  _T_430; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@230274.8]
  wire  _T_431; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@230275.8]
  wire  _T_440; // @[Parameters.scala 553:30:chipyard.TestHarness.RocketConfig.fir@230284.8]
  wire  _T_443; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230287.8]
  wire  _T_444; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230288.8]
  wire  _T_459; // @[Monitor.scala 119:25:chipyard.TestHarness.RocketConfig.fir@230324.6]
  wire [7:0] _T_533; // @[Monitor.scala 124:33:chipyard.TestHarness.RocketConfig.fir@230415.8]
  wire [7:0] _T_534; // @[Monitor.scala 124:31:chipyard.TestHarness.RocketConfig.fir@230416.8]
  wire  _T_535; // @[Monitor.scala 124:40:chipyard.TestHarness.RocketConfig.fir@230417.8]
  wire  _T_537; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230419.8]
  wire  _T_538; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230420.8]
  wire  _T_539; // @[Monitor.scala 127:25:chipyard.TestHarness.RocketConfig.fir@230426.6]
  wire  _T_541; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@230429.8]
  wire  _T_584; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@230472.8]
  wire  _T_585; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@230473.8]
  wire  _T_596; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230484.8]
  wire  _T_597; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230485.8]
  wire  _T_604; // @[Bundles.scala 140:33:chipyard.TestHarness.RocketConfig.fir@230504.8]
  wire  _T_606; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230506.8]
  wire  _T_607; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230507.8]
  wire  _T_612; // @[Monitor.scala 135:25:chipyard.TestHarness.RocketConfig.fir@230521.6]
  wire  _T_677; // @[Bundles.scala 147:30:chipyard.TestHarness.RocketConfig.fir@230599.8]
  wire  _T_679; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230601.8]
  wire  _T_680; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230602.8]
  wire  _T_685; // @[Monitor.scala 143:25:chipyard.TestHarness.RocketConfig.fir@230616.6]
  wire  _T_742; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@230674.8]
  wire  _T_745; // @[Parameters.scala 553:30:chipyard.TestHarness.RocketConfig.fir@230677.8]
  wire  _T_747; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230679.8]
  wire  _T_748; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230680.8]
  wire  _T_755; // @[Bundles.scala 160:28:chipyard.TestHarness.RocketConfig.fir@230699.8]
  wire  _T_757; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230701.8]
  wire  _T_758; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230702.8]
  wire  _T_767; // @[Bundles.scala 44:24:chipyard.TestHarness.RocketConfig.fir@230726.6]
  wire  _T_769; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230728.6]
  wire  _T_770; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230729.6]
  wire  _T_771; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@230734.6]
  wire  _T_772; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@230735.6]
  wire  _T_773; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@230736.6]
  wire  _T_775; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@230742.6]
  wire  _T_776; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@230743.6]
  wire  _T_778; // @[Monitor.scala 307:25:chipyard.TestHarness.RocketConfig.fir@230745.6]
  wire  _T_780; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230748.8]
  wire  _T_781; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230749.8]
  wire  _T_782; // @[Monitor.scala 309:27:chipyard.TestHarness.RocketConfig.fir@230754.8]
  wire  _T_784; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230756.8]
  wire  _T_785; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230757.8]
  wire  _T_786; // @[Monitor.scala 310:28:chipyard.TestHarness.RocketConfig.fir@230762.8]
  wire  _T_788; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230764.8]
  wire  _T_789; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230765.8]
  wire  _T_790; // @[Monitor.scala 311:15:chipyard.TestHarness.RocketConfig.fir@230770.8]
  wire  _T_792; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230772.8]
  wire  _T_793; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230773.8]
  wire  _T_794; // @[Monitor.scala 312:15:chipyard.TestHarness.RocketConfig.fir@230778.8]
  wire  _T_796; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230780.8]
  wire  _T_797; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230781.8]
  wire  _T_798; // @[Monitor.scala 315:25:chipyard.TestHarness.RocketConfig.fir@230787.6]
  wire  _T_809; // @[Bundles.scala 104:26:chipyard.TestHarness.RocketConfig.fir@230811.8]
  wire  _T_811; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230813.8]
  wire  _T_812; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230814.8]
  wire  _T_813; // @[Monitor.scala 320:28:chipyard.TestHarness.RocketConfig.fir@230819.8]
  wire  _T_815; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230821.8]
  wire  _T_816; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230822.8]
  wire  _T_826; // @[Monitor.scala 325:25:chipyard.TestHarness.RocketConfig.fir@230845.6]
  wire  _T_846; // @[Monitor.scala 331:30:chipyard.TestHarness.RocketConfig.fir@230886.8]
  wire  _T_848; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230888.8]
  wire  _T_849; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230889.8]
  wire  _T_855; // @[Monitor.scala 335:25:chipyard.TestHarness.RocketConfig.fir@230904.6]
  wire  _T_872; // @[Monitor.scala 343:25:chipyard.TestHarness.RocketConfig.fir@230939.6]
  wire  _T_890; // @[Monitor.scala 351:25:chipyard.TestHarness.RocketConfig.fir@230975.6]
  wire  _T_907; // @[Bundles.scala 42:24:chipyard.TestHarness.RocketConfig.fir@231012.6]
  wire  _T_909; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231014.6]
  wire  _T_910; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231015.6]
  wire  _T_911; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@231020.6]
  wire [32:0] _T_914; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@231023.6]
  wire  _T_919; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@231028.6]
  wire  _T_927; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@231036.6]
  wire [31:0] _T_940; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@231053.6]
  wire [32:0] _T_941; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@231054.6]
  wire [32:0] _T_943; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@231056.6]
  wire  _T_944; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@231057.6]
  wire [31:0] _T_945; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@231058.6]
  wire [32:0] _T_946; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@231059.6]
  wire [32:0] _T_948; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@231061.6]
  wire  _T_949; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@231062.6]
  wire [31:0] _T_950; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@231063.6]
  wire [32:0] _T_951; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@231064.6]
  wire [32:0] _T_953; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@231066.6]
  wire  _T_954; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@231067.6]
  wire [31:0] _T_955; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@231068.6]
  wire [32:0] _T_956; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@231069.6]
  wire [32:0] _T_958; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@231071.6]
  wire  _T_959; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@231072.6]
  wire [31:0] _T_960; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@231073.6]
  wire [32:0] _T_961; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@231074.6]
  wire [32:0] _T_963; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@231076.6]
  wire  _T_964; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@231077.6]
  wire [32:0] _T_968; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@231081.6]
  wire  _T_969; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@231082.6]
  wire [31:0] _T_970; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@231083.6]
  wire [32:0] _T_971; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@231084.6]
  wire [32:0] _T_973; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@231086.6]
  wire  _T_974; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@231087.6]
  wire [31:0] _T_975; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@231088.6]
  wire [32:0] _T_976; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@231089.6]
  wire [32:0] _T_978; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@231091.6]
  wire  _T_979; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@231092.6]
  wire  _T_981; // @[Parameters.scala 535:64:chipyard.TestHarness.RocketConfig.fir@231103.6]
  wire  _T_982; // @[Parameters.scala 535:64:chipyard.TestHarness.RocketConfig.fir@231104.6]
  wire  _T_983; // @[Parameters.scala 535:64:chipyard.TestHarness.RocketConfig.fir@231105.6]
  wire  _T_984; // @[Parameters.scala 535:64:chipyard.TestHarness.RocketConfig.fir@231106.6]
  wire  _T_985; // @[Parameters.scala 535:64:chipyard.TestHarness.RocketConfig.fir@231107.6]
  wire  _T_986; // @[Parameters.scala 535:64:chipyard.TestHarness.RocketConfig.fir@231108.6]
  wire  _T_987; // @[Parameters.scala 535:64:chipyard.TestHarness.RocketConfig.fir@231109.6]
  wire [26:0] _T_989; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@231111.6]
  wire [11:0] _T_991; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@231113.6]
  wire [31:0] _GEN_72; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@231114.6]
  wire [31:0] _T_992; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@231114.6]
  wire  _T_993; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@231115.6]
  wire [3:0] _T_996; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@231118.6]
  wire [2:0] _T_998; // @[Misc.scala 201:81:chipyard.TestHarness.RocketConfig.fir@231120.6]
  wire  _T_999; // @[Misc.scala 205:21:chipyard.TestHarness.RocketConfig.fir@231121.6]
  wire  _T_1002; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@231124.6]
  wire  _T_1004; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@231126.6]
  wire  _T_1005; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@231127.6]
  wire  _T_1007; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@231129.6]
  wire  _T_1008; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@231130.6]
  wire  _T_1011; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@231133.6]
  wire  _T_1012; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@231134.6]
  wire  _T_1013; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@231135.6]
  wire  _T_1014; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@231136.6]
  wire  _T_1015; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@231137.6]
  wire  _T_1016; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@231138.6]
  wire  _T_1017; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@231139.6]
  wire  _T_1018; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@231140.6]
  wire  _T_1019; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@231141.6]
  wire  _T_1020; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@231142.6]
  wire  _T_1021; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@231143.6]
  wire  _T_1022; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@231144.6]
  wire  _T_1023; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@231145.6]
  wire  _T_1026; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@231148.6]
  wire  _T_1027; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@231149.6]
  wire  _T_1028; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@231150.6]
  wire  _T_1029; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@231151.6]
  wire  _T_1030; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@231152.6]
  wire  _T_1031; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@231153.6]
  wire  _T_1032; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@231154.6]
  wire  _T_1033; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@231155.6]
  wire  _T_1034; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@231156.6]
  wire  _T_1035; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@231157.6]
  wire  _T_1036; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@231158.6]
  wire  _T_1037; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@231159.6]
  wire  _T_1038; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@231160.6]
  wire  _T_1039; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@231161.6]
  wire  _T_1040; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@231162.6]
  wire  _T_1041; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@231163.6]
  wire  _T_1042; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@231164.6]
  wire  _T_1043; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@231165.6]
  wire  _T_1044; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@231166.6]
  wire  _T_1045; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@231167.6]
  wire  _T_1046; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@231168.6]
  wire  _T_1047; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@231169.6]
  wire  _T_1048; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@231170.6]
  wire  _T_1049; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@231171.6]
  wire  _T_1050; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@231172.6]
  wire [7:0] _T_1057; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@231179.6]
  wire [1:0] _T_1064; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@231190.6]
  wire [1:0] _GEN_73; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@231192.6]
  wire [1:0] _T_1066; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@231192.6]
  wire  _T_1068; // @[Monitor.scala 162:113:chipyard.TestHarness.RocketConfig.fir@231195.6]
  wire  _T_1069; // @[Monitor.scala 164:25:chipyard.TestHarness.RocketConfig.fir@231196.6]
  wire  _T_1074; // @[Parameters.scala 92:48:chipyard.TestHarness.RocketConfig.fir@231206.8]
  wire  _T_1075; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@231207.8]
  wire  _T_1082; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231215.8]
  wire  _T_1083; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231216.8]
  wire  _T_1085; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231222.8]
  wire  _T_1086; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231223.8]
  wire  _T_1088; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231229.8]
  wire  _T_1089; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231230.8]
  wire  _T_1091; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231236.8]
  wire  _T_1092; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231237.8]
  wire  _T_1093; // @[Bundles.scala 104:26:chipyard.TestHarness.RocketConfig.fir@231242.8]
  wire  _T_1095; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231244.8]
  wire  _T_1096; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231245.8]
  wire  _T_1097; // @[Monitor.scala 170:30:chipyard.TestHarness.RocketConfig.fir@231250.8]
  wire  _T_1099; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231252.8]
  wire  _T_1100; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231253.8]
  wire  _T_1101; // @[Monitor.scala 171:18:chipyard.TestHarness.RocketConfig.fir@231258.8]
  wire  _T_1103; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231260.8]
  wire  _T_1104; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231261.8]
  wire  _T_1105; // @[Monitor.scala 174:25:chipyard.TestHarness.RocketConfig.fir@231267.6]
  wire  _T_1108; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231271.8]
  wire  _T_1118; // @[Monitor.scala 179:31:chipyard.TestHarness.RocketConfig.fir@231297.8]
  wire  _T_1120; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231299.8]
  wire  _T_1121; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231300.8]
  wire  _T_1130; // @[Monitor.scala 184:25:chipyard.TestHarness.RocketConfig.fir@231322.6]
  wire  _T_1151; // @[Monitor.scala 193:25:chipyard.TestHarness.RocketConfig.fir@231369.6]
  wire [7:0] _T_1168; // @[Monitor.scala 199:33:chipyard.TestHarness.RocketConfig.fir@231407.8]
  wire [7:0] _T_1169; // @[Monitor.scala 199:31:chipyard.TestHarness.RocketConfig.fir@231408.8]
  wire  _T_1170; // @[Monitor.scala 199:40:chipyard.TestHarness.RocketConfig.fir@231409.8]
  wire  _T_1172; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231411.8]
  wire  _T_1173; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231412.8]
  wire  _T_1174; // @[Monitor.scala 202:25:chipyard.TestHarness.RocketConfig.fir@231418.6]
  wire  _T_1195; // @[Monitor.scala 211:25:chipyard.TestHarness.RocketConfig.fir@231465.6]
  wire  _T_1216; // @[Monitor.scala 220:25:chipyard.TestHarness.RocketConfig.fir@231512.6]
  wire  _T_1241; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@231569.6]
  wire  _T_1242; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@231570.6]
  wire  _T_1243; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@231571.6]
  wire  _T_1245; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@231577.6]
  wire  _T_1246; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@231578.6]
  wire [26:0] _T_1248; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@231580.6]
  wire [11:0] _T_1250; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@231582.6]
  wire [31:0] _GEN_74; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@231583.6]
  wire [31:0] _T_1251; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@231583.6]
  wire  _T_1252; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@231584.6]
  wire [31:0] _T_1253; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@231585.6]
  wire [32:0] _T_1254; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@231586.6]
  wire [32:0] _T_1256; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@231588.6]
  wire  _T_1257; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@231589.6]
  wire [31:0] _T_1258; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@231590.6]
  wire [32:0] _T_1259; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@231591.6]
  wire [32:0] _T_1261; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@231593.6]
  wire  _T_1262; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@231594.6]
  wire [31:0] _T_1263; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@231595.6]
  wire [32:0] _T_1264; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@231596.6]
  wire [32:0] _T_1266; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@231598.6]
  wire  _T_1267; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@231599.6]
  wire [31:0] _T_1268; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@231600.6]
  wire [32:0] _T_1269; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@231601.6]
  wire [32:0] _T_1271; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@231603.6]
  wire  _T_1272; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@231604.6]
  wire [31:0] _T_1273; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@231605.6]
  wire [32:0] _T_1274; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@231606.6]
  wire [32:0] _T_1276; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@231608.6]
  wire  _T_1277; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@231609.6]
  wire [32:0] _T_1279; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@231611.6]
  wire [32:0] _T_1281; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@231613.6]
  wire  _T_1282; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@231614.6]
  wire [31:0] _T_1283; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@231615.6]
  wire [32:0] _T_1284; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@231616.6]
  wire [32:0] _T_1286; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@231618.6]
  wire  _T_1287; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@231619.6]
  wire [31:0] _T_1288; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@231620.6]
  wire [32:0] _T_1289; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@231621.6]
  wire [32:0] _T_1291; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@231623.6]
  wire  _T_1292; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@231624.6]
  wire  _T_1294; // @[Parameters.scala 535:64:chipyard.TestHarness.RocketConfig.fir@231635.6]
  wire  _T_1295; // @[Parameters.scala 535:64:chipyard.TestHarness.RocketConfig.fir@231636.6]
  wire  _T_1296; // @[Parameters.scala 535:64:chipyard.TestHarness.RocketConfig.fir@231637.6]
  wire  _T_1297; // @[Parameters.scala 535:64:chipyard.TestHarness.RocketConfig.fir@231638.6]
  wire  _T_1298; // @[Parameters.scala 535:64:chipyard.TestHarness.RocketConfig.fir@231639.6]
  wire  _T_1299; // @[Parameters.scala 535:64:chipyard.TestHarness.RocketConfig.fir@231640.6]
  wire  _T_1300; // @[Parameters.scala 535:64:chipyard.TestHarness.RocketConfig.fir@231641.6]
  wire  _T_1330; // @[Monitor.scala 239:25:chipyard.TestHarness.RocketConfig.fir@231675.6]
  wire  _T_1332; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231678.8]
  wire  _T_1333; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231679.8]
  wire  _T_1335; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231685.8]
  wire  _T_1336; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231686.8]
  wire  _T_1337; // @[Monitor.scala 242:30:chipyard.TestHarness.RocketConfig.fir@231691.8]
  wire  _T_1339; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231693.8]
  wire  _T_1340; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231694.8]
  wire  _T_1342; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231700.8]
  wire  _T_1343; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231701.8]
  wire  _T_1344; // @[Bundles.scala 122:29:chipyard.TestHarness.RocketConfig.fir@231706.8]
  wire  _T_1346; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231708.8]
  wire  _T_1347; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231709.8]
  wire  _T_1352; // @[Monitor.scala 248:25:chipyard.TestHarness.RocketConfig.fir@231723.6]
  wire  _T_1370; // @[Monitor.scala 256:25:chipyard.TestHarness.RocketConfig.fir@231763.6]
  wire  _T_1414; // @[Parameters.scala 92:48:chipyard.TestHarness.RocketConfig.fir@231808.8]
  wire  _T_1421; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@231815.8]
  wire  _T_1425; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231819.8]
  wire  _T_1426; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231820.8]
  wire  _T_1432; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@231834.8]
  wire  _T_1439; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231842.8]
  wire  _T_1440; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231843.8]
  wire  _T_1451; // @[Bundles.scala 116:29:chipyard.TestHarness.RocketConfig.fir@231870.8]
  wire  _T_1453; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231872.8]
  wire  _T_1454; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231873.8]
  wire  _T_1459; // @[Monitor.scala 266:25:chipyard.TestHarness.RocketConfig.fir@231887.6]
  wire  _T_1544; // @[Monitor.scala 275:25:chipyard.TestHarness.RocketConfig.fir@232003.6]
  wire  _T_1554; // @[Monitor.scala 279:31:chipyard.TestHarness.RocketConfig.fir@232026.8]
  wire  _T_1556; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232028.8]
  wire  _T_1557; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232029.8]
  wire  _T_1562; // @[Monitor.scala 283:25:chipyard.TestHarness.RocketConfig.fir@232043.6]
  wire  _T_1576; // @[Monitor.scala 290:25:chipyard.TestHarness.RocketConfig.fir@232075.6]
  wire  _T_1598; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@232126.4]
  wire  _T_1605; // @[Edges.scala 93:28:chipyard.TestHarness.RocketConfig.fir@232133.4]
  reg [8:0] _T_1607; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@232135.4]
  reg [31:0] _RAND_0;
  wire [8:0] _T_1609; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@232137.4]
  wire  _T_1610; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@232138.4]
  reg [2:0] _T_1618; // @[Monitor.scala 381:22:chipyard.TestHarness.RocketConfig.fir@232149.4]
  reg [31:0] _RAND_1;
  reg [2:0] _T_1619; // @[Monitor.scala 382:22:chipyard.TestHarness.RocketConfig.fir@232150.4]
  reg [31:0] _RAND_2;
  reg [3:0] _T_1620; // @[Monitor.scala 383:22:chipyard.TestHarness.RocketConfig.fir@232151.4]
  reg [31:0] _RAND_3;
  reg [1:0] _T_1621; // @[Monitor.scala 384:22:chipyard.TestHarness.RocketConfig.fir@232152.4]
  reg [31:0] _RAND_4;
  reg [31:0] _T_1622; // @[Monitor.scala 385:22:chipyard.TestHarness.RocketConfig.fir@232153.4]
  reg [31:0] _RAND_5;
  wire  _T_1623; // @[Monitor.scala 386:22:chipyard.TestHarness.RocketConfig.fir@232154.4]
  wire  _T_1624; // @[Monitor.scala 386:19:chipyard.TestHarness.RocketConfig.fir@232155.4]
  wire  _T_1625; // @[Monitor.scala 387:32:chipyard.TestHarness.RocketConfig.fir@232157.6]
  wire  _T_1627; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232159.6]
  wire  _T_1628; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232160.6]
  wire  _T_1629; // @[Monitor.scala 388:32:chipyard.TestHarness.RocketConfig.fir@232165.6]
  wire  _T_1631; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232167.6]
  wire  _T_1632; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232168.6]
  wire  _T_1633; // @[Monitor.scala 389:32:chipyard.TestHarness.RocketConfig.fir@232173.6]
  wire  _T_1635; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232175.6]
  wire  _T_1636; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232176.6]
  wire  _T_1637; // @[Monitor.scala 390:32:chipyard.TestHarness.RocketConfig.fir@232181.6]
  wire  _T_1639; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232183.6]
  wire  _T_1640; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232184.6]
  wire  _T_1641; // @[Monitor.scala 391:32:chipyard.TestHarness.RocketConfig.fir@232189.6]
  wire  _T_1643; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232191.6]
  wire  _T_1644; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232192.6]
  wire  _T_1646; // @[Monitor.scala 393:20:chipyard.TestHarness.RocketConfig.fir@232199.4]
  wire  _T_1647; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@232207.4]
  wire [26:0] _T_1649; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@232209.4]
  wire [11:0] _T_1651; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@232211.4]
  reg [8:0] _T_1655; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@232215.4]
  reg [31:0] _RAND_6;
  wire [8:0] _T_1657; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@232217.4]
  wire  _T_1658; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@232218.4]
  reg [2:0] _T_1666; // @[Monitor.scala 532:22:chipyard.TestHarness.RocketConfig.fir@232229.4]
  reg [31:0] _RAND_7;
  reg [1:0] _T_1667; // @[Monitor.scala 533:22:chipyard.TestHarness.RocketConfig.fir@232230.4]
  reg [31:0] _RAND_8;
  reg [3:0] _T_1668; // @[Monitor.scala 534:22:chipyard.TestHarness.RocketConfig.fir@232231.4]
  reg [31:0] _RAND_9;
  reg [1:0] _T_1669; // @[Monitor.scala 535:22:chipyard.TestHarness.RocketConfig.fir@232232.4]
  reg [31:0] _RAND_10;
  reg [2:0] _T_1670; // @[Monitor.scala 536:22:chipyard.TestHarness.RocketConfig.fir@232233.4]
  reg [31:0] _RAND_11;
  reg  _T_1671; // @[Monitor.scala 537:22:chipyard.TestHarness.RocketConfig.fir@232234.4]
  reg [31:0] _RAND_12;
  wire  _T_1672; // @[Monitor.scala 538:22:chipyard.TestHarness.RocketConfig.fir@232235.4]
  wire  _T_1673; // @[Monitor.scala 538:19:chipyard.TestHarness.RocketConfig.fir@232236.4]
  wire  _T_1674; // @[Monitor.scala 539:29:chipyard.TestHarness.RocketConfig.fir@232238.6]
  wire  _T_1676; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@232240.6]
  wire  _T_1677; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@232241.6]
  wire  _T_1678; // @[Monitor.scala 540:29:chipyard.TestHarness.RocketConfig.fir@232246.6]
  wire  _T_1680; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@232248.6]
  wire  _T_1681; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@232249.6]
  wire  _T_1682; // @[Monitor.scala 541:29:chipyard.TestHarness.RocketConfig.fir@232254.6]
  wire  _T_1684; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@232256.6]
  wire  _T_1685; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@232257.6]
  wire  _T_1686; // @[Monitor.scala 542:29:chipyard.TestHarness.RocketConfig.fir@232262.6]
  wire  _T_1688; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@232264.6]
  wire  _T_1689; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@232265.6]
  wire  _T_1690; // @[Monitor.scala 543:29:chipyard.TestHarness.RocketConfig.fir@232270.6]
  wire  _T_1692; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@232272.6]
  wire  _T_1693; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@232273.6]
  wire  _T_1694; // @[Monitor.scala 544:29:chipyard.TestHarness.RocketConfig.fir@232278.6]
  wire  _T_1696; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@232280.6]
  wire  _T_1697; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@232281.6]
  wire  _T_1699; // @[Monitor.scala 546:20:chipyard.TestHarness.RocketConfig.fir@232288.4]
  wire  _T_1700; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@232297.4]
  reg [8:0] _T_1709; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@232306.4]
  reg [31:0] _RAND_13;
  wire [8:0] _T_1711; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@232308.4]
  wire  _T_1712; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@232309.4]
  reg [2:0] _T_1720; // @[Monitor.scala 404:22:chipyard.TestHarness.RocketConfig.fir@232320.4]
  reg [31:0] _RAND_14;
  reg [1:0] _T_1721; // @[Monitor.scala 405:22:chipyard.TestHarness.RocketConfig.fir@232321.4]
  reg [31:0] _RAND_15;
  reg [3:0] _T_1722; // @[Monitor.scala 406:22:chipyard.TestHarness.RocketConfig.fir@232322.4]
  reg [31:0] _RAND_16;
  reg [1:0] _T_1723; // @[Monitor.scala 407:22:chipyard.TestHarness.RocketConfig.fir@232323.4]
  reg [31:0] _RAND_17;
  reg [31:0] _T_1724; // @[Monitor.scala 408:22:chipyard.TestHarness.RocketConfig.fir@232324.4]
  reg [31:0] _RAND_18;
  wire  _T_1725; // @[Monitor.scala 409:22:chipyard.TestHarness.RocketConfig.fir@232325.4]
  wire  _T_1726; // @[Monitor.scala 409:19:chipyard.TestHarness.RocketConfig.fir@232326.4]
  wire  _T_1727; // @[Monitor.scala 410:32:chipyard.TestHarness.RocketConfig.fir@232328.6]
  wire  _T_1729; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232330.6]
  wire  _T_1730; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232331.6]
  wire  _T_1731; // @[Monitor.scala 411:32:chipyard.TestHarness.RocketConfig.fir@232336.6]
  wire  _T_1733; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232338.6]
  wire  _T_1734; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232339.6]
  wire  _T_1735; // @[Monitor.scala 412:32:chipyard.TestHarness.RocketConfig.fir@232344.6]
  wire  _T_1737; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232346.6]
  wire  _T_1738; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232347.6]
  wire  _T_1739; // @[Monitor.scala 413:32:chipyard.TestHarness.RocketConfig.fir@232352.6]
  wire  _T_1741; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232354.6]
  wire  _T_1742; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232355.6]
  wire  _T_1743; // @[Monitor.scala 414:32:chipyard.TestHarness.RocketConfig.fir@232360.6]
  wire  _T_1745; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232362.6]
  wire  _T_1746; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232363.6]
  wire  _T_1748; // @[Monitor.scala 416:20:chipyard.TestHarness.RocketConfig.fir@232370.4]
  wire  _T_1749; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@232378.4]
  reg [8:0] _T_1757; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@232386.4]
  reg [31:0] _RAND_19;
  wire [8:0] _T_1759; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@232388.4]
  wire  _T_1760; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@232389.4]
  reg [2:0] _T_1768; // @[Monitor.scala 509:22:chipyard.TestHarness.RocketConfig.fir@232400.4]
  reg [31:0] _RAND_20;
  reg [2:0] _T_1769; // @[Monitor.scala 510:22:chipyard.TestHarness.RocketConfig.fir@232401.4]
  reg [31:0] _RAND_21;
  reg [3:0] _T_1770; // @[Monitor.scala 511:22:chipyard.TestHarness.RocketConfig.fir@232402.4]
  reg [31:0] _RAND_22;
  reg [1:0] _T_1771; // @[Monitor.scala 512:22:chipyard.TestHarness.RocketConfig.fir@232403.4]
  reg [31:0] _RAND_23;
  reg [31:0] _T_1772; // @[Monitor.scala 513:22:chipyard.TestHarness.RocketConfig.fir@232404.4]
  reg [31:0] _RAND_24;
  wire  _T_1773; // @[Monitor.scala 514:22:chipyard.TestHarness.RocketConfig.fir@232405.4]
  wire  _T_1774; // @[Monitor.scala 514:19:chipyard.TestHarness.RocketConfig.fir@232406.4]
  wire  _T_1775; // @[Monitor.scala 515:32:chipyard.TestHarness.RocketConfig.fir@232408.6]
  wire  _T_1777; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232410.6]
  wire  _T_1778; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232411.6]
  wire  _T_1779; // @[Monitor.scala 516:32:chipyard.TestHarness.RocketConfig.fir@232416.6]
  wire  _T_1781; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232418.6]
  wire  _T_1782; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232419.6]
  wire  _T_1783; // @[Monitor.scala 517:32:chipyard.TestHarness.RocketConfig.fir@232424.6]
  wire  _T_1785; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232426.6]
  wire  _T_1786; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232427.6]
  wire  _T_1787; // @[Monitor.scala 518:32:chipyard.TestHarness.RocketConfig.fir@232432.6]
  wire  _T_1789; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232434.6]
  wire  _T_1790; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232435.6]
  wire  _T_1791; // @[Monitor.scala 519:32:chipyard.TestHarness.RocketConfig.fir@232440.6]
  wire  _T_1793; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232442.6]
  wire  _T_1794; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232443.6]
  wire  _T_1796; // @[Monitor.scala 521:20:chipyard.TestHarness.RocketConfig.fir@232450.4]
  reg [2:0] inflight; // @[Monitor.scala 608:27:chipyard.TestHarness.RocketConfig.fir@232458.4]
  reg [31:0] _RAND_25;
  reg [11:0] inflight_opcodes; // @[Monitor.scala 610:35:chipyard.TestHarness.RocketConfig.fir@232459.4]
  reg [31:0] _RAND_26;
  reg [23:0] inflight_sizes; // @[Monitor.scala 612:33:chipyard.TestHarness.RocketConfig.fir@232460.4]
  reg [31:0] _RAND_27;
  reg [8:0] _T_1806; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@232470.4]
  reg [31:0] _RAND_28;
  wire [8:0] _T_1808; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@232472.4]
  wire  a_first; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@232473.4]
  reg [8:0] _T_1824; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@232492.4]
  reg [31:0] _RAND_29;
  wire [8:0] _T_1826; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@232494.4]
  wire  d_first; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@232495.4]
  wire [3:0] _GEN_75; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@232514.4]
  wire [4:0] _T_1834; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@232514.4]
  wire [11:0] _T_1835; // @[Monitor.scala 629:44:chipyard.TestHarness.RocketConfig.fir@232515.4]
  wire [15:0] _T_1839; // @[Monitor.scala 606:57:chipyard.TestHarness.RocketConfig.fir@232519.4]
  wire [15:0] _GEN_76; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@232520.4]
  wire [15:0] _T_1840; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@232520.4]
  wire [15:0] _T_1841; // @[Monitor.scala 629:152:chipyard.TestHarness.RocketConfig.fir@232521.4]
  wire [4:0] _T_1842; // @[Monitor.scala 633:65:chipyard.TestHarness.RocketConfig.fir@232525.4]
  wire [23:0] _T_1843; // @[Monitor.scala 633:40:chipyard.TestHarness.RocketConfig.fir@232526.4]
  wire [15:0] _T_1847; // @[Monitor.scala 606:57:chipyard.TestHarness.RocketConfig.fir@232530.4]
  wire [23:0] _GEN_78; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@232531.4]
  wire [23:0] _T_1848; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@232531.4]
  wire [23:0] _T_1849; // @[Monitor.scala 633:144:chipyard.TestHarness.RocketConfig.fir@232532.4]
  wire  _T_1853; // @[Monitor.scala 643:27:chipyard.TestHarness.RocketConfig.fir@232557.4]
  wire [3:0] _T_1855; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@232560.6]
  wire [3:0] _T_1856; // @[Monitor.scala 645:53:chipyard.TestHarness.RocketConfig.fir@232562.6]
  wire [3:0] _T_1857; // @[Monitor.scala 645:61:chipyard.TestHarness.RocketConfig.fir@232563.6]
  wire [4:0] _T_1858; // @[Monitor.scala 646:49:chipyard.TestHarness.RocketConfig.fir@232565.6]
  wire [4:0] _T_1859; // @[Monitor.scala 646:57:chipyard.TestHarness.RocketConfig.fir@232566.6]
  wire [3:0] _GEN_80; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@232568.6]
  wire [4:0] _T_1860; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@232568.6]
  wire [3:0] a_opcodes_set_interm; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@232559.4]
  wire [34:0] _GEN_81; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@232569.6]
  wire [34:0] _T_1861; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@232569.6]
  wire [4:0] _T_1862; // @[Monitor.scala 648:68:chipyard.TestHarness.RocketConfig.fir@232571.6]
  wire [4:0] a_sizes_set_interm; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@232559.4]
  wire [35:0] _GEN_82; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@232572.6]
  wire [35:0] _T_1863; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@232572.6]
  wire [2:0] _T_1864; // @[Monitor.scala 649:26:chipyard.TestHarness.RocketConfig.fir@232574.6]
  wire  _T_1866; // @[Monitor.scala 649:17:chipyard.TestHarness.RocketConfig.fir@232576.6]
  wire  _T_1868; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232578.6]
  wire  _T_1869; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232579.6]
  wire [3:0] _GEN_27; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@232559.4]
  wire [34:0] _GEN_30; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@232559.4]
  wire [35:0] _GEN_31; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@232559.4]
  wire  _T_1872; // @[Monitor.scala 660:27:chipyard.TestHarness.RocketConfig.fir@232593.4]
  wire  _T_1874; // @[Monitor.scala 660:75:chipyard.TestHarness.RocketConfig.fir@232595.4]
  wire  _T_1875; // @[Monitor.scala 660:72:chipyard.TestHarness.RocketConfig.fir@232596.4]
  wire [3:0] _T_1876; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@232598.6]
  wire [46:0] _GEN_84; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@232605.6]
  wire [46:0] _T_1882; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@232605.6]
  wire [46:0] _GEN_85; // @[Monitor.scala 663:72:chipyard.TestHarness.RocketConfig.fir@232612.6]
  wire [46:0] _T_1888; // @[Monitor.scala 663:72:chipyard.TestHarness.RocketConfig.fir@232612.6]
  wire [3:0] _GEN_32; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@232597.4]
  wire [46:0] _GEN_33; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@232597.4]
  wire [46:0] _GEN_34; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@232597.4]
  wire  _T_1889; // @[Monitor.scala 665:26:chipyard.TestHarness.RocketConfig.fir@232615.4]
  wire  _T_1892; // @[Monitor.scala 665:71:chipyard.TestHarness.RocketConfig.fir@232618.4]
  wire [2:0] _T_1893; // @[Monitor.scala 666:25:chipyard.TestHarness.RocketConfig.fir@232620.6]
  wire  _T_1895; // @[Monitor.scala 666:93:chipyard.TestHarness.RocketConfig.fir@232622.6]
  wire  _T_1896; // @[Monitor.scala 666:68:chipyard.TestHarness.RocketConfig.fir@232623.6]
  wire  _T_1897; // @[Monitor.scala 666:142:chipyard.TestHarness.RocketConfig.fir@232624.6]
  wire  _T_1898; // @[Monitor.scala 666:119:chipyard.TestHarness.RocketConfig.fir@232625.6]
  wire  _T_1899; // @[Monitor.scala 666:166:chipyard.TestHarness.RocketConfig.fir@232626.6]
  wire  _T_1900; // @[Monitor.scala 666:49:chipyard.TestHarness.RocketConfig.fir@232627.6]
  wire  _T_1902; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@232629.6]
  wire  _T_1903; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@232630.6]
  wire [3:0] a_opcode_lookup; // @[:chipyard.TestHarness.RocketConfig.fir@232512.4 :chipyard.TestHarness.RocketConfig.fir@232513.4 Monitor.scala 629:21:chipyard.TestHarness.RocketConfig.fir@232522.4]
  wire [2:0] _GEN_37; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@232636.6]
  wire [2:0] _GEN_38; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@232636.6]
  wire [2:0] _GEN_39; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@232636.6]
  wire [2:0] _GEN_40; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@232636.6]
  wire [2:0] _GEN_41; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@232636.6]
  wire [2:0] _GEN_42; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@232636.6]
  wire  _T_1905; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@232636.6]
  wire [2:0] _GEN_49; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@232638.6]
  wire [2:0] _GEN_50; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@232638.6]
  wire  _T_1907; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@232638.6]
  wire  _T_1908; // @[Monitor.scala 667:71:chipyard.TestHarness.RocketConfig.fir@232639.6]
  wire [2:0] _GEN_53; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@232640.6]
  wire [2:0] _GEN_54; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@232640.6]
  wire [2:0] _GEN_55; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@232640.6]
  wire [2:0] _GEN_56; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@232640.6]
  wire [2:0] _GEN_57; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@232640.6]
  wire [2:0] _GEN_58; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@232640.6]
  wire  _T_1909; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@232640.6]
  wire [2:0] _GEN_65; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@232641.6]
  wire [2:0] _GEN_66; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@232641.6]
  wire  _T_1910; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@232641.6]
  wire  _T_1911; // @[Monitor.scala 668:99:chipyard.TestHarness.RocketConfig.fir@232642.6]
  wire  _T_1912; // @[Monitor.scala 668:34:chipyard.TestHarness.RocketConfig.fir@232643.6]
  wire  _T_1913; // @[Monitor.scala 668:15:chipyard.TestHarness.RocketConfig.fir@232644.6]
  wire  _T_1915; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@232646.6]
  wire  _T_1916; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@232647.6]
  wire [7:0] a_size_lookup; // @[:chipyard.TestHarness.RocketConfig.fir@232523.4 :chipyard.TestHarness.RocketConfig.fir@232524.4 Monitor.scala 633:19:chipyard.TestHarness.RocketConfig.fir@232533.4]
  wire [7:0] _GEN_86; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@232652.6]
  wire  _T_1917; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@232652.6]
  wire  _T_1919; // @[Monitor.scala 670:72:chipyard.TestHarness.RocketConfig.fir@232654.6]
  wire  _T_1920; // @[Monitor.scala 670:53:chipyard.TestHarness.RocketConfig.fir@232655.6]
  wire  _T_1922; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@232657.6]
  wire  _T_1923; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@232658.6]
  wire  _T_1925; // @[Monitor.scala 672:36:chipyard.TestHarness.RocketConfig.fir@232665.4]
  wire  _T_1926; // @[Monitor.scala 672:47:chipyard.TestHarness.RocketConfig.fir@232666.4]
  wire  _T_1928; // @[Monitor.scala 672:65:chipyard.TestHarness.RocketConfig.fir@232668.4]
  wire  _T_1930; // @[Monitor.scala 672:116:chipyard.TestHarness.RocketConfig.fir@232670.4]
  wire  _T_1931; // @[Monitor.scala 673:15:chipyard.TestHarness.RocketConfig.fir@232672.6]
  wire  _T_1932; // @[Monitor.scala 673:32:chipyard.TestHarness.RocketConfig.fir@232673.6]
  wire  _T_1934; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@232675.6]
  wire  _T_1935; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@232676.6]
  wire [2:0] a_set; // @[:chipyard.TestHarness.RocketConfig.fir@232506.4 :chipyard.TestHarness.RocketConfig.fir@232507.4 Monitor.scala 644:13:chipyard.TestHarness.RocketConfig.fir@232561.6]
  wire [2:0] d_clr; // @[:chipyard.TestHarness.RocketConfig.fir@232585.4 :chipyard.TestHarness.RocketConfig.fir@232586.4 Monitor.scala 661:13:chipyard.TestHarness.RocketConfig.fir@232599.6]
  wire  _T_1936; // @[Monitor.scala 677:20:chipyard.TestHarness.RocketConfig.fir@232682.4]
  wire  _T_1937; // @[Monitor.scala 677:40:chipyard.TestHarness.RocketConfig.fir@232683.4]
  wire  _T_1938; // @[Monitor.scala 677:33:chipyard.TestHarness.RocketConfig.fir@232684.4]
  wire  _T_1939; // @[Monitor.scala 677:30:chipyard.TestHarness.RocketConfig.fir@232685.4]
  wire  _T_1941; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@232687.4]
  wire  _T_1942; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@232688.4]
  wire [2:0] _T_1943; // @[Monitor.scala 680:27:chipyard.TestHarness.RocketConfig.fir@232693.4]
  wire [2:0] _T_1944; // @[Monitor.scala 680:38:chipyard.TestHarness.RocketConfig.fir@232694.4]
  wire [2:0] _T_1945; // @[Monitor.scala 680:36:chipyard.TestHarness.RocketConfig.fir@232695.4]
  wire [11:0] a_opcodes_set; // @[:chipyard.TestHarness.RocketConfig.fir@232508.4 :chipyard.TestHarness.RocketConfig.fir@232509.4 Monitor.scala 647:21:chipyard.TestHarness.RocketConfig.fir@232570.6]
  wire [11:0] _T_1946; // @[Monitor.scala 681:43:chipyard.TestHarness.RocketConfig.fir@232697.4]
  wire [11:0] d_opcodes_clr; // @[:chipyard.TestHarness.RocketConfig.fir@232587.4 :chipyard.TestHarness.RocketConfig.fir@232588.4 Monitor.scala 662:21:chipyard.TestHarness.RocketConfig.fir@232606.6]
  wire [11:0] _T_1947; // @[Monitor.scala 681:62:chipyard.TestHarness.RocketConfig.fir@232698.4]
  wire [11:0] _T_1948; // @[Monitor.scala 681:60:chipyard.TestHarness.RocketConfig.fir@232699.4]
  wire [23:0] a_sizes_set; // @[:chipyard.TestHarness.RocketConfig.fir@232510.4 :chipyard.TestHarness.RocketConfig.fir@232511.4 Monitor.scala 648:19:chipyard.TestHarness.RocketConfig.fir@232573.6]
  wire [23:0] _T_1949; // @[Monitor.scala 682:39:chipyard.TestHarness.RocketConfig.fir@232701.4]
  wire [23:0] d_sizes_clr; // @[:chipyard.TestHarness.RocketConfig.fir@232589.4 :chipyard.TestHarness.RocketConfig.fir@232590.4 Monitor.scala 663:19:chipyard.TestHarness.RocketConfig.fir@232613.6]
  wire [23:0] _T_1950; // @[Monitor.scala 682:56:chipyard.TestHarness.RocketConfig.fir@232702.4]
  wire [23:0] _T_1951; // @[Monitor.scala 682:54:chipyard.TestHarness.RocketConfig.fir@232703.4]
  reg [31:0] _T_1952; // @[Monitor.scala 684:27:chipyard.TestHarness.RocketConfig.fir@232705.4]
  reg [31:0] _RAND_30;
  wire  _T_1953; // @[Monitor.scala 687:26:chipyard.TestHarness.RocketConfig.fir@232708.4]
  wire  _T_1954; // @[Monitor.scala 687:16:chipyard.TestHarness.RocketConfig.fir@232709.4]
  wire  _T_1955; // @[Monitor.scala 687:39:chipyard.TestHarness.RocketConfig.fir@232710.4]
  wire  _T_1956; // @[Monitor.scala 687:30:chipyard.TestHarness.RocketConfig.fir@232711.4]
  wire  _T_1957; // @[Monitor.scala 687:59:chipyard.TestHarness.RocketConfig.fir@232712.4]
  wire  _T_1958; // @[Monitor.scala 687:47:chipyard.TestHarness.RocketConfig.fir@232713.4]
  wire  _T_1960; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232715.4]
  wire  _T_1961; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232716.4]
  wire [31:0] _T_1963; // @[Monitor.scala 689:26:chipyard.TestHarness.RocketConfig.fir@232722.4]
  wire  _T_1966; // @[Monitor.scala 690:27:chipyard.TestHarness.RocketConfig.fir@232726.4]
  reg [7:0] _T_1967; // @[Monitor.scala 694:27:chipyard.TestHarness.RocketConfig.fir@232730.4]
  reg [31:0] _RAND_31;
  reg [8:0] _T_1976; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@232739.4]
  reg [31:0] _RAND_32;
  wire [8:0] _T_1978; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@232741.4]
  wire  _T_1979; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@232742.4]
  wire  _T_1989; // @[Monitor.scala 700:27:chipyard.TestHarness.RocketConfig.fir@232756.4]
  wire  _T_1992; // @[Edges.scala 72:43:chipyard.TestHarness.RocketConfig.fir@232759.4]
  wire  _T_1993; // @[Edges.scala 72:40:chipyard.TestHarness.RocketConfig.fir@232760.4]
  wire  _T_1994; // @[Monitor.scala 700:38:chipyard.TestHarness.RocketConfig.fir@232761.4]
  wire [7:0] _T_1995; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@232763.6]
  wire [7:0] _T_1996; // @[Monitor.scala 702:23:chipyard.TestHarness.RocketConfig.fir@232765.6]
  wire  _T_1998; // @[Monitor.scala 702:14:chipyard.TestHarness.RocketConfig.fir@232767.6]
  wire  _T_2000; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@232769.6]
  wire  _T_2001; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@232770.6]
  wire [7:0] _GEN_69; // @[Monitor.scala 700:72:chipyard.TestHarness.RocketConfig.fir@232762.4]
  wire  _T_2003; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@232778.4]
  wire [7:0] _T_2006; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@232782.6]
  wire [7:0] _T_2007; // @[Monitor.scala 708:24:chipyard.TestHarness.RocketConfig.fir@232784.6]
  wire [7:0] _T_2008; // @[Monitor.scala 708:35:chipyard.TestHarness.RocketConfig.fir@232785.6]
  wire  _T_2011; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232788.6]
  wire  _T_2012; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232789.6]
  wire [7:0] _GEN_70; // @[Monitor.scala 706:73:chipyard.TestHarness.RocketConfig.fir@232781.4]
  wire [7:0] _T_2013; // @[Monitor.scala 713:27:chipyard.TestHarness.RocketConfig.fir@232795.4]
  wire [7:0] _T_2014; // @[Monitor.scala 713:38:chipyard.TestHarness.RocketConfig.fir@232796.4]
  wire [7:0] _T_2015; // @[Monitor.scala 713:36:chipyard.TestHarness.RocketConfig.fir@232797.4]
  wire  _GEN_87; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@229903.10]
  wire  _GEN_103; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230036.10]
  wire  _GEN_121; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230182.10]
  wire  _GEN_133; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230290.10]
  wire  _GEN_143; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230390.10]
  wire  _GEN_153; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230487.10]
  wire  _GEN_163; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230582.10]
  wire  _GEN_173; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230682.10]
  wire  _GEN_185; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230751.10]
  wire  _GEN_195; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230793.10]
  wire  _GEN_205; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230851.10]
  wire  _GEN_215; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230910.10]
  wire  _GEN_221; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230945.10]
  wire  _GEN_227; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230981.10]
  wire  _GEN_233; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231218.10]
  wire  _GEN_247; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231273.10]
  wire  _GEN_261; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231328.10]
  wire  _GEN_273; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231375.10]
  wire  _GEN_285; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231424.10]
  wire  _GEN_295; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231471.10]
  wire  _GEN_305; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231518.10]
  wire  _GEN_317; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231681.10]
  wire  _GEN_327; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231729.10]
  wire  _GEN_337; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231822.10]
  wire  _GEN_349; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231946.10]
  wire  _GEN_361; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232009.10]
  wire  _GEN_369; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232049.10]
  wire  _GEN_377; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232081.10]
  plusarg_reader #(.FORMAT("tilelink_timeout=%d"), .DEFAULT(0), .WIDTH(32)) plusarg_reader ( // @[PlusArg.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232706.4]
    .out(plusarg_reader_out)
  );
  assign _T_4 = io_in_a_bits_source == 2'h0; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@229731.6]
  assign _T_5 = io_in_a_bits_source == 2'h1; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@229732.6]
  assign _T_6 = io_in_a_bits_source == 2'h2; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@229733.6]
  assign _T_8 = _T_4 | _T_5; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@229739.6]
  assign _T_9 = _T_8 | _T_6; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@229740.6]
  assign _T_11 = 27'hfff << io_in_a_bits_size; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@229742.6]
  assign _T_13 = ~_T_11[11:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@229744.6]
  assign _GEN_71 = {{20'd0}, _T_13}; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@229745.6]
  assign _T_14 = io_in_a_bits_address & _GEN_71; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@229745.6]
  assign _T_15 = _T_14 == 32'h0; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@229746.6]
  assign _T_18 = 4'h1 << io_in_a_bits_size[1:0]; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@229749.6]
  assign _T_20 = _T_18[2:0] | 3'h1; // @[Misc.scala 201:81:chipyard.TestHarness.RocketConfig.fir@229751.6]
  assign _T_21 = io_in_a_bits_size >= 4'h3; // @[Misc.scala 205:21:chipyard.TestHarness.RocketConfig.fir@229752.6]
  assign _T_24 = ~io_in_a_bits_address[2]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@229755.6]
  assign _T_26 = _T_20[2] & _T_24; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@229757.6]
  assign _T_27 = _T_21 | _T_26; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@229758.6]
  assign _T_29 = _T_20[2] & io_in_a_bits_address[2]; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@229760.6]
  assign _T_30 = _T_21 | _T_29; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@229761.6]
  assign _T_33 = ~io_in_a_bits_address[1]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@229764.6]
  assign _T_34 = _T_24 & _T_33; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@229765.6]
  assign _T_35 = _T_20[1] & _T_34; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@229766.6]
  assign _T_36 = _T_27 | _T_35; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@229767.6]
  assign _T_37 = _T_24 & io_in_a_bits_address[1]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@229768.6]
  assign _T_38 = _T_20[1] & _T_37; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@229769.6]
  assign _T_39 = _T_27 | _T_38; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@229770.6]
  assign _T_40 = io_in_a_bits_address[2] & _T_33; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@229771.6]
  assign _T_41 = _T_20[1] & _T_40; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@229772.6]
  assign _T_42 = _T_30 | _T_41; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@229773.6]
  assign _T_43 = io_in_a_bits_address[2] & io_in_a_bits_address[1]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@229774.6]
  assign _T_44 = _T_20[1] & _T_43; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@229775.6]
  assign _T_45 = _T_30 | _T_44; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@229776.6]
  assign _T_48 = ~io_in_a_bits_address[0]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@229779.6]
  assign _T_49 = _T_34 & _T_48; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@229780.6]
  assign _T_50 = _T_20[0] & _T_49; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@229781.6]
  assign _T_51 = _T_36 | _T_50; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@229782.6]
  assign _T_52 = _T_34 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@229783.6]
  assign _T_53 = _T_20[0] & _T_52; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@229784.6]
  assign _T_54 = _T_36 | _T_53; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@229785.6]
  assign _T_55 = _T_37 & _T_48; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@229786.6]
  assign _T_56 = _T_20[0] & _T_55; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@229787.6]
  assign _T_57 = _T_39 | _T_56; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@229788.6]
  assign _T_58 = _T_37 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@229789.6]
  assign _T_59 = _T_20[0] & _T_58; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@229790.6]
  assign _T_60 = _T_39 | _T_59; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@229791.6]
  assign _T_61 = _T_40 & _T_48; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@229792.6]
  assign _T_62 = _T_20[0] & _T_61; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@229793.6]
  assign _T_63 = _T_42 | _T_62; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@229794.6]
  assign _T_64 = _T_40 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@229795.6]
  assign _T_65 = _T_20[0] & _T_64; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@229796.6]
  assign _T_66 = _T_42 | _T_65; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@229797.6]
  assign _T_67 = _T_43 & _T_48; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@229798.6]
  assign _T_68 = _T_20[0] & _T_67; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@229799.6]
  assign _T_69 = _T_45 | _T_68; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@229800.6]
  assign _T_70 = _T_43 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@229801.6]
  assign _T_71 = _T_20[0] & _T_70; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@229802.6]
  assign _T_72 = _T_45 | _T_71; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@229803.6]
  assign _T_79 = {_T_72,_T_69,_T_66,_T_63,_T_60,_T_57,_T_54,_T_51}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@229810.6]
  assign _T_83 = {1'b0,$signed(io_in_a_bits_address)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@229814.6]
  assign _T_109 = io_in_a_bits_opcode == 3'h6; // @[Monitor.scala 79:25:chipyard.TestHarness.RocketConfig.fir@229844.6]
  assign _T_111 = io_in_a_bits_address ^ 32'h3000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@229847.8]
  assign _T_112 = {1'b0,$signed(_T_111)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@229848.8]
  assign _T_114 = $signed(_T_112) & -33'sh1000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@229850.8]
  assign _T_115 = $signed(_T_114) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@229851.8]
  assign _T_116 = io_in_a_bits_address ^ 32'h2010000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@229852.8]
  assign _T_117 = {1'b0,$signed(_T_116)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@229853.8]
  assign _T_119 = $signed(_T_117) & -33'sh1000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@229855.8]
  assign _T_120 = $signed(_T_119) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@229856.8]
  assign _T_121 = io_in_a_bits_address ^ 32'h54000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@229857.8]
  assign _T_122 = {1'b0,$signed(_T_121)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@229858.8]
  assign _T_124 = $signed(_T_122) & -33'sh1000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@229860.8]
  assign _T_125 = $signed(_T_124) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@229861.8]
  assign _T_126 = io_in_a_bits_address ^ 32'hc000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@229862.8]
  assign _T_127 = {1'b0,$signed(_T_126)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@229863.8]
  assign _T_129 = $signed(_T_127) & -33'sh4000000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@229865.8]
  assign _T_130 = $signed(_T_129) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@229866.8]
  assign _T_131 = io_in_a_bits_address ^ 32'h2000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@229867.8]
  assign _T_132 = {1'b0,$signed(_T_131)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@229868.8]
  assign _T_134 = $signed(_T_132) & -33'sh10000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@229870.8]
  assign _T_135 = $signed(_T_134) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@229871.8]
  assign _T_139 = $signed(_T_83) & -33'sh1000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@229875.8]
  assign _T_140 = $signed(_T_139) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@229876.8]
  assign _T_141 = io_in_a_bits_address ^ 32'h10000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@229877.8]
  assign _T_142 = {1'b0,$signed(_T_141)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@229878.8]
  assign _T_144 = $signed(_T_142) & -33'sh10000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@229880.8]
  assign _T_145 = $signed(_T_144) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@229881.8]
  assign _T_146 = _T_115 | _T_120; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@229882.8]
  assign _T_147 = _T_146 | _T_125; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@229883.8]
  assign _T_148 = _T_147 | _T_130; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@229884.8]
  assign _T_149 = _T_148 | _T_135; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@229885.8]
  assign _T_150 = _T_149 | _T_140; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@229886.8]
  assign _T_153 = 4'h6 == io_in_a_bits_size; // @[Parameters.scala 92:48:chipyard.TestHarness.RocketConfig.fir@229889.8]
  assign _T_155 = io_in_a_bits_address ^ 32'h80000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@229891.8]
  assign _T_156 = {1'b0,$signed(_T_155)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@229892.8]
  assign _T_158 = $signed(_T_156) & -33'sh10000000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@229894.8]
  assign _T_159 = $signed(_T_158) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@229895.8]
  assign _T_160 = _T_153 & _T_159; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@229896.8]
  assign _T_164 = _T_160 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@229900.8]
  assign _T_165 = ~_T_164; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@229901.8]
  assign _T_171 = _T_4 & _T_153; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@229915.8]
  assign _T_178 = _T_171 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@229923.8]
  assign _T_179 = ~_T_178; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@229924.8]
  assign _T_181 = _T_9 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@229930.8]
  assign _T_182 = ~_T_181; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@229931.8]
  assign _T_185 = _T_21 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@229938.8]
  assign _T_186 = ~_T_185; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@229939.8]
  assign _T_188 = _T_15 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@229945.8]
  assign _T_189 = ~_T_188; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@229946.8]
  assign _T_190 = io_in_a_bits_param <= 3'h2; // @[Bundles.scala 110:27:chipyard.TestHarness.RocketConfig.fir@229951.8]
  assign _T_192 = _T_190 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@229953.8]
  assign _T_193 = ~_T_192; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@229954.8]
  assign _T_194 = ~io_in_a_bits_mask; // @[Monitor.scala 86:18:chipyard.TestHarness.RocketConfig.fir@229959.8]
  assign _T_195 = _T_194 == 8'h0; // @[Monitor.scala 86:31:chipyard.TestHarness.RocketConfig.fir@229960.8]
  assign _T_197 = _T_195 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@229962.8]
  assign _T_198 = ~_T_197; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@229963.8]
  assign _T_199 = ~io_in_a_bits_corrupt; // @[Monitor.scala 87:18:chipyard.TestHarness.RocketConfig.fir@229968.8]
  assign _T_201 = _T_199 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@229970.8]
  assign _T_202 = ~_T_201; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@229971.8]
  assign _T_203 = io_in_a_bits_opcode == 3'h7; // @[Monitor.scala 90:25:chipyard.TestHarness.RocketConfig.fir@229977.6]
  assign _T_288 = io_in_a_bits_param != 3'h0; // @[Monitor.scala 97:31:chipyard.TestHarness.RocketConfig.fir@230092.8]
  assign _T_290 = _T_288 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230094.8]
  assign _T_291 = ~_T_290; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230095.8]
  assign _T_301 = io_in_a_bits_opcode == 3'h4; // @[Monitor.scala 102:25:chipyard.TestHarness.RocketConfig.fir@230118.6]
  assign _T_303 = io_in_a_bits_size <= 4'hc; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@230121.8]
  assign _T_311 = _T_303 & _T_115; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@230129.8]
  assign _T_313 = io_in_a_bits_size <= 4'h6; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@230131.8]
  assign _T_351 = _T_120 | _T_125; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@230169.8]
  assign _T_352 = _T_351 | _T_130; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@230170.8]
  assign _T_353 = _T_352 | _T_135; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@230171.8]
  assign _T_354 = _T_353 | _T_140; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@230172.8]
  assign _T_355 = _T_354 | _T_145; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@230173.8]
  assign _T_356 = _T_355 | _T_159; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@230174.8]
  assign _T_357 = _T_313 & _T_356; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@230175.8]
  assign _T_359 = _T_311 | _T_357; // @[Parameters.scala 553:30:chipyard.TestHarness.RocketConfig.fir@230177.8]
  assign _T_361 = _T_359 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230179.8]
  assign _T_362 = ~_T_361; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230180.8]
  assign _T_369 = io_in_a_bits_param == 3'h0; // @[Monitor.scala 106:31:chipyard.TestHarness.RocketConfig.fir@230199.8]
  assign _T_371 = _T_369 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230201.8]
  assign _T_372 = ~_T_371; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230202.8]
  assign _T_373 = io_in_a_bits_mask == _T_79; // @[Monitor.scala 107:30:chipyard.TestHarness.RocketConfig.fir@230207.8]
  assign _T_375 = _T_373 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230209.8]
  assign _T_376 = ~_T_375; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230210.8]
  assign _T_381 = io_in_a_bits_opcode == 3'h0; // @[Monitor.scala 111:25:chipyard.TestHarness.RocketConfig.fir@230224.6]
  assign _T_430 = _T_354 | _T_159; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@230274.8]
  assign _T_431 = _T_313 & _T_430; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@230275.8]
  assign _T_440 = _T_311 | _T_431; // @[Parameters.scala 553:30:chipyard.TestHarness.RocketConfig.fir@230284.8]
  assign _T_443 = _T_440 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230287.8]
  assign _T_444 = ~_T_443; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230288.8]
  assign _T_459 = io_in_a_bits_opcode == 3'h1; // @[Monitor.scala 119:25:chipyard.TestHarness.RocketConfig.fir@230324.6]
  assign _T_533 = ~_T_79; // @[Monitor.scala 124:33:chipyard.TestHarness.RocketConfig.fir@230415.8]
  assign _T_534 = io_in_a_bits_mask & _T_533; // @[Monitor.scala 124:31:chipyard.TestHarness.RocketConfig.fir@230416.8]
  assign _T_535 = _T_534 == 8'h0; // @[Monitor.scala 124:40:chipyard.TestHarness.RocketConfig.fir@230417.8]
  assign _T_537 = _T_535 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230419.8]
  assign _T_538 = ~_T_537; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230420.8]
  assign _T_539 = io_in_a_bits_opcode == 3'h2; // @[Monitor.scala 127:25:chipyard.TestHarness.RocketConfig.fir@230426.6]
  assign _T_541 = io_in_a_bits_size <= 4'h3; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@230429.8]
  assign _T_584 = _T_150 | _T_159; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@230472.8]
  assign _T_585 = _T_541 & _T_584; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@230473.8]
  assign _T_596 = _T_585 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230484.8]
  assign _T_597 = ~_T_596; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230485.8]
  assign _T_604 = io_in_a_bits_param <= 3'h4; // @[Bundles.scala 140:33:chipyard.TestHarness.RocketConfig.fir@230504.8]
  assign _T_606 = _T_604 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230506.8]
  assign _T_607 = ~_T_606; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230507.8]
  assign _T_612 = io_in_a_bits_opcode == 3'h3; // @[Monitor.scala 135:25:chipyard.TestHarness.RocketConfig.fir@230521.6]
  assign _T_677 = io_in_a_bits_param <= 3'h3; // @[Bundles.scala 147:30:chipyard.TestHarness.RocketConfig.fir@230599.8]
  assign _T_679 = _T_677 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230601.8]
  assign _T_680 = ~_T_679; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230602.8]
  assign _T_685 = io_in_a_bits_opcode == 3'h5; // @[Monitor.scala 143:25:chipyard.TestHarness.RocketConfig.fir@230616.6]
  assign _T_742 = _T_313 & _T_159; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@230674.8]
  assign _T_745 = _T_311 | _T_742; // @[Parameters.scala 553:30:chipyard.TestHarness.RocketConfig.fir@230677.8]
  assign _T_747 = _T_745 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230679.8]
  assign _T_748 = ~_T_747; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230680.8]
  assign _T_755 = io_in_a_bits_param <= 3'h1; // @[Bundles.scala 160:28:chipyard.TestHarness.RocketConfig.fir@230699.8]
  assign _T_757 = _T_755 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230701.8]
  assign _T_758 = ~_T_757; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230702.8]
  assign _T_767 = io_in_d_bits_opcode <= 3'h6; // @[Bundles.scala 44:24:chipyard.TestHarness.RocketConfig.fir@230726.6]
  assign _T_769 = _T_767 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230728.6]
  assign _T_770 = ~_T_769; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230729.6]
  assign _T_771 = io_in_d_bits_source == 2'h0; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@230734.6]
  assign _T_772 = io_in_d_bits_source == 2'h1; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@230735.6]
  assign _T_773 = io_in_d_bits_source == 2'h2; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@230736.6]
  assign _T_775 = _T_771 | _T_772; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@230742.6]
  assign _T_776 = _T_775 | _T_773; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@230743.6]
  assign _T_778 = io_in_d_bits_opcode == 3'h6; // @[Monitor.scala 307:25:chipyard.TestHarness.RocketConfig.fir@230745.6]
  assign _T_780 = _T_776 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230748.8]
  assign _T_781 = ~_T_780; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230749.8]
  assign _T_782 = io_in_d_bits_size >= 4'h3; // @[Monitor.scala 309:27:chipyard.TestHarness.RocketConfig.fir@230754.8]
  assign _T_784 = _T_782 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230756.8]
  assign _T_785 = ~_T_784; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230757.8]
  assign _T_786 = io_in_d_bits_param == 2'h0; // @[Monitor.scala 310:28:chipyard.TestHarness.RocketConfig.fir@230762.8]
  assign _T_788 = _T_786 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230764.8]
  assign _T_789 = ~_T_788; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230765.8]
  assign _T_790 = ~io_in_d_bits_corrupt; // @[Monitor.scala 311:15:chipyard.TestHarness.RocketConfig.fir@230770.8]
  assign _T_792 = _T_790 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230772.8]
  assign _T_793 = ~_T_792; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230773.8]
  assign _T_794 = ~io_in_d_bits_denied; // @[Monitor.scala 312:15:chipyard.TestHarness.RocketConfig.fir@230778.8]
  assign _T_796 = _T_794 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230780.8]
  assign _T_797 = ~_T_796; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230781.8]
  assign _T_798 = io_in_d_bits_opcode == 3'h4; // @[Monitor.scala 315:25:chipyard.TestHarness.RocketConfig.fir@230787.6]
  assign _T_809 = io_in_d_bits_param <= 2'h2; // @[Bundles.scala 104:26:chipyard.TestHarness.RocketConfig.fir@230811.8]
  assign _T_811 = _T_809 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230813.8]
  assign _T_812 = ~_T_811; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230814.8]
  assign _T_813 = io_in_d_bits_param != 2'h2; // @[Monitor.scala 320:28:chipyard.TestHarness.RocketConfig.fir@230819.8]
  assign _T_815 = _T_813 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230821.8]
  assign _T_816 = ~_T_815; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230822.8]
  assign _T_826 = io_in_d_bits_opcode == 3'h5; // @[Monitor.scala 325:25:chipyard.TestHarness.RocketConfig.fir@230845.6]
  assign _T_846 = _T_794 | io_in_d_bits_corrupt; // @[Monitor.scala 331:30:chipyard.TestHarness.RocketConfig.fir@230886.8]
  assign _T_848 = _T_846 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230888.8]
  assign _T_849 = ~_T_848; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230889.8]
  assign _T_855 = io_in_d_bits_opcode == 3'h0; // @[Monitor.scala 335:25:chipyard.TestHarness.RocketConfig.fir@230904.6]
  assign _T_872 = io_in_d_bits_opcode == 3'h1; // @[Monitor.scala 343:25:chipyard.TestHarness.RocketConfig.fir@230939.6]
  assign _T_890 = io_in_d_bits_opcode == 3'h2; // @[Monitor.scala 351:25:chipyard.TestHarness.RocketConfig.fir@230975.6]
  assign _T_907 = io_in_b_bits_opcode <= 3'h6; // @[Bundles.scala 42:24:chipyard.TestHarness.RocketConfig.fir@231012.6]
  assign _T_909 = _T_907 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231014.6]
  assign _T_910 = ~_T_909; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231015.6]
  assign _T_911 = io_in_b_bits_source == 2'h0; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@231020.6]
  assign _T_914 = {1'b0,$signed(io_in_b_bits_address)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@231023.6]
  assign _T_919 = io_in_b_bits_source == 2'h1; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@231028.6]
  assign _T_927 = io_in_b_bits_source == 2'h2; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@231036.6]
  assign _T_940 = io_in_b_bits_address ^ 32'h3000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@231053.6]
  assign _T_941 = {1'b0,$signed(_T_940)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@231054.6]
  assign _T_943 = $signed(_T_941) & -33'sh1000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@231056.6]
  assign _T_944 = $signed(_T_943) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@231057.6]
  assign _T_945 = io_in_b_bits_address ^ 32'h2010000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@231058.6]
  assign _T_946 = {1'b0,$signed(_T_945)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@231059.6]
  assign _T_948 = $signed(_T_946) & -33'sh1000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@231061.6]
  assign _T_949 = $signed(_T_948) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@231062.6]
  assign _T_950 = io_in_b_bits_address ^ 32'h54000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@231063.6]
  assign _T_951 = {1'b0,$signed(_T_950)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@231064.6]
  assign _T_953 = $signed(_T_951) & -33'sh1000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@231066.6]
  assign _T_954 = $signed(_T_953) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@231067.6]
  assign _T_955 = io_in_b_bits_address ^ 32'hc000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@231068.6]
  assign _T_956 = {1'b0,$signed(_T_955)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@231069.6]
  assign _T_958 = $signed(_T_956) & -33'sh4000000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@231071.6]
  assign _T_959 = $signed(_T_958) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@231072.6]
  assign _T_960 = io_in_b_bits_address ^ 32'h2000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@231073.6]
  assign _T_961 = {1'b0,$signed(_T_960)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@231074.6]
  assign _T_963 = $signed(_T_961) & -33'sh10000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@231076.6]
  assign _T_964 = $signed(_T_963) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@231077.6]
  assign _T_968 = $signed(_T_914) & -33'sh1000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@231081.6]
  assign _T_969 = $signed(_T_968) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@231082.6]
  assign _T_970 = io_in_b_bits_address ^ 32'h10000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@231083.6]
  assign _T_971 = {1'b0,$signed(_T_970)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@231084.6]
  assign _T_973 = $signed(_T_971) & -33'sh10000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@231086.6]
  assign _T_974 = $signed(_T_973) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@231087.6]
  assign _T_975 = io_in_b_bits_address ^ 32'h80000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@231088.6]
  assign _T_976 = {1'b0,$signed(_T_975)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@231089.6]
  assign _T_978 = $signed(_T_976) & -33'sh10000000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@231091.6]
  assign _T_979 = $signed(_T_978) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@231092.6]
  assign _T_981 = _T_944 | _T_949; // @[Parameters.scala 535:64:chipyard.TestHarness.RocketConfig.fir@231103.6]
  assign _T_982 = _T_981 | _T_954; // @[Parameters.scala 535:64:chipyard.TestHarness.RocketConfig.fir@231104.6]
  assign _T_983 = _T_982 | _T_959; // @[Parameters.scala 535:64:chipyard.TestHarness.RocketConfig.fir@231105.6]
  assign _T_984 = _T_983 | _T_964; // @[Parameters.scala 535:64:chipyard.TestHarness.RocketConfig.fir@231106.6]
  assign _T_985 = _T_984 | _T_969; // @[Parameters.scala 535:64:chipyard.TestHarness.RocketConfig.fir@231107.6]
  assign _T_986 = _T_985 | _T_974; // @[Parameters.scala 535:64:chipyard.TestHarness.RocketConfig.fir@231108.6]
  assign _T_987 = _T_986 | _T_979; // @[Parameters.scala 535:64:chipyard.TestHarness.RocketConfig.fir@231109.6]
  assign _T_989 = 27'hfff << io_in_b_bits_size; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@231111.6]
  assign _T_991 = ~_T_989[11:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@231113.6]
  assign _GEN_72 = {{20'd0}, _T_991}; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@231114.6]
  assign _T_992 = io_in_b_bits_address & _GEN_72; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@231114.6]
  assign _T_993 = _T_992 == 32'h0; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@231115.6]
  assign _T_996 = 4'h1 << io_in_b_bits_size[1:0]; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@231118.6]
  assign _T_998 = _T_996[2:0] | 3'h1; // @[Misc.scala 201:81:chipyard.TestHarness.RocketConfig.fir@231120.6]
  assign _T_999 = io_in_b_bits_size >= 4'h3; // @[Misc.scala 205:21:chipyard.TestHarness.RocketConfig.fir@231121.6]
  assign _T_1002 = ~io_in_b_bits_address[2]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@231124.6]
  assign _T_1004 = _T_998[2] & _T_1002; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@231126.6]
  assign _T_1005 = _T_999 | _T_1004; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@231127.6]
  assign _T_1007 = _T_998[2] & io_in_b_bits_address[2]; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@231129.6]
  assign _T_1008 = _T_999 | _T_1007; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@231130.6]
  assign _T_1011 = ~io_in_b_bits_address[1]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@231133.6]
  assign _T_1012 = _T_1002 & _T_1011; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@231134.6]
  assign _T_1013 = _T_998[1] & _T_1012; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@231135.6]
  assign _T_1014 = _T_1005 | _T_1013; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@231136.6]
  assign _T_1015 = _T_1002 & io_in_b_bits_address[1]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@231137.6]
  assign _T_1016 = _T_998[1] & _T_1015; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@231138.6]
  assign _T_1017 = _T_1005 | _T_1016; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@231139.6]
  assign _T_1018 = io_in_b_bits_address[2] & _T_1011; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@231140.6]
  assign _T_1019 = _T_998[1] & _T_1018; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@231141.6]
  assign _T_1020 = _T_1008 | _T_1019; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@231142.6]
  assign _T_1021 = io_in_b_bits_address[2] & io_in_b_bits_address[1]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@231143.6]
  assign _T_1022 = _T_998[1] & _T_1021; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@231144.6]
  assign _T_1023 = _T_1008 | _T_1022; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@231145.6]
  assign _T_1026 = ~io_in_b_bits_address[0]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@231148.6]
  assign _T_1027 = _T_1012 & _T_1026; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@231149.6]
  assign _T_1028 = _T_998[0] & _T_1027; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@231150.6]
  assign _T_1029 = _T_1014 | _T_1028; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@231151.6]
  assign _T_1030 = _T_1012 & io_in_b_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@231152.6]
  assign _T_1031 = _T_998[0] & _T_1030; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@231153.6]
  assign _T_1032 = _T_1014 | _T_1031; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@231154.6]
  assign _T_1033 = _T_1015 & _T_1026; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@231155.6]
  assign _T_1034 = _T_998[0] & _T_1033; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@231156.6]
  assign _T_1035 = _T_1017 | _T_1034; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@231157.6]
  assign _T_1036 = _T_1015 & io_in_b_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@231158.6]
  assign _T_1037 = _T_998[0] & _T_1036; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@231159.6]
  assign _T_1038 = _T_1017 | _T_1037; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@231160.6]
  assign _T_1039 = _T_1018 & _T_1026; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@231161.6]
  assign _T_1040 = _T_998[0] & _T_1039; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@231162.6]
  assign _T_1041 = _T_1020 | _T_1040; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@231163.6]
  assign _T_1042 = _T_1018 & io_in_b_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@231164.6]
  assign _T_1043 = _T_998[0] & _T_1042; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@231165.6]
  assign _T_1044 = _T_1020 | _T_1043; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@231166.6]
  assign _T_1045 = _T_1021 & _T_1026; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@231167.6]
  assign _T_1046 = _T_998[0] & _T_1045; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@231168.6]
  assign _T_1047 = _T_1023 | _T_1046; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@231169.6]
  assign _T_1048 = _T_1021 & io_in_b_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@231170.6]
  assign _T_1049 = _T_998[0] & _T_1048; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@231171.6]
  assign _T_1050 = _T_1023 | _T_1049; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@231172.6]
  assign _T_1057 = {_T_1050,_T_1047,_T_1044,_T_1041,_T_1038,_T_1035,_T_1032,_T_1029}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@231179.6]
  assign _T_1064 = _T_927 ? 2'h2 : 2'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@231190.6]
  assign _GEN_73 = {{1'd0}, _T_919}; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@231192.6]
  assign _T_1066 = _GEN_73 | _T_1064; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@231192.6]
  assign _T_1068 = _T_1066 == io_in_b_bits_source; // @[Monitor.scala 162:113:chipyard.TestHarness.RocketConfig.fir@231195.6]
  assign _T_1069 = io_in_b_bits_opcode == 3'h6; // @[Monitor.scala 164:25:chipyard.TestHarness.RocketConfig.fir@231196.6]
  assign _T_1074 = 4'h6 == io_in_b_bits_size; // @[Parameters.scala 92:48:chipyard.TestHarness.RocketConfig.fir@231206.8]
  assign _T_1075 = _T_911 & _T_1074; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@231207.8]
  assign _T_1082 = _T_1075 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231215.8]
  assign _T_1083 = ~_T_1082; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231216.8]
  assign _T_1085 = _T_987 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231222.8]
  assign _T_1086 = ~_T_1085; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231223.8]
  assign _T_1088 = _T_1068 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231229.8]
  assign _T_1089 = ~_T_1088; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231230.8]
  assign _T_1091 = _T_993 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231236.8]
  assign _T_1092 = ~_T_1091; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231237.8]
  assign _T_1093 = io_in_b_bits_param <= 2'h2; // @[Bundles.scala 104:26:chipyard.TestHarness.RocketConfig.fir@231242.8]
  assign _T_1095 = _T_1093 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231244.8]
  assign _T_1096 = ~_T_1095; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231245.8]
  assign _T_1097 = io_in_b_bits_mask == _T_1057; // @[Monitor.scala 170:30:chipyard.TestHarness.RocketConfig.fir@231250.8]
  assign _T_1099 = _T_1097 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231252.8]
  assign _T_1100 = ~_T_1099; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231253.8]
  assign _T_1101 = ~io_in_b_bits_corrupt; // @[Monitor.scala 171:18:chipyard.TestHarness.RocketConfig.fir@231258.8]
  assign _T_1103 = _T_1101 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231260.8]
  assign _T_1104 = ~_T_1103; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231261.8]
  assign _T_1105 = io_in_b_bits_opcode == 3'h4; // @[Monitor.scala 174:25:chipyard.TestHarness.RocketConfig.fir@231267.6]
  assign _T_1108 = ~reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231271.8]
  assign _T_1118 = io_in_b_bits_param == 2'h0; // @[Monitor.scala 179:31:chipyard.TestHarness.RocketConfig.fir@231297.8]
  assign _T_1120 = _T_1118 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231299.8]
  assign _T_1121 = ~_T_1120; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231300.8]
  assign _T_1130 = io_in_b_bits_opcode == 3'h0; // @[Monitor.scala 184:25:chipyard.TestHarness.RocketConfig.fir@231322.6]
  assign _T_1151 = io_in_b_bits_opcode == 3'h1; // @[Monitor.scala 193:25:chipyard.TestHarness.RocketConfig.fir@231369.6]
  assign _T_1168 = ~_T_1057; // @[Monitor.scala 199:33:chipyard.TestHarness.RocketConfig.fir@231407.8]
  assign _T_1169 = io_in_b_bits_mask & _T_1168; // @[Monitor.scala 199:31:chipyard.TestHarness.RocketConfig.fir@231408.8]
  assign _T_1170 = _T_1169 == 8'h0; // @[Monitor.scala 199:40:chipyard.TestHarness.RocketConfig.fir@231409.8]
  assign _T_1172 = _T_1170 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231411.8]
  assign _T_1173 = ~_T_1172; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231412.8]
  assign _T_1174 = io_in_b_bits_opcode == 3'h2; // @[Monitor.scala 202:25:chipyard.TestHarness.RocketConfig.fir@231418.6]
  assign _T_1195 = io_in_b_bits_opcode == 3'h3; // @[Monitor.scala 211:25:chipyard.TestHarness.RocketConfig.fir@231465.6]
  assign _T_1216 = io_in_b_bits_opcode == 3'h5; // @[Monitor.scala 220:25:chipyard.TestHarness.RocketConfig.fir@231512.6]
  assign _T_1241 = io_in_c_bits_source == 2'h0; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@231569.6]
  assign _T_1242 = io_in_c_bits_source == 2'h1; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@231570.6]
  assign _T_1243 = io_in_c_bits_source == 2'h2; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@231571.6]
  assign _T_1245 = _T_1241 | _T_1242; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@231577.6]
  assign _T_1246 = _T_1245 | _T_1243; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@231578.6]
  assign _T_1248 = 27'hfff << io_in_c_bits_size; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@231580.6]
  assign _T_1250 = ~_T_1248[11:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@231582.6]
  assign _GEN_74 = {{20'd0}, _T_1250}; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@231583.6]
  assign _T_1251 = io_in_c_bits_address & _GEN_74; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@231583.6]
  assign _T_1252 = _T_1251 == 32'h0; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@231584.6]
  assign _T_1253 = io_in_c_bits_address ^ 32'h3000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@231585.6]
  assign _T_1254 = {1'b0,$signed(_T_1253)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@231586.6]
  assign _T_1256 = $signed(_T_1254) & -33'sh1000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@231588.6]
  assign _T_1257 = $signed(_T_1256) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@231589.6]
  assign _T_1258 = io_in_c_bits_address ^ 32'h2010000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@231590.6]
  assign _T_1259 = {1'b0,$signed(_T_1258)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@231591.6]
  assign _T_1261 = $signed(_T_1259) & -33'sh1000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@231593.6]
  assign _T_1262 = $signed(_T_1261) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@231594.6]
  assign _T_1263 = io_in_c_bits_address ^ 32'h54000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@231595.6]
  assign _T_1264 = {1'b0,$signed(_T_1263)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@231596.6]
  assign _T_1266 = $signed(_T_1264) & -33'sh1000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@231598.6]
  assign _T_1267 = $signed(_T_1266) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@231599.6]
  assign _T_1268 = io_in_c_bits_address ^ 32'hc000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@231600.6]
  assign _T_1269 = {1'b0,$signed(_T_1268)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@231601.6]
  assign _T_1271 = $signed(_T_1269) & -33'sh4000000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@231603.6]
  assign _T_1272 = $signed(_T_1271) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@231604.6]
  assign _T_1273 = io_in_c_bits_address ^ 32'h2000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@231605.6]
  assign _T_1274 = {1'b0,$signed(_T_1273)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@231606.6]
  assign _T_1276 = $signed(_T_1274) & -33'sh10000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@231608.6]
  assign _T_1277 = $signed(_T_1276) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@231609.6]
  assign _T_1279 = {1'b0,$signed(io_in_c_bits_address)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@231611.6]
  assign _T_1281 = $signed(_T_1279) & -33'sh1000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@231613.6]
  assign _T_1282 = $signed(_T_1281) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@231614.6]
  assign _T_1283 = io_in_c_bits_address ^ 32'h10000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@231615.6]
  assign _T_1284 = {1'b0,$signed(_T_1283)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@231616.6]
  assign _T_1286 = $signed(_T_1284) & -33'sh10000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@231618.6]
  assign _T_1287 = $signed(_T_1286) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@231619.6]
  assign _T_1288 = io_in_c_bits_address ^ 32'h80000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@231620.6]
  assign _T_1289 = {1'b0,$signed(_T_1288)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@231621.6]
  assign _T_1291 = $signed(_T_1289) & -33'sh10000000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@231623.6]
  assign _T_1292 = $signed(_T_1291) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@231624.6]
  assign _T_1294 = _T_1257 | _T_1262; // @[Parameters.scala 535:64:chipyard.TestHarness.RocketConfig.fir@231635.6]
  assign _T_1295 = _T_1294 | _T_1267; // @[Parameters.scala 535:64:chipyard.TestHarness.RocketConfig.fir@231636.6]
  assign _T_1296 = _T_1295 | _T_1272; // @[Parameters.scala 535:64:chipyard.TestHarness.RocketConfig.fir@231637.6]
  assign _T_1297 = _T_1296 | _T_1277; // @[Parameters.scala 535:64:chipyard.TestHarness.RocketConfig.fir@231638.6]
  assign _T_1298 = _T_1297 | _T_1282; // @[Parameters.scala 535:64:chipyard.TestHarness.RocketConfig.fir@231639.6]
  assign _T_1299 = _T_1298 | _T_1287; // @[Parameters.scala 535:64:chipyard.TestHarness.RocketConfig.fir@231640.6]
  assign _T_1300 = _T_1299 | _T_1292; // @[Parameters.scala 535:64:chipyard.TestHarness.RocketConfig.fir@231641.6]
  assign _T_1330 = io_in_c_bits_opcode == 3'h4; // @[Monitor.scala 239:25:chipyard.TestHarness.RocketConfig.fir@231675.6]
  assign _T_1332 = _T_1300 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231678.8]
  assign _T_1333 = ~_T_1332; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231679.8]
  assign _T_1335 = _T_1246 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231685.8]
  assign _T_1336 = ~_T_1335; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231686.8]
  assign _T_1337 = io_in_c_bits_size >= 4'h3; // @[Monitor.scala 242:30:chipyard.TestHarness.RocketConfig.fir@231691.8]
  assign _T_1339 = _T_1337 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231693.8]
  assign _T_1340 = ~_T_1339; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231694.8]
  assign _T_1342 = _T_1252 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231700.8]
  assign _T_1343 = ~_T_1342; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231701.8]
  assign _T_1344 = io_in_c_bits_param <= 3'h5; // @[Bundles.scala 122:29:chipyard.TestHarness.RocketConfig.fir@231706.8]
  assign _T_1346 = _T_1344 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231708.8]
  assign _T_1347 = ~_T_1346; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231709.8]
  assign _T_1352 = io_in_c_bits_opcode == 3'h5; // @[Monitor.scala 248:25:chipyard.TestHarness.RocketConfig.fir@231723.6]
  assign _T_1370 = io_in_c_bits_opcode == 3'h6; // @[Monitor.scala 256:25:chipyard.TestHarness.RocketConfig.fir@231763.6]
  assign _T_1414 = 4'h6 == io_in_c_bits_size; // @[Parameters.scala 92:48:chipyard.TestHarness.RocketConfig.fir@231808.8]
  assign _T_1421 = _T_1414 & _T_1292; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@231815.8]
  assign _T_1425 = _T_1421 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231819.8]
  assign _T_1426 = ~_T_1425; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231820.8]
  assign _T_1432 = _T_1241 & _T_1414; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@231834.8]
  assign _T_1439 = _T_1432 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231842.8]
  assign _T_1440 = ~_T_1439; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231843.8]
  assign _T_1451 = io_in_c_bits_param <= 3'h2; // @[Bundles.scala 116:29:chipyard.TestHarness.RocketConfig.fir@231870.8]
  assign _T_1453 = _T_1451 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231872.8]
  assign _T_1454 = ~_T_1453; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231873.8]
  assign _T_1459 = io_in_c_bits_opcode == 3'h7; // @[Monitor.scala 266:25:chipyard.TestHarness.RocketConfig.fir@231887.6]
  assign _T_1544 = io_in_c_bits_opcode == 3'h0; // @[Monitor.scala 275:25:chipyard.TestHarness.RocketConfig.fir@232003.6]
  assign _T_1554 = io_in_c_bits_param == 3'h0; // @[Monitor.scala 279:31:chipyard.TestHarness.RocketConfig.fir@232026.8]
  assign _T_1556 = _T_1554 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232028.8]
  assign _T_1557 = ~_T_1556; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232029.8]
  assign _T_1562 = io_in_c_bits_opcode == 3'h1; // @[Monitor.scala 283:25:chipyard.TestHarness.RocketConfig.fir@232043.6]
  assign _T_1576 = io_in_c_bits_opcode == 3'h2; // @[Monitor.scala 290:25:chipyard.TestHarness.RocketConfig.fir@232075.6]
  assign _T_1598 = io_in_a_ready & io_in_a_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@232126.4]
  assign _T_1605 = ~io_in_a_bits_opcode[2]; // @[Edges.scala 93:28:chipyard.TestHarness.RocketConfig.fir@232133.4]
  assign _T_1609 = _T_1607 - 9'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@232137.4]
  assign _T_1610 = _T_1607 == 9'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@232138.4]
  assign _T_1623 = ~_T_1610; // @[Monitor.scala 386:22:chipyard.TestHarness.RocketConfig.fir@232154.4]
  assign _T_1624 = io_in_a_valid & _T_1623; // @[Monitor.scala 386:19:chipyard.TestHarness.RocketConfig.fir@232155.4]
  assign _T_1625 = io_in_a_bits_opcode == _T_1618; // @[Monitor.scala 387:32:chipyard.TestHarness.RocketConfig.fir@232157.6]
  assign _T_1627 = _T_1625 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232159.6]
  assign _T_1628 = ~_T_1627; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232160.6]
  assign _T_1629 = io_in_a_bits_param == _T_1619; // @[Monitor.scala 388:32:chipyard.TestHarness.RocketConfig.fir@232165.6]
  assign _T_1631 = _T_1629 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232167.6]
  assign _T_1632 = ~_T_1631; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232168.6]
  assign _T_1633 = io_in_a_bits_size == _T_1620; // @[Monitor.scala 389:32:chipyard.TestHarness.RocketConfig.fir@232173.6]
  assign _T_1635 = _T_1633 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232175.6]
  assign _T_1636 = ~_T_1635; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232176.6]
  assign _T_1637 = io_in_a_bits_source == _T_1621; // @[Monitor.scala 390:32:chipyard.TestHarness.RocketConfig.fir@232181.6]
  assign _T_1639 = _T_1637 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232183.6]
  assign _T_1640 = ~_T_1639; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232184.6]
  assign _T_1641 = io_in_a_bits_address == _T_1622; // @[Monitor.scala 391:32:chipyard.TestHarness.RocketConfig.fir@232189.6]
  assign _T_1643 = _T_1641 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232191.6]
  assign _T_1644 = ~_T_1643; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232192.6]
  assign _T_1646 = _T_1598 & _T_1610; // @[Monitor.scala 393:20:chipyard.TestHarness.RocketConfig.fir@232199.4]
  assign _T_1647 = io_in_d_ready & io_in_d_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@232207.4]
  assign _T_1649 = 27'hfff << io_in_d_bits_size; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@232209.4]
  assign _T_1651 = ~_T_1649[11:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@232211.4]
  assign _T_1657 = _T_1655 - 9'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@232217.4]
  assign _T_1658 = _T_1655 == 9'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@232218.4]
  assign _T_1672 = ~_T_1658; // @[Monitor.scala 538:22:chipyard.TestHarness.RocketConfig.fir@232235.4]
  assign _T_1673 = io_in_d_valid & _T_1672; // @[Monitor.scala 538:19:chipyard.TestHarness.RocketConfig.fir@232236.4]
  assign _T_1674 = io_in_d_bits_opcode == _T_1666; // @[Monitor.scala 539:29:chipyard.TestHarness.RocketConfig.fir@232238.6]
  assign _T_1676 = _T_1674 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@232240.6]
  assign _T_1677 = ~_T_1676; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@232241.6]
  assign _T_1678 = io_in_d_bits_param == _T_1667; // @[Monitor.scala 540:29:chipyard.TestHarness.RocketConfig.fir@232246.6]
  assign _T_1680 = _T_1678 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@232248.6]
  assign _T_1681 = ~_T_1680; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@232249.6]
  assign _T_1682 = io_in_d_bits_size == _T_1668; // @[Monitor.scala 541:29:chipyard.TestHarness.RocketConfig.fir@232254.6]
  assign _T_1684 = _T_1682 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@232256.6]
  assign _T_1685 = ~_T_1684; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@232257.6]
  assign _T_1686 = io_in_d_bits_source == _T_1669; // @[Monitor.scala 542:29:chipyard.TestHarness.RocketConfig.fir@232262.6]
  assign _T_1688 = _T_1686 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@232264.6]
  assign _T_1689 = ~_T_1688; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@232265.6]
  assign _T_1690 = io_in_d_bits_sink == _T_1670; // @[Monitor.scala 543:29:chipyard.TestHarness.RocketConfig.fir@232270.6]
  assign _T_1692 = _T_1690 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@232272.6]
  assign _T_1693 = ~_T_1692; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@232273.6]
  assign _T_1694 = io_in_d_bits_denied == _T_1671; // @[Monitor.scala 544:29:chipyard.TestHarness.RocketConfig.fir@232278.6]
  assign _T_1696 = _T_1694 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@232280.6]
  assign _T_1697 = ~_T_1696; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@232281.6]
  assign _T_1699 = _T_1647 & _T_1658; // @[Monitor.scala 546:20:chipyard.TestHarness.RocketConfig.fir@232288.4]
  assign _T_1700 = io_in_b_ready & io_in_b_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@232297.4]
  assign _T_1711 = _T_1709 - 9'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@232308.4]
  assign _T_1712 = _T_1709 == 9'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@232309.4]
  assign _T_1725 = ~_T_1712; // @[Monitor.scala 409:22:chipyard.TestHarness.RocketConfig.fir@232325.4]
  assign _T_1726 = io_in_b_valid & _T_1725; // @[Monitor.scala 409:19:chipyard.TestHarness.RocketConfig.fir@232326.4]
  assign _T_1727 = io_in_b_bits_opcode == _T_1720; // @[Monitor.scala 410:32:chipyard.TestHarness.RocketConfig.fir@232328.6]
  assign _T_1729 = _T_1727 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232330.6]
  assign _T_1730 = ~_T_1729; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232331.6]
  assign _T_1731 = io_in_b_bits_param == _T_1721; // @[Monitor.scala 411:32:chipyard.TestHarness.RocketConfig.fir@232336.6]
  assign _T_1733 = _T_1731 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232338.6]
  assign _T_1734 = ~_T_1733; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232339.6]
  assign _T_1735 = io_in_b_bits_size == _T_1722; // @[Monitor.scala 412:32:chipyard.TestHarness.RocketConfig.fir@232344.6]
  assign _T_1737 = _T_1735 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232346.6]
  assign _T_1738 = ~_T_1737; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232347.6]
  assign _T_1739 = io_in_b_bits_source == _T_1723; // @[Monitor.scala 413:32:chipyard.TestHarness.RocketConfig.fir@232352.6]
  assign _T_1741 = _T_1739 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232354.6]
  assign _T_1742 = ~_T_1741; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232355.6]
  assign _T_1743 = io_in_b_bits_address == _T_1724; // @[Monitor.scala 414:32:chipyard.TestHarness.RocketConfig.fir@232360.6]
  assign _T_1745 = _T_1743 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232362.6]
  assign _T_1746 = ~_T_1745; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232363.6]
  assign _T_1748 = _T_1700 & _T_1712; // @[Monitor.scala 416:20:chipyard.TestHarness.RocketConfig.fir@232370.4]
  assign _T_1749 = io_in_c_ready & io_in_c_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@232378.4]
  assign _T_1759 = _T_1757 - 9'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@232388.4]
  assign _T_1760 = _T_1757 == 9'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@232389.4]
  assign _T_1773 = ~_T_1760; // @[Monitor.scala 514:22:chipyard.TestHarness.RocketConfig.fir@232405.4]
  assign _T_1774 = io_in_c_valid & _T_1773; // @[Monitor.scala 514:19:chipyard.TestHarness.RocketConfig.fir@232406.4]
  assign _T_1775 = io_in_c_bits_opcode == _T_1768; // @[Monitor.scala 515:32:chipyard.TestHarness.RocketConfig.fir@232408.6]
  assign _T_1777 = _T_1775 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232410.6]
  assign _T_1778 = ~_T_1777; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232411.6]
  assign _T_1779 = io_in_c_bits_param == _T_1769; // @[Monitor.scala 516:32:chipyard.TestHarness.RocketConfig.fir@232416.6]
  assign _T_1781 = _T_1779 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232418.6]
  assign _T_1782 = ~_T_1781; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232419.6]
  assign _T_1783 = io_in_c_bits_size == _T_1770; // @[Monitor.scala 517:32:chipyard.TestHarness.RocketConfig.fir@232424.6]
  assign _T_1785 = _T_1783 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232426.6]
  assign _T_1786 = ~_T_1785; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232427.6]
  assign _T_1787 = io_in_c_bits_source == _T_1771; // @[Monitor.scala 518:32:chipyard.TestHarness.RocketConfig.fir@232432.6]
  assign _T_1789 = _T_1787 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232434.6]
  assign _T_1790 = ~_T_1789; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232435.6]
  assign _T_1791 = io_in_c_bits_address == _T_1772; // @[Monitor.scala 519:32:chipyard.TestHarness.RocketConfig.fir@232440.6]
  assign _T_1793 = _T_1791 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232442.6]
  assign _T_1794 = ~_T_1793; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232443.6]
  assign _T_1796 = _T_1749 & _T_1760; // @[Monitor.scala 521:20:chipyard.TestHarness.RocketConfig.fir@232450.4]
  assign _T_1808 = _T_1806 - 9'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@232472.4]
  assign a_first = _T_1806 == 9'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@232473.4]
  assign _T_1826 = _T_1824 - 9'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@232494.4]
  assign d_first = _T_1824 == 9'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@232495.4]
  assign _GEN_75 = {io_in_d_bits_source, 2'h0}; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@232514.4]
  assign _T_1834 = {{1'd0}, _GEN_75}; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@232514.4]
  assign _T_1835 = inflight_opcodes >> _T_1834; // @[Monitor.scala 629:44:chipyard.TestHarness.RocketConfig.fir@232515.4]
  assign _T_1839 = 16'h10 - 16'h1; // @[Monitor.scala 606:57:chipyard.TestHarness.RocketConfig.fir@232519.4]
  assign _GEN_76 = {{4'd0}, _T_1835}; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@232520.4]
  assign _T_1840 = _GEN_76 & _T_1839; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@232520.4]
  assign _T_1841 = {{1'd0}, _T_1840[15:1]}; // @[Monitor.scala 629:152:chipyard.TestHarness.RocketConfig.fir@232521.4]
  assign _T_1842 = {io_in_d_bits_source, 3'h0}; // @[Monitor.scala 633:65:chipyard.TestHarness.RocketConfig.fir@232525.4]
  assign _T_1843 = inflight_sizes >> _T_1842; // @[Monitor.scala 633:40:chipyard.TestHarness.RocketConfig.fir@232526.4]
  assign _T_1847 = 16'h100 - 16'h1; // @[Monitor.scala 606:57:chipyard.TestHarness.RocketConfig.fir@232530.4]
  assign _GEN_78 = {{8'd0}, _T_1847}; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@232531.4]
  assign _T_1848 = _T_1843 & _GEN_78; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@232531.4]
  assign _T_1849 = {{1'd0}, _T_1848[23:1]}; // @[Monitor.scala 633:144:chipyard.TestHarness.RocketConfig.fir@232532.4]
  assign _T_1853 = _T_1598 & a_first; // @[Monitor.scala 643:27:chipyard.TestHarness.RocketConfig.fir@232557.4]
  assign _T_1855 = 4'h1 << io_in_a_bits_source; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@232560.6]
  assign _T_1856 = {io_in_a_bits_opcode, 1'h0}; // @[Monitor.scala 645:53:chipyard.TestHarness.RocketConfig.fir@232562.6]
  assign _T_1857 = _T_1856 | 4'h1; // @[Monitor.scala 645:61:chipyard.TestHarness.RocketConfig.fir@232563.6]
  assign _T_1858 = {io_in_a_bits_size, 1'h0}; // @[Monitor.scala 646:49:chipyard.TestHarness.RocketConfig.fir@232565.6]
  assign _T_1859 = _T_1858 | 5'h1; // @[Monitor.scala 646:57:chipyard.TestHarness.RocketConfig.fir@232566.6]
  assign _GEN_80 = {io_in_a_bits_source, 2'h0}; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@232568.6]
  assign _T_1860 = {{1'd0}, _GEN_80}; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@232568.6]
  assign a_opcodes_set_interm = _T_1853 ? _T_1857 : 4'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@232559.4]
  assign _GEN_81 = {{31'd0}, a_opcodes_set_interm}; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@232569.6]
  assign _T_1861 = _GEN_81 << _T_1860; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@232569.6]
  assign _T_1862 = {io_in_a_bits_source, 3'h0}; // @[Monitor.scala 648:68:chipyard.TestHarness.RocketConfig.fir@232571.6]
  assign a_sizes_set_interm = _T_1853 ? _T_1859 : 5'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@232559.4]
  assign _GEN_82 = {{31'd0}, a_sizes_set_interm}; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@232572.6]
  assign _T_1863 = _GEN_82 << _T_1862; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@232572.6]
  assign _T_1864 = inflight >> io_in_a_bits_source; // @[Monitor.scala 649:26:chipyard.TestHarness.RocketConfig.fir@232574.6]
  assign _T_1866 = ~_T_1864[0]; // @[Monitor.scala 649:17:chipyard.TestHarness.RocketConfig.fir@232576.6]
  assign _T_1868 = _T_1866 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232578.6]
  assign _T_1869 = ~_T_1868; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232579.6]
  assign _GEN_27 = _T_1853 ? _T_1855 : 4'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@232559.4]
  assign _GEN_30 = _T_1853 ? _T_1861 : 35'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@232559.4]
  assign _GEN_31 = _T_1853 ? _T_1863 : 36'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@232559.4]
  assign _T_1872 = _T_1647 & d_first; // @[Monitor.scala 660:27:chipyard.TestHarness.RocketConfig.fir@232593.4]
  assign _T_1874 = ~_T_778; // @[Monitor.scala 660:75:chipyard.TestHarness.RocketConfig.fir@232595.4]
  assign _T_1875 = _T_1872 & _T_1874; // @[Monitor.scala 660:72:chipyard.TestHarness.RocketConfig.fir@232596.4]
  assign _T_1876 = 4'h1 << io_in_d_bits_source; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@232598.6]
  assign _GEN_84 = {{31'd0}, _T_1839}; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@232605.6]
  assign _T_1882 = _GEN_84 << _T_1834; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@232605.6]
  assign _GEN_85 = {{31'd0}, _T_1847}; // @[Monitor.scala 663:72:chipyard.TestHarness.RocketConfig.fir@232612.6]
  assign _T_1888 = _GEN_85 << _T_1842; // @[Monitor.scala 663:72:chipyard.TestHarness.RocketConfig.fir@232612.6]
  assign _GEN_32 = _T_1875 ? _T_1876 : 4'h0; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@232597.4]
  assign _GEN_33 = _T_1875 ? _T_1882 : 47'h0; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@232597.4]
  assign _GEN_34 = _T_1875 ? _T_1888 : 47'h0; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@232597.4]
  assign _T_1889 = io_in_d_valid & d_first; // @[Monitor.scala 665:26:chipyard.TestHarness.RocketConfig.fir@232615.4]
  assign _T_1892 = _T_1889 & _T_1874; // @[Monitor.scala 665:71:chipyard.TestHarness.RocketConfig.fir@232618.4]
  assign _T_1893 = inflight >> io_in_d_bits_source; // @[Monitor.scala 666:25:chipyard.TestHarness.RocketConfig.fir@232620.6]
  assign _T_1895 = io_in_a_bits_source == io_in_d_bits_source; // @[Monitor.scala 666:93:chipyard.TestHarness.RocketConfig.fir@232622.6]
  assign _T_1896 = io_in_a_valid & _T_1895; // @[Monitor.scala 666:68:chipyard.TestHarness.RocketConfig.fir@232623.6]
  assign _T_1897 = io_in_a_bits_size == io_in_d_bits_size; // @[Monitor.scala 666:142:chipyard.TestHarness.RocketConfig.fir@232624.6]
  assign _T_1898 = _T_1896 & _T_1897; // @[Monitor.scala 666:119:chipyard.TestHarness.RocketConfig.fir@232625.6]
  assign _T_1899 = _T_1898 & a_first; // @[Monitor.scala 666:166:chipyard.TestHarness.RocketConfig.fir@232626.6]
  assign _T_1900 = _T_1893[0] | _T_1899; // @[Monitor.scala 666:49:chipyard.TestHarness.RocketConfig.fir@232627.6]
  assign _T_1902 = _T_1900 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@232629.6]
  assign _T_1903 = ~_T_1902; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@232630.6]
  assign a_opcode_lookup = _T_1841[3:0]; // @[:chipyard.TestHarness.RocketConfig.fir@232512.4 :chipyard.TestHarness.RocketConfig.fir@232513.4 Monitor.scala 629:21:chipyard.TestHarness.RocketConfig.fir@232522.4]
  assign _GEN_37 = 3'h2 == a_opcode_lookup[2:0] ? 3'h1 : 3'h0; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@232636.6]
  assign _GEN_38 = 3'h3 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_37; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@232636.6]
  assign _GEN_39 = 3'h4 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_38; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@232636.6]
  assign _GEN_40 = 3'h5 == a_opcode_lookup[2:0] ? 3'h2 : _GEN_39; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@232636.6]
  assign _GEN_41 = 3'h6 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_40; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@232636.6]
  assign _GEN_42 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_41; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@232636.6]
  assign _T_1905 = io_in_d_bits_opcode == _GEN_42; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@232636.6]
  assign _GEN_49 = 3'h6 == a_opcode_lookup[2:0] ? 3'h5 : _GEN_40; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@232638.6]
  assign _GEN_50 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_49; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@232638.6]
  assign _T_1907 = io_in_d_bits_opcode == _GEN_50; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@232638.6]
  assign _T_1908 = _T_1905 | _T_1907; // @[Monitor.scala 667:71:chipyard.TestHarness.RocketConfig.fir@232639.6]
  assign _GEN_53 = 3'h2 == io_in_a_bits_opcode ? 3'h1 : 3'h0; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@232640.6]
  assign _GEN_54 = 3'h3 == io_in_a_bits_opcode ? 3'h1 : _GEN_53; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@232640.6]
  assign _GEN_55 = 3'h4 == io_in_a_bits_opcode ? 3'h1 : _GEN_54; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@232640.6]
  assign _GEN_56 = 3'h5 == io_in_a_bits_opcode ? 3'h2 : _GEN_55; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@232640.6]
  assign _GEN_57 = 3'h6 == io_in_a_bits_opcode ? 3'h4 : _GEN_56; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@232640.6]
  assign _GEN_58 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_57; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@232640.6]
  assign _T_1909 = io_in_d_bits_opcode == _GEN_58; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@232640.6]
  assign _GEN_65 = 3'h6 == io_in_a_bits_opcode ? 3'h5 : _GEN_56; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@232641.6]
  assign _GEN_66 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_65; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@232641.6]
  assign _T_1910 = io_in_d_bits_opcode == _GEN_66; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@232641.6]
  assign _T_1911 = _T_1909 | _T_1910; // @[Monitor.scala 668:99:chipyard.TestHarness.RocketConfig.fir@232642.6]
  assign _T_1912 = io_in_a_valid & _T_1911; // @[Monitor.scala 668:34:chipyard.TestHarness.RocketConfig.fir@232643.6]
  assign _T_1913 = _T_1908 | _T_1912; // @[Monitor.scala 668:15:chipyard.TestHarness.RocketConfig.fir@232644.6]
  assign _T_1915 = _T_1913 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@232646.6]
  assign _T_1916 = ~_T_1915; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@232647.6]
  assign a_size_lookup = _T_1849[7:0]; // @[:chipyard.TestHarness.RocketConfig.fir@232523.4 :chipyard.TestHarness.RocketConfig.fir@232524.4 Monitor.scala 633:19:chipyard.TestHarness.RocketConfig.fir@232533.4]
  assign _GEN_86 = {{4'd0}, io_in_d_bits_size}; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@232652.6]
  assign _T_1917 = _GEN_86 == a_size_lookup; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@232652.6]
  assign _T_1919 = io_in_a_valid & _T_1897; // @[Monitor.scala 670:72:chipyard.TestHarness.RocketConfig.fir@232654.6]
  assign _T_1920 = _T_1917 | _T_1919; // @[Monitor.scala 670:53:chipyard.TestHarness.RocketConfig.fir@232655.6]
  assign _T_1922 = _T_1920 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@232657.6]
  assign _T_1923 = ~_T_1922; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@232658.6]
  assign _T_1925 = _T_1889 & a_first; // @[Monitor.scala 672:36:chipyard.TestHarness.RocketConfig.fir@232665.4]
  assign _T_1926 = _T_1925 & io_in_a_valid; // @[Monitor.scala 672:47:chipyard.TestHarness.RocketConfig.fir@232666.4]
  assign _T_1928 = _T_1926 & _T_1895; // @[Monitor.scala 672:65:chipyard.TestHarness.RocketConfig.fir@232668.4]
  assign _T_1930 = _T_1928 & _T_1874; // @[Monitor.scala 672:116:chipyard.TestHarness.RocketConfig.fir@232670.4]
  assign _T_1931 = ~io_in_d_ready; // @[Monitor.scala 673:15:chipyard.TestHarness.RocketConfig.fir@232672.6]
  assign _T_1932 = _T_1931 | io_in_a_ready; // @[Monitor.scala 673:32:chipyard.TestHarness.RocketConfig.fir@232673.6]
  assign _T_1934 = _T_1932 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@232675.6]
  assign _T_1935 = ~_T_1934; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@232676.6]
  assign a_set = _GEN_27[2:0]; // @[:chipyard.TestHarness.RocketConfig.fir@232506.4 :chipyard.TestHarness.RocketConfig.fir@232507.4 Monitor.scala 644:13:chipyard.TestHarness.RocketConfig.fir@232561.6]
  assign d_clr = _GEN_32[2:0]; // @[:chipyard.TestHarness.RocketConfig.fir@232585.4 :chipyard.TestHarness.RocketConfig.fir@232586.4 Monitor.scala 661:13:chipyard.TestHarness.RocketConfig.fir@232599.6]
  assign _T_1936 = a_set != d_clr; // @[Monitor.scala 677:20:chipyard.TestHarness.RocketConfig.fir@232682.4]
  assign _T_1937 = |a_set; // @[Monitor.scala 677:40:chipyard.TestHarness.RocketConfig.fir@232683.4]
  assign _T_1938 = ~_T_1937; // @[Monitor.scala 677:33:chipyard.TestHarness.RocketConfig.fir@232684.4]
  assign _T_1939 = _T_1936 | _T_1938; // @[Monitor.scala 677:30:chipyard.TestHarness.RocketConfig.fir@232685.4]
  assign _T_1941 = _T_1939 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@232687.4]
  assign _T_1942 = ~_T_1941; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@232688.4]
  assign _T_1943 = inflight | a_set; // @[Monitor.scala 680:27:chipyard.TestHarness.RocketConfig.fir@232693.4]
  assign _T_1944 = ~d_clr; // @[Monitor.scala 680:38:chipyard.TestHarness.RocketConfig.fir@232694.4]
  assign _T_1945 = _T_1943 & _T_1944; // @[Monitor.scala 680:36:chipyard.TestHarness.RocketConfig.fir@232695.4]
  assign a_opcodes_set = _GEN_30[11:0]; // @[:chipyard.TestHarness.RocketConfig.fir@232508.4 :chipyard.TestHarness.RocketConfig.fir@232509.4 Monitor.scala 647:21:chipyard.TestHarness.RocketConfig.fir@232570.6]
  assign _T_1946 = inflight_opcodes | a_opcodes_set; // @[Monitor.scala 681:43:chipyard.TestHarness.RocketConfig.fir@232697.4]
  assign d_opcodes_clr = _GEN_33[11:0]; // @[:chipyard.TestHarness.RocketConfig.fir@232587.4 :chipyard.TestHarness.RocketConfig.fir@232588.4 Monitor.scala 662:21:chipyard.TestHarness.RocketConfig.fir@232606.6]
  assign _T_1947 = ~d_opcodes_clr; // @[Monitor.scala 681:62:chipyard.TestHarness.RocketConfig.fir@232698.4]
  assign _T_1948 = _T_1946 & _T_1947; // @[Monitor.scala 681:60:chipyard.TestHarness.RocketConfig.fir@232699.4]
  assign a_sizes_set = _GEN_31[23:0]; // @[:chipyard.TestHarness.RocketConfig.fir@232510.4 :chipyard.TestHarness.RocketConfig.fir@232511.4 Monitor.scala 648:19:chipyard.TestHarness.RocketConfig.fir@232573.6]
  assign _T_1949 = inflight_sizes | a_sizes_set; // @[Monitor.scala 682:39:chipyard.TestHarness.RocketConfig.fir@232701.4]
  assign d_sizes_clr = _GEN_34[23:0]; // @[:chipyard.TestHarness.RocketConfig.fir@232589.4 :chipyard.TestHarness.RocketConfig.fir@232590.4 Monitor.scala 663:19:chipyard.TestHarness.RocketConfig.fir@232613.6]
  assign _T_1950 = ~d_sizes_clr; // @[Monitor.scala 682:56:chipyard.TestHarness.RocketConfig.fir@232702.4]
  assign _T_1951 = _T_1949 & _T_1950; // @[Monitor.scala 682:54:chipyard.TestHarness.RocketConfig.fir@232703.4]
  assign _T_1953 = |inflight; // @[Monitor.scala 687:26:chipyard.TestHarness.RocketConfig.fir@232708.4]
  assign _T_1954 = ~_T_1953; // @[Monitor.scala 687:16:chipyard.TestHarness.RocketConfig.fir@232709.4]
  assign _T_1955 = plusarg_reader_out == 32'h0; // @[Monitor.scala 687:39:chipyard.TestHarness.RocketConfig.fir@232710.4]
  assign _T_1956 = _T_1954 | _T_1955; // @[Monitor.scala 687:30:chipyard.TestHarness.RocketConfig.fir@232711.4]
  assign _T_1957 = _T_1952 < plusarg_reader_out; // @[Monitor.scala 687:59:chipyard.TestHarness.RocketConfig.fir@232712.4]
  assign _T_1958 = _T_1956 | _T_1957; // @[Monitor.scala 687:47:chipyard.TestHarness.RocketConfig.fir@232713.4]
  assign _T_1960 = _T_1958 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232715.4]
  assign _T_1961 = ~_T_1960; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232716.4]
  assign _T_1963 = _T_1952 + 32'h1; // @[Monitor.scala 689:26:chipyard.TestHarness.RocketConfig.fir@232722.4]
  assign _T_1966 = _T_1598 | _T_1647; // @[Monitor.scala 690:27:chipyard.TestHarness.RocketConfig.fir@232726.4]
  assign _T_1978 = _T_1976 - 9'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@232741.4]
  assign _T_1979 = _T_1976 == 9'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@232742.4]
  assign _T_1989 = _T_1647 & _T_1979; // @[Monitor.scala 700:27:chipyard.TestHarness.RocketConfig.fir@232756.4]
  assign _T_1992 = ~io_in_d_bits_opcode[1]; // @[Edges.scala 72:43:chipyard.TestHarness.RocketConfig.fir@232759.4]
  assign _T_1993 = io_in_d_bits_opcode[2] & _T_1992; // @[Edges.scala 72:40:chipyard.TestHarness.RocketConfig.fir@232760.4]
  assign _T_1994 = _T_1989 & _T_1993; // @[Monitor.scala 700:38:chipyard.TestHarness.RocketConfig.fir@232761.4]
  assign _T_1995 = 8'h1 << io_in_d_bits_sink; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@232763.6]
  assign _T_1996 = _T_1967 >> io_in_d_bits_sink; // @[Monitor.scala 702:23:chipyard.TestHarness.RocketConfig.fir@232765.6]
  assign _T_1998 = ~_T_1996[0]; // @[Monitor.scala 702:14:chipyard.TestHarness.RocketConfig.fir@232767.6]
  assign _T_2000 = _T_1998 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@232769.6]
  assign _T_2001 = ~_T_2000; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@232770.6]
  assign _GEN_69 = _T_1994 ? _T_1995 : 8'h0; // @[Monitor.scala 700:72:chipyard.TestHarness.RocketConfig.fir@232762.4]
  assign _T_2003 = io_in_e_ready & io_in_e_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@232778.4]
  assign _T_2006 = 8'h1 << io_in_e_bits_sink; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@232782.6]
  assign _T_2007 = _GEN_69 | _T_1967; // @[Monitor.scala 708:24:chipyard.TestHarness.RocketConfig.fir@232784.6]
  assign _T_2008 = _T_2007 >> io_in_e_bits_sink; // @[Monitor.scala 708:35:chipyard.TestHarness.RocketConfig.fir@232785.6]
  assign _T_2011 = _T_2008[0] | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232788.6]
  assign _T_2012 = ~_T_2011; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232789.6]
  assign _GEN_70 = _T_2003 ? _T_2006 : 8'h0; // @[Monitor.scala 706:73:chipyard.TestHarness.RocketConfig.fir@232781.4]
  assign _T_2013 = _T_1967 | _GEN_69; // @[Monitor.scala 713:27:chipyard.TestHarness.RocketConfig.fir@232795.4]
  assign _T_2014 = ~_GEN_70; // @[Monitor.scala 713:38:chipyard.TestHarness.RocketConfig.fir@232796.4]
  assign _T_2015 = _T_2013 & _T_2014; // @[Monitor.scala 713:36:chipyard.TestHarness.RocketConfig.fir@232797.4]
  assign _GEN_87 = io_in_a_valid & _T_109; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@229903.10]
  assign _GEN_103 = io_in_a_valid & _T_203; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230036.10]
  assign _GEN_121 = io_in_a_valid & _T_301; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230182.10]
  assign _GEN_133 = io_in_a_valid & _T_381; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230290.10]
  assign _GEN_143 = io_in_a_valid & _T_459; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230390.10]
  assign _GEN_153 = io_in_a_valid & _T_539; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230487.10]
  assign _GEN_163 = io_in_a_valid & _T_612; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230582.10]
  assign _GEN_173 = io_in_a_valid & _T_685; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230682.10]
  assign _GEN_185 = io_in_d_valid & _T_778; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230751.10]
  assign _GEN_195 = io_in_d_valid & _T_798; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230793.10]
  assign _GEN_205 = io_in_d_valid & _T_826; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230851.10]
  assign _GEN_215 = io_in_d_valid & _T_855; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230910.10]
  assign _GEN_221 = io_in_d_valid & _T_872; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230945.10]
  assign _GEN_227 = io_in_d_valid & _T_890; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230981.10]
  assign _GEN_233 = io_in_b_valid & _T_1069; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231218.10]
  assign _GEN_247 = io_in_b_valid & _T_1105; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231273.10]
  assign _GEN_261 = io_in_b_valid & _T_1130; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231328.10]
  assign _GEN_273 = io_in_b_valid & _T_1151; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231375.10]
  assign _GEN_285 = io_in_b_valid & _T_1174; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231424.10]
  assign _GEN_295 = io_in_b_valid & _T_1195; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231471.10]
  assign _GEN_305 = io_in_b_valid & _T_1216; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231518.10]
  assign _GEN_317 = io_in_c_valid & _T_1330; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231681.10]
  assign _GEN_327 = io_in_c_valid & _T_1352; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231729.10]
  assign _GEN_337 = io_in_c_valid & _T_1370; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231822.10]
  assign _GEN_349 = io_in_c_valid & _T_1459; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231946.10]
  assign _GEN_361 = io_in_c_valid & _T_1544; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232009.10]
  assign _GEN_369 = io_in_c_valid & _T_1562; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232049.10]
  assign _GEN_377 = io_in_c_valid & _T_1576; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232081.10]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  _T_1607 = _RAND_0[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_1618 = _RAND_1[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_1619 = _RAND_2[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_1620 = _RAND_3[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_1621 = _RAND_4[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_1622 = _RAND_5[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  _T_1655 = _RAND_6[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  _T_1666 = _RAND_7[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  _T_1667 = _RAND_8[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  _T_1668 = _RAND_9[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  _T_1669 = _RAND_10[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  _T_1670 = _RAND_11[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  _T_1671 = _RAND_12[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  _T_1709 = _RAND_13[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  _T_1720 = _RAND_14[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  _T_1721 = _RAND_15[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  _T_1722 = _RAND_16[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  _T_1723 = _RAND_17[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  _T_1724 = _RAND_18[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  _T_1757 = _RAND_19[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  _T_1768 = _RAND_20[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  _T_1769 = _RAND_21[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{`RANDOM}};
  _T_1770 = _RAND_22[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{`RANDOM}};
  _T_1771 = _RAND_23[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{`RANDOM}};
  _T_1772 = _RAND_24[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{`RANDOM}};
  inflight = _RAND_25[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{`RANDOM}};
  inflight_opcodes = _RAND_26[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {1{`RANDOM}};
  inflight_sizes = _RAND_27[23:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {1{`RANDOM}};
  _T_1806 = _RAND_28[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {1{`RANDOM}};
  _T_1824 = _RAND_29[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_30 = {1{`RANDOM}};
  _T_1952 = _RAND_30[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_31 = {1{`RANDOM}};
  _T_1967 = _RAND_31[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_32 = {1{`RANDOM}};
  _T_1976 = _RAND_32[8:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      _T_1607 <= 9'h0;
    end else if (_T_1598) begin
      if (_T_1610) begin
        if (_T_1605) begin
          _T_1607 <= _T_13[11:3];
        end else begin
          _T_1607 <= 9'h0;
        end
      end else begin
        _T_1607 <= _T_1609;
      end
    end
    if (_T_1646) begin
      _T_1618 <= io_in_a_bits_opcode;
    end
    if (_T_1646) begin
      _T_1619 <= io_in_a_bits_param;
    end
    if (_T_1646) begin
      _T_1620 <= io_in_a_bits_size;
    end
    if (_T_1646) begin
      _T_1621 <= io_in_a_bits_source;
    end
    if (_T_1646) begin
      _T_1622 <= io_in_a_bits_address;
    end
    if (reset) begin
      _T_1655 <= 9'h0;
    end else if (_T_1647) begin
      if (_T_1658) begin
        if (io_in_d_bits_opcode[0]) begin
          _T_1655 <= _T_1651[11:3];
        end else begin
          _T_1655 <= 9'h0;
        end
      end else begin
        _T_1655 <= _T_1657;
      end
    end
    if (_T_1699) begin
      _T_1666 <= io_in_d_bits_opcode;
    end
    if (_T_1699) begin
      _T_1667 <= io_in_d_bits_param;
    end
    if (_T_1699) begin
      _T_1668 <= io_in_d_bits_size;
    end
    if (_T_1699) begin
      _T_1669 <= io_in_d_bits_source;
    end
    if (_T_1699) begin
      _T_1670 <= io_in_d_bits_sink;
    end
    if (_T_1699) begin
      _T_1671 <= io_in_d_bits_denied;
    end
    if (reset) begin
      _T_1709 <= 9'h0;
    end else if (_T_1700) begin
      if (_T_1712) begin
        _T_1709 <= 9'h0;
      end else begin
        _T_1709 <= _T_1711;
      end
    end
    if (_T_1748) begin
      _T_1720 <= io_in_b_bits_opcode;
    end
    if (_T_1748) begin
      _T_1721 <= io_in_b_bits_param;
    end
    if (_T_1748) begin
      _T_1722 <= io_in_b_bits_size;
    end
    if (_T_1748) begin
      _T_1723 <= io_in_b_bits_source;
    end
    if (_T_1748) begin
      _T_1724 <= io_in_b_bits_address;
    end
    if (reset) begin
      _T_1757 <= 9'h0;
    end else if (_T_1749) begin
      if (_T_1760) begin
        if (io_in_c_bits_opcode[0]) begin
          _T_1757 <= _T_1250[11:3];
        end else begin
          _T_1757 <= 9'h0;
        end
      end else begin
        _T_1757 <= _T_1759;
      end
    end
    if (_T_1796) begin
      _T_1768 <= io_in_c_bits_opcode;
    end
    if (_T_1796) begin
      _T_1769 <= io_in_c_bits_param;
    end
    if (_T_1796) begin
      _T_1770 <= io_in_c_bits_size;
    end
    if (_T_1796) begin
      _T_1771 <= io_in_c_bits_source;
    end
    if (_T_1796) begin
      _T_1772 <= io_in_c_bits_address;
    end
    if (reset) begin
      inflight <= 3'h0;
    end else begin
      inflight <= _T_1945;
    end
    if (reset) begin
      inflight_opcodes <= 12'h0;
    end else begin
      inflight_opcodes <= _T_1948;
    end
    if (reset) begin
      inflight_sizes <= 24'h0;
    end else begin
      inflight_sizes <= _T_1951;
    end
    if (reset) begin
      _T_1806 <= 9'h0;
    end else if (_T_1598) begin
      if (a_first) begin
        if (_T_1605) begin
          _T_1806 <= _T_13[11:3];
        end else begin
          _T_1806 <= 9'h0;
        end
      end else begin
        _T_1806 <= _T_1808;
      end
    end
    if (reset) begin
      _T_1824 <= 9'h0;
    end else if (_T_1647) begin
      if (d_first) begin
        if (io_in_d_bits_opcode[0]) begin
          _T_1824 <= _T_1651[11:3];
        end else begin
          _T_1824 <= 9'h0;
        end
      end else begin
        _T_1824 <= _T_1826;
      end
    end
    if (reset) begin
      _T_1952 <= 32'h0;
    end else if (_T_1966) begin
      _T_1952 <= 32'h0;
    end else begin
      _T_1952 <= _T_1963;
    end
    if (reset) begin
      _T_1967 <= 8'h0;
    end else begin
      _T_1967 <= _T_2015;
    end
    if (reset) begin
      _T_1976 <= 9'h0;
    end else if (_T_1647) begin
      if (_T_1979) begin
        if (io_in_d_bits_opcode[0]) begin
          _T_1976 <= _T_1651[11:3];
        end else begin
          _T_1976 <= 9'h0;
        end
      end else begin
        _T_1976 <= _T_1978;
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_87 & _T_165) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock type unsupported by manager (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@229903.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_87 & _T_165) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@229904.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_87 & _T_179) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock from a client which does not support Probe (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@229926.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_87 & _T_179) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@229927.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_87 & _T_182) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock carries invalid source ID (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@229933.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_87 & _T_182) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@229934.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_87 & _T_186) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock smaller than a beat (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@229941.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_87 & _T_186) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@229942.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_87 & _T_189) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock address not aligned to size (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@229948.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_87 & _T_189) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@229949.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_87 & _T_193) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock carries invalid grow param (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@229956.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_87 & _T_193) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@229957.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_87 & _T_198) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock contains invalid mask (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@229965.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_87 & _T_198) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@229966.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_87 & _T_202) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock is corrupt (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@229973.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_87 & _T_202) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@229974.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_103 & _T_165) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm type unsupported by manager (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230036.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_103 & _T_165) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230037.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_103 & _T_179) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm from a client which does not support Probe (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230059.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_103 & _T_179) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230060.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_103 & _T_182) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm carries invalid source ID (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230066.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_103 & _T_182) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230067.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_103 & _T_186) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm smaller than a beat (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230074.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_103 & _T_186) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230075.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_103 & _T_189) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm address not aligned to size (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230081.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_103 & _T_189) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230082.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_103 & _T_193) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm carries invalid grow param (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230089.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_103 & _T_193) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230090.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_103 & _T_291) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm requests NtoB (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230097.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_103 & _T_291) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230098.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_103 & _T_198) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm contains invalid mask (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230106.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_103 & _T_198) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230107.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_103 & _T_202) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm is corrupt (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230114.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_103 & _T_202) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230115.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_121 & _T_362) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Get type unsupported by manager (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230182.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_121 & _T_362) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230183.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_121 & _T_182) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get carries invalid source ID (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230189.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_121 & _T_182) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230190.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_121 & _T_189) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get address not aligned to size (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230196.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_121 & _T_189) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230197.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_121 & _T_372) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get carries invalid param (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230204.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_121 & _T_372) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230205.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_121 & _T_376) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get contains invalid mask (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230212.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_121 & _T_376) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230213.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_121 & _T_202) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get is corrupt (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230220.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_121 & _T_202) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230221.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_133 & _T_444) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutFull type unsupported by manager (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230290.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_133 & _T_444) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230291.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_133 & _T_182) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull carries invalid source ID (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230297.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_133 & _T_182) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230298.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_133 & _T_189) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull address not aligned to size (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230304.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_133 & _T_189) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230305.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_133 & _T_372) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull carries invalid param (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230312.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_133 & _T_372) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230313.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_133 & _T_376) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull contains invalid mask (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230320.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_133 & _T_376) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230321.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_143 & _T_444) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutPartial type unsupported by manager (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230390.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_143 & _T_444) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230391.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_143 & _T_182) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial carries invalid source ID (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230397.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_143 & _T_182) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230398.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_143 & _T_189) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial address not aligned to size (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230404.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_143 & _T_189) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230405.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_143 & _T_372) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial carries invalid param (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230412.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_143 & _T_372) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230413.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_143 & _T_538) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial contains invalid mask (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230422.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_143 & _T_538) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230423.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_153 & _T_597) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Arithmetic type unsupported by manager (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230487.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_153 & _T_597) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230488.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_153 & _T_182) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic carries invalid source ID (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230494.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_153 & _T_182) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230495.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_153 & _T_189) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic address not aligned to size (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230501.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_153 & _T_189) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230502.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_153 & _T_607) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic carries invalid opcode param (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230509.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_153 & _T_607) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230510.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_153 & _T_376) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic contains invalid mask (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230517.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_153 & _T_376) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230518.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_163 & _T_597) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Logical type unsupported by manager (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230582.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_163 & _T_597) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230583.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_163 & _T_182) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical carries invalid source ID (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230589.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_163 & _T_182) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230590.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_163 & _T_189) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical address not aligned to size (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230596.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_163 & _T_189) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230597.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_163 & _T_680) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical carries invalid opcode param (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230604.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_163 & _T_680) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230605.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_163 & _T_376) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical contains invalid mask (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230612.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_163 & _T_376) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230613.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_173 & _T_748) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Hint type unsupported by manager (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230682.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_173 & _T_748) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230683.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_173 & _T_182) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint carries invalid source ID (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230689.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_173 & _T_182) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230690.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_173 & _T_189) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint address not aligned to size (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230696.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_173 & _T_189) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230697.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_173 & _T_758) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint carries invalid opcode param (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230704.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_173 & _T_758) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230705.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_173 & _T_376) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint contains invalid mask (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230712.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_173 & _T_376) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230713.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_173 & _T_202) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint is corrupt (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230720.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_173 & _T_202) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@230721.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_in_d_valid & _T_770) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel has invalid opcode (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230731.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (io_in_d_valid & _T_770) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230732.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_185 & _T_781) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck carries invalid source ID (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230751.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_185 & _T_781) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230752.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_185 & _T_785) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck smaller than a beat (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230759.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_185 & _T_785) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230760.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_185 & _T_789) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseeAck carries invalid param (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230767.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_185 & _T_789) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230768.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_185 & _T_793) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck is corrupt (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230775.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_185 & _T_793) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230776.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_185 & _T_797) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck is denied (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230783.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_185 & _T_797) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230784.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_195 & _T_781) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid source ID (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230793.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_195 & _T_781) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230794.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_195 & _T_785) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant smaller than a beat (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230808.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_195 & _T_785) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230809.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_195 & _T_812) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid cap param (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230816.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_195 & _T_812) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230817.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_195 & _T_816) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries toN param (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230824.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_195 & _T_816) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230825.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_195 & _T_793) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant is corrupt (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230832.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_195 & _T_793) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230833.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_205 & _T_781) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid source ID (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230851.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_205 & _T_781) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230852.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_205 & _T_785) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData smaller than a beat (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230866.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_205 & _T_785) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230867.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_205 & _T_812) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid cap param (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230874.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_205 & _T_812) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230875.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_205 & _T_816) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries toN param (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230882.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_205 & _T_816) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230883.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_205 & _T_849) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData is denied but not corrupt (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230891.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_205 & _T_849) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230892.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_215 & _T_781) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck carries invalid source ID (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230910.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_215 & _T_781) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230911.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_215 & _T_789) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck carries invalid param (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230918.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_215 & _T_789) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230919.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_215 & _T_793) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck is corrupt (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230926.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_215 & _T_793) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230927.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_221 & _T_781) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData carries invalid source ID (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230945.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_221 & _T_781) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230946.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_221 & _T_789) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData carries invalid param (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230953.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_221 & _T_789) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230954.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_221 & _T_849) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData is denied but not corrupt (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230962.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_221 & _T_849) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230963.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_227 & _T_781) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck carries invalid source ID (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230981.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_227 & _T_781) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230982.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_227 & _T_789) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck carries invalid param (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230989.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_227 & _T_789) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230990.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_227 & _T_793) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck is corrupt (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230997.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_227 & _T_793) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@230998.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_in_b_valid & _T_910) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel has invalid opcode (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231017.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (io_in_b_valid & _T_910) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231018.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_233 & _T_1083) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel carries Probe type unsupported by client (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231218.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_233 & _T_1083) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231219.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_233 & _T_1086) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel Probe carries unmanaged address (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231225.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_233 & _T_1086) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231226.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_233 & _T_1089) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel Probe carries source that is not first source (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231232.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_233 & _T_1089) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231233.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_233 & _T_1092) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel Probe address not aligned to size (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231239.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_233 & _T_1092) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231240.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_233 & _T_1096) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel Probe carries invalid cap param (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231247.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_233 & _T_1096) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231248.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_233 & _T_1100) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel Probe contains invalid mask (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231255.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_233 & _T_1100) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231256.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_233 & _T_1104) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel Probe is corrupt (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231263.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_233 & _T_1104) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231264.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_247 & _T_1108) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel carries Get type unsupported by client (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231273.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_247 & _T_1108) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231274.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_247 & _T_1086) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel Get carries unmanaged address (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231280.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_247 & _T_1086) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231281.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_247 & _T_1089) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel Get carries source that is not first source (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231287.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_247 & _T_1089) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231288.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_247 & _T_1092) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel Get address not aligned to size (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231294.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_247 & _T_1092) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231295.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_247 & _T_1121) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel Get carries invalid param (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231302.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_247 & _T_1121) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231303.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_247 & _T_1100) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel Get contains invalid mask (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231310.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_247 & _T_1100) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231311.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_247 & _T_1104) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel Get is corrupt (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231318.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_247 & _T_1104) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231319.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_261 & _T_1108) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel carries PutFull type unsupported by client (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231328.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_261 & _T_1108) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231329.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_261 & _T_1086) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel PutFull carries unmanaged address (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231335.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_261 & _T_1086) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231336.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_261 & _T_1089) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel PutFull carries source that is not first source (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231342.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_261 & _T_1089) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231343.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_261 & _T_1092) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel PutFull address not aligned to size (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231349.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_261 & _T_1092) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231350.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_261 & _T_1121) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel PutFull carries invalid param (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231357.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_261 & _T_1121) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231358.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_261 & _T_1100) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel PutFull contains invalid mask (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231365.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_261 & _T_1100) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231366.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_273 & _T_1108) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel carries PutPartial type unsupported by client (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231375.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_273 & _T_1108) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231376.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_273 & _T_1086) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel PutPartial carries unmanaged address (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231382.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_273 & _T_1086) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231383.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_273 & _T_1089) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel PutPartial carries source that is not first source (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231389.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_273 & _T_1089) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231390.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_273 & _T_1092) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel PutPartial address not aligned to size (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231396.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_273 & _T_1092) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231397.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_273 & _T_1121) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel PutPartial carries invalid param (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231404.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_273 & _T_1121) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231405.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_273 & _T_1173) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel PutPartial contains invalid mask (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231414.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_273 & _T_1173) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231415.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_285 & _T_1108) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel carries Arithmetic type unsupported by client (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231424.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_285 & _T_1108) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231425.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_285 & _T_1086) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel Arithmetic carries unmanaged address (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231431.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_285 & _T_1086) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231432.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_285 & _T_1089) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel Arithmetic carries source that is not first source (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231438.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_285 & _T_1089) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231439.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_285 & _T_1092) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel Arithmetic address not aligned to size (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231445.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_285 & _T_1092) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231446.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_285 & _T_1100) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel Arithmetic contains invalid mask (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231461.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_285 & _T_1100) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231462.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_295 & _T_1108) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel carries Logical type unsupported by client (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231471.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_295 & _T_1108) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231472.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_295 & _T_1086) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel Logical carries unmanaged address (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231478.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_295 & _T_1086) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231479.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_295 & _T_1089) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel Logical carries source that is not first source (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231485.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_295 & _T_1089) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231486.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_295 & _T_1092) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel Logical address not aligned to size (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231492.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_295 & _T_1092) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231493.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_295 & _T_1100) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel Logical contains invalid mask (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231508.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_295 & _T_1100) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231509.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_305 & _T_1108) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel carries Hint type unsupported by client (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231518.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_305 & _T_1108) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231519.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_305 & _T_1086) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel Hint carries unmanaged address (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231525.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_305 & _T_1086) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231526.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_305 & _T_1089) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel Hint carries source that is not first source (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231532.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_305 & _T_1089) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231533.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_305 & _T_1092) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel Hint address not aligned to size (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231539.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_305 & _T_1092) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231540.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_305 & _T_1100) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel Hint contains invalid mask (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231547.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_305 & _T_1100) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231548.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_305 & _T_1104) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel Hint is corrupt (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231555.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_305 & _T_1104) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231556.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_317 & _T_1333) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAck carries unmanaged address (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231681.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_317 & _T_1333) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231682.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_317 & _T_1336) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAck carries invalid source ID (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231688.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_317 & _T_1336) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231689.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_317 & _T_1340) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAck smaller than a beat (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231696.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_317 & _T_1340) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231697.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_317 & _T_1343) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAck address not aligned to size (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231703.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_317 & _T_1343) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231704.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_317 & _T_1347) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAck carries invalid report param (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231711.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_317 & _T_1347) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231712.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_327 & _T_1333) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAckData carries unmanaged address (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231729.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_327 & _T_1333) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231730.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_327 & _T_1336) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAckData carries invalid source ID (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231736.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_327 & _T_1336) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231737.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_327 & _T_1340) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAckData smaller than a beat (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231744.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_327 & _T_1340) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231745.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_327 & _T_1343) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAckData address not aligned to size (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231751.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_327 & _T_1343) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231752.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_327 & _T_1347) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAckData carries invalid report param (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231759.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_327 & _T_1347) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231760.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_337 & _T_1426) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel carries Release type unsupported by manager (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231822.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_337 & _T_1426) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231823.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_337 & _T_1440) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel carries Release from a client which does not support Probe (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231845.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_337 & _T_1440) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231846.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_337 & _T_1336) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel Release carries invalid source ID (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231852.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_337 & _T_1336) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231853.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_337 & _T_1340) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel Release smaller than a beat (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231860.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_337 & _T_1340) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231861.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_337 & _T_1343) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel Release address not aligned to size (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231867.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_337 & _T_1343) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231868.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_337 & _T_1454) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel Release carries invalid shrink param (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231875.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_337 & _T_1454) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231876.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_349 & _T_1426) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel carries ReleaseData type unsupported by manager (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231946.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_349 & _T_1426) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231947.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_349 & _T_1440) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel carries Release from a client which does not support Probe (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231969.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_349 & _T_1440) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231970.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_349 & _T_1336) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ReleaseData carries invalid source ID (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231976.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_349 & _T_1336) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231977.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_349 & _T_1340) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ReleaseData smaller than a beat (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231984.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_349 & _T_1340) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231985.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_349 & _T_1343) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ReleaseData address not aligned to size (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231991.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_349 & _T_1343) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231992.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_349 & _T_1454) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ReleaseData carries invalid shrink param (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@231999.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_349 & _T_1454) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232000.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_361 & _T_1333) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAck carries unmanaged address (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232009.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_361 & _T_1333) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232010.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_361 & _T_1336) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAck carries invalid source ID (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232016.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_361 & _T_1336) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232017.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_361 & _T_1343) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAck address not aligned to size (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232023.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_361 & _T_1343) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232024.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_361 & _T_1557) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAck carries invalid param (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232031.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_361 & _T_1557) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232032.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_369 & _T_1333) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAckData carries unmanaged address (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232049.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_369 & _T_1333) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232050.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_369 & _T_1336) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAckData carries invalid source ID (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232056.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_369 & _T_1336) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232057.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_369 & _T_1343) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAckData address not aligned to size (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232063.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_369 & _T_1343) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232064.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_369 & _T_1557) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAckData carries invalid param (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232071.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_369 & _T_1557) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232072.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_377 & _T_1333) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel HintAck carries unmanaged address (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232081.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_377 & _T_1333) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232082.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_377 & _T_1336) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel HintAck carries invalid source ID (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232088.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_377 & _T_1336) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232089.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_377 & _T_1343) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel HintAck address not aligned to size (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232095.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_377 & _T_1343) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232096.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_377 & _T_1557) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel HintAck carries invalid param (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232103.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_377 & _T_1557) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232104.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1624 & _T_1628) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel opcode changed within multibeat operation (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232162.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1624 & _T_1628) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232163.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1624 & _T_1632) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel param changed within multibeat operation (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232170.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1624 & _T_1632) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232171.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1624 & _T_1636) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel size changed within multibeat operation (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232178.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1624 & _T_1636) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232179.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1624 & _T_1640) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel source changed within multibeat operation (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232186.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1624 & _T_1640) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232187.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1624 & _T_1644) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel address changed with multibeat operation (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232194.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1624 & _T_1644) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232195.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1673 & _T_1677) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel opcode changed within multibeat operation (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@232243.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1673 & _T_1677) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@232244.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1673 & _T_1681) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel param changed within multibeat operation (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@232251.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1673 & _T_1681) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@232252.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1673 & _T_1685) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel size changed within multibeat operation (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@232259.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1673 & _T_1685) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@232260.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1673 & _T_1689) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel source changed within multibeat operation (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@232267.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1673 & _T_1689) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@232268.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1673 & _T_1693) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel sink changed with multibeat operation (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@232275.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1673 & _T_1693) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@232276.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1673 & _T_1697) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel denied changed with multibeat operation (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@232283.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1673 & _T_1697) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@232284.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1726 & _T_1730) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel opcode changed within multibeat operation (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232333.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1726 & _T_1730) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232334.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1726 & _T_1734) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel param changed within multibeat operation (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232341.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1726 & _T_1734) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232342.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1726 & _T_1738) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel size changed within multibeat operation (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232349.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1726 & _T_1738) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232350.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1726 & _T_1742) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel source changed within multibeat operation (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232357.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1726 & _T_1742) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232358.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1726 & _T_1746) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel addresss changed with multibeat operation (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232365.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1726 & _T_1746) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232366.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1774 & _T_1778) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel opcode changed within multibeat operation (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232413.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1774 & _T_1778) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232414.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1774 & _T_1782) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel param changed within multibeat operation (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232421.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1774 & _T_1782) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232422.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1774 & _T_1786) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel size changed within multibeat operation (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232429.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1774 & _T_1786) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232430.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1774 & _T_1790) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel source changed within multibeat operation (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232437.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1774 & _T_1790) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232438.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1774 & _T_1794) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel address changed with multibeat operation (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232445.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1774 & _T_1794) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232446.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1853 & _T_1869) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel re-used a source ID (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232581.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1853 & _T_1869) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232582.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1892 & _T_1903) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel acknowledged for nothing inflight (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@232632.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1892 & _T_1903) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@232633.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1892 & _T_1916) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper opcode response (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@232649.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1892 & _T_1916) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@232650.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1892 & _T_1923) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper response size (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@232660.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1892 & _T_1923) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@232661.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1930 & _T_1935) begin
          $fwrite(32'h80000002,"Assertion failed: ready check\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@232678.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1930 & _T_1935) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@232679.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1942) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' and 'D' concurrent, despite minlatency 4 (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@232690.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1942) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@232691.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1961) begin
          $fwrite(32'h80000002,"Assertion failed: TileLink timeout expired (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232718.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1961) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232719.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1994 & _T_2001) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel re-used a sink ID (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@232772.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1994 & _T_2001) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@232773.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_2003 & _T_2012) begin
          $fwrite(32'h80000002,"Assertion failed: 'E' channel acknowledged for nothing inflight (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232791.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_2003 & _T_2012) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@232792.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
