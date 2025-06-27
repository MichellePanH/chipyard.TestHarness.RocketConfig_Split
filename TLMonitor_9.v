module TLMonitor_9( // @[:chipyard.TestHarness.RocketConfig.fir@22570.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@22571.4]
  input         reset, // @[:chipyard.TestHarness.RocketConfig.fir@22572.4]
  input         io_in_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@22573.4]
  input         io_in_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@22573.4]
  input  [2:0]  io_in_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@22573.4]
  input  [2:0]  io_in_a_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@22573.4]
  input  [2:0]  io_in_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@22573.4]
  input  [2:0]  io_in_a_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@22573.4]
  input  [30:0] io_in_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@22573.4]
  input  [7:0]  io_in_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@22573.4]
  input         io_in_a_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@22573.4]
  input         io_in_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@22573.4]
  input         io_in_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@22573.4]
  input  [2:0]  io_in_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@22573.4]
  input  [1:0]  io_in_d_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@22573.4]
  input  [2:0]  io_in_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@22573.4]
  input  [2:0]  io_in_d_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@22573.4]
  input         io_in_d_bits_sink, // @[:chipyard.TestHarness.RocketConfig.fir@22573.4]
  input         io_in_d_bits_denied, // @[:chipyard.TestHarness.RocketConfig.fir@22573.4]
  input         io_in_d_bits_corrupt // @[:chipyard.TestHarness.RocketConfig.fir@22573.4]
);
  wire [31:0] plusarg_reader_out; // @[PlusArg.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23961.4]
  wire  _T_4; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@22584.6]
  wire  _T_5; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@22585.6]
  wire  _T_6; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@22586.6]
  wire  _T_7; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@22587.6]
  wire  _T_9; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@22594.6]
  wire  _T_10; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@22595.6]
  wire  _T_11; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@22596.6]
  wire [12:0] _T_13; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@22598.6]
  wire [5:0] _T_15; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@22600.6]
  wire [30:0] _GEN_56; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@22601.6]
  wire [30:0] _T_16; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@22601.6]
  wire  _T_17; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@22602.6]
  wire [3:0] _T_20; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@22605.6]
  wire [2:0] _T_22; // @[Misc.scala 201:81:chipyard.TestHarness.RocketConfig.fir@22607.6]
  wire  _T_23; // @[Misc.scala 205:21:chipyard.TestHarness.RocketConfig.fir@22608.6]
  wire  _T_26; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@22611.6]
  wire  _T_28; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@22613.6]
  wire  _T_29; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@22614.6]
  wire  _T_31; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@22616.6]
  wire  _T_32; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@22617.6]
  wire  _T_35; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@22620.6]
  wire  _T_36; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@22621.6]
  wire  _T_37; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@22622.6]
  wire  _T_38; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@22623.6]
  wire  _T_39; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@22624.6]
  wire  _T_40; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@22625.6]
  wire  _T_41; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@22626.6]
  wire  _T_42; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@22627.6]
  wire  _T_43; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@22628.6]
  wire  _T_44; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@22629.6]
  wire  _T_45; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@22630.6]
  wire  _T_46; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@22631.6]
  wire  _T_47; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@22632.6]
  wire  _T_50; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@22635.6]
  wire  _T_51; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@22636.6]
  wire  _T_52; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@22637.6]
  wire  _T_53; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@22638.6]
  wire  _T_54; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@22639.6]
  wire  _T_55; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@22640.6]
  wire  _T_56; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@22641.6]
  wire  _T_57; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@22642.6]
  wire  _T_58; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@22643.6]
  wire  _T_59; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@22644.6]
  wire  _T_60; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@22645.6]
  wire  _T_61; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@22646.6]
  wire  _T_62; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@22647.6]
  wire  _T_63; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@22648.6]
  wire  _T_64; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@22649.6]
  wire  _T_65; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@22650.6]
  wire  _T_66; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@22651.6]
  wire  _T_67; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@22652.6]
  wire  _T_68; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@22653.6]
  wire  _T_69; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@22654.6]
  wire  _T_70; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@22655.6]
  wire  _T_71; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@22656.6]
  wire  _T_72; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@22657.6]
  wire  _T_73; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@22658.6]
  wire  _T_74; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@22659.6]
  wire [7:0] _T_81; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@22666.6]
  wire  _T_120; // @[Monitor.scala 79:25:chipyard.TestHarness.RocketConfig.fir@22709.6]
  wire [30:0] _T_122; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@22712.8]
  wire [31:0] _T_123; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@22713.8]
  wire [31:0] _T_125; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@22715.8]
  wire  _T_126; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@22716.8]
  wire  _T_131; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22721.8]
  wire  _T_137; // @[Parameters.scala 92:48:chipyard.TestHarness.RocketConfig.fir@22736.8]
  wire  _T_139; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@22738.8]
  wire  _T_147; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22747.8]
  wire  _T_148; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22748.8]
  wire  _T_150; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22754.8]
  wire  _T_151; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22755.8]
  wire  _T_154; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22762.8]
  wire  _T_155; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22763.8]
  wire  _T_157; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22769.8]
  wire  _T_158; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22770.8]
  wire  _T_159; // @[Bundles.scala 110:27:chipyard.TestHarness.RocketConfig.fir@22775.8]
  wire  _T_161; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22777.8]
  wire  _T_162; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22778.8]
  wire [7:0] _T_163; // @[Monitor.scala 86:18:chipyard.TestHarness.RocketConfig.fir@22783.8]
  wire  _T_164; // @[Monitor.scala 86:31:chipyard.TestHarness.RocketConfig.fir@22784.8]
  wire  _T_166; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22786.8]
  wire  _T_167; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22787.8]
  wire  _T_168; // @[Monitor.scala 87:18:chipyard.TestHarness.RocketConfig.fir@22792.8]
  wire  _T_170; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22794.8]
  wire  _T_171; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22795.8]
  wire  _T_172; // @[Monitor.scala 90:25:chipyard.TestHarness.RocketConfig.fir@22801.6]
  wire  _T_215; // @[Monitor.scala 97:31:chipyard.TestHarness.RocketConfig.fir@22875.8]
  wire  _T_217; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22877.8]
  wire  _T_218; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22878.8]
  wire  _T_228; // @[Monitor.scala 102:25:chipyard.TestHarness.RocketConfig.fir@22901.6]
  wire  _T_230; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@22904.8]
  wire  _T_238; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@22912.8]
  wire  _T_241; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22915.8]
  wire  _T_242; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22916.8]
  wire  _T_249; // @[Monitor.scala 106:31:chipyard.TestHarness.RocketConfig.fir@22935.8]
  wire  _T_251; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22937.8]
  wire  _T_252; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22938.8]
  wire  _T_253; // @[Monitor.scala 107:30:chipyard.TestHarness.RocketConfig.fir@22943.8]
  wire  _T_255; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22945.8]
  wire  _T_256; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22946.8]
  wire  _T_261; // @[Monitor.scala 111:25:chipyard.TestHarness.RocketConfig.fir@22960.6]
  wire  _T_290; // @[Monitor.scala 119:25:chipyard.TestHarness.RocketConfig.fir@23011.6]
  wire [7:0] _T_315; // @[Monitor.scala 124:33:chipyard.TestHarness.RocketConfig.fir@23053.8]
  wire [7:0] _T_316; // @[Monitor.scala 124:31:chipyard.TestHarness.RocketConfig.fir@23054.8]
  wire  _T_317; // @[Monitor.scala 124:40:chipyard.TestHarness.RocketConfig.fir@23055.8]
  wire  _T_319; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23057.8]
  wire  _T_320; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23058.8]
  wire  _T_321; // @[Monitor.scala 127:25:chipyard.TestHarness.RocketConfig.fir@23064.6]
  wire  _T_323; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@23067.8]
  wire  _T_331; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@23075.8]
  wire  _T_334; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23078.8]
  wire  _T_335; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23079.8]
  wire  _T_342; // @[Bundles.scala 140:33:chipyard.TestHarness.RocketConfig.fir@23098.8]
  wire  _T_344; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23100.8]
  wire  _T_345; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23101.8]
  wire  _T_350; // @[Monitor.scala 135:25:chipyard.TestHarness.RocketConfig.fir@23115.6]
  wire  _T_371; // @[Bundles.scala 147:30:chipyard.TestHarness.RocketConfig.fir@23149.8]
  wire  _T_373; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23151.8]
  wire  _T_374; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23152.8]
  wire  _T_379; // @[Monitor.scala 143:25:chipyard.TestHarness.RocketConfig.fir@23166.6]
  wire  _T_397; // @[Bundles.scala 160:28:chipyard.TestHarness.RocketConfig.fir@23197.8]
  wire  _T_399; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23199.8]
  wire  _T_400; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23200.8]
  wire  _T_409; // @[Bundles.scala 44:24:chipyard.TestHarness.RocketConfig.fir@23224.6]
  wire  _T_411; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23226.6]
  wire  _T_412; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23227.6]
  wire  _T_413; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@23232.6]
  wire  _T_414; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@23233.6]
  wire  _T_415; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@23234.6]
  wire  _T_416; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@23235.6]
  wire  _T_418; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@23242.6]
  wire  _T_419; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@23243.6]
  wire  _T_420; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@23244.6]
  wire  _T_422; // @[Monitor.scala 307:25:chipyard.TestHarness.RocketConfig.fir@23246.6]
  wire  _T_424; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23249.8]
  wire  _T_425; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23250.8]
  wire  _T_426; // @[Monitor.scala 309:27:chipyard.TestHarness.RocketConfig.fir@23255.8]
  wire  _T_428; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23257.8]
  wire  _T_429; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23258.8]
  wire  _T_430; // @[Monitor.scala 310:28:chipyard.TestHarness.RocketConfig.fir@23263.8]
  wire  _T_432; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23265.8]
  wire  _T_433; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23266.8]
  wire  _T_434; // @[Monitor.scala 311:15:chipyard.TestHarness.RocketConfig.fir@23271.8]
  wire  _T_436; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23273.8]
  wire  _T_437; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23274.8]
  wire  _T_438; // @[Monitor.scala 312:15:chipyard.TestHarness.RocketConfig.fir@23279.8]
  wire  _T_440; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23281.8]
  wire  _T_441; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23282.8]
  wire  _T_442; // @[Monitor.scala 315:25:chipyard.TestHarness.RocketConfig.fir@23288.6]
  wire  _T_453; // @[Bundles.scala 104:26:chipyard.TestHarness.RocketConfig.fir@23312.8]
  wire  _T_455; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23314.8]
  wire  _T_456; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23315.8]
  wire  _T_457; // @[Monitor.scala 320:28:chipyard.TestHarness.RocketConfig.fir@23320.8]
  wire  _T_459; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23322.8]
  wire  _T_460; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23323.8]
  wire  _T_470; // @[Monitor.scala 325:25:chipyard.TestHarness.RocketConfig.fir@23346.6]
  wire  _T_490; // @[Monitor.scala 331:30:chipyard.TestHarness.RocketConfig.fir@23387.8]
  wire  _T_492; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23389.8]
  wire  _T_493; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23390.8]
  wire  _T_499; // @[Monitor.scala 335:25:chipyard.TestHarness.RocketConfig.fir@23405.6]
  wire  _T_516; // @[Monitor.scala 343:25:chipyard.TestHarness.RocketConfig.fir@23440.6]
  wire  _T_534; // @[Monitor.scala 351:25:chipyard.TestHarness.RocketConfig.fir@23476.6]
  wire  _T_566; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@23542.4]
  wire  _T_573; // @[Edges.scala 93:28:chipyard.TestHarness.RocketConfig.fir@23549.4]
  reg [2:0] _T_575; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@23551.4]
  reg [31:0] _RAND_0;
  wire [2:0] _T_577; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@23553.4]
  wire  _T_578; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@23554.4]
  reg [2:0] _T_586; // @[Monitor.scala 381:22:chipyard.TestHarness.RocketConfig.fir@23565.4]
  reg [31:0] _RAND_1;
  reg [2:0] _T_587; // @[Monitor.scala 382:22:chipyard.TestHarness.RocketConfig.fir@23566.4]
  reg [31:0] _RAND_2;
  reg [2:0] _T_588; // @[Monitor.scala 383:22:chipyard.TestHarness.RocketConfig.fir@23567.4]
  reg [31:0] _RAND_3;
  reg [2:0] _T_589; // @[Monitor.scala 384:22:chipyard.TestHarness.RocketConfig.fir@23568.4]
  reg [31:0] _RAND_4;
  reg [30:0] _T_590; // @[Monitor.scala 385:22:chipyard.TestHarness.RocketConfig.fir@23569.4]
  reg [31:0] _RAND_5;
  wire  _T_591; // @[Monitor.scala 386:22:chipyard.TestHarness.RocketConfig.fir@23570.4]
  wire  _T_592; // @[Monitor.scala 386:19:chipyard.TestHarness.RocketConfig.fir@23571.4]
  wire  _T_593; // @[Monitor.scala 387:32:chipyard.TestHarness.RocketConfig.fir@23573.6]
  wire  _T_595; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23575.6]
  wire  _T_596; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23576.6]
  wire  _T_597; // @[Monitor.scala 388:32:chipyard.TestHarness.RocketConfig.fir@23581.6]
  wire  _T_599; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23583.6]
  wire  _T_600; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23584.6]
  wire  _T_601; // @[Monitor.scala 389:32:chipyard.TestHarness.RocketConfig.fir@23589.6]
  wire  _T_603; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23591.6]
  wire  _T_604; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23592.6]
  wire  _T_605; // @[Monitor.scala 390:32:chipyard.TestHarness.RocketConfig.fir@23597.6]
  wire  _T_607; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23599.6]
  wire  _T_608; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23600.6]
  wire  _T_609; // @[Monitor.scala 391:32:chipyard.TestHarness.RocketConfig.fir@23605.6]
  wire  _T_611; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23607.6]
  wire  _T_612; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23608.6]
  wire  _T_614; // @[Monitor.scala 393:20:chipyard.TestHarness.RocketConfig.fir@23615.4]
  wire  _T_615; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@23623.4]
  wire [12:0] _T_617; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@23625.4]
  wire [5:0] _T_619; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@23627.4]
  reg [2:0] _T_623; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@23631.4]
  reg [31:0] _RAND_6;
  wire [2:0] _T_625; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@23633.4]
  wire  _T_626; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@23634.4]
  reg [2:0] _T_634; // @[Monitor.scala 532:22:chipyard.TestHarness.RocketConfig.fir@23645.4]
  reg [31:0] _RAND_7;
  reg [1:0] _T_635; // @[Monitor.scala 533:22:chipyard.TestHarness.RocketConfig.fir@23646.4]
  reg [31:0] _RAND_8;
  reg [2:0] _T_636; // @[Monitor.scala 534:22:chipyard.TestHarness.RocketConfig.fir@23647.4]
  reg [31:0] _RAND_9;
  reg [2:0] _T_637; // @[Monitor.scala 535:22:chipyard.TestHarness.RocketConfig.fir@23648.4]
  reg [31:0] _RAND_10;
  reg  _T_638; // @[Monitor.scala 536:22:chipyard.TestHarness.RocketConfig.fir@23649.4]
  reg [31:0] _RAND_11;
  reg  _T_639; // @[Monitor.scala 537:22:chipyard.TestHarness.RocketConfig.fir@23650.4]
  reg [31:0] _RAND_12;
  wire  _T_640; // @[Monitor.scala 538:22:chipyard.TestHarness.RocketConfig.fir@23651.4]
  wire  _T_641; // @[Monitor.scala 538:19:chipyard.TestHarness.RocketConfig.fir@23652.4]
  wire  _T_642; // @[Monitor.scala 539:29:chipyard.TestHarness.RocketConfig.fir@23654.6]
  wire  _T_644; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23656.6]
  wire  _T_645; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23657.6]
  wire  _T_646; // @[Monitor.scala 540:29:chipyard.TestHarness.RocketConfig.fir@23662.6]
  wire  _T_648; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23664.6]
  wire  _T_649; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23665.6]
  wire  _T_650; // @[Monitor.scala 541:29:chipyard.TestHarness.RocketConfig.fir@23670.6]
  wire  _T_652; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23672.6]
  wire  _T_653; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23673.6]
  wire  _T_654; // @[Monitor.scala 542:29:chipyard.TestHarness.RocketConfig.fir@23678.6]
  wire  _T_656; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23680.6]
  wire  _T_657; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23681.6]
  wire  _T_658; // @[Monitor.scala 543:29:chipyard.TestHarness.RocketConfig.fir@23686.6]
  wire  _T_660; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23688.6]
  wire  _T_661; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23689.6]
  wire  _T_662; // @[Monitor.scala 544:29:chipyard.TestHarness.RocketConfig.fir@23694.6]
  wire  _T_664; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23696.6]
  wire  _T_665; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23697.6]
  wire  _T_667; // @[Monitor.scala 546:20:chipyard.TestHarness.RocketConfig.fir@23704.4]
  reg [4:0] inflight; // @[Monitor.scala 608:27:chipyard.TestHarness.RocketConfig.fir@23713.4]
  reg [31:0] _RAND_13;
  reg [19:0] inflight_opcodes; // @[Monitor.scala 610:35:chipyard.TestHarness.RocketConfig.fir@23714.4]
  reg [31:0] _RAND_14;
  reg [19:0] inflight_sizes; // @[Monitor.scala 612:33:chipyard.TestHarness.RocketConfig.fir@23715.4]
  reg [31:0] _RAND_15;
  reg [2:0] _T_677; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@23725.4]
  reg [31:0] _RAND_16;
  wire [2:0] _T_679; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@23727.4]
  wire  a_first; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@23728.4]
  reg [2:0] _T_695; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@23747.4]
  reg [31:0] _RAND_17;
  wire [2:0] _T_697; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@23749.4]
  wire  d_first; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@23750.4]
  wire [4:0] _GEN_57; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@23769.4]
  wire [5:0] _T_705; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@23769.4]
  wire [19:0] _T_706; // @[Monitor.scala 629:44:chipyard.TestHarness.RocketConfig.fir@23770.4]
  wire [15:0] _T_710; // @[Monitor.scala 606:57:chipyard.TestHarness.RocketConfig.fir@23774.4]
  wire [19:0] _GEN_58; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@23775.4]
  wire [19:0] _T_711; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@23775.4]
  wire [19:0] _T_712; // @[Monitor.scala 629:152:chipyard.TestHarness.RocketConfig.fir@23776.4]
  wire [19:0] _T_714; // @[Monitor.scala 633:40:chipyard.TestHarness.RocketConfig.fir@23781.4]
  wire [19:0] _T_719; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@23786.4]
  wire [19:0] _T_720; // @[Monitor.scala 633:144:chipyard.TestHarness.RocketConfig.fir@23787.4]
  wire  _T_724; // @[Monitor.scala 643:27:chipyard.TestHarness.RocketConfig.fir@23812.4]
  wire [7:0] _T_726; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@23815.6]
  wire [3:0] _T_727; // @[Monitor.scala 645:53:chipyard.TestHarness.RocketConfig.fir@23817.6]
  wire [3:0] _T_728; // @[Monitor.scala 645:61:chipyard.TestHarness.RocketConfig.fir@23818.6]
  wire [3:0] _T_729; // @[Monitor.scala 646:49:chipyard.TestHarness.RocketConfig.fir@23820.6]
  wire [3:0] _T_730; // @[Monitor.scala 646:57:chipyard.TestHarness.RocketConfig.fir@23821.6]
  wire [4:0] _GEN_63; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@23823.6]
  wire [5:0] _T_731; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@23823.6]
  wire [3:0] a_opcodes_set_interm; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@23814.4]
  wire [66:0] _GEN_64; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@23824.6]
  wire [66:0] _T_732; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@23824.6]
  wire [3:0] a_sizes_set_interm; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@23814.4]
  wire [66:0] _GEN_66; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@23827.6]
  wire [66:0] _T_734; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@23827.6]
  wire [4:0] _T_735; // @[Monitor.scala 649:26:chipyard.TestHarness.RocketConfig.fir@23829.6]
  wire  _T_737; // @[Monitor.scala 649:17:chipyard.TestHarness.RocketConfig.fir@23831.6]
  wire  _T_739; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23833.6]
  wire  _T_740; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23834.6]
  wire [7:0] _GEN_15; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@23814.4]
  wire [66:0] _GEN_18; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@23814.4]
  wire [66:0] _GEN_19; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@23814.4]
  wire  _T_743; // @[Monitor.scala 660:27:chipyard.TestHarness.RocketConfig.fir@23848.4]
  wire  _T_745; // @[Monitor.scala 660:75:chipyard.TestHarness.RocketConfig.fir@23850.4]
  wire  _T_746; // @[Monitor.scala 660:72:chipyard.TestHarness.RocketConfig.fir@23851.4]
  wire [7:0] _T_747; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@23853.6]
  wire [78:0] _GEN_68; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@23860.6]
  wire [78:0] _T_753; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@23860.6]
  wire [7:0] _GEN_20; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@23852.4]
  wire [78:0] _GEN_21; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@23852.4]
  wire  _T_760; // @[Monitor.scala 665:26:chipyard.TestHarness.RocketConfig.fir@23870.4]
  wire  _T_763; // @[Monitor.scala 665:71:chipyard.TestHarness.RocketConfig.fir@23873.4]
  wire [4:0] _T_764; // @[Monitor.scala 666:25:chipyard.TestHarness.RocketConfig.fir@23875.6]
  wire  _T_766; // @[Monitor.scala 666:93:chipyard.TestHarness.RocketConfig.fir@23877.6]
  wire  _T_767; // @[Monitor.scala 666:68:chipyard.TestHarness.RocketConfig.fir@23878.6]
  wire  _T_768; // @[Monitor.scala 666:142:chipyard.TestHarness.RocketConfig.fir@23879.6]
  wire  _T_769; // @[Monitor.scala 666:119:chipyard.TestHarness.RocketConfig.fir@23880.6]
  wire  _T_770; // @[Monitor.scala 666:166:chipyard.TestHarness.RocketConfig.fir@23881.6]
  wire  _T_771; // @[Monitor.scala 666:49:chipyard.TestHarness.RocketConfig.fir@23882.6]
  wire  _T_773; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23884.6]
  wire  _T_774; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23885.6]
  wire [3:0] a_opcode_lookup; // @[:chipyard.TestHarness.RocketConfig.fir@23767.4 :chipyard.TestHarness.RocketConfig.fir@23768.4 Monitor.scala 629:21:chipyard.TestHarness.RocketConfig.fir@23777.4]
  wire [2:0] _GEN_25; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@23891.6]
  wire [2:0] _GEN_26; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@23891.6]
  wire [2:0] _GEN_27; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@23891.6]
  wire [2:0] _GEN_28; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@23891.6]
  wire [2:0] _GEN_29; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@23891.6]
  wire [2:0] _GEN_30; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@23891.6]
  wire  _T_776; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@23891.6]
  wire [2:0] _GEN_37; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@23893.6]
  wire [2:0] _GEN_38; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@23893.6]
  wire  _T_778; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@23893.6]
  wire  _T_779; // @[Monitor.scala 667:71:chipyard.TestHarness.RocketConfig.fir@23894.6]
  wire [2:0] _GEN_41; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@23895.6]
  wire [2:0] _GEN_42; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@23895.6]
  wire [2:0] _GEN_43; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@23895.6]
  wire [2:0] _GEN_44; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@23895.6]
  wire [2:0] _GEN_45; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@23895.6]
  wire [2:0] _GEN_46; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@23895.6]
  wire  _T_780; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@23895.6]
  wire [2:0] _GEN_53; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@23896.6]
  wire [2:0] _GEN_54; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@23896.6]
  wire  _T_781; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@23896.6]
  wire  _T_782; // @[Monitor.scala 668:99:chipyard.TestHarness.RocketConfig.fir@23897.6]
  wire  _T_783; // @[Monitor.scala 668:34:chipyard.TestHarness.RocketConfig.fir@23898.6]
  wire  _T_784; // @[Monitor.scala 668:15:chipyard.TestHarness.RocketConfig.fir@23899.6]
  wire  _T_786; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23901.6]
  wire  _T_787; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23902.6]
  wire [3:0] a_size_lookup; // @[:chipyard.TestHarness.RocketConfig.fir@23778.4 :chipyard.TestHarness.RocketConfig.fir@23779.4 Monitor.scala 633:19:chipyard.TestHarness.RocketConfig.fir@23788.4]
  wire [3:0] _GEN_71; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@23907.6]
  wire  _T_788; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@23907.6]
  wire  _T_790; // @[Monitor.scala 670:72:chipyard.TestHarness.RocketConfig.fir@23909.6]
  wire  _T_791; // @[Monitor.scala 670:53:chipyard.TestHarness.RocketConfig.fir@23910.6]
  wire  _T_793; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23912.6]
  wire  _T_794; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23913.6]
  wire  _T_796; // @[Monitor.scala 672:36:chipyard.TestHarness.RocketConfig.fir@23920.4]
  wire  _T_797; // @[Monitor.scala 672:47:chipyard.TestHarness.RocketConfig.fir@23921.4]
  wire  _T_799; // @[Monitor.scala 672:65:chipyard.TestHarness.RocketConfig.fir@23923.4]
  wire  _T_801; // @[Monitor.scala 672:116:chipyard.TestHarness.RocketConfig.fir@23925.4]
  wire  _T_802; // @[Monitor.scala 673:15:chipyard.TestHarness.RocketConfig.fir@23927.6]
  wire  _T_803; // @[Monitor.scala 673:32:chipyard.TestHarness.RocketConfig.fir@23928.6]
  wire  _T_805; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23930.6]
  wire  _T_806; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23931.6]
  wire [4:0] a_set; // @[:chipyard.TestHarness.RocketConfig.fir@23761.4 :chipyard.TestHarness.RocketConfig.fir@23762.4 Monitor.scala 644:13:chipyard.TestHarness.RocketConfig.fir@23816.6]
  wire [4:0] d_clr; // @[:chipyard.TestHarness.RocketConfig.fir@23840.4 :chipyard.TestHarness.RocketConfig.fir@23841.4 Monitor.scala 661:13:chipyard.TestHarness.RocketConfig.fir@23854.6]
  wire  _T_807; // @[Monitor.scala 677:20:chipyard.TestHarness.RocketConfig.fir@23937.4]
  wire  _T_808; // @[Monitor.scala 677:40:chipyard.TestHarness.RocketConfig.fir@23938.4]
  wire  _T_809; // @[Monitor.scala 677:33:chipyard.TestHarness.RocketConfig.fir@23939.4]
  wire  _T_810; // @[Monitor.scala 677:30:chipyard.TestHarness.RocketConfig.fir@23940.4]
  wire  _T_812; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23942.4]
  wire  _T_813; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23943.4]
  wire [4:0] _T_814; // @[Monitor.scala 680:27:chipyard.TestHarness.RocketConfig.fir@23948.4]
  wire [4:0] _T_815; // @[Monitor.scala 680:38:chipyard.TestHarness.RocketConfig.fir@23949.4]
  wire [4:0] _T_816; // @[Monitor.scala 680:36:chipyard.TestHarness.RocketConfig.fir@23950.4]
  wire [19:0] a_opcodes_set; // @[:chipyard.TestHarness.RocketConfig.fir@23763.4 :chipyard.TestHarness.RocketConfig.fir@23764.4 Monitor.scala 647:21:chipyard.TestHarness.RocketConfig.fir@23825.6]
  wire [19:0] _T_817; // @[Monitor.scala 681:43:chipyard.TestHarness.RocketConfig.fir@23952.4]
  wire [19:0] d_opcodes_clr; // @[:chipyard.TestHarness.RocketConfig.fir@23842.4 :chipyard.TestHarness.RocketConfig.fir@23843.4 Monitor.scala 662:21:chipyard.TestHarness.RocketConfig.fir@23861.6]
  wire [19:0] _T_818; // @[Monitor.scala 681:62:chipyard.TestHarness.RocketConfig.fir@23953.4]
  wire [19:0] _T_819; // @[Monitor.scala 681:60:chipyard.TestHarness.RocketConfig.fir@23954.4]
  wire [19:0] a_sizes_set; // @[:chipyard.TestHarness.RocketConfig.fir@23765.4 :chipyard.TestHarness.RocketConfig.fir@23766.4 Monitor.scala 648:19:chipyard.TestHarness.RocketConfig.fir@23828.6]
  wire [19:0] _T_820; // @[Monitor.scala 682:39:chipyard.TestHarness.RocketConfig.fir@23956.4]
  wire [19:0] _T_822; // @[Monitor.scala 682:54:chipyard.TestHarness.RocketConfig.fir@23958.4]
  reg [31:0] _T_823; // @[Monitor.scala 684:27:chipyard.TestHarness.RocketConfig.fir@23960.4]
  reg [31:0] _RAND_18;
  wire  _T_824; // @[Monitor.scala 687:26:chipyard.TestHarness.RocketConfig.fir@23963.4]
  wire  _T_825; // @[Monitor.scala 687:16:chipyard.TestHarness.RocketConfig.fir@23964.4]
  wire  _T_826; // @[Monitor.scala 687:39:chipyard.TestHarness.RocketConfig.fir@23965.4]
  wire  _T_827; // @[Monitor.scala 687:30:chipyard.TestHarness.RocketConfig.fir@23966.4]
  wire  _T_828; // @[Monitor.scala 687:59:chipyard.TestHarness.RocketConfig.fir@23967.4]
  wire  _T_829; // @[Monitor.scala 687:47:chipyard.TestHarness.RocketConfig.fir@23968.4]
  wire  _T_831; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23970.4]
  wire  _T_832; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23971.4]
  wire [31:0] _T_834; // @[Monitor.scala 689:26:chipyard.TestHarness.RocketConfig.fir@23977.4]
  wire  _T_837; // @[Monitor.scala 690:27:chipyard.TestHarness.RocketConfig.fir@23981.4]
  wire  _GEN_72; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22723.10]
  wire  _GEN_88; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22815.10]
  wire  _GEN_106; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22918.10]
  wire  _GEN_118; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22977.10]
  wire  _GEN_128; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23028.10]
  wire  _GEN_138; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23081.10]
  wire  _GEN_148; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23132.10]
  wire  _GEN_158; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23180.10]
  wire  _GEN_170; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23252.10]
  wire  _GEN_180; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23294.10]
  wire  _GEN_194; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23352.10]
  wire  _GEN_208; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23411.10]
  wire  _GEN_216; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23446.10]
  wire  _GEN_224; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23482.10]
  plusarg_reader #(.FORMAT("tilelink_timeout=%d"), .DEFAULT(0), .WIDTH(32)) plusarg_reader ( // @[PlusArg.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23961.4]
    .out(plusarg_reader_out)
  );
  assign _T_4 = io_in_a_bits_source == 3'h4; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@22584.6]
  assign _T_5 = io_in_a_bits_source == 3'h0; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@22585.6]
  assign _T_6 = io_in_a_bits_source == 3'h1; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@22586.6]
  assign _T_7 = io_in_a_bits_source == 3'h2; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@22587.6]
  assign _T_9 = _T_4 | _T_5; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@22594.6]
  assign _T_10 = _T_9 | _T_6; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@22595.6]
  assign _T_11 = _T_10 | _T_7; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@22596.6]
  assign _T_13 = 13'h3f << io_in_a_bits_size; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@22598.6]
  assign _T_15 = ~_T_13[5:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@22600.6]
  assign _GEN_56 = {{25'd0}, _T_15}; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@22601.6]
  assign _T_16 = io_in_a_bits_address & _GEN_56; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@22601.6]
  assign _T_17 = _T_16 == 31'h0; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@22602.6]
  assign _T_20 = 4'h1 << io_in_a_bits_size[1:0]; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@22605.6]
  assign _T_22 = _T_20[2:0] | 3'h1; // @[Misc.scala 201:81:chipyard.TestHarness.RocketConfig.fir@22607.6]
  assign _T_23 = io_in_a_bits_size >= 3'h3; // @[Misc.scala 205:21:chipyard.TestHarness.RocketConfig.fir@22608.6]
  assign _T_26 = ~io_in_a_bits_address[2]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@22611.6]
  assign _T_28 = _T_22[2] & _T_26; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@22613.6]
  assign _T_29 = _T_23 | _T_28; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@22614.6]
  assign _T_31 = _T_22[2] & io_in_a_bits_address[2]; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@22616.6]
  assign _T_32 = _T_23 | _T_31; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@22617.6]
  assign _T_35 = ~io_in_a_bits_address[1]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@22620.6]
  assign _T_36 = _T_26 & _T_35; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@22621.6]
  assign _T_37 = _T_22[1] & _T_36; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@22622.6]
  assign _T_38 = _T_29 | _T_37; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@22623.6]
  assign _T_39 = _T_26 & io_in_a_bits_address[1]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@22624.6]
  assign _T_40 = _T_22[1] & _T_39; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@22625.6]
  assign _T_41 = _T_29 | _T_40; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@22626.6]
  assign _T_42 = io_in_a_bits_address[2] & _T_35; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@22627.6]
  assign _T_43 = _T_22[1] & _T_42; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@22628.6]
  assign _T_44 = _T_32 | _T_43; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@22629.6]
  assign _T_45 = io_in_a_bits_address[2] & io_in_a_bits_address[1]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@22630.6]
  assign _T_46 = _T_22[1] & _T_45; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@22631.6]
  assign _T_47 = _T_32 | _T_46; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@22632.6]
  assign _T_50 = ~io_in_a_bits_address[0]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@22635.6]
  assign _T_51 = _T_36 & _T_50; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@22636.6]
  assign _T_52 = _T_22[0] & _T_51; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@22637.6]
  assign _T_53 = _T_38 | _T_52; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@22638.6]
  assign _T_54 = _T_36 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@22639.6]
  assign _T_55 = _T_22[0] & _T_54; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@22640.6]
  assign _T_56 = _T_38 | _T_55; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@22641.6]
  assign _T_57 = _T_39 & _T_50; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@22642.6]
  assign _T_58 = _T_22[0] & _T_57; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@22643.6]
  assign _T_59 = _T_41 | _T_58; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@22644.6]
  assign _T_60 = _T_39 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@22645.6]
  assign _T_61 = _T_22[0] & _T_60; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@22646.6]
  assign _T_62 = _T_41 | _T_61; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@22647.6]
  assign _T_63 = _T_42 & _T_50; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@22648.6]
  assign _T_64 = _T_22[0] & _T_63; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@22649.6]
  assign _T_65 = _T_44 | _T_64; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@22650.6]
  assign _T_66 = _T_42 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@22651.6]
  assign _T_67 = _T_22[0] & _T_66; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@22652.6]
  assign _T_68 = _T_44 | _T_67; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@22653.6]
  assign _T_69 = _T_45 & _T_50; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@22654.6]
  assign _T_70 = _T_22[0] & _T_69; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@22655.6]
  assign _T_71 = _T_47 | _T_70; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@22656.6]
  assign _T_72 = _T_45 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@22657.6]
  assign _T_73 = _T_22[0] & _T_72; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@22658.6]
  assign _T_74 = _T_47 | _T_73; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@22659.6]
  assign _T_81 = {_T_74,_T_71,_T_68,_T_65,_T_62,_T_59,_T_56,_T_53}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@22666.6]
  assign _T_120 = io_in_a_bits_opcode == 3'h6; // @[Monitor.scala 79:25:chipyard.TestHarness.RocketConfig.fir@22709.6]
  assign _T_122 = io_in_a_bits_address ^ 31'h54000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@22712.8]
  assign _T_123 = {1'b0,$signed(_T_122)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@22713.8]
  assign _T_125 = $signed(_T_123) & -32'sh1000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@22715.8]
  assign _T_126 = $signed(_T_125) == 32'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@22716.8]
  assign _T_131 = ~reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22721.8]
  assign _T_137 = 3'h6 == io_in_a_bits_size; // @[Parameters.scala 92:48:chipyard.TestHarness.RocketConfig.fir@22736.8]
  assign _T_139 = _T_5 & _T_137; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@22738.8]
  assign _T_147 = _T_139 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22747.8]
  assign _T_148 = ~_T_147; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22748.8]
  assign _T_150 = _T_11 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22754.8]
  assign _T_151 = ~_T_150; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22755.8]
  assign _T_154 = _T_23 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22762.8]
  assign _T_155 = ~_T_154; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22763.8]
  assign _T_157 = _T_17 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22769.8]
  assign _T_158 = ~_T_157; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22770.8]
  assign _T_159 = io_in_a_bits_param <= 3'h2; // @[Bundles.scala 110:27:chipyard.TestHarness.RocketConfig.fir@22775.8]
  assign _T_161 = _T_159 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22777.8]
  assign _T_162 = ~_T_161; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22778.8]
  assign _T_163 = ~io_in_a_bits_mask; // @[Monitor.scala 86:18:chipyard.TestHarness.RocketConfig.fir@22783.8]
  assign _T_164 = _T_163 == 8'h0; // @[Monitor.scala 86:31:chipyard.TestHarness.RocketConfig.fir@22784.8]
  assign _T_166 = _T_164 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22786.8]
  assign _T_167 = ~_T_166; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22787.8]
  assign _T_168 = ~io_in_a_bits_corrupt; // @[Monitor.scala 87:18:chipyard.TestHarness.RocketConfig.fir@22792.8]
  assign _T_170 = _T_168 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22794.8]
  assign _T_171 = ~_T_170; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22795.8]
  assign _T_172 = io_in_a_bits_opcode == 3'h7; // @[Monitor.scala 90:25:chipyard.TestHarness.RocketConfig.fir@22801.6]
  assign _T_215 = io_in_a_bits_param != 3'h0; // @[Monitor.scala 97:31:chipyard.TestHarness.RocketConfig.fir@22875.8]
  assign _T_217 = _T_215 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22877.8]
  assign _T_218 = ~_T_217; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22878.8]
  assign _T_228 = io_in_a_bits_opcode == 3'h4; // @[Monitor.scala 102:25:chipyard.TestHarness.RocketConfig.fir@22901.6]
  assign _T_230 = io_in_a_bits_size <= 3'h6; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@22904.8]
  assign _T_238 = _T_230 & _T_126; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@22912.8]
  assign _T_241 = _T_238 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22915.8]
  assign _T_242 = ~_T_241; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22916.8]
  assign _T_249 = io_in_a_bits_param == 3'h0; // @[Monitor.scala 106:31:chipyard.TestHarness.RocketConfig.fir@22935.8]
  assign _T_251 = _T_249 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22937.8]
  assign _T_252 = ~_T_251; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22938.8]
  assign _T_253 = io_in_a_bits_mask == _T_81; // @[Monitor.scala 107:30:chipyard.TestHarness.RocketConfig.fir@22943.8]
  assign _T_255 = _T_253 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22945.8]
  assign _T_256 = ~_T_255; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22946.8]
  assign _T_261 = io_in_a_bits_opcode == 3'h0; // @[Monitor.scala 111:25:chipyard.TestHarness.RocketConfig.fir@22960.6]
  assign _T_290 = io_in_a_bits_opcode == 3'h1; // @[Monitor.scala 119:25:chipyard.TestHarness.RocketConfig.fir@23011.6]
  assign _T_315 = ~_T_81; // @[Monitor.scala 124:33:chipyard.TestHarness.RocketConfig.fir@23053.8]
  assign _T_316 = io_in_a_bits_mask & _T_315; // @[Monitor.scala 124:31:chipyard.TestHarness.RocketConfig.fir@23054.8]
  assign _T_317 = _T_316 == 8'h0; // @[Monitor.scala 124:40:chipyard.TestHarness.RocketConfig.fir@23055.8]
  assign _T_319 = _T_317 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23057.8]
  assign _T_320 = ~_T_319; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23058.8]
  assign _T_321 = io_in_a_bits_opcode == 3'h2; // @[Monitor.scala 127:25:chipyard.TestHarness.RocketConfig.fir@23064.6]
  assign _T_323 = io_in_a_bits_size <= 3'h3; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@23067.8]
  assign _T_331 = _T_323 & _T_126; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@23075.8]
  assign _T_334 = _T_331 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23078.8]
  assign _T_335 = ~_T_334; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23079.8]
  assign _T_342 = io_in_a_bits_param <= 3'h4; // @[Bundles.scala 140:33:chipyard.TestHarness.RocketConfig.fir@23098.8]
  assign _T_344 = _T_342 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23100.8]
  assign _T_345 = ~_T_344; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23101.8]
  assign _T_350 = io_in_a_bits_opcode == 3'h3; // @[Monitor.scala 135:25:chipyard.TestHarness.RocketConfig.fir@23115.6]
  assign _T_371 = io_in_a_bits_param <= 3'h3; // @[Bundles.scala 147:30:chipyard.TestHarness.RocketConfig.fir@23149.8]
  assign _T_373 = _T_371 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23151.8]
  assign _T_374 = ~_T_373; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23152.8]
  assign _T_379 = io_in_a_bits_opcode == 3'h5; // @[Monitor.scala 143:25:chipyard.TestHarness.RocketConfig.fir@23166.6]
  assign _T_397 = io_in_a_bits_param <= 3'h1; // @[Bundles.scala 160:28:chipyard.TestHarness.RocketConfig.fir@23197.8]
  assign _T_399 = _T_397 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23199.8]
  assign _T_400 = ~_T_399; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23200.8]
  assign _T_409 = io_in_d_bits_opcode <= 3'h6; // @[Bundles.scala 44:24:chipyard.TestHarness.RocketConfig.fir@23224.6]
  assign _T_411 = _T_409 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23226.6]
  assign _T_412 = ~_T_411; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23227.6]
  assign _T_413 = io_in_d_bits_source == 3'h4; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@23232.6]
  assign _T_414 = io_in_d_bits_source == 3'h0; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@23233.6]
  assign _T_415 = io_in_d_bits_source == 3'h1; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@23234.6]
  assign _T_416 = io_in_d_bits_source == 3'h2; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@23235.6]
  assign _T_418 = _T_413 | _T_414; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@23242.6]
  assign _T_419 = _T_418 | _T_415; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@23243.6]
  assign _T_420 = _T_419 | _T_416; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@23244.6]
  assign _T_422 = io_in_d_bits_opcode == 3'h6; // @[Monitor.scala 307:25:chipyard.TestHarness.RocketConfig.fir@23246.6]
  assign _T_424 = _T_420 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23249.8]
  assign _T_425 = ~_T_424; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23250.8]
  assign _T_426 = io_in_d_bits_size >= 3'h3; // @[Monitor.scala 309:27:chipyard.TestHarness.RocketConfig.fir@23255.8]
  assign _T_428 = _T_426 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23257.8]
  assign _T_429 = ~_T_428; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23258.8]
  assign _T_430 = io_in_d_bits_param == 2'h0; // @[Monitor.scala 310:28:chipyard.TestHarness.RocketConfig.fir@23263.8]
  assign _T_432 = _T_430 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23265.8]
  assign _T_433 = ~_T_432; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23266.8]
  assign _T_434 = ~io_in_d_bits_corrupt; // @[Monitor.scala 311:15:chipyard.TestHarness.RocketConfig.fir@23271.8]
  assign _T_436 = _T_434 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23273.8]
  assign _T_437 = ~_T_436; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23274.8]
  assign _T_438 = ~io_in_d_bits_denied; // @[Monitor.scala 312:15:chipyard.TestHarness.RocketConfig.fir@23279.8]
  assign _T_440 = _T_438 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23281.8]
  assign _T_441 = ~_T_440; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23282.8]
  assign _T_442 = io_in_d_bits_opcode == 3'h4; // @[Monitor.scala 315:25:chipyard.TestHarness.RocketConfig.fir@23288.6]
  assign _T_453 = io_in_d_bits_param <= 2'h2; // @[Bundles.scala 104:26:chipyard.TestHarness.RocketConfig.fir@23312.8]
  assign _T_455 = _T_453 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23314.8]
  assign _T_456 = ~_T_455; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23315.8]
  assign _T_457 = io_in_d_bits_param != 2'h2; // @[Monitor.scala 320:28:chipyard.TestHarness.RocketConfig.fir@23320.8]
  assign _T_459 = _T_457 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23322.8]
  assign _T_460 = ~_T_459; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23323.8]
  assign _T_470 = io_in_d_bits_opcode == 3'h5; // @[Monitor.scala 325:25:chipyard.TestHarness.RocketConfig.fir@23346.6]
  assign _T_490 = _T_438 | io_in_d_bits_corrupt; // @[Monitor.scala 331:30:chipyard.TestHarness.RocketConfig.fir@23387.8]
  assign _T_492 = _T_490 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23389.8]
  assign _T_493 = ~_T_492; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23390.8]
  assign _T_499 = io_in_d_bits_opcode == 3'h0; // @[Monitor.scala 335:25:chipyard.TestHarness.RocketConfig.fir@23405.6]
  assign _T_516 = io_in_d_bits_opcode == 3'h1; // @[Monitor.scala 343:25:chipyard.TestHarness.RocketConfig.fir@23440.6]
  assign _T_534 = io_in_d_bits_opcode == 3'h2; // @[Monitor.scala 351:25:chipyard.TestHarness.RocketConfig.fir@23476.6]
  assign _T_566 = io_in_a_ready & io_in_a_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@23542.4]
  assign _T_573 = ~io_in_a_bits_opcode[2]; // @[Edges.scala 93:28:chipyard.TestHarness.RocketConfig.fir@23549.4]
  assign _T_577 = _T_575 - 3'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@23553.4]
  assign _T_578 = _T_575 == 3'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@23554.4]
  assign _T_591 = ~_T_578; // @[Monitor.scala 386:22:chipyard.TestHarness.RocketConfig.fir@23570.4]
  assign _T_592 = io_in_a_valid & _T_591; // @[Monitor.scala 386:19:chipyard.TestHarness.RocketConfig.fir@23571.4]
  assign _T_593 = io_in_a_bits_opcode == _T_586; // @[Monitor.scala 387:32:chipyard.TestHarness.RocketConfig.fir@23573.6]
  assign _T_595 = _T_593 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23575.6]
  assign _T_596 = ~_T_595; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23576.6]
  assign _T_597 = io_in_a_bits_param == _T_587; // @[Monitor.scala 388:32:chipyard.TestHarness.RocketConfig.fir@23581.6]
  assign _T_599 = _T_597 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23583.6]
  assign _T_600 = ~_T_599; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23584.6]
  assign _T_601 = io_in_a_bits_size == _T_588; // @[Monitor.scala 389:32:chipyard.TestHarness.RocketConfig.fir@23589.6]
  assign _T_603 = _T_601 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23591.6]
  assign _T_604 = ~_T_603; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23592.6]
  assign _T_605 = io_in_a_bits_source == _T_589; // @[Monitor.scala 390:32:chipyard.TestHarness.RocketConfig.fir@23597.6]
  assign _T_607 = _T_605 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23599.6]
  assign _T_608 = ~_T_607; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23600.6]
  assign _T_609 = io_in_a_bits_address == _T_590; // @[Monitor.scala 391:32:chipyard.TestHarness.RocketConfig.fir@23605.6]
  assign _T_611 = _T_609 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23607.6]
  assign _T_612 = ~_T_611; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23608.6]
  assign _T_614 = _T_566 & _T_578; // @[Monitor.scala 393:20:chipyard.TestHarness.RocketConfig.fir@23615.4]
  assign _T_615 = io_in_d_ready & io_in_d_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@23623.4]
  assign _T_617 = 13'h3f << io_in_d_bits_size; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@23625.4]
  assign _T_619 = ~_T_617[5:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@23627.4]
  assign _T_625 = _T_623 - 3'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@23633.4]
  assign _T_626 = _T_623 == 3'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@23634.4]
  assign _T_640 = ~_T_626; // @[Monitor.scala 538:22:chipyard.TestHarness.RocketConfig.fir@23651.4]
  assign _T_641 = io_in_d_valid & _T_640; // @[Monitor.scala 538:19:chipyard.TestHarness.RocketConfig.fir@23652.4]
  assign _T_642 = io_in_d_bits_opcode == _T_634; // @[Monitor.scala 539:29:chipyard.TestHarness.RocketConfig.fir@23654.6]
  assign _T_644 = _T_642 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23656.6]
  assign _T_645 = ~_T_644; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23657.6]
  assign _T_646 = io_in_d_bits_param == _T_635; // @[Monitor.scala 540:29:chipyard.TestHarness.RocketConfig.fir@23662.6]
  assign _T_648 = _T_646 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23664.6]
  assign _T_649 = ~_T_648; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23665.6]
  assign _T_650 = io_in_d_bits_size == _T_636; // @[Monitor.scala 541:29:chipyard.TestHarness.RocketConfig.fir@23670.6]
  assign _T_652 = _T_650 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23672.6]
  assign _T_653 = ~_T_652; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23673.6]
  assign _T_654 = io_in_d_bits_source == _T_637; // @[Monitor.scala 542:29:chipyard.TestHarness.RocketConfig.fir@23678.6]
  assign _T_656 = _T_654 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23680.6]
  assign _T_657 = ~_T_656; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23681.6]
  assign _T_658 = io_in_d_bits_sink == _T_638; // @[Monitor.scala 543:29:chipyard.TestHarness.RocketConfig.fir@23686.6]
  assign _T_660 = _T_658 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23688.6]
  assign _T_661 = ~_T_660; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23689.6]
  assign _T_662 = io_in_d_bits_denied == _T_639; // @[Monitor.scala 544:29:chipyard.TestHarness.RocketConfig.fir@23694.6]
  assign _T_664 = _T_662 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23696.6]
  assign _T_665 = ~_T_664; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23697.6]
  assign _T_667 = _T_615 & _T_626; // @[Monitor.scala 546:20:chipyard.TestHarness.RocketConfig.fir@23704.4]
  assign _T_679 = _T_677 - 3'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@23727.4]
  assign a_first = _T_677 == 3'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@23728.4]
  assign _T_697 = _T_695 - 3'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@23749.4]
  assign d_first = _T_695 == 3'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@23750.4]
  assign _GEN_57 = {io_in_d_bits_source, 2'h0}; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@23769.4]
  assign _T_705 = {{1'd0}, _GEN_57}; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@23769.4]
  assign _T_706 = inflight_opcodes >> _T_705; // @[Monitor.scala 629:44:chipyard.TestHarness.RocketConfig.fir@23770.4]
  assign _T_710 = 16'h10 - 16'h1; // @[Monitor.scala 606:57:chipyard.TestHarness.RocketConfig.fir@23774.4]
  assign _GEN_58 = {{4'd0}, _T_710}; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@23775.4]
  assign _T_711 = _T_706 & _GEN_58; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@23775.4]
  assign _T_712 = {{1'd0}, _T_711[19:1]}; // @[Monitor.scala 629:152:chipyard.TestHarness.RocketConfig.fir@23776.4]
  assign _T_714 = inflight_sizes >> _T_705; // @[Monitor.scala 633:40:chipyard.TestHarness.RocketConfig.fir@23781.4]
  assign _T_719 = _T_714 & _GEN_58; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@23786.4]
  assign _T_720 = {{1'd0}, _T_719[19:1]}; // @[Monitor.scala 633:144:chipyard.TestHarness.RocketConfig.fir@23787.4]
  assign _T_724 = _T_566 & a_first; // @[Monitor.scala 643:27:chipyard.TestHarness.RocketConfig.fir@23812.4]
  assign _T_726 = 8'h1 << io_in_a_bits_source; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@23815.6]
  assign _T_727 = {io_in_a_bits_opcode, 1'h0}; // @[Monitor.scala 645:53:chipyard.TestHarness.RocketConfig.fir@23817.6]
  assign _T_728 = _T_727 | 4'h1; // @[Monitor.scala 645:61:chipyard.TestHarness.RocketConfig.fir@23818.6]
  assign _T_729 = {io_in_a_bits_size, 1'h0}; // @[Monitor.scala 646:49:chipyard.TestHarness.RocketConfig.fir@23820.6]
  assign _T_730 = _T_729 | 4'h1; // @[Monitor.scala 646:57:chipyard.TestHarness.RocketConfig.fir@23821.6]
  assign _GEN_63 = {io_in_a_bits_source, 2'h0}; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@23823.6]
  assign _T_731 = {{1'd0}, _GEN_63}; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@23823.6]
  assign a_opcodes_set_interm = _T_724 ? _T_728 : 4'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@23814.4]
  assign _GEN_64 = {{63'd0}, a_opcodes_set_interm}; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@23824.6]
  assign _T_732 = _GEN_64 << _T_731; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@23824.6]
  assign a_sizes_set_interm = _T_724 ? _T_730 : 4'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@23814.4]
  assign _GEN_66 = {{63'd0}, a_sizes_set_interm}; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@23827.6]
  assign _T_734 = _GEN_66 << _T_731; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@23827.6]
  assign _T_735 = inflight >> io_in_a_bits_source; // @[Monitor.scala 649:26:chipyard.TestHarness.RocketConfig.fir@23829.6]
  assign _T_737 = ~_T_735[0]; // @[Monitor.scala 649:17:chipyard.TestHarness.RocketConfig.fir@23831.6]
  assign _T_739 = _T_737 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23833.6]
  assign _T_740 = ~_T_739; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23834.6]
  assign _GEN_15 = _T_724 ? _T_726 : 8'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@23814.4]
  assign _GEN_18 = _T_724 ? _T_732 : 67'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@23814.4]
  assign _GEN_19 = _T_724 ? _T_734 : 67'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@23814.4]
  assign _T_743 = _T_615 & d_first; // @[Monitor.scala 660:27:chipyard.TestHarness.RocketConfig.fir@23848.4]
  assign _T_745 = ~_T_422; // @[Monitor.scala 660:75:chipyard.TestHarness.RocketConfig.fir@23850.4]
  assign _T_746 = _T_743 & _T_745; // @[Monitor.scala 660:72:chipyard.TestHarness.RocketConfig.fir@23851.4]
  assign _T_747 = 8'h1 << io_in_d_bits_source; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@23853.6]
  assign _GEN_68 = {{63'd0}, _T_710}; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@23860.6]
  assign _T_753 = _GEN_68 << _T_705; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@23860.6]
  assign _GEN_20 = _T_746 ? _T_747 : 8'h0; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@23852.4]
  assign _GEN_21 = _T_746 ? _T_753 : 79'h0; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@23852.4]
  assign _T_760 = io_in_d_valid & d_first; // @[Monitor.scala 665:26:chipyard.TestHarness.RocketConfig.fir@23870.4]
  assign _T_763 = _T_760 & _T_745; // @[Monitor.scala 665:71:chipyard.TestHarness.RocketConfig.fir@23873.4]
  assign _T_764 = inflight >> io_in_d_bits_source; // @[Monitor.scala 666:25:chipyard.TestHarness.RocketConfig.fir@23875.6]
  assign _T_766 = io_in_a_bits_source == io_in_d_bits_source; // @[Monitor.scala 666:93:chipyard.TestHarness.RocketConfig.fir@23877.6]
  assign _T_767 = io_in_a_valid & _T_766; // @[Monitor.scala 666:68:chipyard.TestHarness.RocketConfig.fir@23878.6]
  assign _T_768 = io_in_a_bits_size == io_in_d_bits_size; // @[Monitor.scala 666:142:chipyard.TestHarness.RocketConfig.fir@23879.6]
  assign _T_769 = _T_767 & _T_768; // @[Monitor.scala 666:119:chipyard.TestHarness.RocketConfig.fir@23880.6]
  assign _T_770 = _T_769 & a_first; // @[Monitor.scala 666:166:chipyard.TestHarness.RocketConfig.fir@23881.6]
  assign _T_771 = _T_764[0] | _T_770; // @[Monitor.scala 666:49:chipyard.TestHarness.RocketConfig.fir@23882.6]
  assign _T_773 = _T_771 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23884.6]
  assign _T_774 = ~_T_773; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23885.6]
  assign a_opcode_lookup = _T_712[3:0]; // @[:chipyard.TestHarness.RocketConfig.fir@23767.4 :chipyard.TestHarness.RocketConfig.fir@23768.4 Monitor.scala 629:21:chipyard.TestHarness.RocketConfig.fir@23777.4]
  assign _GEN_25 = 3'h2 == a_opcode_lookup[2:0] ? 3'h1 : 3'h0; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@23891.6]
  assign _GEN_26 = 3'h3 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_25; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@23891.6]
  assign _GEN_27 = 3'h4 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_26; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@23891.6]
  assign _GEN_28 = 3'h5 == a_opcode_lookup[2:0] ? 3'h2 : _GEN_27; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@23891.6]
  assign _GEN_29 = 3'h6 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_28; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@23891.6]
  assign _GEN_30 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_29; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@23891.6]
  assign _T_776 = io_in_d_bits_opcode == _GEN_30; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@23891.6]
  assign _GEN_37 = 3'h6 == a_opcode_lookup[2:0] ? 3'h5 : _GEN_28; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@23893.6]
  assign _GEN_38 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_37; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@23893.6]
  assign _T_778 = io_in_d_bits_opcode == _GEN_38; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@23893.6]
  assign _T_779 = _T_776 | _T_778; // @[Monitor.scala 667:71:chipyard.TestHarness.RocketConfig.fir@23894.6]
  assign _GEN_41 = 3'h2 == io_in_a_bits_opcode ? 3'h1 : 3'h0; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@23895.6]
  assign _GEN_42 = 3'h3 == io_in_a_bits_opcode ? 3'h1 : _GEN_41; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@23895.6]
  assign _GEN_43 = 3'h4 == io_in_a_bits_opcode ? 3'h1 : _GEN_42; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@23895.6]
  assign _GEN_44 = 3'h5 == io_in_a_bits_opcode ? 3'h2 : _GEN_43; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@23895.6]
  assign _GEN_45 = 3'h6 == io_in_a_bits_opcode ? 3'h4 : _GEN_44; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@23895.6]
  assign _GEN_46 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_45; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@23895.6]
  assign _T_780 = io_in_d_bits_opcode == _GEN_46; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@23895.6]
  assign _GEN_53 = 3'h6 == io_in_a_bits_opcode ? 3'h5 : _GEN_44; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@23896.6]
  assign _GEN_54 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_53; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@23896.6]
  assign _T_781 = io_in_d_bits_opcode == _GEN_54; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@23896.6]
  assign _T_782 = _T_780 | _T_781; // @[Monitor.scala 668:99:chipyard.TestHarness.RocketConfig.fir@23897.6]
  assign _T_783 = io_in_a_valid & _T_782; // @[Monitor.scala 668:34:chipyard.TestHarness.RocketConfig.fir@23898.6]
  assign _T_784 = _T_779 | _T_783; // @[Monitor.scala 668:15:chipyard.TestHarness.RocketConfig.fir@23899.6]
  assign _T_786 = _T_784 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23901.6]
  assign _T_787 = ~_T_786; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23902.6]
  assign a_size_lookup = _T_720[3:0]; // @[:chipyard.TestHarness.RocketConfig.fir@23778.4 :chipyard.TestHarness.RocketConfig.fir@23779.4 Monitor.scala 633:19:chipyard.TestHarness.RocketConfig.fir@23788.4]
  assign _GEN_71 = {{1'd0}, io_in_d_bits_size}; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@23907.6]
  assign _T_788 = _GEN_71 == a_size_lookup; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@23907.6]
  assign _T_790 = io_in_a_valid & _T_768; // @[Monitor.scala 670:72:chipyard.TestHarness.RocketConfig.fir@23909.6]
  assign _T_791 = _T_788 | _T_790; // @[Monitor.scala 670:53:chipyard.TestHarness.RocketConfig.fir@23910.6]
  assign _T_793 = _T_791 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23912.6]
  assign _T_794 = ~_T_793; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23913.6]
  assign _T_796 = _T_760 & a_first; // @[Monitor.scala 672:36:chipyard.TestHarness.RocketConfig.fir@23920.4]
  assign _T_797 = _T_796 & io_in_a_valid; // @[Monitor.scala 672:47:chipyard.TestHarness.RocketConfig.fir@23921.4]
  assign _T_799 = _T_797 & _T_766; // @[Monitor.scala 672:65:chipyard.TestHarness.RocketConfig.fir@23923.4]
  assign _T_801 = _T_799 & _T_745; // @[Monitor.scala 672:116:chipyard.TestHarness.RocketConfig.fir@23925.4]
  assign _T_802 = ~io_in_d_ready; // @[Monitor.scala 673:15:chipyard.TestHarness.RocketConfig.fir@23927.6]
  assign _T_803 = _T_802 | io_in_a_ready; // @[Monitor.scala 673:32:chipyard.TestHarness.RocketConfig.fir@23928.6]
  assign _T_805 = _T_803 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23930.6]
  assign _T_806 = ~_T_805; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23931.6]
  assign a_set = _GEN_15[4:0]; // @[:chipyard.TestHarness.RocketConfig.fir@23761.4 :chipyard.TestHarness.RocketConfig.fir@23762.4 Monitor.scala 644:13:chipyard.TestHarness.RocketConfig.fir@23816.6]
  assign d_clr = _GEN_20[4:0]; // @[:chipyard.TestHarness.RocketConfig.fir@23840.4 :chipyard.TestHarness.RocketConfig.fir@23841.4 Monitor.scala 661:13:chipyard.TestHarness.RocketConfig.fir@23854.6]
  assign _T_807 = a_set != d_clr; // @[Monitor.scala 677:20:chipyard.TestHarness.RocketConfig.fir@23937.4]
  assign _T_808 = |a_set; // @[Monitor.scala 677:40:chipyard.TestHarness.RocketConfig.fir@23938.4]
  assign _T_809 = ~_T_808; // @[Monitor.scala 677:33:chipyard.TestHarness.RocketConfig.fir@23939.4]
  assign _T_810 = _T_807 | _T_809; // @[Monitor.scala 677:30:chipyard.TestHarness.RocketConfig.fir@23940.4]
  assign _T_812 = _T_810 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23942.4]
  assign _T_813 = ~_T_812; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23943.4]
  assign _T_814 = inflight | a_set; // @[Monitor.scala 680:27:chipyard.TestHarness.RocketConfig.fir@23948.4]
  assign _T_815 = ~d_clr; // @[Monitor.scala 680:38:chipyard.TestHarness.RocketConfig.fir@23949.4]
  assign _T_816 = _T_814 & _T_815; // @[Monitor.scala 680:36:chipyard.TestHarness.RocketConfig.fir@23950.4]
  assign a_opcodes_set = _GEN_18[19:0]; // @[:chipyard.TestHarness.RocketConfig.fir@23763.4 :chipyard.TestHarness.RocketConfig.fir@23764.4 Monitor.scala 647:21:chipyard.TestHarness.RocketConfig.fir@23825.6]
  assign _T_817 = inflight_opcodes | a_opcodes_set; // @[Monitor.scala 681:43:chipyard.TestHarness.RocketConfig.fir@23952.4]
  assign d_opcodes_clr = _GEN_21[19:0]; // @[:chipyard.TestHarness.RocketConfig.fir@23842.4 :chipyard.TestHarness.RocketConfig.fir@23843.4 Monitor.scala 662:21:chipyard.TestHarness.RocketConfig.fir@23861.6]
  assign _T_818 = ~d_opcodes_clr; // @[Monitor.scala 681:62:chipyard.TestHarness.RocketConfig.fir@23953.4]
  assign _T_819 = _T_817 & _T_818; // @[Monitor.scala 681:60:chipyard.TestHarness.RocketConfig.fir@23954.4]
  assign a_sizes_set = _GEN_19[19:0]; // @[:chipyard.TestHarness.RocketConfig.fir@23765.4 :chipyard.TestHarness.RocketConfig.fir@23766.4 Monitor.scala 648:19:chipyard.TestHarness.RocketConfig.fir@23828.6]
  assign _T_820 = inflight_sizes | a_sizes_set; // @[Monitor.scala 682:39:chipyard.TestHarness.RocketConfig.fir@23956.4]
  assign _T_822 = _T_820 & _T_818; // @[Monitor.scala 682:54:chipyard.TestHarness.RocketConfig.fir@23958.4]
  assign _T_824 = |inflight; // @[Monitor.scala 687:26:chipyard.TestHarness.RocketConfig.fir@23963.4]
  assign _T_825 = ~_T_824; // @[Monitor.scala 687:16:chipyard.TestHarness.RocketConfig.fir@23964.4]
  assign _T_826 = plusarg_reader_out == 32'h0; // @[Monitor.scala 687:39:chipyard.TestHarness.RocketConfig.fir@23965.4]
  assign _T_827 = _T_825 | _T_826; // @[Monitor.scala 687:30:chipyard.TestHarness.RocketConfig.fir@23966.4]
  assign _T_828 = _T_823 < plusarg_reader_out; // @[Monitor.scala 687:59:chipyard.TestHarness.RocketConfig.fir@23967.4]
  assign _T_829 = _T_827 | _T_828; // @[Monitor.scala 687:47:chipyard.TestHarness.RocketConfig.fir@23968.4]
  assign _T_831 = _T_829 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23970.4]
  assign _T_832 = ~_T_831; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23971.4]
  assign _T_834 = _T_823 + 32'h1; // @[Monitor.scala 689:26:chipyard.TestHarness.RocketConfig.fir@23977.4]
  assign _T_837 = _T_566 | _T_615; // @[Monitor.scala 690:27:chipyard.TestHarness.RocketConfig.fir@23981.4]
  assign _GEN_72 = io_in_a_valid & _T_120; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22723.10]
  assign _GEN_88 = io_in_a_valid & _T_172; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22815.10]
  assign _GEN_106 = io_in_a_valid & _T_228; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22918.10]
  assign _GEN_118 = io_in_a_valid & _T_261; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22977.10]
  assign _GEN_128 = io_in_a_valid & _T_290; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23028.10]
  assign _GEN_138 = io_in_a_valid & _T_321; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23081.10]
  assign _GEN_148 = io_in_a_valid & _T_350; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23132.10]
  assign _GEN_158 = io_in_a_valid & _T_379; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23180.10]
  assign _GEN_170 = io_in_d_valid & _T_422; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23252.10]
  assign _GEN_180 = io_in_d_valid & _T_442; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23294.10]
  assign _GEN_194 = io_in_d_valid & _T_470; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23352.10]
  assign _GEN_208 = io_in_d_valid & _T_499; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23411.10]
  assign _GEN_216 = io_in_d_valid & _T_516; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23446.10]
  assign _GEN_224 = io_in_d_valid & _T_534; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23482.10]
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
  _T_575 = _RAND_0[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_586 = _RAND_1[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_587 = _RAND_2[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_588 = _RAND_3[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_589 = _RAND_4[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_590 = _RAND_5[30:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  _T_623 = _RAND_6[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  _T_634 = _RAND_7[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  _T_635 = _RAND_8[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  _T_636 = _RAND_9[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  _T_637 = _RAND_10[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  _T_638 = _RAND_11[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  _T_639 = _RAND_12[0:0];
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
  _RAND_15 = {1{`RANDOM}};
  inflight_sizes = _RAND_15[19:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  _T_677 = _RAND_16[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  _T_695 = _RAND_17[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  _T_823 = _RAND_18[31:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      _T_575 <= 3'h0;
    end else if (_T_566) begin
      if (_T_578) begin
        if (_T_573) begin
          _T_575 <= _T_15[5:3];
        end else begin
          _T_575 <= 3'h0;
        end
      end else begin
        _T_575 <= _T_577;
      end
    end
    if (_T_614) begin
      _T_586 <= io_in_a_bits_opcode;
    end
    if (_T_614) begin
      _T_587 <= io_in_a_bits_param;
    end
    if (_T_614) begin
      _T_588 <= io_in_a_bits_size;
    end
    if (_T_614) begin
      _T_589 <= io_in_a_bits_source;
    end
    if (_T_614) begin
      _T_590 <= io_in_a_bits_address;
    end
    if (reset) begin
      _T_623 <= 3'h0;
    end else if (_T_615) begin
      if (_T_626) begin
        if (io_in_d_bits_opcode[0]) begin
          _T_623 <= _T_619[5:3];
        end else begin
          _T_623 <= 3'h0;
        end
      end else begin
        _T_623 <= _T_625;
      end
    end
    if (_T_667) begin
      _T_634 <= io_in_d_bits_opcode;
    end
    if (_T_667) begin
      _T_635 <= io_in_d_bits_param;
    end
    if (_T_667) begin
      _T_636 <= io_in_d_bits_size;
    end
    if (_T_667) begin
      _T_637 <= io_in_d_bits_source;
    end
    if (_T_667) begin
      _T_638 <= io_in_d_bits_sink;
    end
    if (_T_667) begin
      _T_639 <= io_in_d_bits_denied;
    end
    if (reset) begin
      inflight <= 5'h0;
    end else begin
      inflight <= _T_816;
    end
    if (reset) begin
      inflight_opcodes <= 20'h0;
    end else begin
      inflight_opcodes <= _T_819;
    end
    if (reset) begin
      inflight_sizes <= 20'h0;
    end else begin
      inflight_sizes <= _T_822;
    end
    if (reset) begin
      _T_677 <= 3'h0;
    end else if (_T_566) begin
      if (a_first) begin
        if (_T_573) begin
          _T_677 <= _T_15[5:3];
        end else begin
          _T_677 <= 3'h0;
        end
      end else begin
        _T_677 <= _T_679;
      end
    end
    if (reset) begin
      _T_695 <= 3'h0;
    end else if (_T_615) begin
      if (d_first) begin
        if (io_in_d_bits_opcode[0]) begin
          _T_695 <= _T_619[5:3];
        end else begin
          _T_695 <= 3'h0;
        end
      end else begin
        _T_695 <= _T_697;
      end
    end
    if (reset) begin
      _T_823 <= 32'h0;
    end else if (_T_837) begin
      _T_823 <= 32'h0;
    end else begin
      _T_823 <= _T_834;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_72 & _T_131) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock type unsupported by manager (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22723.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22724.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock from a client which does not support Probe (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22750.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22751.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock carries invalid source ID (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22757.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22758.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock smaller than a beat (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22765.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22766.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock address not aligned to size (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22772.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22773.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock carries invalid grow param (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22780.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22781.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock contains invalid mask (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22789.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22790.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock is corrupt (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22797.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22798.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm type unsupported by manager (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22815.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22816.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm from a client which does not support Probe (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22842.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22843.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm carries invalid source ID (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22849.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22850.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm smaller than a beat (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22857.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22858.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm address not aligned to size (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22864.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22865.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm carries invalid grow param (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22872.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22873.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm requests NtoB (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22880.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22881.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm contains invalid mask (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22889.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22890.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm is corrupt (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22897.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22898.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Get type unsupported by manager (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22918.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22919.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get carries invalid source ID (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22925.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22926.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get address not aligned to size (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22932.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22933.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get carries invalid param (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22940.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22941.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get contains invalid mask (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22948.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22949.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get is corrupt (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22956.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22957.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_118 & _T_242) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutFull type unsupported by manager (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22977.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_118 & _T_242) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22978.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull carries invalid source ID (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22984.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22985.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull address not aligned to size (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22991.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22992.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull carries invalid param (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@22999.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23000.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull contains invalid mask (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23007.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23008.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_128 & _T_242) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutPartial type unsupported by manager (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23028.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_128 & _T_242) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23029.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial carries invalid source ID (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23035.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23036.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial address not aligned to size (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23042.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23043.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial carries invalid param (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23050.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23051.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_128 & _T_320) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial contains invalid mask (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23060.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_128 & _T_320) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23061.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_138 & _T_335) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Arithmetic type unsupported by manager (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23081.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_138 & _T_335) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23082.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic carries invalid source ID (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23088.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23089.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic address not aligned to size (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23095.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23096.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_138 & _T_345) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic carries invalid opcode param (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23103.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_138 & _T_345) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23104.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic contains invalid mask (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23111.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23112.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_148 & _T_335) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Logical type unsupported by manager (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23132.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_148 & _T_335) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23133.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical carries invalid source ID (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23139.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23140.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical address not aligned to size (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23146.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23147.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_148 & _T_374) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical carries invalid opcode param (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23154.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_148 & _T_374) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23155.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical contains invalid mask (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23162.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23163.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Hint type unsupported by manager (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23180.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23181.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint carries invalid source ID (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23187.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23188.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint address not aligned to size (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23194.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23195.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_158 & _T_400) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint carries invalid opcode param (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23202.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_158 & _T_400) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23203.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint contains invalid mask (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23210.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23211.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint is corrupt (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23218.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23219.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_in_d_valid & _T_412) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel has invalid opcode (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23229.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (io_in_d_valid & _T_412) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23230.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_170 & _T_425) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck carries invalid source ID (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23252.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_170 & _T_425) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23253.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_170 & _T_429) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck smaller than a beat (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23260.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_170 & _T_429) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23261.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_170 & _T_433) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseeAck carries invalid param (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23268.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_170 & _T_433) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23269.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_170 & _T_437) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck is corrupt (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23276.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_170 & _T_437) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23277.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_170 & _T_441) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck is denied (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23284.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_170 & _T_441) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23285.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_180 & _T_425) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid source ID (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23294.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_180 & _T_425) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23295.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_180 & _T_131) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid sink ID (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23301.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_180 & _T_131) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23302.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_180 & _T_429) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant smaller than a beat (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23309.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_180 & _T_429) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23310.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_180 & _T_456) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid cap param (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23317.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_180 & _T_456) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23318.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_180 & _T_460) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries toN param (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23325.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_180 & _T_460) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23326.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_180 & _T_437) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant is corrupt (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23333.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_180 & _T_437) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23334.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_180 & _T_441) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant is denied (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23342.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_180 & _T_441) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23343.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_194 & _T_425) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid source ID (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23352.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_194 & _T_425) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23353.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_194 & _T_131) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid sink ID (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23359.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_194 & _T_131) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23360.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_194 & _T_429) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData smaller than a beat (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23367.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_194 & _T_429) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23368.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_194 & _T_456) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid cap param (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23375.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_194 & _T_456) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23376.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_194 & _T_460) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries toN param (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23383.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_194 & _T_460) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23384.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_194 & _T_493) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData is denied but not corrupt (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23392.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_194 & _T_493) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23393.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_194 & _T_441) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData is denied (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23401.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_194 & _T_441) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23402.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_208 & _T_425) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck carries invalid source ID (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23411.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_208 & _T_425) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23412.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_208 & _T_433) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck carries invalid param (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23419.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_208 & _T_433) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23420.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_208 & _T_437) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck is corrupt (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23427.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_208 & _T_437) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23428.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_208 & _T_441) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck is denied (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23436.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_208 & _T_441) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23437.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_216 & _T_425) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData carries invalid source ID (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23446.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_216 & _T_425) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23447.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_216 & _T_433) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData carries invalid param (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23454.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_216 & _T_433) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23455.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_216 & _T_493) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData is denied but not corrupt (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23463.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_216 & _T_493) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23464.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_216 & _T_441) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData is denied (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23472.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_216 & _T_441) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23473.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_224 & _T_425) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck carries invalid source ID (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23482.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_224 & _T_425) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23483.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_224 & _T_433) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck carries invalid param (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23490.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_224 & _T_433) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23491.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_224 & _T_437) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck is corrupt (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23498.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_224 & _T_437) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23499.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_224 & _T_441) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck is denied (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23507.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_224 & _T_441) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23508.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_592 & _T_596) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel opcode changed within multibeat operation (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23578.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_592 & _T_596) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23579.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_592 & _T_600) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel param changed within multibeat operation (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23586.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_592 & _T_600) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23587.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_592 & _T_604) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel size changed within multibeat operation (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23594.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_592 & _T_604) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23595.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_592 & _T_608) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel source changed within multibeat operation (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23602.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_592 & _T_608) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23603.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_592 & _T_612) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel address changed with multibeat operation (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23610.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_592 & _T_612) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23611.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_641 & _T_645) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel opcode changed within multibeat operation (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23659.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_641 & _T_645) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23660.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_641 & _T_649) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel param changed within multibeat operation (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23667.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_641 & _T_649) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23668.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_641 & _T_653) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel size changed within multibeat operation (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23675.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_641 & _T_653) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23676.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_641 & _T_657) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel source changed within multibeat operation (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23683.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_641 & _T_657) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23684.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_641 & _T_661) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel sink changed with multibeat operation (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23691.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_641 & _T_661) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23692.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_641 & _T_665) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel denied changed with multibeat operation (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23699.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_641 & _T_665) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23700.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_724 & _T_740) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel re-used a source ID (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23836.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_724 & _T_740) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23837.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_763 & _T_774) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel acknowledged for nothing inflight (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23887.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_763 & _T_774) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23888.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_763 & _T_787) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper opcode response (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23904.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_763 & _T_787) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23905.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_763 & _T_794) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper response size (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23915.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_763 & _T_794) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23916.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_801 & _T_806) begin
          $fwrite(32'h80000002,"Assertion failed: ready check\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23933.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_801 & _T_806) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23934.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' and 'D' concurrent, despite minlatency 2 (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23945.6]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@23946.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_832) begin
          $fwrite(32'h80000002,"Assertion failed: TileLink timeout expired (connected at CrossingHelper.scala:17:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23973.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_832) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@23974.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
