module TLMonitor_23( // @[:chipyard.TestHarness.RocketConfig.fir@50232.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@50233.4]
  input         reset, // @[:chipyard.TestHarness.RocketConfig.fir@50234.4]
  input         io_in_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@50235.4]
  input         io_in_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@50235.4]
  input  [2:0]  io_in_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@50235.4]
  input  [2:0]  io_in_a_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@50235.4]
  input  [3:0]  io_in_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@50235.4]
  input  [2:0]  io_in_a_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@50235.4]
  input  [30:0] io_in_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@50235.4]
  input  [7:0]  io_in_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@50235.4]
  input         io_in_a_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@50235.4]
  input         io_in_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@50235.4]
  input         io_in_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@50235.4]
  input  [2:0]  io_in_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@50235.4]
  input  [1:0]  io_in_d_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@50235.4]
  input  [3:0]  io_in_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@50235.4]
  input  [2:0]  io_in_d_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@50235.4]
  input         io_in_d_bits_sink, // @[:chipyard.TestHarness.RocketConfig.fir@50235.4]
  input         io_in_d_bits_denied, // @[:chipyard.TestHarness.RocketConfig.fir@50235.4]
  input         io_in_d_bits_corrupt // @[:chipyard.TestHarness.RocketConfig.fir@50235.4]
);
  wire [31:0] plusarg_reader_out; // @[PlusArg.scala 44:11:chipyard.TestHarness.RocketConfig.fir@51939.4]
  wire  _T_4; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@50246.6]
  wire  _T_5; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@50247.6]
  wire  _T_6; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@50248.6]
  wire  _T_7; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@50249.6]
  wire  _T_9; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@50256.6]
  wire  _T_10; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@50257.6]
  wire  _T_11; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@50258.6]
  wire [26:0] _T_13; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@50260.6]
  wire [11:0] _T_15; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@50262.6]
  wire [30:0] _GEN_56; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@50263.6]
  wire [30:0] _T_16; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@50263.6]
  wire  _T_17; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@50264.6]
  wire [3:0] _T_20; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@50267.6]
  wire [2:0] _T_22; // @[Misc.scala 201:81:chipyard.TestHarness.RocketConfig.fir@50269.6]
  wire  _T_23; // @[Misc.scala 205:21:chipyard.TestHarness.RocketConfig.fir@50270.6]
  wire  _T_26; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@50273.6]
  wire  _T_28; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@50275.6]
  wire  _T_29; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@50276.6]
  wire  _T_31; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@50278.6]
  wire  _T_32; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@50279.6]
  wire  _T_35; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@50282.6]
  wire  _T_36; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@50283.6]
  wire  _T_37; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@50284.6]
  wire  _T_38; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@50285.6]
  wire  _T_39; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@50286.6]
  wire  _T_40; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@50287.6]
  wire  _T_41; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@50288.6]
  wire  _T_42; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@50289.6]
  wire  _T_43; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@50290.6]
  wire  _T_44; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@50291.6]
  wire  _T_45; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@50292.6]
  wire  _T_46; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@50293.6]
  wire  _T_47; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@50294.6]
  wire  _T_50; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@50297.6]
  wire  _T_51; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@50298.6]
  wire  _T_52; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@50299.6]
  wire  _T_53; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@50300.6]
  wire  _T_54; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@50301.6]
  wire  _T_55; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@50302.6]
  wire  _T_56; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@50303.6]
  wire  _T_57; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@50304.6]
  wire  _T_58; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@50305.6]
  wire  _T_59; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@50306.6]
  wire  _T_60; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@50307.6]
  wire  _T_61; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@50308.6]
  wire  _T_62; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@50309.6]
  wire  _T_63; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@50310.6]
  wire  _T_64; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@50311.6]
  wire  _T_65; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@50312.6]
  wire  _T_66; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@50313.6]
  wire  _T_67; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@50314.6]
  wire  _T_68; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@50315.6]
  wire  _T_69; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@50316.6]
  wire  _T_70; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@50317.6]
  wire  _T_71; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@50318.6]
  wire  _T_72; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@50319.6]
  wire  _T_73; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@50320.6]
  wire  _T_74; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@50321.6]
  wire [7:0] _T_81; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@50328.6]
  wire [31:0] _T_85; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@50332.6]
  wire  _T_120; // @[Monitor.scala 79:25:chipyard.TestHarness.RocketConfig.fir@50371.6]
  wire [30:0] _T_122; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@50374.8]
  wire [31:0] _T_123; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@50375.8]
  wire [31:0] _T_125; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@50377.8]
  wire  _T_126; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@50378.8]
  wire [30:0] _T_127; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@50379.8]
  wire [31:0] _T_128; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@50380.8]
  wire [31:0] _T_130; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@50382.8]
  wire  _T_131; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@50383.8]
  wire [30:0] _T_132; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@50384.8]
  wire [31:0] _T_133; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@50385.8]
  wire [31:0] _T_135; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@50387.8]
  wire  _T_136; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@50388.8]
  wire [30:0] _T_137; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@50389.8]
  wire [31:0] _T_138; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@50390.8]
  wire [31:0] _T_140; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@50392.8]
  wire  _T_141; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@50393.8]
  wire [30:0] _T_142; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@50394.8]
  wire [31:0] _T_143; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@50395.8]
  wire [31:0] _T_145; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@50397.8]
  wire  _T_146; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@50398.8]
  wire [31:0] _T_150; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@50402.8]
  wire  _T_151; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@50403.8]
  wire [30:0] _T_152; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@50404.8]
  wire [31:0] _T_153; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@50405.8]
  wire [31:0] _T_155; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@50407.8]
  wire  _T_156; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@50408.8]
  wire  _T_157; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@50409.8]
  wire  _T_158; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@50410.8]
  wire  _T_159; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@50411.8]
  wire  _T_160; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@50412.8]
  wire  _T_161; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@50413.8]
  wire  _T_167; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50419.8]
  wire  _T_173; // @[Parameters.scala 92:48:chipyard.TestHarness.RocketConfig.fir@50434.8]
  wire  _T_175; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@50436.8]
  wire  _T_183; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50445.8]
  wire  _T_184; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50446.8]
  wire  _T_186; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50452.8]
  wire  _T_187; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50453.8]
  wire  _T_190; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50460.8]
  wire  _T_191; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50461.8]
  wire  _T_193; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50467.8]
  wire  _T_194; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50468.8]
  wire  _T_195; // @[Bundles.scala 110:27:chipyard.TestHarness.RocketConfig.fir@50473.8]
  wire  _T_197; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50475.8]
  wire  _T_198; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50476.8]
  wire [7:0] _T_199; // @[Monitor.scala 86:18:chipyard.TestHarness.RocketConfig.fir@50481.8]
  wire  _T_200; // @[Monitor.scala 86:31:chipyard.TestHarness.RocketConfig.fir@50482.8]
  wire  _T_202; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50484.8]
  wire  _T_203; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50485.8]
  wire  _T_204; // @[Monitor.scala 87:18:chipyard.TestHarness.RocketConfig.fir@50490.8]
  wire  _T_206; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50492.8]
  wire  _T_207; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50493.8]
  wire  _T_208; // @[Monitor.scala 90:25:chipyard.TestHarness.RocketConfig.fir@50499.6]
  wire  _T_287; // @[Monitor.scala 97:31:chipyard.TestHarness.RocketConfig.fir@50609.8]
  wire  _T_289; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50611.8]
  wire  _T_290; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50612.8]
  wire  _T_300; // @[Monitor.scala 102:25:chipyard.TestHarness.RocketConfig.fir@50635.6]
  wire  _T_302; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@50638.8]
  wire  _T_310; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@50646.8]
  wire  _T_312; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@50648.8]
  wire  _T_345; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@50681.8]
  wire  _T_346; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@50682.8]
  wire  _T_347; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@50683.8]
  wire  _T_348; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@50684.8]
  wire  _T_349; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@50685.8]
  wire  _T_350; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@50686.8]
  wire  _T_352; // @[Parameters.scala 553:30:chipyard.TestHarness.RocketConfig.fir@50688.8]
  wire  _T_354; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50690.8]
  wire  _T_355; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50691.8]
  wire  _T_362; // @[Monitor.scala 106:31:chipyard.TestHarness.RocketConfig.fir@50710.8]
  wire  _T_364; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50712.8]
  wire  _T_365; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50713.8]
  wire  _T_366; // @[Monitor.scala 107:30:chipyard.TestHarness.RocketConfig.fir@50718.8]
  wire  _T_368; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50720.8]
  wire  _T_369; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50721.8]
  wire  _T_374; // @[Monitor.scala 111:25:chipyard.TestHarness.RocketConfig.fir@50735.6]
  wire  _T_418; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@50780.8]
  wire  _T_427; // @[Parameters.scala 553:30:chipyard.TestHarness.RocketConfig.fir@50789.8]
  wire  _T_430; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50792.8]
  wire  _T_431; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50793.8]
  wire  _T_446; // @[Monitor.scala 119:25:chipyard.TestHarness.RocketConfig.fir@50829.6]
  wire [7:0] _T_514; // @[Monitor.scala 124:33:chipyard.TestHarness.RocketConfig.fir@50914.8]
  wire [7:0] _T_515; // @[Monitor.scala 124:31:chipyard.TestHarness.RocketConfig.fir@50915.8]
  wire  _T_516; // @[Monitor.scala 124:40:chipyard.TestHarness.RocketConfig.fir@50916.8]
  wire  _T_518; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50918.8]
  wire  _T_519; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50919.8]
  wire  _T_520; // @[Monitor.scala 127:25:chipyard.TestHarness.RocketConfig.fir@50925.6]
  wire  _T_522; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@50928.8]
  wire  _T_560; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@50966.8]
  wire  _T_571; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50977.8]
  wire  _T_572; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50978.8]
  wire  _T_579; // @[Bundles.scala 140:33:chipyard.TestHarness.RocketConfig.fir@50997.8]
  wire  _T_581; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50999.8]
  wire  _T_582; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@51000.8]
  wire  _T_587; // @[Monitor.scala 135:25:chipyard.TestHarness.RocketConfig.fir@51014.6]
  wire  _T_646; // @[Bundles.scala 147:30:chipyard.TestHarness.RocketConfig.fir@51086.8]
  wire  _T_648; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@51088.8]
  wire  _T_649; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@51089.8]
  wire  _T_654; // @[Monitor.scala 143:25:chipyard.TestHarness.RocketConfig.fir@51103.6]
  wire  _T_705; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@51155.8]
  wire  _T_706; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@51156.8]
  wire  _T_713; // @[Bundles.scala 160:28:chipyard.TestHarness.RocketConfig.fir@51175.8]
  wire  _T_715; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@51177.8]
  wire  _T_716; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@51178.8]
  wire  _T_725; // @[Bundles.scala 44:24:chipyard.TestHarness.RocketConfig.fir@51202.6]
  wire  _T_727; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51204.6]
  wire  _T_728; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51205.6]
  wire  _T_729; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@51210.6]
  wire  _T_730; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@51211.6]
  wire  _T_731; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@51212.6]
  wire  _T_732; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@51213.6]
  wire  _T_734; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@51220.6]
  wire  _T_735; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@51221.6]
  wire  _T_736; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@51222.6]
  wire  _T_738; // @[Monitor.scala 307:25:chipyard.TestHarness.RocketConfig.fir@51224.6]
  wire  _T_740; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51227.8]
  wire  _T_741; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51228.8]
  wire  _T_742; // @[Monitor.scala 309:27:chipyard.TestHarness.RocketConfig.fir@51233.8]
  wire  _T_744; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51235.8]
  wire  _T_745; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51236.8]
  wire  _T_746; // @[Monitor.scala 310:28:chipyard.TestHarness.RocketConfig.fir@51241.8]
  wire  _T_748; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51243.8]
  wire  _T_749; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51244.8]
  wire  _T_750; // @[Monitor.scala 311:15:chipyard.TestHarness.RocketConfig.fir@51249.8]
  wire  _T_752; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51251.8]
  wire  _T_753; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51252.8]
  wire  _T_754; // @[Monitor.scala 312:15:chipyard.TestHarness.RocketConfig.fir@51257.8]
  wire  _T_756; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51259.8]
  wire  _T_757; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51260.8]
  wire  _T_758; // @[Monitor.scala 315:25:chipyard.TestHarness.RocketConfig.fir@51266.6]
  wire  _T_769; // @[Bundles.scala 104:26:chipyard.TestHarness.RocketConfig.fir@51290.8]
  wire  _T_771; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51292.8]
  wire  _T_772; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51293.8]
  wire  _T_773; // @[Monitor.scala 320:28:chipyard.TestHarness.RocketConfig.fir@51298.8]
  wire  _T_775; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51300.8]
  wire  _T_776; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51301.8]
  wire  _T_786; // @[Monitor.scala 325:25:chipyard.TestHarness.RocketConfig.fir@51324.6]
  wire  _T_806; // @[Monitor.scala 331:30:chipyard.TestHarness.RocketConfig.fir@51365.8]
  wire  _T_808; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51367.8]
  wire  _T_809; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51368.8]
  wire  _T_815; // @[Monitor.scala 335:25:chipyard.TestHarness.RocketConfig.fir@51383.6]
  wire  _T_832; // @[Monitor.scala 343:25:chipyard.TestHarness.RocketConfig.fir@51418.6]
  wire  _T_850; // @[Monitor.scala 351:25:chipyard.TestHarness.RocketConfig.fir@51454.6]
  wire  _T_882; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@51520.4]
  wire  _T_889; // @[Edges.scala 93:28:chipyard.TestHarness.RocketConfig.fir@51527.4]
  reg [8:0] _T_891; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@51529.4]
  reg [31:0] _RAND_0;
  wire [8:0] _T_893; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@51531.4]
  wire  _T_894; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@51532.4]
  reg [2:0] _T_902; // @[Monitor.scala 381:22:chipyard.TestHarness.RocketConfig.fir@51543.4]
  reg [31:0] _RAND_1;
  reg [2:0] _T_903; // @[Monitor.scala 382:22:chipyard.TestHarness.RocketConfig.fir@51544.4]
  reg [31:0] _RAND_2;
  reg [3:0] _T_904; // @[Monitor.scala 383:22:chipyard.TestHarness.RocketConfig.fir@51545.4]
  reg [31:0] _RAND_3;
  reg [2:0] _T_905; // @[Monitor.scala 384:22:chipyard.TestHarness.RocketConfig.fir@51546.4]
  reg [31:0] _RAND_4;
  reg [30:0] _T_906; // @[Monitor.scala 385:22:chipyard.TestHarness.RocketConfig.fir@51547.4]
  reg [31:0] _RAND_5;
  wire  _T_907; // @[Monitor.scala 386:22:chipyard.TestHarness.RocketConfig.fir@51548.4]
  wire  _T_908; // @[Monitor.scala 386:19:chipyard.TestHarness.RocketConfig.fir@51549.4]
  wire  _T_909; // @[Monitor.scala 387:32:chipyard.TestHarness.RocketConfig.fir@51551.6]
  wire  _T_911; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@51553.6]
  wire  _T_912; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@51554.6]
  wire  _T_913; // @[Monitor.scala 388:32:chipyard.TestHarness.RocketConfig.fir@51559.6]
  wire  _T_915; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@51561.6]
  wire  _T_916; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@51562.6]
  wire  _T_917; // @[Monitor.scala 389:32:chipyard.TestHarness.RocketConfig.fir@51567.6]
  wire  _T_919; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@51569.6]
  wire  _T_920; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@51570.6]
  wire  _T_921; // @[Monitor.scala 390:32:chipyard.TestHarness.RocketConfig.fir@51575.6]
  wire  _T_923; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@51577.6]
  wire  _T_924; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@51578.6]
  wire  _T_925; // @[Monitor.scala 391:32:chipyard.TestHarness.RocketConfig.fir@51583.6]
  wire  _T_927; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@51585.6]
  wire  _T_928; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@51586.6]
  wire  _T_930; // @[Monitor.scala 393:20:chipyard.TestHarness.RocketConfig.fir@51593.4]
  wire  _T_931; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@51601.4]
  wire [26:0] _T_933; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@51603.4]
  wire [11:0] _T_935; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@51605.4]
  reg [8:0] _T_939; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@51609.4]
  reg [31:0] _RAND_6;
  wire [8:0] _T_941; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@51611.4]
  wire  _T_942; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@51612.4]
  reg [2:0] _T_950; // @[Monitor.scala 532:22:chipyard.TestHarness.RocketConfig.fir@51623.4]
  reg [31:0] _RAND_7;
  reg [1:0] _T_951; // @[Monitor.scala 533:22:chipyard.TestHarness.RocketConfig.fir@51624.4]
  reg [31:0] _RAND_8;
  reg [3:0] _T_952; // @[Monitor.scala 534:22:chipyard.TestHarness.RocketConfig.fir@51625.4]
  reg [31:0] _RAND_9;
  reg [2:0] _T_953; // @[Monitor.scala 535:22:chipyard.TestHarness.RocketConfig.fir@51626.4]
  reg [31:0] _RAND_10;
  reg  _T_954; // @[Monitor.scala 536:22:chipyard.TestHarness.RocketConfig.fir@51627.4]
  reg [31:0] _RAND_11;
  reg  _T_955; // @[Monitor.scala 537:22:chipyard.TestHarness.RocketConfig.fir@51628.4]
  reg [31:0] _RAND_12;
  wire  _T_956; // @[Monitor.scala 538:22:chipyard.TestHarness.RocketConfig.fir@51629.4]
  wire  _T_957; // @[Monitor.scala 538:19:chipyard.TestHarness.RocketConfig.fir@51630.4]
  wire  _T_958; // @[Monitor.scala 539:29:chipyard.TestHarness.RocketConfig.fir@51632.6]
  wire  _T_960; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51634.6]
  wire  _T_961; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51635.6]
  wire  _T_962; // @[Monitor.scala 540:29:chipyard.TestHarness.RocketConfig.fir@51640.6]
  wire  _T_964; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51642.6]
  wire  _T_965; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51643.6]
  wire  _T_966; // @[Monitor.scala 541:29:chipyard.TestHarness.RocketConfig.fir@51648.6]
  wire  _T_968; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51650.6]
  wire  _T_969; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51651.6]
  wire  _T_970; // @[Monitor.scala 542:29:chipyard.TestHarness.RocketConfig.fir@51656.6]
  wire  _T_972; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51658.6]
  wire  _T_973; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51659.6]
  wire  _T_974; // @[Monitor.scala 543:29:chipyard.TestHarness.RocketConfig.fir@51664.6]
  wire  _T_976; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51666.6]
  wire  _T_977; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51667.6]
  wire  _T_978; // @[Monitor.scala 544:29:chipyard.TestHarness.RocketConfig.fir@51672.6]
  wire  _T_980; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51674.6]
  wire  _T_981; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51675.6]
  wire  _T_983; // @[Monitor.scala 546:20:chipyard.TestHarness.RocketConfig.fir@51682.4]
  reg [4:0] inflight; // @[Monitor.scala 608:27:chipyard.TestHarness.RocketConfig.fir@51691.4]
  reg [31:0] _RAND_13;
  reg [19:0] inflight_opcodes; // @[Monitor.scala 610:35:chipyard.TestHarness.RocketConfig.fir@51692.4]
  reg [31:0] _RAND_14;
  reg [39:0] inflight_sizes; // @[Monitor.scala 612:33:chipyard.TestHarness.RocketConfig.fir@51693.4]
  reg [63:0] _RAND_15;
  reg [8:0] _T_993; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@51703.4]
  reg [31:0] _RAND_16;
  wire [8:0] _T_995; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@51705.4]
  wire  a_first; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@51706.4]
  reg [8:0] _T_1011; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@51725.4]
  reg [31:0] _RAND_17;
  wire [8:0] _T_1013; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@51727.4]
  wire  d_first; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@51728.4]
  wire [4:0] _GEN_57; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@51747.4]
  wire [5:0] _T_1021; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@51747.4]
  wire [19:0] _T_1022; // @[Monitor.scala 629:44:chipyard.TestHarness.RocketConfig.fir@51748.4]
  wire [15:0] _T_1026; // @[Monitor.scala 606:57:chipyard.TestHarness.RocketConfig.fir@51752.4]
  wire [19:0] _GEN_58; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@51753.4]
  wire [19:0] _T_1027; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@51753.4]
  wire [19:0] _T_1028; // @[Monitor.scala 629:152:chipyard.TestHarness.RocketConfig.fir@51754.4]
  wire [5:0] _T_1029; // @[Monitor.scala 633:65:chipyard.TestHarness.RocketConfig.fir@51758.4]
  wire [39:0] _T_1030; // @[Monitor.scala 633:40:chipyard.TestHarness.RocketConfig.fir@51759.4]
  wire [15:0] _T_1034; // @[Monitor.scala 606:57:chipyard.TestHarness.RocketConfig.fir@51763.4]
  wire [39:0] _GEN_60; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@51764.4]
  wire [39:0] _T_1035; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@51764.4]
  wire [39:0] _T_1036; // @[Monitor.scala 633:144:chipyard.TestHarness.RocketConfig.fir@51765.4]
  wire  _T_1040; // @[Monitor.scala 643:27:chipyard.TestHarness.RocketConfig.fir@51790.4]
  wire [7:0] _T_1042; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@51793.6]
  wire [3:0] _T_1043; // @[Monitor.scala 645:53:chipyard.TestHarness.RocketConfig.fir@51795.6]
  wire [3:0] _T_1044; // @[Monitor.scala 645:61:chipyard.TestHarness.RocketConfig.fir@51796.6]
  wire [4:0] _T_1045; // @[Monitor.scala 646:49:chipyard.TestHarness.RocketConfig.fir@51798.6]
  wire [4:0] _T_1046; // @[Monitor.scala 646:57:chipyard.TestHarness.RocketConfig.fir@51799.6]
  wire [4:0] _GEN_62; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@51801.6]
  wire [5:0] _T_1047; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@51801.6]
  wire [3:0] a_opcodes_set_interm; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@51792.4]
  wire [66:0] _GEN_63; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@51802.6]
  wire [66:0] _T_1048; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@51802.6]
  wire [5:0] _T_1049; // @[Monitor.scala 648:68:chipyard.TestHarness.RocketConfig.fir@51804.6]
  wire [4:0] a_sizes_set_interm; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@51792.4]
  wire [67:0] _GEN_64; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@51805.6]
  wire [67:0] _T_1050; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@51805.6]
  wire [4:0] _T_1051; // @[Monitor.scala 649:26:chipyard.TestHarness.RocketConfig.fir@51807.6]
  wire  _T_1053; // @[Monitor.scala 649:17:chipyard.TestHarness.RocketConfig.fir@51809.6]
  wire  _T_1055; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@51811.6]
  wire  _T_1056; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@51812.6]
  wire [7:0] _GEN_15; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@51792.4]
  wire [66:0] _GEN_18; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@51792.4]
  wire [67:0] _GEN_19; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@51792.4]
  wire  _T_1059; // @[Monitor.scala 660:27:chipyard.TestHarness.RocketConfig.fir@51826.4]
  wire  _T_1061; // @[Monitor.scala 660:75:chipyard.TestHarness.RocketConfig.fir@51828.4]
  wire  _T_1062; // @[Monitor.scala 660:72:chipyard.TestHarness.RocketConfig.fir@51829.4]
  wire [7:0] _T_1063; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@51831.6]
  wire [78:0] _GEN_66; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@51838.6]
  wire [78:0] _T_1069; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@51838.6]
  wire [78:0] _GEN_67; // @[Monitor.scala 663:72:chipyard.TestHarness.RocketConfig.fir@51845.6]
  wire [78:0] _T_1075; // @[Monitor.scala 663:72:chipyard.TestHarness.RocketConfig.fir@51845.6]
  wire [7:0] _GEN_20; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@51830.4]
  wire [78:0] _GEN_21; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@51830.4]
  wire [78:0] _GEN_22; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@51830.4]
  wire  _T_1076; // @[Monitor.scala 665:26:chipyard.TestHarness.RocketConfig.fir@51848.4]
  wire  _T_1079; // @[Monitor.scala 665:71:chipyard.TestHarness.RocketConfig.fir@51851.4]
  wire [4:0] _T_1080; // @[Monitor.scala 666:25:chipyard.TestHarness.RocketConfig.fir@51853.6]
  wire  _T_1082; // @[Monitor.scala 666:93:chipyard.TestHarness.RocketConfig.fir@51855.6]
  wire  _T_1083; // @[Monitor.scala 666:68:chipyard.TestHarness.RocketConfig.fir@51856.6]
  wire  _T_1084; // @[Monitor.scala 666:142:chipyard.TestHarness.RocketConfig.fir@51857.6]
  wire  _T_1085; // @[Monitor.scala 666:119:chipyard.TestHarness.RocketConfig.fir@51858.6]
  wire  _T_1086; // @[Monitor.scala 666:166:chipyard.TestHarness.RocketConfig.fir@51859.6]
  wire  _T_1087; // @[Monitor.scala 666:49:chipyard.TestHarness.RocketConfig.fir@51860.6]
  wire  _T_1089; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51862.6]
  wire  _T_1090; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51863.6]
  wire [3:0] a_opcode_lookup; // @[:chipyard.TestHarness.RocketConfig.fir@51745.4 :chipyard.TestHarness.RocketConfig.fir@51746.4 Monitor.scala 629:21:chipyard.TestHarness.RocketConfig.fir@51755.4]
  wire [2:0] _GEN_25; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@51869.6]
  wire [2:0] _GEN_26; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@51869.6]
  wire [2:0] _GEN_27; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@51869.6]
  wire [2:0] _GEN_28; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@51869.6]
  wire [2:0] _GEN_29; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@51869.6]
  wire [2:0] _GEN_30; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@51869.6]
  wire  _T_1092; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@51869.6]
  wire [2:0] _GEN_37; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@51871.6]
  wire [2:0] _GEN_38; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@51871.6]
  wire  _T_1094; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@51871.6]
  wire  _T_1095; // @[Monitor.scala 667:71:chipyard.TestHarness.RocketConfig.fir@51872.6]
  wire [2:0] _GEN_41; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@51873.6]
  wire [2:0] _GEN_42; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@51873.6]
  wire [2:0] _GEN_43; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@51873.6]
  wire [2:0] _GEN_44; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@51873.6]
  wire [2:0] _GEN_45; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@51873.6]
  wire [2:0] _GEN_46; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@51873.6]
  wire  _T_1096; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@51873.6]
  wire [2:0] _GEN_53; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@51874.6]
  wire [2:0] _GEN_54; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@51874.6]
  wire  _T_1097; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@51874.6]
  wire  _T_1098; // @[Monitor.scala 668:99:chipyard.TestHarness.RocketConfig.fir@51875.6]
  wire  _T_1099; // @[Monitor.scala 668:34:chipyard.TestHarness.RocketConfig.fir@51876.6]
  wire  _T_1100; // @[Monitor.scala 668:15:chipyard.TestHarness.RocketConfig.fir@51877.6]
  wire  _T_1102; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51879.6]
  wire  _T_1103; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51880.6]
  wire [7:0] a_size_lookup; // @[:chipyard.TestHarness.RocketConfig.fir@51756.4 :chipyard.TestHarness.RocketConfig.fir@51757.4 Monitor.scala 633:19:chipyard.TestHarness.RocketConfig.fir@51766.4]
  wire [7:0] _GEN_68; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@51885.6]
  wire  _T_1104; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@51885.6]
  wire  _T_1106; // @[Monitor.scala 670:72:chipyard.TestHarness.RocketConfig.fir@51887.6]
  wire  _T_1107; // @[Monitor.scala 670:53:chipyard.TestHarness.RocketConfig.fir@51888.6]
  wire  _T_1109; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51890.6]
  wire  _T_1110; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51891.6]
  wire  _T_1112; // @[Monitor.scala 672:36:chipyard.TestHarness.RocketConfig.fir@51898.4]
  wire  _T_1113; // @[Monitor.scala 672:47:chipyard.TestHarness.RocketConfig.fir@51899.4]
  wire  _T_1115; // @[Monitor.scala 672:65:chipyard.TestHarness.RocketConfig.fir@51901.4]
  wire  _T_1117; // @[Monitor.scala 672:116:chipyard.TestHarness.RocketConfig.fir@51903.4]
  wire  _T_1118; // @[Monitor.scala 673:15:chipyard.TestHarness.RocketConfig.fir@51905.6]
  wire  _T_1119; // @[Monitor.scala 673:32:chipyard.TestHarness.RocketConfig.fir@51906.6]
  wire  _T_1121; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51908.6]
  wire  _T_1122; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51909.6]
  wire [4:0] a_set; // @[:chipyard.TestHarness.RocketConfig.fir@51739.4 :chipyard.TestHarness.RocketConfig.fir@51740.4 Monitor.scala 644:13:chipyard.TestHarness.RocketConfig.fir@51794.6]
  wire [4:0] d_clr; // @[:chipyard.TestHarness.RocketConfig.fir@51818.4 :chipyard.TestHarness.RocketConfig.fir@51819.4 Monitor.scala 661:13:chipyard.TestHarness.RocketConfig.fir@51832.6]
  wire  _T_1123; // @[Monitor.scala 677:20:chipyard.TestHarness.RocketConfig.fir@51915.4]
  wire  _T_1124; // @[Monitor.scala 677:40:chipyard.TestHarness.RocketConfig.fir@51916.4]
  wire  _T_1125; // @[Monitor.scala 677:33:chipyard.TestHarness.RocketConfig.fir@51917.4]
  wire  _T_1126; // @[Monitor.scala 677:30:chipyard.TestHarness.RocketConfig.fir@51918.4]
  wire  _T_1128; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51920.4]
  wire  _T_1129; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51921.4]
  wire [4:0] _T_1130; // @[Monitor.scala 680:27:chipyard.TestHarness.RocketConfig.fir@51926.4]
  wire [4:0] _T_1131; // @[Monitor.scala 680:38:chipyard.TestHarness.RocketConfig.fir@51927.4]
  wire [4:0] _T_1132; // @[Monitor.scala 680:36:chipyard.TestHarness.RocketConfig.fir@51928.4]
  wire [19:0] a_opcodes_set; // @[:chipyard.TestHarness.RocketConfig.fir@51741.4 :chipyard.TestHarness.RocketConfig.fir@51742.4 Monitor.scala 647:21:chipyard.TestHarness.RocketConfig.fir@51803.6]
  wire [19:0] _T_1133; // @[Monitor.scala 681:43:chipyard.TestHarness.RocketConfig.fir@51930.4]
  wire [19:0] d_opcodes_clr; // @[:chipyard.TestHarness.RocketConfig.fir@51820.4 :chipyard.TestHarness.RocketConfig.fir@51821.4 Monitor.scala 662:21:chipyard.TestHarness.RocketConfig.fir@51839.6]
  wire [19:0] _T_1134; // @[Monitor.scala 681:62:chipyard.TestHarness.RocketConfig.fir@51931.4]
  wire [19:0] _T_1135; // @[Monitor.scala 681:60:chipyard.TestHarness.RocketConfig.fir@51932.4]
  wire [39:0] a_sizes_set; // @[:chipyard.TestHarness.RocketConfig.fir@51743.4 :chipyard.TestHarness.RocketConfig.fir@51744.4 Monitor.scala 648:19:chipyard.TestHarness.RocketConfig.fir@51806.6]
  wire [39:0] _T_1136; // @[Monitor.scala 682:39:chipyard.TestHarness.RocketConfig.fir@51934.4]
  wire [39:0] d_sizes_clr; // @[:chipyard.TestHarness.RocketConfig.fir@51822.4 :chipyard.TestHarness.RocketConfig.fir@51823.4 Monitor.scala 663:19:chipyard.TestHarness.RocketConfig.fir@51846.6]
  wire [39:0] _T_1137; // @[Monitor.scala 682:56:chipyard.TestHarness.RocketConfig.fir@51935.4]
  wire [39:0] _T_1138; // @[Monitor.scala 682:54:chipyard.TestHarness.RocketConfig.fir@51936.4]
  reg [31:0] _T_1139; // @[Monitor.scala 684:27:chipyard.TestHarness.RocketConfig.fir@51938.4]
  reg [31:0] _RAND_18;
  wire  _T_1140; // @[Monitor.scala 687:26:chipyard.TestHarness.RocketConfig.fir@51941.4]
  wire  _T_1141; // @[Monitor.scala 687:16:chipyard.TestHarness.RocketConfig.fir@51942.4]
  wire  _T_1142; // @[Monitor.scala 687:39:chipyard.TestHarness.RocketConfig.fir@51943.4]
  wire  _T_1143; // @[Monitor.scala 687:30:chipyard.TestHarness.RocketConfig.fir@51944.4]
  wire  _T_1144; // @[Monitor.scala 687:59:chipyard.TestHarness.RocketConfig.fir@51945.4]
  wire  _T_1145; // @[Monitor.scala 687:47:chipyard.TestHarness.RocketConfig.fir@51946.4]
  wire  _T_1147; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@51948.4]
  wire  _T_1148; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@51949.4]
  wire [31:0] _T_1150; // @[Monitor.scala 689:26:chipyard.TestHarness.RocketConfig.fir@51955.4]
  wire  _T_1153; // @[Monitor.scala 690:27:chipyard.TestHarness.RocketConfig.fir@51959.4]
  wire  _GEN_69; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50421.10]
  wire  _GEN_85; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50549.10]
  wire  _GEN_103; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50693.10]
  wire  _GEN_115; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50795.10]
  wire  _GEN_125; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50889.10]
  wire  _GEN_135; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50980.10]
  wire  _GEN_145; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@51069.10]
  wire  _GEN_155; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@51158.10]
  wire  _GEN_167; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51230.10]
  wire  _GEN_177; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51272.10]
  wire  _GEN_189; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51330.10]
  wire  _GEN_201; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51389.10]
  wire  _GEN_207; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51424.10]
  wire  _GEN_213; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51460.10]
  plusarg_reader #(.FORMAT("tilelink_timeout=%d"), .DEFAULT(0), .WIDTH(32)) plusarg_reader ( // @[PlusArg.scala 44:11:chipyard.TestHarness.RocketConfig.fir@51939.4]
    .out(plusarg_reader_out)
  );
  assign _T_4 = io_in_a_bits_source == 3'h4; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@50246.6]
  assign _T_5 = io_in_a_bits_source == 3'h0; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@50247.6]
  assign _T_6 = io_in_a_bits_source == 3'h1; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@50248.6]
  assign _T_7 = io_in_a_bits_source == 3'h2; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@50249.6]
  assign _T_9 = _T_4 | _T_5; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@50256.6]
  assign _T_10 = _T_9 | _T_6; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@50257.6]
  assign _T_11 = _T_10 | _T_7; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@50258.6]
  assign _T_13 = 27'hfff << io_in_a_bits_size; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@50260.6]
  assign _T_15 = ~_T_13[11:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@50262.6]
  assign _GEN_56 = {{19'd0}, _T_15}; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@50263.6]
  assign _T_16 = io_in_a_bits_address & _GEN_56; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@50263.6]
  assign _T_17 = _T_16 == 31'h0; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@50264.6]
  assign _T_20 = 4'h1 << io_in_a_bits_size[1:0]; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@50267.6]
  assign _T_22 = _T_20[2:0] | 3'h1; // @[Misc.scala 201:81:chipyard.TestHarness.RocketConfig.fir@50269.6]
  assign _T_23 = io_in_a_bits_size >= 4'h3; // @[Misc.scala 205:21:chipyard.TestHarness.RocketConfig.fir@50270.6]
  assign _T_26 = ~io_in_a_bits_address[2]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@50273.6]
  assign _T_28 = _T_22[2] & _T_26; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@50275.6]
  assign _T_29 = _T_23 | _T_28; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@50276.6]
  assign _T_31 = _T_22[2] & io_in_a_bits_address[2]; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@50278.6]
  assign _T_32 = _T_23 | _T_31; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@50279.6]
  assign _T_35 = ~io_in_a_bits_address[1]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@50282.6]
  assign _T_36 = _T_26 & _T_35; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@50283.6]
  assign _T_37 = _T_22[1] & _T_36; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@50284.6]
  assign _T_38 = _T_29 | _T_37; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@50285.6]
  assign _T_39 = _T_26 & io_in_a_bits_address[1]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@50286.6]
  assign _T_40 = _T_22[1] & _T_39; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@50287.6]
  assign _T_41 = _T_29 | _T_40; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@50288.6]
  assign _T_42 = io_in_a_bits_address[2] & _T_35; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@50289.6]
  assign _T_43 = _T_22[1] & _T_42; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@50290.6]
  assign _T_44 = _T_32 | _T_43; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@50291.6]
  assign _T_45 = io_in_a_bits_address[2] & io_in_a_bits_address[1]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@50292.6]
  assign _T_46 = _T_22[1] & _T_45; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@50293.6]
  assign _T_47 = _T_32 | _T_46; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@50294.6]
  assign _T_50 = ~io_in_a_bits_address[0]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@50297.6]
  assign _T_51 = _T_36 & _T_50; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@50298.6]
  assign _T_52 = _T_22[0] & _T_51; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@50299.6]
  assign _T_53 = _T_38 | _T_52; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@50300.6]
  assign _T_54 = _T_36 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@50301.6]
  assign _T_55 = _T_22[0] & _T_54; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@50302.6]
  assign _T_56 = _T_38 | _T_55; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@50303.6]
  assign _T_57 = _T_39 & _T_50; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@50304.6]
  assign _T_58 = _T_22[0] & _T_57; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@50305.6]
  assign _T_59 = _T_41 | _T_58; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@50306.6]
  assign _T_60 = _T_39 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@50307.6]
  assign _T_61 = _T_22[0] & _T_60; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@50308.6]
  assign _T_62 = _T_41 | _T_61; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@50309.6]
  assign _T_63 = _T_42 & _T_50; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@50310.6]
  assign _T_64 = _T_22[0] & _T_63; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@50311.6]
  assign _T_65 = _T_44 | _T_64; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@50312.6]
  assign _T_66 = _T_42 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@50313.6]
  assign _T_67 = _T_22[0] & _T_66; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@50314.6]
  assign _T_68 = _T_44 | _T_67; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@50315.6]
  assign _T_69 = _T_45 & _T_50; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@50316.6]
  assign _T_70 = _T_22[0] & _T_69; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@50317.6]
  assign _T_71 = _T_47 | _T_70; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@50318.6]
  assign _T_72 = _T_45 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@50319.6]
  assign _T_73 = _T_22[0] & _T_72; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@50320.6]
  assign _T_74 = _T_47 | _T_73; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@50321.6]
  assign _T_81 = {_T_74,_T_71,_T_68,_T_65,_T_62,_T_59,_T_56,_T_53}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@50328.6]
  assign _T_85 = {1'b0,$signed(io_in_a_bits_address)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@50332.6]
  assign _T_120 = io_in_a_bits_opcode == 3'h6; // @[Monitor.scala 79:25:chipyard.TestHarness.RocketConfig.fir@50371.6]
  assign _T_122 = io_in_a_bits_address ^ 31'h3000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@50374.8]
  assign _T_123 = {1'b0,$signed(_T_122)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@50375.8]
  assign _T_125 = $signed(_T_123) & -32'sh1000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@50377.8]
  assign _T_126 = $signed(_T_125) == 32'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@50378.8]
  assign _T_127 = io_in_a_bits_address ^ 31'h2010000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@50379.8]
  assign _T_128 = {1'b0,$signed(_T_127)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@50380.8]
  assign _T_130 = $signed(_T_128) & -32'sh1000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@50382.8]
  assign _T_131 = $signed(_T_130) == 32'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@50383.8]
  assign _T_132 = io_in_a_bits_address ^ 31'h54000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@50384.8]
  assign _T_133 = {1'b0,$signed(_T_132)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@50385.8]
  assign _T_135 = $signed(_T_133) & -32'sh1000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@50387.8]
  assign _T_136 = $signed(_T_135) == 32'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@50388.8]
  assign _T_137 = io_in_a_bits_address ^ 31'hc000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@50389.8]
  assign _T_138 = {1'b0,$signed(_T_137)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@50390.8]
  assign _T_140 = $signed(_T_138) & -32'sh4000000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@50392.8]
  assign _T_141 = $signed(_T_140) == 32'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@50393.8]
  assign _T_142 = io_in_a_bits_address ^ 31'h2000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@50394.8]
  assign _T_143 = {1'b0,$signed(_T_142)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@50395.8]
  assign _T_145 = $signed(_T_143) & -32'sh10000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@50397.8]
  assign _T_146 = $signed(_T_145) == 32'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@50398.8]
  assign _T_150 = $signed(_T_85) & -32'sh1000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@50402.8]
  assign _T_151 = $signed(_T_150) == 32'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@50403.8]
  assign _T_152 = io_in_a_bits_address ^ 31'h10000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@50404.8]
  assign _T_153 = {1'b0,$signed(_T_152)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@50405.8]
  assign _T_155 = $signed(_T_153) & -32'sh10000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@50407.8]
  assign _T_156 = $signed(_T_155) == 32'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@50408.8]
  assign _T_157 = _T_126 | _T_131; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@50409.8]
  assign _T_158 = _T_157 | _T_136; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@50410.8]
  assign _T_159 = _T_158 | _T_141; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@50411.8]
  assign _T_160 = _T_159 | _T_146; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@50412.8]
  assign _T_161 = _T_160 | _T_151; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@50413.8]
  assign _T_167 = ~reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50419.8]
  assign _T_173 = 4'h6 == io_in_a_bits_size; // @[Parameters.scala 92:48:chipyard.TestHarness.RocketConfig.fir@50434.8]
  assign _T_175 = _T_5 & _T_173; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@50436.8]
  assign _T_183 = _T_175 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50445.8]
  assign _T_184 = ~_T_183; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50446.8]
  assign _T_186 = _T_11 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50452.8]
  assign _T_187 = ~_T_186; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50453.8]
  assign _T_190 = _T_23 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50460.8]
  assign _T_191 = ~_T_190; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50461.8]
  assign _T_193 = _T_17 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50467.8]
  assign _T_194 = ~_T_193; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50468.8]
  assign _T_195 = io_in_a_bits_param <= 3'h2; // @[Bundles.scala 110:27:chipyard.TestHarness.RocketConfig.fir@50473.8]
  assign _T_197 = _T_195 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50475.8]
  assign _T_198 = ~_T_197; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50476.8]
  assign _T_199 = ~io_in_a_bits_mask; // @[Monitor.scala 86:18:chipyard.TestHarness.RocketConfig.fir@50481.8]
  assign _T_200 = _T_199 == 8'h0; // @[Monitor.scala 86:31:chipyard.TestHarness.RocketConfig.fir@50482.8]
  assign _T_202 = _T_200 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50484.8]
  assign _T_203 = ~_T_202; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50485.8]
  assign _T_204 = ~io_in_a_bits_corrupt; // @[Monitor.scala 87:18:chipyard.TestHarness.RocketConfig.fir@50490.8]
  assign _T_206 = _T_204 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50492.8]
  assign _T_207 = ~_T_206; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50493.8]
  assign _T_208 = io_in_a_bits_opcode == 3'h7; // @[Monitor.scala 90:25:chipyard.TestHarness.RocketConfig.fir@50499.6]
  assign _T_287 = io_in_a_bits_param != 3'h0; // @[Monitor.scala 97:31:chipyard.TestHarness.RocketConfig.fir@50609.8]
  assign _T_289 = _T_287 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50611.8]
  assign _T_290 = ~_T_289; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50612.8]
  assign _T_300 = io_in_a_bits_opcode == 3'h4; // @[Monitor.scala 102:25:chipyard.TestHarness.RocketConfig.fir@50635.6]
  assign _T_302 = io_in_a_bits_size <= 4'hc; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@50638.8]
  assign _T_310 = _T_302 & _T_126; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@50646.8]
  assign _T_312 = io_in_a_bits_size <= 4'h6; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@50648.8]
  assign _T_345 = _T_131 | _T_136; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@50681.8]
  assign _T_346 = _T_345 | _T_141; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@50682.8]
  assign _T_347 = _T_346 | _T_146; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@50683.8]
  assign _T_348 = _T_347 | _T_151; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@50684.8]
  assign _T_349 = _T_348 | _T_156; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@50685.8]
  assign _T_350 = _T_312 & _T_349; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@50686.8]
  assign _T_352 = _T_310 | _T_350; // @[Parameters.scala 553:30:chipyard.TestHarness.RocketConfig.fir@50688.8]
  assign _T_354 = _T_352 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50690.8]
  assign _T_355 = ~_T_354; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50691.8]
  assign _T_362 = io_in_a_bits_param == 3'h0; // @[Monitor.scala 106:31:chipyard.TestHarness.RocketConfig.fir@50710.8]
  assign _T_364 = _T_362 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50712.8]
  assign _T_365 = ~_T_364; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50713.8]
  assign _T_366 = io_in_a_bits_mask == _T_81; // @[Monitor.scala 107:30:chipyard.TestHarness.RocketConfig.fir@50718.8]
  assign _T_368 = _T_366 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50720.8]
  assign _T_369 = ~_T_368; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50721.8]
  assign _T_374 = io_in_a_bits_opcode == 3'h0; // @[Monitor.scala 111:25:chipyard.TestHarness.RocketConfig.fir@50735.6]
  assign _T_418 = _T_312 & _T_348; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@50780.8]
  assign _T_427 = _T_310 | _T_418; // @[Parameters.scala 553:30:chipyard.TestHarness.RocketConfig.fir@50789.8]
  assign _T_430 = _T_427 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50792.8]
  assign _T_431 = ~_T_430; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50793.8]
  assign _T_446 = io_in_a_bits_opcode == 3'h1; // @[Monitor.scala 119:25:chipyard.TestHarness.RocketConfig.fir@50829.6]
  assign _T_514 = ~_T_81; // @[Monitor.scala 124:33:chipyard.TestHarness.RocketConfig.fir@50914.8]
  assign _T_515 = io_in_a_bits_mask & _T_514; // @[Monitor.scala 124:31:chipyard.TestHarness.RocketConfig.fir@50915.8]
  assign _T_516 = _T_515 == 8'h0; // @[Monitor.scala 124:40:chipyard.TestHarness.RocketConfig.fir@50916.8]
  assign _T_518 = _T_516 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50918.8]
  assign _T_519 = ~_T_518; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50919.8]
  assign _T_520 = io_in_a_bits_opcode == 3'h2; // @[Monitor.scala 127:25:chipyard.TestHarness.RocketConfig.fir@50925.6]
  assign _T_522 = io_in_a_bits_size <= 4'h3; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@50928.8]
  assign _T_560 = _T_522 & _T_161; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@50966.8]
  assign _T_571 = _T_560 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50977.8]
  assign _T_572 = ~_T_571; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50978.8]
  assign _T_579 = io_in_a_bits_param <= 3'h4; // @[Bundles.scala 140:33:chipyard.TestHarness.RocketConfig.fir@50997.8]
  assign _T_581 = _T_579 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50999.8]
  assign _T_582 = ~_T_581; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@51000.8]
  assign _T_587 = io_in_a_bits_opcode == 3'h3; // @[Monitor.scala 135:25:chipyard.TestHarness.RocketConfig.fir@51014.6]
  assign _T_646 = io_in_a_bits_param <= 3'h3; // @[Bundles.scala 147:30:chipyard.TestHarness.RocketConfig.fir@51086.8]
  assign _T_648 = _T_646 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@51088.8]
  assign _T_649 = ~_T_648; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@51089.8]
  assign _T_654 = io_in_a_bits_opcode == 3'h5; // @[Monitor.scala 143:25:chipyard.TestHarness.RocketConfig.fir@51103.6]
  assign _T_705 = _T_310 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@51155.8]
  assign _T_706 = ~_T_705; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@51156.8]
  assign _T_713 = io_in_a_bits_param <= 3'h1; // @[Bundles.scala 160:28:chipyard.TestHarness.RocketConfig.fir@51175.8]
  assign _T_715 = _T_713 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@51177.8]
  assign _T_716 = ~_T_715; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@51178.8]
  assign _T_725 = io_in_d_bits_opcode <= 3'h6; // @[Bundles.scala 44:24:chipyard.TestHarness.RocketConfig.fir@51202.6]
  assign _T_727 = _T_725 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51204.6]
  assign _T_728 = ~_T_727; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51205.6]
  assign _T_729 = io_in_d_bits_source == 3'h4; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@51210.6]
  assign _T_730 = io_in_d_bits_source == 3'h0; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@51211.6]
  assign _T_731 = io_in_d_bits_source == 3'h1; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@51212.6]
  assign _T_732 = io_in_d_bits_source == 3'h2; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@51213.6]
  assign _T_734 = _T_729 | _T_730; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@51220.6]
  assign _T_735 = _T_734 | _T_731; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@51221.6]
  assign _T_736 = _T_735 | _T_732; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@51222.6]
  assign _T_738 = io_in_d_bits_opcode == 3'h6; // @[Monitor.scala 307:25:chipyard.TestHarness.RocketConfig.fir@51224.6]
  assign _T_740 = _T_736 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51227.8]
  assign _T_741 = ~_T_740; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51228.8]
  assign _T_742 = io_in_d_bits_size >= 4'h3; // @[Monitor.scala 309:27:chipyard.TestHarness.RocketConfig.fir@51233.8]
  assign _T_744 = _T_742 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51235.8]
  assign _T_745 = ~_T_744; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51236.8]
  assign _T_746 = io_in_d_bits_param == 2'h0; // @[Monitor.scala 310:28:chipyard.TestHarness.RocketConfig.fir@51241.8]
  assign _T_748 = _T_746 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51243.8]
  assign _T_749 = ~_T_748; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51244.8]
  assign _T_750 = ~io_in_d_bits_corrupt; // @[Monitor.scala 311:15:chipyard.TestHarness.RocketConfig.fir@51249.8]
  assign _T_752 = _T_750 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51251.8]
  assign _T_753 = ~_T_752; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51252.8]
  assign _T_754 = ~io_in_d_bits_denied; // @[Monitor.scala 312:15:chipyard.TestHarness.RocketConfig.fir@51257.8]
  assign _T_756 = _T_754 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51259.8]
  assign _T_757 = ~_T_756; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51260.8]
  assign _T_758 = io_in_d_bits_opcode == 3'h4; // @[Monitor.scala 315:25:chipyard.TestHarness.RocketConfig.fir@51266.6]
  assign _T_769 = io_in_d_bits_param <= 2'h2; // @[Bundles.scala 104:26:chipyard.TestHarness.RocketConfig.fir@51290.8]
  assign _T_771 = _T_769 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51292.8]
  assign _T_772 = ~_T_771; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51293.8]
  assign _T_773 = io_in_d_bits_param != 2'h2; // @[Monitor.scala 320:28:chipyard.TestHarness.RocketConfig.fir@51298.8]
  assign _T_775 = _T_773 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51300.8]
  assign _T_776 = ~_T_775; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51301.8]
  assign _T_786 = io_in_d_bits_opcode == 3'h5; // @[Monitor.scala 325:25:chipyard.TestHarness.RocketConfig.fir@51324.6]
  assign _T_806 = _T_754 | io_in_d_bits_corrupt; // @[Monitor.scala 331:30:chipyard.TestHarness.RocketConfig.fir@51365.8]
  assign _T_808 = _T_806 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51367.8]
  assign _T_809 = ~_T_808; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51368.8]
  assign _T_815 = io_in_d_bits_opcode == 3'h0; // @[Monitor.scala 335:25:chipyard.TestHarness.RocketConfig.fir@51383.6]
  assign _T_832 = io_in_d_bits_opcode == 3'h1; // @[Monitor.scala 343:25:chipyard.TestHarness.RocketConfig.fir@51418.6]
  assign _T_850 = io_in_d_bits_opcode == 3'h2; // @[Monitor.scala 351:25:chipyard.TestHarness.RocketConfig.fir@51454.6]
  assign _T_882 = io_in_a_ready & io_in_a_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@51520.4]
  assign _T_889 = ~io_in_a_bits_opcode[2]; // @[Edges.scala 93:28:chipyard.TestHarness.RocketConfig.fir@51527.4]
  assign _T_893 = _T_891 - 9'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@51531.4]
  assign _T_894 = _T_891 == 9'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@51532.4]
  assign _T_907 = ~_T_894; // @[Monitor.scala 386:22:chipyard.TestHarness.RocketConfig.fir@51548.4]
  assign _T_908 = io_in_a_valid & _T_907; // @[Monitor.scala 386:19:chipyard.TestHarness.RocketConfig.fir@51549.4]
  assign _T_909 = io_in_a_bits_opcode == _T_902; // @[Monitor.scala 387:32:chipyard.TestHarness.RocketConfig.fir@51551.6]
  assign _T_911 = _T_909 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@51553.6]
  assign _T_912 = ~_T_911; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@51554.6]
  assign _T_913 = io_in_a_bits_param == _T_903; // @[Monitor.scala 388:32:chipyard.TestHarness.RocketConfig.fir@51559.6]
  assign _T_915 = _T_913 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@51561.6]
  assign _T_916 = ~_T_915; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@51562.6]
  assign _T_917 = io_in_a_bits_size == _T_904; // @[Monitor.scala 389:32:chipyard.TestHarness.RocketConfig.fir@51567.6]
  assign _T_919 = _T_917 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@51569.6]
  assign _T_920 = ~_T_919; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@51570.6]
  assign _T_921 = io_in_a_bits_source == _T_905; // @[Monitor.scala 390:32:chipyard.TestHarness.RocketConfig.fir@51575.6]
  assign _T_923 = _T_921 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@51577.6]
  assign _T_924 = ~_T_923; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@51578.6]
  assign _T_925 = io_in_a_bits_address == _T_906; // @[Monitor.scala 391:32:chipyard.TestHarness.RocketConfig.fir@51583.6]
  assign _T_927 = _T_925 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@51585.6]
  assign _T_928 = ~_T_927; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@51586.6]
  assign _T_930 = _T_882 & _T_894; // @[Monitor.scala 393:20:chipyard.TestHarness.RocketConfig.fir@51593.4]
  assign _T_931 = io_in_d_ready & io_in_d_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@51601.4]
  assign _T_933 = 27'hfff << io_in_d_bits_size; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@51603.4]
  assign _T_935 = ~_T_933[11:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@51605.4]
  assign _T_941 = _T_939 - 9'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@51611.4]
  assign _T_942 = _T_939 == 9'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@51612.4]
  assign _T_956 = ~_T_942; // @[Monitor.scala 538:22:chipyard.TestHarness.RocketConfig.fir@51629.4]
  assign _T_957 = io_in_d_valid & _T_956; // @[Monitor.scala 538:19:chipyard.TestHarness.RocketConfig.fir@51630.4]
  assign _T_958 = io_in_d_bits_opcode == _T_950; // @[Monitor.scala 539:29:chipyard.TestHarness.RocketConfig.fir@51632.6]
  assign _T_960 = _T_958 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51634.6]
  assign _T_961 = ~_T_960; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51635.6]
  assign _T_962 = io_in_d_bits_param == _T_951; // @[Monitor.scala 540:29:chipyard.TestHarness.RocketConfig.fir@51640.6]
  assign _T_964 = _T_962 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51642.6]
  assign _T_965 = ~_T_964; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51643.6]
  assign _T_966 = io_in_d_bits_size == _T_952; // @[Monitor.scala 541:29:chipyard.TestHarness.RocketConfig.fir@51648.6]
  assign _T_968 = _T_966 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51650.6]
  assign _T_969 = ~_T_968; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51651.6]
  assign _T_970 = io_in_d_bits_source == _T_953; // @[Monitor.scala 542:29:chipyard.TestHarness.RocketConfig.fir@51656.6]
  assign _T_972 = _T_970 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51658.6]
  assign _T_973 = ~_T_972; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51659.6]
  assign _T_974 = io_in_d_bits_sink == _T_954; // @[Monitor.scala 543:29:chipyard.TestHarness.RocketConfig.fir@51664.6]
  assign _T_976 = _T_974 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51666.6]
  assign _T_977 = ~_T_976; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51667.6]
  assign _T_978 = io_in_d_bits_denied == _T_955; // @[Monitor.scala 544:29:chipyard.TestHarness.RocketConfig.fir@51672.6]
  assign _T_980 = _T_978 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51674.6]
  assign _T_981 = ~_T_980; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51675.6]
  assign _T_983 = _T_931 & _T_942; // @[Monitor.scala 546:20:chipyard.TestHarness.RocketConfig.fir@51682.4]
  assign _T_995 = _T_993 - 9'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@51705.4]
  assign a_first = _T_993 == 9'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@51706.4]
  assign _T_1013 = _T_1011 - 9'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@51727.4]
  assign d_first = _T_1011 == 9'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@51728.4]
  assign _GEN_57 = {io_in_d_bits_source, 2'h0}; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@51747.4]
  assign _T_1021 = {{1'd0}, _GEN_57}; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@51747.4]
  assign _T_1022 = inflight_opcodes >> _T_1021; // @[Monitor.scala 629:44:chipyard.TestHarness.RocketConfig.fir@51748.4]
  assign _T_1026 = 16'h10 - 16'h1; // @[Monitor.scala 606:57:chipyard.TestHarness.RocketConfig.fir@51752.4]
  assign _GEN_58 = {{4'd0}, _T_1026}; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@51753.4]
  assign _T_1027 = _T_1022 & _GEN_58; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@51753.4]
  assign _T_1028 = {{1'd0}, _T_1027[19:1]}; // @[Monitor.scala 629:152:chipyard.TestHarness.RocketConfig.fir@51754.4]
  assign _T_1029 = {io_in_d_bits_source, 3'h0}; // @[Monitor.scala 633:65:chipyard.TestHarness.RocketConfig.fir@51758.4]
  assign _T_1030 = inflight_sizes >> _T_1029; // @[Monitor.scala 633:40:chipyard.TestHarness.RocketConfig.fir@51759.4]
  assign _T_1034 = 16'h100 - 16'h1; // @[Monitor.scala 606:57:chipyard.TestHarness.RocketConfig.fir@51763.4]
  assign _GEN_60 = {{24'd0}, _T_1034}; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@51764.4]
  assign _T_1035 = _T_1030 & _GEN_60; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@51764.4]
  assign _T_1036 = {{1'd0}, _T_1035[39:1]}; // @[Monitor.scala 633:144:chipyard.TestHarness.RocketConfig.fir@51765.4]
  assign _T_1040 = _T_882 & a_first; // @[Monitor.scala 643:27:chipyard.TestHarness.RocketConfig.fir@51790.4]
  assign _T_1042 = 8'h1 << io_in_a_bits_source; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@51793.6]
  assign _T_1043 = {io_in_a_bits_opcode, 1'h0}; // @[Monitor.scala 645:53:chipyard.TestHarness.RocketConfig.fir@51795.6]
  assign _T_1044 = _T_1043 | 4'h1; // @[Monitor.scala 645:61:chipyard.TestHarness.RocketConfig.fir@51796.6]
  assign _T_1045 = {io_in_a_bits_size, 1'h0}; // @[Monitor.scala 646:49:chipyard.TestHarness.RocketConfig.fir@51798.6]
  assign _T_1046 = _T_1045 | 5'h1; // @[Monitor.scala 646:57:chipyard.TestHarness.RocketConfig.fir@51799.6]
  assign _GEN_62 = {io_in_a_bits_source, 2'h0}; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@51801.6]
  assign _T_1047 = {{1'd0}, _GEN_62}; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@51801.6]
  assign a_opcodes_set_interm = _T_1040 ? _T_1044 : 4'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@51792.4]
  assign _GEN_63 = {{63'd0}, a_opcodes_set_interm}; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@51802.6]
  assign _T_1048 = _GEN_63 << _T_1047; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@51802.6]
  assign _T_1049 = {io_in_a_bits_source, 3'h0}; // @[Monitor.scala 648:68:chipyard.TestHarness.RocketConfig.fir@51804.6]
  assign a_sizes_set_interm = _T_1040 ? _T_1046 : 5'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@51792.4]
  assign _GEN_64 = {{63'd0}, a_sizes_set_interm}; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@51805.6]
  assign _T_1050 = _GEN_64 << _T_1049; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@51805.6]
  assign _T_1051 = inflight >> io_in_a_bits_source; // @[Monitor.scala 649:26:chipyard.TestHarness.RocketConfig.fir@51807.6]
  assign _T_1053 = ~_T_1051[0]; // @[Monitor.scala 649:17:chipyard.TestHarness.RocketConfig.fir@51809.6]
  assign _T_1055 = _T_1053 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@51811.6]
  assign _T_1056 = ~_T_1055; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@51812.6]
  assign _GEN_15 = _T_1040 ? _T_1042 : 8'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@51792.4]
  assign _GEN_18 = _T_1040 ? _T_1048 : 67'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@51792.4]
  assign _GEN_19 = _T_1040 ? _T_1050 : 68'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@51792.4]
  assign _T_1059 = _T_931 & d_first; // @[Monitor.scala 660:27:chipyard.TestHarness.RocketConfig.fir@51826.4]
  assign _T_1061 = ~_T_738; // @[Monitor.scala 660:75:chipyard.TestHarness.RocketConfig.fir@51828.4]
  assign _T_1062 = _T_1059 & _T_1061; // @[Monitor.scala 660:72:chipyard.TestHarness.RocketConfig.fir@51829.4]
  assign _T_1063 = 8'h1 << io_in_d_bits_source; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@51831.6]
  assign _GEN_66 = {{63'd0}, _T_1026}; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@51838.6]
  assign _T_1069 = _GEN_66 << _T_1021; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@51838.6]
  assign _GEN_67 = {{63'd0}, _T_1034}; // @[Monitor.scala 663:72:chipyard.TestHarness.RocketConfig.fir@51845.6]
  assign _T_1075 = _GEN_67 << _T_1029; // @[Monitor.scala 663:72:chipyard.TestHarness.RocketConfig.fir@51845.6]
  assign _GEN_20 = _T_1062 ? _T_1063 : 8'h0; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@51830.4]
  assign _GEN_21 = _T_1062 ? _T_1069 : 79'h0; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@51830.4]
  assign _GEN_22 = _T_1062 ? _T_1075 : 79'h0; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@51830.4]
  assign _T_1076 = io_in_d_valid & d_first; // @[Monitor.scala 665:26:chipyard.TestHarness.RocketConfig.fir@51848.4]
  assign _T_1079 = _T_1076 & _T_1061; // @[Monitor.scala 665:71:chipyard.TestHarness.RocketConfig.fir@51851.4]
  assign _T_1080 = inflight >> io_in_d_bits_source; // @[Monitor.scala 666:25:chipyard.TestHarness.RocketConfig.fir@51853.6]
  assign _T_1082 = io_in_a_bits_source == io_in_d_bits_source; // @[Monitor.scala 666:93:chipyard.TestHarness.RocketConfig.fir@51855.6]
  assign _T_1083 = io_in_a_valid & _T_1082; // @[Monitor.scala 666:68:chipyard.TestHarness.RocketConfig.fir@51856.6]
  assign _T_1084 = io_in_a_bits_size == io_in_d_bits_size; // @[Monitor.scala 666:142:chipyard.TestHarness.RocketConfig.fir@51857.6]
  assign _T_1085 = _T_1083 & _T_1084; // @[Monitor.scala 666:119:chipyard.TestHarness.RocketConfig.fir@51858.6]
  assign _T_1086 = _T_1085 & a_first; // @[Monitor.scala 666:166:chipyard.TestHarness.RocketConfig.fir@51859.6]
  assign _T_1087 = _T_1080[0] | _T_1086; // @[Monitor.scala 666:49:chipyard.TestHarness.RocketConfig.fir@51860.6]
  assign _T_1089 = _T_1087 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51862.6]
  assign _T_1090 = ~_T_1089; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51863.6]
  assign a_opcode_lookup = _T_1028[3:0]; // @[:chipyard.TestHarness.RocketConfig.fir@51745.4 :chipyard.TestHarness.RocketConfig.fir@51746.4 Monitor.scala 629:21:chipyard.TestHarness.RocketConfig.fir@51755.4]
  assign _GEN_25 = 3'h2 == a_opcode_lookup[2:0] ? 3'h1 : 3'h0; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@51869.6]
  assign _GEN_26 = 3'h3 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_25; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@51869.6]
  assign _GEN_27 = 3'h4 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_26; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@51869.6]
  assign _GEN_28 = 3'h5 == a_opcode_lookup[2:0] ? 3'h2 : _GEN_27; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@51869.6]
  assign _GEN_29 = 3'h6 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_28; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@51869.6]
  assign _GEN_30 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_29; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@51869.6]
  assign _T_1092 = io_in_d_bits_opcode == _GEN_30; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@51869.6]
  assign _GEN_37 = 3'h6 == a_opcode_lookup[2:0] ? 3'h5 : _GEN_28; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@51871.6]
  assign _GEN_38 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_37; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@51871.6]
  assign _T_1094 = io_in_d_bits_opcode == _GEN_38; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@51871.6]
  assign _T_1095 = _T_1092 | _T_1094; // @[Monitor.scala 667:71:chipyard.TestHarness.RocketConfig.fir@51872.6]
  assign _GEN_41 = 3'h2 == io_in_a_bits_opcode ? 3'h1 : 3'h0; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@51873.6]
  assign _GEN_42 = 3'h3 == io_in_a_bits_opcode ? 3'h1 : _GEN_41; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@51873.6]
  assign _GEN_43 = 3'h4 == io_in_a_bits_opcode ? 3'h1 : _GEN_42; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@51873.6]
  assign _GEN_44 = 3'h5 == io_in_a_bits_opcode ? 3'h2 : _GEN_43; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@51873.6]
  assign _GEN_45 = 3'h6 == io_in_a_bits_opcode ? 3'h4 : _GEN_44; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@51873.6]
  assign _GEN_46 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_45; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@51873.6]
  assign _T_1096 = io_in_d_bits_opcode == _GEN_46; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@51873.6]
  assign _GEN_53 = 3'h6 == io_in_a_bits_opcode ? 3'h5 : _GEN_44; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@51874.6]
  assign _GEN_54 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_53; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@51874.6]
  assign _T_1097 = io_in_d_bits_opcode == _GEN_54; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@51874.6]
  assign _T_1098 = _T_1096 | _T_1097; // @[Monitor.scala 668:99:chipyard.TestHarness.RocketConfig.fir@51875.6]
  assign _T_1099 = io_in_a_valid & _T_1098; // @[Monitor.scala 668:34:chipyard.TestHarness.RocketConfig.fir@51876.6]
  assign _T_1100 = _T_1095 | _T_1099; // @[Monitor.scala 668:15:chipyard.TestHarness.RocketConfig.fir@51877.6]
  assign _T_1102 = _T_1100 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51879.6]
  assign _T_1103 = ~_T_1102; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51880.6]
  assign a_size_lookup = _T_1036[7:0]; // @[:chipyard.TestHarness.RocketConfig.fir@51756.4 :chipyard.TestHarness.RocketConfig.fir@51757.4 Monitor.scala 633:19:chipyard.TestHarness.RocketConfig.fir@51766.4]
  assign _GEN_68 = {{4'd0}, io_in_d_bits_size}; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@51885.6]
  assign _T_1104 = _GEN_68 == a_size_lookup; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@51885.6]
  assign _T_1106 = io_in_a_valid & _T_1084; // @[Monitor.scala 670:72:chipyard.TestHarness.RocketConfig.fir@51887.6]
  assign _T_1107 = _T_1104 | _T_1106; // @[Monitor.scala 670:53:chipyard.TestHarness.RocketConfig.fir@51888.6]
  assign _T_1109 = _T_1107 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51890.6]
  assign _T_1110 = ~_T_1109; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51891.6]
  assign _T_1112 = _T_1076 & a_first; // @[Monitor.scala 672:36:chipyard.TestHarness.RocketConfig.fir@51898.4]
  assign _T_1113 = _T_1112 & io_in_a_valid; // @[Monitor.scala 672:47:chipyard.TestHarness.RocketConfig.fir@51899.4]
  assign _T_1115 = _T_1113 & _T_1082; // @[Monitor.scala 672:65:chipyard.TestHarness.RocketConfig.fir@51901.4]
  assign _T_1117 = _T_1115 & _T_1061; // @[Monitor.scala 672:116:chipyard.TestHarness.RocketConfig.fir@51903.4]
  assign _T_1118 = ~io_in_d_ready; // @[Monitor.scala 673:15:chipyard.TestHarness.RocketConfig.fir@51905.6]
  assign _T_1119 = _T_1118 | io_in_a_ready; // @[Monitor.scala 673:32:chipyard.TestHarness.RocketConfig.fir@51906.6]
  assign _T_1121 = _T_1119 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51908.6]
  assign _T_1122 = ~_T_1121; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51909.6]
  assign a_set = _GEN_15[4:0]; // @[:chipyard.TestHarness.RocketConfig.fir@51739.4 :chipyard.TestHarness.RocketConfig.fir@51740.4 Monitor.scala 644:13:chipyard.TestHarness.RocketConfig.fir@51794.6]
  assign d_clr = _GEN_20[4:0]; // @[:chipyard.TestHarness.RocketConfig.fir@51818.4 :chipyard.TestHarness.RocketConfig.fir@51819.4 Monitor.scala 661:13:chipyard.TestHarness.RocketConfig.fir@51832.6]
  assign _T_1123 = a_set != d_clr; // @[Monitor.scala 677:20:chipyard.TestHarness.RocketConfig.fir@51915.4]
  assign _T_1124 = |a_set; // @[Monitor.scala 677:40:chipyard.TestHarness.RocketConfig.fir@51916.4]
  assign _T_1125 = ~_T_1124; // @[Monitor.scala 677:33:chipyard.TestHarness.RocketConfig.fir@51917.4]
  assign _T_1126 = _T_1123 | _T_1125; // @[Monitor.scala 677:30:chipyard.TestHarness.RocketConfig.fir@51918.4]
  assign _T_1128 = _T_1126 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51920.4]
  assign _T_1129 = ~_T_1128; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51921.4]
  assign _T_1130 = inflight | a_set; // @[Monitor.scala 680:27:chipyard.TestHarness.RocketConfig.fir@51926.4]
  assign _T_1131 = ~d_clr; // @[Monitor.scala 680:38:chipyard.TestHarness.RocketConfig.fir@51927.4]
  assign _T_1132 = _T_1130 & _T_1131; // @[Monitor.scala 680:36:chipyard.TestHarness.RocketConfig.fir@51928.4]
  assign a_opcodes_set = _GEN_18[19:0]; // @[:chipyard.TestHarness.RocketConfig.fir@51741.4 :chipyard.TestHarness.RocketConfig.fir@51742.4 Monitor.scala 647:21:chipyard.TestHarness.RocketConfig.fir@51803.6]
  assign _T_1133 = inflight_opcodes | a_opcodes_set; // @[Monitor.scala 681:43:chipyard.TestHarness.RocketConfig.fir@51930.4]
  assign d_opcodes_clr = _GEN_21[19:0]; // @[:chipyard.TestHarness.RocketConfig.fir@51820.4 :chipyard.TestHarness.RocketConfig.fir@51821.4 Monitor.scala 662:21:chipyard.TestHarness.RocketConfig.fir@51839.6]
  assign _T_1134 = ~d_opcodes_clr; // @[Monitor.scala 681:62:chipyard.TestHarness.RocketConfig.fir@51931.4]
  assign _T_1135 = _T_1133 & _T_1134; // @[Monitor.scala 681:60:chipyard.TestHarness.RocketConfig.fir@51932.4]
  assign a_sizes_set = _GEN_19[39:0]; // @[:chipyard.TestHarness.RocketConfig.fir@51743.4 :chipyard.TestHarness.RocketConfig.fir@51744.4 Monitor.scala 648:19:chipyard.TestHarness.RocketConfig.fir@51806.6]
  assign _T_1136 = inflight_sizes | a_sizes_set; // @[Monitor.scala 682:39:chipyard.TestHarness.RocketConfig.fir@51934.4]
  assign d_sizes_clr = _GEN_22[39:0]; // @[:chipyard.TestHarness.RocketConfig.fir@51822.4 :chipyard.TestHarness.RocketConfig.fir@51823.4 Monitor.scala 663:19:chipyard.TestHarness.RocketConfig.fir@51846.6]
  assign _T_1137 = ~d_sizes_clr; // @[Monitor.scala 682:56:chipyard.TestHarness.RocketConfig.fir@51935.4]
  assign _T_1138 = _T_1136 & _T_1137; // @[Monitor.scala 682:54:chipyard.TestHarness.RocketConfig.fir@51936.4]
  assign _T_1140 = |inflight; // @[Monitor.scala 687:26:chipyard.TestHarness.RocketConfig.fir@51941.4]
  assign _T_1141 = ~_T_1140; // @[Monitor.scala 687:16:chipyard.TestHarness.RocketConfig.fir@51942.4]
  assign _T_1142 = plusarg_reader_out == 32'h0; // @[Monitor.scala 687:39:chipyard.TestHarness.RocketConfig.fir@51943.4]
  assign _T_1143 = _T_1141 | _T_1142; // @[Monitor.scala 687:30:chipyard.TestHarness.RocketConfig.fir@51944.4]
  assign _T_1144 = _T_1139 < plusarg_reader_out; // @[Monitor.scala 687:59:chipyard.TestHarness.RocketConfig.fir@51945.4]
  assign _T_1145 = _T_1143 | _T_1144; // @[Monitor.scala 687:47:chipyard.TestHarness.RocketConfig.fir@51946.4]
  assign _T_1147 = _T_1145 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@51948.4]
  assign _T_1148 = ~_T_1147; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@51949.4]
  assign _T_1150 = _T_1139 + 32'h1; // @[Monitor.scala 689:26:chipyard.TestHarness.RocketConfig.fir@51955.4]
  assign _T_1153 = _T_882 | _T_931; // @[Monitor.scala 690:27:chipyard.TestHarness.RocketConfig.fir@51959.4]
  assign _GEN_69 = io_in_a_valid & _T_120; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50421.10]
  assign _GEN_85 = io_in_a_valid & _T_208; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50549.10]
  assign _GEN_103 = io_in_a_valid & _T_300; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50693.10]
  assign _GEN_115 = io_in_a_valid & _T_374; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50795.10]
  assign _GEN_125 = io_in_a_valid & _T_446; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50889.10]
  assign _GEN_135 = io_in_a_valid & _T_520; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50980.10]
  assign _GEN_145 = io_in_a_valid & _T_587; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@51069.10]
  assign _GEN_155 = io_in_a_valid & _T_654; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@51158.10]
  assign _GEN_167 = io_in_d_valid & _T_738; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51230.10]
  assign _GEN_177 = io_in_d_valid & _T_758; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51272.10]
  assign _GEN_189 = io_in_d_valid & _T_786; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51330.10]
  assign _GEN_201 = io_in_d_valid & _T_815; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51389.10]
  assign _GEN_207 = io_in_d_valid & _T_832; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51424.10]
  assign _GEN_213 = io_in_d_valid & _T_850; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51460.10]
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
  _T_1139 = _RAND_18[31:0];
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
      inflight <= _T_1132;
    end
    if (reset) begin
      inflight_opcodes <= 20'h0;
    end else begin
      inflight_opcodes <= _T_1135;
    end
    if (reset) begin
      inflight_sizes <= 40'h0;
    end else begin
      inflight_sizes <= _T_1138;
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
      _T_1139 <= 32'h0;
    end else if (_T_1153) begin
      _T_1139 <= 32'h0;
    end else begin
      _T_1139 <= _T_1150;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_69 & _T_167) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock type unsupported by manager (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50421.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50422.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock from a client which does not support Probe (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50448.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50449.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock carries invalid source ID (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50455.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50456.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock smaller than a beat (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50463.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50464.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock address not aligned to size (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50470.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50471.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock carries invalid grow param (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50478.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50479.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock contains invalid mask (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50487.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50488.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock is corrupt (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50495.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50496.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm type unsupported by manager (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50549.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50550.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm from a client which does not support Probe (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50576.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50577.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm carries invalid source ID (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50583.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50584.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm smaller than a beat (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50591.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50592.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm address not aligned to size (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50598.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50599.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm carries invalid grow param (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50606.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50607.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm requests NtoB (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50614.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50615.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm contains invalid mask (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50623.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50624.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm is corrupt (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50631.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50632.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Get type unsupported by manager (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50693.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50694.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get carries invalid source ID (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50700.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50701.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get address not aligned to size (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50707.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50708.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get carries invalid param (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50715.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50716.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get contains invalid mask (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50723.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50724.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get is corrupt (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50731.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50732.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutFull type unsupported by manager (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50795.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50796.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull carries invalid source ID (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50802.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50803.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull address not aligned to size (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50809.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50810.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull carries invalid param (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50817.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50818.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull contains invalid mask (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50825.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50826.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutPartial type unsupported by manager (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50889.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50890.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial carries invalid source ID (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50896.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50897.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial address not aligned to size (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50903.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50904.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial carries invalid param (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50911.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50912.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial contains invalid mask (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50921.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50922.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Arithmetic type unsupported by manager (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50980.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50981.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic carries invalid source ID (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50987.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50988.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic address not aligned to size (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50994.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@50995.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic carries invalid opcode param (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@51002.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@51003.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic contains invalid mask (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@51010.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@51011.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Logical type unsupported by manager (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@51069.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@51070.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical carries invalid source ID (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@51076.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@51077.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical address not aligned to size (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@51083.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@51084.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical carries invalid opcode param (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@51091.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@51092.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical contains invalid mask (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@51099.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@51100.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Hint type unsupported by manager (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@51158.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@51159.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint carries invalid source ID (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@51165.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@51166.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint address not aligned to size (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@51172.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@51173.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint carries invalid opcode param (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@51180.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@51181.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint contains invalid mask (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@51188.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@51189.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint is corrupt (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@51196.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@51197.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel has invalid opcode (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51207.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51208.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck carries invalid source ID (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51230.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51231.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck smaller than a beat (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51238.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51239.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseeAck carries invalid param (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51246.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51247.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck is corrupt (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51254.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51255.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck is denied (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51262.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51263.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid source ID (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51272.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51273.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid sink ID (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51279.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51280.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant smaller than a beat (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51287.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51288.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid cap param (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51295.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51296.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries toN param (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51303.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51304.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant is corrupt (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51311.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51312.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid source ID (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51330.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51331.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid sink ID (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51337.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51338.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData smaller than a beat (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51345.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51346.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid cap param (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51353.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51354.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries toN param (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51361.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51362.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData is denied but not corrupt (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51370.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51371.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck carries invalid source ID (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51389.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51390.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck carries invalid param (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51397.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51398.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck is corrupt (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51405.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51406.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData carries invalid source ID (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51424.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51425.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData carries invalid param (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51432.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51433.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData is denied but not corrupt (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51441.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51442.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck carries invalid source ID (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51460.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51461.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck carries invalid param (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51468.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51469.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck is corrupt (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51476.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51477.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel opcode changed within multibeat operation (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@51556.8]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@51557.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel param changed within multibeat operation (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@51564.8]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@51565.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel size changed within multibeat operation (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@51572.8]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@51573.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel source changed within multibeat operation (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@51580.8]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@51581.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel address changed with multibeat operation (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@51588.8]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@51589.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel opcode changed within multibeat operation (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51637.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51638.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel param changed within multibeat operation (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51645.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51646.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel size changed within multibeat operation (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51653.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51654.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel source changed within multibeat operation (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51661.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51662.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel sink changed with multibeat operation (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51669.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51670.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel denied changed with multibeat operation (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51677.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51678.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel re-used a source ID (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@51814.8]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@51815.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel acknowledged for nothing inflight (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51865.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51866.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper opcode response (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51882.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51883.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper response size (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51893.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51894.8]
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
          $fwrite(32'h80000002,"Assertion failed: ready check\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51911.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51912.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1129) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' and 'D' concurrent, despite minlatency 2 (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51923.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1129) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@51924.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1148) begin
          $fwrite(32'h80000002,"Assertion failed: TileLink timeout expired (connected at PeripheryBus.scala:56:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@51951.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1148) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@51952.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
