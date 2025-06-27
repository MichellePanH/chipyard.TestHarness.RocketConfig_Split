module TLMonitor_16( // @[:chipyard.TestHarness.RocketConfig.fir@35434.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@35435.4]
  input         reset, // @[:chipyard.TestHarness.RocketConfig.fir@35436.4]
  input         io_in_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@35437.4]
  input         io_in_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@35437.4]
  input  [2:0]  io_in_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@35437.4]
  input  [3:0]  io_in_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@35437.4]
  input  [31:0] io_in_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@35437.4]
  input  [7:0]  io_in_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@35437.4]
  input         io_in_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@35437.4]
  input         io_in_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@35437.4]
  input  [2:0]  io_in_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@35437.4]
  input  [1:0]  io_in_d_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@35437.4]
  input  [3:0]  io_in_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@35437.4]
  input         io_in_d_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@35437.4]
  input  [2:0]  io_in_d_bits_sink, // @[:chipyard.TestHarness.RocketConfig.fir@35437.4]
  input         io_in_d_bits_denied, // @[:chipyard.TestHarness.RocketConfig.fir@35437.4]
  input         io_in_d_bits_corrupt // @[:chipyard.TestHarness.RocketConfig.fir@35437.4]
);
  wire [31:0] plusarg_reader_out; // @[PlusArg.scala 44:11:chipyard.TestHarness.RocketConfig.fir@37115.4]
  wire [26:0] _T_7; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@35453.6]
  wire [11:0] _T_9; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@35455.6]
  wire [31:0] _GEN_56; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@35456.6]
  wire [31:0] _T_10; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@35456.6]
  wire  _T_11; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@35457.6]
  wire [3:0] _T_14; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@35460.6]
  wire [2:0] _T_16; // @[Misc.scala 201:81:chipyard.TestHarness.RocketConfig.fir@35462.6]
  wire  _T_17; // @[Misc.scala 205:21:chipyard.TestHarness.RocketConfig.fir@35463.6]
  wire  _T_20; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@35466.6]
  wire  _T_22; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@35468.6]
  wire  _T_23; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@35469.6]
  wire  _T_25; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@35471.6]
  wire  _T_26; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@35472.6]
  wire  _T_29; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@35475.6]
  wire  _T_30; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@35476.6]
  wire  _T_31; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@35477.6]
  wire  _T_32; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@35478.6]
  wire  _T_33; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@35479.6]
  wire  _T_34; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@35480.6]
  wire  _T_35; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@35481.6]
  wire  _T_36; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@35482.6]
  wire  _T_37; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@35483.6]
  wire  _T_38; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@35484.6]
  wire  _T_39; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@35485.6]
  wire  _T_40; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@35486.6]
  wire  _T_41; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@35487.6]
  wire  _T_44; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@35490.6]
  wire  _T_45; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@35491.6]
  wire  _T_46; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@35492.6]
  wire  _T_47; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@35493.6]
  wire  _T_48; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@35494.6]
  wire  _T_49; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@35495.6]
  wire  _T_50; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@35496.6]
  wire  _T_51; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@35497.6]
  wire  _T_52; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@35498.6]
  wire  _T_53; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@35499.6]
  wire  _T_54; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@35500.6]
  wire  _T_55; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@35501.6]
  wire  _T_56; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@35502.6]
  wire  _T_57; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@35503.6]
  wire  _T_58; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@35504.6]
  wire  _T_59; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@35505.6]
  wire  _T_60; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@35506.6]
  wire  _T_61; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@35507.6]
  wire  _T_62; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@35508.6]
  wire  _T_63; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@35509.6]
  wire  _T_64; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@35510.6]
  wire  _T_65; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@35511.6]
  wire  _T_66; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@35512.6]
  wire  _T_67; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@35513.6]
  wire  _T_68; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@35514.6]
  wire [7:0] _T_75; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@35521.6]
  wire [32:0] _T_79; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@35525.6]
  wire  _T_87; // @[Monitor.scala 79:25:chipyard.TestHarness.RocketConfig.fir@35537.6]
  wire [31:0] _T_89; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@35540.8]
  wire [32:0] _T_90; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@35541.8]
  wire [32:0] _T_92; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@35543.8]
  wire  _T_93; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@35544.8]
  wire [31:0] _T_94; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@35545.8]
  wire [32:0] _T_95; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@35546.8]
  wire [32:0] _T_97; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@35548.8]
  wire  _T_98; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@35549.8]
  wire [31:0] _T_99; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@35550.8]
  wire [32:0] _T_100; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@35551.8]
  wire [32:0] _T_102; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@35553.8]
  wire  _T_103; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@35554.8]
  wire [31:0] _T_104; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@35555.8]
  wire [32:0] _T_105; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@35556.8]
  wire [32:0] _T_107; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@35558.8]
  wire  _T_108; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@35559.8]
  wire [31:0] _T_109; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@35560.8]
  wire [32:0] _T_110; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@35561.8]
  wire [32:0] _T_112; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@35563.8]
  wire  _T_113; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@35564.8]
  wire [32:0] _T_117; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@35568.8]
  wire  _T_118; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@35569.8]
  wire [31:0] _T_119; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@35570.8]
  wire [32:0] _T_120; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@35571.8]
  wire [32:0] _T_122; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@35573.8]
  wire  _T_123; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@35574.8]
  wire  _T_124; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@35575.8]
  wire  _T_125; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@35576.8]
  wire  _T_126; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@35577.8]
  wire  _T_127; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@35578.8]
  wire  _T_128; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@35579.8]
  wire  _T_131; // @[Parameters.scala 92:48:chipyard.TestHarness.RocketConfig.fir@35582.8]
  wire [31:0] _T_133; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@35584.8]
  wire [32:0] _T_134; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@35585.8]
  wire [32:0] _T_136; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@35587.8]
  wire  _T_137; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@35588.8]
  wire  _T_138; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@35589.8]
  wire  _T_142; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@35593.8]
  wire  _T_143; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@35594.8]
  wire  _T_146; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@35601.8]
  wire  _T_152; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@35615.8]
  wire  _T_153; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@35616.8]
  wire  _T_155; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@35622.8]
  wire  _T_156; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@35623.8]
  wire [7:0] _T_161; // @[Monitor.scala 86:18:chipyard.TestHarness.RocketConfig.fir@35636.8]
  wire  _T_162; // @[Monitor.scala 86:31:chipyard.TestHarness.RocketConfig.fir@35637.8]
  wire  _T_164; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@35639.8]
  wire  _T_165; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@35640.8]
  wire  _T_170; // @[Monitor.scala 90:25:chipyard.TestHarness.RocketConfig.fir@35654.6]
  wire  _T_257; // @[Monitor.scala 102:25:chipyard.TestHarness.RocketConfig.fir@35779.6]
  wire  _T_259; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@35782.8]
  wire  _T_267; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@35790.8]
  wire  _T_269; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@35792.8]
  wire  _T_307; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@35830.8]
  wire  _T_308; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@35831.8]
  wire  _T_309; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@35832.8]
  wire  _T_310; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@35833.8]
  wire  _T_311; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@35834.8]
  wire  _T_312; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@35835.8]
  wire  _T_313; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@35836.8]
  wire  _T_315; // @[Parameters.scala 553:30:chipyard.TestHarness.RocketConfig.fir@35838.8]
  wire  _T_317; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@35840.8]
  wire  _T_318; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@35841.8]
  wire  _T_329; // @[Monitor.scala 107:30:chipyard.TestHarness.RocketConfig.fir@35868.8]
  wire  _T_331; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@35870.8]
  wire  _T_332; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@35871.8]
  wire  _T_337; // @[Monitor.scala 111:25:chipyard.TestHarness.RocketConfig.fir@35885.6]
  wire  _T_386; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@35935.8]
  wire  _T_387; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@35936.8]
  wire  _T_396; // @[Parameters.scala 553:30:chipyard.TestHarness.RocketConfig.fir@35945.8]
  wire  _T_399; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@35948.8]
  wire  _T_400; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@35949.8]
  wire  _T_415; // @[Monitor.scala 119:25:chipyard.TestHarness.RocketConfig.fir@35985.6]
  wire [7:0] _T_489; // @[Monitor.scala 124:33:chipyard.TestHarness.RocketConfig.fir@36076.8]
  wire [7:0] _T_490; // @[Monitor.scala 124:31:chipyard.TestHarness.RocketConfig.fir@36077.8]
  wire  _T_491; // @[Monitor.scala 124:40:chipyard.TestHarness.RocketConfig.fir@36078.8]
  wire  _T_493; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@36080.8]
  wire  _T_494; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@36081.8]
  wire  _T_495; // @[Monitor.scala 127:25:chipyard.TestHarness.RocketConfig.fir@36087.6]
  wire  _T_497; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@36090.8]
  wire  _T_540; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@36133.8]
  wire  _T_541; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@36134.8]
  wire  _T_552; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@36145.8]
  wire  _T_553; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@36146.8]
  wire  _T_568; // @[Monitor.scala 135:25:chipyard.TestHarness.RocketConfig.fir@36182.6]
  wire  _T_641; // @[Monitor.scala 143:25:chipyard.TestHarness.RocketConfig.fir@36277.6]
  wire  _T_698; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@36335.8]
  wire  _T_701; // @[Parameters.scala 553:30:chipyard.TestHarness.RocketConfig.fir@36338.8]
  wire  _T_703; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@36340.8]
  wire  _T_704; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@36341.8]
  wire  _T_723; // @[Bundles.scala 44:24:chipyard.TestHarness.RocketConfig.fir@36387.6]
  wire  _T_725; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36389.6]
  wire  _T_726; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36390.6]
  wire  _T_727; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@36395.6]
  wire  _T_730; // @[Monitor.scala 307:25:chipyard.TestHarness.RocketConfig.fir@36400.6]
  wire  _T_732; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36403.8]
  wire  _T_733; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36404.8]
  wire  _T_734; // @[Monitor.scala 309:27:chipyard.TestHarness.RocketConfig.fir@36409.8]
  wire  _T_736; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36411.8]
  wire  _T_737; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36412.8]
  wire  _T_738; // @[Monitor.scala 310:28:chipyard.TestHarness.RocketConfig.fir@36417.8]
  wire  _T_740; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36419.8]
  wire  _T_741; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36420.8]
  wire  _T_742; // @[Monitor.scala 311:15:chipyard.TestHarness.RocketConfig.fir@36425.8]
  wire  _T_744; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36427.8]
  wire  _T_745; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36428.8]
  wire  _T_746; // @[Monitor.scala 312:15:chipyard.TestHarness.RocketConfig.fir@36433.8]
  wire  _T_748; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36435.8]
  wire  _T_749; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36436.8]
  wire  _T_750; // @[Monitor.scala 315:25:chipyard.TestHarness.RocketConfig.fir@36442.6]
  wire  _T_761; // @[Bundles.scala 104:26:chipyard.TestHarness.RocketConfig.fir@36466.8]
  wire  _T_763; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36468.8]
  wire  _T_764; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36469.8]
  wire  _T_765; // @[Monitor.scala 320:28:chipyard.TestHarness.RocketConfig.fir@36474.8]
  wire  _T_767; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36476.8]
  wire  _T_768; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36477.8]
  wire  _T_778; // @[Monitor.scala 325:25:chipyard.TestHarness.RocketConfig.fir@36500.6]
  wire  _T_798; // @[Monitor.scala 331:30:chipyard.TestHarness.RocketConfig.fir@36541.8]
  wire  _T_800; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36543.8]
  wire  _T_801; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36544.8]
  wire  _T_807; // @[Monitor.scala 335:25:chipyard.TestHarness.RocketConfig.fir@36559.6]
  wire  _T_824; // @[Monitor.scala 343:25:chipyard.TestHarness.RocketConfig.fir@36594.6]
  wire  _T_842; // @[Monitor.scala 351:25:chipyard.TestHarness.RocketConfig.fir@36630.6]
  wire  _T_874; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@36696.4]
  wire  _T_881; // @[Edges.scala 93:28:chipyard.TestHarness.RocketConfig.fir@36703.4]
  reg [8:0] _T_883; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@36705.4]
  reg [31:0] _RAND_0;
  wire [8:0] _T_885; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@36707.4]
  wire  _T_886; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@36708.4]
  reg [2:0] _T_894; // @[Monitor.scala 381:22:chipyard.TestHarness.RocketConfig.fir@36719.4]
  reg [31:0] _RAND_1;
  reg [3:0] _T_896; // @[Monitor.scala 383:22:chipyard.TestHarness.RocketConfig.fir@36721.4]
  reg [31:0] _RAND_2;
  reg [31:0] _T_898; // @[Monitor.scala 385:22:chipyard.TestHarness.RocketConfig.fir@36723.4]
  reg [31:0] _RAND_3;
  wire  _T_899; // @[Monitor.scala 386:22:chipyard.TestHarness.RocketConfig.fir@36724.4]
  wire  _T_900; // @[Monitor.scala 386:19:chipyard.TestHarness.RocketConfig.fir@36725.4]
  wire  _T_901; // @[Monitor.scala 387:32:chipyard.TestHarness.RocketConfig.fir@36727.6]
  wire  _T_903; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@36729.6]
  wire  _T_904; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@36730.6]
  wire  _T_909; // @[Monitor.scala 389:32:chipyard.TestHarness.RocketConfig.fir@36743.6]
  wire  _T_911; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@36745.6]
  wire  _T_912; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@36746.6]
  wire  _T_917; // @[Monitor.scala 391:32:chipyard.TestHarness.RocketConfig.fir@36759.6]
  wire  _T_919; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@36761.6]
  wire  _T_920; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@36762.6]
  wire  _T_922; // @[Monitor.scala 393:20:chipyard.TestHarness.RocketConfig.fir@36769.4]
  wire  _T_923; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@36777.4]
  wire [26:0] _T_925; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@36779.4]
  wire [11:0] _T_927; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@36781.4]
  reg [8:0] _T_931; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@36785.4]
  reg [31:0] _RAND_4;
  wire [8:0] _T_933; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@36787.4]
  wire  _T_934; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@36788.4]
  reg [2:0] _T_942; // @[Monitor.scala 532:22:chipyard.TestHarness.RocketConfig.fir@36799.4]
  reg [31:0] _RAND_5;
  reg [1:0] _T_943; // @[Monitor.scala 533:22:chipyard.TestHarness.RocketConfig.fir@36800.4]
  reg [31:0] _RAND_6;
  reg [3:0] _T_944; // @[Monitor.scala 534:22:chipyard.TestHarness.RocketConfig.fir@36801.4]
  reg [31:0] _RAND_7;
  reg  _T_945; // @[Monitor.scala 535:22:chipyard.TestHarness.RocketConfig.fir@36802.4]
  reg [31:0] _RAND_8;
  reg [2:0] _T_946; // @[Monitor.scala 536:22:chipyard.TestHarness.RocketConfig.fir@36803.4]
  reg [31:0] _RAND_9;
  reg  _T_947; // @[Monitor.scala 537:22:chipyard.TestHarness.RocketConfig.fir@36804.4]
  reg [31:0] _RAND_10;
  wire  _T_948; // @[Monitor.scala 538:22:chipyard.TestHarness.RocketConfig.fir@36805.4]
  wire  _T_949; // @[Monitor.scala 538:19:chipyard.TestHarness.RocketConfig.fir@36806.4]
  wire  _T_950; // @[Monitor.scala 539:29:chipyard.TestHarness.RocketConfig.fir@36808.6]
  wire  _T_952; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36810.6]
  wire  _T_953; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36811.6]
  wire  _T_954; // @[Monitor.scala 540:29:chipyard.TestHarness.RocketConfig.fir@36816.6]
  wire  _T_956; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36818.6]
  wire  _T_957; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36819.6]
  wire  _T_958; // @[Monitor.scala 541:29:chipyard.TestHarness.RocketConfig.fir@36824.6]
  wire  _T_960; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36826.6]
  wire  _T_961; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36827.6]
  wire  _T_962; // @[Monitor.scala 542:29:chipyard.TestHarness.RocketConfig.fir@36832.6]
  wire  _T_964; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36834.6]
  wire  _T_965; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36835.6]
  wire  _T_966; // @[Monitor.scala 543:29:chipyard.TestHarness.RocketConfig.fir@36840.6]
  wire  _T_968; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36842.6]
  wire  _T_969; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36843.6]
  wire  _T_970; // @[Monitor.scala 544:29:chipyard.TestHarness.RocketConfig.fir@36848.6]
  wire  _T_972; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36850.6]
  wire  _T_973; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36851.6]
  wire  _T_975; // @[Monitor.scala 546:20:chipyard.TestHarness.RocketConfig.fir@36858.4]
  reg  inflight; // @[Monitor.scala 608:27:chipyard.TestHarness.RocketConfig.fir@36867.4]
  reg [31:0] _RAND_11;
  reg [3:0] inflight_opcodes; // @[Monitor.scala 610:35:chipyard.TestHarness.RocketConfig.fir@36868.4]
  reg [31:0] _RAND_12;
  reg [7:0] inflight_sizes; // @[Monitor.scala 612:33:chipyard.TestHarness.RocketConfig.fir@36869.4]
  reg [31:0] _RAND_13;
  reg [8:0] _T_985; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@36879.4]
  reg [31:0] _RAND_14;
  wire [8:0] _T_987; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@36881.4]
  wire  a_first; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@36882.4]
  reg [8:0] _T_1003; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@36901.4]
  reg [31:0] _RAND_15;
  wire [8:0] _T_1005; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@36903.4]
  wire  d_first; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@36904.4]
  wire [2:0] _GEN_57; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@36923.4]
  wire [3:0] _T_1013; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@36923.4]
  wire [3:0] _T_1014; // @[Monitor.scala 629:44:chipyard.TestHarness.RocketConfig.fir@36924.4]
  wire [15:0] _T_1018; // @[Monitor.scala 606:57:chipyard.TestHarness.RocketConfig.fir@36928.4]
  wire [15:0] _GEN_58; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@36929.4]
  wire [15:0] _T_1019; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@36929.4]
  wire [15:0] _T_1020; // @[Monitor.scala 629:152:chipyard.TestHarness.RocketConfig.fir@36930.4]
  wire [3:0] _T_1021; // @[Monitor.scala 633:65:chipyard.TestHarness.RocketConfig.fir@36934.4]
  wire [7:0] _T_1022; // @[Monitor.scala 633:40:chipyard.TestHarness.RocketConfig.fir@36935.4]
  wire [15:0] _T_1026; // @[Monitor.scala 606:57:chipyard.TestHarness.RocketConfig.fir@36939.4]
  wire [15:0] _GEN_60; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@36940.4]
  wire [15:0] _T_1027; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@36940.4]
  wire [15:0] _T_1028; // @[Monitor.scala 633:144:chipyard.TestHarness.RocketConfig.fir@36941.4]
  wire  _T_1032; // @[Monitor.scala 643:27:chipyard.TestHarness.RocketConfig.fir@36966.4]
  wire [3:0] _T_1035; // @[Monitor.scala 645:53:chipyard.TestHarness.RocketConfig.fir@36971.6]
  wire [3:0] _T_1036; // @[Monitor.scala 645:61:chipyard.TestHarness.RocketConfig.fir@36972.6]
  wire [4:0] _T_1037; // @[Monitor.scala 646:49:chipyard.TestHarness.RocketConfig.fir@36974.6]
  wire [4:0] _T_1038; // @[Monitor.scala 646:57:chipyard.TestHarness.RocketConfig.fir@36975.6]
  wire [3:0] a_opcodes_set_interm; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@36968.4]
  wire [18:0] _T_1040; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@36978.6]
  wire [4:0] a_sizes_set_interm; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@36968.4]
  wire [19:0] _T_1042; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@36981.6]
  wire  _T_1045; // @[Monitor.scala 649:17:chipyard.TestHarness.RocketConfig.fir@36985.6]
  wire  _T_1047; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@36987.6]
  wire  _T_1048; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@36988.6]
  wire [1:0] _GEN_15; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@36968.4]
  wire [18:0] _GEN_18; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@36968.4]
  wire [19:0] _GEN_19; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@36968.4]
  wire  _T_1051; // @[Monitor.scala 660:27:chipyard.TestHarness.RocketConfig.fir@37002.4]
  wire  _T_1053; // @[Monitor.scala 660:75:chipyard.TestHarness.RocketConfig.fir@37004.4]
  wire  _T_1054; // @[Monitor.scala 660:72:chipyard.TestHarness.RocketConfig.fir@37005.4]
  wire [1:0] _T_1055; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@37007.6]
  wire [30:0] _GEN_63; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@37014.6]
  wire [30:0] _T_1061; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@37014.6]
  wire [30:0] _GEN_64; // @[Monitor.scala 663:72:chipyard.TestHarness.RocketConfig.fir@37021.6]
  wire [30:0] _T_1067; // @[Monitor.scala 663:72:chipyard.TestHarness.RocketConfig.fir@37021.6]
  wire [1:0] _GEN_20; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@37006.4]
  wire [30:0] _GEN_21; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@37006.4]
  wire [30:0] _GEN_22; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@37006.4]
  wire  _T_1068; // @[Monitor.scala 665:26:chipyard.TestHarness.RocketConfig.fir@37024.4]
  wire  _T_1071; // @[Monitor.scala 665:71:chipyard.TestHarness.RocketConfig.fir@37027.4]
  wire  _T_1072; // @[Monitor.scala 666:25:chipyard.TestHarness.RocketConfig.fir@37029.6]
  wire  _T_1075; // @[Monitor.scala 666:68:chipyard.TestHarness.RocketConfig.fir@37032.6]
  wire  _T_1076; // @[Monitor.scala 666:142:chipyard.TestHarness.RocketConfig.fir@37033.6]
  wire  _T_1077; // @[Monitor.scala 666:119:chipyard.TestHarness.RocketConfig.fir@37034.6]
  wire  _T_1078; // @[Monitor.scala 666:166:chipyard.TestHarness.RocketConfig.fir@37035.6]
  wire  _T_1079; // @[Monitor.scala 666:49:chipyard.TestHarness.RocketConfig.fir@37036.6]
  wire  _T_1081; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@37038.6]
  wire  _T_1082; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@37039.6]
  wire [3:0] a_opcode_lookup; // @[:chipyard.TestHarness.RocketConfig.fir@36921.4 :chipyard.TestHarness.RocketConfig.fir@36922.4 Monitor.scala 629:21:chipyard.TestHarness.RocketConfig.fir@36931.4]
  wire [2:0] _GEN_25; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@37045.6]
  wire [2:0] _GEN_26; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@37045.6]
  wire [2:0] _GEN_27; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@37045.6]
  wire [2:0] _GEN_28; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@37045.6]
  wire [2:0] _GEN_29; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@37045.6]
  wire [2:0] _GEN_30; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@37045.6]
  wire  _T_1084; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@37045.6]
  wire [2:0] _GEN_37; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@37047.6]
  wire [2:0] _GEN_38; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@37047.6]
  wire  _T_1086; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@37047.6]
  wire  _T_1087; // @[Monitor.scala 667:71:chipyard.TestHarness.RocketConfig.fir@37048.6]
  wire [2:0] _GEN_41; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@37049.6]
  wire [2:0] _GEN_42; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@37049.6]
  wire [2:0] _GEN_43; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@37049.6]
  wire [2:0] _GEN_44; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@37049.6]
  wire [2:0] _GEN_45; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@37049.6]
  wire [2:0] _GEN_46; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@37049.6]
  wire  _T_1088; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@37049.6]
  wire [2:0] _GEN_53; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@37050.6]
  wire [2:0] _GEN_54; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@37050.6]
  wire  _T_1089; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@37050.6]
  wire  _T_1090; // @[Monitor.scala 668:99:chipyard.TestHarness.RocketConfig.fir@37051.6]
  wire  _T_1091; // @[Monitor.scala 668:34:chipyard.TestHarness.RocketConfig.fir@37052.6]
  wire  _T_1092; // @[Monitor.scala 668:15:chipyard.TestHarness.RocketConfig.fir@37053.6]
  wire  _T_1094; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@37055.6]
  wire  _T_1095; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@37056.6]
  wire [7:0] a_size_lookup; // @[:chipyard.TestHarness.RocketConfig.fir@36932.4 :chipyard.TestHarness.RocketConfig.fir@36933.4 Monitor.scala 633:19:chipyard.TestHarness.RocketConfig.fir@36942.4]
  wire [7:0] _GEN_65; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@37061.6]
  wire  _T_1096; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@37061.6]
  wire  _T_1098; // @[Monitor.scala 670:72:chipyard.TestHarness.RocketConfig.fir@37063.6]
  wire  _T_1099; // @[Monitor.scala 670:53:chipyard.TestHarness.RocketConfig.fir@37064.6]
  wire  _T_1101; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@37066.6]
  wire  _T_1102; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@37067.6]
  wire  _T_1104; // @[Monitor.scala 672:36:chipyard.TestHarness.RocketConfig.fir@37074.4]
  wire  _T_1105; // @[Monitor.scala 672:47:chipyard.TestHarness.RocketConfig.fir@37075.4]
  wire  _T_1107; // @[Monitor.scala 672:65:chipyard.TestHarness.RocketConfig.fir@37077.4]
  wire  _T_1109; // @[Monitor.scala 672:116:chipyard.TestHarness.RocketConfig.fir@37079.4]
  wire  _T_1110; // @[Monitor.scala 673:15:chipyard.TestHarness.RocketConfig.fir@37081.6]
  wire  _T_1111; // @[Monitor.scala 673:32:chipyard.TestHarness.RocketConfig.fir@37082.6]
  wire  _T_1113; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@37084.6]
  wire  _T_1114; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@37085.6]
  wire  a_set; // @[:chipyard.TestHarness.RocketConfig.fir@36915.4 :chipyard.TestHarness.RocketConfig.fir@36916.4 Monitor.scala 644:13:chipyard.TestHarness.RocketConfig.fir@36970.6]
  wire  d_clr; // @[:chipyard.TestHarness.RocketConfig.fir@36994.4 :chipyard.TestHarness.RocketConfig.fir@36995.4 Monitor.scala 661:13:chipyard.TestHarness.RocketConfig.fir@37008.6]
  wire  _T_1115; // @[Monitor.scala 677:20:chipyard.TestHarness.RocketConfig.fir@37091.4]
  wire  _T_1116; // @[Monitor.scala 677:40:chipyard.TestHarness.RocketConfig.fir@37092.4]
  wire  _T_1117; // @[Monitor.scala 677:33:chipyard.TestHarness.RocketConfig.fir@37093.4]
  wire  _T_1118; // @[Monitor.scala 677:30:chipyard.TestHarness.RocketConfig.fir@37094.4]
  wire  _T_1120; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@37096.4]
  wire  _T_1121; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@37097.4]
  wire  _T_1122; // @[Monitor.scala 680:27:chipyard.TestHarness.RocketConfig.fir@37102.4]
  wire  _T_1123; // @[Monitor.scala 680:38:chipyard.TestHarness.RocketConfig.fir@37103.4]
  wire  _T_1124; // @[Monitor.scala 680:36:chipyard.TestHarness.RocketConfig.fir@37104.4]
  wire [3:0] a_opcodes_set; // @[:chipyard.TestHarness.RocketConfig.fir@36917.4 :chipyard.TestHarness.RocketConfig.fir@36918.4 Monitor.scala 647:21:chipyard.TestHarness.RocketConfig.fir@36979.6]
  wire [3:0] _T_1125; // @[Monitor.scala 681:43:chipyard.TestHarness.RocketConfig.fir@37106.4]
  wire [3:0] d_opcodes_clr; // @[:chipyard.TestHarness.RocketConfig.fir@36996.4 :chipyard.TestHarness.RocketConfig.fir@36997.4 Monitor.scala 662:21:chipyard.TestHarness.RocketConfig.fir@37015.6]
  wire [3:0] _T_1126; // @[Monitor.scala 681:62:chipyard.TestHarness.RocketConfig.fir@37107.4]
  wire [3:0] _T_1127; // @[Monitor.scala 681:60:chipyard.TestHarness.RocketConfig.fir@37108.4]
  wire [7:0] a_sizes_set; // @[:chipyard.TestHarness.RocketConfig.fir@36919.4 :chipyard.TestHarness.RocketConfig.fir@36920.4 Monitor.scala 648:19:chipyard.TestHarness.RocketConfig.fir@36982.6]
  wire [7:0] _T_1128; // @[Monitor.scala 682:39:chipyard.TestHarness.RocketConfig.fir@37110.4]
  wire [7:0] d_sizes_clr; // @[:chipyard.TestHarness.RocketConfig.fir@36998.4 :chipyard.TestHarness.RocketConfig.fir@36999.4 Monitor.scala 663:19:chipyard.TestHarness.RocketConfig.fir@37022.6]
  wire [7:0] _T_1129; // @[Monitor.scala 682:56:chipyard.TestHarness.RocketConfig.fir@37111.4]
  wire [7:0] _T_1130; // @[Monitor.scala 682:54:chipyard.TestHarness.RocketConfig.fir@37112.4]
  reg [31:0] _T_1131; // @[Monitor.scala 684:27:chipyard.TestHarness.RocketConfig.fir@37114.4]
  reg [31:0] _RAND_16;
  wire  _T_1132; // @[Monitor.scala 687:26:chipyard.TestHarness.RocketConfig.fir@37117.4]
  wire  _T_1133; // @[Monitor.scala 687:16:chipyard.TestHarness.RocketConfig.fir@37118.4]
  wire  _T_1134; // @[Monitor.scala 687:39:chipyard.TestHarness.RocketConfig.fir@37119.4]
  wire  _T_1135; // @[Monitor.scala 687:30:chipyard.TestHarness.RocketConfig.fir@37120.4]
  wire  _T_1136; // @[Monitor.scala 687:59:chipyard.TestHarness.RocketConfig.fir@37121.4]
  wire  _T_1137; // @[Monitor.scala 687:47:chipyard.TestHarness.RocketConfig.fir@37122.4]
  wire  _T_1139; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@37124.4]
  wire  _T_1140; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@37125.4]
  wire [31:0] _T_1142; // @[Monitor.scala 689:26:chipyard.TestHarness.RocketConfig.fir@37131.4]
  wire  _T_1145; // @[Monitor.scala 690:27:chipyard.TestHarness.RocketConfig.fir@37135.4]
  wire  _GEN_66; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@35596.10]
  wire  _GEN_76; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@35713.10]
  wire  _GEN_88; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@35843.10]
  wire  _GEN_94; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@35951.10]
  wire  _GEN_100; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@36051.10]
  wire  _GEN_106; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@36148.10]
  wire  _GEN_112; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@36243.10]
  wire  _GEN_118; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@36343.10]
  wire  _GEN_124; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36406.10]
  wire  _GEN_134; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36448.10]
  wire  _GEN_144; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36506.10]
  wire  _GEN_154; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36565.10]
  wire  _GEN_160; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36600.10]
  wire  _GEN_166; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36636.10]
  plusarg_reader #(.FORMAT("tilelink_timeout=%d"), .DEFAULT(0), .WIDTH(32)) plusarg_reader ( // @[PlusArg.scala 44:11:chipyard.TestHarness.RocketConfig.fir@37115.4]
    .out(plusarg_reader_out)
  );
  assign _T_7 = 27'hfff << io_in_a_bits_size; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@35453.6]
  assign _T_9 = ~_T_7[11:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@35455.6]
  assign _GEN_56 = {{20'd0}, _T_9}; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@35456.6]
  assign _T_10 = io_in_a_bits_address & _GEN_56; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@35456.6]
  assign _T_11 = _T_10 == 32'h0; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@35457.6]
  assign _T_14 = 4'h1 << io_in_a_bits_size[1:0]; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@35460.6]
  assign _T_16 = _T_14[2:0] | 3'h1; // @[Misc.scala 201:81:chipyard.TestHarness.RocketConfig.fir@35462.6]
  assign _T_17 = io_in_a_bits_size >= 4'h3; // @[Misc.scala 205:21:chipyard.TestHarness.RocketConfig.fir@35463.6]
  assign _T_20 = ~io_in_a_bits_address[2]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@35466.6]
  assign _T_22 = _T_16[2] & _T_20; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@35468.6]
  assign _T_23 = _T_17 | _T_22; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@35469.6]
  assign _T_25 = _T_16[2] & io_in_a_bits_address[2]; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@35471.6]
  assign _T_26 = _T_17 | _T_25; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@35472.6]
  assign _T_29 = ~io_in_a_bits_address[1]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@35475.6]
  assign _T_30 = _T_20 & _T_29; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@35476.6]
  assign _T_31 = _T_16[1] & _T_30; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@35477.6]
  assign _T_32 = _T_23 | _T_31; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@35478.6]
  assign _T_33 = _T_20 & io_in_a_bits_address[1]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@35479.6]
  assign _T_34 = _T_16[1] & _T_33; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@35480.6]
  assign _T_35 = _T_23 | _T_34; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@35481.6]
  assign _T_36 = io_in_a_bits_address[2] & _T_29; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@35482.6]
  assign _T_37 = _T_16[1] & _T_36; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@35483.6]
  assign _T_38 = _T_26 | _T_37; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@35484.6]
  assign _T_39 = io_in_a_bits_address[2] & io_in_a_bits_address[1]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@35485.6]
  assign _T_40 = _T_16[1] & _T_39; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@35486.6]
  assign _T_41 = _T_26 | _T_40; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@35487.6]
  assign _T_44 = ~io_in_a_bits_address[0]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@35490.6]
  assign _T_45 = _T_30 & _T_44; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@35491.6]
  assign _T_46 = _T_16[0] & _T_45; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@35492.6]
  assign _T_47 = _T_32 | _T_46; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@35493.6]
  assign _T_48 = _T_30 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@35494.6]
  assign _T_49 = _T_16[0] & _T_48; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@35495.6]
  assign _T_50 = _T_32 | _T_49; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@35496.6]
  assign _T_51 = _T_33 & _T_44; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@35497.6]
  assign _T_52 = _T_16[0] & _T_51; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@35498.6]
  assign _T_53 = _T_35 | _T_52; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@35499.6]
  assign _T_54 = _T_33 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@35500.6]
  assign _T_55 = _T_16[0] & _T_54; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@35501.6]
  assign _T_56 = _T_35 | _T_55; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@35502.6]
  assign _T_57 = _T_36 & _T_44; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@35503.6]
  assign _T_58 = _T_16[0] & _T_57; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@35504.6]
  assign _T_59 = _T_38 | _T_58; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@35505.6]
  assign _T_60 = _T_36 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@35506.6]
  assign _T_61 = _T_16[0] & _T_60; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@35507.6]
  assign _T_62 = _T_38 | _T_61; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@35508.6]
  assign _T_63 = _T_39 & _T_44; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@35509.6]
  assign _T_64 = _T_16[0] & _T_63; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@35510.6]
  assign _T_65 = _T_41 | _T_64; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@35511.6]
  assign _T_66 = _T_39 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@35512.6]
  assign _T_67 = _T_16[0] & _T_66; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@35513.6]
  assign _T_68 = _T_41 | _T_67; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@35514.6]
  assign _T_75 = {_T_68,_T_65,_T_62,_T_59,_T_56,_T_53,_T_50,_T_47}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@35521.6]
  assign _T_79 = {1'b0,$signed(io_in_a_bits_address)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@35525.6]
  assign _T_87 = io_in_a_bits_opcode == 3'h6; // @[Monitor.scala 79:25:chipyard.TestHarness.RocketConfig.fir@35537.6]
  assign _T_89 = io_in_a_bits_address ^ 32'h3000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@35540.8]
  assign _T_90 = {1'b0,$signed(_T_89)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@35541.8]
  assign _T_92 = $signed(_T_90) & -33'sh1000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@35543.8]
  assign _T_93 = $signed(_T_92) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@35544.8]
  assign _T_94 = io_in_a_bits_address ^ 32'h2010000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@35545.8]
  assign _T_95 = {1'b0,$signed(_T_94)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@35546.8]
  assign _T_97 = $signed(_T_95) & -33'sh1000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@35548.8]
  assign _T_98 = $signed(_T_97) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@35549.8]
  assign _T_99 = io_in_a_bits_address ^ 32'h54000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@35550.8]
  assign _T_100 = {1'b0,$signed(_T_99)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@35551.8]
  assign _T_102 = $signed(_T_100) & -33'sh1000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@35553.8]
  assign _T_103 = $signed(_T_102) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@35554.8]
  assign _T_104 = io_in_a_bits_address ^ 32'hc000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@35555.8]
  assign _T_105 = {1'b0,$signed(_T_104)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@35556.8]
  assign _T_107 = $signed(_T_105) & -33'sh4000000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@35558.8]
  assign _T_108 = $signed(_T_107) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@35559.8]
  assign _T_109 = io_in_a_bits_address ^ 32'h2000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@35560.8]
  assign _T_110 = {1'b0,$signed(_T_109)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@35561.8]
  assign _T_112 = $signed(_T_110) & -33'sh10000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@35563.8]
  assign _T_113 = $signed(_T_112) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@35564.8]
  assign _T_117 = $signed(_T_79) & -33'sh1000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@35568.8]
  assign _T_118 = $signed(_T_117) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@35569.8]
  assign _T_119 = io_in_a_bits_address ^ 32'h10000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@35570.8]
  assign _T_120 = {1'b0,$signed(_T_119)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@35571.8]
  assign _T_122 = $signed(_T_120) & -33'sh10000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@35573.8]
  assign _T_123 = $signed(_T_122) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@35574.8]
  assign _T_124 = _T_93 | _T_98; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@35575.8]
  assign _T_125 = _T_124 | _T_103; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@35576.8]
  assign _T_126 = _T_125 | _T_108; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@35577.8]
  assign _T_127 = _T_126 | _T_113; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@35578.8]
  assign _T_128 = _T_127 | _T_118; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@35579.8]
  assign _T_131 = 4'h6 == io_in_a_bits_size; // @[Parameters.scala 92:48:chipyard.TestHarness.RocketConfig.fir@35582.8]
  assign _T_133 = io_in_a_bits_address ^ 32'h80000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@35584.8]
  assign _T_134 = {1'b0,$signed(_T_133)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@35585.8]
  assign _T_136 = $signed(_T_134) & -33'sh10000000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@35587.8]
  assign _T_137 = $signed(_T_136) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@35588.8]
  assign _T_138 = _T_131 & _T_137; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@35589.8]
  assign _T_142 = _T_138 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@35593.8]
  assign _T_143 = ~_T_142; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@35594.8]
  assign _T_146 = ~reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@35601.8]
  assign _T_152 = _T_17 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@35615.8]
  assign _T_153 = ~_T_152; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@35616.8]
  assign _T_155 = _T_11 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@35622.8]
  assign _T_156 = ~_T_155; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@35623.8]
  assign _T_161 = ~io_in_a_bits_mask; // @[Monitor.scala 86:18:chipyard.TestHarness.RocketConfig.fir@35636.8]
  assign _T_162 = _T_161 == 8'h0; // @[Monitor.scala 86:31:chipyard.TestHarness.RocketConfig.fir@35637.8]
  assign _T_164 = _T_162 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@35639.8]
  assign _T_165 = ~_T_164; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@35640.8]
  assign _T_170 = io_in_a_bits_opcode == 3'h7; // @[Monitor.scala 90:25:chipyard.TestHarness.RocketConfig.fir@35654.6]
  assign _T_257 = io_in_a_bits_opcode == 3'h4; // @[Monitor.scala 102:25:chipyard.TestHarness.RocketConfig.fir@35779.6]
  assign _T_259 = io_in_a_bits_size <= 4'hc; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@35782.8]
  assign _T_267 = _T_259 & _T_93; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@35790.8]
  assign _T_269 = io_in_a_bits_size <= 4'h6; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@35792.8]
  assign _T_307 = _T_98 | _T_103; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@35830.8]
  assign _T_308 = _T_307 | _T_108; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@35831.8]
  assign _T_309 = _T_308 | _T_113; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@35832.8]
  assign _T_310 = _T_309 | _T_118; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@35833.8]
  assign _T_311 = _T_310 | _T_123; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@35834.8]
  assign _T_312 = _T_311 | _T_137; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@35835.8]
  assign _T_313 = _T_269 & _T_312; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@35836.8]
  assign _T_315 = _T_267 | _T_313; // @[Parameters.scala 553:30:chipyard.TestHarness.RocketConfig.fir@35838.8]
  assign _T_317 = _T_315 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@35840.8]
  assign _T_318 = ~_T_317; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@35841.8]
  assign _T_329 = io_in_a_bits_mask == _T_75; // @[Monitor.scala 107:30:chipyard.TestHarness.RocketConfig.fir@35868.8]
  assign _T_331 = _T_329 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@35870.8]
  assign _T_332 = ~_T_331; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@35871.8]
  assign _T_337 = io_in_a_bits_opcode == 3'h0; // @[Monitor.scala 111:25:chipyard.TestHarness.RocketConfig.fir@35885.6]
  assign _T_386 = _T_310 | _T_137; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@35935.8]
  assign _T_387 = _T_269 & _T_386; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@35936.8]
  assign _T_396 = _T_267 | _T_387; // @[Parameters.scala 553:30:chipyard.TestHarness.RocketConfig.fir@35945.8]
  assign _T_399 = _T_396 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@35948.8]
  assign _T_400 = ~_T_399; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@35949.8]
  assign _T_415 = io_in_a_bits_opcode == 3'h1; // @[Monitor.scala 119:25:chipyard.TestHarness.RocketConfig.fir@35985.6]
  assign _T_489 = ~_T_75; // @[Monitor.scala 124:33:chipyard.TestHarness.RocketConfig.fir@36076.8]
  assign _T_490 = io_in_a_bits_mask & _T_489; // @[Monitor.scala 124:31:chipyard.TestHarness.RocketConfig.fir@36077.8]
  assign _T_491 = _T_490 == 8'h0; // @[Monitor.scala 124:40:chipyard.TestHarness.RocketConfig.fir@36078.8]
  assign _T_493 = _T_491 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@36080.8]
  assign _T_494 = ~_T_493; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@36081.8]
  assign _T_495 = io_in_a_bits_opcode == 3'h2; // @[Monitor.scala 127:25:chipyard.TestHarness.RocketConfig.fir@36087.6]
  assign _T_497 = io_in_a_bits_size <= 4'h3; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@36090.8]
  assign _T_540 = _T_128 | _T_137; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@36133.8]
  assign _T_541 = _T_497 & _T_540; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@36134.8]
  assign _T_552 = _T_541 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@36145.8]
  assign _T_553 = ~_T_552; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@36146.8]
  assign _T_568 = io_in_a_bits_opcode == 3'h3; // @[Monitor.scala 135:25:chipyard.TestHarness.RocketConfig.fir@36182.6]
  assign _T_641 = io_in_a_bits_opcode == 3'h5; // @[Monitor.scala 143:25:chipyard.TestHarness.RocketConfig.fir@36277.6]
  assign _T_698 = _T_269 & _T_137; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@36335.8]
  assign _T_701 = _T_267 | _T_698; // @[Parameters.scala 553:30:chipyard.TestHarness.RocketConfig.fir@36338.8]
  assign _T_703 = _T_701 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@36340.8]
  assign _T_704 = ~_T_703; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@36341.8]
  assign _T_723 = io_in_d_bits_opcode <= 3'h6; // @[Bundles.scala 44:24:chipyard.TestHarness.RocketConfig.fir@36387.6]
  assign _T_725 = _T_723 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36389.6]
  assign _T_726 = ~_T_725; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36390.6]
  assign _T_727 = ~io_in_d_bits_source; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@36395.6]
  assign _T_730 = io_in_d_bits_opcode == 3'h6; // @[Monitor.scala 307:25:chipyard.TestHarness.RocketConfig.fir@36400.6]
  assign _T_732 = _T_727 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36403.8]
  assign _T_733 = ~_T_732; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36404.8]
  assign _T_734 = io_in_d_bits_size >= 4'h3; // @[Monitor.scala 309:27:chipyard.TestHarness.RocketConfig.fir@36409.8]
  assign _T_736 = _T_734 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36411.8]
  assign _T_737 = ~_T_736; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36412.8]
  assign _T_738 = io_in_d_bits_param == 2'h0; // @[Monitor.scala 310:28:chipyard.TestHarness.RocketConfig.fir@36417.8]
  assign _T_740 = _T_738 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36419.8]
  assign _T_741 = ~_T_740; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36420.8]
  assign _T_742 = ~io_in_d_bits_corrupt; // @[Monitor.scala 311:15:chipyard.TestHarness.RocketConfig.fir@36425.8]
  assign _T_744 = _T_742 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36427.8]
  assign _T_745 = ~_T_744; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36428.8]
  assign _T_746 = ~io_in_d_bits_denied; // @[Monitor.scala 312:15:chipyard.TestHarness.RocketConfig.fir@36433.8]
  assign _T_748 = _T_746 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36435.8]
  assign _T_749 = ~_T_748; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36436.8]
  assign _T_750 = io_in_d_bits_opcode == 3'h4; // @[Monitor.scala 315:25:chipyard.TestHarness.RocketConfig.fir@36442.6]
  assign _T_761 = io_in_d_bits_param <= 2'h2; // @[Bundles.scala 104:26:chipyard.TestHarness.RocketConfig.fir@36466.8]
  assign _T_763 = _T_761 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36468.8]
  assign _T_764 = ~_T_763; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36469.8]
  assign _T_765 = io_in_d_bits_param != 2'h2; // @[Monitor.scala 320:28:chipyard.TestHarness.RocketConfig.fir@36474.8]
  assign _T_767 = _T_765 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36476.8]
  assign _T_768 = ~_T_767; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36477.8]
  assign _T_778 = io_in_d_bits_opcode == 3'h5; // @[Monitor.scala 325:25:chipyard.TestHarness.RocketConfig.fir@36500.6]
  assign _T_798 = _T_746 | io_in_d_bits_corrupt; // @[Monitor.scala 331:30:chipyard.TestHarness.RocketConfig.fir@36541.8]
  assign _T_800 = _T_798 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36543.8]
  assign _T_801 = ~_T_800; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36544.8]
  assign _T_807 = io_in_d_bits_opcode == 3'h0; // @[Monitor.scala 335:25:chipyard.TestHarness.RocketConfig.fir@36559.6]
  assign _T_824 = io_in_d_bits_opcode == 3'h1; // @[Monitor.scala 343:25:chipyard.TestHarness.RocketConfig.fir@36594.6]
  assign _T_842 = io_in_d_bits_opcode == 3'h2; // @[Monitor.scala 351:25:chipyard.TestHarness.RocketConfig.fir@36630.6]
  assign _T_874 = io_in_a_ready & io_in_a_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@36696.4]
  assign _T_881 = ~io_in_a_bits_opcode[2]; // @[Edges.scala 93:28:chipyard.TestHarness.RocketConfig.fir@36703.4]
  assign _T_885 = _T_883 - 9'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@36707.4]
  assign _T_886 = _T_883 == 9'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@36708.4]
  assign _T_899 = ~_T_886; // @[Monitor.scala 386:22:chipyard.TestHarness.RocketConfig.fir@36724.4]
  assign _T_900 = io_in_a_valid & _T_899; // @[Monitor.scala 386:19:chipyard.TestHarness.RocketConfig.fir@36725.4]
  assign _T_901 = io_in_a_bits_opcode == _T_894; // @[Monitor.scala 387:32:chipyard.TestHarness.RocketConfig.fir@36727.6]
  assign _T_903 = _T_901 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@36729.6]
  assign _T_904 = ~_T_903; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@36730.6]
  assign _T_909 = io_in_a_bits_size == _T_896; // @[Monitor.scala 389:32:chipyard.TestHarness.RocketConfig.fir@36743.6]
  assign _T_911 = _T_909 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@36745.6]
  assign _T_912 = ~_T_911; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@36746.6]
  assign _T_917 = io_in_a_bits_address == _T_898; // @[Monitor.scala 391:32:chipyard.TestHarness.RocketConfig.fir@36759.6]
  assign _T_919 = _T_917 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@36761.6]
  assign _T_920 = ~_T_919; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@36762.6]
  assign _T_922 = _T_874 & _T_886; // @[Monitor.scala 393:20:chipyard.TestHarness.RocketConfig.fir@36769.4]
  assign _T_923 = io_in_d_ready & io_in_d_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@36777.4]
  assign _T_925 = 27'hfff << io_in_d_bits_size; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@36779.4]
  assign _T_927 = ~_T_925[11:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@36781.4]
  assign _T_933 = _T_931 - 9'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@36787.4]
  assign _T_934 = _T_931 == 9'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@36788.4]
  assign _T_948 = ~_T_934; // @[Monitor.scala 538:22:chipyard.TestHarness.RocketConfig.fir@36805.4]
  assign _T_949 = io_in_d_valid & _T_948; // @[Monitor.scala 538:19:chipyard.TestHarness.RocketConfig.fir@36806.4]
  assign _T_950 = io_in_d_bits_opcode == _T_942; // @[Monitor.scala 539:29:chipyard.TestHarness.RocketConfig.fir@36808.6]
  assign _T_952 = _T_950 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36810.6]
  assign _T_953 = ~_T_952; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36811.6]
  assign _T_954 = io_in_d_bits_param == _T_943; // @[Monitor.scala 540:29:chipyard.TestHarness.RocketConfig.fir@36816.6]
  assign _T_956 = _T_954 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36818.6]
  assign _T_957 = ~_T_956; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36819.6]
  assign _T_958 = io_in_d_bits_size == _T_944; // @[Monitor.scala 541:29:chipyard.TestHarness.RocketConfig.fir@36824.6]
  assign _T_960 = _T_958 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36826.6]
  assign _T_961 = ~_T_960; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36827.6]
  assign _T_962 = io_in_d_bits_source == _T_945; // @[Monitor.scala 542:29:chipyard.TestHarness.RocketConfig.fir@36832.6]
  assign _T_964 = _T_962 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36834.6]
  assign _T_965 = ~_T_964; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36835.6]
  assign _T_966 = io_in_d_bits_sink == _T_946; // @[Monitor.scala 543:29:chipyard.TestHarness.RocketConfig.fir@36840.6]
  assign _T_968 = _T_966 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36842.6]
  assign _T_969 = ~_T_968; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36843.6]
  assign _T_970 = io_in_d_bits_denied == _T_947; // @[Monitor.scala 544:29:chipyard.TestHarness.RocketConfig.fir@36848.6]
  assign _T_972 = _T_970 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36850.6]
  assign _T_973 = ~_T_972; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36851.6]
  assign _T_975 = _T_923 & _T_934; // @[Monitor.scala 546:20:chipyard.TestHarness.RocketConfig.fir@36858.4]
  assign _T_987 = _T_985 - 9'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@36881.4]
  assign a_first = _T_985 == 9'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@36882.4]
  assign _T_1005 = _T_1003 - 9'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@36903.4]
  assign d_first = _T_1003 == 9'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@36904.4]
  assign _GEN_57 = {io_in_d_bits_source, 2'h0}; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@36923.4]
  assign _T_1013 = {{1'd0}, _GEN_57}; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@36923.4]
  assign _T_1014 = inflight_opcodes >> _T_1013; // @[Monitor.scala 629:44:chipyard.TestHarness.RocketConfig.fir@36924.4]
  assign _T_1018 = 16'h10 - 16'h1; // @[Monitor.scala 606:57:chipyard.TestHarness.RocketConfig.fir@36928.4]
  assign _GEN_58 = {{12'd0}, _T_1014}; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@36929.4]
  assign _T_1019 = _GEN_58 & _T_1018; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@36929.4]
  assign _T_1020 = {{1'd0}, _T_1019[15:1]}; // @[Monitor.scala 629:152:chipyard.TestHarness.RocketConfig.fir@36930.4]
  assign _T_1021 = {io_in_d_bits_source, 3'h0}; // @[Monitor.scala 633:65:chipyard.TestHarness.RocketConfig.fir@36934.4]
  assign _T_1022 = inflight_sizes >> _T_1021; // @[Monitor.scala 633:40:chipyard.TestHarness.RocketConfig.fir@36935.4]
  assign _T_1026 = 16'h100 - 16'h1; // @[Monitor.scala 606:57:chipyard.TestHarness.RocketConfig.fir@36939.4]
  assign _GEN_60 = {{8'd0}, _T_1022}; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@36940.4]
  assign _T_1027 = _GEN_60 & _T_1026; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@36940.4]
  assign _T_1028 = {{1'd0}, _T_1027[15:1]}; // @[Monitor.scala 633:144:chipyard.TestHarness.RocketConfig.fir@36941.4]
  assign _T_1032 = _T_874 & a_first; // @[Monitor.scala 643:27:chipyard.TestHarness.RocketConfig.fir@36966.4]
  assign _T_1035 = {io_in_a_bits_opcode, 1'h0}; // @[Monitor.scala 645:53:chipyard.TestHarness.RocketConfig.fir@36971.6]
  assign _T_1036 = _T_1035 | 4'h1; // @[Monitor.scala 645:61:chipyard.TestHarness.RocketConfig.fir@36972.6]
  assign _T_1037 = {io_in_a_bits_size, 1'h0}; // @[Monitor.scala 646:49:chipyard.TestHarness.RocketConfig.fir@36974.6]
  assign _T_1038 = _T_1037 | 5'h1; // @[Monitor.scala 646:57:chipyard.TestHarness.RocketConfig.fir@36975.6]
  assign a_opcodes_set_interm = _T_1032 ? _T_1036 : 4'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@36968.4]
  assign _T_1040 = {{15'd0}, a_opcodes_set_interm}; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@36978.6]
  assign a_sizes_set_interm = _T_1032 ? _T_1038 : 5'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@36968.4]
  assign _T_1042 = {{15'd0}, a_sizes_set_interm}; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@36981.6]
  assign _T_1045 = ~inflight; // @[Monitor.scala 649:17:chipyard.TestHarness.RocketConfig.fir@36985.6]
  assign _T_1047 = _T_1045 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@36987.6]
  assign _T_1048 = ~_T_1047; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@36988.6]
  assign _GEN_15 = _T_1032 ? 2'h1 : 2'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@36968.4]
  assign _GEN_18 = _T_1032 ? _T_1040 : 19'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@36968.4]
  assign _GEN_19 = _T_1032 ? _T_1042 : 20'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@36968.4]
  assign _T_1051 = _T_923 & d_first; // @[Monitor.scala 660:27:chipyard.TestHarness.RocketConfig.fir@37002.4]
  assign _T_1053 = ~_T_730; // @[Monitor.scala 660:75:chipyard.TestHarness.RocketConfig.fir@37004.4]
  assign _T_1054 = _T_1051 & _T_1053; // @[Monitor.scala 660:72:chipyard.TestHarness.RocketConfig.fir@37005.4]
  assign _T_1055 = 2'h1 << io_in_d_bits_source; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@37007.6]
  assign _GEN_63 = {{15'd0}, _T_1018}; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@37014.6]
  assign _T_1061 = _GEN_63 << _T_1013; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@37014.6]
  assign _GEN_64 = {{15'd0}, _T_1026}; // @[Monitor.scala 663:72:chipyard.TestHarness.RocketConfig.fir@37021.6]
  assign _T_1067 = _GEN_64 << _T_1021; // @[Monitor.scala 663:72:chipyard.TestHarness.RocketConfig.fir@37021.6]
  assign _GEN_20 = _T_1054 ? _T_1055 : 2'h0; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@37006.4]
  assign _GEN_21 = _T_1054 ? _T_1061 : 31'h0; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@37006.4]
  assign _GEN_22 = _T_1054 ? _T_1067 : 31'h0; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@37006.4]
  assign _T_1068 = io_in_d_valid & d_first; // @[Monitor.scala 665:26:chipyard.TestHarness.RocketConfig.fir@37024.4]
  assign _T_1071 = _T_1068 & _T_1053; // @[Monitor.scala 665:71:chipyard.TestHarness.RocketConfig.fir@37027.4]
  assign _T_1072 = inflight >> io_in_d_bits_source; // @[Monitor.scala 666:25:chipyard.TestHarness.RocketConfig.fir@37029.6]
  assign _T_1075 = io_in_a_valid & _T_727; // @[Monitor.scala 666:68:chipyard.TestHarness.RocketConfig.fir@37032.6]
  assign _T_1076 = io_in_a_bits_size == io_in_d_bits_size; // @[Monitor.scala 666:142:chipyard.TestHarness.RocketConfig.fir@37033.6]
  assign _T_1077 = _T_1075 & _T_1076; // @[Monitor.scala 666:119:chipyard.TestHarness.RocketConfig.fir@37034.6]
  assign _T_1078 = _T_1077 & a_first; // @[Monitor.scala 666:166:chipyard.TestHarness.RocketConfig.fir@37035.6]
  assign _T_1079 = _T_1072 | _T_1078; // @[Monitor.scala 666:49:chipyard.TestHarness.RocketConfig.fir@37036.6]
  assign _T_1081 = _T_1079 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@37038.6]
  assign _T_1082 = ~_T_1081; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@37039.6]
  assign a_opcode_lookup = _T_1020[3:0]; // @[:chipyard.TestHarness.RocketConfig.fir@36921.4 :chipyard.TestHarness.RocketConfig.fir@36922.4 Monitor.scala 629:21:chipyard.TestHarness.RocketConfig.fir@36931.4]
  assign _GEN_25 = 3'h2 == a_opcode_lookup[2:0] ? 3'h1 : 3'h0; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@37045.6]
  assign _GEN_26 = 3'h3 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_25; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@37045.6]
  assign _GEN_27 = 3'h4 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_26; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@37045.6]
  assign _GEN_28 = 3'h5 == a_opcode_lookup[2:0] ? 3'h2 : _GEN_27; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@37045.6]
  assign _GEN_29 = 3'h6 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_28; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@37045.6]
  assign _GEN_30 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_29; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@37045.6]
  assign _T_1084 = io_in_d_bits_opcode == _GEN_30; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@37045.6]
  assign _GEN_37 = 3'h6 == a_opcode_lookup[2:0] ? 3'h5 : _GEN_28; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@37047.6]
  assign _GEN_38 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_37; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@37047.6]
  assign _T_1086 = io_in_d_bits_opcode == _GEN_38; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@37047.6]
  assign _T_1087 = _T_1084 | _T_1086; // @[Monitor.scala 667:71:chipyard.TestHarness.RocketConfig.fir@37048.6]
  assign _GEN_41 = 3'h2 == io_in_a_bits_opcode ? 3'h1 : 3'h0; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@37049.6]
  assign _GEN_42 = 3'h3 == io_in_a_bits_opcode ? 3'h1 : _GEN_41; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@37049.6]
  assign _GEN_43 = 3'h4 == io_in_a_bits_opcode ? 3'h1 : _GEN_42; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@37049.6]
  assign _GEN_44 = 3'h5 == io_in_a_bits_opcode ? 3'h2 : _GEN_43; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@37049.6]
  assign _GEN_45 = 3'h6 == io_in_a_bits_opcode ? 3'h4 : _GEN_44; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@37049.6]
  assign _GEN_46 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_45; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@37049.6]
  assign _T_1088 = io_in_d_bits_opcode == _GEN_46; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@37049.6]
  assign _GEN_53 = 3'h6 == io_in_a_bits_opcode ? 3'h5 : _GEN_44; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@37050.6]
  assign _GEN_54 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_53; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@37050.6]
  assign _T_1089 = io_in_d_bits_opcode == _GEN_54; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@37050.6]
  assign _T_1090 = _T_1088 | _T_1089; // @[Monitor.scala 668:99:chipyard.TestHarness.RocketConfig.fir@37051.6]
  assign _T_1091 = io_in_a_valid & _T_1090; // @[Monitor.scala 668:34:chipyard.TestHarness.RocketConfig.fir@37052.6]
  assign _T_1092 = _T_1087 | _T_1091; // @[Monitor.scala 668:15:chipyard.TestHarness.RocketConfig.fir@37053.6]
  assign _T_1094 = _T_1092 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@37055.6]
  assign _T_1095 = ~_T_1094; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@37056.6]
  assign a_size_lookup = _T_1028[7:0]; // @[:chipyard.TestHarness.RocketConfig.fir@36932.4 :chipyard.TestHarness.RocketConfig.fir@36933.4 Monitor.scala 633:19:chipyard.TestHarness.RocketConfig.fir@36942.4]
  assign _GEN_65 = {{4'd0}, io_in_d_bits_size}; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@37061.6]
  assign _T_1096 = _GEN_65 == a_size_lookup; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@37061.6]
  assign _T_1098 = io_in_a_valid & _T_1076; // @[Monitor.scala 670:72:chipyard.TestHarness.RocketConfig.fir@37063.6]
  assign _T_1099 = _T_1096 | _T_1098; // @[Monitor.scala 670:53:chipyard.TestHarness.RocketConfig.fir@37064.6]
  assign _T_1101 = _T_1099 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@37066.6]
  assign _T_1102 = ~_T_1101; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@37067.6]
  assign _T_1104 = _T_1068 & a_first; // @[Monitor.scala 672:36:chipyard.TestHarness.RocketConfig.fir@37074.4]
  assign _T_1105 = _T_1104 & io_in_a_valid; // @[Monitor.scala 672:47:chipyard.TestHarness.RocketConfig.fir@37075.4]
  assign _T_1107 = _T_1105 & _T_727; // @[Monitor.scala 672:65:chipyard.TestHarness.RocketConfig.fir@37077.4]
  assign _T_1109 = _T_1107 & _T_1053; // @[Monitor.scala 672:116:chipyard.TestHarness.RocketConfig.fir@37079.4]
  assign _T_1110 = ~io_in_d_ready; // @[Monitor.scala 673:15:chipyard.TestHarness.RocketConfig.fir@37081.6]
  assign _T_1111 = _T_1110 | io_in_a_ready; // @[Monitor.scala 673:32:chipyard.TestHarness.RocketConfig.fir@37082.6]
  assign _T_1113 = _T_1111 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@37084.6]
  assign _T_1114 = ~_T_1113; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@37085.6]
  assign a_set = _GEN_15[0]; // @[:chipyard.TestHarness.RocketConfig.fir@36915.4 :chipyard.TestHarness.RocketConfig.fir@36916.4 Monitor.scala 644:13:chipyard.TestHarness.RocketConfig.fir@36970.6]
  assign d_clr = _GEN_20[0]; // @[:chipyard.TestHarness.RocketConfig.fir@36994.4 :chipyard.TestHarness.RocketConfig.fir@36995.4 Monitor.scala 661:13:chipyard.TestHarness.RocketConfig.fir@37008.6]
  assign _T_1115 = a_set != d_clr; // @[Monitor.scala 677:20:chipyard.TestHarness.RocketConfig.fir@37091.4]
  assign _T_1116 = |a_set; // @[Monitor.scala 677:40:chipyard.TestHarness.RocketConfig.fir@37092.4]
  assign _T_1117 = ~_T_1116; // @[Monitor.scala 677:33:chipyard.TestHarness.RocketConfig.fir@37093.4]
  assign _T_1118 = _T_1115 | _T_1117; // @[Monitor.scala 677:30:chipyard.TestHarness.RocketConfig.fir@37094.4]
  assign _T_1120 = _T_1118 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@37096.4]
  assign _T_1121 = ~_T_1120; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@37097.4]
  assign _T_1122 = inflight | a_set; // @[Monitor.scala 680:27:chipyard.TestHarness.RocketConfig.fir@37102.4]
  assign _T_1123 = ~d_clr; // @[Monitor.scala 680:38:chipyard.TestHarness.RocketConfig.fir@37103.4]
  assign _T_1124 = _T_1122 & _T_1123; // @[Monitor.scala 680:36:chipyard.TestHarness.RocketConfig.fir@37104.4]
  assign a_opcodes_set = _GEN_18[3:0]; // @[:chipyard.TestHarness.RocketConfig.fir@36917.4 :chipyard.TestHarness.RocketConfig.fir@36918.4 Monitor.scala 647:21:chipyard.TestHarness.RocketConfig.fir@36979.6]
  assign _T_1125 = inflight_opcodes | a_opcodes_set; // @[Monitor.scala 681:43:chipyard.TestHarness.RocketConfig.fir@37106.4]
  assign d_opcodes_clr = _GEN_21[3:0]; // @[:chipyard.TestHarness.RocketConfig.fir@36996.4 :chipyard.TestHarness.RocketConfig.fir@36997.4 Monitor.scala 662:21:chipyard.TestHarness.RocketConfig.fir@37015.6]
  assign _T_1126 = ~d_opcodes_clr; // @[Monitor.scala 681:62:chipyard.TestHarness.RocketConfig.fir@37107.4]
  assign _T_1127 = _T_1125 & _T_1126; // @[Monitor.scala 681:60:chipyard.TestHarness.RocketConfig.fir@37108.4]
  assign a_sizes_set = _GEN_19[7:0]; // @[:chipyard.TestHarness.RocketConfig.fir@36919.4 :chipyard.TestHarness.RocketConfig.fir@36920.4 Monitor.scala 648:19:chipyard.TestHarness.RocketConfig.fir@36982.6]
  assign _T_1128 = inflight_sizes | a_sizes_set; // @[Monitor.scala 682:39:chipyard.TestHarness.RocketConfig.fir@37110.4]
  assign d_sizes_clr = _GEN_22[7:0]; // @[:chipyard.TestHarness.RocketConfig.fir@36998.4 :chipyard.TestHarness.RocketConfig.fir@36999.4 Monitor.scala 663:19:chipyard.TestHarness.RocketConfig.fir@37022.6]
  assign _T_1129 = ~d_sizes_clr; // @[Monitor.scala 682:56:chipyard.TestHarness.RocketConfig.fir@37111.4]
  assign _T_1130 = _T_1128 & _T_1129; // @[Monitor.scala 682:54:chipyard.TestHarness.RocketConfig.fir@37112.4]
  assign _T_1132 = |inflight; // @[Monitor.scala 687:26:chipyard.TestHarness.RocketConfig.fir@37117.4]
  assign _T_1133 = ~_T_1132; // @[Monitor.scala 687:16:chipyard.TestHarness.RocketConfig.fir@37118.4]
  assign _T_1134 = plusarg_reader_out == 32'h0; // @[Monitor.scala 687:39:chipyard.TestHarness.RocketConfig.fir@37119.4]
  assign _T_1135 = _T_1133 | _T_1134; // @[Monitor.scala 687:30:chipyard.TestHarness.RocketConfig.fir@37120.4]
  assign _T_1136 = _T_1131 < plusarg_reader_out; // @[Monitor.scala 687:59:chipyard.TestHarness.RocketConfig.fir@37121.4]
  assign _T_1137 = _T_1135 | _T_1136; // @[Monitor.scala 687:47:chipyard.TestHarness.RocketConfig.fir@37122.4]
  assign _T_1139 = _T_1137 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@37124.4]
  assign _T_1140 = ~_T_1139; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@37125.4]
  assign _T_1142 = _T_1131 + 32'h1; // @[Monitor.scala 689:26:chipyard.TestHarness.RocketConfig.fir@37131.4]
  assign _T_1145 = _T_874 | _T_923; // @[Monitor.scala 690:27:chipyard.TestHarness.RocketConfig.fir@37135.4]
  assign _GEN_66 = io_in_a_valid & _T_87; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@35596.10]
  assign _GEN_76 = io_in_a_valid & _T_170; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@35713.10]
  assign _GEN_88 = io_in_a_valid & _T_257; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@35843.10]
  assign _GEN_94 = io_in_a_valid & _T_337; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@35951.10]
  assign _GEN_100 = io_in_a_valid & _T_415; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@36051.10]
  assign _GEN_106 = io_in_a_valid & _T_495; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@36148.10]
  assign _GEN_112 = io_in_a_valid & _T_568; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@36243.10]
  assign _GEN_118 = io_in_a_valid & _T_641; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@36343.10]
  assign _GEN_124 = io_in_d_valid & _T_730; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36406.10]
  assign _GEN_134 = io_in_d_valid & _T_750; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36448.10]
  assign _GEN_144 = io_in_d_valid & _T_778; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36506.10]
  assign _GEN_154 = io_in_d_valid & _T_807; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36565.10]
  assign _GEN_160 = io_in_d_valid & _T_824; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36600.10]
  assign _GEN_166 = io_in_d_valid & _T_842; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36636.10]
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
  _T_945 = _RAND_8[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  _T_946 = _RAND_9[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  _T_947 = _RAND_10[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  inflight = _RAND_11[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  inflight_opcodes = _RAND_12[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  inflight_sizes = _RAND_13[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  _T_985 = _RAND_14[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  _T_1003 = _RAND_15[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  _T_1131 = _RAND_16[31:0];
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
      _T_945 <= io_in_d_bits_source;
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
        if (_GEN_66 & _T_143) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock type unsupported by manager (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@35596.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_66 & _T_143) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@35597.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_66 & _T_146) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock from a client which does not support Probe (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@35603.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_66 & _T_146) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@35604.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_66 & _T_153) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock smaller than a beat (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@35618.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_66 & _T_153) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@35619.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_66 & _T_156) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock address not aligned to size (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@35625.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_66 & _T_156) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@35626.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_66 & _T_165) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock contains invalid mask (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@35642.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_66 & _T_165) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@35643.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_76 & _T_143) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm type unsupported by manager (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@35713.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_76 & _T_143) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@35714.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_76 & _T_146) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm from a client which does not support Probe (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@35720.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_76 & _T_146) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@35721.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_76 & _T_153) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm smaller than a beat (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@35735.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_76 & _T_153) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@35736.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_76 & _T_156) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm address not aligned to size (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@35742.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_76 & _T_156) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@35743.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_76 & _T_146) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm requests NtoB (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@35758.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_76 & _T_146) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@35759.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_76 & _T_165) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm contains invalid mask (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@35767.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_76 & _T_165) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@35768.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_88 & _T_318) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Get type unsupported by manager (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@35843.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_88 & _T_318) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@35844.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_88 & _T_156) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get address not aligned to size (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@35857.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_88 & _T_156) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@35858.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_88 & _T_332) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get contains invalid mask (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@35873.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_88 & _T_332) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@35874.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_94 & _T_400) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutFull type unsupported by manager (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@35951.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_94 & _T_400) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@35952.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_94 & _T_156) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull address not aligned to size (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@35965.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_94 & _T_156) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@35966.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_94 & _T_332) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull contains invalid mask (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@35981.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_94 & _T_332) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@35982.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_100 & _T_400) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutPartial type unsupported by manager (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@36051.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_100 & _T_400) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@36052.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_100 & _T_156) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial address not aligned to size (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@36065.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_100 & _T_156) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@36066.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_100 & _T_494) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial contains invalid mask (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@36083.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_100 & _T_494) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@36084.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_106 & _T_553) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Arithmetic type unsupported by manager (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@36148.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_106 & _T_553) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@36149.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_106 & _T_156) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic address not aligned to size (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@36162.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_106 & _T_156) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@36163.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_106 & _T_332) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic contains invalid mask (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@36178.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_106 & _T_332) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@36179.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_112 & _T_553) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Logical type unsupported by manager (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@36243.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_112 & _T_553) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@36244.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_112 & _T_156) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical address not aligned to size (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@36257.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_112 & _T_156) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@36258.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_112 & _T_332) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical contains invalid mask (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@36273.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_112 & _T_332) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@36274.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_118 & _T_704) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Hint type unsupported by manager (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@36343.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_118 & _T_704) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@36344.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_118 & _T_156) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint address not aligned to size (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@36357.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_118 & _T_156) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@36358.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_118 & _T_332) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint contains invalid mask (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@36373.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_118 & _T_332) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@36374.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel has invalid opcode (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36392.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36393.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_124 & _T_733) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck carries invalid source ID (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36406.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_124 & _T_733) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36407.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_124 & _T_737) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck smaller than a beat (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36414.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_124 & _T_737) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36415.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_124 & _T_741) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseeAck carries invalid param (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36422.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_124 & _T_741) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36423.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_124 & _T_745) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck is corrupt (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36430.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_124 & _T_745) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36431.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_124 & _T_749) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck is denied (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36438.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_124 & _T_749) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36439.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_134 & _T_733) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid source ID (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36448.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_134 & _T_733) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36449.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_134 & _T_737) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant smaller than a beat (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36463.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_134 & _T_737) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36464.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_134 & _T_764) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid cap param (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36471.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_134 & _T_764) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36472.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_134 & _T_768) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries toN param (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36479.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_134 & _T_768) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36480.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_134 & _T_745) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant is corrupt (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36487.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_134 & _T_745) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36488.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_144 & _T_733) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid source ID (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36506.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_144 & _T_733) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36507.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_144 & _T_737) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData smaller than a beat (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36521.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_144 & _T_737) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36522.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_144 & _T_764) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid cap param (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36529.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_144 & _T_764) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36530.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_144 & _T_768) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries toN param (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36537.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_144 & _T_768) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36538.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_144 & _T_801) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData is denied but not corrupt (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36546.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_144 & _T_801) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36547.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_154 & _T_733) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck carries invalid source ID (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36565.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_154 & _T_733) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36566.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_154 & _T_741) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck carries invalid param (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36573.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_154 & _T_741) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36574.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_154 & _T_745) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck is corrupt (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36581.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_154 & _T_745) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36582.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_160 & _T_733) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData carries invalid source ID (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36600.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_160 & _T_733) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36601.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_160 & _T_741) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData carries invalid param (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36608.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_160 & _T_741) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36609.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_160 & _T_801) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData is denied but not corrupt (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36617.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_160 & _T_801) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36618.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_166 & _T_733) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck carries invalid source ID (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36636.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_166 & _T_733) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36637.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_166 & _T_741) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck carries invalid param (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36644.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_166 & _T_741) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36645.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_166 & _T_745) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck is corrupt (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36652.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_166 & _T_745) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36653.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel opcode changed within multibeat operation (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@36732.8]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@36733.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel size changed within multibeat operation (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@36748.8]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@36749.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel address changed with multibeat operation (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@36764.8]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@36765.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel opcode changed within multibeat operation (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36813.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36814.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel param changed within multibeat operation (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36821.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36822.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel size changed within multibeat operation (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36829.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36830.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_949 & _T_965) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel source changed within multibeat operation (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36837.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_949 & _T_965) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36838.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel sink changed with multibeat operation (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36845.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36846.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel denied changed with multibeat operation (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36853.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@36854.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel re-used a source ID (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@36990.8]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@36991.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel acknowledged for nothing inflight (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@37041.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@37042.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper opcode response (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@37058.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@37059.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper response size (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@37069.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@37070.8]
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
          $fwrite(32'h80000002,"Assertion failed: ready check\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@37087.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@37088.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' and 'D' concurrent, despite minlatency 4 (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@37099.6]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@37100.6]
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
          $fwrite(32'h80000002,"Assertion failed: TileLink timeout expired (connected at CrossingHelper.scala:30:80)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@37127.6]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@37128.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
