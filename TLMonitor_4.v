module TLMonitor_4( // @[:chipyard.TestHarness.RocketConfig.fir@11296.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@11297.4]
  input         reset, // @[:chipyard.TestHarness.RocketConfig.fir@11298.4]
  input         io_in_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@11299.4]
  input         io_in_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@11299.4]
  input  [2:0]  io_in_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@11299.4]
  input  [2:0]  io_in_a_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@11299.4]
  input  [3:0]  io_in_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@11299.4]
  input  [2:0]  io_in_a_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@11299.4]
  input  [30:0] io_in_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@11299.4]
  input  [7:0]  io_in_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@11299.4]
  input         io_in_a_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@11299.4]
  input         io_in_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@11299.4]
  input         io_in_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@11299.4]
  input  [2:0]  io_in_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@11299.4]
  input  [1:0]  io_in_d_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@11299.4]
  input  [3:0]  io_in_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@11299.4]
  input  [2:0]  io_in_d_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@11299.4]
  input         io_in_d_bits_sink, // @[:chipyard.TestHarness.RocketConfig.fir@11299.4]
  input         io_in_d_bits_denied, // @[:chipyard.TestHarness.RocketConfig.fir@11299.4]
  input         io_in_d_bits_corrupt // @[:chipyard.TestHarness.RocketConfig.fir@11299.4]
);
  wire [31:0] plusarg_reader_out; // @[PlusArg.scala 44:11:chipyard.TestHarness.RocketConfig.fir@13003.4]
  wire  _T_4; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@11310.6]
  wire  _T_5; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@11311.6]
  wire  _T_6; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@11312.6]
  wire  _T_7; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@11313.6]
  wire  _T_9; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@11320.6]
  wire  _T_10; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@11321.6]
  wire  _T_11; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@11322.6]
  wire [26:0] _T_13; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@11324.6]
  wire [11:0] _T_15; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@11326.6]
  wire [30:0] _GEN_56; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@11327.6]
  wire [30:0] _T_16; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@11327.6]
  wire  _T_17; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@11328.6]
  wire [3:0] _T_20; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@11331.6]
  wire [2:0] _T_22; // @[Misc.scala 201:81:chipyard.TestHarness.RocketConfig.fir@11333.6]
  wire  _T_23; // @[Misc.scala 205:21:chipyard.TestHarness.RocketConfig.fir@11334.6]
  wire  _T_26; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@11337.6]
  wire  _T_28; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@11339.6]
  wire  _T_29; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@11340.6]
  wire  _T_31; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@11342.6]
  wire  _T_32; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@11343.6]
  wire  _T_35; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@11346.6]
  wire  _T_36; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@11347.6]
  wire  _T_37; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@11348.6]
  wire  _T_38; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@11349.6]
  wire  _T_39; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@11350.6]
  wire  _T_40; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@11351.6]
  wire  _T_41; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@11352.6]
  wire  _T_42; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@11353.6]
  wire  _T_43; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@11354.6]
  wire  _T_44; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@11355.6]
  wire  _T_45; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@11356.6]
  wire  _T_46; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@11357.6]
  wire  _T_47; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@11358.6]
  wire  _T_50; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@11361.6]
  wire  _T_51; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@11362.6]
  wire  _T_52; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@11363.6]
  wire  _T_53; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@11364.6]
  wire  _T_54; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@11365.6]
  wire  _T_55; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@11366.6]
  wire  _T_56; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@11367.6]
  wire  _T_57; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@11368.6]
  wire  _T_58; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@11369.6]
  wire  _T_59; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@11370.6]
  wire  _T_60; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@11371.6]
  wire  _T_61; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@11372.6]
  wire  _T_62; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@11373.6]
  wire  _T_63; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@11374.6]
  wire  _T_64; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@11375.6]
  wire  _T_65; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@11376.6]
  wire  _T_66; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@11377.6]
  wire  _T_67; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@11378.6]
  wire  _T_68; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@11379.6]
  wire  _T_69; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@11380.6]
  wire  _T_70; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@11381.6]
  wire  _T_71; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@11382.6]
  wire  _T_72; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@11383.6]
  wire  _T_73; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@11384.6]
  wire  _T_74; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@11385.6]
  wire [7:0] _T_81; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@11392.6]
  wire [31:0] _T_85; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@11396.6]
  wire  _T_120; // @[Monitor.scala 79:25:chipyard.TestHarness.RocketConfig.fir@11435.6]
  wire [30:0] _T_122; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@11438.8]
  wire [31:0] _T_123; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@11439.8]
  wire [31:0] _T_125; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@11441.8]
  wire  _T_126; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@11442.8]
  wire [30:0] _T_127; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@11443.8]
  wire [31:0] _T_128; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@11444.8]
  wire [31:0] _T_130; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@11446.8]
  wire  _T_131; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@11447.8]
  wire [30:0] _T_132; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@11448.8]
  wire [31:0] _T_133; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@11449.8]
  wire [31:0] _T_135; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@11451.8]
  wire  _T_136; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@11452.8]
  wire [30:0] _T_137; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@11453.8]
  wire [31:0] _T_138; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@11454.8]
  wire [31:0] _T_140; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@11456.8]
  wire  _T_141; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@11457.8]
  wire [30:0] _T_142; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@11458.8]
  wire [31:0] _T_143; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@11459.8]
  wire [31:0] _T_145; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@11461.8]
  wire  _T_146; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@11462.8]
  wire [31:0] _T_150; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@11466.8]
  wire  _T_151; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@11467.8]
  wire [30:0] _T_152; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@11468.8]
  wire [31:0] _T_153; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@11469.8]
  wire [31:0] _T_155; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@11471.8]
  wire  _T_156; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@11472.8]
  wire  _T_157; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@11473.8]
  wire  _T_158; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@11474.8]
  wire  _T_159; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@11475.8]
  wire  _T_160; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@11476.8]
  wire  _T_161; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@11477.8]
  wire  _T_167; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11483.8]
  wire  _T_173; // @[Parameters.scala 92:48:chipyard.TestHarness.RocketConfig.fir@11498.8]
  wire  _T_175; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@11500.8]
  wire  _T_183; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11509.8]
  wire  _T_184; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11510.8]
  wire  _T_186; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11516.8]
  wire  _T_187; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11517.8]
  wire  _T_190; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11524.8]
  wire  _T_191; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11525.8]
  wire  _T_193; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11531.8]
  wire  _T_194; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11532.8]
  wire  _T_195; // @[Bundles.scala 110:27:chipyard.TestHarness.RocketConfig.fir@11537.8]
  wire  _T_197; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11539.8]
  wire  _T_198; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11540.8]
  wire [7:0] _T_199; // @[Monitor.scala 86:18:chipyard.TestHarness.RocketConfig.fir@11545.8]
  wire  _T_200; // @[Monitor.scala 86:31:chipyard.TestHarness.RocketConfig.fir@11546.8]
  wire  _T_202; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11548.8]
  wire  _T_203; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11549.8]
  wire  _T_204; // @[Monitor.scala 87:18:chipyard.TestHarness.RocketConfig.fir@11554.8]
  wire  _T_206; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11556.8]
  wire  _T_207; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11557.8]
  wire  _T_208; // @[Monitor.scala 90:25:chipyard.TestHarness.RocketConfig.fir@11563.6]
  wire  _T_287; // @[Monitor.scala 97:31:chipyard.TestHarness.RocketConfig.fir@11673.8]
  wire  _T_289; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11675.8]
  wire  _T_290; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11676.8]
  wire  _T_300; // @[Monitor.scala 102:25:chipyard.TestHarness.RocketConfig.fir@11699.6]
  wire  _T_302; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@11702.8]
  wire  _T_310; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@11710.8]
  wire  _T_312; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@11712.8]
  wire  _T_345; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@11745.8]
  wire  _T_346; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@11746.8]
  wire  _T_347; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@11747.8]
  wire  _T_348; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@11748.8]
  wire  _T_349; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@11749.8]
  wire  _T_350; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@11750.8]
  wire  _T_352; // @[Parameters.scala 553:30:chipyard.TestHarness.RocketConfig.fir@11752.8]
  wire  _T_354; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11754.8]
  wire  _T_355; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11755.8]
  wire  _T_362; // @[Monitor.scala 106:31:chipyard.TestHarness.RocketConfig.fir@11774.8]
  wire  _T_364; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11776.8]
  wire  _T_365; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11777.8]
  wire  _T_366; // @[Monitor.scala 107:30:chipyard.TestHarness.RocketConfig.fir@11782.8]
  wire  _T_368; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11784.8]
  wire  _T_369; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11785.8]
  wire  _T_374; // @[Monitor.scala 111:25:chipyard.TestHarness.RocketConfig.fir@11799.6]
  wire  _T_418; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@11844.8]
  wire  _T_427; // @[Parameters.scala 553:30:chipyard.TestHarness.RocketConfig.fir@11853.8]
  wire  _T_430; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11856.8]
  wire  _T_431; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11857.8]
  wire  _T_446; // @[Monitor.scala 119:25:chipyard.TestHarness.RocketConfig.fir@11893.6]
  wire [7:0] _T_514; // @[Monitor.scala 124:33:chipyard.TestHarness.RocketConfig.fir@11978.8]
  wire [7:0] _T_515; // @[Monitor.scala 124:31:chipyard.TestHarness.RocketConfig.fir@11979.8]
  wire  _T_516; // @[Monitor.scala 124:40:chipyard.TestHarness.RocketConfig.fir@11980.8]
  wire  _T_518; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11982.8]
  wire  _T_519; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11983.8]
  wire  _T_520; // @[Monitor.scala 127:25:chipyard.TestHarness.RocketConfig.fir@11989.6]
  wire  _T_522; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@11992.8]
  wire  _T_560; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@12030.8]
  wire  _T_571; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@12041.8]
  wire  _T_572; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@12042.8]
  wire  _T_579; // @[Bundles.scala 140:33:chipyard.TestHarness.RocketConfig.fir@12061.8]
  wire  _T_581; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@12063.8]
  wire  _T_582; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@12064.8]
  wire  _T_587; // @[Monitor.scala 135:25:chipyard.TestHarness.RocketConfig.fir@12078.6]
  wire  _T_646; // @[Bundles.scala 147:30:chipyard.TestHarness.RocketConfig.fir@12150.8]
  wire  _T_648; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@12152.8]
  wire  _T_649; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@12153.8]
  wire  _T_654; // @[Monitor.scala 143:25:chipyard.TestHarness.RocketConfig.fir@12167.6]
  wire  _T_705; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@12219.8]
  wire  _T_706; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@12220.8]
  wire  _T_713; // @[Bundles.scala 160:28:chipyard.TestHarness.RocketConfig.fir@12239.8]
  wire  _T_715; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@12241.8]
  wire  _T_716; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@12242.8]
  wire  _T_725; // @[Bundles.scala 44:24:chipyard.TestHarness.RocketConfig.fir@12266.6]
  wire  _T_727; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12268.6]
  wire  _T_728; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12269.6]
  wire  _T_729; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@12274.6]
  wire  _T_730; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@12275.6]
  wire  _T_731; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@12276.6]
  wire  _T_732; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@12277.6]
  wire  _T_734; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@12284.6]
  wire  _T_735; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@12285.6]
  wire  _T_736; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@12286.6]
  wire  _T_738; // @[Monitor.scala 307:25:chipyard.TestHarness.RocketConfig.fir@12288.6]
  wire  _T_740; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12291.8]
  wire  _T_741; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12292.8]
  wire  _T_742; // @[Monitor.scala 309:27:chipyard.TestHarness.RocketConfig.fir@12297.8]
  wire  _T_744; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12299.8]
  wire  _T_745; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12300.8]
  wire  _T_746; // @[Monitor.scala 310:28:chipyard.TestHarness.RocketConfig.fir@12305.8]
  wire  _T_748; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12307.8]
  wire  _T_749; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12308.8]
  wire  _T_750; // @[Monitor.scala 311:15:chipyard.TestHarness.RocketConfig.fir@12313.8]
  wire  _T_752; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12315.8]
  wire  _T_753; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12316.8]
  wire  _T_754; // @[Monitor.scala 312:15:chipyard.TestHarness.RocketConfig.fir@12321.8]
  wire  _T_756; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12323.8]
  wire  _T_757; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12324.8]
  wire  _T_758; // @[Monitor.scala 315:25:chipyard.TestHarness.RocketConfig.fir@12330.6]
  wire  _T_769; // @[Bundles.scala 104:26:chipyard.TestHarness.RocketConfig.fir@12354.8]
  wire  _T_771; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12356.8]
  wire  _T_772; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12357.8]
  wire  _T_773; // @[Monitor.scala 320:28:chipyard.TestHarness.RocketConfig.fir@12362.8]
  wire  _T_775; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12364.8]
  wire  _T_776; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12365.8]
  wire  _T_786; // @[Monitor.scala 325:25:chipyard.TestHarness.RocketConfig.fir@12388.6]
  wire  _T_806; // @[Monitor.scala 331:30:chipyard.TestHarness.RocketConfig.fir@12429.8]
  wire  _T_808; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12431.8]
  wire  _T_809; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12432.8]
  wire  _T_815; // @[Monitor.scala 335:25:chipyard.TestHarness.RocketConfig.fir@12447.6]
  wire  _T_832; // @[Monitor.scala 343:25:chipyard.TestHarness.RocketConfig.fir@12482.6]
  wire  _T_850; // @[Monitor.scala 351:25:chipyard.TestHarness.RocketConfig.fir@12518.6]
  wire  _T_882; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@12584.4]
  wire  _T_889; // @[Edges.scala 93:28:chipyard.TestHarness.RocketConfig.fir@12591.4]
  reg [8:0] _T_891; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@12593.4]
  reg [31:0] _RAND_0;
  wire [8:0] _T_893; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@12595.4]
  wire  _T_894; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@12596.4]
  reg [2:0] _T_902; // @[Monitor.scala 381:22:chipyard.TestHarness.RocketConfig.fir@12607.4]
  reg [31:0] _RAND_1;
  reg [2:0] _T_903; // @[Monitor.scala 382:22:chipyard.TestHarness.RocketConfig.fir@12608.4]
  reg [31:0] _RAND_2;
  reg [3:0] _T_904; // @[Monitor.scala 383:22:chipyard.TestHarness.RocketConfig.fir@12609.4]
  reg [31:0] _RAND_3;
  reg [2:0] _T_905; // @[Monitor.scala 384:22:chipyard.TestHarness.RocketConfig.fir@12610.4]
  reg [31:0] _RAND_4;
  reg [30:0] _T_906; // @[Monitor.scala 385:22:chipyard.TestHarness.RocketConfig.fir@12611.4]
  reg [31:0] _RAND_5;
  wire  _T_907; // @[Monitor.scala 386:22:chipyard.TestHarness.RocketConfig.fir@12612.4]
  wire  _T_908; // @[Monitor.scala 386:19:chipyard.TestHarness.RocketConfig.fir@12613.4]
  wire  _T_909; // @[Monitor.scala 387:32:chipyard.TestHarness.RocketConfig.fir@12615.6]
  wire  _T_911; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@12617.6]
  wire  _T_912; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@12618.6]
  wire  _T_913; // @[Monitor.scala 388:32:chipyard.TestHarness.RocketConfig.fir@12623.6]
  wire  _T_915; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@12625.6]
  wire  _T_916; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@12626.6]
  wire  _T_917; // @[Monitor.scala 389:32:chipyard.TestHarness.RocketConfig.fir@12631.6]
  wire  _T_919; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@12633.6]
  wire  _T_920; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@12634.6]
  wire  _T_921; // @[Monitor.scala 390:32:chipyard.TestHarness.RocketConfig.fir@12639.6]
  wire  _T_923; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@12641.6]
  wire  _T_924; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@12642.6]
  wire  _T_925; // @[Monitor.scala 391:32:chipyard.TestHarness.RocketConfig.fir@12647.6]
  wire  _T_927; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@12649.6]
  wire  _T_928; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@12650.6]
  wire  _T_930; // @[Monitor.scala 393:20:chipyard.TestHarness.RocketConfig.fir@12657.4]
  wire  _T_931; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@12665.4]
  wire [26:0] _T_933; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@12667.4]
  wire [11:0] _T_935; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@12669.4]
  reg [8:0] _T_939; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@12673.4]
  reg [31:0] _RAND_6;
  wire [8:0] _T_941; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@12675.4]
  wire  _T_942; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@12676.4]
  reg [2:0] _T_950; // @[Monitor.scala 532:22:chipyard.TestHarness.RocketConfig.fir@12687.4]
  reg [31:0] _RAND_7;
  reg [1:0] _T_951; // @[Monitor.scala 533:22:chipyard.TestHarness.RocketConfig.fir@12688.4]
  reg [31:0] _RAND_8;
  reg [3:0] _T_952; // @[Monitor.scala 534:22:chipyard.TestHarness.RocketConfig.fir@12689.4]
  reg [31:0] _RAND_9;
  reg [2:0] _T_953; // @[Monitor.scala 535:22:chipyard.TestHarness.RocketConfig.fir@12690.4]
  reg [31:0] _RAND_10;
  reg  _T_954; // @[Monitor.scala 536:22:chipyard.TestHarness.RocketConfig.fir@12691.4]
  reg [31:0] _RAND_11;
  reg  _T_955; // @[Monitor.scala 537:22:chipyard.TestHarness.RocketConfig.fir@12692.4]
  reg [31:0] _RAND_12;
  wire  _T_956; // @[Monitor.scala 538:22:chipyard.TestHarness.RocketConfig.fir@12693.4]
  wire  _T_957; // @[Monitor.scala 538:19:chipyard.TestHarness.RocketConfig.fir@12694.4]
  wire  _T_958; // @[Monitor.scala 539:29:chipyard.TestHarness.RocketConfig.fir@12696.6]
  wire  _T_960; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12698.6]
  wire  _T_961; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12699.6]
  wire  _T_962; // @[Monitor.scala 540:29:chipyard.TestHarness.RocketConfig.fir@12704.6]
  wire  _T_964; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12706.6]
  wire  _T_965; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12707.6]
  wire  _T_966; // @[Monitor.scala 541:29:chipyard.TestHarness.RocketConfig.fir@12712.6]
  wire  _T_968; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12714.6]
  wire  _T_969; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12715.6]
  wire  _T_970; // @[Monitor.scala 542:29:chipyard.TestHarness.RocketConfig.fir@12720.6]
  wire  _T_972; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12722.6]
  wire  _T_973; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12723.6]
  wire  _T_974; // @[Monitor.scala 543:29:chipyard.TestHarness.RocketConfig.fir@12728.6]
  wire  _T_976; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12730.6]
  wire  _T_977; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12731.6]
  wire  _T_978; // @[Monitor.scala 544:29:chipyard.TestHarness.RocketConfig.fir@12736.6]
  wire  _T_980; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12738.6]
  wire  _T_981; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12739.6]
  wire  _T_983; // @[Monitor.scala 546:20:chipyard.TestHarness.RocketConfig.fir@12746.4]
  reg [4:0] inflight; // @[Monitor.scala 608:27:chipyard.TestHarness.RocketConfig.fir@12755.4]
  reg [31:0] _RAND_13;
  reg [19:0] inflight_opcodes; // @[Monitor.scala 610:35:chipyard.TestHarness.RocketConfig.fir@12756.4]
  reg [31:0] _RAND_14;
  reg [39:0] inflight_sizes; // @[Monitor.scala 612:33:chipyard.TestHarness.RocketConfig.fir@12757.4]
  reg [63:0] _RAND_15;
  reg [8:0] _T_993; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@12767.4]
  reg [31:0] _RAND_16;
  wire [8:0] _T_995; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@12769.4]
  wire  a_first; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@12770.4]
  reg [8:0] _T_1011; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@12789.4]
  reg [31:0] _RAND_17;
  wire [8:0] _T_1013; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@12791.4]
  wire  d_first; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@12792.4]
  wire [4:0] _GEN_57; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@12811.4]
  wire [5:0] _T_1021; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@12811.4]
  wire [19:0] _T_1022; // @[Monitor.scala 629:44:chipyard.TestHarness.RocketConfig.fir@12812.4]
  wire [15:0] _T_1026; // @[Monitor.scala 606:57:chipyard.TestHarness.RocketConfig.fir@12816.4]
  wire [19:0] _GEN_58; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@12817.4]
  wire [19:0] _T_1027; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@12817.4]
  wire [19:0] _T_1028; // @[Monitor.scala 629:152:chipyard.TestHarness.RocketConfig.fir@12818.4]
  wire [5:0] _T_1029; // @[Monitor.scala 633:65:chipyard.TestHarness.RocketConfig.fir@12822.4]
  wire [39:0] _T_1030; // @[Monitor.scala 633:40:chipyard.TestHarness.RocketConfig.fir@12823.4]
  wire [15:0] _T_1034; // @[Monitor.scala 606:57:chipyard.TestHarness.RocketConfig.fir@12827.4]
  wire [39:0] _GEN_60; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@12828.4]
  wire [39:0] _T_1035; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@12828.4]
  wire [39:0] _T_1036; // @[Monitor.scala 633:144:chipyard.TestHarness.RocketConfig.fir@12829.4]
  wire  _T_1040; // @[Monitor.scala 643:27:chipyard.TestHarness.RocketConfig.fir@12854.4]
  wire [7:0] _T_1042; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@12857.6]
  wire [3:0] _T_1043; // @[Monitor.scala 645:53:chipyard.TestHarness.RocketConfig.fir@12859.6]
  wire [3:0] _T_1044; // @[Monitor.scala 645:61:chipyard.TestHarness.RocketConfig.fir@12860.6]
  wire [4:0] _T_1045; // @[Monitor.scala 646:49:chipyard.TestHarness.RocketConfig.fir@12862.6]
  wire [4:0] _T_1046; // @[Monitor.scala 646:57:chipyard.TestHarness.RocketConfig.fir@12863.6]
  wire [4:0] _GEN_62; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@12865.6]
  wire [5:0] _T_1047; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@12865.6]
  wire [3:0] a_opcodes_set_interm; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@12856.4]
  wire [66:0] _GEN_63; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@12866.6]
  wire [66:0] _T_1048; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@12866.6]
  wire [5:0] _T_1049; // @[Monitor.scala 648:68:chipyard.TestHarness.RocketConfig.fir@12868.6]
  wire [4:0] a_sizes_set_interm; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@12856.4]
  wire [67:0] _GEN_64; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@12869.6]
  wire [67:0] _T_1050; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@12869.6]
  wire [4:0] _T_1051; // @[Monitor.scala 649:26:chipyard.TestHarness.RocketConfig.fir@12871.6]
  wire  _T_1053; // @[Monitor.scala 649:17:chipyard.TestHarness.RocketConfig.fir@12873.6]
  wire  _T_1055; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@12875.6]
  wire  _T_1056; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@12876.6]
  wire [7:0] _GEN_15; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@12856.4]
  wire [66:0] _GEN_18; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@12856.4]
  wire [67:0] _GEN_19; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@12856.4]
  wire  _T_1059; // @[Monitor.scala 660:27:chipyard.TestHarness.RocketConfig.fir@12890.4]
  wire  _T_1061; // @[Monitor.scala 660:75:chipyard.TestHarness.RocketConfig.fir@12892.4]
  wire  _T_1062; // @[Monitor.scala 660:72:chipyard.TestHarness.RocketConfig.fir@12893.4]
  wire [7:0] _T_1063; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@12895.6]
  wire [78:0] _GEN_66; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@12902.6]
  wire [78:0] _T_1069; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@12902.6]
  wire [78:0] _GEN_67; // @[Monitor.scala 663:72:chipyard.TestHarness.RocketConfig.fir@12909.6]
  wire [78:0] _T_1075; // @[Monitor.scala 663:72:chipyard.TestHarness.RocketConfig.fir@12909.6]
  wire [7:0] _GEN_20; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@12894.4]
  wire [78:0] _GEN_21; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@12894.4]
  wire [78:0] _GEN_22; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@12894.4]
  wire  _T_1076; // @[Monitor.scala 665:26:chipyard.TestHarness.RocketConfig.fir@12912.4]
  wire  _T_1079; // @[Monitor.scala 665:71:chipyard.TestHarness.RocketConfig.fir@12915.4]
  wire [4:0] _T_1080; // @[Monitor.scala 666:25:chipyard.TestHarness.RocketConfig.fir@12917.6]
  wire  _T_1082; // @[Monitor.scala 666:93:chipyard.TestHarness.RocketConfig.fir@12919.6]
  wire  _T_1083; // @[Monitor.scala 666:68:chipyard.TestHarness.RocketConfig.fir@12920.6]
  wire  _T_1084; // @[Monitor.scala 666:142:chipyard.TestHarness.RocketConfig.fir@12921.6]
  wire  _T_1085; // @[Monitor.scala 666:119:chipyard.TestHarness.RocketConfig.fir@12922.6]
  wire  _T_1086; // @[Monitor.scala 666:166:chipyard.TestHarness.RocketConfig.fir@12923.6]
  wire  _T_1087; // @[Monitor.scala 666:49:chipyard.TestHarness.RocketConfig.fir@12924.6]
  wire  _T_1089; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12926.6]
  wire  _T_1090; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12927.6]
  wire [3:0] a_opcode_lookup; // @[:chipyard.TestHarness.RocketConfig.fir@12809.4 :chipyard.TestHarness.RocketConfig.fir@12810.4 Monitor.scala 629:21:chipyard.TestHarness.RocketConfig.fir@12819.4]
  wire [2:0] _GEN_25; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@12933.6]
  wire [2:0] _GEN_26; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@12933.6]
  wire [2:0] _GEN_27; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@12933.6]
  wire [2:0] _GEN_28; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@12933.6]
  wire [2:0] _GEN_29; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@12933.6]
  wire [2:0] _GEN_30; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@12933.6]
  wire  _T_1092; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@12933.6]
  wire [2:0] _GEN_37; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@12935.6]
  wire [2:0] _GEN_38; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@12935.6]
  wire  _T_1094; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@12935.6]
  wire  _T_1095; // @[Monitor.scala 667:71:chipyard.TestHarness.RocketConfig.fir@12936.6]
  wire [2:0] _GEN_41; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@12937.6]
  wire [2:0] _GEN_42; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@12937.6]
  wire [2:0] _GEN_43; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@12937.6]
  wire [2:0] _GEN_44; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@12937.6]
  wire [2:0] _GEN_45; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@12937.6]
  wire [2:0] _GEN_46; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@12937.6]
  wire  _T_1096; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@12937.6]
  wire [2:0] _GEN_53; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@12938.6]
  wire [2:0] _GEN_54; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@12938.6]
  wire  _T_1097; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@12938.6]
  wire  _T_1098; // @[Monitor.scala 668:99:chipyard.TestHarness.RocketConfig.fir@12939.6]
  wire  _T_1099; // @[Monitor.scala 668:34:chipyard.TestHarness.RocketConfig.fir@12940.6]
  wire  _T_1100; // @[Monitor.scala 668:15:chipyard.TestHarness.RocketConfig.fir@12941.6]
  wire  _T_1102; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12943.6]
  wire  _T_1103; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12944.6]
  wire [7:0] a_size_lookup; // @[:chipyard.TestHarness.RocketConfig.fir@12820.4 :chipyard.TestHarness.RocketConfig.fir@12821.4 Monitor.scala 633:19:chipyard.TestHarness.RocketConfig.fir@12830.4]
  wire [7:0] _GEN_68; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@12949.6]
  wire  _T_1104; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@12949.6]
  wire  _T_1106; // @[Monitor.scala 670:72:chipyard.TestHarness.RocketConfig.fir@12951.6]
  wire  _T_1107; // @[Monitor.scala 670:53:chipyard.TestHarness.RocketConfig.fir@12952.6]
  wire  _T_1109; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12954.6]
  wire  _T_1110; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12955.6]
  wire  _T_1112; // @[Monitor.scala 672:36:chipyard.TestHarness.RocketConfig.fir@12962.4]
  wire  _T_1113; // @[Monitor.scala 672:47:chipyard.TestHarness.RocketConfig.fir@12963.4]
  wire  _T_1115; // @[Monitor.scala 672:65:chipyard.TestHarness.RocketConfig.fir@12965.4]
  wire  _T_1117; // @[Monitor.scala 672:116:chipyard.TestHarness.RocketConfig.fir@12967.4]
  wire  _T_1118; // @[Monitor.scala 673:15:chipyard.TestHarness.RocketConfig.fir@12969.6]
  wire  _T_1119; // @[Monitor.scala 673:32:chipyard.TestHarness.RocketConfig.fir@12970.6]
  wire  _T_1121; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12972.6]
  wire  _T_1122; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12973.6]
  wire [4:0] a_set; // @[:chipyard.TestHarness.RocketConfig.fir@12803.4 :chipyard.TestHarness.RocketConfig.fir@12804.4 Monitor.scala 644:13:chipyard.TestHarness.RocketConfig.fir@12858.6]
  wire [4:0] d_clr; // @[:chipyard.TestHarness.RocketConfig.fir@12882.4 :chipyard.TestHarness.RocketConfig.fir@12883.4 Monitor.scala 661:13:chipyard.TestHarness.RocketConfig.fir@12896.6]
  wire  _T_1123; // @[Monitor.scala 677:20:chipyard.TestHarness.RocketConfig.fir@12979.4]
  wire  _T_1124; // @[Monitor.scala 677:40:chipyard.TestHarness.RocketConfig.fir@12980.4]
  wire  _T_1125; // @[Monitor.scala 677:33:chipyard.TestHarness.RocketConfig.fir@12981.4]
  wire  _T_1126; // @[Monitor.scala 677:30:chipyard.TestHarness.RocketConfig.fir@12982.4]
  wire  _T_1128; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12984.4]
  wire  _T_1129; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12985.4]
  wire [4:0] _T_1130; // @[Monitor.scala 680:27:chipyard.TestHarness.RocketConfig.fir@12990.4]
  wire [4:0] _T_1131; // @[Monitor.scala 680:38:chipyard.TestHarness.RocketConfig.fir@12991.4]
  wire [4:0] _T_1132; // @[Monitor.scala 680:36:chipyard.TestHarness.RocketConfig.fir@12992.4]
  wire [19:0] a_opcodes_set; // @[:chipyard.TestHarness.RocketConfig.fir@12805.4 :chipyard.TestHarness.RocketConfig.fir@12806.4 Monitor.scala 647:21:chipyard.TestHarness.RocketConfig.fir@12867.6]
  wire [19:0] _T_1133; // @[Monitor.scala 681:43:chipyard.TestHarness.RocketConfig.fir@12994.4]
  wire [19:0] d_opcodes_clr; // @[:chipyard.TestHarness.RocketConfig.fir@12884.4 :chipyard.TestHarness.RocketConfig.fir@12885.4 Monitor.scala 662:21:chipyard.TestHarness.RocketConfig.fir@12903.6]
  wire [19:0] _T_1134; // @[Monitor.scala 681:62:chipyard.TestHarness.RocketConfig.fir@12995.4]
  wire [19:0] _T_1135; // @[Monitor.scala 681:60:chipyard.TestHarness.RocketConfig.fir@12996.4]
  wire [39:0] a_sizes_set; // @[:chipyard.TestHarness.RocketConfig.fir@12807.4 :chipyard.TestHarness.RocketConfig.fir@12808.4 Monitor.scala 648:19:chipyard.TestHarness.RocketConfig.fir@12870.6]
  wire [39:0] _T_1136; // @[Monitor.scala 682:39:chipyard.TestHarness.RocketConfig.fir@12998.4]
  wire [39:0] d_sizes_clr; // @[:chipyard.TestHarness.RocketConfig.fir@12886.4 :chipyard.TestHarness.RocketConfig.fir@12887.4 Monitor.scala 663:19:chipyard.TestHarness.RocketConfig.fir@12910.6]
  wire [39:0] _T_1137; // @[Monitor.scala 682:56:chipyard.TestHarness.RocketConfig.fir@12999.4]
  wire [39:0] _T_1138; // @[Monitor.scala 682:54:chipyard.TestHarness.RocketConfig.fir@13000.4]
  reg [31:0] _T_1139; // @[Monitor.scala 684:27:chipyard.TestHarness.RocketConfig.fir@13002.4]
  reg [31:0] _RAND_18;
  wire  _T_1140; // @[Monitor.scala 687:26:chipyard.TestHarness.RocketConfig.fir@13005.4]
  wire  _T_1141; // @[Monitor.scala 687:16:chipyard.TestHarness.RocketConfig.fir@13006.4]
  wire  _T_1142; // @[Monitor.scala 687:39:chipyard.TestHarness.RocketConfig.fir@13007.4]
  wire  _T_1143; // @[Monitor.scala 687:30:chipyard.TestHarness.RocketConfig.fir@13008.4]
  wire  _T_1144; // @[Monitor.scala 687:59:chipyard.TestHarness.RocketConfig.fir@13009.4]
  wire  _T_1145; // @[Monitor.scala 687:47:chipyard.TestHarness.RocketConfig.fir@13010.4]
  wire  _T_1147; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@13012.4]
  wire  _T_1148; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@13013.4]
  wire [31:0] _T_1150; // @[Monitor.scala 689:26:chipyard.TestHarness.RocketConfig.fir@13019.4]
  wire  _T_1153; // @[Monitor.scala 690:27:chipyard.TestHarness.RocketConfig.fir@13023.4]
  wire  _GEN_69; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11485.10]
  wire  _GEN_85; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11613.10]
  wire  _GEN_103; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11757.10]
  wire  _GEN_115; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11859.10]
  wire  _GEN_125; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11953.10]
  wire  _GEN_135; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@12044.10]
  wire  _GEN_145; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@12133.10]
  wire  _GEN_155; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@12222.10]
  wire  _GEN_167; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12294.10]
  wire  _GEN_177; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12336.10]
  wire  _GEN_189; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12394.10]
  wire  _GEN_201; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12453.10]
  wire  _GEN_207; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12488.10]
  wire  _GEN_213; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12524.10]
  plusarg_reader #(.FORMAT("tilelink_timeout=%d"), .DEFAULT(0), .WIDTH(32)) plusarg_reader ( // @[PlusArg.scala 44:11:chipyard.TestHarness.RocketConfig.fir@13003.4]
    .out(plusarg_reader_out)
  );
  assign _T_4 = io_in_a_bits_source == 3'h4; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@11310.6]
  assign _T_5 = io_in_a_bits_source == 3'h0; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@11311.6]
  assign _T_6 = io_in_a_bits_source == 3'h1; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@11312.6]
  assign _T_7 = io_in_a_bits_source == 3'h2; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@11313.6]
  assign _T_9 = _T_4 | _T_5; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@11320.6]
  assign _T_10 = _T_9 | _T_6; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@11321.6]
  assign _T_11 = _T_10 | _T_7; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@11322.6]
  assign _T_13 = 27'hfff << io_in_a_bits_size; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@11324.6]
  assign _T_15 = ~_T_13[11:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@11326.6]
  assign _GEN_56 = {{19'd0}, _T_15}; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@11327.6]
  assign _T_16 = io_in_a_bits_address & _GEN_56; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@11327.6]
  assign _T_17 = _T_16 == 31'h0; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@11328.6]
  assign _T_20 = 4'h1 << io_in_a_bits_size[1:0]; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@11331.6]
  assign _T_22 = _T_20[2:0] | 3'h1; // @[Misc.scala 201:81:chipyard.TestHarness.RocketConfig.fir@11333.6]
  assign _T_23 = io_in_a_bits_size >= 4'h3; // @[Misc.scala 205:21:chipyard.TestHarness.RocketConfig.fir@11334.6]
  assign _T_26 = ~io_in_a_bits_address[2]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@11337.6]
  assign _T_28 = _T_22[2] & _T_26; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@11339.6]
  assign _T_29 = _T_23 | _T_28; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@11340.6]
  assign _T_31 = _T_22[2] & io_in_a_bits_address[2]; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@11342.6]
  assign _T_32 = _T_23 | _T_31; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@11343.6]
  assign _T_35 = ~io_in_a_bits_address[1]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@11346.6]
  assign _T_36 = _T_26 & _T_35; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@11347.6]
  assign _T_37 = _T_22[1] & _T_36; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@11348.6]
  assign _T_38 = _T_29 | _T_37; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@11349.6]
  assign _T_39 = _T_26 & io_in_a_bits_address[1]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@11350.6]
  assign _T_40 = _T_22[1] & _T_39; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@11351.6]
  assign _T_41 = _T_29 | _T_40; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@11352.6]
  assign _T_42 = io_in_a_bits_address[2] & _T_35; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@11353.6]
  assign _T_43 = _T_22[1] & _T_42; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@11354.6]
  assign _T_44 = _T_32 | _T_43; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@11355.6]
  assign _T_45 = io_in_a_bits_address[2] & io_in_a_bits_address[1]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@11356.6]
  assign _T_46 = _T_22[1] & _T_45; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@11357.6]
  assign _T_47 = _T_32 | _T_46; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@11358.6]
  assign _T_50 = ~io_in_a_bits_address[0]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@11361.6]
  assign _T_51 = _T_36 & _T_50; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@11362.6]
  assign _T_52 = _T_22[0] & _T_51; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@11363.6]
  assign _T_53 = _T_38 | _T_52; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@11364.6]
  assign _T_54 = _T_36 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@11365.6]
  assign _T_55 = _T_22[0] & _T_54; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@11366.6]
  assign _T_56 = _T_38 | _T_55; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@11367.6]
  assign _T_57 = _T_39 & _T_50; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@11368.6]
  assign _T_58 = _T_22[0] & _T_57; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@11369.6]
  assign _T_59 = _T_41 | _T_58; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@11370.6]
  assign _T_60 = _T_39 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@11371.6]
  assign _T_61 = _T_22[0] & _T_60; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@11372.6]
  assign _T_62 = _T_41 | _T_61; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@11373.6]
  assign _T_63 = _T_42 & _T_50; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@11374.6]
  assign _T_64 = _T_22[0] & _T_63; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@11375.6]
  assign _T_65 = _T_44 | _T_64; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@11376.6]
  assign _T_66 = _T_42 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@11377.6]
  assign _T_67 = _T_22[0] & _T_66; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@11378.6]
  assign _T_68 = _T_44 | _T_67; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@11379.6]
  assign _T_69 = _T_45 & _T_50; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@11380.6]
  assign _T_70 = _T_22[0] & _T_69; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@11381.6]
  assign _T_71 = _T_47 | _T_70; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@11382.6]
  assign _T_72 = _T_45 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@11383.6]
  assign _T_73 = _T_22[0] & _T_72; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@11384.6]
  assign _T_74 = _T_47 | _T_73; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@11385.6]
  assign _T_81 = {_T_74,_T_71,_T_68,_T_65,_T_62,_T_59,_T_56,_T_53}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@11392.6]
  assign _T_85 = {1'b0,$signed(io_in_a_bits_address)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@11396.6]
  assign _T_120 = io_in_a_bits_opcode == 3'h6; // @[Monitor.scala 79:25:chipyard.TestHarness.RocketConfig.fir@11435.6]
  assign _T_122 = io_in_a_bits_address ^ 31'h3000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@11438.8]
  assign _T_123 = {1'b0,$signed(_T_122)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@11439.8]
  assign _T_125 = $signed(_T_123) & -32'sh1000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@11441.8]
  assign _T_126 = $signed(_T_125) == 32'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@11442.8]
  assign _T_127 = io_in_a_bits_address ^ 31'h2010000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@11443.8]
  assign _T_128 = {1'b0,$signed(_T_127)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@11444.8]
  assign _T_130 = $signed(_T_128) & -32'sh1000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@11446.8]
  assign _T_131 = $signed(_T_130) == 32'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@11447.8]
  assign _T_132 = io_in_a_bits_address ^ 31'h54000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@11448.8]
  assign _T_133 = {1'b0,$signed(_T_132)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@11449.8]
  assign _T_135 = $signed(_T_133) & -32'sh1000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@11451.8]
  assign _T_136 = $signed(_T_135) == 32'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@11452.8]
  assign _T_137 = io_in_a_bits_address ^ 31'hc000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@11453.8]
  assign _T_138 = {1'b0,$signed(_T_137)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@11454.8]
  assign _T_140 = $signed(_T_138) & -32'sh4000000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@11456.8]
  assign _T_141 = $signed(_T_140) == 32'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@11457.8]
  assign _T_142 = io_in_a_bits_address ^ 31'h2000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@11458.8]
  assign _T_143 = {1'b0,$signed(_T_142)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@11459.8]
  assign _T_145 = $signed(_T_143) & -32'sh10000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@11461.8]
  assign _T_146 = $signed(_T_145) == 32'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@11462.8]
  assign _T_150 = $signed(_T_85) & -32'sh1000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@11466.8]
  assign _T_151 = $signed(_T_150) == 32'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@11467.8]
  assign _T_152 = io_in_a_bits_address ^ 31'h10000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@11468.8]
  assign _T_153 = {1'b0,$signed(_T_152)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@11469.8]
  assign _T_155 = $signed(_T_153) & -32'sh10000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@11471.8]
  assign _T_156 = $signed(_T_155) == 32'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@11472.8]
  assign _T_157 = _T_126 | _T_131; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@11473.8]
  assign _T_158 = _T_157 | _T_136; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@11474.8]
  assign _T_159 = _T_158 | _T_141; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@11475.8]
  assign _T_160 = _T_159 | _T_146; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@11476.8]
  assign _T_161 = _T_160 | _T_151; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@11477.8]
  assign _T_167 = ~reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11483.8]
  assign _T_173 = 4'h6 == io_in_a_bits_size; // @[Parameters.scala 92:48:chipyard.TestHarness.RocketConfig.fir@11498.8]
  assign _T_175 = _T_5 & _T_173; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@11500.8]
  assign _T_183 = _T_175 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11509.8]
  assign _T_184 = ~_T_183; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11510.8]
  assign _T_186 = _T_11 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11516.8]
  assign _T_187 = ~_T_186; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11517.8]
  assign _T_190 = _T_23 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11524.8]
  assign _T_191 = ~_T_190; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11525.8]
  assign _T_193 = _T_17 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11531.8]
  assign _T_194 = ~_T_193; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11532.8]
  assign _T_195 = io_in_a_bits_param <= 3'h2; // @[Bundles.scala 110:27:chipyard.TestHarness.RocketConfig.fir@11537.8]
  assign _T_197 = _T_195 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11539.8]
  assign _T_198 = ~_T_197; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11540.8]
  assign _T_199 = ~io_in_a_bits_mask; // @[Monitor.scala 86:18:chipyard.TestHarness.RocketConfig.fir@11545.8]
  assign _T_200 = _T_199 == 8'h0; // @[Monitor.scala 86:31:chipyard.TestHarness.RocketConfig.fir@11546.8]
  assign _T_202 = _T_200 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11548.8]
  assign _T_203 = ~_T_202; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11549.8]
  assign _T_204 = ~io_in_a_bits_corrupt; // @[Monitor.scala 87:18:chipyard.TestHarness.RocketConfig.fir@11554.8]
  assign _T_206 = _T_204 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11556.8]
  assign _T_207 = ~_T_206; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11557.8]
  assign _T_208 = io_in_a_bits_opcode == 3'h7; // @[Monitor.scala 90:25:chipyard.TestHarness.RocketConfig.fir@11563.6]
  assign _T_287 = io_in_a_bits_param != 3'h0; // @[Monitor.scala 97:31:chipyard.TestHarness.RocketConfig.fir@11673.8]
  assign _T_289 = _T_287 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11675.8]
  assign _T_290 = ~_T_289; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11676.8]
  assign _T_300 = io_in_a_bits_opcode == 3'h4; // @[Monitor.scala 102:25:chipyard.TestHarness.RocketConfig.fir@11699.6]
  assign _T_302 = io_in_a_bits_size <= 4'hc; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@11702.8]
  assign _T_310 = _T_302 & _T_126; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@11710.8]
  assign _T_312 = io_in_a_bits_size <= 4'h6; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@11712.8]
  assign _T_345 = _T_131 | _T_136; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@11745.8]
  assign _T_346 = _T_345 | _T_141; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@11746.8]
  assign _T_347 = _T_346 | _T_146; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@11747.8]
  assign _T_348 = _T_347 | _T_151; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@11748.8]
  assign _T_349 = _T_348 | _T_156; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@11749.8]
  assign _T_350 = _T_312 & _T_349; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@11750.8]
  assign _T_352 = _T_310 | _T_350; // @[Parameters.scala 553:30:chipyard.TestHarness.RocketConfig.fir@11752.8]
  assign _T_354 = _T_352 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11754.8]
  assign _T_355 = ~_T_354; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11755.8]
  assign _T_362 = io_in_a_bits_param == 3'h0; // @[Monitor.scala 106:31:chipyard.TestHarness.RocketConfig.fir@11774.8]
  assign _T_364 = _T_362 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11776.8]
  assign _T_365 = ~_T_364; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11777.8]
  assign _T_366 = io_in_a_bits_mask == _T_81; // @[Monitor.scala 107:30:chipyard.TestHarness.RocketConfig.fir@11782.8]
  assign _T_368 = _T_366 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11784.8]
  assign _T_369 = ~_T_368; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11785.8]
  assign _T_374 = io_in_a_bits_opcode == 3'h0; // @[Monitor.scala 111:25:chipyard.TestHarness.RocketConfig.fir@11799.6]
  assign _T_418 = _T_312 & _T_348; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@11844.8]
  assign _T_427 = _T_310 | _T_418; // @[Parameters.scala 553:30:chipyard.TestHarness.RocketConfig.fir@11853.8]
  assign _T_430 = _T_427 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11856.8]
  assign _T_431 = ~_T_430; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11857.8]
  assign _T_446 = io_in_a_bits_opcode == 3'h1; // @[Monitor.scala 119:25:chipyard.TestHarness.RocketConfig.fir@11893.6]
  assign _T_514 = ~_T_81; // @[Monitor.scala 124:33:chipyard.TestHarness.RocketConfig.fir@11978.8]
  assign _T_515 = io_in_a_bits_mask & _T_514; // @[Monitor.scala 124:31:chipyard.TestHarness.RocketConfig.fir@11979.8]
  assign _T_516 = _T_515 == 8'h0; // @[Monitor.scala 124:40:chipyard.TestHarness.RocketConfig.fir@11980.8]
  assign _T_518 = _T_516 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11982.8]
  assign _T_519 = ~_T_518; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11983.8]
  assign _T_520 = io_in_a_bits_opcode == 3'h2; // @[Monitor.scala 127:25:chipyard.TestHarness.RocketConfig.fir@11989.6]
  assign _T_522 = io_in_a_bits_size <= 4'h3; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@11992.8]
  assign _T_560 = _T_522 & _T_161; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@12030.8]
  assign _T_571 = _T_560 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@12041.8]
  assign _T_572 = ~_T_571; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@12042.8]
  assign _T_579 = io_in_a_bits_param <= 3'h4; // @[Bundles.scala 140:33:chipyard.TestHarness.RocketConfig.fir@12061.8]
  assign _T_581 = _T_579 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@12063.8]
  assign _T_582 = ~_T_581; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@12064.8]
  assign _T_587 = io_in_a_bits_opcode == 3'h3; // @[Monitor.scala 135:25:chipyard.TestHarness.RocketConfig.fir@12078.6]
  assign _T_646 = io_in_a_bits_param <= 3'h3; // @[Bundles.scala 147:30:chipyard.TestHarness.RocketConfig.fir@12150.8]
  assign _T_648 = _T_646 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@12152.8]
  assign _T_649 = ~_T_648; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@12153.8]
  assign _T_654 = io_in_a_bits_opcode == 3'h5; // @[Monitor.scala 143:25:chipyard.TestHarness.RocketConfig.fir@12167.6]
  assign _T_705 = _T_310 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@12219.8]
  assign _T_706 = ~_T_705; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@12220.8]
  assign _T_713 = io_in_a_bits_param <= 3'h1; // @[Bundles.scala 160:28:chipyard.TestHarness.RocketConfig.fir@12239.8]
  assign _T_715 = _T_713 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@12241.8]
  assign _T_716 = ~_T_715; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@12242.8]
  assign _T_725 = io_in_d_bits_opcode <= 3'h6; // @[Bundles.scala 44:24:chipyard.TestHarness.RocketConfig.fir@12266.6]
  assign _T_727 = _T_725 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12268.6]
  assign _T_728 = ~_T_727; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12269.6]
  assign _T_729 = io_in_d_bits_source == 3'h4; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@12274.6]
  assign _T_730 = io_in_d_bits_source == 3'h0; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@12275.6]
  assign _T_731 = io_in_d_bits_source == 3'h1; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@12276.6]
  assign _T_732 = io_in_d_bits_source == 3'h2; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@12277.6]
  assign _T_734 = _T_729 | _T_730; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@12284.6]
  assign _T_735 = _T_734 | _T_731; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@12285.6]
  assign _T_736 = _T_735 | _T_732; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@12286.6]
  assign _T_738 = io_in_d_bits_opcode == 3'h6; // @[Monitor.scala 307:25:chipyard.TestHarness.RocketConfig.fir@12288.6]
  assign _T_740 = _T_736 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12291.8]
  assign _T_741 = ~_T_740; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12292.8]
  assign _T_742 = io_in_d_bits_size >= 4'h3; // @[Monitor.scala 309:27:chipyard.TestHarness.RocketConfig.fir@12297.8]
  assign _T_744 = _T_742 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12299.8]
  assign _T_745 = ~_T_744; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12300.8]
  assign _T_746 = io_in_d_bits_param == 2'h0; // @[Monitor.scala 310:28:chipyard.TestHarness.RocketConfig.fir@12305.8]
  assign _T_748 = _T_746 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12307.8]
  assign _T_749 = ~_T_748; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12308.8]
  assign _T_750 = ~io_in_d_bits_corrupt; // @[Monitor.scala 311:15:chipyard.TestHarness.RocketConfig.fir@12313.8]
  assign _T_752 = _T_750 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12315.8]
  assign _T_753 = ~_T_752; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12316.8]
  assign _T_754 = ~io_in_d_bits_denied; // @[Monitor.scala 312:15:chipyard.TestHarness.RocketConfig.fir@12321.8]
  assign _T_756 = _T_754 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12323.8]
  assign _T_757 = ~_T_756; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12324.8]
  assign _T_758 = io_in_d_bits_opcode == 3'h4; // @[Monitor.scala 315:25:chipyard.TestHarness.RocketConfig.fir@12330.6]
  assign _T_769 = io_in_d_bits_param <= 2'h2; // @[Bundles.scala 104:26:chipyard.TestHarness.RocketConfig.fir@12354.8]
  assign _T_771 = _T_769 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12356.8]
  assign _T_772 = ~_T_771; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12357.8]
  assign _T_773 = io_in_d_bits_param != 2'h2; // @[Monitor.scala 320:28:chipyard.TestHarness.RocketConfig.fir@12362.8]
  assign _T_775 = _T_773 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12364.8]
  assign _T_776 = ~_T_775; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12365.8]
  assign _T_786 = io_in_d_bits_opcode == 3'h5; // @[Monitor.scala 325:25:chipyard.TestHarness.RocketConfig.fir@12388.6]
  assign _T_806 = _T_754 | io_in_d_bits_corrupt; // @[Monitor.scala 331:30:chipyard.TestHarness.RocketConfig.fir@12429.8]
  assign _T_808 = _T_806 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12431.8]
  assign _T_809 = ~_T_808; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12432.8]
  assign _T_815 = io_in_d_bits_opcode == 3'h0; // @[Monitor.scala 335:25:chipyard.TestHarness.RocketConfig.fir@12447.6]
  assign _T_832 = io_in_d_bits_opcode == 3'h1; // @[Monitor.scala 343:25:chipyard.TestHarness.RocketConfig.fir@12482.6]
  assign _T_850 = io_in_d_bits_opcode == 3'h2; // @[Monitor.scala 351:25:chipyard.TestHarness.RocketConfig.fir@12518.6]
  assign _T_882 = io_in_a_ready & io_in_a_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@12584.4]
  assign _T_889 = ~io_in_a_bits_opcode[2]; // @[Edges.scala 93:28:chipyard.TestHarness.RocketConfig.fir@12591.4]
  assign _T_893 = _T_891 - 9'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@12595.4]
  assign _T_894 = _T_891 == 9'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@12596.4]
  assign _T_907 = ~_T_894; // @[Monitor.scala 386:22:chipyard.TestHarness.RocketConfig.fir@12612.4]
  assign _T_908 = io_in_a_valid & _T_907; // @[Monitor.scala 386:19:chipyard.TestHarness.RocketConfig.fir@12613.4]
  assign _T_909 = io_in_a_bits_opcode == _T_902; // @[Monitor.scala 387:32:chipyard.TestHarness.RocketConfig.fir@12615.6]
  assign _T_911 = _T_909 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@12617.6]
  assign _T_912 = ~_T_911; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@12618.6]
  assign _T_913 = io_in_a_bits_param == _T_903; // @[Monitor.scala 388:32:chipyard.TestHarness.RocketConfig.fir@12623.6]
  assign _T_915 = _T_913 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@12625.6]
  assign _T_916 = ~_T_915; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@12626.6]
  assign _T_917 = io_in_a_bits_size == _T_904; // @[Monitor.scala 389:32:chipyard.TestHarness.RocketConfig.fir@12631.6]
  assign _T_919 = _T_917 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@12633.6]
  assign _T_920 = ~_T_919; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@12634.6]
  assign _T_921 = io_in_a_bits_source == _T_905; // @[Monitor.scala 390:32:chipyard.TestHarness.RocketConfig.fir@12639.6]
  assign _T_923 = _T_921 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@12641.6]
  assign _T_924 = ~_T_923; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@12642.6]
  assign _T_925 = io_in_a_bits_address == _T_906; // @[Monitor.scala 391:32:chipyard.TestHarness.RocketConfig.fir@12647.6]
  assign _T_927 = _T_925 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@12649.6]
  assign _T_928 = ~_T_927; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@12650.6]
  assign _T_930 = _T_882 & _T_894; // @[Monitor.scala 393:20:chipyard.TestHarness.RocketConfig.fir@12657.4]
  assign _T_931 = io_in_d_ready & io_in_d_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@12665.4]
  assign _T_933 = 27'hfff << io_in_d_bits_size; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@12667.4]
  assign _T_935 = ~_T_933[11:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@12669.4]
  assign _T_941 = _T_939 - 9'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@12675.4]
  assign _T_942 = _T_939 == 9'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@12676.4]
  assign _T_956 = ~_T_942; // @[Monitor.scala 538:22:chipyard.TestHarness.RocketConfig.fir@12693.4]
  assign _T_957 = io_in_d_valid & _T_956; // @[Monitor.scala 538:19:chipyard.TestHarness.RocketConfig.fir@12694.4]
  assign _T_958 = io_in_d_bits_opcode == _T_950; // @[Monitor.scala 539:29:chipyard.TestHarness.RocketConfig.fir@12696.6]
  assign _T_960 = _T_958 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12698.6]
  assign _T_961 = ~_T_960; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12699.6]
  assign _T_962 = io_in_d_bits_param == _T_951; // @[Monitor.scala 540:29:chipyard.TestHarness.RocketConfig.fir@12704.6]
  assign _T_964 = _T_962 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12706.6]
  assign _T_965 = ~_T_964; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12707.6]
  assign _T_966 = io_in_d_bits_size == _T_952; // @[Monitor.scala 541:29:chipyard.TestHarness.RocketConfig.fir@12712.6]
  assign _T_968 = _T_966 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12714.6]
  assign _T_969 = ~_T_968; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12715.6]
  assign _T_970 = io_in_d_bits_source == _T_953; // @[Monitor.scala 542:29:chipyard.TestHarness.RocketConfig.fir@12720.6]
  assign _T_972 = _T_970 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12722.6]
  assign _T_973 = ~_T_972; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12723.6]
  assign _T_974 = io_in_d_bits_sink == _T_954; // @[Monitor.scala 543:29:chipyard.TestHarness.RocketConfig.fir@12728.6]
  assign _T_976 = _T_974 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12730.6]
  assign _T_977 = ~_T_976; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12731.6]
  assign _T_978 = io_in_d_bits_denied == _T_955; // @[Monitor.scala 544:29:chipyard.TestHarness.RocketConfig.fir@12736.6]
  assign _T_980 = _T_978 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12738.6]
  assign _T_981 = ~_T_980; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12739.6]
  assign _T_983 = _T_931 & _T_942; // @[Monitor.scala 546:20:chipyard.TestHarness.RocketConfig.fir@12746.4]
  assign _T_995 = _T_993 - 9'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@12769.4]
  assign a_first = _T_993 == 9'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@12770.4]
  assign _T_1013 = _T_1011 - 9'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@12791.4]
  assign d_first = _T_1011 == 9'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@12792.4]
  assign _GEN_57 = {io_in_d_bits_source, 2'h0}; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@12811.4]
  assign _T_1021 = {{1'd0}, _GEN_57}; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@12811.4]
  assign _T_1022 = inflight_opcodes >> _T_1021; // @[Monitor.scala 629:44:chipyard.TestHarness.RocketConfig.fir@12812.4]
  assign _T_1026 = 16'h10 - 16'h1; // @[Monitor.scala 606:57:chipyard.TestHarness.RocketConfig.fir@12816.4]
  assign _GEN_58 = {{4'd0}, _T_1026}; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@12817.4]
  assign _T_1027 = _T_1022 & _GEN_58; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@12817.4]
  assign _T_1028 = {{1'd0}, _T_1027[19:1]}; // @[Monitor.scala 629:152:chipyard.TestHarness.RocketConfig.fir@12818.4]
  assign _T_1029 = {io_in_d_bits_source, 3'h0}; // @[Monitor.scala 633:65:chipyard.TestHarness.RocketConfig.fir@12822.4]
  assign _T_1030 = inflight_sizes >> _T_1029; // @[Monitor.scala 633:40:chipyard.TestHarness.RocketConfig.fir@12823.4]
  assign _T_1034 = 16'h100 - 16'h1; // @[Monitor.scala 606:57:chipyard.TestHarness.RocketConfig.fir@12827.4]
  assign _GEN_60 = {{24'd0}, _T_1034}; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@12828.4]
  assign _T_1035 = _T_1030 & _GEN_60; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@12828.4]
  assign _T_1036 = {{1'd0}, _T_1035[39:1]}; // @[Monitor.scala 633:144:chipyard.TestHarness.RocketConfig.fir@12829.4]
  assign _T_1040 = _T_882 & a_first; // @[Monitor.scala 643:27:chipyard.TestHarness.RocketConfig.fir@12854.4]
  assign _T_1042 = 8'h1 << io_in_a_bits_source; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@12857.6]
  assign _T_1043 = {io_in_a_bits_opcode, 1'h0}; // @[Monitor.scala 645:53:chipyard.TestHarness.RocketConfig.fir@12859.6]
  assign _T_1044 = _T_1043 | 4'h1; // @[Monitor.scala 645:61:chipyard.TestHarness.RocketConfig.fir@12860.6]
  assign _T_1045 = {io_in_a_bits_size, 1'h0}; // @[Monitor.scala 646:49:chipyard.TestHarness.RocketConfig.fir@12862.6]
  assign _T_1046 = _T_1045 | 5'h1; // @[Monitor.scala 646:57:chipyard.TestHarness.RocketConfig.fir@12863.6]
  assign _GEN_62 = {io_in_a_bits_source, 2'h0}; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@12865.6]
  assign _T_1047 = {{1'd0}, _GEN_62}; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@12865.6]
  assign a_opcodes_set_interm = _T_1040 ? _T_1044 : 4'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@12856.4]
  assign _GEN_63 = {{63'd0}, a_opcodes_set_interm}; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@12866.6]
  assign _T_1048 = _GEN_63 << _T_1047; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@12866.6]
  assign _T_1049 = {io_in_a_bits_source, 3'h0}; // @[Monitor.scala 648:68:chipyard.TestHarness.RocketConfig.fir@12868.6]
  assign a_sizes_set_interm = _T_1040 ? _T_1046 : 5'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@12856.4]
  assign _GEN_64 = {{63'd0}, a_sizes_set_interm}; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@12869.6]
  assign _T_1050 = _GEN_64 << _T_1049; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@12869.6]
  assign _T_1051 = inflight >> io_in_a_bits_source; // @[Monitor.scala 649:26:chipyard.TestHarness.RocketConfig.fir@12871.6]
  assign _T_1053 = ~_T_1051[0]; // @[Monitor.scala 649:17:chipyard.TestHarness.RocketConfig.fir@12873.6]
  assign _T_1055 = _T_1053 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@12875.6]
  assign _T_1056 = ~_T_1055; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@12876.6]
  assign _GEN_15 = _T_1040 ? _T_1042 : 8'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@12856.4]
  assign _GEN_18 = _T_1040 ? _T_1048 : 67'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@12856.4]
  assign _GEN_19 = _T_1040 ? _T_1050 : 68'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@12856.4]
  assign _T_1059 = _T_931 & d_first; // @[Monitor.scala 660:27:chipyard.TestHarness.RocketConfig.fir@12890.4]
  assign _T_1061 = ~_T_738; // @[Monitor.scala 660:75:chipyard.TestHarness.RocketConfig.fir@12892.4]
  assign _T_1062 = _T_1059 & _T_1061; // @[Monitor.scala 660:72:chipyard.TestHarness.RocketConfig.fir@12893.4]
  assign _T_1063 = 8'h1 << io_in_d_bits_source; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@12895.6]
  assign _GEN_66 = {{63'd0}, _T_1026}; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@12902.6]
  assign _T_1069 = _GEN_66 << _T_1021; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@12902.6]
  assign _GEN_67 = {{63'd0}, _T_1034}; // @[Monitor.scala 663:72:chipyard.TestHarness.RocketConfig.fir@12909.6]
  assign _T_1075 = _GEN_67 << _T_1029; // @[Monitor.scala 663:72:chipyard.TestHarness.RocketConfig.fir@12909.6]
  assign _GEN_20 = _T_1062 ? _T_1063 : 8'h0; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@12894.4]
  assign _GEN_21 = _T_1062 ? _T_1069 : 79'h0; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@12894.4]
  assign _GEN_22 = _T_1062 ? _T_1075 : 79'h0; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@12894.4]
  assign _T_1076 = io_in_d_valid & d_first; // @[Monitor.scala 665:26:chipyard.TestHarness.RocketConfig.fir@12912.4]
  assign _T_1079 = _T_1076 & _T_1061; // @[Monitor.scala 665:71:chipyard.TestHarness.RocketConfig.fir@12915.4]
  assign _T_1080 = inflight >> io_in_d_bits_source; // @[Monitor.scala 666:25:chipyard.TestHarness.RocketConfig.fir@12917.6]
  assign _T_1082 = io_in_a_bits_source == io_in_d_bits_source; // @[Monitor.scala 666:93:chipyard.TestHarness.RocketConfig.fir@12919.6]
  assign _T_1083 = io_in_a_valid & _T_1082; // @[Monitor.scala 666:68:chipyard.TestHarness.RocketConfig.fir@12920.6]
  assign _T_1084 = io_in_a_bits_size == io_in_d_bits_size; // @[Monitor.scala 666:142:chipyard.TestHarness.RocketConfig.fir@12921.6]
  assign _T_1085 = _T_1083 & _T_1084; // @[Monitor.scala 666:119:chipyard.TestHarness.RocketConfig.fir@12922.6]
  assign _T_1086 = _T_1085 & a_first; // @[Monitor.scala 666:166:chipyard.TestHarness.RocketConfig.fir@12923.6]
  assign _T_1087 = _T_1080[0] | _T_1086; // @[Monitor.scala 666:49:chipyard.TestHarness.RocketConfig.fir@12924.6]
  assign _T_1089 = _T_1087 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12926.6]
  assign _T_1090 = ~_T_1089; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12927.6]
  assign a_opcode_lookup = _T_1028[3:0]; // @[:chipyard.TestHarness.RocketConfig.fir@12809.4 :chipyard.TestHarness.RocketConfig.fir@12810.4 Monitor.scala 629:21:chipyard.TestHarness.RocketConfig.fir@12819.4]
  assign _GEN_25 = 3'h2 == a_opcode_lookup[2:0] ? 3'h1 : 3'h0; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@12933.6]
  assign _GEN_26 = 3'h3 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_25; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@12933.6]
  assign _GEN_27 = 3'h4 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_26; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@12933.6]
  assign _GEN_28 = 3'h5 == a_opcode_lookup[2:0] ? 3'h2 : _GEN_27; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@12933.6]
  assign _GEN_29 = 3'h6 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_28; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@12933.6]
  assign _GEN_30 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_29; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@12933.6]
  assign _T_1092 = io_in_d_bits_opcode == _GEN_30; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@12933.6]
  assign _GEN_37 = 3'h6 == a_opcode_lookup[2:0] ? 3'h5 : _GEN_28; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@12935.6]
  assign _GEN_38 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_37; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@12935.6]
  assign _T_1094 = io_in_d_bits_opcode == _GEN_38; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@12935.6]
  assign _T_1095 = _T_1092 | _T_1094; // @[Monitor.scala 667:71:chipyard.TestHarness.RocketConfig.fir@12936.6]
  assign _GEN_41 = 3'h2 == io_in_a_bits_opcode ? 3'h1 : 3'h0; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@12937.6]
  assign _GEN_42 = 3'h3 == io_in_a_bits_opcode ? 3'h1 : _GEN_41; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@12937.6]
  assign _GEN_43 = 3'h4 == io_in_a_bits_opcode ? 3'h1 : _GEN_42; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@12937.6]
  assign _GEN_44 = 3'h5 == io_in_a_bits_opcode ? 3'h2 : _GEN_43; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@12937.6]
  assign _GEN_45 = 3'h6 == io_in_a_bits_opcode ? 3'h4 : _GEN_44; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@12937.6]
  assign _GEN_46 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_45; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@12937.6]
  assign _T_1096 = io_in_d_bits_opcode == _GEN_46; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@12937.6]
  assign _GEN_53 = 3'h6 == io_in_a_bits_opcode ? 3'h5 : _GEN_44; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@12938.6]
  assign _GEN_54 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_53; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@12938.6]
  assign _T_1097 = io_in_d_bits_opcode == _GEN_54; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@12938.6]
  assign _T_1098 = _T_1096 | _T_1097; // @[Monitor.scala 668:99:chipyard.TestHarness.RocketConfig.fir@12939.6]
  assign _T_1099 = io_in_a_valid & _T_1098; // @[Monitor.scala 668:34:chipyard.TestHarness.RocketConfig.fir@12940.6]
  assign _T_1100 = _T_1095 | _T_1099; // @[Monitor.scala 668:15:chipyard.TestHarness.RocketConfig.fir@12941.6]
  assign _T_1102 = _T_1100 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12943.6]
  assign _T_1103 = ~_T_1102; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12944.6]
  assign a_size_lookup = _T_1036[7:0]; // @[:chipyard.TestHarness.RocketConfig.fir@12820.4 :chipyard.TestHarness.RocketConfig.fir@12821.4 Monitor.scala 633:19:chipyard.TestHarness.RocketConfig.fir@12830.4]
  assign _GEN_68 = {{4'd0}, io_in_d_bits_size}; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@12949.6]
  assign _T_1104 = _GEN_68 == a_size_lookup; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@12949.6]
  assign _T_1106 = io_in_a_valid & _T_1084; // @[Monitor.scala 670:72:chipyard.TestHarness.RocketConfig.fir@12951.6]
  assign _T_1107 = _T_1104 | _T_1106; // @[Monitor.scala 670:53:chipyard.TestHarness.RocketConfig.fir@12952.6]
  assign _T_1109 = _T_1107 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12954.6]
  assign _T_1110 = ~_T_1109; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12955.6]
  assign _T_1112 = _T_1076 & a_first; // @[Monitor.scala 672:36:chipyard.TestHarness.RocketConfig.fir@12962.4]
  assign _T_1113 = _T_1112 & io_in_a_valid; // @[Monitor.scala 672:47:chipyard.TestHarness.RocketConfig.fir@12963.4]
  assign _T_1115 = _T_1113 & _T_1082; // @[Monitor.scala 672:65:chipyard.TestHarness.RocketConfig.fir@12965.4]
  assign _T_1117 = _T_1115 & _T_1061; // @[Monitor.scala 672:116:chipyard.TestHarness.RocketConfig.fir@12967.4]
  assign _T_1118 = ~io_in_d_ready; // @[Monitor.scala 673:15:chipyard.TestHarness.RocketConfig.fir@12969.6]
  assign _T_1119 = _T_1118 | io_in_a_ready; // @[Monitor.scala 673:32:chipyard.TestHarness.RocketConfig.fir@12970.6]
  assign _T_1121 = _T_1119 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12972.6]
  assign _T_1122 = ~_T_1121; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12973.6]
  assign a_set = _GEN_15[4:0]; // @[:chipyard.TestHarness.RocketConfig.fir@12803.4 :chipyard.TestHarness.RocketConfig.fir@12804.4 Monitor.scala 644:13:chipyard.TestHarness.RocketConfig.fir@12858.6]
  assign d_clr = _GEN_20[4:0]; // @[:chipyard.TestHarness.RocketConfig.fir@12882.4 :chipyard.TestHarness.RocketConfig.fir@12883.4 Monitor.scala 661:13:chipyard.TestHarness.RocketConfig.fir@12896.6]
  assign _T_1123 = a_set != d_clr; // @[Monitor.scala 677:20:chipyard.TestHarness.RocketConfig.fir@12979.4]
  assign _T_1124 = |a_set; // @[Monitor.scala 677:40:chipyard.TestHarness.RocketConfig.fir@12980.4]
  assign _T_1125 = ~_T_1124; // @[Monitor.scala 677:33:chipyard.TestHarness.RocketConfig.fir@12981.4]
  assign _T_1126 = _T_1123 | _T_1125; // @[Monitor.scala 677:30:chipyard.TestHarness.RocketConfig.fir@12982.4]
  assign _T_1128 = _T_1126 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12984.4]
  assign _T_1129 = ~_T_1128; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12985.4]
  assign _T_1130 = inflight | a_set; // @[Monitor.scala 680:27:chipyard.TestHarness.RocketConfig.fir@12990.4]
  assign _T_1131 = ~d_clr; // @[Monitor.scala 680:38:chipyard.TestHarness.RocketConfig.fir@12991.4]
  assign _T_1132 = _T_1130 & _T_1131; // @[Monitor.scala 680:36:chipyard.TestHarness.RocketConfig.fir@12992.4]
  assign a_opcodes_set = _GEN_18[19:0]; // @[:chipyard.TestHarness.RocketConfig.fir@12805.4 :chipyard.TestHarness.RocketConfig.fir@12806.4 Monitor.scala 647:21:chipyard.TestHarness.RocketConfig.fir@12867.6]
  assign _T_1133 = inflight_opcodes | a_opcodes_set; // @[Monitor.scala 681:43:chipyard.TestHarness.RocketConfig.fir@12994.4]
  assign d_opcodes_clr = _GEN_21[19:0]; // @[:chipyard.TestHarness.RocketConfig.fir@12884.4 :chipyard.TestHarness.RocketConfig.fir@12885.4 Monitor.scala 662:21:chipyard.TestHarness.RocketConfig.fir@12903.6]
  assign _T_1134 = ~d_opcodes_clr; // @[Monitor.scala 681:62:chipyard.TestHarness.RocketConfig.fir@12995.4]
  assign _T_1135 = _T_1133 & _T_1134; // @[Monitor.scala 681:60:chipyard.TestHarness.RocketConfig.fir@12996.4]
  assign a_sizes_set = _GEN_19[39:0]; // @[:chipyard.TestHarness.RocketConfig.fir@12807.4 :chipyard.TestHarness.RocketConfig.fir@12808.4 Monitor.scala 648:19:chipyard.TestHarness.RocketConfig.fir@12870.6]
  assign _T_1136 = inflight_sizes | a_sizes_set; // @[Monitor.scala 682:39:chipyard.TestHarness.RocketConfig.fir@12998.4]
  assign d_sizes_clr = _GEN_22[39:0]; // @[:chipyard.TestHarness.RocketConfig.fir@12886.4 :chipyard.TestHarness.RocketConfig.fir@12887.4 Monitor.scala 663:19:chipyard.TestHarness.RocketConfig.fir@12910.6]
  assign _T_1137 = ~d_sizes_clr; // @[Monitor.scala 682:56:chipyard.TestHarness.RocketConfig.fir@12999.4]
  assign _T_1138 = _T_1136 & _T_1137; // @[Monitor.scala 682:54:chipyard.TestHarness.RocketConfig.fir@13000.4]
  assign _T_1140 = |inflight; // @[Monitor.scala 687:26:chipyard.TestHarness.RocketConfig.fir@13005.4]
  assign _T_1141 = ~_T_1140; // @[Monitor.scala 687:16:chipyard.TestHarness.RocketConfig.fir@13006.4]
  assign _T_1142 = plusarg_reader_out == 32'h0; // @[Monitor.scala 687:39:chipyard.TestHarness.RocketConfig.fir@13007.4]
  assign _T_1143 = _T_1141 | _T_1142; // @[Monitor.scala 687:30:chipyard.TestHarness.RocketConfig.fir@13008.4]
  assign _T_1144 = _T_1139 < plusarg_reader_out; // @[Monitor.scala 687:59:chipyard.TestHarness.RocketConfig.fir@13009.4]
  assign _T_1145 = _T_1143 | _T_1144; // @[Monitor.scala 687:47:chipyard.TestHarness.RocketConfig.fir@13010.4]
  assign _T_1147 = _T_1145 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@13012.4]
  assign _T_1148 = ~_T_1147; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@13013.4]
  assign _T_1150 = _T_1139 + 32'h1; // @[Monitor.scala 689:26:chipyard.TestHarness.RocketConfig.fir@13019.4]
  assign _T_1153 = _T_882 | _T_931; // @[Monitor.scala 690:27:chipyard.TestHarness.RocketConfig.fir@13023.4]
  assign _GEN_69 = io_in_a_valid & _T_120; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11485.10]
  assign _GEN_85 = io_in_a_valid & _T_208; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11613.10]
  assign _GEN_103 = io_in_a_valid & _T_300; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11757.10]
  assign _GEN_115 = io_in_a_valid & _T_374; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11859.10]
  assign _GEN_125 = io_in_a_valid & _T_446; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11953.10]
  assign _GEN_135 = io_in_a_valid & _T_520; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@12044.10]
  assign _GEN_145 = io_in_a_valid & _T_587; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@12133.10]
  assign _GEN_155 = io_in_a_valid & _T_654; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@12222.10]
  assign _GEN_167 = io_in_d_valid & _T_738; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12294.10]
  assign _GEN_177 = io_in_d_valid & _T_758; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12336.10]
  assign _GEN_189 = io_in_d_valid & _T_786; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12394.10]
  assign _GEN_201 = io_in_d_valid & _T_815; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12453.10]
  assign _GEN_207 = io_in_d_valid & _T_832; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12488.10]
  assign _GEN_213 = io_in_d_valid & _T_850; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12524.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock type unsupported by manager (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11485.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11486.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock from a client which does not support Probe (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11512.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11513.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock carries invalid source ID (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11519.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11520.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock smaller than a beat (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11527.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11528.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock address not aligned to size (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11534.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11535.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock carries invalid grow param (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11542.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11543.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock contains invalid mask (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11551.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11552.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock is corrupt (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11559.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11560.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm type unsupported by manager (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11613.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11614.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm from a client which does not support Probe (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11640.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11641.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm carries invalid source ID (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11647.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11648.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm smaller than a beat (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11655.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11656.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm address not aligned to size (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11662.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11663.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm carries invalid grow param (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11670.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11671.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm requests NtoB (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11678.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11679.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm contains invalid mask (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11687.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11688.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm is corrupt (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11695.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11696.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Get type unsupported by manager (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11757.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11758.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get carries invalid source ID (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11764.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11765.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get address not aligned to size (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11771.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11772.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get carries invalid param (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11779.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11780.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get contains invalid mask (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11787.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11788.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get is corrupt (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11795.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11796.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutFull type unsupported by manager (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11859.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11860.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull carries invalid source ID (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11866.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11867.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull address not aligned to size (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11873.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11874.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull carries invalid param (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11881.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11882.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull contains invalid mask (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11889.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11890.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutPartial type unsupported by manager (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11953.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11954.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial carries invalid source ID (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11960.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11961.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial address not aligned to size (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11967.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11968.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial carries invalid param (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11975.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11976.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial contains invalid mask (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11985.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@11986.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Arithmetic type unsupported by manager (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@12044.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@12045.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic carries invalid source ID (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@12051.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@12052.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic address not aligned to size (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@12058.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@12059.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic carries invalid opcode param (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@12066.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@12067.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic contains invalid mask (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@12074.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@12075.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Logical type unsupported by manager (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@12133.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@12134.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical carries invalid source ID (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@12140.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@12141.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical address not aligned to size (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@12147.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@12148.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical carries invalid opcode param (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@12155.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@12156.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical contains invalid mask (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@12163.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@12164.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Hint type unsupported by manager (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@12222.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@12223.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint carries invalid source ID (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@12229.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@12230.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint address not aligned to size (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@12236.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@12237.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint carries invalid opcode param (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@12244.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@12245.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint contains invalid mask (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@12252.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@12253.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint is corrupt (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@12260.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@12261.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel has invalid opcode (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12271.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12272.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck carries invalid source ID (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12294.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12295.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck smaller than a beat (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12302.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12303.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseeAck carries invalid param (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12310.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12311.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck is corrupt (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12318.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12319.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck is denied (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12326.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12327.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid source ID (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12336.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12337.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid sink ID (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12343.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12344.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant smaller than a beat (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12351.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12352.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid cap param (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12359.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12360.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries toN param (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12367.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12368.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant is corrupt (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12375.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12376.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid source ID (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12394.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12395.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid sink ID (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12401.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12402.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData smaller than a beat (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12409.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12410.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid cap param (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12417.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12418.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries toN param (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12425.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12426.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData is denied but not corrupt (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12434.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12435.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck carries invalid source ID (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12453.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12454.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck carries invalid param (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12461.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12462.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck is corrupt (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12469.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12470.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData carries invalid source ID (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12488.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12489.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData carries invalid param (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12496.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12497.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData is denied but not corrupt (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12505.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12506.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck carries invalid source ID (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12524.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12525.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck carries invalid param (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12532.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12533.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck is corrupt (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12540.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12541.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel opcode changed within multibeat operation (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@12620.8]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@12621.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel param changed within multibeat operation (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@12628.8]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@12629.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel size changed within multibeat operation (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@12636.8]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@12637.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel source changed within multibeat operation (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@12644.8]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@12645.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel address changed with multibeat operation (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@12652.8]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@12653.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel opcode changed within multibeat operation (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12701.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12702.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel param changed within multibeat operation (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12709.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12710.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel size changed within multibeat operation (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12717.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12718.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel source changed within multibeat operation (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12725.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12726.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel sink changed with multibeat operation (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12733.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12734.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel denied changed with multibeat operation (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12741.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12742.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel re-used a source ID (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@12878.8]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@12879.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel acknowledged for nothing inflight (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12929.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12930.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper opcode response (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12946.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12947.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper response size (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12957.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12958.8]
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
          $fwrite(32'h80000002,"Assertion failed: ready check\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12975.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12976.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' and 'D' concurrent, despite minlatency 2 (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12987.6]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@12988.6]
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
          $fwrite(32'h80000002,"Assertion failed: TileLink timeout expired (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@13015.6]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@13016.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
