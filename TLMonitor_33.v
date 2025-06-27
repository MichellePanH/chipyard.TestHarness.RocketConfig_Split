module TLMonitor_33( // @[:chipyard.TestHarness.RocketConfig.fir@68072.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@68073.4]
  input         reset, // @[:chipyard.TestHarness.RocketConfig.fir@68074.4]
  input         io_in_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@68075.4]
  input         io_in_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@68075.4]
  input  [2:0]  io_in_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@68075.4]
  input  [2:0]  io_in_a_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@68075.4]
  input  [2:0]  io_in_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@68075.4]
  input  [2:0]  io_in_a_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@68075.4]
  input  [16:0] io_in_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@68075.4]
  input  [7:0]  io_in_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@68075.4]
  input         io_in_a_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@68075.4]
  input         io_in_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@68075.4]
  input         io_in_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@68075.4]
  input  [2:0]  io_in_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@68075.4]
  input  [2:0]  io_in_d_bits_source // @[:chipyard.TestHarness.RocketConfig.fir@68075.4]
);
  wire [31:0] plusarg_reader_out; // @[PlusArg.scala 44:11:chipyard.TestHarness.RocketConfig.fir@69440.4]
  wire  _T_4; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@68086.6]
  wire  _T_5; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@68087.6]
  wire  _T_6; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@68088.6]
  wire  _T_7; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@68089.6]
  wire  _T_9; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@68096.6]
  wire  _T_10; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@68097.6]
  wire  _T_11; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@68098.6]
  wire [12:0] _T_13; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@68100.6]
  wire [5:0] _T_15; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@68102.6]
  wire [16:0] _GEN_56; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@68103.6]
  wire [16:0] _T_16; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@68103.6]
  wire  _T_17; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@68104.6]
  wire [3:0] _T_20; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@68107.6]
  wire [2:0] _T_22; // @[Misc.scala 201:81:chipyard.TestHarness.RocketConfig.fir@68109.6]
  wire  _T_23; // @[Misc.scala 205:21:chipyard.TestHarness.RocketConfig.fir@68110.6]
  wire  _T_26; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@68113.6]
  wire  _T_28; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@68115.6]
  wire  _T_29; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@68116.6]
  wire  _T_31; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@68118.6]
  wire  _T_32; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@68119.6]
  wire  _T_35; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@68122.6]
  wire  _T_36; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@68123.6]
  wire  _T_37; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@68124.6]
  wire  _T_38; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@68125.6]
  wire  _T_39; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@68126.6]
  wire  _T_40; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@68127.6]
  wire  _T_41; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@68128.6]
  wire  _T_42; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@68129.6]
  wire  _T_43; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@68130.6]
  wire  _T_44; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@68131.6]
  wire  _T_45; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@68132.6]
  wire  _T_46; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@68133.6]
  wire  _T_47; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@68134.6]
  wire  _T_50; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@68137.6]
  wire  _T_51; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@68138.6]
  wire  _T_52; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@68139.6]
  wire  _T_53; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@68140.6]
  wire  _T_54; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@68141.6]
  wire  _T_55; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@68142.6]
  wire  _T_56; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@68143.6]
  wire  _T_57; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@68144.6]
  wire  _T_58; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@68145.6]
  wire  _T_59; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@68146.6]
  wire  _T_60; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@68147.6]
  wire  _T_61; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@68148.6]
  wire  _T_62; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@68149.6]
  wire  _T_63; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@68150.6]
  wire  _T_64; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@68151.6]
  wire  _T_65; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@68152.6]
  wire  _T_66; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@68153.6]
  wire  _T_67; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@68154.6]
  wire  _T_68; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@68155.6]
  wire  _T_69; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@68156.6]
  wire  _T_70; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@68157.6]
  wire  _T_71; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@68158.6]
  wire  _T_72; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@68159.6]
  wire  _T_73; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@68160.6]
  wire  _T_74; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@68161.6]
  wire [7:0] _T_81; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@68168.6]
  wire  _T_120; // @[Monitor.scala 79:25:chipyard.TestHarness.RocketConfig.fir@68211.6]
  wire [16:0] _T_122; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@68214.8]
  wire [17:0] _T_123; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@68215.8]
  wire [17:0] _T_125; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@68217.8]
  wire  _T_126; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@68218.8]
  wire  _T_131; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68223.8]
  wire  _T_137; // @[Parameters.scala 92:48:chipyard.TestHarness.RocketConfig.fir@68238.8]
  wire  _T_139; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@68240.8]
  wire  _T_147; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68249.8]
  wire  _T_148; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68250.8]
  wire  _T_150; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68256.8]
  wire  _T_151; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68257.8]
  wire  _T_154; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68264.8]
  wire  _T_155; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68265.8]
  wire  _T_157; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68271.8]
  wire  _T_158; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68272.8]
  wire  _T_159; // @[Bundles.scala 110:27:chipyard.TestHarness.RocketConfig.fir@68277.8]
  wire  _T_161; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68279.8]
  wire  _T_162; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68280.8]
  wire [7:0] _T_163; // @[Monitor.scala 86:18:chipyard.TestHarness.RocketConfig.fir@68285.8]
  wire  _T_164; // @[Monitor.scala 86:31:chipyard.TestHarness.RocketConfig.fir@68286.8]
  wire  _T_166; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68288.8]
  wire  _T_167; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68289.8]
  wire  _T_168; // @[Monitor.scala 87:18:chipyard.TestHarness.RocketConfig.fir@68294.8]
  wire  _T_170; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68296.8]
  wire  _T_171; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68297.8]
  wire  _T_172; // @[Monitor.scala 90:25:chipyard.TestHarness.RocketConfig.fir@68303.6]
  wire  _T_215; // @[Monitor.scala 97:31:chipyard.TestHarness.RocketConfig.fir@68377.8]
  wire  _T_217; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68379.8]
  wire  _T_218; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68380.8]
  wire  _T_228; // @[Monitor.scala 102:25:chipyard.TestHarness.RocketConfig.fir@68403.6]
  wire  _T_230; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@68406.8]
  wire  _T_238; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@68414.8]
  wire  _T_241; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68417.8]
  wire  _T_242; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68418.8]
  wire  _T_249; // @[Monitor.scala 106:31:chipyard.TestHarness.RocketConfig.fir@68437.8]
  wire  _T_251; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68439.8]
  wire  _T_252; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68440.8]
  wire  _T_253; // @[Monitor.scala 107:30:chipyard.TestHarness.RocketConfig.fir@68445.8]
  wire  _T_255; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68447.8]
  wire  _T_256; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68448.8]
  wire  _T_261; // @[Monitor.scala 111:25:chipyard.TestHarness.RocketConfig.fir@68462.6]
  wire  _T_287; // @[Monitor.scala 119:25:chipyard.TestHarness.RocketConfig.fir@68510.6]
  wire [7:0] _T_309; // @[Monitor.scala 124:33:chipyard.TestHarness.RocketConfig.fir@68549.8]
  wire [7:0] _T_310; // @[Monitor.scala 124:31:chipyard.TestHarness.RocketConfig.fir@68550.8]
  wire  _T_311; // @[Monitor.scala 124:40:chipyard.TestHarness.RocketConfig.fir@68551.8]
  wire  _T_313; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68553.8]
  wire  _T_314; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68554.8]
  wire  _T_315; // @[Monitor.scala 127:25:chipyard.TestHarness.RocketConfig.fir@68560.6]
  wire  _T_333; // @[Bundles.scala 140:33:chipyard.TestHarness.RocketConfig.fir@68591.8]
  wire  _T_335; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68593.8]
  wire  _T_336; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68594.8]
  wire  _T_341; // @[Monitor.scala 135:25:chipyard.TestHarness.RocketConfig.fir@68608.6]
  wire  _T_359; // @[Bundles.scala 147:30:chipyard.TestHarness.RocketConfig.fir@68639.8]
  wire  _T_361; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68641.8]
  wire  _T_362; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68642.8]
  wire  _T_367; // @[Monitor.scala 143:25:chipyard.TestHarness.RocketConfig.fir@68656.6]
  wire  _T_385; // @[Bundles.scala 160:28:chipyard.TestHarness.RocketConfig.fir@68687.8]
  wire  _T_387; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68689.8]
  wire  _T_388; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68690.8]
  wire  _T_401; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@68722.6]
  wire  _T_402; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@68723.6]
  wire  _T_403; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@68724.6]
  wire  _T_404; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@68725.6]
  wire  _T_406; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@68732.6]
  wire  _T_407; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@68733.6]
  wire  _T_408; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@68734.6]
  wire  _T_412; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@68739.8]
  wire  _T_413; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@68740.8]
  wire  _T_554; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@69032.4]
  reg [2:0] _T_563; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@69041.4]
  reg [31:0] _RAND_0;
  wire [2:0] _T_565; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@69043.4]
  wire  _T_566; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@69044.4]
  reg [2:0] _T_574; // @[Monitor.scala 381:22:chipyard.TestHarness.RocketConfig.fir@69055.4]
  reg [31:0] _RAND_1;
  reg [2:0] _T_575; // @[Monitor.scala 382:22:chipyard.TestHarness.RocketConfig.fir@69056.4]
  reg [31:0] _RAND_2;
  reg [2:0] _T_576; // @[Monitor.scala 383:22:chipyard.TestHarness.RocketConfig.fir@69057.4]
  reg [31:0] _RAND_3;
  reg [2:0] _T_577; // @[Monitor.scala 384:22:chipyard.TestHarness.RocketConfig.fir@69058.4]
  reg [31:0] _RAND_4;
  reg [16:0] _T_578; // @[Monitor.scala 385:22:chipyard.TestHarness.RocketConfig.fir@69059.4]
  reg [31:0] _RAND_5;
  wire  _T_579; // @[Monitor.scala 386:22:chipyard.TestHarness.RocketConfig.fir@69060.4]
  wire  _T_580; // @[Monitor.scala 386:19:chipyard.TestHarness.RocketConfig.fir@69061.4]
  wire  _T_581; // @[Monitor.scala 387:32:chipyard.TestHarness.RocketConfig.fir@69063.6]
  wire  _T_583; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@69065.6]
  wire  _T_584; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@69066.6]
  wire  _T_585; // @[Monitor.scala 388:32:chipyard.TestHarness.RocketConfig.fir@69071.6]
  wire  _T_587; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@69073.6]
  wire  _T_588; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@69074.6]
  wire  _T_589; // @[Monitor.scala 389:32:chipyard.TestHarness.RocketConfig.fir@69079.6]
  wire  _T_591; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@69081.6]
  wire  _T_592; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@69082.6]
  wire  _T_593; // @[Monitor.scala 390:32:chipyard.TestHarness.RocketConfig.fir@69087.6]
  wire  _T_595; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@69089.6]
  wire  _T_596; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@69090.6]
  wire  _T_597; // @[Monitor.scala 391:32:chipyard.TestHarness.RocketConfig.fir@69095.6]
  wire  _T_599; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@69097.6]
  wire  _T_600; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@69098.6]
  wire  _T_602; // @[Monitor.scala 393:20:chipyard.TestHarness.RocketConfig.fir@69105.4]
  wire  _T_603; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@69113.4]
  wire [12:0] _T_605; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@69115.4]
  wire [5:0] _T_607; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@69117.4]
  reg [2:0] _T_611; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@69121.4]
  reg [31:0] _RAND_6;
  wire [2:0] _T_613; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@69123.4]
  wire  _T_614; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@69124.4]
  reg [2:0] _T_624; // @[Monitor.scala 534:22:chipyard.TestHarness.RocketConfig.fir@69137.4]
  reg [31:0] _RAND_7;
  reg [2:0] _T_625; // @[Monitor.scala 535:22:chipyard.TestHarness.RocketConfig.fir@69138.4]
  reg [31:0] _RAND_8;
  wire  _T_628; // @[Monitor.scala 538:22:chipyard.TestHarness.RocketConfig.fir@69141.4]
  wire  _T_629; // @[Monitor.scala 538:19:chipyard.TestHarness.RocketConfig.fir@69142.4]
  wire  _T_638; // @[Monitor.scala 541:29:chipyard.TestHarness.RocketConfig.fir@69160.6]
  wire  _T_640; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@69162.6]
  wire  _T_641; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@69163.6]
  wire  _T_642; // @[Monitor.scala 542:29:chipyard.TestHarness.RocketConfig.fir@69168.6]
  wire  _T_644; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@69170.6]
  wire  _T_645; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@69171.6]
  wire  _T_655; // @[Monitor.scala 546:20:chipyard.TestHarness.RocketConfig.fir@69194.4]
  reg [4:0] inflight; // @[Monitor.scala 608:27:chipyard.TestHarness.RocketConfig.fir@69203.4]
  reg [31:0] _RAND_9;
  reg [19:0] inflight_opcodes; // @[Monitor.scala 610:35:chipyard.TestHarness.RocketConfig.fir@69204.4]
  reg [31:0] _RAND_10;
  reg [19:0] inflight_sizes; // @[Monitor.scala 612:33:chipyard.TestHarness.RocketConfig.fir@69205.4]
  reg [31:0] _RAND_11;
  reg [2:0] _T_665; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@69215.4]
  reg [31:0] _RAND_12;
  wire [2:0] _T_667; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@69217.4]
  wire  a_first; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@69218.4]
  reg [2:0] _T_683; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@69237.4]
  reg [31:0] _RAND_13;
  wire [2:0] _T_685; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@69239.4]
  wire  d_first; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@69240.4]
  wire [4:0] _GEN_57; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@69259.4]
  wire [5:0] _T_693; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@69259.4]
  wire [19:0] _T_694; // @[Monitor.scala 629:44:chipyard.TestHarness.RocketConfig.fir@69260.4]
  wire [15:0] _T_698; // @[Monitor.scala 606:57:chipyard.TestHarness.RocketConfig.fir@69264.4]
  wire [19:0] _GEN_58; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@69265.4]
  wire [19:0] _T_699; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@69265.4]
  wire [19:0] _T_700; // @[Monitor.scala 629:152:chipyard.TestHarness.RocketConfig.fir@69266.4]
  wire [19:0] _T_702; // @[Monitor.scala 633:40:chipyard.TestHarness.RocketConfig.fir@69271.4]
  wire [19:0] _T_707; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@69276.4]
  wire [19:0] _T_708; // @[Monitor.scala 633:144:chipyard.TestHarness.RocketConfig.fir@69277.4]
  wire  _T_712; // @[Monitor.scala 643:27:chipyard.TestHarness.RocketConfig.fir@69302.4]
  wire [7:0] _T_714; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@69305.6]
  wire [3:0] _T_715; // @[Monitor.scala 645:53:chipyard.TestHarness.RocketConfig.fir@69307.6]
  wire [3:0] _T_716; // @[Monitor.scala 645:61:chipyard.TestHarness.RocketConfig.fir@69308.6]
  wire [3:0] _T_717; // @[Monitor.scala 646:49:chipyard.TestHarness.RocketConfig.fir@69310.6]
  wire [3:0] _T_718; // @[Monitor.scala 646:57:chipyard.TestHarness.RocketConfig.fir@69311.6]
  wire [4:0] _GEN_63; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@69313.6]
  wire [5:0] _T_719; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@69313.6]
  wire [3:0] a_opcodes_set_interm; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@69304.4]
  wire [66:0] _GEN_64; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@69314.6]
  wire [66:0] _T_720; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@69314.6]
  wire [3:0] a_sizes_set_interm; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@69304.4]
  wire [66:0] _GEN_66; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@69317.6]
  wire [66:0] _T_722; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@69317.6]
  wire [4:0] _T_723; // @[Monitor.scala 649:26:chipyard.TestHarness.RocketConfig.fir@69319.6]
  wire  _T_725; // @[Monitor.scala 649:17:chipyard.TestHarness.RocketConfig.fir@69321.6]
  wire  _T_727; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@69323.6]
  wire  _T_728; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@69324.6]
  wire [7:0] _GEN_15; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@69304.4]
  wire [66:0] _GEN_18; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@69304.4]
  wire [66:0] _GEN_19; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@69304.4]
  wire  _T_731; // @[Monitor.scala 660:27:chipyard.TestHarness.RocketConfig.fir@69338.4]
  wire [7:0] _T_735; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@69343.6]
  wire [78:0] _GEN_68; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@69350.6]
  wire [78:0] _T_741; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@69350.6]
  wire [7:0] _GEN_20; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@69342.4]
  wire [78:0] _GEN_21; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@69342.4]
  wire  _T_748; // @[Monitor.scala 665:26:chipyard.TestHarness.RocketConfig.fir@69360.4]
  wire [4:0] _T_752; // @[Monitor.scala 666:25:chipyard.TestHarness.RocketConfig.fir@69365.6]
  wire  _T_754; // @[Monitor.scala 666:93:chipyard.TestHarness.RocketConfig.fir@69367.6]
  wire  _T_755; // @[Monitor.scala 666:68:chipyard.TestHarness.RocketConfig.fir@69368.6]
  wire  _T_756; // @[Monitor.scala 666:142:chipyard.TestHarness.RocketConfig.fir@69369.6]
  wire  _T_757; // @[Monitor.scala 666:119:chipyard.TestHarness.RocketConfig.fir@69370.6]
  wire  _T_758; // @[Monitor.scala 666:166:chipyard.TestHarness.RocketConfig.fir@69371.6]
  wire  _T_759; // @[Monitor.scala 666:49:chipyard.TestHarness.RocketConfig.fir@69372.6]
  wire  _T_761; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@69374.6]
  wire  _T_762; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@69375.6]
  wire [3:0] a_opcode_lookup; // @[:chipyard.TestHarness.RocketConfig.fir@69257.4 :chipyard.TestHarness.RocketConfig.fir@69258.4 Monitor.scala 629:21:chipyard.TestHarness.RocketConfig.fir@69267.4]
  wire [2:0] _GEN_25; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@69381.6]
  wire [2:0] _GEN_26; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@69381.6]
  wire [2:0] _GEN_27; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@69381.6]
  wire [2:0] _GEN_28; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@69381.6]
  wire [2:0] _GEN_29; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@69381.6]
  wire [2:0] _GEN_30; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@69381.6]
  wire  _T_764; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@69381.6]
  wire [2:0] _GEN_37; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@69383.6]
  wire [2:0] _GEN_38; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@69383.6]
  wire  _T_766; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@69383.6]
  wire  _T_767; // @[Monitor.scala 667:71:chipyard.TestHarness.RocketConfig.fir@69384.6]
  wire [2:0] _GEN_41; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@69385.6]
  wire [2:0] _GEN_42; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@69385.6]
  wire [2:0] _GEN_43; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@69385.6]
  wire [2:0] _GEN_44; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@69385.6]
  wire [2:0] _GEN_45; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@69385.6]
  wire [2:0] _GEN_46; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@69385.6]
  wire  _T_768; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@69385.6]
  wire [2:0] _GEN_53; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@69386.6]
  wire [2:0] _GEN_54; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@69386.6]
  wire  _T_769; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@69386.6]
  wire  _T_770; // @[Monitor.scala 668:99:chipyard.TestHarness.RocketConfig.fir@69387.6]
  wire  _T_771; // @[Monitor.scala 668:34:chipyard.TestHarness.RocketConfig.fir@69388.6]
  wire  _T_772; // @[Monitor.scala 668:15:chipyard.TestHarness.RocketConfig.fir@69389.6]
  wire  _T_774; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@69391.6]
  wire  _T_775; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@69392.6]
  wire [3:0] a_size_lookup; // @[:chipyard.TestHarness.RocketConfig.fir@69268.4 :chipyard.TestHarness.RocketConfig.fir@69269.4 Monitor.scala 633:19:chipyard.TestHarness.RocketConfig.fir@69278.4]
  wire [3:0] _GEN_71; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@69397.6]
  wire  _T_776; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@69397.6]
  wire  _T_778; // @[Monitor.scala 670:72:chipyard.TestHarness.RocketConfig.fir@69399.6]
  wire  _T_779; // @[Monitor.scala 670:53:chipyard.TestHarness.RocketConfig.fir@69400.6]
  wire  _T_781; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@69402.6]
  wire  _T_782; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@69403.6]
  wire  _T_784; // @[Monitor.scala 672:36:chipyard.TestHarness.RocketConfig.fir@69410.4]
  wire  _T_785; // @[Monitor.scala 672:47:chipyard.TestHarness.RocketConfig.fir@69411.4]
  wire  _T_787; // @[Monitor.scala 672:65:chipyard.TestHarness.RocketConfig.fir@69413.4]
  wire  _T_790; // @[Monitor.scala 673:15:chipyard.TestHarness.RocketConfig.fir@69417.6]
  wire  _T_791; // @[Monitor.scala 673:32:chipyard.TestHarness.RocketConfig.fir@69418.6]
  wire  _T_793; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@69420.6]
  wire  _T_794; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@69421.6]
  wire [4:0] a_set; // @[:chipyard.TestHarness.RocketConfig.fir@69251.4 :chipyard.TestHarness.RocketConfig.fir@69252.4 Monitor.scala 644:13:chipyard.TestHarness.RocketConfig.fir@69306.6]
  wire [4:0] _T_795; // @[Monitor.scala 680:27:chipyard.TestHarness.RocketConfig.fir@69427.4]
  wire [4:0] d_clr; // @[:chipyard.TestHarness.RocketConfig.fir@69330.4 :chipyard.TestHarness.RocketConfig.fir@69331.4 Monitor.scala 661:13:chipyard.TestHarness.RocketConfig.fir@69344.6]
  wire [4:0] _T_796; // @[Monitor.scala 680:38:chipyard.TestHarness.RocketConfig.fir@69428.4]
  wire [4:0] _T_797; // @[Monitor.scala 680:36:chipyard.TestHarness.RocketConfig.fir@69429.4]
  wire [19:0] a_opcodes_set; // @[:chipyard.TestHarness.RocketConfig.fir@69253.4 :chipyard.TestHarness.RocketConfig.fir@69254.4 Monitor.scala 647:21:chipyard.TestHarness.RocketConfig.fir@69315.6]
  wire [19:0] _T_798; // @[Monitor.scala 681:43:chipyard.TestHarness.RocketConfig.fir@69431.4]
  wire [19:0] d_opcodes_clr; // @[:chipyard.TestHarness.RocketConfig.fir@69332.4 :chipyard.TestHarness.RocketConfig.fir@69333.4 Monitor.scala 662:21:chipyard.TestHarness.RocketConfig.fir@69351.6]
  wire [19:0] _T_799; // @[Monitor.scala 681:62:chipyard.TestHarness.RocketConfig.fir@69432.4]
  wire [19:0] _T_800; // @[Monitor.scala 681:60:chipyard.TestHarness.RocketConfig.fir@69433.4]
  wire [19:0] a_sizes_set; // @[:chipyard.TestHarness.RocketConfig.fir@69255.4 :chipyard.TestHarness.RocketConfig.fir@69256.4 Monitor.scala 648:19:chipyard.TestHarness.RocketConfig.fir@69318.6]
  wire [19:0] _T_801; // @[Monitor.scala 682:39:chipyard.TestHarness.RocketConfig.fir@69435.4]
  wire [19:0] _T_803; // @[Monitor.scala 682:54:chipyard.TestHarness.RocketConfig.fir@69437.4]
  reg [31:0] _T_804; // @[Monitor.scala 684:27:chipyard.TestHarness.RocketConfig.fir@69439.4]
  reg [31:0] _RAND_14;
  wire  _T_805; // @[Monitor.scala 687:26:chipyard.TestHarness.RocketConfig.fir@69442.4]
  wire  _T_806; // @[Monitor.scala 687:16:chipyard.TestHarness.RocketConfig.fir@69443.4]
  wire  _T_807; // @[Monitor.scala 687:39:chipyard.TestHarness.RocketConfig.fir@69444.4]
  wire  _T_808; // @[Monitor.scala 687:30:chipyard.TestHarness.RocketConfig.fir@69445.4]
  wire  _T_809; // @[Monitor.scala 687:59:chipyard.TestHarness.RocketConfig.fir@69446.4]
  wire  _T_810; // @[Monitor.scala 687:47:chipyard.TestHarness.RocketConfig.fir@69447.4]
  wire  _T_812; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@69449.4]
  wire  _T_813; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@69450.4]
  wire [31:0] _T_815; // @[Monitor.scala 689:26:chipyard.TestHarness.RocketConfig.fir@69456.4]
  wire  _T_818; // @[Monitor.scala 690:27:chipyard.TestHarness.RocketConfig.fir@69460.4]
  wire  _GEN_72; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68225.10]
  wire  _GEN_88; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68317.10]
  wire  _GEN_106; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68420.10]
  wire  _GEN_118; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68476.10]
  wire  _GEN_128; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68524.10]
  wire  _GEN_138; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68574.10]
  wire  _GEN_148; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68622.10]
  wire  _GEN_158; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68670.10]
  plusarg_reader #(.FORMAT("tilelink_timeout=%d"), .DEFAULT(0), .WIDTH(32)) plusarg_reader ( // @[PlusArg.scala 44:11:chipyard.TestHarness.RocketConfig.fir@69440.4]
    .out(plusarg_reader_out)
  );
  assign _T_4 = io_in_a_bits_source == 3'h4; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@68086.6]
  assign _T_5 = io_in_a_bits_source == 3'h0; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@68087.6]
  assign _T_6 = io_in_a_bits_source == 3'h1; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@68088.6]
  assign _T_7 = io_in_a_bits_source == 3'h2; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@68089.6]
  assign _T_9 = _T_4 | _T_5; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@68096.6]
  assign _T_10 = _T_9 | _T_6; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@68097.6]
  assign _T_11 = _T_10 | _T_7; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@68098.6]
  assign _T_13 = 13'h3f << io_in_a_bits_size; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@68100.6]
  assign _T_15 = ~_T_13[5:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@68102.6]
  assign _GEN_56 = {{11'd0}, _T_15}; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@68103.6]
  assign _T_16 = io_in_a_bits_address & _GEN_56; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@68103.6]
  assign _T_17 = _T_16 == 17'h0; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@68104.6]
  assign _T_20 = 4'h1 << io_in_a_bits_size[1:0]; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@68107.6]
  assign _T_22 = _T_20[2:0] | 3'h1; // @[Misc.scala 201:81:chipyard.TestHarness.RocketConfig.fir@68109.6]
  assign _T_23 = io_in_a_bits_size >= 3'h3; // @[Misc.scala 205:21:chipyard.TestHarness.RocketConfig.fir@68110.6]
  assign _T_26 = ~io_in_a_bits_address[2]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@68113.6]
  assign _T_28 = _T_22[2] & _T_26; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@68115.6]
  assign _T_29 = _T_23 | _T_28; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@68116.6]
  assign _T_31 = _T_22[2] & io_in_a_bits_address[2]; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@68118.6]
  assign _T_32 = _T_23 | _T_31; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@68119.6]
  assign _T_35 = ~io_in_a_bits_address[1]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@68122.6]
  assign _T_36 = _T_26 & _T_35; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@68123.6]
  assign _T_37 = _T_22[1] & _T_36; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@68124.6]
  assign _T_38 = _T_29 | _T_37; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@68125.6]
  assign _T_39 = _T_26 & io_in_a_bits_address[1]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@68126.6]
  assign _T_40 = _T_22[1] & _T_39; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@68127.6]
  assign _T_41 = _T_29 | _T_40; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@68128.6]
  assign _T_42 = io_in_a_bits_address[2] & _T_35; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@68129.6]
  assign _T_43 = _T_22[1] & _T_42; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@68130.6]
  assign _T_44 = _T_32 | _T_43; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@68131.6]
  assign _T_45 = io_in_a_bits_address[2] & io_in_a_bits_address[1]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@68132.6]
  assign _T_46 = _T_22[1] & _T_45; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@68133.6]
  assign _T_47 = _T_32 | _T_46; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@68134.6]
  assign _T_50 = ~io_in_a_bits_address[0]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@68137.6]
  assign _T_51 = _T_36 & _T_50; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@68138.6]
  assign _T_52 = _T_22[0] & _T_51; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@68139.6]
  assign _T_53 = _T_38 | _T_52; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@68140.6]
  assign _T_54 = _T_36 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@68141.6]
  assign _T_55 = _T_22[0] & _T_54; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@68142.6]
  assign _T_56 = _T_38 | _T_55; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@68143.6]
  assign _T_57 = _T_39 & _T_50; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@68144.6]
  assign _T_58 = _T_22[0] & _T_57; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@68145.6]
  assign _T_59 = _T_41 | _T_58; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@68146.6]
  assign _T_60 = _T_39 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@68147.6]
  assign _T_61 = _T_22[0] & _T_60; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@68148.6]
  assign _T_62 = _T_41 | _T_61; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@68149.6]
  assign _T_63 = _T_42 & _T_50; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@68150.6]
  assign _T_64 = _T_22[0] & _T_63; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@68151.6]
  assign _T_65 = _T_44 | _T_64; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@68152.6]
  assign _T_66 = _T_42 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@68153.6]
  assign _T_67 = _T_22[0] & _T_66; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@68154.6]
  assign _T_68 = _T_44 | _T_67; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@68155.6]
  assign _T_69 = _T_45 & _T_50; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@68156.6]
  assign _T_70 = _T_22[0] & _T_69; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@68157.6]
  assign _T_71 = _T_47 | _T_70; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@68158.6]
  assign _T_72 = _T_45 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@68159.6]
  assign _T_73 = _T_22[0] & _T_72; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@68160.6]
  assign _T_74 = _T_47 | _T_73; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@68161.6]
  assign _T_81 = {_T_74,_T_71,_T_68,_T_65,_T_62,_T_59,_T_56,_T_53}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@68168.6]
  assign _T_120 = io_in_a_bits_opcode == 3'h6; // @[Monitor.scala 79:25:chipyard.TestHarness.RocketConfig.fir@68211.6]
  assign _T_122 = io_in_a_bits_address ^ 17'h10000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@68214.8]
  assign _T_123 = {1'b0,$signed(_T_122)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@68215.8]
  assign _T_125 = $signed(_T_123) & -18'sh10000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@68217.8]
  assign _T_126 = $signed(_T_125) == 18'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@68218.8]
  assign _T_131 = ~reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68223.8]
  assign _T_137 = 3'h6 == io_in_a_bits_size; // @[Parameters.scala 92:48:chipyard.TestHarness.RocketConfig.fir@68238.8]
  assign _T_139 = _T_5 & _T_137; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@68240.8]
  assign _T_147 = _T_139 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68249.8]
  assign _T_148 = ~_T_147; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68250.8]
  assign _T_150 = _T_11 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68256.8]
  assign _T_151 = ~_T_150; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68257.8]
  assign _T_154 = _T_23 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68264.8]
  assign _T_155 = ~_T_154; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68265.8]
  assign _T_157 = _T_17 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68271.8]
  assign _T_158 = ~_T_157; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68272.8]
  assign _T_159 = io_in_a_bits_param <= 3'h2; // @[Bundles.scala 110:27:chipyard.TestHarness.RocketConfig.fir@68277.8]
  assign _T_161 = _T_159 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68279.8]
  assign _T_162 = ~_T_161; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68280.8]
  assign _T_163 = ~io_in_a_bits_mask; // @[Monitor.scala 86:18:chipyard.TestHarness.RocketConfig.fir@68285.8]
  assign _T_164 = _T_163 == 8'h0; // @[Monitor.scala 86:31:chipyard.TestHarness.RocketConfig.fir@68286.8]
  assign _T_166 = _T_164 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68288.8]
  assign _T_167 = ~_T_166; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68289.8]
  assign _T_168 = ~io_in_a_bits_corrupt; // @[Monitor.scala 87:18:chipyard.TestHarness.RocketConfig.fir@68294.8]
  assign _T_170 = _T_168 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68296.8]
  assign _T_171 = ~_T_170; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68297.8]
  assign _T_172 = io_in_a_bits_opcode == 3'h7; // @[Monitor.scala 90:25:chipyard.TestHarness.RocketConfig.fir@68303.6]
  assign _T_215 = io_in_a_bits_param != 3'h0; // @[Monitor.scala 97:31:chipyard.TestHarness.RocketConfig.fir@68377.8]
  assign _T_217 = _T_215 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68379.8]
  assign _T_218 = ~_T_217; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68380.8]
  assign _T_228 = io_in_a_bits_opcode == 3'h4; // @[Monitor.scala 102:25:chipyard.TestHarness.RocketConfig.fir@68403.6]
  assign _T_230 = io_in_a_bits_size <= 3'h6; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@68406.8]
  assign _T_238 = _T_230 & _T_126; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@68414.8]
  assign _T_241 = _T_238 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68417.8]
  assign _T_242 = ~_T_241; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68418.8]
  assign _T_249 = io_in_a_bits_param == 3'h0; // @[Monitor.scala 106:31:chipyard.TestHarness.RocketConfig.fir@68437.8]
  assign _T_251 = _T_249 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68439.8]
  assign _T_252 = ~_T_251; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68440.8]
  assign _T_253 = io_in_a_bits_mask == _T_81; // @[Monitor.scala 107:30:chipyard.TestHarness.RocketConfig.fir@68445.8]
  assign _T_255 = _T_253 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68447.8]
  assign _T_256 = ~_T_255; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68448.8]
  assign _T_261 = io_in_a_bits_opcode == 3'h0; // @[Monitor.scala 111:25:chipyard.TestHarness.RocketConfig.fir@68462.6]
  assign _T_287 = io_in_a_bits_opcode == 3'h1; // @[Monitor.scala 119:25:chipyard.TestHarness.RocketConfig.fir@68510.6]
  assign _T_309 = ~_T_81; // @[Monitor.scala 124:33:chipyard.TestHarness.RocketConfig.fir@68549.8]
  assign _T_310 = io_in_a_bits_mask & _T_309; // @[Monitor.scala 124:31:chipyard.TestHarness.RocketConfig.fir@68550.8]
  assign _T_311 = _T_310 == 8'h0; // @[Monitor.scala 124:40:chipyard.TestHarness.RocketConfig.fir@68551.8]
  assign _T_313 = _T_311 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68553.8]
  assign _T_314 = ~_T_313; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68554.8]
  assign _T_315 = io_in_a_bits_opcode == 3'h2; // @[Monitor.scala 127:25:chipyard.TestHarness.RocketConfig.fir@68560.6]
  assign _T_333 = io_in_a_bits_param <= 3'h4; // @[Bundles.scala 140:33:chipyard.TestHarness.RocketConfig.fir@68591.8]
  assign _T_335 = _T_333 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68593.8]
  assign _T_336 = ~_T_335; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68594.8]
  assign _T_341 = io_in_a_bits_opcode == 3'h3; // @[Monitor.scala 135:25:chipyard.TestHarness.RocketConfig.fir@68608.6]
  assign _T_359 = io_in_a_bits_param <= 3'h3; // @[Bundles.scala 147:30:chipyard.TestHarness.RocketConfig.fir@68639.8]
  assign _T_361 = _T_359 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68641.8]
  assign _T_362 = ~_T_361; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68642.8]
  assign _T_367 = io_in_a_bits_opcode == 3'h5; // @[Monitor.scala 143:25:chipyard.TestHarness.RocketConfig.fir@68656.6]
  assign _T_385 = io_in_a_bits_param <= 3'h1; // @[Bundles.scala 160:28:chipyard.TestHarness.RocketConfig.fir@68687.8]
  assign _T_387 = _T_385 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68689.8]
  assign _T_388 = ~_T_387; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68690.8]
  assign _T_401 = io_in_d_bits_source == 3'h4; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@68722.6]
  assign _T_402 = io_in_d_bits_source == 3'h0; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@68723.6]
  assign _T_403 = io_in_d_bits_source == 3'h1; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@68724.6]
  assign _T_404 = io_in_d_bits_source == 3'h2; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@68725.6]
  assign _T_406 = _T_401 | _T_402; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@68732.6]
  assign _T_407 = _T_406 | _T_403; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@68733.6]
  assign _T_408 = _T_407 | _T_404; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@68734.6]
  assign _T_412 = _T_408 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@68739.8]
  assign _T_413 = ~_T_412; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@68740.8]
  assign _T_554 = io_in_a_ready & io_in_a_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@69032.4]
  assign _T_565 = _T_563 - 3'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@69043.4]
  assign _T_566 = _T_563 == 3'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@69044.4]
  assign _T_579 = ~_T_566; // @[Monitor.scala 386:22:chipyard.TestHarness.RocketConfig.fir@69060.4]
  assign _T_580 = io_in_a_valid & _T_579; // @[Monitor.scala 386:19:chipyard.TestHarness.RocketConfig.fir@69061.4]
  assign _T_581 = io_in_a_bits_opcode == _T_574; // @[Monitor.scala 387:32:chipyard.TestHarness.RocketConfig.fir@69063.6]
  assign _T_583 = _T_581 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@69065.6]
  assign _T_584 = ~_T_583; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@69066.6]
  assign _T_585 = io_in_a_bits_param == _T_575; // @[Monitor.scala 388:32:chipyard.TestHarness.RocketConfig.fir@69071.6]
  assign _T_587 = _T_585 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@69073.6]
  assign _T_588 = ~_T_587; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@69074.6]
  assign _T_589 = io_in_a_bits_size == _T_576; // @[Monitor.scala 389:32:chipyard.TestHarness.RocketConfig.fir@69079.6]
  assign _T_591 = _T_589 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@69081.6]
  assign _T_592 = ~_T_591; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@69082.6]
  assign _T_593 = io_in_a_bits_source == _T_577; // @[Monitor.scala 390:32:chipyard.TestHarness.RocketConfig.fir@69087.6]
  assign _T_595 = _T_593 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@69089.6]
  assign _T_596 = ~_T_595; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@69090.6]
  assign _T_597 = io_in_a_bits_address == _T_578; // @[Monitor.scala 391:32:chipyard.TestHarness.RocketConfig.fir@69095.6]
  assign _T_599 = _T_597 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@69097.6]
  assign _T_600 = ~_T_599; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@69098.6]
  assign _T_602 = _T_554 & _T_566; // @[Monitor.scala 393:20:chipyard.TestHarness.RocketConfig.fir@69105.4]
  assign _T_603 = io_in_d_ready & io_in_d_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@69113.4]
  assign _T_605 = 13'h3f << io_in_d_bits_size; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@69115.4]
  assign _T_607 = ~_T_605[5:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@69117.4]
  assign _T_613 = _T_611 - 3'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@69123.4]
  assign _T_614 = _T_611 == 3'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@69124.4]
  assign _T_628 = ~_T_614; // @[Monitor.scala 538:22:chipyard.TestHarness.RocketConfig.fir@69141.4]
  assign _T_629 = io_in_d_valid & _T_628; // @[Monitor.scala 538:19:chipyard.TestHarness.RocketConfig.fir@69142.4]
  assign _T_638 = io_in_d_bits_size == _T_624; // @[Monitor.scala 541:29:chipyard.TestHarness.RocketConfig.fir@69160.6]
  assign _T_640 = _T_638 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@69162.6]
  assign _T_641 = ~_T_640; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@69163.6]
  assign _T_642 = io_in_d_bits_source == _T_625; // @[Monitor.scala 542:29:chipyard.TestHarness.RocketConfig.fir@69168.6]
  assign _T_644 = _T_642 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@69170.6]
  assign _T_645 = ~_T_644; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@69171.6]
  assign _T_655 = _T_603 & _T_614; // @[Monitor.scala 546:20:chipyard.TestHarness.RocketConfig.fir@69194.4]
  assign _T_667 = _T_665 - 3'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@69217.4]
  assign a_first = _T_665 == 3'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@69218.4]
  assign _T_685 = _T_683 - 3'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@69239.4]
  assign d_first = _T_683 == 3'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@69240.4]
  assign _GEN_57 = {io_in_d_bits_source, 2'h0}; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@69259.4]
  assign _T_693 = {{1'd0}, _GEN_57}; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@69259.4]
  assign _T_694 = inflight_opcodes >> _T_693; // @[Monitor.scala 629:44:chipyard.TestHarness.RocketConfig.fir@69260.4]
  assign _T_698 = 16'h10 - 16'h1; // @[Monitor.scala 606:57:chipyard.TestHarness.RocketConfig.fir@69264.4]
  assign _GEN_58 = {{4'd0}, _T_698}; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@69265.4]
  assign _T_699 = _T_694 & _GEN_58; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@69265.4]
  assign _T_700 = {{1'd0}, _T_699[19:1]}; // @[Monitor.scala 629:152:chipyard.TestHarness.RocketConfig.fir@69266.4]
  assign _T_702 = inflight_sizes >> _T_693; // @[Monitor.scala 633:40:chipyard.TestHarness.RocketConfig.fir@69271.4]
  assign _T_707 = _T_702 & _GEN_58; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@69276.4]
  assign _T_708 = {{1'd0}, _T_707[19:1]}; // @[Monitor.scala 633:144:chipyard.TestHarness.RocketConfig.fir@69277.4]
  assign _T_712 = _T_554 & a_first; // @[Monitor.scala 643:27:chipyard.TestHarness.RocketConfig.fir@69302.4]
  assign _T_714 = 8'h1 << io_in_a_bits_source; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@69305.6]
  assign _T_715 = {io_in_a_bits_opcode, 1'h0}; // @[Monitor.scala 645:53:chipyard.TestHarness.RocketConfig.fir@69307.6]
  assign _T_716 = _T_715 | 4'h1; // @[Monitor.scala 645:61:chipyard.TestHarness.RocketConfig.fir@69308.6]
  assign _T_717 = {io_in_a_bits_size, 1'h0}; // @[Monitor.scala 646:49:chipyard.TestHarness.RocketConfig.fir@69310.6]
  assign _T_718 = _T_717 | 4'h1; // @[Monitor.scala 646:57:chipyard.TestHarness.RocketConfig.fir@69311.6]
  assign _GEN_63 = {io_in_a_bits_source, 2'h0}; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@69313.6]
  assign _T_719 = {{1'd0}, _GEN_63}; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@69313.6]
  assign a_opcodes_set_interm = _T_712 ? _T_716 : 4'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@69304.4]
  assign _GEN_64 = {{63'd0}, a_opcodes_set_interm}; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@69314.6]
  assign _T_720 = _GEN_64 << _T_719; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@69314.6]
  assign a_sizes_set_interm = _T_712 ? _T_718 : 4'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@69304.4]
  assign _GEN_66 = {{63'd0}, a_sizes_set_interm}; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@69317.6]
  assign _T_722 = _GEN_66 << _T_719; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@69317.6]
  assign _T_723 = inflight >> io_in_a_bits_source; // @[Monitor.scala 649:26:chipyard.TestHarness.RocketConfig.fir@69319.6]
  assign _T_725 = ~_T_723[0]; // @[Monitor.scala 649:17:chipyard.TestHarness.RocketConfig.fir@69321.6]
  assign _T_727 = _T_725 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@69323.6]
  assign _T_728 = ~_T_727; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@69324.6]
  assign _GEN_15 = _T_712 ? _T_714 : 8'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@69304.4]
  assign _GEN_18 = _T_712 ? _T_720 : 67'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@69304.4]
  assign _GEN_19 = _T_712 ? _T_722 : 67'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@69304.4]
  assign _T_731 = _T_603 & d_first; // @[Monitor.scala 660:27:chipyard.TestHarness.RocketConfig.fir@69338.4]
  assign _T_735 = 8'h1 << io_in_d_bits_source; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@69343.6]
  assign _GEN_68 = {{63'd0}, _T_698}; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@69350.6]
  assign _T_741 = _GEN_68 << _T_693; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@69350.6]
  assign _GEN_20 = _T_731 ? _T_735 : 8'h0; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@69342.4]
  assign _GEN_21 = _T_731 ? _T_741 : 79'h0; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@69342.4]
  assign _T_748 = io_in_d_valid & d_first; // @[Monitor.scala 665:26:chipyard.TestHarness.RocketConfig.fir@69360.4]
  assign _T_752 = inflight >> io_in_d_bits_source; // @[Monitor.scala 666:25:chipyard.TestHarness.RocketConfig.fir@69365.6]
  assign _T_754 = io_in_a_bits_source == io_in_d_bits_source; // @[Monitor.scala 666:93:chipyard.TestHarness.RocketConfig.fir@69367.6]
  assign _T_755 = io_in_a_valid & _T_754; // @[Monitor.scala 666:68:chipyard.TestHarness.RocketConfig.fir@69368.6]
  assign _T_756 = io_in_a_bits_size == io_in_d_bits_size; // @[Monitor.scala 666:142:chipyard.TestHarness.RocketConfig.fir@69369.6]
  assign _T_757 = _T_755 & _T_756; // @[Monitor.scala 666:119:chipyard.TestHarness.RocketConfig.fir@69370.6]
  assign _T_758 = _T_757 & a_first; // @[Monitor.scala 666:166:chipyard.TestHarness.RocketConfig.fir@69371.6]
  assign _T_759 = _T_752[0] | _T_758; // @[Monitor.scala 666:49:chipyard.TestHarness.RocketConfig.fir@69372.6]
  assign _T_761 = _T_759 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@69374.6]
  assign _T_762 = ~_T_761; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@69375.6]
  assign a_opcode_lookup = _T_700[3:0]; // @[:chipyard.TestHarness.RocketConfig.fir@69257.4 :chipyard.TestHarness.RocketConfig.fir@69258.4 Monitor.scala 629:21:chipyard.TestHarness.RocketConfig.fir@69267.4]
  assign _GEN_25 = 3'h2 == a_opcode_lookup[2:0] ? 3'h1 : 3'h0; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@69381.6]
  assign _GEN_26 = 3'h3 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_25; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@69381.6]
  assign _GEN_27 = 3'h4 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_26; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@69381.6]
  assign _GEN_28 = 3'h5 == a_opcode_lookup[2:0] ? 3'h2 : _GEN_27; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@69381.6]
  assign _GEN_29 = 3'h6 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_28; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@69381.6]
  assign _GEN_30 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_29; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@69381.6]
  assign _T_764 = 3'h1 == _GEN_30; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@69381.6]
  assign _GEN_37 = 3'h6 == a_opcode_lookup[2:0] ? 3'h5 : _GEN_28; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@69383.6]
  assign _GEN_38 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_37; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@69383.6]
  assign _T_766 = 3'h1 == _GEN_38; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@69383.6]
  assign _T_767 = _T_764 | _T_766; // @[Monitor.scala 667:71:chipyard.TestHarness.RocketConfig.fir@69384.6]
  assign _GEN_41 = 3'h2 == io_in_a_bits_opcode ? 3'h1 : 3'h0; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@69385.6]
  assign _GEN_42 = 3'h3 == io_in_a_bits_opcode ? 3'h1 : _GEN_41; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@69385.6]
  assign _GEN_43 = 3'h4 == io_in_a_bits_opcode ? 3'h1 : _GEN_42; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@69385.6]
  assign _GEN_44 = 3'h5 == io_in_a_bits_opcode ? 3'h2 : _GEN_43; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@69385.6]
  assign _GEN_45 = 3'h6 == io_in_a_bits_opcode ? 3'h4 : _GEN_44; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@69385.6]
  assign _GEN_46 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_45; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@69385.6]
  assign _T_768 = 3'h1 == _GEN_46; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@69385.6]
  assign _GEN_53 = 3'h6 == io_in_a_bits_opcode ? 3'h5 : _GEN_44; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@69386.6]
  assign _GEN_54 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_53; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@69386.6]
  assign _T_769 = 3'h1 == _GEN_54; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@69386.6]
  assign _T_770 = _T_768 | _T_769; // @[Monitor.scala 668:99:chipyard.TestHarness.RocketConfig.fir@69387.6]
  assign _T_771 = io_in_a_valid & _T_770; // @[Monitor.scala 668:34:chipyard.TestHarness.RocketConfig.fir@69388.6]
  assign _T_772 = _T_767 | _T_771; // @[Monitor.scala 668:15:chipyard.TestHarness.RocketConfig.fir@69389.6]
  assign _T_774 = _T_772 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@69391.6]
  assign _T_775 = ~_T_774; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@69392.6]
  assign a_size_lookup = _T_708[3:0]; // @[:chipyard.TestHarness.RocketConfig.fir@69268.4 :chipyard.TestHarness.RocketConfig.fir@69269.4 Monitor.scala 633:19:chipyard.TestHarness.RocketConfig.fir@69278.4]
  assign _GEN_71 = {{1'd0}, io_in_d_bits_size}; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@69397.6]
  assign _T_776 = _GEN_71 == a_size_lookup; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@69397.6]
  assign _T_778 = io_in_a_valid & _T_756; // @[Monitor.scala 670:72:chipyard.TestHarness.RocketConfig.fir@69399.6]
  assign _T_779 = _T_776 | _T_778; // @[Monitor.scala 670:53:chipyard.TestHarness.RocketConfig.fir@69400.6]
  assign _T_781 = _T_779 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@69402.6]
  assign _T_782 = ~_T_781; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@69403.6]
  assign _T_784 = _T_748 & a_first; // @[Monitor.scala 672:36:chipyard.TestHarness.RocketConfig.fir@69410.4]
  assign _T_785 = _T_784 & io_in_a_valid; // @[Monitor.scala 672:47:chipyard.TestHarness.RocketConfig.fir@69411.4]
  assign _T_787 = _T_785 & _T_754; // @[Monitor.scala 672:65:chipyard.TestHarness.RocketConfig.fir@69413.4]
  assign _T_790 = ~io_in_d_ready; // @[Monitor.scala 673:15:chipyard.TestHarness.RocketConfig.fir@69417.6]
  assign _T_791 = _T_790 | io_in_a_ready; // @[Monitor.scala 673:32:chipyard.TestHarness.RocketConfig.fir@69418.6]
  assign _T_793 = _T_791 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@69420.6]
  assign _T_794 = ~_T_793; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@69421.6]
  assign a_set = _GEN_15[4:0]; // @[:chipyard.TestHarness.RocketConfig.fir@69251.4 :chipyard.TestHarness.RocketConfig.fir@69252.4 Monitor.scala 644:13:chipyard.TestHarness.RocketConfig.fir@69306.6]
  assign _T_795 = inflight | a_set; // @[Monitor.scala 680:27:chipyard.TestHarness.RocketConfig.fir@69427.4]
  assign d_clr = _GEN_20[4:0]; // @[:chipyard.TestHarness.RocketConfig.fir@69330.4 :chipyard.TestHarness.RocketConfig.fir@69331.4 Monitor.scala 661:13:chipyard.TestHarness.RocketConfig.fir@69344.6]
  assign _T_796 = ~d_clr; // @[Monitor.scala 680:38:chipyard.TestHarness.RocketConfig.fir@69428.4]
  assign _T_797 = _T_795 & _T_796; // @[Monitor.scala 680:36:chipyard.TestHarness.RocketConfig.fir@69429.4]
  assign a_opcodes_set = _GEN_18[19:0]; // @[:chipyard.TestHarness.RocketConfig.fir@69253.4 :chipyard.TestHarness.RocketConfig.fir@69254.4 Monitor.scala 647:21:chipyard.TestHarness.RocketConfig.fir@69315.6]
  assign _T_798 = inflight_opcodes | a_opcodes_set; // @[Monitor.scala 681:43:chipyard.TestHarness.RocketConfig.fir@69431.4]
  assign d_opcodes_clr = _GEN_21[19:0]; // @[:chipyard.TestHarness.RocketConfig.fir@69332.4 :chipyard.TestHarness.RocketConfig.fir@69333.4 Monitor.scala 662:21:chipyard.TestHarness.RocketConfig.fir@69351.6]
  assign _T_799 = ~d_opcodes_clr; // @[Monitor.scala 681:62:chipyard.TestHarness.RocketConfig.fir@69432.4]
  assign _T_800 = _T_798 & _T_799; // @[Monitor.scala 681:60:chipyard.TestHarness.RocketConfig.fir@69433.4]
  assign a_sizes_set = _GEN_19[19:0]; // @[:chipyard.TestHarness.RocketConfig.fir@69255.4 :chipyard.TestHarness.RocketConfig.fir@69256.4 Monitor.scala 648:19:chipyard.TestHarness.RocketConfig.fir@69318.6]
  assign _T_801 = inflight_sizes | a_sizes_set; // @[Monitor.scala 682:39:chipyard.TestHarness.RocketConfig.fir@69435.4]
  assign _T_803 = _T_801 & _T_799; // @[Monitor.scala 682:54:chipyard.TestHarness.RocketConfig.fir@69437.4]
  assign _T_805 = |inflight; // @[Monitor.scala 687:26:chipyard.TestHarness.RocketConfig.fir@69442.4]
  assign _T_806 = ~_T_805; // @[Monitor.scala 687:16:chipyard.TestHarness.RocketConfig.fir@69443.4]
  assign _T_807 = plusarg_reader_out == 32'h0; // @[Monitor.scala 687:39:chipyard.TestHarness.RocketConfig.fir@69444.4]
  assign _T_808 = _T_806 | _T_807; // @[Monitor.scala 687:30:chipyard.TestHarness.RocketConfig.fir@69445.4]
  assign _T_809 = _T_804 < plusarg_reader_out; // @[Monitor.scala 687:59:chipyard.TestHarness.RocketConfig.fir@69446.4]
  assign _T_810 = _T_808 | _T_809; // @[Monitor.scala 687:47:chipyard.TestHarness.RocketConfig.fir@69447.4]
  assign _T_812 = _T_810 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@69449.4]
  assign _T_813 = ~_T_812; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@69450.4]
  assign _T_815 = _T_804 + 32'h1; // @[Monitor.scala 689:26:chipyard.TestHarness.RocketConfig.fir@69456.4]
  assign _T_818 = _T_554 | _T_603; // @[Monitor.scala 690:27:chipyard.TestHarness.RocketConfig.fir@69460.4]
  assign _GEN_72 = io_in_a_valid & _T_120; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68225.10]
  assign _GEN_88 = io_in_a_valid & _T_172; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68317.10]
  assign _GEN_106 = io_in_a_valid & _T_228; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68420.10]
  assign _GEN_118 = io_in_a_valid & _T_261; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68476.10]
  assign _GEN_128 = io_in_a_valid & _T_287; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68524.10]
  assign _GEN_138 = io_in_a_valid & _T_315; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68574.10]
  assign _GEN_148 = io_in_a_valid & _T_341; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68622.10]
  assign _GEN_158 = io_in_a_valid & _T_367; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68670.10]
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
  _T_563 = _RAND_0[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_574 = _RAND_1[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_575 = _RAND_2[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_576 = _RAND_3[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_577 = _RAND_4[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_578 = _RAND_5[16:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  _T_611 = _RAND_6[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  _T_624 = _RAND_7[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  _T_625 = _RAND_8[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  inflight = _RAND_9[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  inflight_opcodes = _RAND_10[19:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  inflight_sizes = _RAND_11[19:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  _T_665 = _RAND_12[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  _T_683 = _RAND_13[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  _T_804 = _RAND_14[31:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      _T_563 <= 3'h0;
    end else if (_T_554) begin
      if (_T_566) begin
        _T_563 <= 3'h0;
      end else begin
        _T_563 <= _T_565;
      end
    end
    if (_T_602) begin
      _T_574 <= io_in_a_bits_opcode;
    end
    if (_T_602) begin
      _T_575 <= io_in_a_bits_param;
    end
    if (_T_602) begin
      _T_576 <= io_in_a_bits_size;
    end
    if (_T_602) begin
      _T_577 <= io_in_a_bits_source;
    end
    if (_T_602) begin
      _T_578 <= io_in_a_bits_address;
    end
    if (reset) begin
      _T_611 <= 3'h0;
    end else if (_T_603) begin
      if (_T_614) begin
        _T_611 <= _T_607[5:3];
      end else begin
        _T_611 <= _T_613;
      end
    end
    if (_T_655) begin
      _T_624 <= io_in_d_bits_size;
    end
    if (_T_655) begin
      _T_625 <= io_in_d_bits_source;
    end
    if (reset) begin
      inflight <= 5'h0;
    end else begin
      inflight <= _T_797;
    end
    if (reset) begin
      inflight_opcodes <= 20'h0;
    end else begin
      inflight_opcodes <= _T_800;
    end
    if (reset) begin
      inflight_sizes <= 20'h0;
    end else begin
      inflight_sizes <= _T_803;
    end
    if (reset) begin
      _T_665 <= 3'h0;
    end else if (_T_554) begin
      if (a_first) begin
        _T_665 <= 3'h0;
      end else begin
        _T_665 <= _T_667;
      end
    end
    if (reset) begin
      _T_683 <= 3'h0;
    end else if (_T_603) begin
      if (d_first) begin
        _T_683 <= _T_607[5:3];
      end else begin
        _T_683 <= _T_685;
      end
    end
    if (reset) begin
      _T_804 <= 32'h0;
    end else if (_T_818) begin
      _T_804 <= 32'h0;
    end else begin
      _T_804 <= _T_815;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_72 & _T_131) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock type unsupported by manager (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68225.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_72 & _T_131) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68226.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_72 & _T_148) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock from a client which does not support Probe (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68252.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_72 & _T_148) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68253.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_72 & _T_151) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock carries invalid source ID (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68259.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_72 & _T_151) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68260.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_72 & _T_155) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock smaller than a beat (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68267.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_72 & _T_155) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68268.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_72 & _T_158) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock address not aligned to size (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68274.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_72 & _T_158) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68275.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_72 & _T_162) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock carries invalid grow param (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68282.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_72 & _T_162) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68283.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_72 & _T_167) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock contains invalid mask (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68291.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_72 & _T_167) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68292.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_72 & _T_171) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock is corrupt (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68299.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_72 & _T_171) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68300.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_88 & _T_131) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm type unsupported by manager (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68317.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_88 & _T_131) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68318.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_88 & _T_148) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm from a client which does not support Probe (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68344.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_88 & _T_148) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68345.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_88 & _T_151) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm carries invalid source ID (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68351.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_88 & _T_151) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68352.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_88 & _T_155) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm smaller than a beat (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68359.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_88 & _T_155) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68360.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_88 & _T_158) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm address not aligned to size (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68366.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_88 & _T_158) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68367.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_88 & _T_162) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm carries invalid grow param (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68374.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_88 & _T_162) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68375.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_88 & _T_218) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm requests NtoB (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68382.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_88 & _T_218) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68383.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_88 & _T_167) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm contains invalid mask (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68391.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_88 & _T_167) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68392.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_88 & _T_171) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm is corrupt (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68399.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_88 & _T_171) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68400.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_106 & _T_242) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Get type unsupported by manager (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68420.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_106 & _T_242) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68421.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_106 & _T_151) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get carries invalid source ID (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68427.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_106 & _T_151) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68428.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_106 & _T_158) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get address not aligned to size (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68434.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_106 & _T_158) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68435.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_106 & _T_252) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get carries invalid param (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68442.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_106 & _T_252) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68443.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_106 & _T_256) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get contains invalid mask (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68450.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_106 & _T_256) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68451.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_106 & _T_171) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get is corrupt (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68458.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_106 & _T_171) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68459.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_118 & _T_131) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutFull type unsupported by manager (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68476.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_118 & _T_131) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68477.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_118 & _T_151) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull carries invalid source ID (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68483.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_118 & _T_151) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68484.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_118 & _T_158) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull address not aligned to size (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68490.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_118 & _T_158) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68491.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_118 & _T_252) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull carries invalid param (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68498.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_118 & _T_252) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68499.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_118 & _T_256) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull contains invalid mask (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68506.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_118 & _T_256) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68507.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_128 & _T_131) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutPartial type unsupported by manager (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68524.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_128 & _T_131) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68525.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_128 & _T_151) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial carries invalid source ID (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68531.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_128 & _T_151) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68532.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_128 & _T_158) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial address not aligned to size (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68538.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_128 & _T_158) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68539.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_128 & _T_252) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial carries invalid param (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68546.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_128 & _T_252) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68547.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_128 & _T_314) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial contains invalid mask (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68556.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_128 & _T_314) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68557.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_138 & _T_131) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Arithmetic type unsupported by manager (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68574.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_138 & _T_131) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68575.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_138 & _T_151) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic carries invalid source ID (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68581.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_138 & _T_151) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68582.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_138 & _T_158) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic address not aligned to size (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68588.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_138 & _T_158) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68589.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_138 & _T_336) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic carries invalid opcode param (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68596.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_138 & _T_336) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68597.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_138 & _T_256) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic contains invalid mask (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68604.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_138 & _T_256) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68605.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_148 & _T_131) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Logical type unsupported by manager (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68622.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_148 & _T_131) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68623.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_148 & _T_151) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical carries invalid source ID (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68629.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_148 & _T_151) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68630.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_148 & _T_158) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical address not aligned to size (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68636.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_148 & _T_158) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68637.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_148 & _T_362) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical carries invalid opcode param (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68644.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_148 & _T_362) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68645.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_148 & _T_256) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical contains invalid mask (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68652.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_148 & _T_256) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68653.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_158 & _T_131) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Hint type unsupported by manager (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68670.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_158 & _T_131) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68671.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_158 & _T_151) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint carries invalid source ID (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68677.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_158 & _T_151) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68678.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_158 & _T_158) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint address not aligned to size (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68684.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_158 & _T_158) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68685.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_158 & _T_388) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint carries invalid opcode param (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68692.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_158 & _T_388) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68693.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_158 & _T_256) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint contains invalid mask (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68700.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_158 & _T_256) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68701.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_158 & _T_171) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint is corrupt (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68708.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_158 & _T_171) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@68709.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_in_d_valid & _T_413) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData carries invalid source ID (connected at BootROM.scala:74:64)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@68936.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (io_in_d_valid & _T_413) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@68937.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_580 & _T_584) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel opcode changed within multibeat operation (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@69068.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_580 & _T_584) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@69069.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_580 & _T_588) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel param changed within multibeat operation (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@69076.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_580 & _T_588) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@69077.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_580 & _T_592) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel size changed within multibeat operation (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@69084.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_580 & _T_592) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@69085.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_580 & _T_596) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel source changed within multibeat operation (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@69092.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_580 & _T_596) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@69093.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_580 & _T_600) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel address changed with multibeat operation (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@69100.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_580 & _T_600) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@69101.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_629 & _T_641) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel size changed within multibeat operation (connected at BootROM.scala:74:64)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@69165.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_629 & _T_641) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@69166.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_629 & _T_645) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel source changed within multibeat operation (connected at BootROM.scala:74:64)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@69173.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_629 & _T_645) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@69174.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_712 & _T_728) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel re-used a source ID (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@69326.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_712 & _T_728) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@69327.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_748 & _T_762) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel acknowledged for nothing inflight (connected at BootROM.scala:74:64)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@69377.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_748 & _T_762) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@69378.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_748 & _T_775) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper opcode response (connected at BootROM.scala:74:64)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@69394.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_748 & _T_775) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@69395.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_748 & _T_782) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper response size (connected at BootROM.scala:74:64)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@69405.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_748 & _T_782) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@69406.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_787 & _T_794) begin
          $fwrite(32'h80000002,"Assertion failed: ready check\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@69423.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_787 & _T_794) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@69424.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_813) begin
          $fwrite(32'h80000002,"Assertion failed: TileLink timeout expired (connected at BootROM.scala:74:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@69452.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_813) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@69453.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
