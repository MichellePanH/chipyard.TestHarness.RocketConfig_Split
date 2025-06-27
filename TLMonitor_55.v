module TLMonitor_55( // @[:chipyard.TestHarness.RocketConfig.fir@135312.2]
  input        clock, // @[:chipyard.TestHarness.RocketConfig.fir@135313.4]
  input        reset, // @[:chipyard.TestHarness.RocketConfig.fir@135314.4]
  input        io_in_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@135315.4]
  input        io_in_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@135315.4]
  input  [2:0] io_in_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@135315.4]
  input  [2:0] io_in_a_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@135315.4]
  input  [1:0] io_in_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@135315.4]
  input        io_in_a_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@135315.4]
  input  [8:0] io_in_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@135315.4]
  input  [3:0] io_in_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@135315.4]
  input        io_in_a_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@135315.4]
  input        io_in_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@135315.4]
  input        io_in_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@135315.4]
  input  [2:0] io_in_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@135315.4]
  input  [1:0] io_in_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@135315.4]
  input        io_in_d_bits_source // @[:chipyard.TestHarness.RocketConfig.fir@135315.4]
);
  wire [31:0] plusarg_reader_out; // @[PlusArg.scala 44:11:chipyard.TestHarness.RocketConfig.fir@136810.4]
  wire  _T_4; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@135326.6]
  wire [4:0] _T_7; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@135331.6]
  wire [1:0] _T_9; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@135333.6]
  wire [8:0] _GEN_56; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@135334.6]
  wire [8:0] _T_10; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@135334.6]
  wire  _T_11; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@135335.6]
  wire [1:0] _T_14; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@135338.6]
  wire [1:0] _T_16; // @[Misc.scala 201:81:chipyard.TestHarness.RocketConfig.fir@135340.6]
  wire  _T_17; // @[Misc.scala 205:21:chipyard.TestHarness.RocketConfig.fir@135341.6]
  wire  _T_20; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@135344.6]
  wire  _T_22; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@135346.6]
  wire  _T_23; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@135347.6]
  wire  _T_25; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@135349.6]
  wire  _T_26; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@135350.6]
  wire  _T_29; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@135353.6]
  wire  _T_30; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@135354.6]
  wire  _T_31; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@135355.6]
  wire  _T_32; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@135356.6]
  wire  _T_33; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@135357.6]
  wire  _T_34; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@135358.6]
  wire  _T_35; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@135359.6]
  wire  _T_36; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@135360.6]
  wire  _T_37; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@135361.6]
  wire  _T_38; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@135362.6]
  wire  _T_39; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@135363.6]
  wire  _T_40; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@135364.6]
  wire  _T_41; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@135365.6]
  wire [3:0] _T_44; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@135368.6]
  wire [9:0] _T_48; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@135372.6]
  wire  _T_56; // @[Monitor.scala 79:25:chipyard.TestHarness.RocketConfig.fir@135384.6]
  wire [9:0] _T_61; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@135390.8]
  wire  _T_62; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@135391.8]
  wire [8:0] _T_63; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@135392.8]
  wire [9:0] _T_64; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@135393.8]
  wire [9:0] _T_66; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@135395.8]
  wire  _T_67; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@135396.8]
  wire [8:0] _T_68; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@135397.8]
  wire [9:0] _T_69; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@135398.8]
  wire [9:0] _T_71; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@135400.8]
  wire  _T_72; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@135401.8]
  wire [8:0] _T_73; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@135402.8]
  wire [9:0] _T_74; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@135403.8]
  wire [9:0] _T_76; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@135405.8]
  wire  _T_77; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@135406.8]
  wire [8:0] _T_78; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@135407.8]
  wire [9:0] _T_79; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@135408.8]
  wire [9:0] _T_81; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@135410.8]
  wire  _T_82; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@135411.8]
  wire [8:0] _T_83; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@135412.8]
  wire [9:0] _T_84; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@135413.8]
  wire [9:0] _T_86; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@135415.8]
  wire  _T_87; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@135416.8]
  wire  _T_88; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@135417.8]
  wire  _T_89; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@135418.8]
  wire  _T_90; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@135419.8]
  wire  _T_91; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@135420.8]
  wire  _T_92; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@135421.8]
  wire  _T_97; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135426.8]
  wire  _T_102; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135439.8]
  wire  _T_103; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135440.8]
  wire  _T_106; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135447.8]
  wire  _T_107; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135448.8]
  wire  _T_109; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135454.8]
  wire  _T_110; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135455.8]
  wire  _T_111; // @[Bundles.scala 110:27:chipyard.TestHarness.RocketConfig.fir@135460.8]
  wire  _T_113; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135462.8]
  wire  _T_114; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135463.8]
  wire [3:0] _T_115; // @[Monitor.scala 86:18:chipyard.TestHarness.RocketConfig.fir@135468.8]
  wire  _T_116; // @[Monitor.scala 86:31:chipyard.TestHarness.RocketConfig.fir@135469.8]
  wire  _T_118; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135471.8]
  wire  _T_119; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135472.8]
  wire  _T_120; // @[Monitor.scala 87:18:chipyard.TestHarness.RocketConfig.fir@135477.8]
  wire  _T_122; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135479.8]
  wire  _T_123; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135480.8]
  wire  _T_124; // @[Monitor.scala 90:25:chipyard.TestHarness.RocketConfig.fir@135486.6]
  wire  _T_183; // @[Monitor.scala 97:31:chipyard.TestHarness.RocketConfig.fir@135570.8]
  wire  _T_185; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135572.8]
  wire  _T_186; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135573.8]
  wire  _T_196; // @[Monitor.scala 102:25:chipyard.TestHarness.RocketConfig.fir@135596.6]
  wire  _T_198; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@135599.8]
  wire  _T_236; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@135637.8]
  wire  _T_239; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135640.8]
  wire  _T_240; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135641.8]
  wire  _T_247; // @[Monitor.scala 106:31:chipyard.TestHarness.RocketConfig.fir@135660.8]
  wire  _T_249; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135662.8]
  wire  _T_250; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135663.8]
  wire  _T_251; // @[Monitor.scala 107:30:chipyard.TestHarness.RocketConfig.fir@135668.8]
  wire  _T_253; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135670.8]
  wire  _T_254; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135671.8]
  wire  _T_259; // @[Monitor.scala 111:25:chipyard.TestHarness.RocketConfig.fir@135685.6]
  wire  _T_318; // @[Monitor.scala 119:25:chipyard.TestHarness.RocketConfig.fir@135766.6]
  wire [3:0] _T_373; // @[Monitor.scala 124:33:chipyard.TestHarness.RocketConfig.fir@135838.8]
  wire [3:0] _T_374; // @[Monitor.scala 124:31:chipyard.TestHarness.RocketConfig.fir@135839.8]
  wire  _T_375; // @[Monitor.scala 124:40:chipyard.TestHarness.RocketConfig.fir@135840.8]
  wire  _T_377; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135842.8]
  wire  _T_378; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135843.8]
  wire  _T_379; // @[Monitor.scala 127:25:chipyard.TestHarness.RocketConfig.fir@135849.6]
  wire  _T_427; // @[Bundles.scala 140:33:chipyard.TestHarness.RocketConfig.fir@135910.8]
  wire  _T_429; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135912.8]
  wire  _T_430; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135913.8]
  wire  _T_435; // @[Monitor.scala 135:25:chipyard.TestHarness.RocketConfig.fir@135927.6]
  wire  _T_483; // @[Bundles.scala 147:30:chipyard.TestHarness.RocketConfig.fir@135988.8]
  wire  _T_485; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135990.8]
  wire  _T_486; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135991.8]
  wire  _T_491; // @[Monitor.scala 143:25:chipyard.TestHarness.RocketConfig.fir@136005.6]
  wire  _T_539; // @[Bundles.scala 160:28:chipyard.TestHarness.RocketConfig.fir@136066.8]
  wire  _T_541; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@136068.8]
  wire  _T_542; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@136069.8]
  wire  _T_551; // @[Bundles.scala 44:24:chipyard.TestHarness.RocketConfig.fir@136093.6]
  wire  _T_553; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@136095.6]
  wire  _T_554; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@136096.6]
  wire  _T_555; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@136101.6]
  wire  _T_558; // @[Monitor.scala 307:25:chipyard.TestHarness.RocketConfig.fir@136106.6]
  wire  _T_560; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@136109.8]
  wire  _T_561; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@136110.8]
  wire  _T_562; // @[Monitor.scala 309:27:chipyard.TestHarness.RocketConfig.fir@136115.8]
  wire  _T_564; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@136117.8]
  wire  _T_565; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@136118.8]
  wire  _T_578; // @[Monitor.scala 315:25:chipyard.TestHarness.RocketConfig.fir@136148.6]
  wire  _T_606; // @[Monitor.scala 325:25:chipyard.TestHarness.RocketConfig.fir@136206.6]
  wire  _T_635; // @[Monitor.scala 335:25:chipyard.TestHarness.RocketConfig.fir@136265.6]
  wire  _T_652; // @[Monitor.scala 343:25:chipyard.TestHarness.RocketConfig.fir@136300.6]
  wire  _T_670; // @[Monitor.scala 351:25:chipyard.TestHarness.RocketConfig.fir@136336.6]
  wire  _T_702; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@136402.4]
  reg  _T_711; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@136411.4]
  reg [31:0] _RAND_0;
  wire  _T_713; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@136413.4]
  wire  _T_714; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@136414.4]
  reg [2:0] _T_722; // @[Monitor.scala 381:22:chipyard.TestHarness.RocketConfig.fir@136425.4]
  reg [31:0] _RAND_1;
  reg [2:0] _T_723; // @[Monitor.scala 382:22:chipyard.TestHarness.RocketConfig.fir@136426.4]
  reg [31:0] _RAND_2;
  reg [1:0] _T_724; // @[Monitor.scala 383:22:chipyard.TestHarness.RocketConfig.fir@136427.4]
  reg [31:0] _RAND_3;
  reg  _T_725; // @[Monitor.scala 384:22:chipyard.TestHarness.RocketConfig.fir@136428.4]
  reg [31:0] _RAND_4;
  reg [8:0] _T_726; // @[Monitor.scala 385:22:chipyard.TestHarness.RocketConfig.fir@136429.4]
  reg [31:0] _RAND_5;
  wire  _T_727; // @[Monitor.scala 386:22:chipyard.TestHarness.RocketConfig.fir@136430.4]
  wire  _T_728; // @[Monitor.scala 386:19:chipyard.TestHarness.RocketConfig.fir@136431.4]
  wire  _T_729; // @[Monitor.scala 387:32:chipyard.TestHarness.RocketConfig.fir@136433.6]
  wire  _T_731; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@136435.6]
  wire  _T_732; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@136436.6]
  wire  _T_733; // @[Monitor.scala 388:32:chipyard.TestHarness.RocketConfig.fir@136441.6]
  wire  _T_735; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@136443.6]
  wire  _T_736; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@136444.6]
  wire  _T_737; // @[Monitor.scala 389:32:chipyard.TestHarness.RocketConfig.fir@136449.6]
  wire  _T_739; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@136451.6]
  wire  _T_740; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@136452.6]
  wire  _T_741; // @[Monitor.scala 390:32:chipyard.TestHarness.RocketConfig.fir@136457.6]
  wire  _T_743; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@136459.6]
  wire  _T_744; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@136460.6]
  wire  _T_745; // @[Monitor.scala 391:32:chipyard.TestHarness.RocketConfig.fir@136465.6]
  wire  _T_747; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@136467.6]
  wire  _T_748; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@136468.6]
  wire  _T_750; // @[Monitor.scala 393:20:chipyard.TestHarness.RocketConfig.fir@136475.4]
  wire  _T_751; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@136483.4]
  reg  _T_759; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@136491.4]
  reg [31:0] _RAND_6;
  wire  _T_761; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@136493.4]
  wire  _T_762; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@136494.4]
  reg [2:0] _T_770; // @[Monitor.scala 532:22:chipyard.TestHarness.RocketConfig.fir@136505.4]
  reg [31:0] _RAND_7;
  reg [1:0] _T_772; // @[Monitor.scala 534:22:chipyard.TestHarness.RocketConfig.fir@136507.4]
  reg [31:0] _RAND_8;
  reg  _T_773; // @[Monitor.scala 535:22:chipyard.TestHarness.RocketConfig.fir@136508.4]
  reg [31:0] _RAND_9;
  wire  _T_776; // @[Monitor.scala 538:22:chipyard.TestHarness.RocketConfig.fir@136511.4]
  wire  _T_777; // @[Monitor.scala 538:19:chipyard.TestHarness.RocketConfig.fir@136512.4]
  wire  _T_778; // @[Monitor.scala 539:29:chipyard.TestHarness.RocketConfig.fir@136514.6]
  wire  _T_780; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@136516.6]
  wire  _T_781; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@136517.6]
  wire  _T_786; // @[Monitor.scala 541:29:chipyard.TestHarness.RocketConfig.fir@136530.6]
  wire  _T_788; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@136532.6]
  wire  _T_789; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@136533.6]
  wire  _T_790; // @[Monitor.scala 542:29:chipyard.TestHarness.RocketConfig.fir@136538.6]
  wire  _T_792; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@136540.6]
  wire  _T_793; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@136541.6]
  wire  _T_803; // @[Monitor.scala 546:20:chipyard.TestHarness.RocketConfig.fir@136564.4]
  reg  inflight; // @[Monitor.scala 608:27:chipyard.TestHarness.RocketConfig.fir@136573.4]
  reg [31:0] _RAND_10;
  reg [3:0] inflight_opcodes; // @[Monitor.scala 610:35:chipyard.TestHarness.RocketConfig.fir@136574.4]
  reg [31:0] _RAND_11;
  reg [3:0] inflight_sizes; // @[Monitor.scala 612:33:chipyard.TestHarness.RocketConfig.fir@136575.4]
  reg [31:0] _RAND_12;
  reg  _T_813; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@136585.4]
  reg [31:0] _RAND_13;
  wire  _T_815; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@136587.4]
  wire  a_first; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@136588.4]
  reg  _T_831; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@136607.4]
  reg [31:0] _RAND_14;
  wire  _T_833; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@136609.4]
  wire  d_first; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@136610.4]
  wire [2:0] _GEN_57; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@136629.4]
  wire [3:0] _T_841; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@136629.4]
  wire [3:0] _T_842; // @[Monitor.scala 629:44:chipyard.TestHarness.RocketConfig.fir@136630.4]
  wire [15:0] _T_846; // @[Monitor.scala 606:57:chipyard.TestHarness.RocketConfig.fir@136634.4]
  wire [15:0] _GEN_58; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@136635.4]
  wire [15:0] _T_847; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@136635.4]
  wire [15:0] _T_848; // @[Monitor.scala 629:152:chipyard.TestHarness.RocketConfig.fir@136636.4]
  wire [3:0] _T_850; // @[Monitor.scala 633:40:chipyard.TestHarness.RocketConfig.fir@136641.4]
  wire [15:0] _GEN_61; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@136646.4]
  wire [15:0] _T_855; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@136646.4]
  wire [15:0] _T_856; // @[Monitor.scala 633:144:chipyard.TestHarness.RocketConfig.fir@136647.4]
  wire  _T_860; // @[Monitor.scala 643:27:chipyard.TestHarness.RocketConfig.fir@136672.4]
  wire [1:0] _T_862; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@136675.6]
  wire [3:0] _T_863; // @[Monitor.scala 645:53:chipyard.TestHarness.RocketConfig.fir@136677.6]
  wire [3:0] _T_864; // @[Monitor.scala 645:61:chipyard.TestHarness.RocketConfig.fir@136678.6]
  wire [2:0] _T_865; // @[Monitor.scala 646:49:chipyard.TestHarness.RocketConfig.fir@136680.6]
  wire [2:0] _T_866; // @[Monitor.scala 646:57:chipyard.TestHarness.RocketConfig.fir@136681.6]
  wire [2:0] _GEN_63; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@136683.6]
  wire [3:0] _T_867; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@136683.6]
  wire [3:0] a_opcodes_set_interm; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@136674.4]
  wire [18:0] _GEN_64; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@136684.6]
  wire [18:0] _T_868; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@136684.6]
  wire [2:0] a_sizes_set_interm; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@136674.4]
  wire [17:0] _GEN_66; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@136687.6]
  wire [17:0] _T_870; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@136687.6]
  wire  _T_871; // @[Monitor.scala 649:26:chipyard.TestHarness.RocketConfig.fir@136689.6]
  wire  _T_873; // @[Monitor.scala 649:17:chipyard.TestHarness.RocketConfig.fir@136691.6]
  wire  _T_875; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@136693.6]
  wire  _T_876; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@136694.6]
  wire [1:0] _GEN_15; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@136674.4]
  wire [18:0] _GEN_18; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@136674.4]
  wire [17:0] _GEN_19; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@136674.4]
  wire  _T_879; // @[Monitor.scala 660:27:chipyard.TestHarness.RocketConfig.fir@136708.4]
  wire  _T_881; // @[Monitor.scala 660:75:chipyard.TestHarness.RocketConfig.fir@136710.4]
  wire  _T_882; // @[Monitor.scala 660:72:chipyard.TestHarness.RocketConfig.fir@136711.4]
  wire [1:0] _T_883; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@136713.6]
  wire [30:0] _GEN_68; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@136720.6]
  wire [30:0] _T_889; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@136720.6]
  wire [1:0] _GEN_20; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@136712.4]
  wire [30:0] _GEN_21; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@136712.4]
  wire  _T_896; // @[Monitor.scala 665:26:chipyard.TestHarness.RocketConfig.fir@136730.4]
  wire  _T_899; // @[Monitor.scala 665:71:chipyard.TestHarness.RocketConfig.fir@136733.4]
  wire  _T_900; // @[Monitor.scala 666:25:chipyard.TestHarness.RocketConfig.fir@136735.6]
  wire  _T_902; // @[Monitor.scala 666:93:chipyard.TestHarness.RocketConfig.fir@136737.6]
  wire  _T_903; // @[Monitor.scala 666:68:chipyard.TestHarness.RocketConfig.fir@136738.6]
  wire  _T_904; // @[Monitor.scala 666:142:chipyard.TestHarness.RocketConfig.fir@136739.6]
  wire  _T_905; // @[Monitor.scala 666:119:chipyard.TestHarness.RocketConfig.fir@136740.6]
  wire  _T_906; // @[Monitor.scala 666:166:chipyard.TestHarness.RocketConfig.fir@136741.6]
  wire  _T_907; // @[Monitor.scala 666:49:chipyard.TestHarness.RocketConfig.fir@136742.6]
  wire  _T_909; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@136744.6]
  wire  _T_910; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@136745.6]
  wire [3:0] a_opcode_lookup; // @[:chipyard.TestHarness.RocketConfig.fir@136627.4 :chipyard.TestHarness.RocketConfig.fir@136628.4 Monitor.scala 629:21:chipyard.TestHarness.RocketConfig.fir@136637.4]
  wire [2:0] _GEN_25; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@136751.6]
  wire [2:0] _GEN_26; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@136751.6]
  wire [2:0] _GEN_27; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@136751.6]
  wire [2:0] _GEN_28; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@136751.6]
  wire [2:0] _GEN_29; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@136751.6]
  wire [2:0] _GEN_30; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@136751.6]
  wire  _T_912; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@136751.6]
  wire [2:0] _GEN_37; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@136753.6]
  wire [2:0] _GEN_38; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@136753.6]
  wire  _T_914; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@136753.6]
  wire  _T_915; // @[Monitor.scala 667:71:chipyard.TestHarness.RocketConfig.fir@136754.6]
  wire [2:0] _GEN_41; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@136755.6]
  wire [2:0] _GEN_42; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@136755.6]
  wire [2:0] _GEN_43; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@136755.6]
  wire [2:0] _GEN_44; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@136755.6]
  wire [2:0] _GEN_45; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@136755.6]
  wire [2:0] _GEN_46; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@136755.6]
  wire  _T_916; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@136755.6]
  wire [2:0] _GEN_53; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@136756.6]
  wire [2:0] _GEN_54; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@136756.6]
  wire  _T_917; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@136756.6]
  wire  _T_918; // @[Monitor.scala 668:99:chipyard.TestHarness.RocketConfig.fir@136757.6]
  wire  _T_919; // @[Monitor.scala 668:34:chipyard.TestHarness.RocketConfig.fir@136758.6]
  wire  _T_920; // @[Monitor.scala 668:15:chipyard.TestHarness.RocketConfig.fir@136759.6]
  wire  _T_922; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@136761.6]
  wire  _T_923; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@136762.6]
  wire [3:0] a_size_lookup; // @[:chipyard.TestHarness.RocketConfig.fir@136638.4 :chipyard.TestHarness.RocketConfig.fir@136639.4 Monitor.scala 633:19:chipyard.TestHarness.RocketConfig.fir@136648.4]
  wire [3:0] _GEN_71; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@136767.6]
  wire  _T_924; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@136767.6]
  wire  _T_926; // @[Monitor.scala 670:72:chipyard.TestHarness.RocketConfig.fir@136769.6]
  wire  _T_927; // @[Monitor.scala 670:53:chipyard.TestHarness.RocketConfig.fir@136770.6]
  wire  _T_929; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@136772.6]
  wire  _T_930; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@136773.6]
  wire  _T_932; // @[Monitor.scala 672:36:chipyard.TestHarness.RocketConfig.fir@136780.4]
  wire  _T_933; // @[Monitor.scala 672:47:chipyard.TestHarness.RocketConfig.fir@136781.4]
  wire  _T_935; // @[Monitor.scala 672:65:chipyard.TestHarness.RocketConfig.fir@136783.4]
  wire  _T_937; // @[Monitor.scala 672:116:chipyard.TestHarness.RocketConfig.fir@136785.4]
  wire  _T_938; // @[Monitor.scala 673:15:chipyard.TestHarness.RocketConfig.fir@136787.6]
  wire  _T_939; // @[Monitor.scala 673:32:chipyard.TestHarness.RocketConfig.fir@136788.6]
  wire  _T_941; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@136790.6]
  wire  _T_942; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@136791.6]
  wire  a_set; // @[:chipyard.TestHarness.RocketConfig.fir@136621.4 :chipyard.TestHarness.RocketConfig.fir@136622.4 Monitor.scala 644:13:chipyard.TestHarness.RocketConfig.fir@136676.6]
  wire  _T_943; // @[Monitor.scala 680:27:chipyard.TestHarness.RocketConfig.fir@136797.4]
  wire  d_clr; // @[:chipyard.TestHarness.RocketConfig.fir@136700.4 :chipyard.TestHarness.RocketConfig.fir@136701.4 Monitor.scala 661:13:chipyard.TestHarness.RocketConfig.fir@136714.6]
  wire  _T_944; // @[Monitor.scala 680:38:chipyard.TestHarness.RocketConfig.fir@136798.4]
  wire  _T_945; // @[Monitor.scala 680:36:chipyard.TestHarness.RocketConfig.fir@136799.4]
  wire [3:0] a_opcodes_set; // @[:chipyard.TestHarness.RocketConfig.fir@136623.4 :chipyard.TestHarness.RocketConfig.fir@136624.4 Monitor.scala 647:21:chipyard.TestHarness.RocketConfig.fir@136685.6]
  wire [3:0] _T_946; // @[Monitor.scala 681:43:chipyard.TestHarness.RocketConfig.fir@136801.4]
  wire [3:0] d_opcodes_clr; // @[:chipyard.TestHarness.RocketConfig.fir@136702.4 :chipyard.TestHarness.RocketConfig.fir@136703.4 Monitor.scala 662:21:chipyard.TestHarness.RocketConfig.fir@136721.6]
  wire [3:0] _T_947; // @[Monitor.scala 681:62:chipyard.TestHarness.RocketConfig.fir@136802.4]
  wire [3:0] _T_948; // @[Monitor.scala 681:60:chipyard.TestHarness.RocketConfig.fir@136803.4]
  wire [3:0] a_sizes_set; // @[:chipyard.TestHarness.RocketConfig.fir@136625.4 :chipyard.TestHarness.RocketConfig.fir@136626.4 Monitor.scala 648:19:chipyard.TestHarness.RocketConfig.fir@136688.6]
  wire [3:0] _T_949; // @[Monitor.scala 682:39:chipyard.TestHarness.RocketConfig.fir@136805.4]
  wire [3:0] _T_951; // @[Monitor.scala 682:54:chipyard.TestHarness.RocketConfig.fir@136807.4]
  reg [31:0] _T_952; // @[Monitor.scala 684:27:chipyard.TestHarness.RocketConfig.fir@136809.4]
  reg [31:0] _RAND_15;
  wire  _T_953; // @[Monitor.scala 687:26:chipyard.TestHarness.RocketConfig.fir@136812.4]
  wire  _T_954; // @[Monitor.scala 687:16:chipyard.TestHarness.RocketConfig.fir@136813.4]
  wire  _T_955; // @[Monitor.scala 687:39:chipyard.TestHarness.RocketConfig.fir@136814.4]
  wire  _T_956; // @[Monitor.scala 687:30:chipyard.TestHarness.RocketConfig.fir@136815.4]
  wire  _T_957; // @[Monitor.scala 687:59:chipyard.TestHarness.RocketConfig.fir@136816.4]
  wire  _T_958; // @[Monitor.scala 687:47:chipyard.TestHarness.RocketConfig.fir@136817.4]
  wire  _T_960; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@136819.4]
  wire  _T_961; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@136820.4]
  wire [31:0] _T_963; // @[Monitor.scala 689:26:chipyard.TestHarness.RocketConfig.fir@136826.4]
  wire  _T_966; // @[Monitor.scala 690:27:chipyard.TestHarness.RocketConfig.fir@136830.4]
  wire  _GEN_72; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135428.10]
  wire  _GEN_88; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135530.10]
  wire  _GEN_106; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135643.10]
  wire  _GEN_118; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135732.10]
  wire  _GEN_128; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135813.10]
  wire  _GEN_138; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135893.10]
  wire  _GEN_148; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135971.10]
  wire  _GEN_158; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@136049.10]
  wire  _GEN_170; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@136112.10]
  wire  _GEN_174; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@136154.10]
  wire  _GEN_180; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@136212.10]
  wire  _GEN_186; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@136271.10]
  wire  _GEN_188; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@136306.10]
  wire  _GEN_190; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@136342.10]
  plusarg_reader #(.FORMAT("tilelink_timeout=%d"), .DEFAULT(0), .WIDTH(32)) plusarg_reader ( // @[PlusArg.scala 44:11:chipyard.TestHarness.RocketConfig.fir@136810.4]
    .out(plusarg_reader_out)
  );
  assign _T_4 = ~io_in_a_bits_source; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@135326.6]
  assign _T_7 = 5'h3 << io_in_a_bits_size; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@135331.6]
  assign _T_9 = ~_T_7[1:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@135333.6]
  assign _GEN_56 = {{7'd0}, _T_9}; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@135334.6]
  assign _T_10 = io_in_a_bits_address & _GEN_56; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@135334.6]
  assign _T_11 = _T_10 == 9'h0; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@135335.6]
  assign _T_14 = 2'h1 << io_in_a_bits_size[0]; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@135338.6]
  assign _T_16 = _T_14 | 2'h1; // @[Misc.scala 201:81:chipyard.TestHarness.RocketConfig.fir@135340.6]
  assign _T_17 = io_in_a_bits_size >= 2'h2; // @[Misc.scala 205:21:chipyard.TestHarness.RocketConfig.fir@135341.6]
  assign _T_20 = ~io_in_a_bits_address[1]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@135344.6]
  assign _T_22 = _T_16[1] & _T_20; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@135346.6]
  assign _T_23 = _T_17 | _T_22; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@135347.6]
  assign _T_25 = _T_16[1] & io_in_a_bits_address[1]; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@135349.6]
  assign _T_26 = _T_17 | _T_25; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@135350.6]
  assign _T_29 = ~io_in_a_bits_address[0]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@135353.6]
  assign _T_30 = _T_20 & _T_29; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@135354.6]
  assign _T_31 = _T_16[0] & _T_30; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@135355.6]
  assign _T_32 = _T_23 | _T_31; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@135356.6]
  assign _T_33 = _T_20 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@135357.6]
  assign _T_34 = _T_16[0] & _T_33; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@135358.6]
  assign _T_35 = _T_23 | _T_34; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@135359.6]
  assign _T_36 = io_in_a_bits_address[1] & _T_29; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@135360.6]
  assign _T_37 = _T_16[0] & _T_36; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@135361.6]
  assign _T_38 = _T_26 | _T_37; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@135362.6]
  assign _T_39 = io_in_a_bits_address[1] & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@135363.6]
  assign _T_40 = _T_16[0] & _T_39; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@135364.6]
  assign _T_41 = _T_26 | _T_40; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@135365.6]
  assign _T_44 = {_T_41,_T_38,_T_35,_T_32}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@135368.6]
  assign _T_48 = {1'b0,$signed(io_in_a_bits_address)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@135372.6]
  assign _T_56 = io_in_a_bits_opcode == 3'h6; // @[Monitor.scala 79:25:chipyard.TestHarness.RocketConfig.fir@135384.6]
  assign _T_61 = $signed(_T_48) & -10'sh40; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@135390.8]
  assign _T_62 = $signed(_T_61) == 10'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@135391.8]
  assign _T_63 = io_in_a_bits_address ^ 9'h44; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@135392.8]
  assign _T_64 = {1'b0,$signed(_T_63)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@135393.8]
  assign _T_66 = $signed(_T_64) & -10'sh4; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@135395.8]
  assign _T_67 = $signed(_T_66) == 10'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@135396.8]
  assign _T_68 = io_in_a_bits_address ^ 9'h48; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@135397.8]
  assign _T_69 = {1'b0,$signed(_T_68)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@135398.8]
  assign _T_71 = $signed(_T_69) & -10'sh18; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@135400.8]
  assign _T_72 = $signed(_T_71) == 10'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@135401.8]
  assign _T_73 = io_in_a_bits_address ^ 9'h60; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@135402.8]
  assign _T_74 = {1'b0,$signed(_T_73)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@135403.8]
  assign _T_76 = $signed(_T_74) & -10'sh20; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@135405.8]
  assign _T_77 = $signed(_T_76) == 10'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@135406.8]
  assign _T_78 = io_in_a_bits_address ^ 9'h80; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@135407.8]
  assign _T_79 = {1'b0,$signed(_T_78)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@135408.8]
  assign _T_81 = $signed(_T_79) & -10'sh80; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@135410.8]
  assign _T_82 = $signed(_T_81) == 10'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@135411.8]
  assign _T_83 = io_in_a_bits_address ^ 9'h100; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@135412.8]
  assign _T_84 = {1'b0,$signed(_T_83)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@135413.8]
  assign _T_86 = $signed(_T_84) & -10'sh100; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@135415.8]
  assign _T_87 = $signed(_T_86) == 10'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@135416.8]
  assign _T_88 = _T_62 | _T_67; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@135417.8]
  assign _T_89 = _T_88 | _T_72; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@135418.8]
  assign _T_90 = _T_89 | _T_77; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@135419.8]
  assign _T_91 = _T_90 | _T_82; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@135420.8]
  assign _T_92 = _T_91 | _T_87; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@135421.8]
  assign _T_97 = ~reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135426.8]
  assign _T_102 = _T_4 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135439.8]
  assign _T_103 = ~_T_102; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135440.8]
  assign _T_106 = _T_17 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135447.8]
  assign _T_107 = ~_T_106; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135448.8]
  assign _T_109 = _T_11 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135454.8]
  assign _T_110 = ~_T_109; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135455.8]
  assign _T_111 = io_in_a_bits_param <= 3'h2; // @[Bundles.scala 110:27:chipyard.TestHarness.RocketConfig.fir@135460.8]
  assign _T_113 = _T_111 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135462.8]
  assign _T_114 = ~_T_113; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135463.8]
  assign _T_115 = ~io_in_a_bits_mask; // @[Monitor.scala 86:18:chipyard.TestHarness.RocketConfig.fir@135468.8]
  assign _T_116 = _T_115 == 4'h0; // @[Monitor.scala 86:31:chipyard.TestHarness.RocketConfig.fir@135469.8]
  assign _T_118 = _T_116 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135471.8]
  assign _T_119 = ~_T_118; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135472.8]
  assign _T_120 = ~io_in_a_bits_corrupt; // @[Monitor.scala 87:18:chipyard.TestHarness.RocketConfig.fir@135477.8]
  assign _T_122 = _T_120 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135479.8]
  assign _T_123 = ~_T_122; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135480.8]
  assign _T_124 = io_in_a_bits_opcode == 3'h7; // @[Monitor.scala 90:25:chipyard.TestHarness.RocketConfig.fir@135486.6]
  assign _T_183 = io_in_a_bits_param != 3'h0; // @[Monitor.scala 97:31:chipyard.TestHarness.RocketConfig.fir@135570.8]
  assign _T_185 = _T_183 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135572.8]
  assign _T_186 = ~_T_185; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135573.8]
  assign _T_196 = io_in_a_bits_opcode == 3'h4; // @[Monitor.scala 102:25:chipyard.TestHarness.RocketConfig.fir@135596.6]
  assign _T_198 = io_in_a_bits_size <= 2'h2; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@135599.8]
  assign _T_236 = _T_198 & _T_92; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@135637.8]
  assign _T_239 = _T_236 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135640.8]
  assign _T_240 = ~_T_239; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135641.8]
  assign _T_247 = io_in_a_bits_param == 3'h0; // @[Monitor.scala 106:31:chipyard.TestHarness.RocketConfig.fir@135660.8]
  assign _T_249 = _T_247 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135662.8]
  assign _T_250 = ~_T_249; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135663.8]
  assign _T_251 = io_in_a_bits_mask == _T_44; // @[Monitor.scala 107:30:chipyard.TestHarness.RocketConfig.fir@135668.8]
  assign _T_253 = _T_251 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135670.8]
  assign _T_254 = ~_T_253; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135671.8]
  assign _T_259 = io_in_a_bits_opcode == 3'h0; // @[Monitor.scala 111:25:chipyard.TestHarness.RocketConfig.fir@135685.6]
  assign _T_318 = io_in_a_bits_opcode == 3'h1; // @[Monitor.scala 119:25:chipyard.TestHarness.RocketConfig.fir@135766.6]
  assign _T_373 = ~_T_44; // @[Monitor.scala 124:33:chipyard.TestHarness.RocketConfig.fir@135838.8]
  assign _T_374 = io_in_a_bits_mask & _T_373; // @[Monitor.scala 124:31:chipyard.TestHarness.RocketConfig.fir@135839.8]
  assign _T_375 = _T_374 == 4'h0; // @[Monitor.scala 124:40:chipyard.TestHarness.RocketConfig.fir@135840.8]
  assign _T_377 = _T_375 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135842.8]
  assign _T_378 = ~_T_377; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135843.8]
  assign _T_379 = io_in_a_bits_opcode == 3'h2; // @[Monitor.scala 127:25:chipyard.TestHarness.RocketConfig.fir@135849.6]
  assign _T_427 = io_in_a_bits_param <= 3'h4; // @[Bundles.scala 140:33:chipyard.TestHarness.RocketConfig.fir@135910.8]
  assign _T_429 = _T_427 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135912.8]
  assign _T_430 = ~_T_429; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135913.8]
  assign _T_435 = io_in_a_bits_opcode == 3'h3; // @[Monitor.scala 135:25:chipyard.TestHarness.RocketConfig.fir@135927.6]
  assign _T_483 = io_in_a_bits_param <= 3'h3; // @[Bundles.scala 147:30:chipyard.TestHarness.RocketConfig.fir@135988.8]
  assign _T_485 = _T_483 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135990.8]
  assign _T_486 = ~_T_485; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135991.8]
  assign _T_491 = io_in_a_bits_opcode == 3'h5; // @[Monitor.scala 143:25:chipyard.TestHarness.RocketConfig.fir@136005.6]
  assign _T_539 = io_in_a_bits_param <= 3'h1; // @[Bundles.scala 160:28:chipyard.TestHarness.RocketConfig.fir@136066.8]
  assign _T_541 = _T_539 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@136068.8]
  assign _T_542 = ~_T_541; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@136069.8]
  assign _T_551 = io_in_d_bits_opcode <= 3'h6; // @[Bundles.scala 44:24:chipyard.TestHarness.RocketConfig.fir@136093.6]
  assign _T_553 = _T_551 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@136095.6]
  assign _T_554 = ~_T_553; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@136096.6]
  assign _T_555 = ~io_in_d_bits_source; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@136101.6]
  assign _T_558 = io_in_d_bits_opcode == 3'h6; // @[Monitor.scala 307:25:chipyard.TestHarness.RocketConfig.fir@136106.6]
  assign _T_560 = _T_555 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@136109.8]
  assign _T_561 = ~_T_560; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@136110.8]
  assign _T_562 = io_in_d_bits_size >= 2'h2; // @[Monitor.scala 309:27:chipyard.TestHarness.RocketConfig.fir@136115.8]
  assign _T_564 = _T_562 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@136117.8]
  assign _T_565 = ~_T_564; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@136118.8]
  assign _T_578 = io_in_d_bits_opcode == 3'h4; // @[Monitor.scala 315:25:chipyard.TestHarness.RocketConfig.fir@136148.6]
  assign _T_606 = io_in_d_bits_opcode == 3'h5; // @[Monitor.scala 325:25:chipyard.TestHarness.RocketConfig.fir@136206.6]
  assign _T_635 = io_in_d_bits_opcode == 3'h0; // @[Monitor.scala 335:25:chipyard.TestHarness.RocketConfig.fir@136265.6]
  assign _T_652 = io_in_d_bits_opcode == 3'h1; // @[Monitor.scala 343:25:chipyard.TestHarness.RocketConfig.fir@136300.6]
  assign _T_670 = io_in_d_bits_opcode == 3'h2; // @[Monitor.scala 351:25:chipyard.TestHarness.RocketConfig.fir@136336.6]
  assign _T_702 = io_in_a_ready & io_in_a_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@136402.4]
  assign _T_713 = _T_711 - 1'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@136413.4]
  assign _T_714 = ~_T_711; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@136414.4]
  assign _T_727 = ~_T_714; // @[Monitor.scala 386:22:chipyard.TestHarness.RocketConfig.fir@136430.4]
  assign _T_728 = io_in_a_valid & _T_727; // @[Monitor.scala 386:19:chipyard.TestHarness.RocketConfig.fir@136431.4]
  assign _T_729 = io_in_a_bits_opcode == _T_722; // @[Monitor.scala 387:32:chipyard.TestHarness.RocketConfig.fir@136433.6]
  assign _T_731 = _T_729 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@136435.6]
  assign _T_732 = ~_T_731; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@136436.6]
  assign _T_733 = io_in_a_bits_param == _T_723; // @[Monitor.scala 388:32:chipyard.TestHarness.RocketConfig.fir@136441.6]
  assign _T_735 = _T_733 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@136443.6]
  assign _T_736 = ~_T_735; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@136444.6]
  assign _T_737 = io_in_a_bits_size == _T_724; // @[Monitor.scala 389:32:chipyard.TestHarness.RocketConfig.fir@136449.6]
  assign _T_739 = _T_737 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@136451.6]
  assign _T_740 = ~_T_739; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@136452.6]
  assign _T_741 = io_in_a_bits_source == _T_725; // @[Monitor.scala 390:32:chipyard.TestHarness.RocketConfig.fir@136457.6]
  assign _T_743 = _T_741 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@136459.6]
  assign _T_744 = ~_T_743; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@136460.6]
  assign _T_745 = io_in_a_bits_address == _T_726; // @[Monitor.scala 391:32:chipyard.TestHarness.RocketConfig.fir@136465.6]
  assign _T_747 = _T_745 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@136467.6]
  assign _T_748 = ~_T_747; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@136468.6]
  assign _T_750 = _T_702 & _T_714; // @[Monitor.scala 393:20:chipyard.TestHarness.RocketConfig.fir@136475.4]
  assign _T_751 = io_in_d_ready & io_in_d_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@136483.4]
  assign _T_761 = _T_759 - 1'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@136493.4]
  assign _T_762 = ~_T_759; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@136494.4]
  assign _T_776 = ~_T_762; // @[Monitor.scala 538:22:chipyard.TestHarness.RocketConfig.fir@136511.4]
  assign _T_777 = io_in_d_valid & _T_776; // @[Monitor.scala 538:19:chipyard.TestHarness.RocketConfig.fir@136512.4]
  assign _T_778 = io_in_d_bits_opcode == _T_770; // @[Monitor.scala 539:29:chipyard.TestHarness.RocketConfig.fir@136514.6]
  assign _T_780 = _T_778 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@136516.6]
  assign _T_781 = ~_T_780; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@136517.6]
  assign _T_786 = io_in_d_bits_size == _T_772; // @[Monitor.scala 541:29:chipyard.TestHarness.RocketConfig.fir@136530.6]
  assign _T_788 = _T_786 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@136532.6]
  assign _T_789 = ~_T_788; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@136533.6]
  assign _T_790 = io_in_d_bits_source == _T_773; // @[Monitor.scala 542:29:chipyard.TestHarness.RocketConfig.fir@136538.6]
  assign _T_792 = _T_790 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@136540.6]
  assign _T_793 = ~_T_792; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@136541.6]
  assign _T_803 = _T_751 & _T_762; // @[Monitor.scala 546:20:chipyard.TestHarness.RocketConfig.fir@136564.4]
  assign _T_815 = _T_813 - 1'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@136587.4]
  assign a_first = ~_T_813; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@136588.4]
  assign _T_833 = _T_831 - 1'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@136609.4]
  assign d_first = ~_T_831; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@136610.4]
  assign _GEN_57 = {io_in_d_bits_source, 2'h0}; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@136629.4]
  assign _T_841 = {{1'd0}, _GEN_57}; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@136629.4]
  assign _T_842 = inflight_opcodes >> _T_841; // @[Monitor.scala 629:44:chipyard.TestHarness.RocketConfig.fir@136630.4]
  assign _T_846 = 16'h10 - 16'h1; // @[Monitor.scala 606:57:chipyard.TestHarness.RocketConfig.fir@136634.4]
  assign _GEN_58 = {{12'd0}, _T_842}; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@136635.4]
  assign _T_847 = _GEN_58 & _T_846; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@136635.4]
  assign _T_848 = {{1'd0}, _T_847[15:1]}; // @[Monitor.scala 629:152:chipyard.TestHarness.RocketConfig.fir@136636.4]
  assign _T_850 = inflight_sizes >> _T_841; // @[Monitor.scala 633:40:chipyard.TestHarness.RocketConfig.fir@136641.4]
  assign _GEN_61 = {{12'd0}, _T_850}; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@136646.4]
  assign _T_855 = _GEN_61 & _T_846; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@136646.4]
  assign _T_856 = {{1'd0}, _T_855[15:1]}; // @[Monitor.scala 633:144:chipyard.TestHarness.RocketConfig.fir@136647.4]
  assign _T_860 = _T_702 & a_first; // @[Monitor.scala 643:27:chipyard.TestHarness.RocketConfig.fir@136672.4]
  assign _T_862 = 2'h1 << io_in_a_bits_source; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@136675.6]
  assign _T_863 = {io_in_a_bits_opcode, 1'h0}; // @[Monitor.scala 645:53:chipyard.TestHarness.RocketConfig.fir@136677.6]
  assign _T_864 = _T_863 | 4'h1; // @[Monitor.scala 645:61:chipyard.TestHarness.RocketConfig.fir@136678.6]
  assign _T_865 = {io_in_a_bits_size, 1'h0}; // @[Monitor.scala 646:49:chipyard.TestHarness.RocketConfig.fir@136680.6]
  assign _T_866 = _T_865 | 3'h1; // @[Monitor.scala 646:57:chipyard.TestHarness.RocketConfig.fir@136681.6]
  assign _GEN_63 = {io_in_a_bits_source, 2'h0}; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@136683.6]
  assign _T_867 = {{1'd0}, _GEN_63}; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@136683.6]
  assign a_opcodes_set_interm = _T_860 ? _T_864 : 4'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@136674.4]
  assign _GEN_64 = {{15'd0}, a_opcodes_set_interm}; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@136684.6]
  assign _T_868 = _GEN_64 << _T_867; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@136684.6]
  assign a_sizes_set_interm = _T_860 ? _T_866 : 3'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@136674.4]
  assign _GEN_66 = {{15'd0}, a_sizes_set_interm}; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@136687.6]
  assign _T_870 = _GEN_66 << _T_867; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@136687.6]
  assign _T_871 = inflight >> io_in_a_bits_source; // @[Monitor.scala 649:26:chipyard.TestHarness.RocketConfig.fir@136689.6]
  assign _T_873 = ~_T_871; // @[Monitor.scala 649:17:chipyard.TestHarness.RocketConfig.fir@136691.6]
  assign _T_875 = _T_873 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@136693.6]
  assign _T_876 = ~_T_875; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@136694.6]
  assign _GEN_15 = _T_860 ? _T_862 : 2'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@136674.4]
  assign _GEN_18 = _T_860 ? _T_868 : 19'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@136674.4]
  assign _GEN_19 = _T_860 ? _T_870 : 18'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@136674.4]
  assign _T_879 = _T_751 & d_first; // @[Monitor.scala 660:27:chipyard.TestHarness.RocketConfig.fir@136708.4]
  assign _T_881 = ~_T_558; // @[Monitor.scala 660:75:chipyard.TestHarness.RocketConfig.fir@136710.4]
  assign _T_882 = _T_879 & _T_881; // @[Monitor.scala 660:72:chipyard.TestHarness.RocketConfig.fir@136711.4]
  assign _T_883 = 2'h1 << io_in_d_bits_source; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@136713.6]
  assign _GEN_68 = {{15'd0}, _T_846}; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@136720.6]
  assign _T_889 = _GEN_68 << _T_841; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@136720.6]
  assign _GEN_20 = _T_882 ? _T_883 : 2'h0; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@136712.4]
  assign _GEN_21 = _T_882 ? _T_889 : 31'h0; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@136712.4]
  assign _T_896 = io_in_d_valid & d_first; // @[Monitor.scala 665:26:chipyard.TestHarness.RocketConfig.fir@136730.4]
  assign _T_899 = _T_896 & _T_881; // @[Monitor.scala 665:71:chipyard.TestHarness.RocketConfig.fir@136733.4]
  assign _T_900 = inflight >> io_in_d_bits_source; // @[Monitor.scala 666:25:chipyard.TestHarness.RocketConfig.fir@136735.6]
  assign _T_902 = io_in_a_bits_source == io_in_d_bits_source; // @[Monitor.scala 666:93:chipyard.TestHarness.RocketConfig.fir@136737.6]
  assign _T_903 = io_in_a_valid & _T_902; // @[Monitor.scala 666:68:chipyard.TestHarness.RocketConfig.fir@136738.6]
  assign _T_904 = io_in_a_bits_size == io_in_d_bits_size; // @[Monitor.scala 666:142:chipyard.TestHarness.RocketConfig.fir@136739.6]
  assign _T_905 = _T_903 & _T_904; // @[Monitor.scala 666:119:chipyard.TestHarness.RocketConfig.fir@136740.6]
  assign _T_906 = _T_905 & a_first; // @[Monitor.scala 666:166:chipyard.TestHarness.RocketConfig.fir@136741.6]
  assign _T_907 = _T_900 | _T_906; // @[Monitor.scala 666:49:chipyard.TestHarness.RocketConfig.fir@136742.6]
  assign _T_909 = _T_907 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@136744.6]
  assign _T_910 = ~_T_909; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@136745.6]
  assign a_opcode_lookup = _T_848[3:0]; // @[:chipyard.TestHarness.RocketConfig.fir@136627.4 :chipyard.TestHarness.RocketConfig.fir@136628.4 Monitor.scala 629:21:chipyard.TestHarness.RocketConfig.fir@136637.4]
  assign _GEN_25 = 3'h2 == a_opcode_lookup[2:0] ? 3'h1 : 3'h0; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@136751.6]
  assign _GEN_26 = 3'h3 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_25; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@136751.6]
  assign _GEN_27 = 3'h4 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_26; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@136751.6]
  assign _GEN_28 = 3'h5 == a_opcode_lookup[2:0] ? 3'h2 : _GEN_27; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@136751.6]
  assign _GEN_29 = 3'h6 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_28; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@136751.6]
  assign _GEN_30 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_29; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@136751.6]
  assign _T_912 = io_in_d_bits_opcode == _GEN_30; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@136751.6]
  assign _GEN_37 = 3'h6 == a_opcode_lookup[2:0] ? 3'h5 : _GEN_28; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@136753.6]
  assign _GEN_38 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_37; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@136753.6]
  assign _T_914 = io_in_d_bits_opcode == _GEN_38; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@136753.6]
  assign _T_915 = _T_912 | _T_914; // @[Monitor.scala 667:71:chipyard.TestHarness.RocketConfig.fir@136754.6]
  assign _GEN_41 = 3'h2 == io_in_a_bits_opcode ? 3'h1 : 3'h0; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@136755.6]
  assign _GEN_42 = 3'h3 == io_in_a_bits_opcode ? 3'h1 : _GEN_41; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@136755.6]
  assign _GEN_43 = 3'h4 == io_in_a_bits_opcode ? 3'h1 : _GEN_42; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@136755.6]
  assign _GEN_44 = 3'h5 == io_in_a_bits_opcode ? 3'h2 : _GEN_43; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@136755.6]
  assign _GEN_45 = 3'h6 == io_in_a_bits_opcode ? 3'h4 : _GEN_44; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@136755.6]
  assign _GEN_46 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_45; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@136755.6]
  assign _T_916 = io_in_d_bits_opcode == _GEN_46; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@136755.6]
  assign _GEN_53 = 3'h6 == io_in_a_bits_opcode ? 3'h5 : _GEN_44; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@136756.6]
  assign _GEN_54 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_53; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@136756.6]
  assign _T_917 = io_in_d_bits_opcode == _GEN_54; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@136756.6]
  assign _T_918 = _T_916 | _T_917; // @[Monitor.scala 668:99:chipyard.TestHarness.RocketConfig.fir@136757.6]
  assign _T_919 = io_in_a_valid & _T_918; // @[Monitor.scala 668:34:chipyard.TestHarness.RocketConfig.fir@136758.6]
  assign _T_920 = _T_915 | _T_919; // @[Monitor.scala 668:15:chipyard.TestHarness.RocketConfig.fir@136759.6]
  assign _T_922 = _T_920 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@136761.6]
  assign _T_923 = ~_T_922; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@136762.6]
  assign a_size_lookup = _T_856[3:0]; // @[:chipyard.TestHarness.RocketConfig.fir@136638.4 :chipyard.TestHarness.RocketConfig.fir@136639.4 Monitor.scala 633:19:chipyard.TestHarness.RocketConfig.fir@136648.4]
  assign _GEN_71 = {{2'd0}, io_in_d_bits_size}; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@136767.6]
  assign _T_924 = _GEN_71 == a_size_lookup; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@136767.6]
  assign _T_926 = io_in_a_valid & _T_904; // @[Monitor.scala 670:72:chipyard.TestHarness.RocketConfig.fir@136769.6]
  assign _T_927 = _T_924 | _T_926; // @[Monitor.scala 670:53:chipyard.TestHarness.RocketConfig.fir@136770.6]
  assign _T_929 = _T_927 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@136772.6]
  assign _T_930 = ~_T_929; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@136773.6]
  assign _T_932 = _T_896 & a_first; // @[Monitor.scala 672:36:chipyard.TestHarness.RocketConfig.fir@136780.4]
  assign _T_933 = _T_932 & io_in_a_valid; // @[Monitor.scala 672:47:chipyard.TestHarness.RocketConfig.fir@136781.4]
  assign _T_935 = _T_933 & _T_902; // @[Monitor.scala 672:65:chipyard.TestHarness.RocketConfig.fir@136783.4]
  assign _T_937 = _T_935 & _T_881; // @[Monitor.scala 672:116:chipyard.TestHarness.RocketConfig.fir@136785.4]
  assign _T_938 = ~io_in_d_ready; // @[Monitor.scala 673:15:chipyard.TestHarness.RocketConfig.fir@136787.6]
  assign _T_939 = _T_938 | io_in_a_ready; // @[Monitor.scala 673:32:chipyard.TestHarness.RocketConfig.fir@136788.6]
  assign _T_941 = _T_939 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@136790.6]
  assign _T_942 = ~_T_941; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@136791.6]
  assign a_set = _GEN_15[0]; // @[:chipyard.TestHarness.RocketConfig.fir@136621.4 :chipyard.TestHarness.RocketConfig.fir@136622.4 Monitor.scala 644:13:chipyard.TestHarness.RocketConfig.fir@136676.6]
  assign _T_943 = inflight | a_set; // @[Monitor.scala 680:27:chipyard.TestHarness.RocketConfig.fir@136797.4]
  assign d_clr = _GEN_20[0]; // @[:chipyard.TestHarness.RocketConfig.fir@136700.4 :chipyard.TestHarness.RocketConfig.fir@136701.4 Monitor.scala 661:13:chipyard.TestHarness.RocketConfig.fir@136714.6]
  assign _T_944 = ~d_clr; // @[Monitor.scala 680:38:chipyard.TestHarness.RocketConfig.fir@136798.4]
  assign _T_945 = _T_943 & _T_944; // @[Monitor.scala 680:36:chipyard.TestHarness.RocketConfig.fir@136799.4]
  assign a_opcodes_set = _GEN_18[3:0]; // @[:chipyard.TestHarness.RocketConfig.fir@136623.4 :chipyard.TestHarness.RocketConfig.fir@136624.4 Monitor.scala 647:21:chipyard.TestHarness.RocketConfig.fir@136685.6]
  assign _T_946 = inflight_opcodes | a_opcodes_set; // @[Monitor.scala 681:43:chipyard.TestHarness.RocketConfig.fir@136801.4]
  assign d_opcodes_clr = _GEN_21[3:0]; // @[:chipyard.TestHarness.RocketConfig.fir@136702.4 :chipyard.TestHarness.RocketConfig.fir@136703.4 Monitor.scala 662:21:chipyard.TestHarness.RocketConfig.fir@136721.6]
  assign _T_947 = ~d_opcodes_clr; // @[Monitor.scala 681:62:chipyard.TestHarness.RocketConfig.fir@136802.4]
  assign _T_948 = _T_946 & _T_947; // @[Monitor.scala 681:60:chipyard.TestHarness.RocketConfig.fir@136803.4]
  assign a_sizes_set = _GEN_19[3:0]; // @[:chipyard.TestHarness.RocketConfig.fir@136625.4 :chipyard.TestHarness.RocketConfig.fir@136626.4 Monitor.scala 648:19:chipyard.TestHarness.RocketConfig.fir@136688.6]
  assign _T_949 = inflight_sizes | a_sizes_set; // @[Monitor.scala 682:39:chipyard.TestHarness.RocketConfig.fir@136805.4]
  assign _T_951 = _T_949 & _T_947; // @[Monitor.scala 682:54:chipyard.TestHarness.RocketConfig.fir@136807.4]
  assign _T_953 = |inflight; // @[Monitor.scala 687:26:chipyard.TestHarness.RocketConfig.fir@136812.4]
  assign _T_954 = ~_T_953; // @[Monitor.scala 687:16:chipyard.TestHarness.RocketConfig.fir@136813.4]
  assign _T_955 = plusarg_reader_out == 32'h0; // @[Monitor.scala 687:39:chipyard.TestHarness.RocketConfig.fir@136814.4]
  assign _T_956 = _T_954 | _T_955; // @[Monitor.scala 687:30:chipyard.TestHarness.RocketConfig.fir@136815.4]
  assign _T_957 = _T_952 < plusarg_reader_out; // @[Monitor.scala 687:59:chipyard.TestHarness.RocketConfig.fir@136816.4]
  assign _T_958 = _T_956 | _T_957; // @[Monitor.scala 687:47:chipyard.TestHarness.RocketConfig.fir@136817.4]
  assign _T_960 = _T_958 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@136819.4]
  assign _T_961 = ~_T_960; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@136820.4]
  assign _T_963 = _T_952 + 32'h1; // @[Monitor.scala 689:26:chipyard.TestHarness.RocketConfig.fir@136826.4]
  assign _T_966 = _T_702 | _T_751; // @[Monitor.scala 690:27:chipyard.TestHarness.RocketConfig.fir@136830.4]
  assign _GEN_72 = io_in_a_valid & _T_56; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135428.10]
  assign _GEN_88 = io_in_a_valid & _T_124; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135530.10]
  assign _GEN_106 = io_in_a_valid & _T_196; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135643.10]
  assign _GEN_118 = io_in_a_valid & _T_259; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135732.10]
  assign _GEN_128 = io_in_a_valid & _T_318; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135813.10]
  assign _GEN_138 = io_in_a_valid & _T_379; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135893.10]
  assign _GEN_148 = io_in_a_valid & _T_435; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135971.10]
  assign _GEN_158 = io_in_a_valid & _T_491; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@136049.10]
  assign _GEN_170 = io_in_d_valid & _T_558; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@136112.10]
  assign _GEN_174 = io_in_d_valid & _T_578; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@136154.10]
  assign _GEN_180 = io_in_d_valid & _T_606; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@136212.10]
  assign _GEN_186 = io_in_d_valid & _T_635; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@136271.10]
  assign _GEN_188 = io_in_d_valid & _T_652; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@136306.10]
  assign _GEN_190 = io_in_d_valid & _T_670; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@136342.10]
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
  _T_711 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_722 = _RAND_1[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_723 = _RAND_2[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_724 = _RAND_3[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_725 = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_726 = _RAND_5[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  _T_759 = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  _T_770 = _RAND_7[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  _T_772 = _RAND_8[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  _T_773 = _RAND_9[0:0];
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
  inflight_sizes = _RAND_12[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  _T_813 = _RAND_13[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  _T_831 = _RAND_14[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  _T_952 = _RAND_15[31:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      _T_711 <= 1'h0;
    end else if (_T_702) begin
      if (_T_714) begin
        _T_711 <= 1'h0;
      end else begin
        _T_711 <= _T_713;
      end
    end
    if (_T_750) begin
      _T_722 <= io_in_a_bits_opcode;
    end
    if (_T_750) begin
      _T_723 <= io_in_a_bits_param;
    end
    if (_T_750) begin
      _T_724 <= io_in_a_bits_size;
    end
    if (_T_750) begin
      _T_725 <= io_in_a_bits_source;
    end
    if (_T_750) begin
      _T_726 <= io_in_a_bits_address;
    end
    if (reset) begin
      _T_759 <= 1'h0;
    end else if (_T_751) begin
      if (_T_762) begin
        _T_759 <= 1'h0;
      end else begin
        _T_759 <= _T_761;
      end
    end
    if (_T_803) begin
      _T_770 <= io_in_d_bits_opcode;
    end
    if (_T_803) begin
      _T_772 <= io_in_d_bits_size;
    end
    if (_T_803) begin
      _T_773 <= io_in_d_bits_source;
    end
    if (reset) begin
      inflight <= 1'h0;
    end else begin
      inflight <= _T_945;
    end
    if (reset) begin
      inflight_opcodes <= 4'h0;
    end else begin
      inflight_opcodes <= _T_948;
    end
    if (reset) begin
      inflight_sizes <= 4'h0;
    end else begin
      inflight_sizes <= _T_951;
    end
    if (reset) begin
      _T_813 <= 1'h0;
    end else if (_T_702) begin
      if (a_first) begin
        _T_813 <= 1'h0;
      end else begin
        _T_813 <= _T_815;
      end
    end
    if (reset) begin
      _T_831 <= 1'h0;
    end else if (_T_751) begin
      if (d_first) begin
        _T_831 <= 1'h0;
      end else begin
        _T_831 <= _T_833;
      end
    end
    if (reset) begin
      _T_952 <= 32'h0;
    end else if (_T_966) begin
      _T_952 <= 32'h0;
    end else begin
      _T_952 <= _T_963;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_72 & _T_97) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock type unsupported by manager (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135428.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_72 & _T_97) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135429.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_72 & _T_97) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock from a client which does not support Probe (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135435.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_72 & _T_97) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135436.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_72 & _T_103) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock carries invalid source ID (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135442.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_72 & _T_103) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135443.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_72 & _T_107) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock smaller than a beat (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135450.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_72 & _T_107) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135451.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_72 & _T_110) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock address not aligned to size (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135457.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_72 & _T_110) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135458.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_72 & _T_114) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock carries invalid grow param (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135465.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_72 & _T_114) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135466.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_72 & _T_119) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock contains invalid mask (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135474.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_72 & _T_119) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135475.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_72 & _T_123) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock is corrupt (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135482.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_72 & _T_123) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135483.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_88 & _T_97) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm type unsupported by manager (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135530.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_88 & _T_97) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135531.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_88 & _T_97) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm from a client which does not support Probe (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135537.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_88 & _T_97) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135538.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_88 & _T_103) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm carries invalid source ID (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135544.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_88 & _T_103) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135545.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_88 & _T_107) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm smaller than a beat (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135552.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_88 & _T_107) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135553.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_88 & _T_110) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm address not aligned to size (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135559.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_88 & _T_110) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135560.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_88 & _T_114) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm carries invalid grow param (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135567.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_88 & _T_114) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135568.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_88 & _T_186) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm requests NtoB (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135575.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_88 & _T_186) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135576.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_88 & _T_119) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm contains invalid mask (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135584.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_88 & _T_119) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135585.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_88 & _T_123) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm is corrupt (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135592.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_88 & _T_123) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135593.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_106 & _T_240) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Get type unsupported by manager (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135643.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_106 & _T_240) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135644.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_106 & _T_103) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get carries invalid source ID (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135650.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_106 & _T_103) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135651.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_106 & _T_110) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get address not aligned to size (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135657.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_106 & _T_110) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135658.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_106 & _T_250) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get carries invalid param (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135665.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_106 & _T_250) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135666.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_106 & _T_254) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get contains invalid mask (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135673.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_106 & _T_254) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135674.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_106 & _T_123) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get is corrupt (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135681.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_106 & _T_123) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135682.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_118 & _T_240) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutFull type unsupported by manager (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135732.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_118 & _T_240) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135733.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_118 & _T_103) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull carries invalid source ID (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135739.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_118 & _T_103) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135740.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_118 & _T_110) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull address not aligned to size (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135746.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_118 & _T_110) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135747.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_118 & _T_250) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull carries invalid param (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135754.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_118 & _T_250) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135755.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_118 & _T_254) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull contains invalid mask (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135762.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_118 & _T_254) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135763.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_128 & _T_240) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutPartial type unsupported by manager (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135813.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_128 & _T_240) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135814.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_128 & _T_103) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial carries invalid source ID (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135820.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_128 & _T_103) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135821.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_128 & _T_110) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial address not aligned to size (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135827.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_128 & _T_110) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135828.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_128 & _T_250) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial carries invalid param (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135835.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_128 & _T_250) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135836.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_128 & _T_378) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial contains invalid mask (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135845.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_128 & _T_378) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135846.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_138 & _T_97) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Arithmetic type unsupported by manager (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135893.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_138 & _T_97) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135894.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_138 & _T_103) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic carries invalid source ID (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135900.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_138 & _T_103) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135901.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_138 & _T_110) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic address not aligned to size (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135907.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_138 & _T_110) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135908.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_138 & _T_430) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic carries invalid opcode param (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135915.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_138 & _T_430) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135916.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_138 & _T_254) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic contains invalid mask (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135923.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_138 & _T_254) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135924.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_148 & _T_97) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Logical type unsupported by manager (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135971.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_148 & _T_97) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135972.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_148 & _T_103) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical carries invalid source ID (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135978.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_148 & _T_103) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135979.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_148 & _T_110) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical address not aligned to size (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135985.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_148 & _T_110) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135986.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_148 & _T_486) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical carries invalid opcode param (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135993.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_148 & _T_486) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@135994.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_148 & _T_254) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical contains invalid mask (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@136001.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_148 & _T_254) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@136002.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_158 & _T_97) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Hint type unsupported by manager (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@136049.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_158 & _T_97) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@136050.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_158 & _T_103) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint carries invalid source ID (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@136056.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_158 & _T_103) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@136057.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_158 & _T_110) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint address not aligned to size (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@136063.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_158 & _T_110) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@136064.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_158 & _T_542) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint carries invalid opcode param (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@136071.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_158 & _T_542) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@136072.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_158 & _T_254) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint contains invalid mask (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@136079.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_158 & _T_254) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@136080.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_158 & _T_123) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint is corrupt (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@136087.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_158 & _T_123) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@136088.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_in_d_valid & _T_554) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel has invalid opcode (connected at Debug.scala:1688:19)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@136098.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (io_in_d_valid & _T_554) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@136099.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_170 & _T_561) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck carries invalid source ID (connected at Debug.scala:1688:19)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@136112.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_170 & _T_561) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@136113.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_170 & _T_565) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck smaller than a beat (connected at Debug.scala:1688:19)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@136120.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_170 & _T_565) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@136121.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_174 & _T_561) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid source ID (connected at Debug.scala:1688:19)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@136154.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_174 & _T_561) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@136155.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_174 & _T_97) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid sink ID (connected at Debug.scala:1688:19)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@136161.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_174 & _T_97) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@136162.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_174 & _T_565) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant smaller than a beat (connected at Debug.scala:1688:19)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@136169.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_174 & _T_565) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@136170.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_180 & _T_561) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid source ID (connected at Debug.scala:1688:19)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@136212.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_180 & _T_561) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@136213.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_180 & _T_97) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid sink ID (connected at Debug.scala:1688:19)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@136219.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_180 & _T_97) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@136220.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_180 & _T_565) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData smaller than a beat (connected at Debug.scala:1688:19)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@136227.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_180 & _T_565) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@136228.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_186 & _T_561) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck carries invalid source ID (connected at Debug.scala:1688:19)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@136271.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_186 & _T_561) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@136272.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_188 & _T_561) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData carries invalid source ID (connected at Debug.scala:1688:19)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@136306.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_188 & _T_561) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@136307.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_190 & _T_561) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck carries invalid source ID (connected at Debug.scala:1688:19)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@136342.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_190 & _T_561) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@136343.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_728 & _T_732) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel opcode changed within multibeat operation (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@136438.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_728 & _T_732) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@136439.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_728 & _T_736) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel param changed within multibeat operation (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@136446.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_728 & _T_736) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@136447.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_728 & _T_740) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel size changed within multibeat operation (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@136454.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_728 & _T_740) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@136455.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_728 & _T_744) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel source changed within multibeat operation (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@136462.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_728 & _T_744) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@136463.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_728 & _T_748) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel address changed with multibeat operation (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@136470.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_728 & _T_748) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@136471.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_777 & _T_781) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel opcode changed within multibeat operation (connected at Debug.scala:1688:19)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@136519.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_777 & _T_781) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@136520.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_777 & _T_789) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel size changed within multibeat operation (connected at Debug.scala:1688:19)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@136535.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_777 & _T_789) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@136536.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_777 & _T_793) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel source changed within multibeat operation (connected at Debug.scala:1688:19)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@136543.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_777 & _T_793) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@136544.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_860 & _T_876) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel re-used a source ID (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@136696.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_860 & _T_876) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@136697.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_899 & _T_910) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel acknowledged for nothing inflight (connected at Debug.scala:1688:19)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@136747.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_899 & _T_910) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@136748.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_899 & _T_923) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper opcode response (connected at Debug.scala:1688:19)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@136764.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_899 & _T_923) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@136765.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_899 & _T_930) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper response size (connected at Debug.scala:1688:19)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@136775.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_899 & _T_930) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@136776.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_937 & _T_942) begin
          $fwrite(32'h80000002,"Assertion failed: ready check\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@136793.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_937 & _T_942) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@136794.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_961) begin
          $fwrite(32'h80000002,"Assertion failed: TileLink timeout expired (connected at Debug.scala:1688:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@136822.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_961) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@136823.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
