module TLMonitor_2( // @[:chipyard.TestHarness.RocketConfig.fir@6134.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@6135.4]
  input         reset, // @[:chipyard.TestHarness.RocketConfig.fir@6136.4]
  input         io_in_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@6137.4]
  input         io_in_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@6137.4]
  input  [2:0]  io_in_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@6137.4]
  input  [2:0]  io_in_a_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@6137.4]
  input  [3:0]  io_in_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@6137.4]
  input         io_in_a_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@6137.4]
  input  [31:0] io_in_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@6137.4]
  input  [7:0]  io_in_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@6137.4]
  input         io_in_a_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@6137.4]
  input         io_in_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@6137.4]
  input         io_in_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@6137.4]
  input  [2:0]  io_in_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@6137.4]
  input  [1:0]  io_in_d_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@6137.4]
  input  [3:0]  io_in_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@6137.4]
  input  [2:0]  io_in_d_bits_sink, // @[:chipyard.TestHarness.RocketConfig.fir@6137.4]
  input         io_in_d_bits_denied, // @[:chipyard.TestHarness.RocketConfig.fir@6137.4]
  input         io_in_d_bits_corrupt // @[:chipyard.TestHarness.RocketConfig.fir@6137.4]
);
  wire [31:0] plusarg_reader_out; // @[PlusArg.scala 44:11:chipyard.TestHarness.RocketConfig.fir@7815.4]
  wire  _T_4; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@6148.6]
  wire [26:0] _T_7; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@6153.6]
  wire [11:0] _T_9; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@6155.6]
  wire [31:0] _GEN_56; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@6156.6]
  wire [31:0] _T_10; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@6156.6]
  wire  _T_11; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@6157.6]
  wire [3:0] _T_14; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@6160.6]
  wire [2:0] _T_16; // @[Misc.scala 201:81:chipyard.TestHarness.RocketConfig.fir@6162.6]
  wire  _T_17; // @[Misc.scala 205:21:chipyard.TestHarness.RocketConfig.fir@6163.6]
  wire  _T_20; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@6166.6]
  wire  _T_22; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@6168.6]
  wire  _T_23; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@6169.6]
  wire  _T_25; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@6171.6]
  wire  _T_26; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@6172.6]
  wire  _T_29; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@6175.6]
  wire  _T_30; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@6176.6]
  wire  _T_31; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@6177.6]
  wire  _T_32; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@6178.6]
  wire  _T_33; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@6179.6]
  wire  _T_34; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@6180.6]
  wire  _T_35; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@6181.6]
  wire  _T_36; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@6182.6]
  wire  _T_37; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@6183.6]
  wire  _T_38; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@6184.6]
  wire  _T_39; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@6185.6]
  wire  _T_40; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@6186.6]
  wire  _T_41; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@6187.6]
  wire  _T_44; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@6190.6]
  wire  _T_45; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@6191.6]
  wire  _T_46; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@6192.6]
  wire  _T_47; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@6193.6]
  wire  _T_48; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@6194.6]
  wire  _T_49; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@6195.6]
  wire  _T_50; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@6196.6]
  wire  _T_51; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@6197.6]
  wire  _T_52; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@6198.6]
  wire  _T_53; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@6199.6]
  wire  _T_54; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@6200.6]
  wire  _T_55; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@6201.6]
  wire  _T_56; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@6202.6]
  wire  _T_57; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@6203.6]
  wire  _T_58; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@6204.6]
  wire  _T_59; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@6205.6]
  wire  _T_60; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@6206.6]
  wire  _T_61; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@6207.6]
  wire  _T_62; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@6208.6]
  wire  _T_63; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@6209.6]
  wire  _T_64; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@6210.6]
  wire  _T_65; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@6211.6]
  wire  _T_66; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@6212.6]
  wire  _T_67; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@6213.6]
  wire  _T_68; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@6214.6]
  wire [7:0] _T_75; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@6221.6]
  wire [32:0] _T_79; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@6225.6]
  wire  _T_87; // @[Monitor.scala 79:25:chipyard.TestHarness.RocketConfig.fir@6237.6]
  wire [31:0] _T_89; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@6240.8]
  wire [32:0] _T_90; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@6241.8]
  wire [32:0] _T_92; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@6243.8]
  wire  _T_93; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@6244.8]
  wire [31:0] _T_94; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@6245.8]
  wire [32:0] _T_95; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@6246.8]
  wire [32:0] _T_97; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@6248.8]
  wire  _T_98; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@6249.8]
  wire [31:0] _T_99; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@6250.8]
  wire [32:0] _T_100; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@6251.8]
  wire [32:0] _T_102; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@6253.8]
  wire  _T_103; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@6254.8]
  wire [31:0] _T_104; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@6255.8]
  wire [32:0] _T_105; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@6256.8]
  wire [32:0] _T_107; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@6258.8]
  wire  _T_108; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@6259.8]
  wire [31:0] _T_109; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@6260.8]
  wire [32:0] _T_110; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@6261.8]
  wire [32:0] _T_112; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@6263.8]
  wire  _T_113; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@6264.8]
  wire [32:0] _T_117; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@6268.8]
  wire  _T_118; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@6269.8]
  wire [31:0] _T_119; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@6270.8]
  wire [32:0] _T_120; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@6271.8]
  wire [32:0] _T_122; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@6273.8]
  wire  _T_123; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@6274.8]
  wire  _T_124; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@6275.8]
  wire  _T_125; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@6276.8]
  wire  _T_126; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@6277.8]
  wire  _T_127; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@6278.8]
  wire  _T_128; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@6279.8]
  wire  _T_131; // @[Parameters.scala 92:48:chipyard.TestHarness.RocketConfig.fir@6282.8]
  wire [31:0] _T_133; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@6284.8]
  wire [32:0] _T_134; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@6285.8]
  wire [32:0] _T_136; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@6287.8]
  wire  _T_137; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@6288.8]
  wire  _T_138; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@6289.8]
  wire  _T_142; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6293.8]
  wire  _T_143; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6294.8]
  wire  _T_146; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6301.8]
  wire  _T_148; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6307.8]
  wire  _T_149; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6308.8]
  wire  _T_152; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6315.8]
  wire  _T_153; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6316.8]
  wire  _T_155; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6322.8]
  wire  _T_156; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6323.8]
  wire  _T_157; // @[Bundles.scala 110:27:chipyard.TestHarness.RocketConfig.fir@6328.8]
  wire  _T_159; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6330.8]
  wire  _T_160; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6331.8]
  wire [7:0] _T_161; // @[Monitor.scala 86:18:chipyard.TestHarness.RocketConfig.fir@6336.8]
  wire  _T_162; // @[Monitor.scala 86:31:chipyard.TestHarness.RocketConfig.fir@6337.8]
  wire  _T_164; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6339.8]
  wire  _T_165; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6340.8]
  wire  _T_166; // @[Monitor.scala 87:18:chipyard.TestHarness.RocketConfig.fir@6345.8]
  wire  _T_168; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6347.8]
  wire  _T_169; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6348.8]
  wire  _T_170; // @[Monitor.scala 90:25:chipyard.TestHarness.RocketConfig.fir@6354.6]
  wire  _T_244; // @[Monitor.scala 97:31:chipyard.TestHarness.RocketConfig.fir@6453.8]
  wire  _T_246; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6455.8]
  wire  _T_247; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6456.8]
  wire  _T_257; // @[Monitor.scala 102:25:chipyard.TestHarness.RocketConfig.fir@6479.6]
  wire  _T_259; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@6482.8]
  wire  _T_267; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@6490.8]
  wire  _T_269; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@6492.8]
  wire  _T_307; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@6530.8]
  wire  _T_308; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@6531.8]
  wire  _T_309; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@6532.8]
  wire  _T_310; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@6533.8]
  wire  _T_311; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@6534.8]
  wire  _T_312; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@6535.8]
  wire  _T_313; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@6536.8]
  wire  _T_315; // @[Parameters.scala 553:30:chipyard.TestHarness.RocketConfig.fir@6538.8]
  wire  _T_317; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6540.8]
  wire  _T_318; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6541.8]
  wire  _T_325; // @[Monitor.scala 106:31:chipyard.TestHarness.RocketConfig.fir@6560.8]
  wire  _T_327; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6562.8]
  wire  _T_328; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6563.8]
  wire  _T_329; // @[Monitor.scala 107:30:chipyard.TestHarness.RocketConfig.fir@6568.8]
  wire  _T_331; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6570.8]
  wire  _T_332; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6571.8]
  wire  _T_337; // @[Monitor.scala 111:25:chipyard.TestHarness.RocketConfig.fir@6585.6]
  wire  _T_386; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@6635.8]
  wire  _T_387; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@6636.8]
  wire  _T_396; // @[Parameters.scala 553:30:chipyard.TestHarness.RocketConfig.fir@6645.8]
  wire  _T_399; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6648.8]
  wire  _T_400; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6649.8]
  wire  _T_415; // @[Monitor.scala 119:25:chipyard.TestHarness.RocketConfig.fir@6685.6]
  wire [7:0] _T_489; // @[Monitor.scala 124:33:chipyard.TestHarness.RocketConfig.fir@6776.8]
  wire [7:0] _T_490; // @[Monitor.scala 124:31:chipyard.TestHarness.RocketConfig.fir@6777.8]
  wire  _T_491; // @[Monitor.scala 124:40:chipyard.TestHarness.RocketConfig.fir@6778.8]
  wire  _T_493; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6780.8]
  wire  _T_494; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6781.8]
  wire  _T_495; // @[Monitor.scala 127:25:chipyard.TestHarness.RocketConfig.fir@6787.6]
  wire  _T_497; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@6790.8]
  wire  _T_540; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@6833.8]
  wire  _T_541; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@6834.8]
  wire  _T_552; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6845.8]
  wire  _T_553; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6846.8]
  wire  _T_560; // @[Bundles.scala 140:33:chipyard.TestHarness.RocketConfig.fir@6865.8]
  wire  _T_562; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6867.8]
  wire  _T_563; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6868.8]
  wire  _T_568; // @[Monitor.scala 135:25:chipyard.TestHarness.RocketConfig.fir@6882.6]
  wire  _T_633; // @[Bundles.scala 147:30:chipyard.TestHarness.RocketConfig.fir@6960.8]
  wire  _T_635; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6962.8]
  wire  _T_636; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6963.8]
  wire  _T_641; // @[Monitor.scala 143:25:chipyard.TestHarness.RocketConfig.fir@6977.6]
  wire  _T_698; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@7035.8]
  wire  _T_701; // @[Parameters.scala 553:30:chipyard.TestHarness.RocketConfig.fir@7038.8]
  wire  _T_703; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@7040.8]
  wire  _T_704; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@7041.8]
  wire  _T_711; // @[Bundles.scala 160:28:chipyard.TestHarness.RocketConfig.fir@7060.8]
  wire  _T_713; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@7062.8]
  wire  _T_714; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@7063.8]
  wire  _T_723; // @[Bundles.scala 44:24:chipyard.TestHarness.RocketConfig.fir@7087.6]
  wire  _T_725; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7089.6]
  wire  _T_726; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7090.6]
  wire  _T_730; // @[Monitor.scala 307:25:chipyard.TestHarness.RocketConfig.fir@7100.6]
  wire  _T_734; // @[Monitor.scala 309:27:chipyard.TestHarness.RocketConfig.fir@7109.8]
  wire  _T_736; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7111.8]
  wire  _T_737; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7112.8]
  wire  _T_738; // @[Monitor.scala 310:28:chipyard.TestHarness.RocketConfig.fir@7117.8]
  wire  _T_740; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7119.8]
  wire  _T_741; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7120.8]
  wire  _T_742; // @[Monitor.scala 311:15:chipyard.TestHarness.RocketConfig.fir@7125.8]
  wire  _T_744; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7127.8]
  wire  _T_745; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7128.8]
  wire  _T_746; // @[Monitor.scala 312:15:chipyard.TestHarness.RocketConfig.fir@7133.8]
  wire  _T_748; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7135.8]
  wire  _T_749; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7136.8]
  wire  _T_750; // @[Monitor.scala 315:25:chipyard.TestHarness.RocketConfig.fir@7142.6]
  wire  _T_761; // @[Bundles.scala 104:26:chipyard.TestHarness.RocketConfig.fir@7166.8]
  wire  _T_763; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7168.8]
  wire  _T_764; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7169.8]
  wire  _T_765; // @[Monitor.scala 320:28:chipyard.TestHarness.RocketConfig.fir@7174.8]
  wire  _T_767; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7176.8]
  wire  _T_768; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7177.8]
  wire  _T_778; // @[Monitor.scala 325:25:chipyard.TestHarness.RocketConfig.fir@7200.6]
  wire  _T_798; // @[Monitor.scala 331:30:chipyard.TestHarness.RocketConfig.fir@7241.8]
  wire  _T_800; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7243.8]
  wire  _T_801; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7244.8]
  wire  _T_807; // @[Monitor.scala 335:25:chipyard.TestHarness.RocketConfig.fir@7259.6]
  wire  _T_824; // @[Monitor.scala 343:25:chipyard.TestHarness.RocketConfig.fir@7294.6]
  wire  _T_842; // @[Monitor.scala 351:25:chipyard.TestHarness.RocketConfig.fir@7330.6]
  wire  _T_874; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@7396.4]
  wire  _T_881; // @[Edges.scala 93:28:chipyard.TestHarness.RocketConfig.fir@7403.4]
  reg [8:0] _T_883; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@7405.4]
  reg [31:0] _RAND_0;
  wire [8:0] _T_885; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@7407.4]
  wire  _T_886; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@7408.4]
  reg [2:0] _T_894; // @[Monitor.scala 381:22:chipyard.TestHarness.RocketConfig.fir@7419.4]
  reg [31:0] _RAND_1;
  reg [2:0] _T_895; // @[Monitor.scala 382:22:chipyard.TestHarness.RocketConfig.fir@7420.4]
  reg [31:0] _RAND_2;
  reg [3:0] _T_896; // @[Monitor.scala 383:22:chipyard.TestHarness.RocketConfig.fir@7421.4]
  reg [31:0] _RAND_3;
  reg  _T_897; // @[Monitor.scala 384:22:chipyard.TestHarness.RocketConfig.fir@7422.4]
  reg [31:0] _RAND_4;
  reg [31:0] _T_898; // @[Monitor.scala 385:22:chipyard.TestHarness.RocketConfig.fir@7423.4]
  reg [31:0] _RAND_5;
  wire  _T_899; // @[Monitor.scala 386:22:chipyard.TestHarness.RocketConfig.fir@7424.4]
  wire  _T_900; // @[Monitor.scala 386:19:chipyard.TestHarness.RocketConfig.fir@7425.4]
  wire  _T_901; // @[Monitor.scala 387:32:chipyard.TestHarness.RocketConfig.fir@7427.6]
  wire  _T_903; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@7429.6]
  wire  _T_904; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@7430.6]
  wire  _T_905; // @[Monitor.scala 388:32:chipyard.TestHarness.RocketConfig.fir@7435.6]
  wire  _T_907; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@7437.6]
  wire  _T_908; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@7438.6]
  wire  _T_909; // @[Monitor.scala 389:32:chipyard.TestHarness.RocketConfig.fir@7443.6]
  wire  _T_911; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@7445.6]
  wire  _T_912; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@7446.6]
  wire  _T_913; // @[Monitor.scala 390:32:chipyard.TestHarness.RocketConfig.fir@7451.6]
  wire  _T_915; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@7453.6]
  wire  _T_916; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@7454.6]
  wire  _T_917; // @[Monitor.scala 391:32:chipyard.TestHarness.RocketConfig.fir@7459.6]
  wire  _T_919; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@7461.6]
  wire  _T_920; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@7462.6]
  wire  _T_922; // @[Monitor.scala 393:20:chipyard.TestHarness.RocketConfig.fir@7469.4]
  wire  _T_923; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@7477.4]
  wire [26:0] _T_925; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@7479.4]
  wire [11:0] _T_927; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@7481.4]
  reg [8:0] _T_931; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@7485.4]
  reg [31:0] _RAND_6;
  wire [8:0] _T_933; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@7487.4]
  wire  _T_934; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@7488.4]
  reg [2:0] _T_942; // @[Monitor.scala 532:22:chipyard.TestHarness.RocketConfig.fir@7499.4]
  reg [31:0] _RAND_7;
  reg [1:0] _T_943; // @[Monitor.scala 533:22:chipyard.TestHarness.RocketConfig.fir@7500.4]
  reg [31:0] _RAND_8;
  reg [3:0] _T_944; // @[Monitor.scala 534:22:chipyard.TestHarness.RocketConfig.fir@7501.4]
  reg [31:0] _RAND_9;
  reg [2:0] _T_946; // @[Monitor.scala 536:22:chipyard.TestHarness.RocketConfig.fir@7503.4]
  reg [31:0] _RAND_10;
  reg  _T_947; // @[Monitor.scala 537:22:chipyard.TestHarness.RocketConfig.fir@7504.4]
  reg [31:0] _RAND_11;
  wire  _T_948; // @[Monitor.scala 538:22:chipyard.TestHarness.RocketConfig.fir@7505.4]
  wire  _T_949; // @[Monitor.scala 538:19:chipyard.TestHarness.RocketConfig.fir@7506.4]
  wire  _T_950; // @[Monitor.scala 539:29:chipyard.TestHarness.RocketConfig.fir@7508.6]
  wire  _T_952; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7510.6]
  wire  _T_953; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7511.6]
  wire  _T_954; // @[Monitor.scala 540:29:chipyard.TestHarness.RocketConfig.fir@7516.6]
  wire  _T_956; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7518.6]
  wire  _T_957; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7519.6]
  wire  _T_958; // @[Monitor.scala 541:29:chipyard.TestHarness.RocketConfig.fir@7524.6]
  wire  _T_960; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7526.6]
  wire  _T_961; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7527.6]
  wire  _T_966; // @[Monitor.scala 543:29:chipyard.TestHarness.RocketConfig.fir@7540.6]
  wire  _T_968; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7542.6]
  wire  _T_969; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7543.6]
  wire  _T_970; // @[Monitor.scala 544:29:chipyard.TestHarness.RocketConfig.fir@7548.6]
  wire  _T_972; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7550.6]
  wire  _T_973; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7551.6]
  wire  _T_975; // @[Monitor.scala 546:20:chipyard.TestHarness.RocketConfig.fir@7558.4]
  reg  inflight; // @[Monitor.scala 608:27:chipyard.TestHarness.RocketConfig.fir@7567.4]
  reg [31:0] _RAND_12;
  reg [3:0] inflight_opcodes; // @[Monitor.scala 610:35:chipyard.TestHarness.RocketConfig.fir@7568.4]
  reg [31:0] _RAND_13;
  reg [7:0] inflight_sizes; // @[Monitor.scala 612:33:chipyard.TestHarness.RocketConfig.fir@7569.4]
  reg [31:0] _RAND_14;
  reg [8:0] _T_985; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@7579.4]
  reg [31:0] _RAND_15;
  wire [8:0] _T_987; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@7581.4]
  wire  a_first; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@7582.4]
  reg [8:0] _T_1003; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@7601.4]
  reg [31:0] _RAND_16;
  wire [8:0] _T_1005; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@7603.4]
  wire  d_first; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@7604.4]
  wire [15:0] _T_1018; // @[Monitor.scala 606:57:chipyard.TestHarness.RocketConfig.fir@7628.4]
  wire [15:0] _GEN_57; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@7629.4]
  wire [15:0] _T_1019; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@7629.4]
  wire [15:0] _T_1020; // @[Monitor.scala 629:152:chipyard.TestHarness.RocketConfig.fir@7630.4]
  wire [15:0] _T_1026; // @[Monitor.scala 606:57:chipyard.TestHarness.RocketConfig.fir@7639.4]
  wire [15:0] _GEN_59; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@7640.4]
  wire [15:0] _T_1027; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@7640.4]
  wire [15:0] _T_1028; // @[Monitor.scala 633:144:chipyard.TestHarness.RocketConfig.fir@7641.4]
  wire  _T_1032; // @[Monitor.scala 643:27:chipyard.TestHarness.RocketConfig.fir@7666.4]
  wire [1:0] _T_1034; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@7669.6]
  wire [3:0] _T_1035; // @[Monitor.scala 645:53:chipyard.TestHarness.RocketConfig.fir@7671.6]
  wire [3:0] _T_1036; // @[Monitor.scala 645:61:chipyard.TestHarness.RocketConfig.fir@7672.6]
  wire [4:0] _T_1037; // @[Monitor.scala 646:49:chipyard.TestHarness.RocketConfig.fir@7674.6]
  wire [4:0] _T_1038; // @[Monitor.scala 646:57:chipyard.TestHarness.RocketConfig.fir@7675.6]
  wire [2:0] _GEN_61; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@7677.6]
  wire [3:0] _T_1039; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@7677.6]
  wire [3:0] a_opcodes_set_interm; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@7668.4]
  wire [18:0] _GEN_62; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@7678.6]
  wire [18:0] _T_1040; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@7678.6]
  wire [3:0] _T_1041; // @[Monitor.scala 648:68:chipyard.TestHarness.RocketConfig.fir@7680.6]
  wire [4:0] a_sizes_set_interm; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@7668.4]
  wire [19:0] _GEN_63; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@7681.6]
  wire [19:0] _T_1042; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@7681.6]
  wire  _T_1043; // @[Monitor.scala 649:26:chipyard.TestHarness.RocketConfig.fir@7683.6]
  wire  _T_1045; // @[Monitor.scala 649:17:chipyard.TestHarness.RocketConfig.fir@7685.6]
  wire  _T_1047; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@7687.6]
  wire  _T_1048; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@7688.6]
  wire [1:0] _GEN_15; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@7668.4]
  wire [18:0] _GEN_18; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@7668.4]
  wire [19:0] _GEN_19; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@7668.4]
  wire  _T_1051; // @[Monitor.scala 660:27:chipyard.TestHarness.RocketConfig.fir@7702.4]
  wire  _T_1053; // @[Monitor.scala 660:75:chipyard.TestHarness.RocketConfig.fir@7704.4]
  wire  _T_1054; // @[Monitor.scala 660:72:chipyard.TestHarness.RocketConfig.fir@7705.4]
  wire [30:0] _T_1061; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@7714.6]
  wire [30:0] _T_1067; // @[Monitor.scala 663:72:chipyard.TestHarness.RocketConfig.fir@7721.6]
  wire [1:0] _GEN_20; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@7706.4]
  wire [30:0] _GEN_21; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@7706.4]
  wire [30:0] _GEN_22; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@7706.4]
  wire  _T_1068; // @[Monitor.scala 665:26:chipyard.TestHarness.RocketConfig.fir@7724.4]
  wire  _T_1071; // @[Monitor.scala 665:71:chipyard.TestHarness.RocketConfig.fir@7727.4]
  wire  _T_1075; // @[Monitor.scala 666:68:chipyard.TestHarness.RocketConfig.fir@7732.6]
  wire  _T_1076; // @[Monitor.scala 666:142:chipyard.TestHarness.RocketConfig.fir@7733.6]
  wire  _T_1077; // @[Monitor.scala 666:119:chipyard.TestHarness.RocketConfig.fir@7734.6]
  wire  _T_1078; // @[Monitor.scala 666:166:chipyard.TestHarness.RocketConfig.fir@7735.6]
  wire  _T_1079; // @[Monitor.scala 666:49:chipyard.TestHarness.RocketConfig.fir@7736.6]
  wire  _T_1081; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7738.6]
  wire  _T_1082; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7739.6]
  wire [3:0] a_opcode_lookup; // @[:chipyard.TestHarness.RocketConfig.fir@7621.4 :chipyard.TestHarness.RocketConfig.fir@7622.4 Monitor.scala 629:21:chipyard.TestHarness.RocketConfig.fir@7631.4]
  wire [2:0] _GEN_25; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@7745.6]
  wire [2:0] _GEN_26; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@7745.6]
  wire [2:0] _GEN_27; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@7745.6]
  wire [2:0] _GEN_28; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@7745.6]
  wire [2:0] _GEN_29; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@7745.6]
  wire [2:0] _GEN_30; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@7745.6]
  wire  _T_1084; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@7745.6]
  wire [2:0] _GEN_37; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@7747.6]
  wire [2:0] _GEN_38; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@7747.6]
  wire  _T_1086; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@7747.6]
  wire  _T_1087; // @[Monitor.scala 667:71:chipyard.TestHarness.RocketConfig.fir@7748.6]
  wire [2:0] _GEN_41; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@7749.6]
  wire [2:0] _GEN_42; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@7749.6]
  wire [2:0] _GEN_43; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@7749.6]
  wire [2:0] _GEN_44; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@7749.6]
  wire [2:0] _GEN_45; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@7749.6]
  wire [2:0] _GEN_46; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@7749.6]
  wire  _T_1088; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@7749.6]
  wire [2:0] _GEN_53; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@7750.6]
  wire [2:0] _GEN_54; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@7750.6]
  wire  _T_1089; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@7750.6]
  wire  _T_1090; // @[Monitor.scala 668:99:chipyard.TestHarness.RocketConfig.fir@7751.6]
  wire  _T_1091; // @[Monitor.scala 668:34:chipyard.TestHarness.RocketConfig.fir@7752.6]
  wire  _T_1092; // @[Monitor.scala 668:15:chipyard.TestHarness.RocketConfig.fir@7753.6]
  wire  _T_1094; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7755.6]
  wire  _T_1095; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7756.6]
  wire [7:0] a_size_lookup; // @[:chipyard.TestHarness.RocketConfig.fir@7632.4 :chipyard.TestHarness.RocketConfig.fir@7633.4 Monitor.scala 633:19:chipyard.TestHarness.RocketConfig.fir@7642.4]
  wire [7:0] _GEN_64; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@7761.6]
  wire  _T_1096; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@7761.6]
  wire  _T_1098; // @[Monitor.scala 670:72:chipyard.TestHarness.RocketConfig.fir@7763.6]
  wire  _T_1099; // @[Monitor.scala 670:53:chipyard.TestHarness.RocketConfig.fir@7764.6]
  wire  _T_1101; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7766.6]
  wire  _T_1102; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7767.6]
  wire  _T_1104; // @[Monitor.scala 672:36:chipyard.TestHarness.RocketConfig.fir@7774.4]
  wire  _T_1105; // @[Monitor.scala 672:47:chipyard.TestHarness.RocketConfig.fir@7775.4]
  wire  _T_1107; // @[Monitor.scala 672:65:chipyard.TestHarness.RocketConfig.fir@7777.4]
  wire  _T_1109; // @[Monitor.scala 672:116:chipyard.TestHarness.RocketConfig.fir@7779.4]
  wire  _T_1110; // @[Monitor.scala 673:15:chipyard.TestHarness.RocketConfig.fir@7781.6]
  wire  _T_1111; // @[Monitor.scala 673:32:chipyard.TestHarness.RocketConfig.fir@7782.6]
  wire  _T_1113; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7784.6]
  wire  _T_1114; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7785.6]
  wire  a_set; // @[:chipyard.TestHarness.RocketConfig.fir@7615.4 :chipyard.TestHarness.RocketConfig.fir@7616.4 Monitor.scala 644:13:chipyard.TestHarness.RocketConfig.fir@7670.6]
  wire  d_clr; // @[:chipyard.TestHarness.RocketConfig.fir@7694.4 :chipyard.TestHarness.RocketConfig.fir@7695.4 Monitor.scala 661:13:chipyard.TestHarness.RocketConfig.fir@7708.6]
  wire  _T_1115; // @[Monitor.scala 677:20:chipyard.TestHarness.RocketConfig.fir@7791.4]
  wire  _T_1116; // @[Monitor.scala 677:40:chipyard.TestHarness.RocketConfig.fir@7792.4]
  wire  _T_1117; // @[Monitor.scala 677:33:chipyard.TestHarness.RocketConfig.fir@7793.4]
  wire  _T_1118; // @[Monitor.scala 677:30:chipyard.TestHarness.RocketConfig.fir@7794.4]
  wire  _T_1120; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7796.4]
  wire  _T_1121; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7797.4]
  wire  _T_1122; // @[Monitor.scala 680:27:chipyard.TestHarness.RocketConfig.fir@7802.4]
  wire  _T_1123; // @[Monitor.scala 680:38:chipyard.TestHarness.RocketConfig.fir@7803.4]
  wire  _T_1124; // @[Monitor.scala 680:36:chipyard.TestHarness.RocketConfig.fir@7804.4]
  wire [3:0] a_opcodes_set; // @[:chipyard.TestHarness.RocketConfig.fir@7617.4 :chipyard.TestHarness.RocketConfig.fir@7618.4 Monitor.scala 647:21:chipyard.TestHarness.RocketConfig.fir@7679.6]
  wire [3:0] _T_1125; // @[Monitor.scala 681:43:chipyard.TestHarness.RocketConfig.fir@7806.4]
  wire [3:0] d_opcodes_clr; // @[:chipyard.TestHarness.RocketConfig.fir@7696.4 :chipyard.TestHarness.RocketConfig.fir@7697.4 Monitor.scala 662:21:chipyard.TestHarness.RocketConfig.fir@7715.6]
  wire [3:0] _T_1126; // @[Monitor.scala 681:62:chipyard.TestHarness.RocketConfig.fir@7807.4]
  wire [3:0] _T_1127; // @[Monitor.scala 681:60:chipyard.TestHarness.RocketConfig.fir@7808.4]
  wire [7:0] a_sizes_set; // @[:chipyard.TestHarness.RocketConfig.fir@7619.4 :chipyard.TestHarness.RocketConfig.fir@7620.4 Monitor.scala 648:19:chipyard.TestHarness.RocketConfig.fir@7682.6]
  wire [7:0] _T_1128; // @[Monitor.scala 682:39:chipyard.TestHarness.RocketConfig.fir@7810.4]
  wire [7:0] d_sizes_clr; // @[:chipyard.TestHarness.RocketConfig.fir@7698.4 :chipyard.TestHarness.RocketConfig.fir@7699.4 Monitor.scala 663:19:chipyard.TestHarness.RocketConfig.fir@7722.6]
  wire [7:0] _T_1129; // @[Monitor.scala 682:56:chipyard.TestHarness.RocketConfig.fir@7811.4]
  wire [7:0] _T_1130; // @[Monitor.scala 682:54:chipyard.TestHarness.RocketConfig.fir@7812.4]
  reg [31:0] _T_1131; // @[Monitor.scala 684:27:chipyard.TestHarness.RocketConfig.fir@7814.4]
  reg [31:0] _RAND_17;
  wire  _T_1132; // @[Monitor.scala 687:26:chipyard.TestHarness.RocketConfig.fir@7817.4]
  wire  _T_1133; // @[Monitor.scala 687:16:chipyard.TestHarness.RocketConfig.fir@7818.4]
  wire  _T_1134; // @[Monitor.scala 687:39:chipyard.TestHarness.RocketConfig.fir@7819.4]
  wire  _T_1135; // @[Monitor.scala 687:30:chipyard.TestHarness.RocketConfig.fir@7820.4]
  wire  _T_1136; // @[Monitor.scala 687:59:chipyard.TestHarness.RocketConfig.fir@7821.4]
  wire  _T_1137; // @[Monitor.scala 687:47:chipyard.TestHarness.RocketConfig.fir@7822.4]
  wire  _T_1139; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@7824.4]
  wire  _T_1140; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@7825.4]
  wire [31:0] _T_1142; // @[Monitor.scala 689:26:chipyard.TestHarness.RocketConfig.fir@7831.4]
  wire  _T_1145; // @[Monitor.scala 690:27:chipyard.TestHarness.RocketConfig.fir@7835.4]
  wire  _GEN_65; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6296.10]
  wire  _GEN_81; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6413.10]
  wire  _GEN_99; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6543.10]
  wire  _GEN_111; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6651.10]
  wire  _GEN_121; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6751.10]
  wire  _GEN_131; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6848.10]
  wire  _GEN_141; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6943.10]
  wire  _GEN_151; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@7043.10]
  wire  _GEN_163; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7114.10]
  wire  _GEN_171; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7163.10]
  wire  _GEN_179; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7221.10]
  wire  _GEN_187; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7273.10]
  wire  _GEN_191; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7308.10]
  wire  _GEN_195; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7344.10]
  plusarg_reader #(.FORMAT("tilelink_timeout=%d"), .DEFAULT(0), .WIDTH(32)) plusarg_reader ( // @[PlusArg.scala 44:11:chipyard.TestHarness.RocketConfig.fir@7815.4]
    .out(plusarg_reader_out)
  );
  assign _T_4 = ~io_in_a_bits_source; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@6148.6]
  assign _T_7 = 27'hfff << io_in_a_bits_size; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@6153.6]
  assign _T_9 = ~_T_7[11:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@6155.6]
  assign _GEN_56 = {{20'd0}, _T_9}; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@6156.6]
  assign _T_10 = io_in_a_bits_address & _GEN_56; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@6156.6]
  assign _T_11 = _T_10 == 32'h0; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@6157.6]
  assign _T_14 = 4'h1 << io_in_a_bits_size[1:0]; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@6160.6]
  assign _T_16 = _T_14[2:0] | 3'h1; // @[Misc.scala 201:81:chipyard.TestHarness.RocketConfig.fir@6162.6]
  assign _T_17 = io_in_a_bits_size >= 4'h3; // @[Misc.scala 205:21:chipyard.TestHarness.RocketConfig.fir@6163.6]
  assign _T_20 = ~io_in_a_bits_address[2]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@6166.6]
  assign _T_22 = _T_16[2] & _T_20; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@6168.6]
  assign _T_23 = _T_17 | _T_22; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@6169.6]
  assign _T_25 = _T_16[2] & io_in_a_bits_address[2]; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@6171.6]
  assign _T_26 = _T_17 | _T_25; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@6172.6]
  assign _T_29 = ~io_in_a_bits_address[1]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@6175.6]
  assign _T_30 = _T_20 & _T_29; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@6176.6]
  assign _T_31 = _T_16[1] & _T_30; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@6177.6]
  assign _T_32 = _T_23 | _T_31; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@6178.6]
  assign _T_33 = _T_20 & io_in_a_bits_address[1]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@6179.6]
  assign _T_34 = _T_16[1] & _T_33; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@6180.6]
  assign _T_35 = _T_23 | _T_34; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@6181.6]
  assign _T_36 = io_in_a_bits_address[2] & _T_29; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@6182.6]
  assign _T_37 = _T_16[1] & _T_36; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@6183.6]
  assign _T_38 = _T_26 | _T_37; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@6184.6]
  assign _T_39 = io_in_a_bits_address[2] & io_in_a_bits_address[1]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@6185.6]
  assign _T_40 = _T_16[1] & _T_39; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@6186.6]
  assign _T_41 = _T_26 | _T_40; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@6187.6]
  assign _T_44 = ~io_in_a_bits_address[0]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@6190.6]
  assign _T_45 = _T_30 & _T_44; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@6191.6]
  assign _T_46 = _T_16[0] & _T_45; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@6192.6]
  assign _T_47 = _T_32 | _T_46; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@6193.6]
  assign _T_48 = _T_30 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@6194.6]
  assign _T_49 = _T_16[0] & _T_48; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@6195.6]
  assign _T_50 = _T_32 | _T_49; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@6196.6]
  assign _T_51 = _T_33 & _T_44; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@6197.6]
  assign _T_52 = _T_16[0] & _T_51; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@6198.6]
  assign _T_53 = _T_35 | _T_52; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@6199.6]
  assign _T_54 = _T_33 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@6200.6]
  assign _T_55 = _T_16[0] & _T_54; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@6201.6]
  assign _T_56 = _T_35 | _T_55; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@6202.6]
  assign _T_57 = _T_36 & _T_44; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@6203.6]
  assign _T_58 = _T_16[0] & _T_57; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@6204.6]
  assign _T_59 = _T_38 | _T_58; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@6205.6]
  assign _T_60 = _T_36 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@6206.6]
  assign _T_61 = _T_16[0] & _T_60; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@6207.6]
  assign _T_62 = _T_38 | _T_61; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@6208.6]
  assign _T_63 = _T_39 & _T_44; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@6209.6]
  assign _T_64 = _T_16[0] & _T_63; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@6210.6]
  assign _T_65 = _T_41 | _T_64; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@6211.6]
  assign _T_66 = _T_39 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@6212.6]
  assign _T_67 = _T_16[0] & _T_66; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@6213.6]
  assign _T_68 = _T_41 | _T_67; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@6214.6]
  assign _T_75 = {_T_68,_T_65,_T_62,_T_59,_T_56,_T_53,_T_50,_T_47}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@6221.6]
  assign _T_79 = {1'b0,$signed(io_in_a_bits_address)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@6225.6]
  assign _T_87 = io_in_a_bits_opcode == 3'h6; // @[Monitor.scala 79:25:chipyard.TestHarness.RocketConfig.fir@6237.6]
  assign _T_89 = io_in_a_bits_address ^ 32'h3000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@6240.8]
  assign _T_90 = {1'b0,$signed(_T_89)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@6241.8]
  assign _T_92 = $signed(_T_90) & -33'sh1000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@6243.8]
  assign _T_93 = $signed(_T_92) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@6244.8]
  assign _T_94 = io_in_a_bits_address ^ 32'h2010000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@6245.8]
  assign _T_95 = {1'b0,$signed(_T_94)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@6246.8]
  assign _T_97 = $signed(_T_95) & -33'sh1000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@6248.8]
  assign _T_98 = $signed(_T_97) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@6249.8]
  assign _T_99 = io_in_a_bits_address ^ 32'h54000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@6250.8]
  assign _T_100 = {1'b0,$signed(_T_99)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@6251.8]
  assign _T_102 = $signed(_T_100) & -33'sh1000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@6253.8]
  assign _T_103 = $signed(_T_102) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@6254.8]
  assign _T_104 = io_in_a_bits_address ^ 32'hc000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@6255.8]
  assign _T_105 = {1'b0,$signed(_T_104)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@6256.8]
  assign _T_107 = $signed(_T_105) & -33'sh4000000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@6258.8]
  assign _T_108 = $signed(_T_107) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@6259.8]
  assign _T_109 = io_in_a_bits_address ^ 32'h2000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@6260.8]
  assign _T_110 = {1'b0,$signed(_T_109)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@6261.8]
  assign _T_112 = $signed(_T_110) & -33'sh10000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@6263.8]
  assign _T_113 = $signed(_T_112) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@6264.8]
  assign _T_117 = $signed(_T_79) & -33'sh1000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@6268.8]
  assign _T_118 = $signed(_T_117) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@6269.8]
  assign _T_119 = io_in_a_bits_address ^ 32'h10000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@6270.8]
  assign _T_120 = {1'b0,$signed(_T_119)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@6271.8]
  assign _T_122 = $signed(_T_120) & -33'sh10000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@6273.8]
  assign _T_123 = $signed(_T_122) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@6274.8]
  assign _T_124 = _T_93 | _T_98; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@6275.8]
  assign _T_125 = _T_124 | _T_103; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@6276.8]
  assign _T_126 = _T_125 | _T_108; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@6277.8]
  assign _T_127 = _T_126 | _T_113; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@6278.8]
  assign _T_128 = _T_127 | _T_118; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@6279.8]
  assign _T_131 = 4'h6 == io_in_a_bits_size; // @[Parameters.scala 92:48:chipyard.TestHarness.RocketConfig.fir@6282.8]
  assign _T_133 = io_in_a_bits_address ^ 32'h80000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@6284.8]
  assign _T_134 = {1'b0,$signed(_T_133)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@6285.8]
  assign _T_136 = $signed(_T_134) & -33'sh10000000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@6287.8]
  assign _T_137 = $signed(_T_136) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@6288.8]
  assign _T_138 = _T_131 & _T_137; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@6289.8]
  assign _T_142 = _T_138 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6293.8]
  assign _T_143 = ~_T_142; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6294.8]
  assign _T_146 = ~reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6301.8]
  assign _T_148 = _T_4 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6307.8]
  assign _T_149 = ~_T_148; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6308.8]
  assign _T_152 = _T_17 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6315.8]
  assign _T_153 = ~_T_152; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6316.8]
  assign _T_155 = _T_11 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6322.8]
  assign _T_156 = ~_T_155; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6323.8]
  assign _T_157 = io_in_a_bits_param <= 3'h2; // @[Bundles.scala 110:27:chipyard.TestHarness.RocketConfig.fir@6328.8]
  assign _T_159 = _T_157 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6330.8]
  assign _T_160 = ~_T_159; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6331.8]
  assign _T_161 = ~io_in_a_bits_mask; // @[Monitor.scala 86:18:chipyard.TestHarness.RocketConfig.fir@6336.8]
  assign _T_162 = _T_161 == 8'h0; // @[Monitor.scala 86:31:chipyard.TestHarness.RocketConfig.fir@6337.8]
  assign _T_164 = _T_162 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6339.8]
  assign _T_165 = ~_T_164; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6340.8]
  assign _T_166 = ~io_in_a_bits_corrupt; // @[Monitor.scala 87:18:chipyard.TestHarness.RocketConfig.fir@6345.8]
  assign _T_168 = _T_166 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6347.8]
  assign _T_169 = ~_T_168; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6348.8]
  assign _T_170 = io_in_a_bits_opcode == 3'h7; // @[Monitor.scala 90:25:chipyard.TestHarness.RocketConfig.fir@6354.6]
  assign _T_244 = io_in_a_bits_param != 3'h0; // @[Monitor.scala 97:31:chipyard.TestHarness.RocketConfig.fir@6453.8]
  assign _T_246 = _T_244 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6455.8]
  assign _T_247 = ~_T_246; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6456.8]
  assign _T_257 = io_in_a_bits_opcode == 3'h4; // @[Monitor.scala 102:25:chipyard.TestHarness.RocketConfig.fir@6479.6]
  assign _T_259 = io_in_a_bits_size <= 4'hc; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@6482.8]
  assign _T_267 = _T_259 & _T_93; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@6490.8]
  assign _T_269 = io_in_a_bits_size <= 4'h6; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@6492.8]
  assign _T_307 = _T_98 | _T_103; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@6530.8]
  assign _T_308 = _T_307 | _T_108; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@6531.8]
  assign _T_309 = _T_308 | _T_113; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@6532.8]
  assign _T_310 = _T_309 | _T_118; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@6533.8]
  assign _T_311 = _T_310 | _T_123; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@6534.8]
  assign _T_312 = _T_311 | _T_137; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@6535.8]
  assign _T_313 = _T_269 & _T_312; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@6536.8]
  assign _T_315 = _T_267 | _T_313; // @[Parameters.scala 553:30:chipyard.TestHarness.RocketConfig.fir@6538.8]
  assign _T_317 = _T_315 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6540.8]
  assign _T_318 = ~_T_317; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6541.8]
  assign _T_325 = io_in_a_bits_param == 3'h0; // @[Monitor.scala 106:31:chipyard.TestHarness.RocketConfig.fir@6560.8]
  assign _T_327 = _T_325 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6562.8]
  assign _T_328 = ~_T_327; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6563.8]
  assign _T_329 = io_in_a_bits_mask == _T_75; // @[Monitor.scala 107:30:chipyard.TestHarness.RocketConfig.fir@6568.8]
  assign _T_331 = _T_329 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6570.8]
  assign _T_332 = ~_T_331; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6571.8]
  assign _T_337 = io_in_a_bits_opcode == 3'h0; // @[Monitor.scala 111:25:chipyard.TestHarness.RocketConfig.fir@6585.6]
  assign _T_386 = _T_310 | _T_137; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@6635.8]
  assign _T_387 = _T_269 & _T_386; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@6636.8]
  assign _T_396 = _T_267 | _T_387; // @[Parameters.scala 553:30:chipyard.TestHarness.RocketConfig.fir@6645.8]
  assign _T_399 = _T_396 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6648.8]
  assign _T_400 = ~_T_399; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6649.8]
  assign _T_415 = io_in_a_bits_opcode == 3'h1; // @[Monitor.scala 119:25:chipyard.TestHarness.RocketConfig.fir@6685.6]
  assign _T_489 = ~_T_75; // @[Monitor.scala 124:33:chipyard.TestHarness.RocketConfig.fir@6776.8]
  assign _T_490 = io_in_a_bits_mask & _T_489; // @[Monitor.scala 124:31:chipyard.TestHarness.RocketConfig.fir@6777.8]
  assign _T_491 = _T_490 == 8'h0; // @[Monitor.scala 124:40:chipyard.TestHarness.RocketConfig.fir@6778.8]
  assign _T_493 = _T_491 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6780.8]
  assign _T_494 = ~_T_493; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6781.8]
  assign _T_495 = io_in_a_bits_opcode == 3'h2; // @[Monitor.scala 127:25:chipyard.TestHarness.RocketConfig.fir@6787.6]
  assign _T_497 = io_in_a_bits_size <= 4'h3; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@6790.8]
  assign _T_540 = _T_128 | _T_137; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@6833.8]
  assign _T_541 = _T_497 & _T_540; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@6834.8]
  assign _T_552 = _T_541 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6845.8]
  assign _T_553 = ~_T_552; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6846.8]
  assign _T_560 = io_in_a_bits_param <= 3'h4; // @[Bundles.scala 140:33:chipyard.TestHarness.RocketConfig.fir@6865.8]
  assign _T_562 = _T_560 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6867.8]
  assign _T_563 = ~_T_562; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6868.8]
  assign _T_568 = io_in_a_bits_opcode == 3'h3; // @[Monitor.scala 135:25:chipyard.TestHarness.RocketConfig.fir@6882.6]
  assign _T_633 = io_in_a_bits_param <= 3'h3; // @[Bundles.scala 147:30:chipyard.TestHarness.RocketConfig.fir@6960.8]
  assign _T_635 = _T_633 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6962.8]
  assign _T_636 = ~_T_635; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6963.8]
  assign _T_641 = io_in_a_bits_opcode == 3'h5; // @[Monitor.scala 143:25:chipyard.TestHarness.RocketConfig.fir@6977.6]
  assign _T_698 = _T_269 & _T_137; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@7035.8]
  assign _T_701 = _T_267 | _T_698; // @[Parameters.scala 553:30:chipyard.TestHarness.RocketConfig.fir@7038.8]
  assign _T_703 = _T_701 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@7040.8]
  assign _T_704 = ~_T_703; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@7041.8]
  assign _T_711 = io_in_a_bits_param <= 3'h1; // @[Bundles.scala 160:28:chipyard.TestHarness.RocketConfig.fir@7060.8]
  assign _T_713 = _T_711 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@7062.8]
  assign _T_714 = ~_T_713; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@7063.8]
  assign _T_723 = io_in_d_bits_opcode <= 3'h6; // @[Bundles.scala 44:24:chipyard.TestHarness.RocketConfig.fir@7087.6]
  assign _T_725 = _T_723 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7089.6]
  assign _T_726 = ~_T_725; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7090.6]
  assign _T_730 = io_in_d_bits_opcode == 3'h6; // @[Monitor.scala 307:25:chipyard.TestHarness.RocketConfig.fir@7100.6]
  assign _T_734 = io_in_d_bits_size >= 4'h3; // @[Monitor.scala 309:27:chipyard.TestHarness.RocketConfig.fir@7109.8]
  assign _T_736 = _T_734 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7111.8]
  assign _T_737 = ~_T_736; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7112.8]
  assign _T_738 = io_in_d_bits_param == 2'h0; // @[Monitor.scala 310:28:chipyard.TestHarness.RocketConfig.fir@7117.8]
  assign _T_740 = _T_738 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7119.8]
  assign _T_741 = ~_T_740; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7120.8]
  assign _T_742 = ~io_in_d_bits_corrupt; // @[Monitor.scala 311:15:chipyard.TestHarness.RocketConfig.fir@7125.8]
  assign _T_744 = _T_742 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7127.8]
  assign _T_745 = ~_T_744; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7128.8]
  assign _T_746 = ~io_in_d_bits_denied; // @[Monitor.scala 312:15:chipyard.TestHarness.RocketConfig.fir@7133.8]
  assign _T_748 = _T_746 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7135.8]
  assign _T_749 = ~_T_748; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7136.8]
  assign _T_750 = io_in_d_bits_opcode == 3'h4; // @[Monitor.scala 315:25:chipyard.TestHarness.RocketConfig.fir@7142.6]
  assign _T_761 = io_in_d_bits_param <= 2'h2; // @[Bundles.scala 104:26:chipyard.TestHarness.RocketConfig.fir@7166.8]
  assign _T_763 = _T_761 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7168.8]
  assign _T_764 = ~_T_763; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7169.8]
  assign _T_765 = io_in_d_bits_param != 2'h2; // @[Monitor.scala 320:28:chipyard.TestHarness.RocketConfig.fir@7174.8]
  assign _T_767 = _T_765 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7176.8]
  assign _T_768 = ~_T_767; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7177.8]
  assign _T_778 = io_in_d_bits_opcode == 3'h5; // @[Monitor.scala 325:25:chipyard.TestHarness.RocketConfig.fir@7200.6]
  assign _T_798 = _T_746 | io_in_d_bits_corrupt; // @[Monitor.scala 331:30:chipyard.TestHarness.RocketConfig.fir@7241.8]
  assign _T_800 = _T_798 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7243.8]
  assign _T_801 = ~_T_800; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7244.8]
  assign _T_807 = io_in_d_bits_opcode == 3'h0; // @[Monitor.scala 335:25:chipyard.TestHarness.RocketConfig.fir@7259.6]
  assign _T_824 = io_in_d_bits_opcode == 3'h1; // @[Monitor.scala 343:25:chipyard.TestHarness.RocketConfig.fir@7294.6]
  assign _T_842 = io_in_d_bits_opcode == 3'h2; // @[Monitor.scala 351:25:chipyard.TestHarness.RocketConfig.fir@7330.6]
  assign _T_874 = io_in_a_ready & io_in_a_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@7396.4]
  assign _T_881 = ~io_in_a_bits_opcode[2]; // @[Edges.scala 93:28:chipyard.TestHarness.RocketConfig.fir@7403.4]
  assign _T_885 = _T_883 - 9'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@7407.4]
  assign _T_886 = _T_883 == 9'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@7408.4]
  assign _T_899 = ~_T_886; // @[Monitor.scala 386:22:chipyard.TestHarness.RocketConfig.fir@7424.4]
  assign _T_900 = io_in_a_valid & _T_899; // @[Monitor.scala 386:19:chipyard.TestHarness.RocketConfig.fir@7425.4]
  assign _T_901 = io_in_a_bits_opcode == _T_894; // @[Monitor.scala 387:32:chipyard.TestHarness.RocketConfig.fir@7427.6]
  assign _T_903 = _T_901 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@7429.6]
  assign _T_904 = ~_T_903; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@7430.6]
  assign _T_905 = io_in_a_bits_param == _T_895; // @[Monitor.scala 388:32:chipyard.TestHarness.RocketConfig.fir@7435.6]
  assign _T_907 = _T_905 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@7437.6]
  assign _T_908 = ~_T_907; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@7438.6]
  assign _T_909 = io_in_a_bits_size == _T_896; // @[Monitor.scala 389:32:chipyard.TestHarness.RocketConfig.fir@7443.6]
  assign _T_911 = _T_909 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@7445.6]
  assign _T_912 = ~_T_911; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@7446.6]
  assign _T_913 = io_in_a_bits_source == _T_897; // @[Monitor.scala 390:32:chipyard.TestHarness.RocketConfig.fir@7451.6]
  assign _T_915 = _T_913 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@7453.6]
  assign _T_916 = ~_T_915; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@7454.6]
  assign _T_917 = io_in_a_bits_address == _T_898; // @[Monitor.scala 391:32:chipyard.TestHarness.RocketConfig.fir@7459.6]
  assign _T_919 = _T_917 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@7461.6]
  assign _T_920 = ~_T_919; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@7462.6]
  assign _T_922 = _T_874 & _T_886; // @[Monitor.scala 393:20:chipyard.TestHarness.RocketConfig.fir@7469.4]
  assign _T_923 = io_in_d_ready & io_in_d_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@7477.4]
  assign _T_925 = 27'hfff << io_in_d_bits_size; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@7479.4]
  assign _T_927 = ~_T_925[11:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@7481.4]
  assign _T_933 = _T_931 - 9'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@7487.4]
  assign _T_934 = _T_931 == 9'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@7488.4]
  assign _T_948 = ~_T_934; // @[Monitor.scala 538:22:chipyard.TestHarness.RocketConfig.fir@7505.4]
  assign _T_949 = io_in_d_valid & _T_948; // @[Monitor.scala 538:19:chipyard.TestHarness.RocketConfig.fir@7506.4]
  assign _T_950 = io_in_d_bits_opcode == _T_942; // @[Monitor.scala 539:29:chipyard.TestHarness.RocketConfig.fir@7508.6]
  assign _T_952 = _T_950 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7510.6]
  assign _T_953 = ~_T_952; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7511.6]
  assign _T_954 = io_in_d_bits_param == _T_943; // @[Monitor.scala 540:29:chipyard.TestHarness.RocketConfig.fir@7516.6]
  assign _T_956 = _T_954 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7518.6]
  assign _T_957 = ~_T_956; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7519.6]
  assign _T_958 = io_in_d_bits_size == _T_944; // @[Monitor.scala 541:29:chipyard.TestHarness.RocketConfig.fir@7524.6]
  assign _T_960 = _T_958 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7526.6]
  assign _T_961 = ~_T_960; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7527.6]
  assign _T_966 = io_in_d_bits_sink == _T_946; // @[Monitor.scala 543:29:chipyard.TestHarness.RocketConfig.fir@7540.6]
  assign _T_968 = _T_966 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7542.6]
  assign _T_969 = ~_T_968; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7543.6]
  assign _T_970 = io_in_d_bits_denied == _T_947; // @[Monitor.scala 544:29:chipyard.TestHarness.RocketConfig.fir@7548.6]
  assign _T_972 = _T_970 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7550.6]
  assign _T_973 = ~_T_972; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7551.6]
  assign _T_975 = _T_923 & _T_934; // @[Monitor.scala 546:20:chipyard.TestHarness.RocketConfig.fir@7558.4]
  assign _T_987 = _T_985 - 9'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@7581.4]
  assign a_first = _T_985 == 9'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@7582.4]
  assign _T_1005 = _T_1003 - 9'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@7603.4]
  assign d_first = _T_1003 == 9'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@7604.4]
  assign _T_1018 = 16'h10 - 16'h1; // @[Monitor.scala 606:57:chipyard.TestHarness.RocketConfig.fir@7628.4]
  assign _GEN_57 = {{12'd0}, inflight_opcodes}; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@7629.4]
  assign _T_1019 = _GEN_57 & _T_1018; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@7629.4]
  assign _T_1020 = {{1'd0}, _T_1019[15:1]}; // @[Monitor.scala 629:152:chipyard.TestHarness.RocketConfig.fir@7630.4]
  assign _T_1026 = 16'h100 - 16'h1; // @[Monitor.scala 606:57:chipyard.TestHarness.RocketConfig.fir@7639.4]
  assign _GEN_59 = {{8'd0}, inflight_sizes}; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@7640.4]
  assign _T_1027 = _GEN_59 & _T_1026; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@7640.4]
  assign _T_1028 = {{1'd0}, _T_1027[15:1]}; // @[Monitor.scala 633:144:chipyard.TestHarness.RocketConfig.fir@7641.4]
  assign _T_1032 = _T_874 & a_first; // @[Monitor.scala 643:27:chipyard.TestHarness.RocketConfig.fir@7666.4]
  assign _T_1034 = 2'h1 << io_in_a_bits_source; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@7669.6]
  assign _T_1035 = {io_in_a_bits_opcode, 1'h0}; // @[Monitor.scala 645:53:chipyard.TestHarness.RocketConfig.fir@7671.6]
  assign _T_1036 = _T_1035 | 4'h1; // @[Monitor.scala 645:61:chipyard.TestHarness.RocketConfig.fir@7672.6]
  assign _T_1037 = {io_in_a_bits_size, 1'h0}; // @[Monitor.scala 646:49:chipyard.TestHarness.RocketConfig.fir@7674.6]
  assign _T_1038 = _T_1037 | 5'h1; // @[Monitor.scala 646:57:chipyard.TestHarness.RocketConfig.fir@7675.6]
  assign _GEN_61 = {io_in_a_bits_source, 2'h0}; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@7677.6]
  assign _T_1039 = {{1'd0}, _GEN_61}; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@7677.6]
  assign a_opcodes_set_interm = _T_1032 ? _T_1036 : 4'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@7668.4]
  assign _GEN_62 = {{15'd0}, a_opcodes_set_interm}; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@7678.6]
  assign _T_1040 = _GEN_62 << _T_1039; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@7678.6]
  assign _T_1041 = {io_in_a_bits_source, 3'h0}; // @[Monitor.scala 648:68:chipyard.TestHarness.RocketConfig.fir@7680.6]
  assign a_sizes_set_interm = _T_1032 ? _T_1038 : 5'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@7668.4]
  assign _GEN_63 = {{15'd0}, a_sizes_set_interm}; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@7681.6]
  assign _T_1042 = _GEN_63 << _T_1041; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@7681.6]
  assign _T_1043 = inflight >> io_in_a_bits_source; // @[Monitor.scala 649:26:chipyard.TestHarness.RocketConfig.fir@7683.6]
  assign _T_1045 = ~_T_1043; // @[Monitor.scala 649:17:chipyard.TestHarness.RocketConfig.fir@7685.6]
  assign _T_1047 = _T_1045 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@7687.6]
  assign _T_1048 = ~_T_1047; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@7688.6]
  assign _GEN_15 = _T_1032 ? _T_1034 : 2'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@7668.4]
  assign _GEN_18 = _T_1032 ? _T_1040 : 19'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@7668.4]
  assign _GEN_19 = _T_1032 ? _T_1042 : 20'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@7668.4]
  assign _T_1051 = _T_923 & d_first; // @[Monitor.scala 660:27:chipyard.TestHarness.RocketConfig.fir@7702.4]
  assign _T_1053 = ~_T_730; // @[Monitor.scala 660:75:chipyard.TestHarness.RocketConfig.fir@7704.4]
  assign _T_1054 = _T_1051 & _T_1053; // @[Monitor.scala 660:72:chipyard.TestHarness.RocketConfig.fir@7705.4]
  assign _T_1061 = {{15'd0}, _T_1018}; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@7714.6]
  assign _T_1067 = {{15'd0}, _T_1026}; // @[Monitor.scala 663:72:chipyard.TestHarness.RocketConfig.fir@7721.6]
  assign _GEN_20 = _T_1054 ? 2'h1 : 2'h0; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@7706.4]
  assign _GEN_21 = _T_1054 ? _T_1061 : 31'h0; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@7706.4]
  assign _GEN_22 = _T_1054 ? _T_1067 : 31'h0; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@7706.4]
  assign _T_1068 = io_in_d_valid & d_first; // @[Monitor.scala 665:26:chipyard.TestHarness.RocketConfig.fir@7724.4]
  assign _T_1071 = _T_1068 & _T_1053; // @[Monitor.scala 665:71:chipyard.TestHarness.RocketConfig.fir@7727.4]
  assign _T_1075 = io_in_a_valid & _T_4; // @[Monitor.scala 666:68:chipyard.TestHarness.RocketConfig.fir@7732.6]
  assign _T_1076 = io_in_a_bits_size == io_in_d_bits_size; // @[Monitor.scala 666:142:chipyard.TestHarness.RocketConfig.fir@7733.6]
  assign _T_1077 = _T_1075 & _T_1076; // @[Monitor.scala 666:119:chipyard.TestHarness.RocketConfig.fir@7734.6]
  assign _T_1078 = _T_1077 & a_first; // @[Monitor.scala 666:166:chipyard.TestHarness.RocketConfig.fir@7735.6]
  assign _T_1079 = inflight | _T_1078; // @[Monitor.scala 666:49:chipyard.TestHarness.RocketConfig.fir@7736.6]
  assign _T_1081 = _T_1079 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7738.6]
  assign _T_1082 = ~_T_1081; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7739.6]
  assign a_opcode_lookup = _T_1020[3:0]; // @[:chipyard.TestHarness.RocketConfig.fir@7621.4 :chipyard.TestHarness.RocketConfig.fir@7622.4 Monitor.scala 629:21:chipyard.TestHarness.RocketConfig.fir@7631.4]
  assign _GEN_25 = 3'h2 == a_opcode_lookup[2:0] ? 3'h1 : 3'h0; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@7745.6]
  assign _GEN_26 = 3'h3 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_25; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@7745.6]
  assign _GEN_27 = 3'h4 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_26; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@7745.6]
  assign _GEN_28 = 3'h5 == a_opcode_lookup[2:0] ? 3'h2 : _GEN_27; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@7745.6]
  assign _GEN_29 = 3'h6 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_28; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@7745.6]
  assign _GEN_30 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_29; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@7745.6]
  assign _T_1084 = io_in_d_bits_opcode == _GEN_30; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@7745.6]
  assign _GEN_37 = 3'h6 == a_opcode_lookup[2:0] ? 3'h5 : _GEN_28; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@7747.6]
  assign _GEN_38 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_37; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@7747.6]
  assign _T_1086 = io_in_d_bits_opcode == _GEN_38; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@7747.6]
  assign _T_1087 = _T_1084 | _T_1086; // @[Monitor.scala 667:71:chipyard.TestHarness.RocketConfig.fir@7748.6]
  assign _GEN_41 = 3'h2 == io_in_a_bits_opcode ? 3'h1 : 3'h0; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@7749.6]
  assign _GEN_42 = 3'h3 == io_in_a_bits_opcode ? 3'h1 : _GEN_41; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@7749.6]
  assign _GEN_43 = 3'h4 == io_in_a_bits_opcode ? 3'h1 : _GEN_42; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@7749.6]
  assign _GEN_44 = 3'h5 == io_in_a_bits_opcode ? 3'h2 : _GEN_43; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@7749.6]
  assign _GEN_45 = 3'h6 == io_in_a_bits_opcode ? 3'h4 : _GEN_44; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@7749.6]
  assign _GEN_46 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_45; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@7749.6]
  assign _T_1088 = io_in_d_bits_opcode == _GEN_46; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@7749.6]
  assign _GEN_53 = 3'h6 == io_in_a_bits_opcode ? 3'h5 : _GEN_44; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@7750.6]
  assign _GEN_54 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_53; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@7750.6]
  assign _T_1089 = io_in_d_bits_opcode == _GEN_54; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@7750.6]
  assign _T_1090 = _T_1088 | _T_1089; // @[Monitor.scala 668:99:chipyard.TestHarness.RocketConfig.fir@7751.6]
  assign _T_1091 = io_in_a_valid & _T_1090; // @[Monitor.scala 668:34:chipyard.TestHarness.RocketConfig.fir@7752.6]
  assign _T_1092 = _T_1087 | _T_1091; // @[Monitor.scala 668:15:chipyard.TestHarness.RocketConfig.fir@7753.6]
  assign _T_1094 = _T_1092 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7755.6]
  assign _T_1095 = ~_T_1094; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7756.6]
  assign a_size_lookup = _T_1028[7:0]; // @[:chipyard.TestHarness.RocketConfig.fir@7632.4 :chipyard.TestHarness.RocketConfig.fir@7633.4 Monitor.scala 633:19:chipyard.TestHarness.RocketConfig.fir@7642.4]
  assign _GEN_64 = {{4'd0}, io_in_d_bits_size}; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@7761.6]
  assign _T_1096 = _GEN_64 == a_size_lookup; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@7761.6]
  assign _T_1098 = io_in_a_valid & _T_1076; // @[Monitor.scala 670:72:chipyard.TestHarness.RocketConfig.fir@7763.6]
  assign _T_1099 = _T_1096 | _T_1098; // @[Monitor.scala 670:53:chipyard.TestHarness.RocketConfig.fir@7764.6]
  assign _T_1101 = _T_1099 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7766.6]
  assign _T_1102 = ~_T_1101; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7767.6]
  assign _T_1104 = _T_1068 & a_first; // @[Monitor.scala 672:36:chipyard.TestHarness.RocketConfig.fir@7774.4]
  assign _T_1105 = _T_1104 & io_in_a_valid; // @[Monitor.scala 672:47:chipyard.TestHarness.RocketConfig.fir@7775.4]
  assign _T_1107 = _T_1105 & _T_4; // @[Monitor.scala 672:65:chipyard.TestHarness.RocketConfig.fir@7777.4]
  assign _T_1109 = _T_1107 & _T_1053; // @[Monitor.scala 672:116:chipyard.TestHarness.RocketConfig.fir@7779.4]
  assign _T_1110 = ~io_in_d_ready; // @[Monitor.scala 673:15:chipyard.TestHarness.RocketConfig.fir@7781.6]
  assign _T_1111 = _T_1110 | io_in_a_ready; // @[Monitor.scala 673:32:chipyard.TestHarness.RocketConfig.fir@7782.6]
  assign _T_1113 = _T_1111 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7784.6]
  assign _T_1114 = ~_T_1113; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7785.6]
  assign a_set = _GEN_15[0]; // @[:chipyard.TestHarness.RocketConfig.fir@7615.4 :chipyard.TestHarness.RocketConfig.fir@7616.4 Monitor.scala 644:13:chipyard.TestHarness.RocketConfig.fir@7670.6]
  assign d_clr = _GEN_20[0]; // @[:chipyard.TestHarness.RocketConfig.fir@7694.4 :chipyard.TestHarness.RocketConfig.fir@7695.4 Monitor.scala 661:13:chipyard.TestHarness.RocketConfig.fir@7708.6]
  assign _T_1115 = a_set != d_clr; // @[Monitor.scala 677:20:chipyard.TestHarness.RocketConfig.fir@7791.4]
  assign _T_1116 = |a_set; // @[Monitor.scala 677:40:chipyard.TestHarness.RocketConfig.fir@7792.4]
  assign _T_1117 = ~_T_1116; // @[Monitor.scala 677:33:chipyard.TestHarness.RocketConfig.fir@7793.4]
  assign _T_1118 = _T_1115 | _T_1117; // @[Monitor.scala 677:30:chipyard.TestHarness.RocketConfig.fir@7794.4]
  assign _T_1120 = _T_1118 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7796.4]
  assign _T_1121 = ~_T_1120; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7797.4]
  assign _T_1122 = inflight | a_set; // @[Monitor.scala 680:27:chipyard.TestHarness.RocketConfig.fir@7802.4]
  assign _T_1123 = ~d_clr; // @[Monitor.scala 680:38:chipyard.TestHarness.RocketConfig.fir@7803.4]
  assign _T_1124 = _T_1122 & _T_1123; // @[Monitor.scala 680:36:chipyard.TestHarness.RocketConfig.fir@7804.4]
  assign a_opcodes_set = _GEN_18[3:0]; // @[:chipyard.TestHarness.RocketConfig.fir@7617.4 :chipyard.TestHarness.RocketConfig.fir@7618.4 Monitor.scala 647:21:chipyard.TestHarness.RocketConfig.fir@7679.6]
  assign _T_1125 = inflight_opcodes | a_opcodes_set; // @[Monitor.scala 681:43:chipyard.TestHarness.RocketConfig.fir@7806.4]
  assign d_opcodes_clr = _GEN_21[3:0]; // @[:chipyard.TestHarness.RocketConfig.fir@7696.4 :chipyard.TestHarness.RocketConfig.fir@7697.4 Monitor.scala 662:21:chipyard.TestHarness.RocketConfig.fir@7715.6]
  assign _T_1126 = ~d_opcodes_clr; // @[Monitor.scala 681:62:chipyard.TestHarness.RocketConfig.fir@7807.4]
  assign _T_1127 = _T_1125 & _T_1126; // @[Monitor.scala 681:60:chipyard.TestHarness.RocketConfig.fir@7808.4]
  assign a_sizes_set = _GEN_19[7:0]; // @[:chipyard.TestHarness.RocketConfig.fir@7619.4 :chipyard.TestHarness.RocketConfig.fir@7620.4 Monitor.scala 648:19:chipyard.TestHarness.RocketConfig.fir@7682.6]
  assign _T_1128 = inflight_sizes | a_sizes_set; // @[Monitor.scala 682:39:chipyard.TestHarness.RocketConfig.fir@7810.4]
  assign d_sizes_clr = _GEN_22[7:0]; // @[:chipyard.TestHarness.RocketConfig.fir@7698.4 :chipyard.TestHarness.RocketConfig.fir@7699.4 Monitor.scala 663:19:chipyard.TestHarness.RocketConfig.fir@7722.6]
  assign _T_1129 = ~d_sizes_clr; // @[Monitor.scala 682:56:chipyard.TestHarness.RocketConfig.fir@7811.4]
  assign _T_1130 = _T_1128 & _T_1129; // @[Monitor.scala 682:54:chipyard.TestHarness.RocketConfig.fir@7812.4]
  assign _T_1132 = |inflight; // @[Monitor.scala 687:26:chipyard.TestHarness.RocketConfig.fir@7817.4]
  assign _T_1133 = ~_T_1132; // @[Monitor.scala 687:16:chipyard.TestHarness.RocketConfig.fir@7818.4]
  assign _T_1134 = plusarg_reader_out == 32'h0; // @[Monitor.scala 687:39:chipyard.TestHarness.RocketConfig.fir@7819.4]
  assign _T_1135 = _T_1133 | _T_1134; // @[Monitor.scala 687:30:chipyard.TestHarness.RocketConfig.fir@7820.4]
  assign _T_1136 = _T_1131 < plusarg_reader_out; // @[Monitor.scala 687:59:chipyard.TestHarness.RocketConfig.fir@7821.4]
  assign _T_1137 = _T_1135 | _T_1136; // @[Monitor.scala 687:47:chipyard.TestHarness.RocketConfig.fir@7822.4]
  assign _T_1139 = _T_1137 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@7824.4]
  assign _T_1140 = ~_T_1139; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@7825.4]
  assign _T_1142 = _T_1131 + 32'h1; // @[Monitor.scala 689:26:chipyard.TestHarness.RocketConfig.fir@7831.4]
  assign _T_1145 = _T_874 | _T_923; // @[Monitor.scala 690:27:chipyard.TestHarness.RocketConfig.fir@7835.4]
  assign _GEN_65 = io_in_a_valid & _T_87; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6296.10]
  assign _GEN_81 = io_in_a_valid & _T_170; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6413.10]
  assign _GEN_99 = io_in_a_valid & _T_257; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6543.10]
  assign _GEN_111 = io_in_a_valid & _T_337; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6651.10]
  assign _GEN_121 = io_in_a_valid & _T_415; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6751.10]
  assign _GEN_131 = io_in_a_valid & _T_495; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6848.10]
  assign _GEN_141 = io_in_a_valid & _T_568; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6943.10]
  assign _GEN_151 = io_in_a_valid & _T_641; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@7043.10]
  assign _GEN_163 = io_in_d_valid & _T_730; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7114.10]
  assign _GEN_171 = io_in_d_valid & _T_750; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7163.10]
  assign _GEN_179 = io_in_d_valid & _T_778; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7221.10]
  assign _GEN_187 = io_in_d_valid & _T_807; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7273.10]
  assign _GEN_191 = io_in_d_valid & _T_824; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7308.10]
  assign _GEN_195 = io_in_d_valid & _T_842; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7344.10]
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
  _T_895 = _RAND_2[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_896 = _RAND_3[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_897 = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_898 = _RAND_5[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  _T_931 = _RAND_6[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  _T_942 = _RAND_7[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  _T_943 = _RAND_8[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  _T_944 = _RAND_9[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  _T_946 = _RAND_10[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  _T_947 = _RAND_11[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  inflight = _RAND_12[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  inflight_opcodes = _RAND_13[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  inflight_sizes = _RAND_14[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  _T_985 = _RAND_15[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  _T_1003 = _RAND_16[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  _T_1131 = _RAND_17[31:0];
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
      _T_895 <= io_in_a_bits_param;
    end
    if (_T_922) begin
      _T_896 <= io_in_a_bits_size;
    end
    if (_T_922) begin
      _T_897 <= io_in_a_bits_source;
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
        if (_GEN_65 & _T_143) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock type unsupported by manager (connected at SystemBus.scala:39:96)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6296.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_65 & _T_143) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6297.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_65 & _T_146) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock from a client which does not support Probe (connected at SystemBus.scala:39:96)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6303.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_65 & _T_146) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6304.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_65 & _T_149) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock carries invalid source ID (connected at SystemBus.scala:39:96)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6310.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_65 & _T_149) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6311.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_65 & _T_153) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock smaller than a beat (connected at SystemBus.scala:39:96)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6318.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_65 & _T_153) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6319.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_65 & _T_156) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock address not aligned to size (connected at SystemBus.scala:39:96)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6325.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_65 & _T_156) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6326.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_65 & _T_160) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock carries invalid grow param (connected at SystemBus.scala:39:96)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6333.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_65 & _T_160) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6334.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_65 & _T_165) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock contains invalid mask (connected at SystemBus.scala:39:96)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6342.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_65 & _T_165) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6343.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_65 & _T_169) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock is corrupt (connected at SystemBus.scala:39:96)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6350.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_65 & _T_169) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6351.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_81 & _T_143) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm type unsupported by manager (connected at SystemBus.scala:39:96)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6413.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_81 & _T_143) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6414.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_81 & _T_146) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm from a client which does not support Probe (connected at SystemBus.scala:39:96)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6420.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_81 & _T_146) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6421.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_81 & _T_149) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm carries invalid source ID (connected at SystemBus.scala:39:96)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6427.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_81 & _T_149) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6428.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_81 & _T_153) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm smaller than a beat (connected at SystemBus.scala:39:96)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6435.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_81 & _T_153) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6436.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_81 & _T_156) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm address not aligned to size (connected at SystemBus.scala:39:96)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6442.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_81 & _T_156) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6443.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_81 & _T_160) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm carries invalid grow param (connected at SystemBus.scala:39:96)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6450.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_81 & _T_160) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6451.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_81 & _T_247) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm requests NtoB (connected at SystemBus.scala:39:96)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6458.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_81 & _T_247) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6459.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_81 & _T_165) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm contains invalid mask (connected at SystemBus.scala:39:96)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6467.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_81 & _T_165) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6468.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_81 & _T_169) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm is corrupt (connected at SystemBus.scala:39:96)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6475.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_81 & _T_169) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6476.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_99 & _T_318) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Get type unsupported by manager (connected at SystemBus.scala:39:96)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6543.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_99 & _T_318) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6544.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_99 & _T_149) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get carries invalid source ID (connected at SystemBus.scala:39:96)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6550.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_99 & _T_149) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6551.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_99 & _T_156) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get address not aligned to size (connected at SystemBus.scala:39:96)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6557.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_99 & _T_156) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6558.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_99 & _T_328) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get carries invalid param (connected at SystemBus.scala:39:96)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6565.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_99 & _T_328) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6566.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_99 & _T_332) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get contains invalid mask (connected at SystemBus.scala:39:96)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6573.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_99 & _T_332) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6574.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_99 & _T_169) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get is corrupt (connected at SystemBus.scala:39:96)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6581.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_99 & _T_169) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6582.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_111 & _T_400) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutFull type unsupported by manager (connected at SystemBus.scala:39:96)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6651.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_111 & _T_400) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6652.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_111 & _T_149) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull carries invalid source ID (connected at SystemBus.scala:39:96)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6658.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_111 & _T_149) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6659.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_111 & _T_156) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull address not aligned to size (connected at SystemBus.scala:39:96)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6665.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_111 & _T_156) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6666.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_111 & _T_328) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull carries invalid param (connected at SystemBus.scala:39:96)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6673.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_111 & _T_328) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6674.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_111 & _T_332) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull contains invalid mask (connected at SystemBus.scala:39:96)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6681.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_111 & _T_332) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6682.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_121 & _T_400) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutPartial type unsupported by manager (connected at SystemBus.scala:39:96)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6751.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_121 & _T_400) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6752.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_121 & _T_149) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial carries invalid source ID (connected at SystemBus.scala:39:96)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6758.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_121 & _T_149) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6759.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_121 & _T_156) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial address not aligned to size (connected at SystemBus.scala:39:96)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6765.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_121 & _T_156) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6766.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_121 & _T_328) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial carries invalid param (connected at SystemBus.scala:39:96)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6773.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_121 & _T_328) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6774.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_121 & _T_494) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial contains invalid mask (connected at SystemBus.scala:39:96)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6783.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_121 & _T_494) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6784.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_131 & _T_553) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Arithmetic type unsupported by manager (connected at SystemBus.scala:39:96)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6848.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_131 & _T_553) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6849.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_131 & _T_149) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic carries invalid source ID (connected at SystemBus.scala:39:96)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6855.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_131 & _T_149) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6856.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_131 & _T_156) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic address not aligned to size (connected at SystemBus.scala:39:96)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6862.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_131 & _T_156) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6863.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_131 & _T_563) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic carries invalid opcode param (connected at SystemBus.scala:39:96)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6870.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_131 & _T_563) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6871.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_131 & _T_332) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic contains invalid mask (connected at SystemBus.scala:39:96)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6878.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_131 & _T_332) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6879.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_141 & _T_553) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Logical type unsupported by manager (connected at SystemBus.scala:39:96)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6943.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_141 & _T_553) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6944.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_141 & _T_149) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical carries invalid source ID (connected at SystemBus.scala:39:96)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6950.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_141 & _T_149) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6951.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_141 & _T_156) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical address not aligned to size (connected at SystemBus.scala:39:96)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6957.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_141 & _T_156) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6958.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_141 & _T_636) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical carries invalid opcode param (connected at SystemBus.scala:39:96)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6965.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_141 & _T_636) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6966.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_141 & _T_332) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical contains invalid mask (connected at SystemBus.scala:39:96)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6973.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_141 & _T_332) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@6974.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_151 & _T_704) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Hint type unsupported by manager (connected at SystemBus.scala:39:96)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@7043.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_151 & _T_704) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@7044.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_151 & _T_149) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint carries invalid source ID (connected at SystemBus.scala:39:96)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@7050.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_151 & _T_149) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@7051.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_151 & _T_156) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint address not aligned to size (connected at SystemBus.scala:39:96)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@7057.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_151 & _T_156) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@7058.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_151 & _T_714) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint carries invalid opcode param (connected at SystemBus.scala:39:96)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@7065.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_151 & _T_714) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@7066.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_151 & _T_332) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint contains invalid mask (connected at SystemBus.scala:39:96)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@7073.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_151 & _T_332) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@7074.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_151 & _T_169) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint is corrupt (connected at SystemBus.scala:39:96)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@7081.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_151 & _T_169) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@7082.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel has invalid opcode (connected at SystemBus.scala:39:96)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7092.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7093.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_163 & _T_737) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck smaller than a beat (connected at SystemBus.scala:39:96)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7114.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_163 & _T_737) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7115.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_163 & _T_741) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseeAck carries invalid param (connected at SystemBus.scala:39:96)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7122.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_163 & _T_741) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7123.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_163 & _T_745) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck is corrupt (connected at SystemBus.scala:39:96)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7130.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_163 & _T_745) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7131.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_163 & _T_749) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck is denied (connected at SystemBus.scala:39:96)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7138.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_163 & _T_749) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7139.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_171 & _T_737) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant smaller than a beat (connected at SystemBus.scala:39:96)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7163.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_171 & _T_737) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7164.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_171 & _T_764) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid cap param (connected at SystemBus.scala:39:96)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7171.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_171 & _T_764) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7172.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_171 & _T_768) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries toN param (connected at SystemBus.scala:39:96)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7179.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_171 & _T_768) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7180.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_171 & _T_745) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant is corrupt (connected at SystemBus.scala:39:96)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7187.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_171 & _T_745) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7188.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_179 & _T_737) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData smaller than a beat (connected at SystemBus.scala:39:96)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7221.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_179 & _T_737) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7222.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_179 & _T_764) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid cap param (connected at SystemBus.scala:39:96)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7229.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_179 & _T_764) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7230.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_179 & _T_768) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries toN param (connected at SystemBus.scala:39:96)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7237.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_179 & _T_768) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7238.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_179 & _T_801) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData is denied but not corrupt (connected at SystemBus.scala:39:96)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7246.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_179 & _T_801) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7247.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_187 & _T_741) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck carries invalid param (connected at SystemBus.scala:39:96)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7273.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_187 & _T_741) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7274.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_187 & _T_745) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck is corrupt (connected at SystemBus.scala:39:96)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7281.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_187 & _T_745) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7282.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_191 & _T_741) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData carries invalid param (connected at SystemBus.scala:39:96)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7308.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_191 & _T_741) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7309.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_191 & _T_801) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData is denied but not corrupt (connected at SystemBus.scala:39:96)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7317.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_191 & _T_801) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7318.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_195 & _T_741) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck carries invalid param (connected at SystemBus.scala:39:96)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7344.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_195 & _T_741) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7345.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_195 & _T_745) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck is corrupt (connected at SystemBus.scala:39:96)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7352.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_195 & _T_745) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7353.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel opcode changed within multibeat operation (connected at SystemBus.scala:39:96)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@7432.8]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@7433.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_900 & _T_908) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel param changed within multibeat operation (connected at SystemBus.scala:39:96)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@7440.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_900 & _T_908) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@7441.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel size changed within multibeat operation (connected at SystemBus.scala:39:96)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@7448.8]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@7449.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_900 & _T_916) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel source changed within multibeat operation (connected at SystemBus.scala:39:96)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@7456.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_900 & _T_916) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@7457.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel address changed with multibeat operation (connected at SystemBus.scala:39:96)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@7464.8]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@7465.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel opcode changed within multibeat operation (connected at SystemBus.scala:39:96)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7513.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7514.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel param changed within multibeat operation (connected at SystemBus.scala:39:96)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7521.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7522.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel size changed within multibeat operation (connected at SystemBus.scala:39:96)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7529.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7530.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel sink changed with multibeat operation (connected at SystemBus.scala:39:96)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7545.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7546.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel denied changed with multibeat operation (connected at SystemBus.scala:39:96)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7553.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7554.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel re-used a source ID (connected at SystemBus.scala:39:96)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@7690.8]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@7691.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel acknowledged for nothing inflight (connected at SystemBus.scala:39:96)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7741.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7742.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper opcode response (connected at SystemBus.scala:39:96)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7758.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7759.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper response size (connected at SystemBus.scala:39:96)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7769.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7770.8]
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
          $fwrite(32'h80000002,"Assertion failed: ready check\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7787.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7788.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' and 'D' concurrent, despite minlatency 2 (connected at SystemBus.scala:39:96)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7799.6]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@7800.6]
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
          $fwrite(32'h80000002,"Assertion failed: TileLink timeout expired (connected at SystemBus.scala:39:96)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@7827.6]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@7828.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
