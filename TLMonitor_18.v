module TLMonitor_18( // @[:chipyard.TestHarness.RocketConfig.fir@39132.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@39133.4]
  input         reset, // @[:chipyard.TestHarness.RocketConfig.fir@39134.4]
  input         io_in_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@39135.4]
  input         io_in_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@39135.4]
  input  [2:0]  io_in_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@39135.4]
  input  [3:0]  io_in_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@39135.4]
  input  [31:0] io_in_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@39135.4]
  input  [7:0]  io_in_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@39135.4]
  input         io_in_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@39135.4]
  input         io_in_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@39135.4]
  input  [2:0]  io_in_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@39135.4]
  input  [1:0]  io_in_d_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@39135.4]
  input  [3:0]  io_in_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@39135.4]
  input  [2:0]  io_in_d_bits_sink, // @[:chipyard.TestHarness.RocketConfig.fir@39135.4]
  input         io_in_d_bits_denied, // @[:chipyard.TestHarness.RocketConfig.fir@39135.4]
  input         io_in_d_bits_corrupt // @[:chipyard.TestHarness.RocketConfig.fir@39135.4]
);
  wire [31:0] plusarg_reader_out; // @[PlusArg.scala 44:11:chipyard.TestHarness.RocketConfig.fir@40813.4]
  wire [26:0] _T_7; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@39151.6]
  wire [11:0] _T_9; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@39153.6]
  wire [31:0] _GEN_56; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@39154.6]
  wire [31:0] _T_10; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@39154.6]
  wire  _T_11; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@39155.6]
  wire [3:0] _T_14; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@39158.6]
  wire [2:0] _T_16; // @[Misc.scala 201:81:chipyard.TestHarness.RocketConfig.fir@39160.6]
  wire  _T_17; // @[Misc.scala 205:21:chipyard.TestHarness.RocketConfig.fir@39161.6]
  wire  _T_20; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@39164.6]
  wire  _T_22; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@39166.6]
  wire  _T_23; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@39167.6]
  wire  _T_25; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@39169.6]
  wire  _T_26; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@39170.6]
  wire  _T_29; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@39173.6]
  wire  _T_30; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@39174.6]
  wire  _T_31; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@39175.6]
  wire  _T_32; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@39176.6]
  wire  _T_33; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@39177.6]
  wire  _T_34; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@39178.6]
  wire  _T_35; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@39179.6]
  wire  _T_36; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@39180.6]
  wire  _T_37; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@39181.6]
  wire  _T_38; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@39182.6]
  wire  _T_39; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@39183.6]
  wire  _T_40; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@39184.6]
  wire  _T_41; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@39185.6]
  wire  _T_44; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@39188.6]
  wire  _T_45; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@39189.6]
  wire  _T_46; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@39190.6]
  wire  _T_47; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@39191.6]
  wire  _T_48; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@39192.6]
  wire  _T_49; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@39193.6]
  wire  _T_50; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@39194.6]
  wire  _T_51; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@39195.6]
  wire  _T_52; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@39196.6]
  wire  _T_53; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@39197.6]
  wire  _T_54; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@39198.6]
  wire  _T_55; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@39199.6]
  wire  _T_56; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@39200.6]
  wire  _T_57; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@39201.6]
  wire  _T_58; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@39202.6]
  wire  _T_59; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@39203.6]
  wire  _T_60; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@39204.6]
  wire  _T_61; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@39205.6]
  wire  _T_62; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@39206.6]
  wire  _T_63; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@39207.6]
  wire  _T_64; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@39208.6]
  wire  _T_65; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@39209.6]
  wire  _T_66; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@39210.6]
  wire  _T_67; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@39211.6]
  wire  _T_68; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@39212.6]
  wire [7:0] _T_75; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@39219.6]
  wire [32:0] _T_79; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@39223.6]
  wire  _T_87; // @[Monitor.scala 79:25:chipyard.TestHarness.RocketConfig.fir@39235.6]
  wire [31:0] _T_89; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@39238.8]
  wire [32:0] _T_90; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@39239.8]
  wire [32:0] _T_92; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@39241.8]
  wire  _T_93; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@39242.8]
  wire [31:0] _T_94; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@39243.8]
  wire [32:0] _T_95; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@39244.8]
  wire [32:0] _T_97; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@39246.8]
  wire  _T_98; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@39247.8]
  wire [31:0] _T_99; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@39248.8]
  wire [32:0] _T_100; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@39249.8]
  wire [32:0] _T_102; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@39251.8]
  wire  _T_103; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@39252.8]
  wire [31:0] _T_104; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@39253.8]
  wire [32:0] _T_105; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@39254.8]
  wire [32:0] _T_107; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@39256.8]
  wire  _T_108; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@39257.8]
  wire [31:0] _T_109; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@39258.8]
  wire [32:0] _T_110; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@39259.8]
  wire [32:0] _T_112; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@39261.8]
  wire  _T_113; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@39262.8]
  wire [32:0] _T_117; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@39266.8]
  wire  _T_118; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@39267.8]
  wire [31:0] _T_119; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@39268.8]
  wire [32:0] _T_120; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@39269.8]
  wire [32:0] _T_122; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@39271.8]
  wire  _T_123; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@39272.8]
  wire  _T_124; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@39273.8]
  wire  _T_125; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@39274.8]
  wire  _T_126; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@39275.8]
  wire  _T_127; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@39276.8]
  wire  _T_128; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@39277.8]
  wire  _T_131; // @[Parameters.scala 92:48:chipyard.TestHarness.RocketConfig.fir@39280.8]
  wire [31:0] _T_133; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@39282.8]
  wire [32:0] _T_134; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@39283.8]
  wire [32:0] _T_136; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@39285.8]
  wire  _T_137; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@39286.8]
  wire  _T_138; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@39287.8]
  wire  _T_142; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39291.8]
  wire  _T_143; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39292.8]
  wire  _T_146; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39299.8]
  wire  _T_152; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39313.8]
  wire  _T_153; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39314.8]
  wire  _T_155; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39320.8]
  wire  _T_156; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39321.8]
  wire [7:0] _T_161; // @[Monitor.scala 86:18:chipyard.TestHarness.RocketConfig.fir@39334.8]
  wire  _T_162; // @[Monitor.scala 86:31:chipyard.TestHarness.RocketConfig.fir@39335.8]
  wire  _T_164; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39337.8]
  wire  _T_165; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39338.8]
  wire  _T_170; // @[Monitor.scala 90:25:chipyard.TestHarness.RocketConfig.fir@39352.6]
  wire  _T_257; // @[Monitor.scala 102:25:chipyard.TestHarness.RocketConfig.fir@39477.6]
  wire  _T_259; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@39480.8]
  wire  _T_267; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@39488.8]
  wire  _T_269; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@39490.8]
  wire  _T_307; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@39528.8]
  wire  _T_308; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@39529.8]
  wire  _T_309; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@39530.8]
  wire  _T_310; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@39531.8]
  wire  _T_311; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@39532.8]
  wire  _T_312; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@39533.8]
  wire  _T_313; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@39534.8]
  wire  _T_315; // @[Parameters.scala 553:30:chipyard.TestHarness.RocketConfig.fir@39536.8]
  wire  _T_317; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39538.8]
  wire  _T_318; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39539.8]
  wire  _T_329; // @[Monitor.scala 107:30:chipyard.TestHarness.RocketConfig.fir@39566.8]
  wire  _T_331; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39568.8]
  wire  _T_332; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39569.8]
  wire  _T_337; // @[Monitor.scala 111:25:chipyard.TestHarness.RocketConfig.fir@39583.6]
  wire  _T_386; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@39633.8]
  wire  _T_387; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@39634.8]
  wire  _T_396; // @[Parameters.scala 553:30:chipyard.TestHarness.RocketConfig.fir@39643.8]
  wire  _T_399; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39646.8]
  wire  _T_400; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39647.8]
  wire  _T_415; // @[Monitor.scala 119:25:chipyard.TestHarness.RocketConfig.fir@39683.6]
  wire [7:0] _T_489; // @[Monitor.scala 124:33:chipyard.TestHarness.RocketConfig.fir@39774.8]
  wire [7:0] _T_490; // @[Monitor.scala 124:31:chipyard.TestHarness.RocketConfig.fir@39775.8]
  wire  _T_491; // @[Monitor.scala 124:40:chipyard.TestHarness.RocketConfig.fir@39776.8]
  wire  _T_493; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39778.8]
  wire  _T_494; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39779.8]
  wire  _T_495; // @[Monitor.scala 127:25:chipyard.TestHarness.RocketConfig.fir@39785.6]
  wire  _T_497; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@39788.8]
  wire  _T_540; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@39831.8]
  wire  _T_541; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@39832.8]
  wire  _T_552; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39843.8]
  wire  _T_553; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39844.8]
  wire  _T_568; // @[Monitor.scala 135:25:chipyard.TestHarness.RocketConfig.fir@39880.6]
  wire  _T_641; // @[Monitor.scala 143:25:chipyard.TestHarness.RocketConfig.fir@39975.6]
  wire  _T_698; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@40033.8]
  wire  _T_701; // @[Parameters.scala 553:30:chipyard.TestHarness.RocketConfig.fir@40036.8]
  wire  _T_703; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@40038.8]
  wire  _T_704; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@40039.8]
  wire  _T_723; // @[Bundles.scala 44:24:chipyard.TestHarness.RocketConfig.fir@40085.6]
  wire  _T_725; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40087.6]
  wire  _T_726; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40088.6]
  wire  _T_730; // @[Monitor.scala 307:25:chipyard.TestHarness.RocketConfig.fir@40098.6]
  wire  _T_734; // @[Monitor.scala 309:27:chipyard.TestHarness.RocketConfig.fir@40107.8]
  wire  _T_736; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40109.8]
  wire  _T_737; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40110.8]
  wire  _T_738; // @[Monitor.scala 310:28:chipyard.TestHarness.RocketConfig.fir@40115.8]
  wire  _T_740; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40117.8]
  wire  _T_741; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40118.8]
  wire  _T_742; // @[Monitor.scala 311:15:chipyard.TestHarness.RocketConfig.fir@40123.8]
  wire  _T_744; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40125.8]
  wire  _T_745; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40126.8]
  wire  _T_746; // @[Monitor.scala 312:15:chipyard.TestHarness.RocketConfig.fir@40131.8]
  wire  _T_748; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40133.8]
  wire  _T_749; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40134.8]
  wire  _T_750; // @[Monitor.scala 315:25:chipyard.TestHarness.RocketConfig.fir@40140.6]
  wire  _T_761; // @[Bundles.scala 104:26:chipyard.TestHarness.RocketConfig.fir@40164.8]
  wire  _T_763; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40166.8]
  wire  _T_764; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40167.8]
  wire  _T_765; // @[Monitor.scala 320:28:chipyard.TestHarness.RocketConfig.fir@40172.8]
  wire  _T_767; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40174.8]
  wire  _T_768; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40175.8]
  wire  _T_778; // @[Monitor.scala 325:25:chipyard.TestHarness.RocketConfig.fir@40198.6]
  wire  _T_798; // @[Monitor.scala 331:30:chipyard.TestHarness.RocketConfig.fir@40239.8]
  wire  _T_800; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40241.8]
  wire  _T_801; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40242.8]
  wire  _T_807; // @[Monitor.scala 335:25:chipyard.TestHarness.RocketConfig.fir@40257.6]
  wire  _T_824; // @[Monitor.scala 343:25:chipyard.TestHarness.RocketConfig.fir@40292.6]
  wire  _T_842; // @[Monitor.scala 351:25:chipyard.TestHarness.RocketConfig.fir@40328.6]
  wire  _T_874; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@40394.4]
  wire  _T_881; // @[Edges.scala 93:28:chipyard.TestHarness.RocketConfig.fir@40401.4]
  reg [8:0] _T_883; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@40403.4]
  reg [31:0] _RAND_0;
  wire [8:0] _T_885; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@40405.4]
  wire  _T_886; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@40406.4]
  reg [2:0] _T_894; // @[Monitor.scala 381:22:chipyard.TestHarness.RocketConfig.fir@40417.4]
  reg [31:0] _RAND_1;
  reg [3:0] _T_896; // @[Monitor.scala 383:22:chipyard.TestHarness.RocketConfig.fir@40419.4]
  reg [31:0] _RAND_2;
  reg [31:0] _T_898; // @[Monitor.scala 385:22:chipyard.TestHarness.RocketConfig.fir@40421.4]
  reg [31:0] _RAND_3;
  wire  _T_899; // @[Monitor.scala 386:22:chipyard.TestHarness.RocketConfig.fir@40422.4]
  wire  _T_900; // @[Monitor.scala 386:19:chipyard.TestHarness.RocketConfig.fir@40423.4]
  wire  _T_901; // @[Monitor.scala 387:32:chipyard.TestHarness.RocketConfig.fir@40425.6]
  wire  _T_903; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@40427.6]
  wire  _T_904; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@40428.6]
  wire  _T_909; // @[Monitor.scala 389:32:chipyard.TestHarness.RocketConfig.fir@40441.6]
  wire  _T_911; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@40443.6]
  wire  _T_912; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@40444.6]
  wire  _T_917; // @[Monitor.scala 391:32:chipyard.TestHarness.RocketConfig.fir@40457.6]
  wire  _T_919; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@40459.6]
  wire  _T_920; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@40460.6]
  wire  _T_922; // @[Monitor.scala 393:20:chipyard.TestHarness.RocketConfig.fir@40467.4]
  wire  _T_923; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@40475.4]
  wire [26:0] _T_925; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@40477.4]
  wire [11:0] _T_927; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@40479.4]
  reg [8:0] _T_931; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@40483.4]
  reg [31:0] _RAND_4;
  wire [8:0] _T_933; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@40485.4]
  wire  _T_934; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@40486.4]
  reg [2:0] _T_942; // @[Monitor.scala 532:22:chipyard.TestHarness.RocketConfig.fir@40497.4]
  reg [31:0] _RAND_5;
  reg [1:0] _T_943; // @[Monitor.scala 533:22:chipyard.TestHarness.RocketConfig.fir@40498.4]
  reg [31:0] _RAND_6;
  reg [3:0] _T_944; // @[Monitor.scala 534:22:chipyard.TestHarness.RocketConfig.fir@40499.4]
  reg [31:0] _RAND_7;
  reg [2:0] _T_946; // @[Monitor.scala 536:22:chipyard.TestHarness.RocketConfig.fir@40501.4]
  reg [31:0] _RAND_8;
  reg  _T_947; // @[Monitor.scala 537:22:chipyard.TestHarness.RocketConfig.fir@40502.4]
  reg [31:0] _RAND_9;
  wire  _T_948; // @[Monitor.scala 538:22:chipyard.TestHarness.RocketConfig.fir@40503.4]
  wire  _T_949; // @[Monitor.scala 538:19:chipyard.TestHarness.RocketConfig.fir@40504.4]
  wire  _T_950; // @[Monitor.scala 539:29:chipyard.TestHarness.RocketConfig.fir@40506.6]
  wire  _T_952; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40508.6]
  wire  _T_953; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40509.6]
  wire  _T_954; // @[Monitor.scala 540:29:chipyard.TestHarness.RocketConfig.fir@40514.6]
  wire  _T_956; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40516.6]
  wire  _T_957; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40517.6]
  wire  _T_958; // @[Monitor.scala 541:29:chipyard.TestHarness.RocketConfig.fir@40522.6]
  wire  _T_960; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40524.6]
  wire  _T_961; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40525.6]
  wire  _T_966; // @[Monitor.scala 543:29:chipyard.TestHarness.RocketConfig.fir@40538.6]
  wire  _T_968; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40540.6]
  wire  _T_969; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40541.6]
  wire  _T_970; // @[Monitor.scala 544:29:chipyard.TestHarness.RocketConfig.fir@40546.6]
  wire  _T_972; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40548.6]
  wire  _T_973; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40549.6]
  wire  _T_975; // @[Monitor.scala 546:20:chipyard.TestHarness.RocketConfig.fir@40556.4]
  reg  inflight; // @[Monitor.scala 608:27:chipyard.TestHarness.RocketConfig.fir@40565.4]
  reg [31:0] _RAND_10;
  reg [3:0] inflight_opcodes; // @[Monitor.scala 610:35:chipyard.TestHarness.RocketConfig.fir@40566.4]
  reg [31:0] _RAND_11;
  reg [7:0] inflight_sizes; // @[Monitor.scala 612:33:chipyard.TestHarness.RocketConfig.fir@40567.4]
  reg [31:0] _RAND_12;
  reg [8:0] _T_985; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@40577.4]
  reg [31:0] _RAND_13;
  wire [8:0] _T_987; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@40579.4]
  wire  a_first; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@40580.4]
  reg [8:0] _T_1003; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@40599.4]
  reg [31:0] _RAND_14;
  wire [8:0] _T_1005; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@40601.4]
  wire  d_first; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@40602.4]
  wire [15:0] _T_1018; // @[Monitor.scala 606:57:chipyard.TestHarness.RocketConfig.fir@40626.4]
  wire [15:0] _GEN_57; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@40627.4]
  wire [15:0] _T_1019; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@40627.4]
  wire [15:0] _T_1020; // @[Monitor.scala 629:152:chipyard.TestHarness.RocketConfig.fir@40628.4]
  wire [15:0] _T_1026; // @[Monitor.scala 606:57:chipyard.TestHarness.RocketConfig.fir@40637.4]
  wire [15:0] _GEN_59; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@40638.4]
  wire [15:0] _T_1027; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@40638.4]
  wire [15:0] _T_1028; // @[Monitor.scala 633:144:chipyard.TestHarness.RocketConfig.fir@40639.4]
  wire  _T_1032; // @[Monitor.scala 643:27:chipyard.TestHarness.RocketConfig.fir@40664.4]
  wire [3:0] _T_1035; // @[Monitor.scala 645:53:chipyard.TestHarness.RocketConfig.fir@40669.6]
  wire [3:0] _T_1036; // @[Monitor.scala 645:61:chipyard.TestHarness.RocketConfig.fir@40670.6]
  wire [4:0] _T_1037; // @[Monitor.scala 646:49:chipyard.TestHarness.RocketConfig.fir@40672.6]
  wire [4:0] _T_1038; // @[Monitor.scala 646:57:chipyard.TestHarness.RocketConfig.fir@40673.6]
  wire [3:0] a_opcodes_set_interm; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@40666.4]
  wire [18:0] _T_1040; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@40676.6]
  wire [4:0] a_sizes_set_interm; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@40666.4]
  wire [19:0] _T_1042; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@40679.6]
  wire  _T_1045; // @[Monitor.scala 649:17:chipyard.TestHarness.RocketConfig.fir@40683.6]
  wire  _T_1047; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@40685.6]
  wire  _T_1048; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@40686.6]
  wire [1:0] _GEN_15; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@40666.4]
  wire [18:0] _GEN_18; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@40666.4]
  wire [19:0] _GEN_19; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@40666.4]
  wire  _T_1051; // @[Monitor.scala 660:27:chipyard.TestHarness.RocketConfig.fir@40700.4]
  wire  _T_1053; // @[Monitor.scala 660:75:chipyard.TestHarness.RocketConfig.fir@40702.4]
  wire  _T_1054; // @[Monitor.scala 660:72:chipyard.TestHarness.RocketConfig.fir@40703.4]
  wire [30:0] _T_1061; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@40712.6]
  wire [30:0] _T_1067; // @[Monitor.scala 663:72:chipyard.TestHarness.RocketConfig.fir@40719.6]
  wire [1:0] _GEN_20; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@40704.4]
  wire [30:0] _GEN_21; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@40704.4]
  wire [30:0] _GEN_22; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@40704.4]
  wire  _T_1068; // @[Monitor.scala 665:26:chipyard.TestHarness.RocketConfig.fir@40722.4]
  wire  _T_1071; // @[Monitor.scala 665:71:chipyard.TestHarness.RocketConfig.fir@40725.4]
  wire  _T_1076; // @[Monitor.scala 666:142:chipyard.TestHarness.RocketConfig.fir@40731.6]
  wire  _T_1077; // @[Monitor.scala 666:119:chipyard.TestHarness.RocketConfig.fir@40732.6]
  wire  _T_1078; // @[Monitor.scala 666:166:chipyard.TestHarness.RocketConfig.fir@40733.6]
  wire  _T_1079; // @[Monitor.scala 666:49:chipyard.TestHarness.RocketConfig.fir@40734.6]
  wire  _T_1081; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40736.6]
  wire  _T_1082; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40737.6]
  wire [3:0] a_opcode_lookup; // @[:chipyard.TestHarness.RocketConfig.fir@40619.4 :chipyard.TestHarness.RocketConfig.fir@40620.4 Monitor.scala 629:21:chipyard.TestHarness.RocketConfig.fir@40629.4]
  wire [2:0] _GEN_25; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@40743.6]
  wire [2:0] _GEN_26; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@40743.6]
  wire [2:0] _GEN_27; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@40743.6]
  wire [2:0] _GEN_28; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@40743.6]
  wire [2:0] _GEN_29; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@40743.6]
  wire [2:0] _GEN_30; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@40743.6]
  wire  _T_1084; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@40743.6]
  wire [2:0] _GEN_37; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@40745.6]
  wire [2:0] _GEN_38; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@40745.6]
  wire  _T_1086; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@40745.6]
  wire  _T_1087; // @[Monitor.scala 667:71:chipyard.TestHarness.RocketConfig.fir@40746.6]
  wire [2:0] _GEN_41; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@40747.6]
  wire [2:0] _GEN_42; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@40747.6]
  wire [2:0] _GEN_43; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@40747.6]
  wire [2:0] _GEN_44; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@40747.6]
  wire [2:0] _GEN_45; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@40747.6]
  wire [2:0] _GEN_46; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@40747.6]
  wire  _T_1088; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@40747.6]
  wire [2:0] _GEN_53; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@40748.6]
  wire [2:0] _GEN_54; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@40748.6]
  wire  _T_1089; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@40748.6]
  wire  _T_1090; // @[Monitor.scala 668:99:chipyard.TestHarness.RocketConfig.fir@40749.6]
  wire  _T_1091; // @[Monitor.scala 668:34:chipyard.TestHarness.RocketConfig.fir@40750.6]
  wire  _T_1092; // @[Monitor.scala 668:15:chipyard.TestHarness.RocketConfig.fir@40751.6]
  wire  _T_1094; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40753.6]
  wire  _T_1095; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40754.6]
  wire [7:0] a_size_lookup; // @[:chipyard.TestHarness.RocketConfig.fir@40630.4 :chipyard.TestHarness.RocketConfig.fir@40631.4 Monitor.scala 633:19:chipyard.TestHarness.RocketConfig.fir@40640.4]
  wire [7:0] _GEN_61; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@40759.6]
  wire  _T_1096; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@40759.6]
  wire  _T_1099; // @[Monitor.scala 670:53:chipyard.TestHarness.RocketConfig.fir@40762.6]
  wire  _T_1101; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40764.6]
  wire  _T_1102; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40765.6]
  wire  _T_1104; // @[Monitor.scala 672:36:chipyard.TestHarness.RocketConfig.fir@40772.4]
  wire  _T_1105; // @[Monitor.scala 672:47:chipyard.TestHarness.RocketConfig.fir@40773.4]
  wire  _T_1109; // @[Monitor.scala 672:116:chipyard.TestHarness.RocketConfig.fir@40777.4]
  wire  _T_1110; // @[Monitor.scala 673:15:chipyard.TestHarness.RocketConfig.fir@40779.6]
  wire  _T_1111; // @[Monitor.scala 673:32:chipyard.TestHarness.RocketConfig.fir@40780.6]
  wire  _T_1113; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40782.6]
  wire  _T_1114; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40783.6]
  wire  a_set; // @[:chipyard.TestHarness.RocketConfig.fir@40613.4 :chipyard.TestHarness.RocketConfig.fir@40614.4 Monitor.scala 644:13:chipyard.TestHarness.RocketConfig.fir@40668.6]
  wire  d_clr; // @[:chipyard.TestHarness.RocketConfig.fir@40692.4 :chipyard.TestHarness.RocketConfig.fir@40693.4 Monitor.scala 661:13:chipyard.TestHarness.RocketConfig.fir@40706.6]
  wire  _T_1115; // @[Monitor.scala 677:20:chipyard.TestHarness.RocketConfig.fir@40789.4]
  wire  _T_1116; // @[Monitor.scala 677:40:chipyard.TestHarness.RocketConfig.fir@40790.4]
  wire  _T_1117; // @[Monitor.scala 677:33:chipyard.TestHarness.RocketConfig.fir@40791.4]
  wire  _T_1118; // @[Monitor.scala 677:30:chipyard.TestHarness.RocketConfig.fir@40792.4]
  wire  _T_1120; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40794.4]
  wire  _T_1121; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40795.4]
  wire  _T_1122; // @[Monitor.scala 680:27:chipyard.TestHarness.RocketConfig.fir@40800.4]
  wire  _T_1123; // @[Monitor.scala 680:38:chipyard.TestHarness.RocketConfig.fir@40801.4]
  wire  _T_1124; // @[Monitor.scala 680:36:chipyard.TestHarness.RocketConfig.fir@40802.4]
  wire [3:0] a_opcodes_set; // @[:chipyard.TestHarness.RocketConfig.fir@40615.4 :chipyard.TestHarness.RocketConfig.fir@40616.4 Monitor.scala 647:21:chipyard.TestHarness.RocketConfig.fir@40677.6]
  wire [3:0] _T_1125; // @[Monitor.scala 681:43:chipyard.TestHarness.RocketConfig.fir@40804.4]
  wire [3:0] d_opcodes_clr; // @[:chipyard.TestHarness.RocketConfig.fir@40694.4 :chipyard.TestHarness.RocketConfig.fir@40695.4 Monitor.scala 662:21:chipyard.TestHarness.RocketConfig.fir@40713.6]
  wire [3:0] _T_1126; // @[Monitor.scala 681:62:chipyard.TestHarness.RocketConfig.fir@40805.4]
  wire [3:0] _T_1127; // @[Monitor.scala 681:60:chipyard.TestHarness.RocketConfig.fir@40806.4]
  wire [7:0] a_sizes_set; // @[:chipyard.TestHarness.RocketConfig.fir@40617.4 :chipyard.TestHarness.RocketConfig.fir@40618.4 Monitor.scala 648:19:chipyard.TestHarness.RocketConfig.fir@40680.6]
  wire [7:0] _T_1128; // @[Monitor.scala 682:39:chipyard.TestHarness.RocketConfig.fir@40808.4]
  wire [7:0] d_sizes_clr; // @[:chipyard.TestHarness.RocketConfig.fir@40696.4 :chipyard.TestHarness.RocketConfig.fir@40697.4 Monitor.scala 663:19:chipyard.TestHarness.RocketConfig.fir@40720.6]
  wire [7:0] _T_1129; // @[Monitor.scala 682:56:chipyard.TestHarness.RocketConfig.fir@40809.4]
  wire [7:0] _T_1130; // @[Monitor.scala 682:54:chipyard.TestHarness.RocketConfig.fir@40810.4]
  reg [31:0] _T_1131; // @[Monitor.scala 684:27:chipyard.TestHarness.RocketConfig.fir@40812.4]
  reg [31:0] _RAND_15;
  wire  _T_1132; // @[Monitor.scala 687:26:chipyard.TestHarness.RocketConfig.fir@40815.4]
  wire  _T_1133; // @[Monitor.scala 687:16:chipyard.TestHarness.RocketConfig.fir@40816.4]
  wire  _T_1134; // @[Monitor.scala 687:39:chipyard.TestHarness.RocketConfig.fir@40817.4]
  wire  _T_1135; // @[Monitor.scala 687:30:chipyard.TestHarness.RocketConfig.fir@40818.4]
  wire  _T_1136; // @[Monitor.scala 687:59:chipyard.TestHarness.RocketConfig.fir@40819.4]
  wire  _T_1137; // @[Monitor.scala 687:47:chipyard.TestHarness.RocketConfig.fir@40820.4]
  wire  _T_1139; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@40822.4]
  wire  _T_1140; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@40823.4]
  wire [31:0] _T_1142; // @[Monitor.scala 689:26:chipyard.TestHarness.RocketConfig.fir@40829.4]
  wire  _T_1145; // @[Monitor.scala 690:27:chipyard.TestHarness.RocketConfig.fir@40833.4]
  wire  _GEN_62; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39294.10]
  wire  _GEN_72; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39411.10]
  wire  _GEN_84; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39541.10]
  wire  _GEN_90; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39649.10]
  wire  _GEN_96; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39749.10]
  wire  _GEN_102; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39846.10]
  wire  _GEN_108; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39941.10]
  wire  _GEN_114; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@40041.10]
  wire  _GEN_120; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40112.10]
  wire  _GEN_128; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40161.10]
  wire  _GEN_136; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40219.10]
  wire  _GEN_144; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40271.10]
  wire  _GEN_148; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40306.10]
  wire  _GEN_152; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40342.10]
  plusarg_reader #(.FORMAT("tilelink_timeout=%d"), .DEFAULT(0), .WIDTH(32)) plusarg_reader ( // @[PlusArg.scala 44:11:chipyard.TestHarness.RocketConfig.fir@40813.4]
    .out(plusarg_reader_out)
  );
  assign _T_7 = 27'hfff << io_in_a_bits_size; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@39151.6]
  assign _T_9 = ~_T_7[11:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@39153.6]
  assign _GEN_56 = {{20'd0}, _T_9}; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@39154.6]
  assign _T_10 = io_in_a_bits_address & _GEN_56; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@39154.6]
  assign _T_11 = _T_10 == 32'h0; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@39155.6]
  assign _T_14 = 4'h1 << io_in_a_bits_size[1:0]; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@39158.6]
  assign _T_16 = _T_14[2:0] | 3'h1; // @[Misc.scala 201:81:chipyard.TestHarness.RocketConfig.fir@39160.6]
  assign _T_17 = io_in_a_bits_size >= 4'h3; // @[Misc.scala 205:21:chipyard.TestHarness.RocketConfig.fir@39161.6]
  assign _T_20 = ~io_in_a_bits_address[2]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@39164.6]
  assign _T_22 = _T_16[2] & _T_20; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@39166.6]
  assign _T_23 = _T_17 | _T_22; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@39167.6]
  assign _T_25 = _T_16[2] & io_in_a_bits_address[2]; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@39169.6]
  assign _T_26 = _T_17 | _T_25; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@39170.6]
  assign _T_29 = ~io_in_a_bits_address[1]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@39173.6]
  assign _T_30 = _T_20 & _T_29; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@39174.6]
  assign _T_31 = _T_16[1] & _T_30; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@39175.6]
  assign _T_32 = _T_23 | _T_31; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@39176.6]
  assign _T_33 = _T_20 & io_in_a_bits_address[1]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@39177.6]
  assign _T_34 = _T_16[1] & _T_33; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@39178.6]
  assign _T_35 = _T_23 | _T_34; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@39179.6]
  assign _T_36 = io_in_a_bits_address[2] & _T_29; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@39180.6]
  assign _T_37 = _T_16[1] & _T_36; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@39181.6]
  assign _T_38 = _T_26 | _T_37; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@39182.6]
  assign _T_39 = io_in_a_bits_address[2] & io_in_a_bits_address[1]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@39183.6]
  assign _T_40 = _T_16[1] & _T_39; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@39184.6]
  assign _T_41 = _T_26 | _T_40; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@39185.6]
  assign _T_44 = ~io_in_a_bits_address[0]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@39188.6]
  assign _T_45 = _T_30 & _T_44; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@39189.6]
  assign _T_46 = _T_16[0] & _T_45; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@39190.6]
  assign _T_47 = _T_32 | _T_46; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@39191.6]
  assign _T_48 = _T_30 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@39192.6]
  assign _T_49 = _T_16[0] & _T_48; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@39193.6]
  assign _T_50 = _T_32 | _T_49; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@39194.6]
  assign _T_51 = _T_33 & _T_44; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@39195.6]
  assign _T_52 = _T_16[0] & _T_51; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@39196.6]
  assign _T_53 = _T_35 | _T_52; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@39197.6]
  assign _T_54 = _T_33 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@39198.6]
  assign _T_55 = _T_16[0] & _T_54; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@39199.6]
  assign _T_56 = _T_35 | _T_55; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@39200.6]
  assign _T_57 = _T_36 & _T_44; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@39201.6]
  assign _T_58 = _T_16[0] & _T_57; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@39202.6]
  assign _T_59 = _T_38 | _T_58; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@39203.6]
  assign _T_60 = _T_36 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@39204.6]
  assign _T_61 = _T_16[0] & _T_60; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@39205.6]
  assign _T_62 = _T_38 | _T_61; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@39206.6]
  assign _T_63 = _T_39 & _T_44; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@39207.6]
  assign _T_64 = _T_16[0] & _T_63; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@39208.6]
  assign _T_65 = _T_41 | _T_64; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@39209.6]
  assign _T_66 = _T_39 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@39210.6]
  assign _T_67 = _T_16[0] & _T_66; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@39211.6]
  assign _T_68 = _T_41 | _T_67; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@39212.6]
  assign _T_75 = {_T_68,_T_65,_T_62,_T_59,_T_56,_T_53,_T_50,_T_47}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@39219.6]
  assign _T_79 = {1'b0,$signed(io_in_a_bits_address)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@39223.6]
  assign _T_87 = io_in_a_bits_opcode == 3'h6; // @[Monitor.scala 79:25:chipyard.TestHarness.RocketConfig.fir@39235.6]
  assign _T_89 = io_in_a_bits_address ^ 32'h3000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@39238.8]
  assign _T_90 = {1'b0,$signed(_T_89)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@39239.8]
  assign _T_92 = $signed(_T_90) & -33'sh1000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@39241.8]
  assign _T_93 = $signed(_T_92) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@39242.8]
  assign _T_94 = io_in_a_bits_address ^ 32'h2010000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@39243.8]
  assign _T_95 = {1'b0,$signed(_T_94)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@39244.8]
  assign _T_97 = $signed(_T_95) & -33'sh1000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@39246.8]
  assign _T_98 = $signed(_T_97) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@39247.8]
  assign _T_99 = io_in_a_bits_address ^ 32'h54000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@39248.8]
  assign _T_100 = {1'b0,$signed(_T_99)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@39249.8]
  assign _T_102 = $signed(_T_100) & -33'sh1000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@39251.8]
  assign _T_103 = $signed(_T_102) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@39252.8]
  assign _T_104 = io_in_a_bits_address ^ 32'hc000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@39253.8]
  assign _T_105 = {1'b0,$signed(_T_104)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@39254.8]
  assign _T_107 = $signed(_T_105) & -33'sh4000000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@39256.8]
  assign _T_108 = $signed(_T_107) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@39257.8]
  assign _T_109 = io_in_a_bits_address ^ 32'h2000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@39258.8]
  assign _T_110 = {1'b0,$signed(_T_109)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@39259.8]
  assign _T_112 = $signed(_T_110) & -33'sh10000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@39261.8]
  assign _T_113 = $signed(_T_112) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@39262.8]
  assign _T_117 = $signed(_T_79) & -33'sh1000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@39266.8]
  assign _T_118 = $signed(_T_117) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@39267.8]
  assign _T_119 = io_in_a_bits_address ^ 32'h10000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@39268.8]
  assign _T_120 = {1'b0,$signed(_T_119)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@39269.8]
  assign _T_122 = $signed(_T_120) & -33'sh10000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@39271.8]
  assign _T_123 = $signed(_T_122) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@39272.8]
  assign _T_124 = _T_93 | _T_98; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@39273.8]
  assign _T_125 = _T_124 | _T_103; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@39274.8]
  assign _T_126 = _T_125 | _T_108; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@39275.8]
  assign _T_127 = _T_126 | _T_113; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@39276.8]
  assign _T_128 = _T_127 | _T_118; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@39277.8]
  assign _T_131 = 4'h6 == io_in_a_bits_size; // @[Parameters.scala 92:48:chipyard.TestHarness.RocketConfig.fir@39280.8]
  assign _T_133 = io_in_a_bits_address ^ 32'h80000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@39282.8]
  assign _T_134 = {1'b0,$signed(_T_133)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@39283.8]
  assign _T_136 = $signed(_T_134) & -33'sh10000000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@39285.8]
  assign _T_137 = $signed(_T_136) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@39286.8]
  assign _T_138 = _T_131 & _T_137; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@39287.8]
  assign _T_142 = _T_138 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39291.8]
  assign _T_143 = ~_T_142; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39292.8]
  assign _T_146 = ~reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39299.8]
  assign _T_152 = _T_17 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39313.8]
  assign _T_153 = ~_T_152; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39314.8]
  assign _T_155 = _T_11 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39320.8]
  assign _T_156 = ~_T_155; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39321.8]
  assign _T_161 = ~io_in_a_bits_mask; // @[Monitor.scala 86:18:chipyard.TestHarness.RocketConfig.fir@39334.8]
  assign _T_162 = _T_161 == 8'h0; // @[Monitor.scala 86:31:chipyard.TestHarness.RocketConfig.fir@39335.8]
  assign _T_164 = _T_162 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39337.8]
  assign _T_165 = ~_T_164; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39338.8]
  assign _T_170 = io_in_a_bits_opcode == 3'h7; // @[Monitor.scala 90:25:chipyard.TestHarness.RocketConfig.fir@39352.6]
  assign _T_257 = io_in_a_bits_opcode == 3'h4; // @[Monitor.scala 102:25:chipyard.TestHarness.RocketConfig.fir@39477.6]
  assign _T_259 = io_in_a_bits_size <= 4'hc; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@39480.8]
  assign _T_267 = _T_259 & _T_93; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@39488.8]
  assign _T_269 = io_in_a_bits_size <= 4'h6; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@39490.8]
  assign _T_307 = _T_98 | _T_103; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@39528.8]
  assign _T_308 = _T_307 | _T_108; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@39529.8]
  assign _T_309 = _T_308 | _T_113; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@39530.8]
  assign _T_310 = _T_309 | _T_118; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@39531.8]
  assign _T_311 = _T_310 | _T_123; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@39532.8]
  assign _T_312 = _T_311 | _T_137; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@39533.8]
  assign _T_313 = _T_269 & _T_312; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@39534.8]
  assign _T_315 = _T_267 | _T_313; // @[Parameters.scala 553:30:chipyard.TestHarness.RocketConfig.fir@39536.8]
  assign _T_317 = _T_315 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39538.8]
  assign _T_318 = ~_T_317; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39539.8]
  assign _T_329 = io_in_a_bits_mask == _T_75; // @[Monitor.scala 107:30:chipyard.TestHarness.RocketConfig.fir@39566.8]
  assign _T_331 = _T_329 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39568.8]
  assign _T_332 = ~_T_331; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39569.8]
  assign _T_337 = io_in_a_bits_opcode == 3'h0; // @[Monitor.scala 111:25:chipyard.TestHarness.RocketConfig.fir@39583.6]
  assign _T_386 = _T_310 | _T_137; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@39633.8]
  assign _T_387 = _T_269 & _T_386; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@39634.8]
  assign _T_396 = _T_267 | _T_387; // @[Parameters.scala 553:30:chipyard.TestHarness.RocketConfig.fir@39643.8]
  assign _T_399 = _T_396 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39646.8]
  assign _T_400 = ~_T_399; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39647.8]
  assign _T_415 = io_in_a_bits_opcode == 3'h1; // @[Monitor.scala 119:25:chipyard.TestHarness.RocketConfig.fir@39683.6]
  assign _T_489 = ~_T_75; // @[Monitor.scala 124:33:chipyard.TestHarness.RocketConfig.fir@39774.8]
  assign _T_490 = io_in_a_bits_mask & _T_489; // @[Monitor.scala 124:31:chipyard.TestHarness.RocketConfig.fir@39775.8]
  assign _T_491 = _T_490 == 8'h0; // @[Monitor.scala 124:40:chipyard.TestHarness.RocketConfig.fir@39776.8]
  assign _T_493 = _T_491 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39778.8]
  assign _T_494 = ~_T_493; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39779.8]
  assign _T_495 = io_in_a_bits_opcode == 3'h2; // @[Monitor.scala 127:25:chipyard.TestHarness.RocketConfig.fir@39785.6]
  assign _T_497 = io_in_a_bits_size <= 4'h3; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@39788.8]
  assign _T_540 = _T_128 | _T_137; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@39831.8]
  assign _T_541 = _T_497 & _T_540; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@39832.8]
  assign _T_552 = _T_541 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39843.8]
  assign _T_553 = ~_T_552; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39844.8]
  assign _T_568 = io_in_a_bits_opcode == 3'h3; // @[Monitor.scala 135:25:chipyard.TestHarness.RocketConfig.fir@39880.6]
  assign _T_641 = io_in_a_bits_opcode == 3'h5; // @[Monitor.scala 143:25:chipyard.TestHarness.RocketConfig.fir@39975.6]
  assign _T_698 = _T_269 & _T_137; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@40033.8]
  assign _T_701 = _T_267 | _T_698; // @[Parameters.scala 553:30:chipyard.TestHarness.RocketConfig.fir@40036.8]
  assign _T_703 = _T_701 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@40038.8]
  assign _T_704 = ~_T_703; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@40039.8]
  assign _T_723 = io_in_d_bits_opcode <= 3'h6; // @[Bundles.scala 44:24:chipyard.TestHarness.RocketConfig.fir@40085.6]
  assign _T_725 = _T_723 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40087.6]
  assign _T_726 = ~_T_725; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40088.6]
  assign _T_730 = io_in_d_bits_opcode == 3'h6; // @[Monitor.scala 307:25:chipyard.TestHarness.RocketConfig.fir@40098.6]
  assign _T_734 = io_in_d_bits_size >= 4'h3; // @[Monitor.scala 309:27:chipyard.TestHarness.RocketConfig.fir@40107.8]
  assign _T_736 = _T_734 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40109.8]
  assign _T_737 = ~_T_736; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40110.8]
  assign _T_738 = io_in_d_bits_param == 2'h0; // @[Monitor.scala 310:28:chipyard.TestHarness.RocketConfig.fir@40115.8]
  assign _T_740 = _T_738 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40117.8]
  assign _T_741 = ~_T_740; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40118.8]
  assign _T_742 = ~io_in_d_bits_corrupt; // @[Monitor.scala 311:15:chipyard.TestHarness.RocketConfig.fir@40123.8]
  assign _T_744 = _T_742 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40125.8]
  assign _T_745 = ~_T_744; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40126.8]
  assign _T_746 = ~io_in_d_bits_denied; // @[Monitor.scala 312:15:chipyard.TestHarness.RocketConfig.fir@40131.8]
  assign _T_748 = _T_746 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40133.8]
  assign _T_749 = ~_T_748; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40134.8]
  assign _T_750 = io_in_d_bits_opcode == 3'h4; // @[Monitor.scala 315:25:chipyard.TestHarness.RocketConfig.fir@40140.6]
  assign _T_761 = io_in_d_bits_param <= 2'h2; // @[Bundles.scala 104:26:chipyard.TestHarness.RocketConfig.fir@40164.8]
  assign _T_763 = _T_761 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40166.8]
  assign _T_764 = ~_T_763; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40167.8]
  assign _T_765 = io_in_d_bits_param != 2'h2; // @[Monitor.scala 320:28:chipyard.TestHarness.RocketConfig.fir@40172.8]
  assign _T_767 = _T_765 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40174.8]
  assign _T_768 = ~_T_767; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40175.8]
  assign _T_778 = io_in_d_bits_opcode == 3'h5; // @[Monitor.scala 325:25:chipyard.TestHarness.RocketConfig.fir@40198.6]
  assign _T_798 = _T_746 | io_in_d_bits_corrupt; // @[Monitor.scala 331:30:chipyard.TestHarness.RocketConfig.fir@40239.8]
  assign _T_800 = _T_798 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40241.8]
  assign _T_801 = ~_T_800; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40242.8]
  assign _T_807 = io_in_d_bits_opcode == 3'h0; // @[Monitor.scala 335:25:chipyard.TestHarness.RocketConfig.fir@40257.6]
  assign _T_824 = io_in_d_bits_opcode == 3'h1; // @[Monitor.scala 343:25:chipyard.TestHarness.RocketConfig.fir@40292.6]
  assign _T_842 = io_in_d_bits_opcode == 3'h2; // @[Monitor.scala 351:25:chipyard.TestHarness.RocketConfig.fir@40328.6]
  assign _T_874 = io_in_a_ready & io_in_a_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@40394.4]
  assign _T_881 = ~io_in_a_bits_opcode[2]; // @[Edges.scala 93:28:chipyard.TestHarness.RocketConfig.fir@40401.4]
  assign _T_885 = _T_883 - 9'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@40405.4]
  assign _T_886 = _T_883 == 9'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@40406.4]
  assign _T_899 = ~_T_886; // @[Monitor.scala 386:22:chipyard.TestHarness.RocketConfig.fir@40422.4]
  assign _T_900 = io_in_a_valid & _T_899; // @[Monitor.scala 386:19:chipyard.TestHarness.RocketConfig.fir@40423.4]
  assign _T_901 = io_in_a_bits_opcode == _T_894; // @[Monitor.scala 387:32:chipyard.TestHarness.RocketConfig.fir@40425.6]
  assign _T_903 = _T_901 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@40427.6]
  assign _T_904 = ~_T_903; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@40428.6]
  assign _T_909 = io_in_a_bits_size == _T_896; // @[Monitor.scala 389:32:chipyard.TestHarness.RocketConfig.fir@40441.6]
  assign _T_911 = _T_909 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@40443.6]
  assign _T_912 = ~_T_911; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@40444.6]
  assign _T_917 = io_in_a_bits_address == _T_898; // @[Monitor.scala 391:32:chipyard.TestHarness.RocketConfig.fir@40457.6]
  assign _T_919 = _T_917 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@40459.6]
  assign _T_920 = ~_T_919; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@40460.6]
  assign _T_922 = _T_874 & _T_886; // @[Monitor.scala 393:20:chipyard.TestHarness.RocketConfig.fir@40467.4]
  assign _T_923 = io_in_d_ready & io_in_d_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@40475.4]
  assign _T_925 = 27'hfff << io_in_d_bits_size; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@40477.4]
  assign _T_927 = ~_T_925[11:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@40479.4]
  assign _T_933 = _T_931 - 9'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@40485.4]
  assign _T_934 = _T_931 == 9'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@40486.4]
  assign _T_948 = ~_T_934; // @[Monitor.scala 538:22:chipyard.TestHarness.RocketConfig.fir@40503.4]
  assign _T_949 = io_in_d_valid & _T_948; // @[Monitor.scala 538:19:chipyard.TestHarness.RocketConfig.fir@40504.4]
  assign _T_950 = io_in_d_bits_opcode == _T_942; // @[Monitor.scala 539:29:chipyard.TestHarness.RocketConfig.fir@40506.6]
  assign _T_952 = _T_950 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40508.6]
  assign _T_953 = ~_T_952; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40509.6]
  assign _T_954 = io_in_d_bits_param == _T_943; // @[Monitor.scala 540:29:chipyard.TestHarness.RocketConfig.fir@40514.6]
  assign _T_956 = _T_954 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40516.6]
  assign _T_957 = ~_T_956; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40517.6]
  assign _T_958 = io_in_d_bits_size == _T_944; // @[Monitor.scala 541:29:chipyard.TestHarness.RocketConfig.fir@40522.6]
  assign _T_960 = _T_958 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40524.6]
  assign _T_961 = ~_T_960; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40525.6]
  assign _T_966 = io_in_d_bits_sink == _T_946; // @[Monitor.scala 543:29:chipyard.TestHarness.RocketConfig.fir@40538.6]
  assign _T_968 = _T_966 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40540.6]
  assign _T_969 = ~_T_968; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40541.6]
  assign _T_970 = io_in_d_bits_denied == _T_947; // @[Monitor.scala 544:29:chipyard.TestHarness.RocketConfig.fir@40546.6]
  assign _T_972 = _T_970 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40548.6]
  assign _T_973 = ~_T_972; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40549.6]
  assign _T_975 = _T_923 & _T_934; // @[Monitor.scala 546:20:chipyard.TestHarness.RocketConfig.fir@40556.4]
  assign _T_987 = _T_985 - 9'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@40579.4]
  assign a_first = _T_985 == 9'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@40580.4]
  assign _T_1005 = _T_1003 - 9'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@40601.4]
  assign d_first = _T_1003 == 9'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@40602.4]
  assign _T_1018 = 16'h10 - 16'h1; // @[Monitor.scala 606:57:chipyard.TestHarness.RocketConfig.fir@40626.4]
  assign _GEN_57 = {{12'd0}, inflight_opcodes}; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@40627.4]
  assign _T_1019 = _GEN_57 & _T_1018; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@40627.4]
  assign _T_1020 = {{1'd0}, _T_1019[15:1]}; // @[Monitor.scala 629:152:chipyard.TestHarness.RocketConfig.fir@40628.4]
  assign _T_1026 = 16'h100 - 16'h1; // @[Monitor.scala 606:57:chipyard.TestHarness.RocketConfig.fir@40637.4]
  assign _GEN_59 = {{8'd0}, inflight_sizes}; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@40638.4]
  assign _T_1027 = _GEN_59 & _T_1026; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@40638.4]
  assign _T_1028 = {{1'd0}, _T_1027[15:1]}; // @[Monitor.scala 633:144:chipyard.TestHarness.RocketConfig.fir@40639.4]
  assign _T_1032 = _T_874 & a_first; // @[Monitor.scala 643:27:chipyard.TestHarness.RocketConfig.fir@40664.4]
  assign _T_1035 = {io_in_a_bits_opcode, 1'h0}; // @[Monitor.scala 645:53:chipyard.TestHarness.RocketConfig.fir@40669.6]
  assign _T_1036 = _T_1035 | 4'h1; // @[Monitor.scala 645:61:chipyard.TestHarness.RocketConfig.fir@40670.6]
  assign _T_1037 = {io_in_a_bits_size, 1'h0}; // @[Monitor.scala 646:49:chipyard.TestHarness.RocketConfig.fir@40672.6]
  assign _T_1038 = _T_1037 | 5'h1; // @[Monitor.scala 646:57:chipyard.TestHarness.RocketConfig.fir@40673.6]
  assign a_opcodes_set_interm = _T_1032 ? _T_1036 : 4'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@40666.4]
  assign _T_1040 = {{15'd0}, a_opcodes_set_interm}; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@40676.6]
  assign a_sizes_set_interm = _T_1032 ? _T_1038 : 5'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@40666.4]
  assign _T_1042 = {{15'd0}, a_sizes_set_interm}; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@40679.6]
  assign _T_1045 = ~inflight; // @[Monitor.scala 649:17:chipyard.TestHarness.RocketConfig.fir@40683.6]
  assign _T_1047 = _T_1045 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@40685.6]
  assign _T_1048 = ~_T_1047; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@40686.6]
  assign _GEN_15 = _T_1032 ? 2'h1 : 2'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@40666.4]
  assign _GEN_18 = _T_1032 ? _T_1040 : 19'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@40666.4]
  assign _GEN_19 = _T_1032 ? _T_1042 : 20'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@40666.4]
  assign _T_1051 = _T_923 & d_first; // @[Monitor.scala 660:27:chipyard.TestHarness.RocketConfig.fir@40700.4]
  assign _T_1053 = ~_T_730; // @[Monitor.scala 660:75:chipyard.TestHarness.RocketConfig.fir@40702.4]
  assign _T_1054 = _T_1051 & _T_1053; // @[Monitor.scala 660:72:chipyard.TestHarness.RocketConfig.fir@40703.4]
  assign _T_1061 = {{15'd0}, _T_1018}; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@40712.6]
  assign _T_1067 = {{15'd0}, _T_1026}; // @[Monitor.scala 663:72:chipyard.TestHarness.RocketConfig.fir@40719.6]
  assign _GEN_20 = _T_1054 ? 2'h1 : 2'h0; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@40704.4]
  assign _GEN_21 = _T_1054 ? _T_1061 : 31'h0; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@40704.4]
  assign _GEN_22 = _T_1054 ? _T_1067 : 31'h0; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@40704.4]
  assign _T_1068 = io_in_d_valid & d_first; // @[Monitor.scala 665:26:chipyard.TestHarness.RocketConfig.fir@40722.4]
  assign _T_1071 = _T_1068 & _T_1053; // @[Monitor.scala 665:71:chipyard.TestHarness.RocketConfig.fir@40725.4]
  assign _T_1076 = io_in_a_bits_size == io_in_d_bits_size; // @[Monitor.scala 666:142:chipyard.TestHarness.RocketConfig.fir@40731.6]
  assign _T_1077 = io_in_a_valid & _T_1076; // @[Monitor.scala 666:119:chipyard.TestHarness.RocketConfig.fir@40732.6]
  assign _T_1078 = _T_1077 & a_first; // @[Monitor.scala 666:166:chipyard.TestHarness.RocketConfig.fir@40733.6]
  assign _T_1079 = inflight | _T_1078; // @[Monitor.scala 666:49:chipyard.TestHarness.RocketConfig.fir@40734.6]
  assign _T_1081 = _T_1079 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40736.6]
  assign _T_1082 = ~_T_1081; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40737.6]
  assign a_opcode_lookup = _T_1020[3:0]; // @[:chipyard.TestHarness.RocketConfig.fir@40619.4 :chipyard.TestHarness.RocketConfig.fir@40620.4 Monitor.scala 629:21:chipyard.TestHarness.RocketConfig.fir@40629.4]
  assign _GEN_25 = 3'h2 == a_opcode_lookup[2:0] ? 3'h1 : 3'h0; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@40743.6]
  assign _GEN_26 = 3'h3 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_25; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@40743.6]
  assign _GEN_27 = 3'h4 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_26; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@40743.6]
  assign _GEN_28 = 3'h5 == a_opcode_lookup[2:0] ? 3'h2 : _GEN_27; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@40743.6]
  assign _GEN_29 = 3'h6 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_28; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@40743.6]
  assign _GEN_30 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_29; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@40743.6]
  assign _T_1084 = io_in_d_bits_opcode == _GEN_30; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@40743.6]
  assign _GEN_37 = 3'h6 == a_opcode_lookup[2:0] ? 3'h5 : _GEN_28; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@40745.6]
  assign _GEN_38 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_37; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@40745.6]
  assign _T_1086 = io_in_d_bits_opcode == _GEN_38; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@40745.6]
  assign _T_1087 = _T_1084 | _T_1086; // @[Monitor.scala 667:71:chipyard.TestHarness.RocketConfig.fir@40746.6]
  assign _GEN_41 = 3'h2 == io_in_a_bits_opcode ? 3'h1 : 3'h0; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@40747.6]
  assign _GEN_42 = 3'h3 == io_in_a_bits_opcode ? 3'h1 : _GEN_41; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@40747.6]
  assign _GEN_43 = 3'h4 == io_in_a_bits_opcode ? 3'h1 : _GEN_42; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@40747.6]
  assign _GEN_44 = 3'h5 == io_in_a_bits_opcode ? 3'h2 : _GEN_43; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@40747.6]
  assign _GEN_45 = 3'h6 == io_in_a_bits_opcode ? 3'h4 : _GEN_44; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@40747.6]
  assign _GEN_46 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_45; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@40747.6]
  assign _T_1088 = io_in_d_bits_opcode == _GEN_46; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@40747.6]
  assign _GEN_53 = 3'h6 == io_in_a_bits_opcode ? 3'h5 : _GEN_44; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@40748.6]
  assign _GEN_54 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_53; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@40748.6]
  assign _T_1089 = io_in_d_bits_opcode == _GEN_54; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@40748.6]
  assign _T_1090 = _T_1088 | _T_1089; // @[Monitor.scala 668:99:chipyard.TestHarness.RocketConfig.fir@40749.6]
  assign _T_1091 = io_in_a_valid & _T_1090; // @[Monitor.scala 668:34:chipyard.TestHarness.RocketConfig.fir@40750.6]
  assign _T_1092 = _T_1087 | _T_1091; // @[Monitor.scala 668:15:chipyard.TestHarness.RocketConfig.fir@40751.6]
  assign _T_1094 = _T_1092 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40753.6]
  assign _T_1095 = ~_T_1094; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40754.6]
  assign a_size_lookup = _T_1028[7:0]; // @[:chipyard.TestHarness.RocketConfig.fir@40630.4 :chipyard.TestHarness.RocketConfig.fir@40631.4 Monitor.scala 633:19:chipyard.TestHarness.RocketConfig.fir@40640.4]
  assign _GEN_61 = {{4'd0}, io_in_d_bits_size}; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@40759.6]
  assign _T_1096 = _GEN_61 == a_size_lookup; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@40759.6]
  assign _T_1099 = _T_1096 | _T_1077; // @[Monitor.scala 670:53:chipyard.TestHarness.RocketConfig.fir@40762.6]
  assign _T_1101 = _T_1099 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40764.6]
  assign _T_1102 = ~_T_1101; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40765.6]
  assign _T_1104 = _T_1068 & a_first; // @[Monitor.scala 672:36:chipyard.TestHarness.RocketConfig.fir@40772.4]
  assign _T_1105 = _T_1104 & io_in_a_valid; // @[Monitor.scala 672:47:chipyard.TestHarness.RocketConfig.fir@40773.4]
  assign _T_1109 = _T_1105 & _T_1053; // @[Monitor.scala 672:116:chipyard.TestHarness.RocketConfig.fir@40777.4]
  assign _T_1110 = ~io_in_d_ready; // @[Monitor.scala 673:15:chipyard.TestHarness.RocketConfig.fir@40779.6]
  assign _T_1111 = _T_1110 | io_in_a_ready; // @[Monitor.scala 673:32:chipyard.TestHarness.RocketConfig.fir@40780.6]
  assign _T_1113 = _T_1111 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40782.6]
  assign _T_1114 = ~_T_1113; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40783.6]
  assign a_set = _GEN_15[0]; // @[:chipyard.TestHarness.RocketConfig.fir@40613.4 :chipyard.TestHarness.RocketConfig.fir@40614.4 Monitor.scala 644:13:chipyard.TestHarness.RocketConfig.fir@40668.6]
  assign d_clr = _GEN_20[0]; // @[:chipyard.TestHarness.RocketConfig.fir@40692.4 :chipyard.TestHarness.RocketConfig.fir@40693.4 Monitor.scala 661:13:chipyard.TestHarness.RocketConfig.fir@40706.6]
  assign _T_1115 = a_set != d_clr; // @[Monitor.scala 677:20:chipyard.TestHarness.RocketConfig.fir@40789.4]
  assign _T_1116 = |a_set; // @[Monitor.scala 677:40:chipyard.TestHarness.RocketConfig.fir@40790.4]
  assign _T_1117 = ~_T_1116; // @[Monitor.scala 677:33:chipyard.TestHarness.RocketConfig.fir@40791.4]
  assign _T_1118 = _T_1115 | _T_1117; // @[Monitor.scala 677:30:chipyard.TestHarness.RocketConfig.fir@40792.4]
  assign _T_1120 = _T_1118 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40794.4]
  assign _T_1121 = ~_T_1120; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40795.4]
  assign _T_1122 = inflight | a_set; // @[Monitor.scala 680:27:chipyard.TestHarness.RocketConfig.fir@40800.4]
  assign _T_1123 = ~d_clr; // @[Monitor.scala 680:38:chipyard.TestHarness.RocketConfig.fir@40801.4]
  assign _T_1124 = _T_1122 & _T_1123; // @[Monitor.scala 680:36:chipyard.TestHarness.RocketConfig.fir@40802.4]
  assign a_opcodes_set = _GEN_18[3:0]; // @[:chipyard.TestHarness.RocketConfig.fir@40615.4 :chipyard.TestHarness.RocketConfig.fir@40616.4 Monitor.scala 647:21:chipyard.TestHarness.RocketConfig.fir@40677.6]
  assign _T_1125 = inflight_opcodes | a_opcodes_set; // @[Monitor.scala 681:43:chipyard.TestHarness.RocketConfig.fir@40804.4]
  assign d_opcodes_clr = _GEN_21[3:0]; // @[:chipyard.TestHarness.RocketConfig.fir@40694.4 :chipyard.TestHarness.RocketConfig.fir@40695.4 Monitor.scala 662:21:chipyard.TestHarness.RocketConfig.fir@40713.6]
  assign _T_1126 = ~d_opcodes_clr; // @[Monitor.scala 681:62:chipyard.TestHarness.RocketConfig.fir@40805.4]
  assign _T_1127 = _T_1125 & _T_1126; // @[Monitor.scala 681:60:chipyard.TestHarness.RocketConfig.fir@40806.4]
  assign a_sizes_set = _GEN_19[7:0]; // @[:chipyard.TestHarness.RocketConfig.fir@40617.4 :chipyard.TestHarness.RocketConfig.fir@40618.4 Monitor.scala 648:19:chipyard.TestHarness.RocketConfig.fir@40680.6]
  assign _T_1128 = inflight_sizes | a_sizes_set; // @[Monitor.scala 682:39:chipyard.TestHarness.RocketConfig.fir@40808.4]
  assign d_sizes_clr = _GEN_22[7:0]; // @[:chipyard.TestHarness.RocketConfig.fir@40696.4 :chipyard.TestHarness.RocketConfig.fir@40697.4 Monitor.scala 663:19:chipyard.TestHarness.RocketConfig.fir@40720.6]
  assign _T_1129 = ~d_sizes_clr; // @[Monitor.scala 682:56:chipyard.TestHarness.RocketConfig.fir@40809.4]
  assign _T_1130 = _T_1128 & _T_1129; // @[Monitor.scala 682:54:chipyard.TestHarness.RocketConfig.fir@40810.4]
  assign _T_1132 = |inflight; // @[Monitor.scala 687:26:chipyard.TestHarness.RocketConfig.fir@40815.4]
  assign _T_1133 = ~_T_1132; // @[Monitor.scala 687:16:chipyard.TestHarness.RocketConfig.fir@40816.4]
  assign _T_1134 = plusarg_reader_out == 32'h0; // @[Monitor.scala 687:39:chipyard.TestHarness.RocketConfig.fir@40817.4]
  assign _T_1135 = _T_1133 | _T_1134; // @[Monitor.scala 687:30:chipyard.TestHarness.RocketConfig.fir@40818.4]
  assign _T_1136 = _T_1131 < plusarg_reader_out; // @[Monitor.scala 687:59:chipyard.TestHarness.RocketConfig.fir@40819.4]
  assign _T_1137 = _T_1135 | _T_1136; // @[Monitor.scala 687:47:chipyard.TestHarness.RocketConfig.fir@40820.4]
  assign _T_1139 = _T_1137 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@40822.4]
  assign _T_1140 = ~_T_1139; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@40823.4]
  assign _T_1142 = _T_1131 + 32'h1; // @[Monitor.scala 689:26:chipyard.TestHarness.RocketConfig.fir@40829.4]
  assign _T_1145 = _T_874 | _T_923; // @[Monitor.scala 690:27:chipyard.TestHarness.RocketConfig.fir@40833.4]
  assign _GEN_62 = io_in_a_valid & _T_87; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39294.10]
  assign _GEN_72 = io_in_a_valid & _T_170; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39411.10]
  assign _GEN_84 = io_in_a_valid & _T_257; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39541.10]
  assign _GEN_90 = io_in_a_valid & _T_337; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39649.10]
  assign _GEN_96 = io_in_a_valid & _T_415; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39749.10]
  assign _GEN_102 = io_in_a_valid & _T_495; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39846.10]
  assign _GEN_108 = io_in_a_valid & _T_568; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39941.10]
  assign _GEN_114 = io_in_a_valid & _T_641; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@40041.10]
  assign _GEN_120 = io_in_d_valid & _T_730; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40112.10]
  assign _GEN_128 = io_in_d_valid & _T_750; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40161.10]
  assign _GEN_136 = io_in_d_valid & _T_778; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40219.10]
  assign _GEN_144 = io_in_d_valid & _T_807; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40271.10]
  assign _GEN_148 = io_in_d_valid & _T_824; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40306.10]
  assign _GEN_152 = io_in_d_valid & _T_842; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40342.10]
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
  _T_883 = _RAND_0[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_894 = _RAND_1[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_896 = _RAND_2[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_898 = _RAND_3[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_931 = _RAND_4[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_942 = _RAND_5[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  _T_943 = _RAND_6[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  _T_944 = _RAND_7[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  _T_946 = _RAND_8[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  _T_947 = _RAND_9[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  inflight = _RAND_10[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  inflight_opcodes = _RAND_11[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  inflight_sizes = _RAND_12[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  _T_985 = _RAND_13[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  _T_1003 = _RAND_14[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  _T_1131 = _RAND_15[31:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      _T_883 <= 9'h0;
    end else if (_T_874) begin
      if (_T_886) begin
        if (_T_881) begin
          _T_883 <= _T_9[11:3];
        end else begin
          _T_883 <= 9'h0;
        end
      end else begin
        _T_883 <= _T_885;
      end
    end
    if (_T_922) begin
      _T_894 <= io_in_a_bits_opcode;
    end
    if (_T_922) begin
      _T_896 <= io_in_a_bits_size;
    end
    if (_T_922) begin
      _T_898 <= io_in_a_bits_address;
    end
    if (reset) begin
      _T_931 <= 9'h0;
    end else if (_T_923) begin
      if (_T_934) begin
        if (io_in_d_bits_opcode[0]) begin
          _T_931 <= _T_927[11:3];
        end else begin
          _T_931 <= 9'h0;
        end
      end else begin
        _T_931 <= _T_933;
      end
    end
    if (_T_975) begin
      _T_942 <= io_in_d_bits_opcode;
    end
    if (_T_975) begin
      _T_943 <= io_in_d_bits_param;
    end
    if (_T_975) begin
      _T_944 <= io_in_d_bits_size;
    end
    if (_T_975) begin
      _T_946 <= io_in_d_bits_sink;
    end
    if (_T_975) begin
      _T_947 <= io_in_d_bits_denied;
    end
    if (reset) begin
      inflight <= 1'h0;
    end else begin
      inflight <= _T_1124;
    end
    if (reset) begin
      inflight_opcodes <= 4'h0;
    end else begin
      inflight_opcodes <= _T_1127;
    end
    if (reset) begin
      inflight_sizes <= 8'h0;
    end else begin
      inflight_sizes <= _T_1130;
    end
    if (reset) begin
      _T_985 <= 9'h0;
    end else if (_T_874) begin
      if (a_first) begin
        if (_T_881) begin
          _T_985 <= _T_9[11:3];
        end else begin
          _T_985 <= 9'h0;
        end
      end else begin
        _T_985 <= _T_987;
      end
    end
    if (reset) begin
      _T_1003 <= 9'h0;
    end else if (_T_923) begin
      if (d_first) begin
        if (io_in_d_bits_opcode[0]) begin
          _T_1003 <= _T_927[11:3];
        end else begin
          _T_1003 <= 9'h0;
        end
      end else begin
        _T_1003 <= _T_1005;
      end
    end
    if (reset) begin
      _T_1131 <= 32'h0;
    end else if (_T_1145) begin
      _T_1131 <= 32'h0;
    end else begin
      _T_1131 <= _T_1142;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_62 & _T_143) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock type unsupported by manager (connected at BusWrapper.scala:333:72)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39294.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_62 & _T_143) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39295.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_62 & _T_146) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock from a client which does not support Probe (connected at BusWrapper.scala:333:72)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39301.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_62 & _T_146) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39302.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_62 & _T_153) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock smaller than a beat (connected at BusWrapper.scala:333:72)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39316.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_62 & _T_153) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39317.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_62 & _T_156) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock address not aligned to size (connected at BusWrapper.scala:333:72)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39323.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_62 & _T_156) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39324.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_62 & _T_165) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock contains invalid mask (connected at BusWrapper.scala:333:72)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39340.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_62 & _T_165) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39341.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_72 & _T_143) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm type unsupported by manager (connected at BusWrapper.scala:333:72)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39411.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_72 & _T_143) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39412.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_72 & _T_146) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm from a client which does not support Probe (connected at BusWrapper.scala:333:72)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39418.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_72 & _T_146) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39419.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_72 & _T_153) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm smaller than a beat (connected at BusWrapper.scala:333:72)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39433.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_72 & _T_153) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39434.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_72 & _T_156) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm address not aligned to size (connected at BusWrapper.scala:333:72)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39440.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_72 & _T_156) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39441.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_72 & _T_146) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm requests NtoB (connected at BusWrapper.scala:333:72)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39456.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_72 & _T_146) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39457.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_72 & _T_165) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm contains invalid mask (connected at BusWrapper.scala:333:72)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39465.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_72 & _T_165) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39466.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_84 & _T_318) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Get type unsupported by manager (connected at BusWrapper.scala:333:72)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39541.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_84 & _T_318) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39542.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_84 & _T_156) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get address not aligned to size (connected at BusWrapper.scala:333:72)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39555.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_84 & _T_156) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39556.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_84 & _T_332) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get contains invalid mask (connected at BusWrapper.scala:333:72)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39571.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_84 & _T_332) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39572.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_90 & _T_400) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutFull type unsupported by manager (connected at BusWrapper.scala:333:72)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39649.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_90 & _T_400) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39650.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_90 & _T_156) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull address not aligned to size (connected at BusWrapper.scala:333:72)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39663.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_90 & _T_156) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39664.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_90 & _T_332) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull contains invalid mask (connected at BusWrapper.scala:333:72)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39679.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_90 & _T_332) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39680.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_96 & _T_400) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutPartial type unsupported by manager (connected at BusWrapper.scala:333:72)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39749.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_96 & _T_400) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39750.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_96 & _T_156) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial address not aligned to size (connected at BusWrapper.scala:333:72)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39763.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_96 & _T_156) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39764.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_96 & _T_494) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial contains invalid mask (connected at BusWrapper.scala:333:72)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39781.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_96 & _T_494) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39782.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_102 & _T_553) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Arithmetic type unsupported by manager (connected at BusWrapper.scala:333:72)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39846.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_102 & _T_553) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39847.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_102 & _T_156) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic address not aligned to size (connected at BusWrapper.scala:333:72)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39860.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_102 & _T_156) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39861.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_102 & _T_332) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic contains invalid mask (connected at BusWrapper.scala:333:72)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39876.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_102 & _T_332) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39877.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_108 & _T_553) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Logical type unsupported by manager (connected at BusWrapper.scala:333:72)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39941.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_108 & _T_553) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39942.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_108 & _T_156) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical address not aligned to size (connected at BusWrapper.scala:333:72)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39955.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_108 & _T_156) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39956.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_108 & _T_332) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical contains invalid mask (connected at BusWrapper.scala:333:72)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39971.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_108 & _T_332) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39972.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_114 & _T_704) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Hint type unsupported by manager (connected at BusWrapper.scala:333:72)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@40041.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_114 & _T_704) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@40042.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_114 & _T_156) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint address not aligned to size (connected at BusWrapper.scala:333:72)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@40055.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_114 & _T_156) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@40056.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_114 & _T_332) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint contains invalid mask (connected at BusWrapper.scala:333:72)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@40071.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_114 & _T_332) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@40072.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_in_d_valid & _T_726) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel has invalid opcode (connected at BusWrapper.scala:333:72)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40090.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (io_in_d_valid & _T_726) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40091.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_120 & _T_737) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck smaller than a beat (connected at BusWrapper.scala:333:72)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40112.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_120 & _T_737) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40113.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_120 & _T_741) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseeAck carries invalid param (connected at BusWrapper.scala:333:72)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40120.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_120 & _T_741) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40121.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_120 & _T_745) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck is corrupt (connected at BusWrapper.scala:333:72)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40128.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_120 & _T_745) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40129.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_120 & _T_749) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck is denied (connected at BusWrapper.scala:333:72)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40136.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_120 & _T_749) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40137.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_128 & _T_737) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant smaller than a beat (connected at BusWrapper.scala:333:72)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40161.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_128 & _T_737) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40162.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_128 & _T_764) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid cap param (connected at BusWrapper.scala:333:72)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40169.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_128 & _T_764) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40170.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_128 & _T_768) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries toN param (connected at BusWrapper.scala:333:72)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40177.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_128 & _T_768) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40178.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_128 & _T_745) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant is corrupt (connected at BusWrapper.scala:333:72)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40185.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_128 & _T_745) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40186.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_136 & _T_737) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData smaller than a beat (connected at BusWrapper.scala:333:72)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40219.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_136 & _T_737) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40220.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_136 & _T_764) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid cap param (connected at BusWrapper.scala:333:72)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40227.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_136 & _T_764) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40228.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_136 & _T_768) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries toN param (connected at BusWrapper.scala:333:72)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40235.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_136 & _T_768) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40236.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_136 & _T_801) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData is denied but not corrupt (connected at BusWrapper.scala:333:72)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40244.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_136 & _T_801) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40245.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_144 & _T_741) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck carries invalid param (connected at BusWrapper.scala:333:72)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40271.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_144 & _T_741) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40272.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_144 & _T_745) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck is corrupt (connected at BusWrapper.scala:333:72)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40279.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_144 & _T_745) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40280.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_148 & _T_741) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData carries invalid param (connected at BusWrapper.scala:333:72)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40306.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_148 & _T_741) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40307.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_148 & _T_801) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData is denied but not corrupt (connected at BusWrapper.scala:333:72)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40315.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_148 & _T_801) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40316.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_152 & _T_741) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck carries invalid param (connected at BusWrapper.scala:333:72)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40342.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_152 & _T_741) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40343.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_152 & _T_745) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck is corrupt (connected at BusWrapper.scala:333:72)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40350.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_152 & _T_745) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40351.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_900 & _T_904) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel opcode changed within multibeat operation (connected at BusWrapper.scala:333:72)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@40430.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_900 & _T_904) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@40431.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_900 & _T_912) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel size changed within multibeat operation (connected at BusWrapper.scala:333:72)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@40446.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_900 & _T_912) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@40447.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_900 & _T_920) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel address changed with multibeat operation (connected at BusWrapper.scala:333:72)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@40462.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_900 & _T_920) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@40463.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_949 & _T_953) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel opcode changed within multibeat operation (connected at BusWrapper.scala:333:72)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40511.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_949 & _T_953) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40512.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_949 & _T_957) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel param changed within multibeat operation (connected at BusWrapper.scala:333:72)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40519.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_949 & _T_957) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40520.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_949 & _T_961) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel size changed within multibeat operation (connected at BusWrapper.scala:333:72)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40527.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_949 & _T_961) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40528.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_949 & _T_969) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel sink changed with multibeat operation (connected at BusWrapper.scala:333:72)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40543.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_949 & _T_969) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40544.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_949 & _T_973) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel denied changed with multibeat operation (connected at BusWrapper.scala:333:72)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40551.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_949 & _T_973) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40552.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1032 & _T_1048) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel re-used a source ID (connected at BusWrapper.scala:333:72)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@40688.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1032 & _T_1048) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@40689.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1071 & _T_1082) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel acknowledged for nothing inflight (connected at BusWrapper.scala:333:72)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40739.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1071 & _T_1082) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40740.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1071 & _T_1095) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper opcode response (connected at BusWrapper.scala:333:72)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40756.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1071 & _T_1095) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40757.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1071 & _T_1102) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper response size (connected at BusWrapper.scala:333:72)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40767.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1071 & _T_1102) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40768.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1109 & _T_1114) begin
          $fwrite(32'h80000002,"Assertion failed: ready check\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40785.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1109 & _T_1114) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40786.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1121) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' and 'D' concurrent, despite minlatency 4 (connected at BusWrapper.scala:333:72)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40797.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1121) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@40798.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1140) begin
          $fwrite(32'h80000002,"Assertion failed: TileLink timeout expired (connected at BusWrapper.scala:333:72)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@40825.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1140) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@40826.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
