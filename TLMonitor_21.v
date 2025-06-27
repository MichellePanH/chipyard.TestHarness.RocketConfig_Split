module TLMonitor_21( // @[:chipyard.TestHarness.RocketConfig.fir@45132.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@45133.4]
  input         reset, // @[:chipyard.TestHarness.RocketConfig.fir@45134.4]
  input         io_in_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@45135.4]
  input         io_in_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@45135.4]
  input  [2:0]  io_in_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@45135.4]
  input  [2:0]  io_in_a_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@45135.4]
  input  [3:0]  io_in_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@45135.4]
  input  [2:0]  io_in_a_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@45135.4]
  input  [30:0] io_in_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@45135.4]
  input  [7:0]  io_in_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@45135.4]
  input         io_in_a_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@45135.4]
  input         io_in_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@45135.4]
  input         io_in_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@45135.4]
  input  [2:0]  io_in_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@45135.4]
  input  [1:0]  io_in_d_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@45135.4]
  input  [3:0]  io_in_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@45135.4]
  input  [2:0]  io_in_d_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@45135.4]
  input         io_in_d_bits_sink, // @[:chipyard.TestHarness.RocketConfig.fir@45135.4]
  input         io_in_d_bits_denied, // @[:chipyard.TestHarness.RocketConfig.fir@45135.4]
  input         io_in_d_bits_corrupt // @[:chipyard.TestHarness.RocketConfig.fir@45135.4]
);
  wire [31:0] plusarg_reader_out; // @[PlusArg.scala 44:11:chipyard.TestHarness.RocketConfig.fir@46828.4]
  wire  _T_4; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@45146.6]
  wire  _T_5; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@45147.6]
  wire  _T_6; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@45148.6]
  wire  _T_7; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@45149.6]
  wire  _T_9; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@45156.6]
  wire  _T_10; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@45157.6]
  wire  _T_11; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@45158.6]
  wire [26:0] _T_13; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@45160.6]
  wire [11:0] _T_15; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@45162.6]
  wire [30:0] _GEN_56; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@45163.6]
  wire [30:0] _T_16; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@45163.6]
  wire  _T_17; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@45164.6]
  wire [3:0] _T_20; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@45167.6]
  wire [2:0] _T_22; // @[Misc.scala 201:81:chipyard.TestHarness.RocketConfig.fir@45169.6]
  wire  _T_23; // @[Misc.scala 205:21:chipyard.TestHarness.RocketConfig.fir@45170.6]
  wire  _T_26; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@45173.6]
  wire  _T_28; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@45175.6]
  wire  _T_29; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@45176.6]
  wire  _T_31; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@45178.6]
  wire  _T_32; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@45179.6]
  wire  _T_35; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@45182.6]
  wire  _T_36; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@45183.6]
  wire  _T_37; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@45184.6]
  wire  _T_38; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@45185.6]
  wire  _T_39; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@45186.6]
  wire  _T_40; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@45187.6]
  wire  _T_41; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@45188.6]
  wire  _T_42; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@45189.6]
  wire  _T_43; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@45190.6]
  wire  _T_44; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@45191.6]
  wire  _T_45; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@45192.6]
  wire  _T_46; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@45193.6]
  wire  _T_47; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@45194.6]
  wire  _T_50; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@45197.6]
  wire  _T_51; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@45198.6]
  wire  _T_52; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@45199.6]
  wire  _T_53; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@45200.6]
  wire  _T_54; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@45201.6]
  wire  _T_55; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@45202.6]
  wire  _T_56; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@45203.6]
  wire  _T_57; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@45204.6]
  wire  _T_58; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@45205.6]
  wire  _T_59; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@45206.6]
  wire  _T_60; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@45207.6]
  wire  _T_61; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@45208.6]
  wire  _T_62; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@45209.6]
  wire  _T_63; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@45210.6]
  wire  _T_64; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@45211.6]
  wire  _T_65; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@45212.6]
  wire  _T_66; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@45213.6]
  wire  _T_67; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@45214.6]
  wire  _T_68; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@45215.6]
  wire  _T_69; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@45216.6]
  wire  _T_70; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@45217.6]
  wire  _T_71; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@45218.6]
  wire  _T_72; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@45219.6]
  wire  _T_73; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@45220.6]
  wire  _T_74; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@45221.6]
  wire [7:0] _T_81; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@45228.6]
  wire [31:0] _T_85; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@45232.6]
  wire  _T_120; // @[Monitor.scala 79:25:chipyard.TestHarness.RocketConfig.fir@45271.6]
  wire [30:0] _T_122; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@45274.8]
  wire [31:0] _T_123; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@45275.8]
  wire [31:0] _T_125; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@45277.8]
  wire  _T_126; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@45278.8]
  wire [30:0] _T_127; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@45279.8]
  wire [31:0] _T_128; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@45280.8]
  wire [31:0] _T_130; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@45282.8]
  wire  _T_131; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@45283.8]
  wire [30:0] _T_132; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@45284.8]
  wire [31:0] _T_133; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@45285.8]
  wire [31:0] _T_135; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@45287.8]
  wire  _T_136; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@45288.8]
  wire [30:0] _T_137; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@45289.8]
  wire [31:0] _T_138; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@45290.8]
  wire [31:0] _T_140; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@45292.8]
  wire  _T_141; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@45293.8]
  wire [30:0] _T_142; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@45294.8]
  wire [31:0] _T_143; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@45295.8]
  wire [31:0] _T_145; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@45297.8]
  wire  _T_146; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@45298.8]
  wire [31:0] _T_150; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@45302.8]
  wire  _T_151; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@45303.8]
  wire [30:0] _T_152; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@45304.8]
  wire [31:0] _T_153; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@45305.8]
  wire [31:0] _T_155; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@45307.8]
  wire  _T_156; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@45308.8]
  wire  _T_167; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45319.8]
  wire  _T_173; // @[Parameters.scala 92:48:chipyard.TestHarness.RocketConfig.fir@45334.8]
  wire  _T_175; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@45336.8]
  wire  _T_183; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45345.8]
  wire  _T_184; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45346.8]
  wire  _T_186; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45352.8]
  wire  _T_187; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45353.8]
  wire  _T_190; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45360.8]
  wire  _T_191; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45361.8]
  wire  _T_193; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45367.8]
  wire  _T_194; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45368.8]
  wire  _T_195; // @[Bundles.scala 110:27:chipyard.TestHarness.RocketConfig.fir@45373.8]
  wire  _T_197; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45375.8]
  wire  _T_198; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45376.8]
  wire [7:0] _T_199; // @[Monitor.scala 86:18:chipyard.TestHarness.RocketConfig.fir@45381.8]
  wire  _T_200; // @[Monitor.scala 86:31:chipyard.TestHarness.RocketConfig.fir@45382.8]
  wire  _T_202; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45384.8]
  wire  _T_203; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45385.8]
  wire  _T_204; // @[Monitor.scala 87:18:chipyard.TestHarness.RocketConfig.fir@45390.8]
  wire  _T_206; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45392.8]
  wire  _T_207; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45393.8]
  wire  _T_208; // @[Monitor.scala 90:25:chipyard.TestHarness.RocketConfig.fir@45399.6]
  wire  _T_287; // @[Monitor.scala 97:31:chipyard.TestHarness.RocketConfig.fir@45509.8]
  wire  _T_289; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45511.8]
  wire  _T_290; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45512.8]
  wire  _T_300; // @[Monitor.scala 102:25:chipyard.TestHarness.RocketConfig.fir@45535.6]
  wire  _T_302; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@45538.8]
  wire  _T_310; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@45546.8]
  wire  _T_312; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@45548.8]
  wire  _T_345; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@45581.8]
  wire  _T_346; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@45582.8]
  wire  _T_347; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@45583.8]
  wire  _T_348; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@45584.8]
  wire  _T_349; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@45585.8]
  wire  _T_350; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@45586.8]
  wire  _T_352; // @[Parameters.scala 553:30:chipyard.TestHarness.RocketConfig.fir@45588.8]
  wire  _T_354; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45590.8]
  wire  _T_355; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45591.8]
  wire  _T_362; // @[Monitor.scala 106:31:chipyard.TestHarness.RocketConfig.fir@45610.8]
  wire  _T_364; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45612.8]
  wire  _T_365; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45613.8]
  wire  _T_366; // @[Monitor.scala 107:30:chipyard.TestHarness.RocketConfig.fir@45618.8]
  wire  _T_368; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45620.8]
  wire  _T_369; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45621.8]
  wire  _T_374; // @[Monitor.scala 111:25:chipyard.TestHarness.RocketConfig.fir@45635.6]
  wire  _T_418; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@45680.8]
  wire  _T_427; // @[Parameters.scala 553:30:chipyard.TestHarness.RocketConfig.fir@45689.8]
  wire  _T_430; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45692.8]
  wire  _T_431; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45693.8]
  wire  _T_446; // @[Monitor.scala 119:25:chipyard.TestHarness.RocketConfig.fir@45729.6]
  wire [7:0] _T_514; // @[Monitor.scala 124:33:chipyard.TestHarness.RocketConfig.fir@45814.8]
  wire [7:0] _T_515; // @[Monitor.scala 124:31:chipyard.TestHarness.RocketConfig.fir@45815.8]
  wire  _T_516; // @[Monitor.scala 124:40:chipyard.TestHarness.RocketConfig.fir@45816.8]
  wire  _T_518; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45818.8]
  wire  _T_519; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45819.8]
  wire  _T_520; // @[Monitor.scala 127:25:chipyard.TestHarness.RocketConfig.fir@45825.6]
  wire  _T_522; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@45828.8]
  wire  _T_535; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@45841.8]
  wire  _T_536; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@45842.8]
  wire  _T_571; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45877.8]
  wire  _T_572; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45878.8]
  wire  _T_579; // @[Bundles.scala 140:33:chipyard.TestHarness.RocketConfig.fir@45897.8]
  wire  _T_581; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45899.8]
  wire  _T_582; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45900.8]
  wire  _T_587; // @[Monitor.scala 135:25:chipyard.TestHarness.RocketConfig.fir@45914.6]
  wire  _T_646; // @[Bundles.scala 147:30:chipyard.TestHarness.RocketConfig.fir@45986.8]
  wire  _T_648; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45988.8]
  wire  _T_649; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45989.8]
  wire  _T_654; // @[Monitor.scala 143:25:chipyard.TestHarness.RocketConfig.fir@46003.6]
  wire  _T_705; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@46055.8]
  wire  _T_706; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@46056.8]
  wire  _T_713; // @[Bundles.scala 160:28:chipyard.TestHarness.RocketConfig.fir@46075.8]
  wire  _T_715; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@46077.8]
  wire  _T_716; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@46078.8]
  wire  _T_725; // @[Bundles.scala 44:24:chipyard.TestHarness.RocketConfig.fir@46102.6]
  wire  _T_727; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46104.6]
  wire  _T_728; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46105.6]
  wire  _T_729; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@46110.6]
  wire  _T_730; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@46111.6]
  wire  _T_731; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@46112.6]
  wire  _T_732; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@46113.6]
  wire  _T_734; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@46120.6]
  wire  _T_735; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@46121.6]
  wire  _T_736; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@46122.6]
  wire  _T_738; // @[Monitor.scala 307:25:chipyard.TestHarness.RocketConfig.fir@46124.6]
  wire  _T_740; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46127.8]
  wire  _T_741; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46128.8]
  wire  _T_742; // @[Monitor.scala 309:27:chipyard.TestHarness.RocketConfig.fir@46133.8]
  wire  _T_744; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46135.8]
  wire  _T_745; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46136.8]
  wire  _T_746; // @[Monitor.scala 310:28:chipyard.TestHarness.RocketConfig.fir@46141.8]
  wire  _T_748; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46143.8]
  wire  _T_749; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46144.8]
  wire  _T_750; // @[Monitor.scala 311:15:chipyard.TestHarness.RocketConfig.fir@46149.8]
  wire  _T_752; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46151.8]
  wire  _T_753; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46152.8]
  wire  _T_754; // @[Monitor.scala 312:15:chipyard.TestHarness.RocketConfig.fir@46157.8]
  wire  _T_756; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46159.8]
  wire  _T_757; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46160.8]
  wire  _T_758; // @[Monitor.scala 315:25:chipyard.TestHarness.RocketConfig.fir@46166.6]
  wire  _T_769; // @[Bundles.scala 104:26:chipyard.TestHarness.RocketConfig.fir@46190.8]
  wire  _T_771; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46192.8]
  wire  _T_772; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46193.8]
  wire  _T_773; // @[Monitor.scala 320:28:chipyard.TestHarness.RocketConfig.fir@46198.8]
  wire  _T_775; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46200.8]
  wire  _T_776; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46201.8]
  wire  _T_786; // @[Monitor.scala 325:25:chipyard.TestHarness.RocketConfig.fir@46224.6]
  wire  _T_806; // @[Monitor.scala 331:30:chipyard.TestHarness.RocketConfig.fir@46265.8]
  wire  _T_808; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46267.8]
  wire  _T_809; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46268.8]
  wire  _T_815; // @[Monitor.scala 335:25:chipyard.TestHarness.RocketConfig.fir@46283.6]
  wire  _T_832; // @[Monitor.scala 343:25:chipyard.TestHarness.RocketConfig.fir@46318.6]
  wire  _T_850; // @[Monitor.scala 351:25:chipyard.TestHarness.RocketConfig.fir@46354.6]
  wire  _T_882; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@46420.4]
  wire  _T_889; // @[Edges.scala 93:28:chipyard.TestHarness.RocketConfig.fir@46427.4]
  reg [8:0] _T_891; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@46429.4]
  reg [31:0] _RAND_0;
  wire [8:0] _T_893; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@46431.4]
  wire  _T_894; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@46432.4]
  reg [2:0] _T_902; // @[Monitor.scala 381:22:chipyard.TestHarness.RocketConfig.fir@46443.4]
  reg [31:0] _RAND_1;
  reg [2:0] _T_903; // @[Monitor.scala 382:22:chipyard.TestHarness.RocketConfig.fir@46444.4]
  reg [31:0] _RAND_2;
  reg [3:0] _T_904; // @[Monitor.scala 383:22:chipyard.TestHarness.RocketConfig.fir@46445.4]
  reg [31:0] _RAND_3;
  reg [2:0] _T_905; // @[Monitor.scala 384:22:chipyard.TestHarness.RocketConfig.fir@46446.4]
  reg [31:0] _RAND_4;
  reg [30:0] _T_906; // @[Monitor.scala 385:22:chipyard.TestHarness.RocketConfig.fir@46447.4]
  reg [31:0] _RAND_5;
  wire  _T_907; // @[Monitor.scala 386:22:chipyard.TestHarness.RocketConfig.fir@46448.4]
  wire  _T_908; // @[Monitor.scala 386:19:chipyard.TestHarness.RocketConfig.fir@46449.4]
  wire  _T_909; // @[Monitor.scala 387:32:chipyard.TestHarness.RocketConfig.fir@46451.6]
  wire  _T_911; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@46453.6]
  wire  _T_912; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@46454.6]
  wire  _T_913; // @[Monitor.scala 388:32:chipyard.TestHarness.RocketConfig.fir@46459.6]
  wire  _T_915; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@46461.6]
  wire  _T_916; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@46462.6]
  wire  _T_917; // @[Monitor.scala 389:32:chipyard.TestHarness.RocketConfig.fir@46467.6]
  wire  _T_919; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@46469.6]
  wire  _T_920; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@46470.6]
  wire  _T_921; // @[Monitor.scala 390:32:chipyard.TestHarness.RocketConfig.fir@46475.6]
  wire  _T_923; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@46477.6]
  wire  _T_924; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@46478.6]
  wire  _T_925; // @[Monitor.scala 391:32:chipyard.TestHarness.RocketConfig.fir@46483.6]
  wire  _T_927; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@46485.6]
  wire  _T_928; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@46486.6]
  wire  _T_930; // @[Monitor.scala 393:20:chipyard.TestHarness.RocketConfig.fir@46493.4]
  wire  _T_931; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@46501.4]
  wire [26:0] _T_933; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@46503.4]
  wire [11:0] _T_935; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@46505.4]
  reg [8:0] _T_939; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@46509.4]
  reg [31:0] _RAND_6;
  wire [8:0] _T_941; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@46511.4]
  wire  _T_942; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@46512.4]
  reg [2:0] _T_950; // @[Monitor.scala 532:22:chipyard.TestHarness.RocketConfig.fir@46523.4]
  reg [31:0] _RAND_7;
  reg [1:0] _T_951; // @[Monitor.scala 533:22:chipyard.TestHarness.RocketConfig.fir@46524.4]
  reg [31:0] _RAND_8;
  reg [3:0] _T_952; // @[Monitor.scala 534:22:chipyard.TestHarness.RocketConfig.fir@46525.4]
  reg [31:0] _RAND_9;
  reg [2:0] _T_953; // @[Monitor.scala 535:22:chipyard.TestHarness.RocketConfig.fir@46526.4]
  reg [31:0] _RAND_10;
  reg  _T_954; // @[Monitor.scala 536:22:chipyard.TestHarness.RocketConfig.fir@46527.4]
  reg [31:0] _RAND_11;
  reg  _T_955; // @[Monitor.scala 537:22:chipyard.TestHarness.RocketConfig.fir@46528.4]
  reg [31:0] _RAND_12;
  wire  _T_956; // @[Monitor.scala 538:22:chipyard.TestHarness.RocketConfig.fir@46529.4]
  wire  _T_957; // @[Monitor.scala 538:19:chipyard.TestHarness.RocketConfig.fir@46530.4]
  wire  _T_958; // @[Monitor.scala 539:29:chipyard.TestHarness.RocketConfig.fir@46532.6]
  wire  _T_960; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46534.6]
  wire  _T_961; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46535.6]
  wire  _T_962; // @[Monitor.scala 540:29:chipyard.TestHarness.RocketConfig.fir@46540.6]
  wire  _T_964; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46542.6]
  wire  _T_965; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46543.6]
  wire  _T_966; // @[Monitor.scala 541:29:chipyard.TestHarness.RocketConfig.fir@46548.6]
  wire  _T_968; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46550.6]
  wire  _T_969; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46551.6]
  wire  _T_970; // @[Monitor.scala 542:29:chipyard.TestHarness.RocketConfig.fir@46556.6]
  wire  _T_972; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46558.6]
  wire  _T_973; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46559.6]
  wire  _T_974; // @[Monitor.scala 543:29:chipyard.TestHarness.RocketConfig.fir@46564.6]
  wire  _T_976; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46566.6]
  wire  _T_977; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46567.6]
  wire  _T_978; // @[Monitor.scala 544:29:chipyard.TestHarness.RocketConfig.fir@46572.6]
  wire  _T_980; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46574.6]
  wire  _T_981; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46575.6]
  wire  _T_983; // @[Monitor.scala 546:20:chipyard.TestHarness.RocketConfig.fir@46582.4]
  reg [4:0] inflight; // @[Monitor.scala 608:27:chipyard.TestHarness.RocketConfig.fir@46591.4]
  reg [31:0] _RAND_13;
  reg [19:0] inflight_opcodes; // @[Monitor.scala 610:35:chipyard.TestHarness.RocketConfig.fir@46592.4]
  reg [31:0] _RAND_14;
  reg [39:0] inflight_sizes; // @[Monitor.scala 612:33:chipyard.TestHarness.RocketConfig.fir@46593.4]
  reg [63:0] _RAND_15;
  reg [8:0] _T_993; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@46603.4]
  reg [31:0] _RAND_16;
  wire [8:0] _T_995; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@46605.4]
  wire  a_first; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@46606.4]
  reg [8:0] _T_1011; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@46625.4]
  reg [31:0] _RAND_17;
  wire [8:0] _T_1013; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@46627.4]
  wire  d_first; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@46628.4]
  wire [4:0] _GEN_57; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@46647.4]
  wire [5:0] _T_1021; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@46647.4]
  wire [19:0] _T_1022; // @[Monitor.scala 629:44:chipyard.TestHarness.RocketConfig.fir@46648.4]
  wire [15:0] _T_1026; // @[Monitor.scala 606:57:chipyard.TestHarness.RocketConfig.fir@46652.4]
  wire [19:0] _GEN_58; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@46653.4]
  wire [19:0] _T_1027; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@46653.4]
  wire [19:0] _T_1028; // @[Monitor.scala 629:152:chipyard.TestHarness.RocketConfig.fir@46654.4]
  wire [5:0] _T_1029; // @[Monitor.scala 633:65:chipyard.TestHarness.RocketConfig.fir@46658.4]
  wire [39:0] _T_1030; // @[Monitor.scala 633:40:chipyard.TestHarness.RocketConfig.fir@46659.4]
  wire [15:0] _T_1034; // @[Monitor.scala 606:57:chipyard.TestHarness.RocketConfig.fir@46663.4]
  wire [39:0] _GEN_60; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@46664.4]
  wire [39:0] _T_1035; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@46664.4]
  wire [39:0] _T_1036; // @[Monitor.scala 633:144:chipyard.TestHarness.RocketConfig.fir@46665.4]
  wire  _T_1040; // @[Monitor.scala 643:27:chipyard.TestHarness.RocketConfig.fir@46690.4]
  wire [7:0] _T_1042; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@46693.6]
  wire [3:0] _T_1043; // @[Monitor.scala 645:53:chipyard.TestHarness.RocketConfig.fir@46695.6]
  wire [3:0] _T_1044; // @[Monitor.scala 645:61:chipyard.TestHarness.RocketConfig.fir@46696.6]
  wire [4:0] _T_1045; // @[Monitor.scala 646:49:chipyard.TestHarness.RocketConfig.fir@46698.6]
  wire [4:0] _T_1046; // @[Monitor.scala 646:57:chipyard.TestHarness.RocketConfig.fir@46699.6]
  wire [4:0] _GEN_62; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@46701.6]
  wire [5:0] _T_1047; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@46701.6]
  wire [3:0] a_opcodes_set_interm; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@46692.4]
  wire [66:0] _GEN_63; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@46702.6]
  wire [66:0] _T_1048; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@46702.6]
  wire [5:0] _T_1049; // @[Monitor.scala 648:68:chipyard.TestHarness.RocketConfig.fir@46704.6]
  wire [4:0] a_sizes_set_interm; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@46692.4]
  wire [67:0] _GEN_64; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@46705.6]
  wire [67:0] _T_1050; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@46705.6]
  wire [4:0] _T_1051; // @[Monitor.scala 649:26:chipyard.TestHarness.RocketConfig.fir@46707.6]
  wire  _T_1053; // @[Monitor.scala 649:17:chipyard.TestHarness.RocketConfig.fir@46709.6]
  wire  _T_1055; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@46711.6]
  wire  _T_1056; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@46712.6]
  wire [7:0] _GEN_15; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@46692.4]
  wire [66:0] _GEN_18; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@46692.4]
  wire [67:0] _GEN_19; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@46692.4]
  wire  _T_1059; // @[Monitor.scala 660:27:chipyard.TestHarness.RocketConfig.fir@46726.4]
  wire  _T_1061; // @[Monitor.scala 660:75:chipyard.TestHarness.RocketConfig.fir@46728.4]
  wire  _T_1062; // @[Monitor.scala 660:72:chipyard.TestHarness.RocketConfig.fir@46729.4]
  wire [7:0] _T_1063; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@46731.6]
  wire [78:0] _GEN_66; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@46738.6]
  wire [78:0] _T_1069; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@46738.6]
  wire [78:0] _GEN_67; // @[Monitor.scala 663:72:chipyard.TestHarness.RocketConfig.fir@46745.6]
  wire [78:0] _T_1075; // @[Monitor.scala 663:72:chipyard.TestHarness.RocketConfig.fir@46745.6]
  wire [7:0] _GEN_20; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@46730.4]
  wire [78:0] _GEN_21; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@46730.4]
  wire [78:0] _GEN_22; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@46730.4]
  wire  _T_1076; // @[Monitor.scala 665:26:chipyard.TestHarness.RocketConfig.fir@46748.4]
  wire  _T_1079; // @[Monitor.scala 665:71:chipyard.TestHarness.RocketConfig.fir@46751.4]
  wire [4:0] _T_1080; // @[Monitor.scala 666:25:chipyard.TestHarness.RocketConfig.fir@46753.6]
  wire  _T_1082; // @[Monitor.scala 666:93:chipyard.TestHarness.RocketConfig.fir@46755.6]
  wire  _T_1083; // @[Monitor.scala 666:68:chipyard.TestHarness.RocketConfig.fir@46756.6]
  wire  _T_1084; // @[Monitor.scala 666:142:chipyard.TestHarness.RocketConfig.fir@46757.6]
  wire  _T_1085; // @[Monitor.scala 666:119:chipyard.TestHarness.RocketConfig.fir@46758.6]
  wire  _T_1086; // @[Monitor.scala 666:166:chipyard.TestHarness.RocketConfig.fir@46759.6]
  wire  _T_1087; // @[Monitor.scala 666:49:chipyard.TestHarness.RocketConfig.fir@46760.6]
  wire  _T_1089; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46762.6]
  wire  _T_1090; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46763.6]
  wire [3:0] a_opcode_lookup; // @[:chipyard.TestHarness.RocketConfig.fir@46645.4 :chipyard.TestHarness.RocketConfig.fir@46646.4 Monitor.scala 629:21:chipyard.TestHarness.RocketConfig.fir@46655.4]
  wire [2:0] _GEN_25; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@46769.6]
  wire [2:0] _GEN_26; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@46769.6]
  wire [2:0] _GEN_27; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@46769.6]
  wire [2:0] _GEN_28; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@46769.6]
  wire [2:0] _GEN_29; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@46769.6]
  wire [2:0] _GEN_30; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@46769.6]
  wire  _T_1092; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@46769.6]
  wire [2:0] _GEN_37; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@46771.6]
  wire [2:0] _GEN_38; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@46771.6]
  wire  _T_1094; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@46771.6]
  wire  _T_1095; // @[Monitor.scala 667:71:chipyard.TestHarness.RocketConfig.fir@46772.6]
  wire [2:0] _GEN_41; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@46773.6]
  wire [2:0] _GEN_42; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@46773.6]
  wire [2:0] _GEN_43; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@46773.6]
  wire [2:0] _GEN_44; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@46773.6]
  wire [2:0] _GEN_45; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@46773.6]
  wire [2:0] _GEN_46; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@46773.6]
  wire  _T_1096; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@46773.6]
  wire [2:0] _GEN_53; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@46774.6]
  wire [2:0] _GEN_54; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@46774.6]
  wire  _T_1097; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@46774.6]
  wire  _T_1098; // @[Monitor.scala 668:99:chipyard.TestHarness.RocketConfig.fir@46775.6]
  wire  _T_1099; // @[Monitor.scala 668:34:chipyard.TestHarness.RocketConfig.fir@46776.6]
  wire  _T_1100; // @[Monitor.scala 668:15:chipyard.TestHarness.RocketConfig.fir@46777.6]
  wire  _T_1102; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46779.6]
  wire  _T_1103; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46780.6]
  wire [7:0] a_size_lookup; // @[:chipyard.TestHarness.RocketConfig.fir@46656.4 :chipyard.TestHarness.RocketConfig.fir@46657.4 Monitor.scala 633:19:chipyard.TestHarness.RocketConfig.fir@46666.4]
  wire [7:0] _GEN_68; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@46785.6]
  wire  _T_1104; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@46785.6]
  wire  _T_1106; // @[Monitor.scala 670:72:chipyard.TestHarness.RocketConfig.fir@46787.6]
  wire  _T_1107; // @[Monitor.scala 670:53:chipyard.TestHarness.RocketConfig.fir@46788.6]
  wire  _T_1109; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46790.6]
  wire  _T_1110; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46791.6]
  wire  _T_1112; // @[Monitor.scala 672:36:chipyard.TestHarness.RocketConfig.fir@46798.4]
  wire  _T_1113; // @[Monitor.scala 672:47:chipyard.TestHarness.RocketConfig.fir@46799.4]
  wire  _T_1115; // @[Monitor.scala 672:65:chipyard.TestHarness.RocketConfig.fir@46801.4]
  wire  _T_1117; // @[Monitor.scala 672:116:chipyard.TestHarness.RocketConfig.fir@46803.4]
  wire  _T_1118; // @[Monitor.scala 673:15:chipyard.TestHarness.RocketConfig.fir@46805.6]
  wire  _T_1119; // @[Monitor.scala 673:32:chipyard.TestHarness.RocketConfig.fir@46806.6]
  wire  _T_1121; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46808.6]
  wire  _T_1122; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46809.6]
  wire [4:0] a_set; // @[:chipyard.TestHarness.RocketConfig.fir@46639.4 :chipyard.TestHarness.RocketConfig.fir@46640.4 Monitor.scala 644:13:chipyard.TestHarness.RocketConfig.fir@46694.6]
  wire [4:0] _T_1123; // @[Monitor.scala 680:27:chipyard.TestHarness.RocketConfig.fir@46815.4]
  wire [4:0] d_clr; // @[:chipyard.TestHarness.RocketConfig.fir@46718.4 :chipyard.TestHarness.RocketConfig.fir@46719.4 Monitor.scala 661:13:chipyard.TestHarness.RocketConfig.fir@46732.6]
  wire [4:0] _T_1124; // @[Monitor.scala 680:38:chipyard.TestHarness.RocketConfig.fir@46816.4]
  wire [4:0] _T_1125; // @[Monitor.scala 680:36:chipyard.TestHarness.RocketConfig.fir@46817.4]
  wire [19:0] a_opcodes_set; // @[:chipyard.TestHarness.RocketConfig.fir@46641.4 :chipyard.TestHarness.RocketConfig.fir@46642.4 Monitor.scala 647:21:chipyard.TestHarness.RocketConfig.fir@46703.6]
  wire [19:0] _T_1126; // @[Monitor.scala 681:43:chipyard.TestHarness.RocketConfig.fir@46819.4]
  wire [19:0] d_opcodes_clr; // @[:chipyard.TestHarness.RocketConfig.fir@46720.4 :chipyard.TestHarness.RocketConfig.fir@46721.4 Monitor.scala 662:21:chipyard.TestHarness.RocketConfig.fir@46739.6]
  wire [19:0] _T_1127; // @[Monitor.scala 681:62:chipyard.TestHarness.RocketConfig.fir@46820.4]
  wire [19:0] _T_1128; // @[Monitor.scala 681:60:chipyard.TestHarness.RocketConfig.fir@46821.4]
  wire [39:0] a_sizes_set; // @[:chipyard.TestHarness.RocketConfig.fir@46643.4 :chipyard.TestHarness.RocketConfig.fir@46644.4 Monitor.scala 648:19:chipyard.TestHarness.RocketConfig.fir@46706.6]
  wire [39:0] _T_1129; // @[Monitor.scala 682:39:chipyard.TestHarness.RocketConfig.fir@46823.4]
  wire [39:0] d_sizes_clr; // @[:chipyard.TestHarness.RocketConfig.fir@46722.4 :chipyard.TestHarness.RocketConfig.fir@46723.4 Monitor.scala 663:19:chipyard.TestHarness.RocketConfig.fir@46746.6]
  wire [39:0] _T_1130; // @[Monitor.scala 682:56:chipyard.TestHarness.RocketConfig.fir@46824.4]
  wire [39:0] _T_1131; // @[Monitor.scala 682:54:chipyard.TestHarness.RocketConfig.fir@46825.4]
  reg [31:0] _T_1132; // @[Monitor.scala 684:27:chipyard.TestHarness.RocketConfig.fir@46827.4]
  reg [31:0] _RAND_18;
  wire  _T_1133; // @[Monitor.scala 687:26:chipyard.TestHarness.RocketConfig.fir@46830.4]
  wire  _T_1134; // @[Monitor.scala 687:16:chipyard.TestHarness.RocketConfig.fir@46831.4]
  wire  _T_1135; // @[Monitor.scala 687:39:chipyard.TestHarness.RocketConfig.fir@46832.4]
  wire  _T_1136; // @[Monitor.scala 687:30:chipyard.TestHarness.RocketConfig.fir@46833.4]
  wire  _T_1137; // @[Monitor.scala 687:59:chipyard.TestHarness.RocketConfig.fir@46834.4]
  wire  _T_1138; // @[Monitor.scala 687:47:chipyard.TestHarness.RocketConfig.fir@46835.4]
  wire  _T_1140; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@46837.4]
  wire  _T_1141; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@46838.4]
  wire [31:0] _T_1143; // @[Monitor.scala 689:26:chipyard.TestHarness.RocketConfig.fir@46844.4]
  wire  _T_1146; // @[Monitor.scala 690:27:chipyard.TestHarness.RocketConfig.fir@46848.4]
  wire  _GEN_69; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45321.10]
  wire  _GEN_85; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45449.10]
  wire  _GEN_103; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45593.10]
  wire  _GEN_115; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45695.10]
  wire  _GEN_125; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45789.10]
  wire  _GEN_135; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45880.10]
  wire  _GEN_145; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45969.10]
  wire  _GEN_155; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@46058.10]
  wire  _GEN_167; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46130.10]
  wire  _GEN_177; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46172.10]
  wire  _GEN_189; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46230.10]
  wire  _GEN_201; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46289.10]
  wire  _GEN_207; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46324.10]
  wire  _GEN_213; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46360.10]
  plusarg_reader #(.FORMAT("tilelink_timeout=%d"), .DEFAULT(0), .WIDTH(32)) plusarg_reader ( // @[PlusArg.scala 44:11:chipyard.TestHarness.RocketConfig.fir@46828.4]
    .out(plusarg_reader_out)
  );
  assign _T_4 = io_in_a_bits_source == 3'h4; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@45146.6]
  assign _T_5 = io_in_a_bits_source == 3'h0; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@45147.6]
  assign _T_6 = io_in_a_bits_source == 3'h1; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@45148.6]
  assign _T_7 = io_in_a_bits_source == 3'h2; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@45149.6]
  assign _T_9 = _T_4 | _T_5; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@45156.6]
  assign _T_10 = _T_9 | _T_6; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@45157.6]
  assign _T_11 = _T_10 | _T_7; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@45158.6]
  assign _T_13 = 27'hfff << io_in_a_bits_size; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@45160.6]
  assign _T_15 = ~_T_13[11:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@45162.6]
  assign _GEN_56 = {{19'd0}, _T_15}; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@45163.6]
  assign _T_16 = io_in_a_bits_address & _GEN_56; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@45163.6]
  assign _T_17 = _T_16 == 31'h0; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@45164.6]
  assign _T_20 = 4'h1 << io_in_a_bits_size[1:0]; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@45167.6]
  assign _T_22 = _T_20[2:0] | 3'h1; // @[Misc.scala 201:81:chipyard.TestHarness.RocketConfig.fir@45169.6]
  assign _T_23 = io_in_a_bits_size >= 4'h3; // @[Misc.scala 205:21:chipyard.TestHarness.RocketConfig.fir@45170.6]
  assign _T_26 = ~io_in_a_bits_address[2]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@45173.6]
  assign _T_28 = _T_22[2] & _T_26; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@45175.6]
  assign _T_29 = _T_23 | _T_28; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@45176.6]
  assign _T_31 = _T_22[2] & io_in_a_bits_address[2]; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@45178.6]
  assign _T_32 = _T_23 | _T_31; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@45179.6]
  assign _T_35 = ~io_in_a_bits_address[1]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@45182.6]
  assign _T_36 = _T_26 & _T_35; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@45183.6]
  assign _T_37 = _T_22[1] & _T_36; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@45184.6]
  assign _T_38 = _T_29 | _T_37; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@45185.6]
  assign _T_39 = _T_26 & io_in_a_bits_address[1]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@45186.6]
  assign _T_40 = _T_22[1] & _T_39; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@45187.6]
  assign _T_41 = _T_29 | _T_40; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@45188.6]
  assign _T_42 = io_in_a_bits_address[2] & _T_35; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@45189.6]
  assign _T_43 = _T_22[1] & _T_42; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@45190.6]
  assign _T_44 = _T_32 | _T_43; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@45191.6]
  assign _T_45 = io_in_a_bits_address[2] & io_in_a_bits_address[1]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@45192.6]
  assign _T_46 = _T_22[1] & _T_45; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@45193.6]
  assign _T_47 = _T_32 | _T_46; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@45194.6]
  assign _T_50 = ~io_in_a_bits_address[0]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@45197.6]
  assign _T_51 = _T_36 & _T_50; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@45198.6]
  assign _T_52 = _T_22[0] & _T_51; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@45199.6]
  assign _T_53 = _T_38 | _T_52; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@45200.6]
  assign _T_54 = _T_36 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@45201.6]
  assign _T_55 = _T_22[0] & _T_54; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@45202.6]
  assign _T_56 = _T_38 | _T_55; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@45203.6]
  assign _T_57 = _T_39 & _T_50; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@45204.6]
  assign _T_58 = _T_22[0] & _T_57; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@45205.6]
  assign _T_59 = _T_41 | _T_58; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@45206.6]
  assign _T_60 = _T_39 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@45207.6]
  assign _T_61 = _T_22[0] & _T_60; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@45208.6]
  assign _T_62 = _T_41 | _T_61; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@45209.6]
  assign _T_63 = _T_42 & _T_50; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@45210.6]
  assign _T_64 = _T_22[0] & _T_63; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@45211.6]
  assign _T_65 = _T_44 | _T_64; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@45212.6]
  assign _T_66 = _T_42 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@45213.6]
  assign _T_67 = _T_22[0] & _T_66; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@45214.6]
  assign _T_68 = _T_44 | _T_67; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@45215.6]
  assign _T_69 = _T_45 & _T_50; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@45216.6]
  assign _T_70 = _T_22[0] & _T_69; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@45217.6]
  assign _T_71 = _T_47 | _T_70; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@45218.6]
  assign _T_72 = _T_45 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@45219.6]
  assign _T_73 = _T_22[0] & _T_72; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@45220.6]
  assign _T_74 = _T_47 | _T_73; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@45221.6]
  assign _T_81 = {_T_74,_T_71,_T_68,_T_65,_T_62,_T_59,_T_56,_T_53}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@45228.6]
  assign _T_85 = {1'b0,$signed(io_in_a_bits_address)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@45232.6]
  assign _T_120 = io_in_a_bits_opcode == 3'h6; // @[Monitor.scala 79:25:chipyard.TestHarness.RocketConfig.fir@45271.6]
  assign _T_122 = io_in_a_bits_address ^ 31'h3000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@45274.8]
  assign _T_123 = {1'b0,$signed(_T_122)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@45275.8]
  assign _T_125 = $signed(_T_123) & -32'sh1000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@45277.8]
  assign _T_126 = $signed(_T_125) == 32'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@45278.8]
  assign _T_127 = io_in_a_bits_address ^ 31'h2010000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@45279.8]
  assign _T_128 = {1'b0,$signed(_T_127)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@45280.8]
  assign _T_130 = $signed(_T_128) & -32'sh1000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@45282.8]
  assign _T_131 = $signed(_T_130) == 32'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@45283.8]
  assign _T_132 = io_in_a_bits_address ^ 31'h54000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@45284.8]
  assign _T_133 = {1'b0,$signed(_T_132)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@45285.8]
  assign _T_135 = $signed(_T_133) & -32'sh1000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@45287.8]
  assign _T_136 = $signed(_T_135) == 32'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@45288.8]
  assign _T_137 = io_in_a_bits_address ^ 31'hc000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@45289.8]
  assign _T_138 = {1'b0,$signed(_T_137)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@45290.8]
  assign _T_140 = $signed(_T_138) & -32'sh4000000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@45292.8]
  assign _T_141 = $signed(_T_140) == 32'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@45293.8]
  assign _T_142 = io_in_a_bits_address ^ 31'h2000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@45294.8]
  assign _T_143 = {1'b0,$signed(_T_142)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@45295.8]
  assign _T_145 = $signed(_T_143) & -32'sh10000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@45297.8]
  assign _T_146 = $signed(_T_145) == 32'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@45298.8]
  assign _T_150 = $signed(_T_85) & -32'sh1000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@45302.8]
  assign _T_151 = $signed(_T_150) == 32'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@45303.8]
  assign _T_152 = io_in_a_bits_address ^ 31'h10000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@45304.8]
  assign _T_153 = {1'b0,$signed(_T_152)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@45305.8]
  assign _T_155 = $signed(_T_153) & -32'sh10000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@45307.8]
  assign _T_156 = $signed(_T_155) == 32'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@45308.8]
  assign _T_167 = ~reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45319.8]
  assign _T_173 = 4'h6 == io_in_a_bits_size; // @[Parameters.scala 92:48:chipyard.TestHarness.RocketConfig.fir@45334.8]
  assign _T_175 = _T_5 & _T_173; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@45336.8]
  assign _T_183 = _T_175 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45345.8]
  assign _T_184 = ~_T_183; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45346.8]
  assign _T_186 = _T_11 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45352.8]
  assign _T_187 = ~_T_186; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45353.8]
  assign _T_190 = _T_23 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45360.8]
  assign _T_191 = ~_T_190; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45361.8]
  assign _T_193 = _T_17 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45367.8]
  assign _T_194 = ~_T_193; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45368.8]
  assign _T_195 = io_in_a_bits_param <= 3'h2; // @[Bundles.scala 110:27:chipyard.TestHarness.RocketConfig.fir@45373.8]
  assign _T_197 = _T_195 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45375.8]
  assign _T_198 = ~_T_197; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45376.8]
  assign _T_199 = ~io_in_a_bits_mask; // @[Monitor.scala 86:18:chipyard.TestHarness.RocketConfig.fir@45381.8]
  assign _T_200 = _T_199 == 8'h0; // @[Monitor.scala 86:31:chipyard.TestHarness.RocketConfig.fir@45382.8]
  assign _T_202 = _T_200 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45384.8]
  assign _T_203 = ~_T_202; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45385.8]
  assign _T_204 = ~io_in_a_bits_corrupt; // @[Monitor.scala 87:18:chipyard.TestHarness.RocketConfig.fir@45390.8]
  assign _T_206 = _T_204 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45392.8]
  assign _T_207 = ~_T_206; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45393.8]
  assign _T_208 = io_in_a_bits_opcode == 3'h7; // @[Monitor.scala 90:25:chipyard.TestHarness.RocketConfig.fir@45399.6]
  assign _T_287 = io_in_a_bits_param != 3'h0; // @[Monitor.scala 97:31:chipyard.TestHarness.RocketConfig.fir@45509.8]
  assign _T_289 = _T_287 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45511.8]
  assign _T_290 = ~_T_289; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45512.8]
  assign _T_300 = io_in_a_bits_opcode == 3'h4; // @[Monitor.scala 102:25:chipyard.TestHarness.RocketConfig.fir@45535.6]
  assign _T_302 = io_in_a_bits_size <= 4'hc; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@45538.8]
  assign _T_310 = _T_302 & _T_126; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@45546.8]
  assign _T_312 = io_in_a_bits_size <= 4'h6; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@45548.8]
  assign _T_345 = _T_131 | _T_136; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@45581.8]
  assign _T_346 = _T_345 | _T_141; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@45582.8]
  assign _T_347 = _T_346 | _T_146; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@45583.8]
  assign _T_348 = _T_347 | _T_151; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@45584.8]
  assign _T_349 = _T_348 | _T_156; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@45585.8]
  assign _T_350 = _T_312 & _T_349; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@45586.8]
  assign _T_352 = _T_310 | _T_350; // @[Parameters.scala 553:30:chipyard.TestHarness.RocketConfig.fir@45588.8]
  assign _T_354 = _T_352 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45590.8]
  assign _T_355 = ~_T_354; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45591.8]
  assign _T_362 = io_in_a_bits_param == 3'h0; // @[Monitor.scala 106:31:chipyard.TestHarness.RocketConfig.fir@45610.8]
  assign _T_364 = _T_362 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45612.8]
  assign _T_365 = ~_T_364; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45613.8]
  assign _T_366 = io_in_a_bits_mask == _T_81; // @[Monitor.scala 107:30:chipyard.TestHarness.RocketConfig.fir@45618.8]
  assign _T_368 = _T_366 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45620.8]
  assign _T_369 = ~_T_368; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45621.8]
  assign _T_374 = io_in_a_bits_opcode == 3'h0; // @[Monitor.scala 111:25:chipyard.TestHarness.RocketConfig.fir@45635.6]
  assign _T_418 = _T_312 & _T_348; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@45680.8]
  assign _T_427 = _T_310 | _T_418; // @[Parameters.scala 553:30:chipyard.TestHarness.RocketConfig.fir@45689.8]
  assign _T_430 = _T_427 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45692.8]
  assign _T_431 = ~_T_430; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45693.8]
  assign _T_446 = io_in_a_bits_opcode == 3'h1; // @[Monitor.scala 119:25:chipyard.TestHarness.RocketConfig.fir@45729.6]
  assign _T_514 = ~_T_81; // @[Monitor.scala 124:33:chipyard.TestHarness.RocketConfig.fir@45814.8]
  assign _T_515 = io_in_a_bits_mask & _T_514; // @[Monitor.scala 124:31:chipyard.TestHarness.RocketConfig.fir@45815.8]
  assign _T_516 = _T_515 == 8'h0; // @[Monitor.scala 124:40:chipyard.TestHarness.RocketConfig.fir@45816.8]
  assign _T_518 = _T_516 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45818.8]
  assign _T_519 = ~_T_518; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45819.8]
  assign _T_520 = io_in_a_bits_opcode == 3'h2; // @[Monitor.scala 127:25:chipyard.TestHarness.RocketConfig.fir@45825.6]
  assign _T_522 = io_in_a_bits_size <= 4'h3; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@45828.8]
  assign _T_535 = _T_126 | _T_136; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@45841.8]
  assign _T_536 = _T_522 & _T_535; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@45842.8]
  assign _T_571 = _T_536 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45877.8]
  assign _T_572 = ~_T_571; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45878.8]
  assign _T_579 = io_in_a_bits_param <= 3'h4; // @[Bundles.scala 140:33:chipyard.TestHarness.RocketConfig.fir@45897.8]
  assign _T_581 = _T_579 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45899.8]
  assign _T_582 = ~_T_581; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45900.8]
  assign _T_587 = io_in_a_bits_opcode == 3'h3; // @[Monitor.scala 135:25:chipyard.TestHarness.RocketConfig.fir@45914.6]
  assign _T_646 = io_in_a_bits_param <= 3'h3; // @[Bundles.scala 147:30:chipyard.TestHarness.RocketConfig.fir@45986.8]
  assign _T_648 = _T_646 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45988.8]
  assign _T_649 = ~_T_648; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45989.8]
  assign _T_654 = io_in_a_bits_opcode == 3'h5; // @[Monitor.scala 143:25:chipyard.TestHarness.RocketConfig.fir@46003.6]
  assign _T_705 = _T_310 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@46055.8]
  assign _T_706 = ~_T_705; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@46056.8]
  assign _T_713 = io_in_a_bits_param <= 3'h1; // @[Bundles.scala 160:28:chipyard.TestHarness.RocketConfig.fir@46075.8]
  assign _T_715 = _T_713 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@46077.8]
  assign _T_716 = ~_T_715; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@46078.8]
  assign _T_725 = io_in_d_bits_opcode <= 3'h6; // @[Bundles.scala 44:24:chipyard.TestHarness.RocketConfig.fir@46102.6]
  assign _T_727 = _T_725 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46104.6]
  assign _T_728 = ~_T_727; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46105.6]
  assign _T_729 = io_in_d_bits_source == 3'h4; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@46110.6]
  assign _T_730 = io_in_d_bits_source == 3'h0; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@46111.6]
  assign _T_731 = io_in_d_bits_source == 3'h1; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@46112.6]
  assign _T_732 = io_in_d_bits_source == 3'h2; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@46113.6]
  assign _T_734 = _T_729 | _T_730; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@46120.6]
  assign _T_735 = _T_734 | _T_731; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@46121.6]
  assign _T_736 = _T_735 | _T_732; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@46122.6]
  assign _T_738 = io_in_d_bits_opcode == 3'h6; // @[Monitor.scala 307:25:chipyard.TestHarness.RocketConfig.fir@46124.6]
  assign _T_740 = _T_736 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46127.8]
  assign _T_741 = ~_T_740; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46128.8]
  assign _T_742 = io_in_d_bits_size >= 4'h3; // @[Monitor.scala 309:27:chipyard.TestHarness.RocketConfig.fir@46133.8]
  assign _T_744 = _T_742 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46135.8]
  assign _T_745 = ~_T_744; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46136.8]
  assign _T_746 = io_in_d_bits_param == 2'h0; // @[Monitor.scala 310:28:chipyard.TestHarness.RocketConfig.fir@46141.8]
  assign _T_748 = _T_746 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46143.8]
  assign _T_749 = ~_T_748; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46144.8]
  assign _T_750 = ~io_in_d_bits_corrupt; // @[Monitor.scala 311:15:chipyard.TestHarness.RocketConfig.fir@46149.8]
  assign _T_752 = _T_750 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46151.8]
  assign _T_753 = ~_T_752; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46152.8]
  assign _T_754 = ~io_in_d_bits_denied; // @[Monitor.scala 312:15:chipyard.TestHarness.RocketConfig.fir@46157.8]
  assign _T_756 = _T_754 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46159.8]
  assign _T_757 = ~_T_756; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46160.8]
  assign _T_758 = io_in_d_bits_opcode == 3'h4; // @[Monitor.scala 315:25:chipyard.TestHarness.RocketConfig.fir@46166.6]
  assign _T_769 = io_in_d_bits_param <= 2'h2; // @[Bundles.scala 104:26:chipyard.TestHarness.RocketConfig.fir@46190.8]
  assign _T_771 = _T_769 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46192.8]
  assign _T_772 = ~_T_771; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46193.8]
  assign _T_773 = io_in_d_bits_param != 2'h2; // @[Monitor.scala 320:28:chipyard.TestHarness.RocketConfig.fir@46198.8]
  assign _T_775 = _T_773 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46200.8]
  assign _T_776 = ~_T_775; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46201.8]
  assign _T_786 = io_in_d_bits_opcode == 3'h5; // @[Monitor.scala 325:25:chipyard.TestHarness.RocketConfig.fir@46224.6]
  assign _T_806 = _T_754 | io_in_d_bits_corrupt; // @[Monitor.scala 331:30:chipyard.TestHarness.RocketConfig.fir@46265.8]
  assign _T_808 = _T_806 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46267.8]
  assign _T_809 = ~_T_808; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46268.8]
  assign _T_815 = io_in_d_bits_opcode == 3'h0; // @[Monitor.scala 335:25:chipyard.TestHarness.RocketConfig.fir@46283.6]
  assign _T_832 = io_in_d_bits_opcode == 3'h1; // @[Monitor.scala 343:25:chipyard.TestHarness.RocketConfig.fir@46318.6]
  assign _T_850 = io_in_d_bits_opcode == 3'h2; // @[Monitor.scala 351:25:chipyard.TestHarness.RocketConfig.fir@46354.6]
  assign _T_882 = io_in_a_ready & io_in_a_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@46420.4]
  assign _T_889 = ~io_in_a_bits_opcode[2]; // @[Edges.scala 93:28:chipyard.TestHarness.RocketConfig.fir@46427.4]
  assign _T_893 = _T_891 - 9'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@46431.4]
  assign _T_894 = _T_891 == 9'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@46432.4]
  assign _T_907 = ~_T_894; // @[Monitor.scala 386:22:chipyard.TestHarness.RocketConfig.fir@46448.4]
  assign _T_908 = io_in_a_valid & _T_907; // @[Monitor.scala 386:19:chipyard.TestHarness.RocketConfig.fir@46449.4]
  assign _T_909 = io_in_a_bits_opcode == _T_902; // @[Monitor.scala 387:32:chipyard.TestHarness.RocketConfig.fir@46451.6]
  assign _T_911 = _T_909 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@46453.6]
  assign _T_912 = ~_T_911; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@46454.6]
  assign _T_913 = io_in_a_bits_param == _T_903; // @[Monitor.scala 388:32:chipyard.TestHarness.RocketConfig.fir@46459.6]
  assign _T_915 = _T_913 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@46461.6]
  assign _T_916 = ~_T_915; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@46462.6]
  assign _T_917 = io_in_a_bits_size == _T_904; // @[Monitor.scala 389:32:chipyard.TestHarness.RocketConfig.fir@46467.6]
  assign _T_919 = _T_917 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@46469.6]
  assign _T_920 = ~_T_919; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@46470.6]
  assign _T_921 = io_in_a_bits_source == _T_905; // @[Monitor.scala 390:32:chipyard.TestHarness.RocketConfig.fir@46475.6]
  assign _T_923 = _T_921 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@46477.6]
  assign _T_924 = ~_T_923; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@46478.6]
  assign _T_925 = io_in_a_bits_address == _T_906; // @[Monitor.scala 391:32:chipyard.TestHarness.RocketConfig.fir@46483.6]
  assign _T_927 = _T_925 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@46485.6]
  assign _T_928 = ~_T_927; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@46486.6]
  assign _T_930 = _T_882 & _T_894; // @[Monitor.scala 393:20:chipyard.TestHarness.RocketConfig.fir@46493.4]
  assign _T_931 = io_in_d_ready & io_in_d_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@46501.4]
  assign _T_933 = 27'hfff << io_in_d_bits_size; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@46503.4]
  assign _T_935 = ~_T_933[11:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@46505.4]
  assign _T_941 = _T_939 - 9'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@46511.4]
  assign _T_942 = _T_939 == 9'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@46512.4]
  assign _T_956 = ~_T_942; // @[Monitor.scala 538:22:chipyard.TestHarness.RocketConfig.fir@46529.4]
  assign _T_957 = io_in_d_valid & _T_956; // @[Monitor.scala 538:19:chipyard.TestHarness.RocketConfig.fir@46530.4]
  assign _T_958 = io_in_d_bits_opcode == _T_950; // @[Monitor.scala 539:29:chipyard.TestHarness.RocketConfig.fir@46532.6]
  assign _T_960 = _T_958 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46534.6]
  assign _T_961 = ~_T_960; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46535.6]
  assign _T_962 = io_in_d_bits_param == _T_951; // @[Monitor.scala 540:29:chipyard.TestHarness.RocketConfig.fir@46540.6]
  assign _T_964 = _T_962 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46542.6]
  assign _T_965 = ~_T_964; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46543.6]
  assign _T_966 = io_in_d_bits_size == _T_952; // @[Monitor.scala 541:29:chipyard.TestHarness.RocketConfig.fir@46548.6]
  assign _T_968 = _T_966 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46550.6]
  assign _T_969 = ~_T_968; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46551.6]
  assign _T_970 = io_in_d_bits_source == _T_953; // @[Monitor.scala 542:29:chipyard.TestHarness.RocketConfig.fir@46556.6]
  assign _T_972 = _T_970 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46558.6]
  assign _T_973 = ~_T_972; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46559.6]
  assign _T_974 = io_in_d_bits_sink == _T_954; // @[Monitor.scala 543:29:chipyard.TestHarness.RocketConfig.fir@46564.6]
  assign _T_976 = _T_974 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46566.6]
  assign _T_977 = ~_T_976; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46567.6]
  assign _T_978 = io_in_d_bits_denied == _T_955; // @[Monitor.scala 544:29:chipyard.TestHarness.RocketConfig.fir@46572.6]
  assign _T_980 = _T_978 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46574.6]
  assign _T_981 = ~_T_980; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46575.6]
  assign _T_983 = _T_931 & _T_942; // @[Monitor.scala 546:20:chipyard.TestHarness.RocketConfig.fir@46582.4]
  assign _T_995 = _T_993 - 9'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@46605.4]
  assign a_first = _T_993 == 9'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@46606.4]
  assign _T_1013 = _T_1011 - 9'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@46627.4]
  assign d_first = _T_1011 == 9'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@46628.4]
  assign _GEN_57 = {io_in_d_bits_source, 2'h0}; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@46647.4]
  assign _T_1021 = {{1'd0}, _GEN_57}; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@46647.4]
  assign _T_1022 = inflight_opcodes >> _T_1021; // @[Monitor.scala 629:44:chipyard.TestHarness.RocketConfig.fir@46648.4]
  assign _T_1026 = 16'h10 - 16'h1; // @[Monitor.scala 606:57:chipyard.TestHarness.RocketConfig.fir@46652.4]
  assign _GEN_58 = {{4'd0}, _T_1026}; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@46653.4]
  assign _T_1027 = _T_1022 & _GEN_58; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@46653.4]
  assign _T_1028 = {{1'd0}, _T_1027[19:1]}; // @[Monitor.scala 629:152:chipyard.TestHarness.RocketConfig.fir@46654.4]
  assign _T_1029 = {io_in_d_bits_source, 3'h0}; // @[Monitor.scala 633:65:chipyard.TestHarness.RocketConfig.fir@46658.4]
  assign _T_1030 = inflight_sizes >> _T_1029; // @[Monitor.scala 633:40:chipyard.TestHarness.RocketConfig.fir@46659.4]
  assign _T_1034 = 16'h100 - 16'h1; // @[Monitor.scala 606:57:chipyard.TestHarness.RocketConfig.fir@46663.4]
  assign _GEN_60 = {{24'd0}, _T_1034}; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@46664.4]
  assign _T_1035 = _T_1030 & _GEN_60; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@46664.4]
  assign _T_1036 = {{1'd0}, _T_1035[39:1]}; // @[Monitor.scala 633:144:chipyard.TestHarness.RocketConfig.fir@46665.4]
  assign _T_1040 = _T_882 & a_first; // @[Monitor.scala 643:27:chipyard.TestHarness.RocketConfig.fir@46690.4]
  assign _T_1042 = 8'h1 << io_in_a_bits_source; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@46693.6]
  assign _T_1043 = {io_in_a_bits_opcode, 1'h0}; // @[Monitor.scala 645:53:chipyard.TestHarness.RocketConfig.fir@46695.6]
  assign _T_1044 = _T_1043 | 4'h1; // @[Monitor.scala 645:61:chipyard.TestHarness.RocketConfig.fir@46696.6]
  assign _T_1045 = {io_in_a_bits_size, 1'h0}; // @[Monitor.scala 646:49:chipyard.TestHarness.RocketConfig.fir@46698.6]
  assign _T_1046 = _T_1045 | 5'h1; // @[Monitor.scala 646:57:chipyard.TestHarness.RocketConfig.fir@46699.6]
  assign _GEN_62 = {io_in_a_bits_source, 2'h0}; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@46701.6]
  assign _T_1047 = {{1'd0}, _GEN_62}; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@46701.6]
  assign a_opcodes_set_interm = _T_1040 ? _T_1044 : 4'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@46692.4]
  assign _GEN_63 = {{63'd0}, a_opcodes_set_interm}; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@46702.6]
  assign _T_1048 = _GEN_63 << _T_1047; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@46702.6]
  assign _T_1049 = {io_in_a_bits_source, 3'h0}; // @[Monitor.scala 648:68:chipyard.TestHarness.RocketConfig.fir@46704.6]
  assign a_sizes_set_interm = _T_1040 ? _T_1046 : 5'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@46692.4]
  assign _GEN_64 = {{63'd0}, a_sizes_set_interm}; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@46705.6]
  assign _T_1050 = _GEN_64 << _T_1049; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@46705.6]
  assign _T_1051 = inflight >> io_in_a_bits_source; // @[Monitor.scala 649:26:chipyard.TestHarness.RocketConfig.fir@46707.6]
  assign _T_1053 = ~_T_1051[0]; // @[Monitor.scala 649:17:chipyard.TestHarness.RocketConfig.fir@46709.6]
  assign _T_1055 = _T_1053 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@46711.6]
  assign _T_1056 = ~_T_1055; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@46712.6]
  assign _GEN_15 = _T_1040 ? _T_1042 : 8'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@46692.4]
  assign _GEN_18 = _T_1040 ? _T_1048 : 67'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@46692.4]
  assign _GEN_19 = _T_1040 ? _T_1050 : 68'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@46692.4]
  assign _T_1059 = _T_931 & d_first; // @[Monitor.scala 660:27:chipyard.TestHarness.RocketConfig.fir@46726.4]
  assign _T_1061 = ~_T_738; // @[Monitor.scala 660:75:chipyard.TestHarness.RocketConfig.fir@46728.4]
  assign _T_1062 = _T_1059 & _T_1061; // @[Monitor.scala 660:72:chipyard.TestHarness.RocketConfig.fir@46729.4]
  assign _T_1063 = 8'h1 << io_in_d_bits_source; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@46731.6]
  assign _GEN_66 = {{63'd0}, _T_1026}; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@46738.6]
  assign _T_1069 = _GEN_66 << _T_1021; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@46738.6]
  assign _GEN_67 = {{63'd0}, _T_1034}; // @[Monitor.scala 663:72:chipyard.TestHarness.RocketConfig.fir@46745.6]
  assign _T_1075 = _GEN_67 << _T_1029; // @[Monitor.scala 663:72:chipyard.TestHarness.RocketConfig.fir@46745.6]
  assign _GEN_20 = _T_1062 ? _T_1063 : 8'h0; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@46730.4]
  assign _GEN_21 = _T_1062 ? _T_1069 : 79'h0; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@46730.4]
  assign _GEN_22 = _T_1062 ? _T_1075 : 79'h0; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@46730.4]
  assign _T_1076 = io_in_d_valid & d_first; // @[Monitor.scala 665:26:chipyard.TestHarness.RocketConfig.fir@46748.4]
  assign _T_1079 = _T_1076 & _T_1061; // @[Monitor.scala 665:71:chipyard.TestHarness.RocketConfig.fir@46751.4]
  assign _T_1080 = inflight >> io_in_d_bits_source; // @[Monitor.scala 666:25:chipyard.TestHarness.RocketConfig.fir@46753.6]
  assign _T_1082 = io_in_a_bits_source == io_in_d_bits_source; // @[Monitor.scala 666:93:chipyard.TestHarness.RocketConfig.fir@46755.6]
  assign _T_1083 = io_in_a_valid & _T_1082; // @[Monitor.scala 666:68:chipyard.TestHarness.RocketConfig.fir@46756.6]
  assign _T_1084 = io_in_a_bits_size == io_in_d_bits_size; // @[Monitor.scala 666:142:chipyard.TestHarness.RocketConfig.fir@46757.6]
  assign _T_1085 = _T_1083 & _T_1084; // @[Monitor.scala 666:119:chipyard.TestHarness.RocketConfig.fir@46758.6]
  assign _T_1086 = _T_1085 & a_first; // @[Monitor.scala 666:166:chipyard.TestHarness.RocketConfig.fir@46759.6]
  assign _T_1087 = _T_1080[0] | _T_1086; // @[Monitor.scala 666:49:chipyard.TestHarness.RocketConfig.fir@46760.6]
  assign _T_1089 = _T_1087 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46762.6]
  assign _T_1090 = ~_T_1089; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46763.6]
  assign a_opcode_lookup = _T_1028[3:0]; // @[:chipyard.TestHarness.RocketConfig.fir@46645.4 :chipyard.TestHarness.RocketConfig.fir@46646.4 Monitor.scala 629:21:chipyard.TestHarness.RocketConfig.fir@46655.4]
  assign _GEN_25 = 3'h2 == a_opcode_lookup[2:0] ? 3'h1 : 3'h0; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@46769.6]
  assign _GEN_26 = 3'h3 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_25; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@46769.6]
  assign _GEN_27 = 3'h4 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_26; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@46769.6]
  assign _GEN_28 = 3'h5 == a_opcode_lookup[2:0] ? 3'h2 : _GEN_27; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@46769.6]
  assign _GEN_29 = 3'h6 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_28; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@46769.6]
  assign _GEN_30 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_29; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@46769.6]
  assign _T_1092 = io_in_d_bits_opcode == _GEN_30; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@46769.6]
  assign _GEN_37 = 3'h6 == a_opcode_lookup[2:0] ? 3'h5 : _GEN_28; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@46771.6]
  assign _GEN_38 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_37; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@46771.6]
  assign _T_1094 = io_in_d_bits_opcode == _GEN_38; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@46771.6]
  assign _T_1095 = _T_1092 | _T_1094; // @[Monitor.scala 667:71:chipyard.TestHarness.RocketConfig.fir@46772.6]
  assign _GEN_41 = 3'h2 == io_in_a_bits_opcode ? 3'h1 : 3'h0; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@46773.6]
  assign _GEN_42 = 3'h3 == io_in_a_bits_opcode ? 3'h1 : _GEN_41; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@46773.6]
  assign _GEN_43 = 3'h4 == io_in_a_bits_opcode ? 3'h1 : _GEN_42; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@46773.6]
  assign _GEN_44 = 3'h5 == io_in_a_bits_opcode ? 3'h2 : _GEN_43; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@46773.6]
  assign _GEN_45 = 3'h6 == io_in_a_bits_opcode ? 3'h4 : _GEN_44; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@46773.6]
  assign _GEN_46 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_45; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@46773.6]
  assign _T_1096 = io_in_d_bits_opcode == _GEN_46; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@46773.6]
  assign _GEN_53 = 3'h6 == io_in_a_bits_opcode ? 3'h5 : _GEN_44; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@46774.6]
  assign _GEN_54 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_53; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@46774.6]
  assign _T_1097 = io_in_d_bits_opcode == _GEN_54; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@46774.6]
  assign _T_1098 = _T_1096 | _T_1097; // @[Monitor.scala 668:99:chipyard.TestHarness.RocketConfig.fir@46775.6]
  assign _T_1099 = io_in_a_valid & _T_1098; // @[Monitor.scala 668:34:chipyard.TestHarness.RocketConfig.fir@46776.6]
  assign _T_1100 = _T_1095 | _T_1099; // @[Monitor.scala 668:15:chipyard.TestHarness.RocketConfig.fir@46777.6]
  assign _T_1102 = _T_1100 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46779.6]
  assign _T_1103 = ~_T_1102; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46780.6]
  assign a_size_lookup = _T_1036[7:0]; // @[:chipyard.TestHarness.RocketConfig.fir@46656.4 :chipyard.TestHarness.RocketConfig.fir@46657.4 Monitor.scala 633:19:chipyard.TestHarness.RocketConfig.fir@46666.4]
  assign _GEN_68 = {{4'd0}, io_in_d_bits_size}; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@46785.6]
  assign _T_1104 = _GEN_68 == a_size_lookup; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@46785.6]
  assign _T_1106 = io_in_a_valid & _T_1084; // @[Monitor.scala 670:72:chipyard.TestHarness.RocketConfig.fir@46787.6]
  assign _T_1107 = _T_1104 | _T_1106; // @[Monitor.scala 670:53:chipyard.TestHarness.RocketConfig.fir@46788.6]
  assign _T_1109 = _T_1107 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46790.6]
  assign _T_1110 = ~_T_1109; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46791.6]
  assign _T_1112 = _T_1076 & a_first; // @[Monitor.scala 672:36:chipyard.TestHarness.RocketConfig.fir@46798.4]
  assign _T_1113 = _T_1112 & io_in_a_valid; // @[Monitor.scala 672:47:chipyard.TestHarness.RocketConfig.fir@46799.4]
  assign _T_1115 = _T_1113 & _T_1082; // @[Monitor.scala 672:65:chipyard.TestHarness.RocketConfig.fir@46801.4]
  assign _T_1117 = _T_1115 & _T_1061; // @[Monitor.scala 672:116:chipyard.TestHarness.RocketConfig.fir@46803.4]
  assign _T_1118 = ~io_in_d_ready; // @[Monitor.scala 673:15:chipyard.TestHarness.RocketConfig.fir@46805.6]
  assign _T_1119 = _T_1118 | io_in_a_ready; // @[Monitor.scala 673:32:chipyard.TestHarness.RocketConfig.fir@46806.6]
  assign _T_1121 = _T_1119 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46808.6]
  assign _T_1122 = ~_T_1121; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46809.6]
  assign a_set = _GEN_15[4:0]; // @[:chipyard.TestHarness.RocketConfig.fir@46639.4 :chipyard.TestHarness.RocketConfig.fir@46640.4 Monitor.scala 644:13:chipyard.TestHarness.RocketConfig.fir@46694.6]
  assign _T_1123 = inflight | a_set; // @[Monitor.scala 680:27:chipyard.TestHarness.RocketConfig.fir@46815.4]
  assign d_clr = _GEN_20[4:0]; // @[:chipyard.TestHarness.RocketConfig.fir@46718.4 :chipyard.TestHarness.RocketConfig.fir@46719.4 Monitor.scala 661:13:chipyard.TestHarness.RocketConfig.fir@46732.6]
  assign _T_1124 = ~d_clr; // @[Monitor.scala 680:38:chipyard.TestHarness.RocketConfig.fir@46816.4]
  assign _T_1125 = _T_1123 & _T_1124; // @[Monitor.scala 680:36:chipyard.TestHarness.RocketConfig.fir@46817.4]
  assign a_opcodes_set = _GEN_18[19:0]; // @[:chipyard.TestHarness.RocketConfig.fir@46641.4 :chipyard.TestHarness.RocketConfig.fir@46642.4 Monitor.scala 647:21:chipyard.TestHarness.RocketConfig.fir@46703.6]
  assign _T_1126 = inflight_opcodes | a_opcodes_set; // @[Monitor.scala 681:43:chipyard.TestHarness.RocketConfig.fir@46819.4]
  assign d_opcodes_clr = _GEN_21[19:0]; // @[:chipyard.TestHarness.RocketConfig.fir@46720.4 :chipyard.TestHarness.RocketConfig.fir@46721.4 Monitor.scala 662:21:chipyard.TestHarness.RocketConfig.fir@46739.6]
  assign _T_1127 = ~d_opcodes_clr; // @[Monitor.scala 681:62:chipyard.TestHarness.RocketConfig.fir@46820.4]
  assign _T_1128 = _T_1126 & _T_1127; // @[Monitor.scala 681:60:chipyard.TestHarness.RocketConfig.fir@46821.4]
  assign a_sizes_set = _GEN_19[39:0]; // @[:chipyard.TestHarness.RocketConfig.fir@46643.4 :chipyard.TestHarness.RocketConfig.fir@46644.4 Monitor.scala 648:19:chipyard.TestHarness.RocketConfig.fir@46706.6]
  assign _T_1129 = inflight_sizes | a_sizes_set; // @[Monitor.scala 682:39:chipyard.TestHarness.RocketConfig.fir@46823.4]
  assign d_sizes_clr = _GEN_22[39:0]; // @[:chipyard.TestHarness.RocketConfig.fir@46722.4 :chipyard.TestHarness.RocketConfig.fir@46723.4 Monitor.scala 663:19:chipyard.TestHarness.RocketConfig.fir@46746.6]
  assign _T_1130 = ~d_sizes_clr; // @[Monitor.scala 682:56:chipyard.TestHarness.RocketConfig.fir@46824.4]
  assign _T_1131 = _T_1129 & _T_1130; // @[Monitor.scala 682:54:chipyard.TestHarness.RocketConfig.fir@46825.4]
  assign _T_1133 = |inflight; // @[Monitor.scala 687:26:chipyard.TestHarness.RocketConfig.fir@46830.4]
  assign _T_1134 = ~_T_1133; // @[Monitor.scala 687:16:chipyard.TestHarness.RocketConfig.fir@46831.4]
  assign _T_1135 = plusarg_reader_out == 32'h0; // @[Monitor.scala 687:39:chipyard.TestHarness.RocketConfig.fir@46832.4]
  assign _T_1136 = _T_1134 | _T_1135; // @[Monitor.scala 687:30:chipyard.TestHarness.RocketConfig.fir@46833.4]
  assign _T_1137 = _T_1132 < plusarg_reader_out; // @[Monitor.scala 687:59:chipyard.TestHarness.RocketConfig.fir@46834.4]
  assign _T_1138 = _T_1136 | _T_1137; // @[Monitor.scala 687:47:chipyard.TestHarness.RocketConfig.fir@46835.4]
  assign _T_1140 = _T_1138 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@46837.4]
  assign _T_1141 = ~_T_1140; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@46838.4]
  assign _T_1143 = _T_1132 + 32'h1; // @[Monitor.scala 689:26:chipyard.TestHarness.RocketConfig.fir@46844.4]
  assign _T_1146 = _T_882 | _T_931; // @[Monitor.scala 690:27:chipyard.TestHarness.RocketConfig.fir@46848.4]
  assign _GEN_69 = io_in_a_valid & _T_120; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45321.10]
  assign _GEN_85 = io_in_a_valid & _T_208; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45449.10]
  assign _GEN_103 = io_in_a_valid & _T_300; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45593.10]
  assign _GEN_115 = io_in_a_valid & _T_374; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45695.10]
  assign _GEN_125 = io_in_a_valid & _T_446; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45789.10]
  assign _GEN_135 = io_in_a_valid & _T_520; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45880.10]
  assign _GEN_145 = io_in_a_valid & _T_587; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45969.10]
  assign _GEN_155 = io_in_a_valid & _T_654; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@46058.10]
  assign _GEN_167 = io_in_d_valid & _T_738; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46130.10]
  assign _GEN_177 = io_in_d_valid & _T_758; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46172.10]
  assign _GEN_189 = io_in_d_valid & _T_786; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46230.10]
  assign _GEN_201 = io_in_d_valid & _T_815; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46289.10]
  assign _GEN_207 = io_in_d_valid & _T_832; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46324.10]
  assign _GEN_213 = io_in_d_valid & _T_850; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46360.10]
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
  _T_891 = _RAND_0[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_902 = _RAND_1[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_903 = _RAND_2[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_904 = _RAND_3[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_905 = _RAND_4[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_906 = _RAND_5[30:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  _T_939 = _RAND_6[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  _T_950 = _RAND_7[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  _T_951 = _RAND_8[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  _T_952 = _RAND_9[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  _T_953 = _RAND_10[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  _T_954 = _RAND_11[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  _T_955 = _RAND_12[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  inflight = _RAND_13[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  inflight_opcodes = _RAND_14[19:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {2{`RANDOM}};
  inflight_sizes = _RAND_15[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  _T_993 = _RAND_16[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  _T_1011 = _RAND_17[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  _T_1132 = _RAND_18[31:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      _T_891 <= 9'h0;
    end else if (_T_882) begin
      if (_T_894) begin
        if (_T_889) begin
          _T_891 <= _T_15[11:3];
        end else begin
          _T_891 <= 9'h0;
        end
      end else begin
        _T_891 <= _T_893;
      end
    end
    if (_T_930) begin
      _T_902 <= io_in_a_bits_opcode;
    end
    if (_T_930) begin
      _T_903 <= io_in_a_bits_param;
    end
    if (_T_930) begin
      _T_904 <= io_in_a_bits_size;
    end
    if (_T_930) begin
      _T_905 <= io_in_a_bits_source;
    end
    if (_T_930) begin
      _T_906 <= io_in_a_bits_address;
    end
    if (reset) begin
      _T_939 <= 9'h0;
    end else if (_T_931) begin
      if (_T_942) begin
        if (io_in_d_bits_opcode[0]) begin
          _T_939 <= _T_935[11:3];
        end else begin
          _T_939 <= 9'h0;
        end
      end else begin
        _T_939 <= _T_941;
      end
    end
    if (_T_983) begin
      _T_950 <= io_in_d_bits_opcode;
    end
    if (_T_983) begin
      _T_951 <= io_in_d_bits_param;
    end
    if (_T_983) begin
      _T_952 <= io_in_d_bits_size;
    end
    if (_T_983) begin
      _T_953 <= io_in_d_bits_source;
    end
    if (_T_983) begin
      _T_954 <= io_in_d_bits_sink;
    end
    if (_T_983) begin
      _T_955 <= io_in_d_bits_denied;
    end
    if (reset) begin
      inflight <= 5'h0;
    end else begin
      inflight <= _T_1125;
    end
    if (reset) begin
      inflight_opcodes <= 20'h0;
    end else begin
      inflight_opcodes <= _T_1128;
    end
    if (reset) begin
      inflight_sizes <= 40'h0;
    end else begin
      inflight_sizes <= _T_1131;
    end
    if (reset) begin
      _T_993 <= 9'h0;
    end else if (_T_882) begin
      if (a_first) begin
        if (_T_889) begin
          _T_993 <= _T_15[11:3];
        end else begin
          _T_993 <= 9'h0;
        end
      end else begin
        _T_993 <= _T_995;
      end
    end
    if (reset) begin
      _T_1011 <= 9'h0;
    end else if (_T_931) begin
      if (d_first) begin
        if (io_in_d_bits_opcode[0]) begin
          _T_1011 <= _T_935[11:3];
        end else begin
          _T_1011 <= 9'h0;
        end
      end else begin
        _T_1011 <= _T_1013;
      end
    end
    if (reset) begin
      _T_1132 <= 32'h0;
    end else if (_T_1146) begin
      _T_1132 <= 32'h0;
    end else begin
      _T_1132 <= _T_1143;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_69 & _T_167) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock type unsupported by manager (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45321.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_69 & _T_167) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45322.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_69 & _T_184) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock from a client which does not support Probe (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45348.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_69 & _T_184) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45349.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_69 & _T_187) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock carries invalid source ID (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45355.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_69 & _T_187) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45356.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_69 & _T_191) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock smaller than a beat (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45363.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_69 & _T_191) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45364.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_69 & _T_194) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock address not aligned to size (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45370.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_69 & _T_194) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45371.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_69 & _T_198) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock carries invalid grow param (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45378.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_69 & _T_198) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45379.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_69 & _T_203) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock contains invalid mask (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45387.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_69 & _T_203) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45388.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_69 & _T_207) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock is corrupt (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45395.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_69 & _T_207) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45396.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_167) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm type unsupported by manager (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45449.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_167) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45450.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_184) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm from a client which does not support Probe (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45476.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_184) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45477.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_187) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm carries invalid source ID (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45483.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_187) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45484.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_191) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm smaller than a beat (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45491.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_191) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45492.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_194) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm address not aligned to size (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45498.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_194) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45499.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_198) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm carries invalid grow param (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45506.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_198) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45507.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_290) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm requests NtoB (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45514.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_290) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45515.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_203) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm contains invalid mask (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45523.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_203) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45524.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_207) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm is corrupt (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45531.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_207) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45532.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_103 & _T_355) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Get type unsupported by manager (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45593.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_103 & _T_355) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45594.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_103 & _T_187) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get carries invalid source ID (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45600.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_103 & _T_187) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45601.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_103 & _T_194) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get address not aligned to size (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45607.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_103 & _T_194) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45608.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_103 & _T_365) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get carries invalid param (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45615.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_103 & _T_365) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45616.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_103 & _T_369) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get contains invalid mask (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45623.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_103 & _T_369) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45624.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_103 & _T_207) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get is corrupt (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45631.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_103 & _T_207) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45632.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_115 & _T_431) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutFull type unsupported by manager (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45695.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_115 & _T_431) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45696.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_115 & _T_187) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull carries invalid source ID (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45702.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_115 & _T_187) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45703.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_115 & _T_194) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull address not aligned to size (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45709.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_115 & _T_194) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45710.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_115 & _T_365) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull carries invalid param (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45717.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_115 & _T_365) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45718.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_115 & _T_369) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull contains invalid mask (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45725.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_115 & _T_369) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45726.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_125 & _T_431) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutPartial type unsupported by manager (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45789.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_125 & _T_431) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45790.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_125 & _T_187) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial carries invalid source ID (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45796.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_125 & _T_187) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45797.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_125 & _T_194) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial address not aligned to size (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45803.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_125 & _T_194) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45804.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_125 & _T_365) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial carries invalid param (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45811.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_125 & _T_365) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45812.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_125 & _T_519) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial contains invalid mask (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45821.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_125 & _T_519) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45822.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_135 & _T_572) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Arithmetic type unsupported by manager (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45880.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_135 & _T_572) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45881.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_135 & _T_187) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic carries invalid source ID (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45887.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_135 & _T_187) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45888.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_135 & _T_194) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic address not aligned to size (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45894.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_135 & _T_194) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45895.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_135 & _T_582) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic carries invalid opcode param (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45902.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_135 & _T_582) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45903.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_135 & _T_369) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic contains invalid mask (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45910.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_135 & _T_369) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45911.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_145 & _T_572) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Logical type unsupported by manager (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45969.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_145 & _T_572) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45970.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_145 & _T_187) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical carries invalid source ID (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45976.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_145 & _T_187) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45977.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_145 & _T_194) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical address not aligned to size (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45983.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_145 & _T_194) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45984.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_145 & _T_649) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical carries invalid opcode param (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45991.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_145 & _T_649) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45992.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_145 & _T_369) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical contains invalid mask (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@45999.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_145 & _T_369) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@46000.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_155 & _T_706) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Hint type unsupported by manager (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@46058.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_155 & _T_706) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@46059.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_155 & _T_187) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint carries invalid source ID (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@46065.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_155 & _T_187) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@46066.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_155 & _T_194) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint address not aligned to size (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@46072.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_155 & _T_194) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@46073.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_155 & _T_716) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint carries invalid opcode param (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@46080.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_155 & _T_716) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@46081.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_155 & _T_369) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint contains invalid mask (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@46088.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_155 & _T_369) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@46089.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_155 & _T_207) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint is corrupt (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@46096.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_155 & _T_207) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@46097.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_in_d_valid & _T_728) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel has invalid opcode (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46107.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (io_in_d_valid & _T_728) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46108.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_167 & _T_741) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck carries invalid source ID (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46130.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_167 & _T_741) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46131.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_167 & _T_745) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck smaller than a beat (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46138.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_167 & _T_745) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46139.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_167 & _T_749) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseeAck carries invalid param (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46146.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_167 & _T_749) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46147.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_167 & _T_753) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck is corrupt (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46154.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_167 & _T_753) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46155.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_167 & _T_757) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck is denied (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46162.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_167 & _T_757) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46163.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_177 & _T_741) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid source ID (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46172.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_177 & _T_741) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46173.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_177 & _T_167) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid sink ID (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46179.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_177 & _T_167) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46180.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_177 & _T_745) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant smaller than a beat (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46187.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_177 & _T_745) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46188.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_177 & _T_772) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid cap param (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46195.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_177 & _T_772) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46196.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_177 & _T_776) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries toN param (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46203.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_177 & _T_776) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46204.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_177 & _T_753) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant is corrupt (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46211.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_177 & _T_753) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46212.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_189 & _T_741) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid source ID (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46230.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_189 & _T_741) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46231.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_189 & _T_167) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid sink ID (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46237.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_189 & _T_167) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46238.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_189 & _T_745) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData smaller than a beat (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46245.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_189 & _T_745) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46246.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_189 & _T_772) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid cap param (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46253.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_189 & _T_772) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46254.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_189 & _T_776) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries toN param (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46261.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_189 & _T_776) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46262.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_189 & _T_809) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData is denied but not corrupt (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46270.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_189 & _T_809) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46271.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_201 & _T_741) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck carries invalid source ID (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46289.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_201 & _T_741) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46290.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_201 & _T_749) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck carries invalid param (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46297.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_201 & _T_749) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46298.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_201 & _T_753) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck is corrupt (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46305.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_201 & _T_753) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46306.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_207 & _T_741) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData carries invalid source ID (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46324.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_207 & _T_741) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46325.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_207 & _T_749) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData carries invalid param (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46332.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_207 & _T_749) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46333.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_207 & _T_809) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData is denied but not corrupt (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46341.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_207 & _T_809) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46342.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_213 & _T_741) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck carries invalid source ID (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46360.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_213 & _T_741) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46361.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_213 & _T_749) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck carries invalid param (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46368.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_213 & _T_749) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46369.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_213 & _T_753) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck is corrupt (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46376.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_213 & _T_753) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46377.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_908 & _T_912) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel opcode changed within multibeat operation (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@46456.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_908 & _T_912) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@46457.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_908 & _T_916) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel param changed within multibeat operation (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@46464.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_908 & _T_916) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@46465.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_908 & _T_920) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel size changed within multibeat operation (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@46472.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_908 & _T_920) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@46473.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_908 & _T_924) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel source changed within multibeat operation (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@46480.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_908 & _T_924) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@46481.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_908 & _T_928) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel address changed with multibeat operation (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@46488.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_908 & _T_928) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@46489.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_957 & _T_961) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel opcode changed within multibeat operation (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46537.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_957 & _T_961) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46538.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_957 & _T_965) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel param changed within multibeat operation (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46545.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_957 & _T_965) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46546.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_957 & _T_969) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel size changed within multibeat operation (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46553.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_957 & _T_969) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46554.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_957 & _T_973) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel source changed within multibeat operation (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46561.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_957 & _T_973) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46562.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_957 & _T_977) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel sink changed with multibeat operation (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46569.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_957 & _T_977) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46570.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_957 & _T_981) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel denied changed with multibeat operation (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46577.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_957 & _T_981) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46578.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1040 & _T_1056) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel re-used a source ID (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@46714.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1040 & _T_1056) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@46715.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1079 & _T_1090) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel acknowledged for nothing inflight (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46765.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1079 & _T_1090) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46766.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1079 & _T_1103) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper opcode response (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46782.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1079 & _T_1103) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46783.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1079 & _T_1110) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper response size (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46793.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1079 & _T_1110) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46794.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1117 & _T_1122) begin
          $fwrite(32'h80000002,"Assertion failed: ready check\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46811.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1117 & _T_1122) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@46812.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1141) begin
          $fwrite(32'h80000002,"Assertion failed: TileLink timeout expired (connected at PeripheryBus.scala:51:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@46840.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1141) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@46841.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
