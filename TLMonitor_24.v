module TLMonitor_24( // @[:chipyard.TestHarness.RocketConfig.fir@53078.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@53079.4]
  input         reset, // @[:chipyard.TestHarness.RocketConfig.fir@53080.4]
  input         io_in_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@53081.4]
  input         io_in_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@53081.4]
  input  [2:0]  io_in_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@53081.4]
  input  [2:0]  io_in_a_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@53081.4]
  input  [3:0]  io_in_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@53081.4]
  input  [2:0]  io_in_a_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@53081.4]
  input  [13:0] io_in_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@53081.4]
  input  [7:0]  io_in_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@53081.4]
  input         io_in_a_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@53081.4]
  input         io_in_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@53081.4]
  input         io_in_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@53081.4]
  input  [2:0]  io_in_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@53081.4]
  input  [3:0]  io_in_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@53081.4]
  input  [2:0]  io_in_d_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@53081.4]
  input         io_in_d_bits_corrupt // @[:chipyard.TestHarness.RocketConfig.fir@53081.4]
);
  wire [31:0] plusarg_reader_out; // @[PlusArg.scala 44:11:chipyard.TestHarness.RocketConfig.fir@54472.4]
  wire  _T_4; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@53092.6]
  wire  _T_5; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@53093.6]
  wire  _T_6; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@53094.6]
  wire  _T_7; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@53095.6]
  wire  _T_9; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@53102.6]
  wire  _T_10; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@53103.6]
  wire  _T_11; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@53104.6]
  wire [26:0] _T_13; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@53106.6]
  wire [11:0] _T_15; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@53108.6]
  wire [13:0] _GEN_56; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@53109.6]
  wire [13:0] _T_16; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@53109.6]
  wire  _T_17; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@53110.6]
  wire [3:0] _T_20; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@53113.6]
  wire [2:0] _T_22; // @[Misc.scala 201:81:chipyard.TestHarness.RocketConfig.fir@53115.6]
  wire  _T_23; // @[Misc.scala 205:21:chipyard.TestHarness.RocketConfig.fir@53116.6]
  wire  _T_26; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@53119.6]
  wire  _T_28; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@53121.6]
  wire  _T_29; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@53122.6]
  wire  _T_31; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@53124.6]
  wire  _T_32; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@53125.6]
  wire  _T_35; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@53128.6]
  wire  _T_36; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@53129.6]
  wire  _T_37; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@53130.6]
  wire  _T_38; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@53131.6]
  wire  _T_39; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@53132.6]
  wire  _T_40; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@53133.6]
  wire  _T_41; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@53134.6]
  wire  _T_42; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@53135.6]
  wire  _T_43; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@53136.6]
  wire  _T_44; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@53137.6]
  wire  _T_45; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@53138.6]
  wire  _T_46; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@53139.6]
  wire  _T_47; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@53140.6]
  wire  _T_50; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@53143.6]
  wire  _T_51; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@53144.6]
  wire  _T_52; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@53145.6]
  wire  _T_53; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@53146.6]
  wire  _T_54; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@53147.6]
  wire  _T_55; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@53148.6]
  wire  _T_56; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@53149.6]
  wire  _T_57; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@53150.6]
  wire  _T_58; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@53151.6]
  wire  _T_59; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@53152.6]
  wire  _T_60; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@53153.6]
  wire  _T_61; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@53154.6]
  wire  _T_62; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@53155.6]
  wire  _T_63; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@53156.6]
  wire  _T_64; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@53157.6]
  wire  _T_65; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@53158.6]
  wire  _T_66; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@53159.6]
  wire  _T_67; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@53160.6]
  wire  _T_68; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@53161.6]
  wire  _T_69; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@53162.6]
  wire  _T_70; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@53163.6]
  wire  _T_71; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@53164.6]
  wire  _T_72; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@53165.6]
  wire  _T_73; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@53166.6]
  wire  _T_74; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@53167.6]
  wire [7:0] _T_81; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@53174.6]
  wire  _T_120; // @[Monitor.scala 79:25:chipyard.TestHarness.RocketConfig.fir@53217.6]
  wire [13:0] _T_122; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@53220.8]
  wire [14:0] _T_123; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@53221.8]
  wire [14:0] _T_125; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@53223.8]
  wire  _T_126; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@53224.8]
  wire  _T_131; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53229.8]
  wire  _T_137; // @[Parameters.scala 92:48:chipyard.TestHarness.RocketConfig.fir@53244.8]
  wire  _T_139; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@53246.8]
  wire  _T_147; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53255.8]
  wire  _T_148; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53256.8]
  wire  _T_150; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53262.8]
  wire  _T_151; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53263.8]
  wire  _T_154; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53270.8]
  wire  _T_155; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53271.8]
  wire  _T_157; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53277.8]
  wire  _T_158; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53278.8]
  wire  _T_159; // @[Bundles.scala 110:27:chipyard.TestHarness.RocketConfig.fir@53283.8]
  wire  _T_161; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53285.8]
  wire  _T_162; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53286.8]
  wire [7:0] _T_163; // @[Monitor.scala 86:18:chipyard.TestHarness.RocketConfig.fir@53291.8]
  wire  _T_164; // @[Monitor.scala 86:31:chipyard.TestHarness.RocketConfig.fir@53292.8]
  wire  _T_166; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53294.8]
  wire  _T_167; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53295.8]
  wire  _T_168; // @[Monitor.scala 87:18:chipyard.TestHarness.RocketConfig.fir@53300.8]
  wire  _T_170; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53302.8]
  wire  _T_171; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53303.8]
  wire  _T_172; // @[Monitor.scala 90:25:chipyard.TestHarness.RocketConfig.fir@53309.6]
  wire  _T_215; // @[Monitor.scala 97:31:chipyard.TestHarness.RocketConfig.fir@53383.8]
  wire  _T_217; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53385.8]
  wire  _T_218; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53386.8]
  wire  _T_228; // @[Monitor.scala 102:25:chipyard.TestHarness.RocketConfig.fir@53409.6]
  wire  _T_230; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@53412.8]
  wire  _T_238; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@53420.8]
  wire  _T_241; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53423.8]
  wire  _T_242; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53424.8]
  wire  _T_249; // @[Monitor.scala 106:31:chipyard.TestHarness.RocketConfig.fir@53443.8]
  wire  _T_251; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53445.8]
  wire  _T_252; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53446.8]
  wire  _T_253; // @[Monitor.scala 107:30:chipyard.TestHarness.RocketConfig.fir@53451.8]
  wire  _T_255; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53453.8]
  wire  _T_256; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53454.8]
  wire  _T_261; // @[Monitor.scala 111:25:chipyard.TestHarness.RocketConfig.fir@53468.6]
  wire  _T_290; // @[Monitor.scala 119:25:chipyard.TestHarness.RocketConfig.fir@53519.6]
  wire [7:0] _T_315; // @[Monitor.scala 124:33:chipyard.TestHarness.RocketConfig.fir@53561.8]
  wire [7:0] _T_316; // @[Monitor.scala 124:31:chipyard.TestHarness.RocketConfig.fir@53562.8]
  wire  _T_317; // @[Monitor.scala 124:40:chipyard.TestHarness.RocketConfig.fir@53563.8]
  wire  _T_319; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53565.8]
  wire  _T_320; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53566.8]
  wire  _T_321; // @[Monitor.scala 127:25:chipyard.TestHarness.RocketConfig.fir@53572.6]
  wire  _T_323; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@53575.8]
  wire  _T_331; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@53583.8]
  wire  _T_334; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53586.8]
  wire  _T_335; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53587.8]
  wire  _T_342; // @[Bundles.scala 140:33:chipyard.TestHarness.RocketConfig.fir@53606.8]
  wire  _T_344; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53608.8]
  wire  _T_345; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53609.8]
  wire  _T_350; // @[Monitor.scala 135:25:chipyard.TestHarness.RocketConfig.fir@53623.6]
  wire  _T_371; // @[Bundles.scala 147:30:chipyard.TestHarness.RocketConfig.fir@53657.8]
  wire  _T_373; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53659.8]
  wire  _T_374; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53660.8]
  wire  _T_379; // @[Monitor.scala 143:25:chipyard.TestHarness.RocketConfig.fir@53674.6]
  wire  _T_400; // @[Bundles.scala 160:28:chipyard.TestHarness.RocketConfig.fir@53708.8]
  wire  _T_402; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53710.8]
  wire  _T_403; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53711.8]
  wire  _T_412; // @[Bundles.scala 44:24:chipyard.TestHarness.RocketConfig.fir@53735.6]
  wire  _T_414; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@53737.6]
  wire  _T_415; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@53738.6]
  wire  _T_416; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@53743.6]
  wire  _T_417; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@53744.6]
  wire  _T_418; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@53745.6]
  wire  _T_419; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@53746.6]
  wire  _T_421; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@53753.6]
  wire  _T_422; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@53754.6]
  wire  _T_423; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@53755.6]
  wire  _T_425; // @[Monitor.scala 307:25:chipyard.TestHarness.RocketConfig.fir@53757.6]
  wire  _T_427; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@53760.8]
  wire  _T_428; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@53761.8]
  wire  _T_429; // @[Monitor.scala 309:27:chipyard.TestHarness.RocketConfig.fir@53766.8]
  wire  _T_431; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@53768.8]
  wire  _T_432; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@53769.8]
  wire  _T_437; // @[Monitor.scala 311:15:chipyard.TestHarness.RocketConfig.fir@53782.8]
  wire  _T_439; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@53784.8]
  wire  _T_440; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@53785.8]
  wire  _T_445; // @[Monitor.scala 315:25:chipyard.TestHarness.RocketConfig.fir@53799.6]
  wire  _T_473; // @[Monitor.scala 325:25:chipyard.TestHarness.RocketConfig.fir@53857.6]
  wire  _T_495; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@53900.8]
  wire  _T_496; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@53901.8]
  wire  _T_502; // @[Monitor.scala 335:25:chipyard.TestHarness.RocketConfig.fir@53916.6]
  wire  _T_519; // @[Monitor.scala 343:25:chipyard.TestHarness.RocketConfig.fir@53951.6]
  wire  _T_537; // @[Monitor.scala 351:25:chipyard.TestHarness.RocketConfig.fir@53987.6]
  wire  _T_569; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@54053.4]
  wire  _T_576; // @[Edges.scala 93:28:chipyard.TestHarness.RocketConfig.fir@54060.4]
  reg [8:0] _T_578; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@54062.4]
  reg [31:0] _RAND_0;
  wire [8:0] _T_580; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@54064.4]
  wire  _T_581; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@54065.4]
  reg [2:0] _T_589; // @[Monitor.scala 381:22:chipyard.TestHarness.RocketConfig.fir@54076.4]
  reg [31:0] _RAND_1;
  reg [2:0] _T_590; // @[Monitor.scala 382:22:chipyard.TestHarness.RocketConfig.fir@54077.4]
  reg [31:0] _RAND_2;
  reg [3:0] _T_591; // @[Monitor.scala 383:22:chipyard.TestHarness.RocketConfig.fir@54078.4]
  reg [31:0] _RAND_3;
  reg [2:0] _T_592; // @[Monitor.scala 384:22:chipyard.TestHarness.RocketConfig.fir@54079.4]
  reg [31:0] _RAND_4;
  reg [13:0] _T_593; // @[Monitor.scala 385:22:chipyard.TestHarness.RocketConfig.fir@54080.4]
  reg [31:0] _RAND_5;
  wire  _T_594; // @[Monitor.scala 386:22:chipyard.TestHarness.RocketConfig.fir@54081.4]
  wire  _T_595; // @[Monitor.scala 386:19:chipyard.TestHarness.RocketConfig.fir@54082.4]
  wire  _T_596; // @[Monitor.scala 387:32:chipyard.TestHarness.RocketConfig.fir@54084.6]
  wire  _T_598; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@54086.6]
  wire  _T_599; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@54087.6]
  wire  _T_600; // @[Monitor.scala 388:32:chipyard.TestHarness.RocketConfig.fir@54092.6]
  wire  _T_602; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@54094.6]
  wire  _T_603; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@54095.6]
  wire  _T_604; // @[Monitor.scala 389:32:chipyard.TestHarness.RocketConfig.fir@54100.6]
  wire  _T_606; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@54102.6]
  wire  _T_607; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@54103.6]
  wire  _T_608; // @[Monitor.scala 390:32:chipyard.TestHarness.RocketConfig.fir@54108.6]
  wire  _T_610; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@54110.6]
  wire  _T_611; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@54111.6]
  wire  _T_612; // @[Monitor.scala 391:32:chipyard.TestHarness.RocketConfig.fir@54116.6]
  wire  _T_614; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@54118.6]
  wire  _T_615; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@54119.6]
  wire  _T_617; // @[Monitor.scala 393:20:chipyard.TestHarness.RocketConfig.fir@54126.4]
  wire  _T_618; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@54134.4]
  wire [26:0] _T_620; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@54136.4]
  wire [11:0] _T_622; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@54138.4]
  reg [8:0] _T_626; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@54142.4]
  reg [31:0] _RAND_6;
  wire [8:0] _T_628; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@54144.4]
  wire  _T_629; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@54145.4]
  reg [2:0] _T_637; // @[Monitor.scala 532:22:chipyard.TestHarness.RocketConfig.fir@54156.4]
  reg [31:0] _RAND_7;
  reg [3:0] _T_639; // @[Monitor.scala 534:22:chipyard.TestHarness.RocketConfig.fir@54158.4]
  reg [31:0] _RAND_8;
  reg [2:0] _T_640; // @[Monitor.scala 535:22:chipyard.TestHarness.RocketConfig.fir@54159.4]
  reg [31:0] _RAND_9;
  wire  _T_643; // @[Monitor.scala 538:22:chipyard.TestHarness.RocketConfig.fir@54162.4]
  wire  _T_644; // @[Monitor.scala 538:19:chipyard.TestHarness.RocketConfig.fir@54163.4]
  wire  _T_645; // @[Monitor.scala 539:29:chipyard.TestHarness.RocketConfig.fir@54165.6]
  wire  _T_647; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@54167.6]
  wire  _T_648; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@54168.6]
  wire  _T_653; // @[Monitor.scala 541:29:chipyard.TestHarness.RocketConfig.fir@54181.6]
  wire  _T_655; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@54183.6]
  wire  _T_656; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@54184.6]
  wire  _T_657; // @[Monitor.scala 542:29:chipyard.TestHarness.RocketConfig.fir@54189.6]
  wire  _T_659; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@54191.6]
  wire  _T_660; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@54192.6]
  wire  _T_670; // @[Monitor.scala 546:20:chipyard.TestHarness.RocketConfig.fir@54215.4]
  reg [4:0] inflight; // @[Monitor.scala 608:27:chipyard.TestHarness.RocketConfig.fir@54224.4]
  reg [31:0] _RAND_10;
  reg [19:0] inflight_opcodes; // @[Monitor.scala 610:35:chipyard.TestHarness.RocketConfig.fir@54225.4]
  reg [31:0] _RAND_11;
  reg [39:0] inflight_sizes; // @[Monitor.scala 612:33:chipyard.TestHarness.RocketConfig.fir@54226.4]
  reg [63:0] _RAND_12;
  reg [8:0] _T_680; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@54236.4]
  reg [31:0] _RAND_13;
  wire [8:0] _T_682; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@54238.4]
  wire  a_first; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@54239.4]
  reg [8:0] _T_698; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@54258.4]
  reg [31:0] _RAND_14;
  wire [8:0] _T_700; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@54260.4]
  wire  d_first; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@54261.4]
  wire [4:0] _GEN_57; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@54280.4]
  wire [5:0] _T_708; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@54280.4]
  wire [19:0] _T_709; // @[Monitor.scala 629:44:chipyard.TestHarness.RocketConfig.fir@54281.4]
  wire [15:0] _T_713; // @[Monitor.scala 606:57:chipyard.TestHarness.RocketConfig.fir@54285.4]
  wire [19:0] _GEN_58; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@54286.4]
  wire [19:0] _T_714; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@54286.4]
  wire [19:0] _T_715; // @[Monitor.scala 629:152:chipyard.TestHarness.RocketConfig.fir@54287.4]
  wire [5:0] _T_716; // @[Monitor.scala 633:65:chipyard.TestHarness.RocketConfig.fir@54291.4]
  wire [39:0] _T_717; // @[Monitor.scala 633:40:chipyard.TestHarness.RocketConfig.fir@54292.4]
  wire [15:0] _T_721; // @[Monitor.scala 606:57:chipyard.TestHarness.RocketConfig.fir@54296.4]
  wire [39:0] _GEN_60; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@54297.4]
  wire [39:0] _T_722; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@54297.4]
  wire [39:0] _T_723; // @[Monitor.scala 633:144:chipyard.TestHarness.RocketConfig.fir@54298.4]
  wire  _T_727; // @[Monitor.scala 643:27:chipyard.TestHarness.RocketConfig.fir@54323.4]
  wire [7:0] _T_729; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@54326.6]
  wire [3:0] _T_730; // @[Monitor.scala 645:53:chipyard.TestHarness.RocketConfig.fir@54328.6]
  wire [3:0] _T_731; // @[Monitor.scala 645:61:chipyard.TestHarness.RocketConfig.fir@54329.6]
  wire [4:0] _T_732; // @[Monitor.scala 646:49:chipyard.TestHarness.RocketConfig.fir@54331.6]
  wire [4:0] _T_733; // @[Monitor.scala 646:57:chipyard.TestHarness.RocketConfig.fir@54332.6]
  wire [4:0] _GEN_62; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@54334.6]
  wire [5:0] _T_734; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@54334.6]
  wire [3:0] a_opcodes_set_interm; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@54325.4]
  wire [66:0] _GEN_63; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@54335.6]
  wire [66:0] _T_735; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@54335.6]
  wire [5:0] _T_736; // @[Monitor.scala 648:68:chipyard.TestHarness.RocketConfig.fir@54337.6]
  wire [4:0] a_sizes_set_interm; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@54325.4]
  wire [67:0] _GEN_64; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@54338.6]
  wire [67:0] _T_737; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@54338.6]
  wire [4:0] _T_738; // @[Monitor.scala 649:26:chipyard.TestHarness.RocketConfig.fir@54340.6]
  wire  _T_740; // @[Monitor.scala 649:17:chipyard.TestHarness.RocketConfig.fir@54342.6]
  wire  _T_742; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@54344.6]
  wire  _T_743; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@54345.6]
  wire [7:0] _GEN_15; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@54325.4]
  wire [66:0] _GEN_18; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@54325.4]
  wire [67:0] _GEN_19; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@54325.4]
  wire  _T_746; // @[Monitor.scala 660:27:chipyard.TestHarness.RocketConfig.fir@54359.4]
  wire  _T_748; // @[Monitor.scala 660:75:chipyard.TestHarness.RocketConfig.fir@54361.4]
  wire  _T_749; // @[Monitor.scala 660:72:chipyard.TestHarness.RocketConfig.fir@54362.4]
  wire [7:0] _T_750; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@54364.6]
  wire [78:0] _GEN_66; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@54371.6]
  wire [78:0] _T_756; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@54371.6]
  wire [78:0] _GEN_67; // @[Monitor.scala 663:72:chipyard.TestHarness.RocketConfig.fir@54378.6]
  wire [78:0] _T_762; // @[Monitor.scala 663:72:chipyard.TestHarness.RocketConfig.fir@54378.6]
  wire [7:0] _GEN_20; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@54363.4]
  wire [78:0] _GEN_21; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@54363.4]
  wire [78:0] _GEN_22; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@54363.4]
  wire  _T_763; // @[Monitor.scala 665:26:chipyard.TestHarness.RocketConfig.fir@54381.4]
  wire  _T_766; // @[Monitor.scala 665:71:chipyard.TestHarness.RocketConfig.fir@54384.4]
  wire [4:0] _T_767; // @[Monitor.scala 666:25:chipyard.TestHarness.RocketConfig.fir@54386.6]
  wire  _T_769; // @[Monitor.scala 666:93:chipyard.TestHarness.RocketConfig.fir@54388.6]
  wire  _T_770; // @[Monitor.scala 666:68:chipyard.TestHarness.RocketConfig.fir@54389.6]
  wire  _T_771; // @[Monitor.scala 666:142:chipyard.TestHarness.RocketConfig.fir@54390.6]
  wire  _T_772; // @[Monitor.scala 666:119:chipyard.TestHarness.RocketConfig.fir@54391.6]
  wire  _T_773; // @[Monitor.scala 666:166:chipyard.TestHarness.RocketConfig.fir@54392.6]
  wire  _T_774; // @[Monitor.scala 666:49:chipyard.TestHarness.RocketConfig.fir@54393.6]
  wire  _T_776; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@54395.6]
  wire  _T_777; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@54396.6]
  wire [3:0] a_opcode_lookup; // @[:chipyard.TestHarness.RocketConfig.fir@54278.4 :chipyard.TestHarness.RocketConfig.fir@54279.4 Monitor.scala 629:21:chipyard.TestHarness.RocketConfig.fir@54288.4]
  wire [2:0] _GEN_25; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@54402.6]
  wire [2:0] _GEN_26; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@54402.6]
  wire [2:0] _GEN_27; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@54402.6]
  wire [2:0] _GEN_28; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@54402.6]
  wire [2:0] _GEN_29; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@54402.6]
  wire [2:0] _GEN_30; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@54402.6]
  wire  _T_779; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@54402.6]
  wire [2:0] _GEN_37; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@54404.6]
  wire [2:0] _GEN_38; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@54404.6]
  wire  _T_781; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@54404.6]
  wire  _T_782; // @[Monitor.scala 667:71:chipyard.TestHarness.RocketConfig.fir@54405.6]
  wire [2:0] _GEN_41; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@54406.6]
  wire [2:0] _GEN_42; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@54406.6]
  wire [2:0] _GEN_43; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@54406.6]
  wire [2:0] _GEN_44; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@54406.6]
  wire [2:0] _GEN_45; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@54406.6]
  wire [2:0] _GEN_46; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@54406.6]
  wire  _T_783; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@54406.6]
  wire [2:0] _GEN_53; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@54407.6]
  wire [2:0] _GEN_54; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@54407.6]
  wire  _T_784; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@54407.6]
  wire  _T_785; // @[Monitor.scala 668:99:chipyard.TestHarness.RocketConfig.fir@54408.6]
  wire  _T_786; // @[Monitor.scala 668:34:chipyard.TestHarness.RocketConfig.fir@54409.6]
  wire  _T_787; // @[Monitor.scala 668:15:chipyard.TestHarness.RocketConfig.fir@54410.6]
  wire  _T_789; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@54412.6]
  wire  _T_790; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@54413.6]
  wire [7:0] a_size_lookup; // @[:chipyard.TestHarness.RocketConfig.fir@54289.4 :chipyard.TestHarness.RocketConfig.fir@54290.4 Monitor.scala 633:19:chipyard.TestHarness.RocketConfig.fir@54299.4]
  wire [7:0] _GEN_68; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@54418.6]
  wire  _T_791; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@54418.6]
  wire  _T_793; // @[Monitor.scala 670:72:chipyard.TestHarness.RocketConfig.fir@54420.6]
  wire  _T_794; // @[Monitor.scala 670:53:chipyard.TestHarness.RocketConfig.fir@54421.6]
  wire  _T_796; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@54423.6]
  wire  _T_797; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@54424.6]
  wire  _T_799; // @[Monitor.scala 672:36:chipyard.TestHarness.RocketConfig.fir@54431.4]
  wire  _T_800; // @[Monitor.scala 672:47:chipyard.TestHarness.RocketConfig.fir@54432.4]
  wire  _T_802; // @[Monitor.scala 672:65:chipyard.TestHarness.RocketConfig.fir@54434.4]
  wire  _T_804; // @[Monitor.scala 672:116:chipyard.TestHarness.RocketConfig.fir@54436.4]
  wire  _T_805; // @[Monitor.scala 673:15:chipyard.TestHarness.RocketConfig.fir@54438.6]
  wire  _T_806; // @[Monitor.scala 673:32:chipyard.TestHarness.RocketConfig.fir@54439.6]
  wire  _T_808; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@54441.6]
  wire  _T_809; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@54442.6]
  wire [4:0] a_set; // @[:chipyard.TestHarness.RocketConfig.fir@54272.4 :chipyard.TestHarness.RocketConfig.fir@54273.4 Monitor.scala 644:13:chipyard.TestHarness.RocketConfig.fir@54327.6]
  wire [4:0] d_clr; // @[:chipyard.TestHarness.RocketConfig.fir@54351.4 :chipyard.TestHarness.RocketConfig.fir@54352.4 Monitor.scala 661:13:chipyard.TestHarness.RocketConfig.fir@54365.6]
  wire  _T_810; // @[Monitor.scala 677:20:chipyard.TestHarness.RocketConfig.fir@54448.4]
  wire  _T_811; // @[Monitor.scala 677:40:chipyard.TestHarness.RocketConfig.fir@54449.4]
  wire  _T_812; // @[Monitor.scala 677:33:chipyard.TestHarness.RocketConfig.fir@54450.4]
  wire  _T_813; // @[Monitor.scala 677:30:chipyard.TestHarness.RocketConfig.fir@54451.4]
  wire  _T_815; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@54453.4]
  wire  _T_816; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@54454.4]
  wire [4:0] _T_817; // @[Monitor.scala 680:27:chipyard.TestHarness.RocketConfig.fir@54459.4]
  wire [4:0] _T_818; // @[Monitor.scala 680:38:chipyard.TestHarness.RocketConfig.fir@54460.4]
  wire [4:0] _T_819; // @[Monitor.scala 680:36:chipyard.TestHarness.RocketConfig.fir@54461.4]
  wire [19:0] a_opcodes_set; // @[:chipyard.TestHarness.RocketConfig.fir@54274.4 :chipyard.TestHarness.RocketConfig.fir@54275.4 Monitor.scala 647:21:chipyard.TestHarness.RocketConfig.fir@54336.6]
  wire [19:0] _T_820; // @[Monitor.scala 681:43:chipyard.TestHarness.RocketConfig.fir@54463.4]
  wire [19:0] d_opcodes_clr; // @[:chipyard.TestHarness.RocketConfig.fir@54353.4 :chipyard.TestHarness.RocketConfig.fir@54354.4 Monitor.scala 662:21:chipyard.TestHarness.RocketConfig.fir@54372.6]
  wire [19:0] _T_821; // @[Monitor.scala 681:62:chipyard.TestHarness.RocketConfig.fir@54464.4]
  wire [19:0] _T_822; // @[Monitor.scala 681:60:chipyard.TestHarness.RocketConfig.fir@54465.4]
  wire [39:0] a_sizes_set; // @[:chipyard.TestHarness.RocketConfig.fir@54276.4 :chipyard.TestHarness.RocketConfig.fir@54277.4 Monitor.scala 648:19:chipyard.TestHarness.RocketConfig.fir@54339.6]
  wire [39:0] _T_823; // @[Monitor.scala 682:39:chipyard.TestHarness.RocketConfig.fir@54467.4]
  wire [39:0] d_sizes_clr; // @[:chipyard.TestHarness.RocketConfig.fir@54355.4 :chipyard.TestHarness.RocketConfig.fir@54356.4 Monitor.scala 663:19:chipyard.TestHarness.RocketConfig.fir@54379.6]
  wire [39:0] _T_824; // @[Monitor.scala 682:56:chipyard.TestHarness.RocketConfig.fir@54468.4]
  wire [39:0] _T_825; // @[Monitor.scala 682:54:chipyard.TestHarness.RocketConfig.fir@54469.4]
  reg [31:0] _T_826; // @[Monitor.scala 684:27:chipyard.TestHarness.RocketConfig.fir@54471.4]
  reg [31:0] _RAND_15;
  wire  _T_827; // @[Monitor.scala 687:26:chipyard.TestHarness.RocketConfig.fir@54474.4]
  wire  _T_828; // @[Monitor.scala 687:16:chipyard.TestHarness.RocketConfig.fir@54475.4]
  wire  _T_829; // @[Monitor.scala 687:39:chipyard.TestHarness.RocketConfig.fir@54476.4]
  wire  _T_830; // @[Monitor.scala 687:30:chipyard.TestHarness.RocketConfig.fir@54477.4]
  wire  _T_831; // @[Monitor.scala 687:59:chipyard.TestHarness.RocketConfig.fir@54478.4]
  wire  _T_832; // @[Monitor.scala 687:47:chipyard.TestHarness.RocketConfig.fir@54479.4]
  wire  _T_834; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@54481.4]
  wire  _T_835; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@54482.4]
  wire [31:0] _T_837; // @[Monitor.scala 689:26:chipyard.TestHarness.RocketConfig.fir@54488.4]
  wire  _T_840; // @[Monitor.scala 690:27:chipyard.TestHarness.RocketConfig.fir@54492.4]
  wire  _GEN_69; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53231.10]
  wire  _GEN_85; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53323.10]
  wire  _GEN_103; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53426.10]
  wire  _GEN_115; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53485.10]
  wire  _GEN_125; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53536.10]
  wire  _GEN_135; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53589.10]
  wire  _GEN_145; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53640.10]
  wire  _GEN_155; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53691.10]
  wire  _GEN_167; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@53763.10]
  wire  _GEN_175; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@53805.10]
  wire  _GEN_183; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@53863.10]
  wire  _GEN_191; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@53922.10]
  wire  _GEN_195; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@53957.10]
  wire  _GEN_199; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@53993.10]
  plusarg_reader #(.FORMAT("tilelink_timeout=%d"), .DEFAULT(0), .WIDTH(32)) plusarg_reader ( // @[PlusArg.scala 44:11:chipyard.TestHarness.RocketConfig.fir@54472.4]
    .out(plusarg_reader_out)
  );
  assign _T_4 = io_in_a_bits_source == 3'h4; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@53092.6]
  assign _T_5 = io_in_a_bits_source == 3'h0; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@53093.6]
  assign _T_6 = io_in_a_bits_source == 3'h1; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@53094.6]
  assign _T_7 = io_in_a_bits_source == 3'h2; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@53095.6]
  assign _T_9 = _T_4 | _T_5; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@53102.6]
  assign _T_10 = _T_9 | _T_6; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@53103.6]
  assign _T_11 = _T_10 | _T_7; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@53104.6]
  assign _T_13 = 27'hfff << io_in_a_bits_size; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@53106.6]
  assign _T_15 = ~_T_13[11:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@53108.6]
  assign _GEN_56 = {{2'd0}, _T_15}; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@53109.6]
  assign _T_16 = io_in_a_bits_address & _GEN_56; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@53109.6]
  assign _T_17 = _T_16 == 14'h0; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@53110.6]
  assign _T_20 = 4'h1 << io_in_a_bits_size[1:0]; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@53113.6]
  assign _T_22 = _T_20[2:0] | 3'h1; // @[Misc.scala 201:81:chipyard.TestHarness.RocketConfig.fir@53115.6]
  assign _T_23 = io_in_a_bits_size >= 4'h3; // @[Misc.scala 205:21:chipyard.TestHarness.RocketConfig.fir@53116.6]
  assign _T_26 = ~io_in_a_bits_address[2]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@53119.6]
  assign _T_28 = _T_22[2] & _T_26; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@53121.6]
  assign _T_29 = _T_23 | _T_28; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@53122.6]
  assign _T_31 = _T_22[2] & io_in_a_bits_address[2]; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@53124.6]
  assign _T_32 = _T_23 | _T_31; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@53125.6]
  assign _T_35 = ~io_in_a_bits_address[1]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@53128.6]
  assign _T_36 = _T_26 & _T_35; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@53129.6]
  assign _T_37 = _T_22[1] & _T_36; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@53130.6]
  assign _T_38 = _T_29 | _T_37; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@53131.6]
  assign _T_39 = _T_26 & io_in_a_bits_address[1]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@53132.6]
  assign _T_40 = _T_22[1] & _T_39; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@53133.6]
  assign _T_41 = _T_29 | _T_40; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@53134.6]
  assign _T_42 = io_in_a_bits_address[2] & _T_35; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@53135.6]
  assign _T_43 = _T_22[1] & _T_42; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@53136.6]
  assign _T_44 = _T_32 | _T_43; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@53137.6]
  assign _T_45 = io_in_a_bits_address[2] & io_in_a_bits_address[1]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@53138.6]
  assign _T_46 = _T_22[1] & _T_45; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@53139.6]
  assign _T_47 = _T_32 | _T_46; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@53140.6]
  assign _T_50 = ~io_in_a_bits_address[0]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@53143.6]
  assign _T_51 = _T_36 & _T_50; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@53144.6]
  assign _T_52 = _T_22[0] & _T_51; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@53145.6]
  assign _T_53 = _T_38 | _T_52; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@53146.6]
  assign _T_54 = _T_36 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@53147.6]
  assign _T_55 = _T_22[0] & _T_54; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@53148.6]
  assign _T_56 = _T_38 | _T_55; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@53149.6]
  assign _T_57 = _T_39 & _T_50; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@53150.6]
  assign _T_58 = _T_22[0] & _T_57; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@53151.6]
  assign _T_59 = _T_41 | _T_58; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@53152.6]
  assign _T_60 = _T_39 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@53153.6]
  assign _T_61 = _T_22[0] & _T_60; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@53154.6]
  assign _T_62 = _T_41 | _T_61; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@53155.6]
  assign _T_63 = _T_42 & _T_50; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@53156.6]
  assign _T_64 = _T_22[0] & _T_63; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@53157.6]
  assign _T_65 = _T_44 | _T_64; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@53158.6]
  assign _T_66 = _T_42 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@53159.6]
  assign _T_67 = _T_22[0] & _T_66; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@53160.6]
  assign _T_68 = _T_44 | _T_67; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@53161.6]
  assign _T_69 = _T_45 & _T_50; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@53162.6]
  assign _T_70 = _T_22[0] & _T_69; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@53163.6]
  assign _T_71 = _T_47 | _T_70; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@53164.6]
  assign _T_72 = _T_45 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@53165.6]
  assign _T_73 = _T_22[0] & _T_72; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@53166.6]
  assign _T_74 = _T_47 | _T_73; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@53167.6]
  assign _T_81 = {_T_74,_T_71,_T_68,_T_65,_T_62,_T_59,_T_56,_T_53}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@53174.6]
  assign _T_120 = io_in_a_bits_opcode == 3'h6; // @[Monitor.scala 79:25:chipyard.TestHarness.RocketConfig.fir@53217.6]
  assign _T_122 = io_in_a_bits_address ^ 14'h3000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@53220.8]
  assign _T_123 = {1'b0,$signed(_T_122)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@53221.8]
  assign _T_125 = $signed(_T_123) & -15'sh1000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@53223.8]
  assign _T_126 = $signed(_T_125) == 15'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@53224.8]
  assign _T_131 = ~reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53229.8]
  assign _T_137 = 4'h6 == io_in_a_bits_size; // @[Parameters.scala 92:48:chipyard.TestHarness.RocketConfig.fir@53244.8]
  assign _T_139 = _T_5 & _T_137; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@53246.8]
  assign _T_147 = _T_139 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53255.8]
  assign _T_148 = ~_T_147; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53256.8]
  assign _T_150 = _T_11 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53262.8]
  assign _T_151 = ~_T_150; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53263.8]
  assign _T_154 = _T_23 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53270.8]
  assign _T_155 = ~_T_154; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53271.8]
  assign _T_157 = _T_17 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53277.8]
  assign _T_158 = ~_T_157; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53278.8]
  assign _T_159 = io_in_a_bits_param <= 3'h2; // @[Bundles.scala 110:27:chipyard.TestHarness.RocketConfig.fir@53283.8]
  assign _T_161 = _T_159 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53285.8]
  assign _T_162 = ~_T_161; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53286.8]
  assign _T_163 = ~io_in_a_bits_mask; // @[Monitor.scala 86:18:chipyard.TestHarness.RocketConfig.fir@53291.8]
  assign _T_164 = _T_163 == 8'h0; // @[Monitor.scala 86:31:chipyard.TestHarness.RocketConfig.fir@53292.8]
  assign _T_166 = _T_164 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53294.8]
  assign _T_167 = ~_T_166; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53295.8]
  assign _T_168 = ~io_in_a_bits_corrupt; // @[Monitor.scala 87:18:chipyard.TestHarness.RocketConfig.fir@53300.8]
  assign _T_170 = _T_168 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53302.8]
  assign _T_171 = ~_T_170; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53303.8]
  assign _T_172 = io_in_a_bits_opcode == 3'h7; // @[Monitor.scala 90:25:chipyard.TestHarness.RocketConfig.fir@53309.6]
  assign _T_215 = io_in_a_bits_param != 3'h0; // @[Monitor.scala 97:31:chipyard.TestHarness.RocketConfig.fir@53383.8]
  assign _T_217 = _T_215 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53385.8]
  assign _T_218 = ~_T_217; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53386.8]
  assign _T_228 = io_in_a_bits_opcode == 3'h4; // @[Monitor.scala 102:25:chipyard.TestHarness.RocketConfig.fir@53409.6]
  assign _T_230 = io_in_a_bits_size <= 4'hc; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@53412.8]
  assign _T_238 = _T_230 & _T_126; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@53420.8]
  assign _T_241 = _T_238 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53423.8]
  assign _T_242 = ~_T_241; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53424.8]
  assign _T_249 = io_in_a_bits_param == 3'h0; // @[Monitor.scala 106:31:chipyard.TestHarness.RocketConfig.fir@53443.8]
  assign _T_251 = _T_249 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53445.8]
  assign _T_252 = ~_T_251; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53446.8]
  assign _T_253 = io_in_a_bits_mask == _T_81; // @[Monitor.scala 107:30:chipyard.TestHarness.RocketConfig.fir@53451.8]
  assign _T_255 = _T_253 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53453.8]
  assign _T_256 = ~_T_255; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53454.8]
  assign _T_261 = io_in_a_bits_opcode == 3'h0; // @[Monitor.scala 111:25:chipyard.TestHarness.RocketConfig.fir@53468.6]
  assign _T_290 = io_in_a_bits_opcode == 3'h1; // @[Monitor.scala 119:25:chipyard.TestHarness.RocketConfig.fir@53519.6]
  assign _T_315 = ~_T_81; // @[Monitor.scala 124:33:chipyard.TestHarness.RocketConfig.fir@53561.8]
  assign _T_316 = io_in_a_bits_mask & _T_315; // @[Monitor.scala 124:31:chipyard.TestHarness.RocketConfig.fir@53562.8]
  assign _T_317 = _T_316 == 8'h0; // @[Monitor.scala 124:40:chipyard.TestHarness.RocketConfig.fir@53563.8]
  assign _T_319 = _T_317 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53565.8]
  assign _T_320 = ~_T_319; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53566.8]
  assign _T_321 = io_in_a_bits_opcode == 3'h2; // @[Monitor.scala 127:25:chipyard.TestHarness.RocketConfig.fir@53572.6]
  assign _T_323 = io_in_a_bits_size <= 4'h3; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@53575.8]
  assign _T_331 = _T_323 & _T_126; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@53583.8]
  assign _T_334 = _T_331 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53586.8]
  assign _T_335 = ~_T_334; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53587.8]
  assign _T_342 = io_in_a_bits_param <= 3'h4; // @[Bundles.scala 140:33:chipyard.TestHarness.RocketConfig.fir@53606.8]
  assign _T_344 = _T_342 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53608.8]
  assign _T_345 = ~_T_344; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53609.8]
  assign _T_350 = io_in_a_bits_opcode == 3'h3; // @[Monitor.scala 135:25:chipyard.TestHarness.RocketConfig.fir@53623.6]
  assign _T_371 = io_in_a_bits_param <= 3'h3; // @[Bundles.scala 147:30:chipyard.TestHarness.RocketConfig.fir@53657.8]
  assign _T_373 = _T_371 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53659.8]
  assign _T_374 = ~_T_373; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53660.8]
  assign _T_379 = io_in_a_bits_opcode == 3'h5; // @[Monitor.scala 143:25:chipyard.TestHarness.RocketConfig.fir@53674.6]
  assign _T_400 = io_in_a_bits_param <= 3'h1; // @[Bundles.scala 160:28:chipyard.TestHarness.RocketConfig.fir@53708.8]
  assign _T_402 = _T_400 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53710.8]
  assign _T_403 = ~_T_402; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53711.8]
  assign _T_412 = io_in_d_bits_opcode <= 3'h6; // @[Bundles.scala 44:24:chipyard.TestHarness.RocketConfig.fir@53735.6]
  assign _T_414 = _T_412 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@53737.6]
  assign _T_415 = ~_T_414; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@53738.6]
  assign _T_416 = io_in_d_bits_source == 3'h4; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@53743.6]
  assign _T_417 = io_in_d_bits_source == 3'h0; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@53744.6]
  assign _T_418 = io_in_d_bits_source == 3'h1; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@53745.6]
  assign _T_419 = io_in_d_bits_source == 3'h2; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@53746.6]
  assign _T_421 = _T_416 | _T_417; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@53753.6]
  assign _T_422 = _T_421 | _T_418; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@53754.6]
  assign _T_423 = _T_422 | _T_419; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@53755.6]
  assign _T_425 = io_in_d_bits_opcode == 3'h6; // @[Monitor.scala 307:25:chipyard.TestHarness.RocketConfig.fir@53757.6]
  assign _T_427 = _T_423 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@53760.8]
  assign _T_428 = ~_T_427; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@53761.8]
  assign _T_429 = io_in_d_bits_size >= 4'h3; // @[Monitor.scala 309:27:chipyard.TestHarness.RocketConfig.fir@53766.8]
  assign _T_431 = _T_429 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@53768.8]
  assign _T_432 = ~_T_431; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@53769.8]
  assign _T_437 = ~io_in_d_bits_corrupt; // @[Monitor.scala 311:15:chipyard.TestHarness.RocketConfig.fir@53782.8]
  assign _T_439 = _T_437 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@53784.8]
  assign _T_440 = ~_T_439; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@53785.8]
  assign _T_445 = io_in_d_bits_opcode == 3'h4; // @[Monitor.scala 315:25:chipyard.TestHarness.RocketConfig.fir@53799.6]
  assign _T_473 = io_in_d_bits_opcode == 3'h5; // @[Monitor.scala 325:25:chipyard.TestHarness.RocketConfig.fir@53857.6]
  assign _T_495 = io_in_d_bits_corrupt | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@53900.8]
  assign _T_496 = ~_T_495; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@53901.8]
  assign _T_502 = io_in_d_bits_opcode == 3'h0; // @[Monitor.scala 335:25:chipyard.TestHarness.RocketConfig.fir@53916.6]
  assign _T_519 = io_in_d_bits_opcode == 3'h1; // @[Monitor.scala 343:25:chipyard.TestHarness.RocketConfig.fir@53951.6]
  assign _T_537 = io_in_d_bits_opcode == 3'h2; // @[Monitor.scala 351:25:chipyard.TestHarness.RocketConfig.fir@53987.6]
  assign _T_569 = io_in_a_ready & io_in_a_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@54053.4]
  assign _T_576 = ~io_in_a_bits_opcode[2]; // @[Edges.scala 93:28:chipyard.TestHarness.RocketConfig.fir@54060.4]
  assign _T_580 = _T_578 - 9'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@54064.4]
  assign _T_581 = _T_578 == 9'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@54065.4]
  assign _T_594 = ~_T_581; // @[Monitor.scala 386:22:chipyard.TestHarness.RocketConfig.fir@54081.4]
  assign _T_595 = io_in_a_valid & _T_594; // @[Monitor.scala 386:19:chipyard.TestHarness.RocketConfig.fir@54082.4]
  assign _T_596 = io_in_a_bits_opcode == _T_589; // @[Monitor.scala 387:32:chipyard.TestHarness.RocketConfig.fir@54084.6]
  assign _T_598 = _T_596 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@54086.6]
  assign _T_599 = ~_T_598; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@54087.6]
  assign _T_600 = io_in_a_bits_param == _T_590; // @[Monitor.scala 388:32:chipyard.TestHarness.RocketConfig.fir@54092.6]
  assign _T_602 = _T_600 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@54094.6]
  assign _T_603 = ~_T_602; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@54095.6]
  assign _T_604 = io_in_a_bits_size == _T_591; // @[Monitor.scala 389:32:chipyard.TestHarness.RocketConfig.fir@54100.6]
  assign _T_606 = _T_604 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@54102.6]
  assign _T_607 = ~_T_606; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@54103.6]
  assign _T_608 = io_in_a_bits_source == _T_592; // @[Monitor.scala 390:32:chipyard.TestHarness.RocketConfig.fir@54108.6]
  assign _T_610 = _T_608 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@54110.6]
  assign _T_611 = ~_T_610; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@54111.6]
  assign _T_612 = io_in_a_bits_address == _T_593; // @[Monitor.scala 391:32:chipyard.TestHarness.RocketConfig.fir@54116.6]
  assign _T_614 = _T_612 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@54118.6]
  assign _T_615 = ~_T_614; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@54119.6]
  assign _T_617 = _T_569 & _T_581; // @[Monitor.scala 393:20:chipyard.TestHarness.RocketConfig.fir@54126.4]
  assign _T_618 = io_in_d_ready & io_in_d_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@54134.4]
  assign _T_620 = 27'hfff << io_in_d_bits_size; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@54136.4]
  assign _T_622 = ~_T_620[11:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@54138.4]
  assign _T_628 = _T_626 - 9'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@54144.4]
  assign _T_629 = _T_626 == 9'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@54145.4]
  assign _T_643 = ~_T_629; // @[Monitor.scala 538:22:chipyard.TestHarness.RocketConfig.fir@54162.4]
  assign _T_644 = io_in_d_valid & _T_643; // @[Monitor.scala 538:19:chipyard.TestHarness.RocketConfig.fir@54163.4]
  assign _T_645 = io_in_d_bits_opcode == _T_637; // @[Monitor.scala 539:29:chipyard.TestHarness.RocketConfig.fir@54165.6]
  assign _T_647 = _T_645 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@54167.6]
  assign _T_648 = ~_T_647; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@54168.6]
  assign _T_653 = io_in_d_bits_size == _T_639; // @[Monitor.scala 541:29:chipyard.TestHarness.RocketConfig.fir@54181.6]
  assign _T_655 = _T_653 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@54183.6]
  assign _T_656 = ~_T_655; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@54184.6]
  assign _T_657 = io_in_d_bits_source == _T_640; // @[Monitor.scala 542:29:chipyard.TestHarness.RocketConfig.fir@54189.6]
  assign _T_659 = _T_657 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@54191.6]
  assign _T_660 = ~_T_659; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@54192.6]
  assign _T_670 = _T_618 & _T_629; // @[Monitor.scala 546:20:chipyard.TestHarness.RocketConfig.fir@54215.4]
  assign _T_682 = _T_680 - 9'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@54238.4]
  assign a_first = _T_680 == 9'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@54239.4]
  assign _T_700 = _T_698 - 9'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@54260.4]
  assign d_first = _T_698 == 9'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@54261.4]
  assign _GEN_57 = {io_in_d_bits_source, 2'h0}; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@54280.4]
  assign _T_708 = {{1'd0}, _GEN_57}; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@54280.4]
  assign _T_709 = inflight_opcodes >> _T_708; // @[Monitor.scala 629:44:chipyard.TestHarness.RocketConfig.fir@54281.4]
  assign _T_713 = 16'h10 - 16'h1; // @[Monitor.scala 606:57:chipyard.TestHarness.RocketConfig.fir@54285.4]
  assign _GEN_58 = {{4'd0}, _T_713}; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@54286.4]
  assign _T_714 = _T_709 & _GEN_58; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@54286.4]
  assign _T_715 = {{1'd0}, _T_714[19:1]}; // @[Monitor.scala 629:152:chipyard.TestHarness.RocketConfig.fir@54287.4]
  assign _T_716 = {io_in_d_bits_source, 3'h0}; // @[Monitor.scala 633:65:chipyard.TestHarness.RocketConfig.fir@54291.4]
  assign _T_717 = inflight_sizes >> _T_716; // @[Monitor.scala 633:40:chipyard.TestHarness.RocketConfig.fir@54292.4]
  assign _T_721 = 16'h100 - 16'h1; // @[Monitor.scala 606:57:chipyard.TestHarness.RocketConfig.fir@54296.4]
  assign _GEN_60 = {{24'd0}, _T_721}; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@54297.4]
  assign _T_722 = _T_717 & _GEN_60; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@54297.4]
  assign _T_723 = {{1'd0}, _T_722[39:1]}; // @[Monitor.scala 633:144:chipyard.TestHarness.RocketConfig.fir@54298.4]
  assign _T_727 = _T_569 & a_first; // @[Monitor.scala 643:27:chipyard.TestHarness.RocketConfig.fir@54323.4]
  assign _T_729 = 8'h1 << io_in_a_bits_source; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@54326.6]
  assign _T_730 = {io_in_a_bits_opcode, 1'h0}; // @[Monitor.scala 645:53:chipyard.TestHarness.RocketConfig.fir@54328.6]
  assign _T_731 = _T_730 | 4'h1; // @[Monitor.scala 645:61:chipyard.TestHarness.RocketConfig.fir@54329.6]
  assign _T_732 = {io_in_a_bits_size, 1'h0}; // @[Monitor.scala 646:49:chipyard.TestHarness.RocketConfig.fir@54331.6]
  assign _T_733 = _T_732 | 5'h1; // @[Monitor.scala 646:57:chipyard.TestHarness.RocketConfig.fir@54332.6]
  assign _GEN_62 = {io_in_a_bits_source, 2'h0}; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@54334.6]
  assign _T_734 = {{1'd0}, _GEN_62}; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@54334.6]
  assign a_opcodes_set_interm = _T_727 ? _T_731 : 4'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@54325.4]
  assign _GEN_63 = {{63'd0}, a_opcodes_set_interm}; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@54335.6]
  assign _T_735 = _GEN_63 << _T_734; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@54335.6]
  assign _T_736 = {io_in_a_bits_source, 3'h0}; // @[Monitor.scala 648:68:chipyard.TestHarness.RocketConfig.fir@54337.6]
  assign a_sizes_set_interm = _T_727 ? _T_733 : 5'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@54325.4]
  assign _GEN_64 = {{63'd0}, a_sizes_set_interm}; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@54338.6]
  assign _T_737 = _GEN_64 << _T_736; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@54338.6]
  assign _T_738 = inflight >> io_in_a_bits_source; // @[Monitor.scala 649:26:chipyard.TestHarness.RocketConfig.fir@54340.6]
  assign _T_740 = ~_T_738[0]; // @[Monitor.scala 649:17:chipyard.TestHarness.RocketConfig.fir@54342.6]
  assign _T_742 = _T_740 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@54344.6]
  assign _T_743 = ~_T_742; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@54345.6]
  assign _GEN_15 = _T_727 ? _T_729 : 8'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@54325.4]
  assign _GEN_18 = _T_727 ? _T_735 : 67'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@54325.4]
  assign _GEN_19 = _T_727 ? _T_737 : 68'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@54325.4]
  assign _T_746 = _T_618 & d_first; // @[Monitor.scala 660:27:chipyard.TestHarness.RocketConfig.fir@54359.4]
  assign _T_748 = ~_T_425; // @[Monitor.scala 660:75:chipyard.TestHarness.RocketConfig.fir@54361.4]
  assign _T_749 = _T_746 & _T_748; // @[Monitor.scala 660:72:chipyard.TestHarness.RocketConfig.fir@54362.4]
  assign _T_750 = 8'h1 << io_in_d_bits_source; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@54364.6]
  assign _GEN_66 = {{63'd0}, _T_713}; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@54371.6]
  assign _T_756 = _GEN_66 << _T_708; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@54371.6]
  assign _GEN_67 = {{63'd0}, _T_721}; // @[Monitor.scala 663:72:chipyard.TestHarness.RocketConfig.fir@54378.6]
  assign _T_762 = _GEN_67 << _T_716; // @[Monitor.scala 663:72:chipyard.TestHarness.RocketConfig.fir@54378.6]
  assign _GEN_20 = _T_749 ? _T_750 : 8'h0; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@54363.4]
  assign _GEN_21 = _T_749 ? _T_756 : 79'h0; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@54363.4]
  assign _GEN_22 = _T_749 ? _T_762 : 79'h0; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@54363.4]
  assign _T_763 = io_in_d_valid & d_first; // @[Monitor.scala 665:26:chipyard.TestHarness.RocketConfig.fir@54381.4]
  assign _T_766 = _T_763 & _T_748; // @[Monitor.scala 665:71:chipyard.TestHarness.RocketConfig.fir@54384.4]
  assign _T_767 = inflight >> io_in_d_bits_source; // @[Monitor.scala 666:25:chipyard.TestHarness.RocketConfig.fir@54386.6]
  assign _T_769 = io_in_a_bits_source == io_in_d_bits_source; // @[Monitor.scala 666:93:chipyard.TestHarness.RocketConfig.fir@54388.6]
  assign _T_770 = io_in_a_valid & _T_769; // @[Monitor.scala 666:68:chipyard.TestHarness.RocketConfig.fir@54389.6]
  assign _T_771 = io_in_a_bits_size == io_in_d_bits_size; // @[Monitor.scala 666:142:chipyard.TestHarness.RocketConfig.fir@54390.6]
  assign _T_772 = _T_770 & _T_771; // @[Monitor.scala 666:119:chipyard.TestHarness.RocketConfig.fir@54391.6]
  assign _T_773 = _T_772 & a_first; // @[Monitor.scala 666:166:chipyard.TestHarness.RocketConfig.fir@54392.6]
  assign _T_774 = _T_767[0] | _T_773; // @[Monitor.scala 666:49:chipyard.TestHarness.RocketConfig.fir@54393.6]
  assign _T_776 = _T_774 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@54395.6]
  assign _T_777 = ~_T_776; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@54396.6]
  assign a_opcode_lookup = _T_715[3:0]; // @[:chipyard.TestHarness.RocketConfig.fir@54278.4 :chipyard.TestHarness.RocketConfig.fir@54279.4 Monitor.scala 629:21:chipyard.TestHarness.RocketConfig.fir@54288.4]
  assign _GEN_25 = 3'h2 == a_opcode_lookup[2:0] ? 3'h1 : 3'h0; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@54402.6]
  assign _GEN_26 = 3'h3 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_25; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@54402.6]
  assign _GEN_27 = 3'h4 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_26; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@54402.6]
  assign _GEN_28 = 3'h5 == a_opcode_lookup[2:0] ? 3'h2 : _GEN_27; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@54402.6]
  assign _GEN_29 = 3'h6 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_28; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@54402.6]
  assign _GEN_30 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_29; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@54402.6]
  assign _T_779 = io_in_d_bits_opcode == _GEN_30; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@54402.6]
  assign _GEN_37 = 3'h6 == a_opcode_lookup[2:0] ? 3'h5 : _GEN_28; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@54404.6]
  assign _GEN_38 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_37; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@54404.6]
  assign _T_781 = io_in_d_bits_opcode == _GEN_38; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@54404.6]
  assign _T_782 = _T_779 | _T_781; // @[Monitor.scala 667:71:chipyard.TestHarness.RocketConfig.fir@54405.6]
  assign _GEN_41 = 3'h2 == io_in_a_bits_opcode ? 3'h1 : 3'h0; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@54406.6]
  assign _GEN_42 = 3'h3 == io_in_a_bits_opcode ? 3'h1 : _GEN_41; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@54406.6]
  assign _GEN_43 = 3'h4 == io_in_a_bits_opcode ? 3'h1 : _GEN_42; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@54406.6]
  assign _GEN_44 = 3'h5 == io_in_a_bits_opcode ? 3'h2 : _GEN_43; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@54406.6]
  assign _GEN_45 = 3'h6 == io_in_a_bits_opcode ? 3'h4 : _GEN_44; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@54406.6]
  assign _GEN_46 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_45; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@54406.6]
  assign _T_783 = io_in_d_bits_opcode == _GEN_46; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@54406.6]
  assign _GEN_53 = 3'h6 == io_in_a_bits_opcode ? 3'h5 : _GEN_44; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@54407.6]
  assign _GEN_54 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_53; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@54407.6]
  assign _T_784 = io_in_d_bits_opcode == _GEN_54; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@54407.6]
  assign _T_785 = _T_783 | _T_784; // @[Monitor.scala 668:99:chipyard.TestHarness.RocketConfig.fir@54408.6]
  assign _T_786 = io_in_a_valid & _T_785; // @[Monitor.scala 668:34:chipyard.TestHarness.RocketConfig.fir@54409.6]
  assign _T_787 = _T_782 | _T_786; // @[Monitor.scala 668:15:chipyard.TestHarness.RocketConfig.fir@54410.6]
  assign _T_789 = _T_787 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@54412.6]
  assign _T_790 = ~_T_789; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@54413.6]
  assign a_size_lookup = _T_723[7:0]; // @[:chipyard.TestHarness.RocketConfig.fir@54289.4 :chipyard.TestHarness.RocketConfig.fir@54290.4 Monitor.scala 633:19:chipyard.TestHarness.RocketConfig.fir@54299.4]
  assign _GEN_68 = {{4'd0}, io_in_d_bits_size}; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@54418.6]
  assign _T_791 = _GEN_68 == a_size_lookup; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@54418.6]
  assign _T_793 = io_in_a_valid & _T_771; // @[Monitor.scala 670:72:chipyard.TestHarness.RocketConfig.fir@54420.6]
  assign _T_794 = _T_791 | _T_793; // @[Monitor.scala 670:53:chipyard.TestHarness.RocketConfig.fir@54421.6]
  assign _T_796 = _T_794 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@54423.6]
  assign _T_797 = ~_T_796; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@54424.6]
  assign _T_799 = _T_763 & a_first; // @[Monitor.scala 672:36:chipyard.TestHarness.RocketConfig.fir@54431.4]
  assign _T_800 = _T_799 & io_in_a_valid; // @[Monitor.scala 672:47:chipyard.TestHarness.RocketConfig.fir@54432.4]
  assign _T_802 = _T_800 & _T_769; // @[Monitor.scala 672:65:chipyard.TestHarness.RocketConfig.fir@54434.4]
  assign _T_804 = _T_802 & _T_748; // @[Monitor.scala 672:116:chipyard.TestHarness.RocketConfig.fir@54436.4]
  assign _T_805 = ~io_in_d_ready; // @[Monitor.scala 673:15:chipyard.TestHarness.RocketConfig.fir@54438.6]
  assign _T_806 = _T_805 | io_in_a_ready; // @[Monitor.scala 673:32:chipyard.TestHarness.RocketConfig.fir@54439.6]
  assign _T_808 = _T_806 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@54441.6]
  assign _T_809 = ~_T_808; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@54442.6]
  assign a_set = _GEN_15[4:0]; // @[:chipyard.TestHarness.RocketConfig.fir@54272.4 :chipyard.TestHarness.RocketConfig.fir@54273.4 Monitor.scala 644:13:chipyard.TestHarness.RocketConfig.fir@54327.6]
  assign d_clr = _GEN_20[4:0]; // @[:chipyard.TestHarness.RocketConfig.fir@54351.4 :chipyard.TestHarness.RocketConfig.fir@54352.4 Monitor.scala 661:13:chipyard.TestHarness.RocketConfig.fir@54365.6]
  assign _T_810 = a_set != d_clr; // @[Monitor.scala 677:20:chipyard.TestHarness.RocketConfig.fir@54448.4]
  assign _T_811 = |a_set; // @[Monitor.scala 677:40:chipyard.TestHarness.RocketConfig.fir@54449.4]
  assign _T_812 = ~_T_811; // @[Monitor.scala 677:33:chipyard.TestHarness.RocketConfig.fir@54450.4]
  assign _T_813 = _T_810 | _T_812; // @[Monitor.scala 677:30:chipyard.TestHarness.RocketConfig.fir@54451.4]
  assign _T_815 = _T_813 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@54453.4]
  assign _T_816 = ~_T_815; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@54454.4]
  assign _T_817 = inflight | a_set; // @[Monitor.scala 680:27:chipyard.TestHarness.RocketConfig.fir@54459.4]
  assign _T_818 = ~d_clr; // @[Monitor.scala 680:38:chipyard.TestHarness.RocketConfig.fir@54460.4]
  assign _T_819 = _T_817 & _T_818; // @[Monitor.scala 680:36:chipyard.TestHarness.RocketConfig.fir@54461.4]
  assign a_opcodes_set = _GEN_18[19:0]; // @[:chipyard.TestHarness.RocketConfig.fir@54274.4 :chipyard.TestHarness.RocketConfig.fir@54275.4 Monitor.scala 647:21:chipyard.TestHarness.RocketConfig.fir@54336.6]
  assign _T_820 = inflight_opcodes | a_opcodes_set; // @[Monitor.scala 681:43:chipyard.TestHarness.RocketConfig.fir@54463.4]
  assign d_opcodes_clr = _GEN_21[19:0]; // @[:chipyard.TestHarness.RocketConfig.fir@54353.4 :chipyard.TestHarness.RocketConfig.fir@54354.4 Monitor.scala 662:21:chipyard.TestHarness.RocketConfig.fir@54372.6]
  assign _T_821 = ~d_opcodes_clr; // @[Monitor.scala 681:62:chipyard.TestHarness.RocketConfig.fir@54464.4]
  assign _T_822 = _T_820 & _T_821; // @[Monitor.scala 681:60:chipyard.TestHarness.RocketConfig.fir@54465.4]
  assign a_sizes_set = _GEN_19[39:0]; // @[:chipyard.TestHarness.RocketConfig.fir@54276.4 :chipyard.TestHarness.RocketConfig.fir@54277.4 Monitor.scala 648:19:chipyard.TestHarness.RocketConfig.fir@54339.6]
  assign _T_823 = inflight_sizes | a_sizes_set; // @[Monitor.scala 682:39:chipyard.TestHarness.RocketConfig.fir@54467.4]
  assign d_sizes_clr = _GEN_22[39:0]; // @[:chipyard.TestHarness.RocketConfig.fir@54355.4 :chipyard.TestHarness.RocketConfig.fir@54356.4 Monitor.scala 663:19:chipyard.TestHarness.RocketConfig.fir@54379.6]
  assign _T_824 = ~d_sizes_clr; // @[Monitor.scala 682:56:chipyard.TestHarness.RocketConfig.fir@54468.4]
  assign _T_825 = _T_823 & _T_824; // @[Monitor.scala 682:54:chipyard.TestHarness.RocketConfig.fir@54469.4]
  assign _T_827 = |inflight; // @[Monitor.scala 687:26:chipyard.TestHarness.RocketConfig.fir@54474.4]
  assign _T_828 = ~_T_827; // @[Monitor.scala 687:16:chipyard.TestHarness.RocketConfig.fir@54475.4]
  assign _T_829 = plusarg_reader_out == 32'h0; // @[Monitor.scala 687:39:chipyard.TestHarness.RocketConfig.fir@54476.4]
  assign _T_830 = _T_828 | _T_829; // @[Monitor.scala 687:30:chipyard.TestHarness.RocketConfig.fir@54477.4]
  assign _T_831 = _T_826 < plusarg_reader_out; // @[Monitor.scala 687:59:chipyard.TestHarness.RocketConfig.fir@54478.4]
  assign _T_832 = _T_830 | _T_831; // @[Monitor.scala 687:47:chipyard.TestHarness.RocketConfig.fir@54479.4]
  assign _T_834 = _T_832 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@54481.4]
  assign _T_835 = ~_T_834; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@54482.4]
  assign _T_837 = _T_826 + 32'h1; // @[Monitor.scala 689:26:chipyard.TestHarness.RocketConfig.fir@54488.4]
  assign _T_840 = _T_569 | _T_618; // @[Monitor.scala 690:27:chipyard.TestHarness.RocketConfig.fir@54492.4]
  assign _GEN_69 = io_in_a_valid & _T_120; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53231.10]
  assign _GEN_85 = io_in_a_valid & _T_172; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53323.10]
  assign _GEN_103 = io_in_a_valid & _T_228; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53426.10]
  assign _GEN_115 = io_in_a_valid & _T_261; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53485.10]
  assign _GEN_125 = io_in_a_valid & _T_290; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53536.10]
  assign _GEN_135 = io_in_a_valid & _T_321; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53589.10]
  assign _GEN_145 = io_in_a_valid & _T_350; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53640.10]
  assign _GEN_155 = io_in_a_valid & _T_379; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53691.10]
  assign _GEN_167 = io_in_d_valid & _T_425; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@53763.10]
  assign _GEN_175 = io_in_d_valid & _T_445; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@53805.10]
  assign _GEN_183 = io_in_d_valid & _T_473; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@53863.10]
  assign _GEN_191 = io_in_d_valid & _T_502; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@53922.10]
  assign _GEN_195 = io_in_d_valid & _T_519; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@53957.10]
  assign _GEN_199 = io_in_d_valid & _T_537; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@53993.10]
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
  _T_578 = _RAND_0[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_589 = _RAND_1[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_590 = _RAND_2[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_591 = _RAND_3[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_592 = _RAND_4[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_593 = _RAND_5[13:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  _T_626 = _RAND_6[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  _T_637 = _RAND_7[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  _T_639 = _RAND_8[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  _T_640 = _RAND_9[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  inflight = _RAND_10[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  inflight_opcodes = _RAND_11[19:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {2{`RANDOM}};
  inflight_sizes = _RAND_12[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  _T_680 = _RAND_13[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  _T_698 = _RAND_14[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  _T_826 = _RAND_15[31:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      _T_578 <= 9'h0;
    end else if (_T_569) begin
      if (_T_581) begin
        if (_T_576) begin
          _T_578 <= _T_15[11:3];
        end else begin
          _T_578 <= 9'h0;
        end
      end else begin
        _T_578 <= _T_580;
      end
    end
    if (_T_617) begin
      _T_589 <= io_in_a_bits_opcode;
    end
    if (_T_617) begin
      _T_590 <= io_in_a_bits_param;
    end
    if (_T_617) begin
      _T_591 <= io_in_a_bits_size;
    end
    if (_T_617) begin
      _T_592 <= io_in_a_bits_source;
    end
    if (_T_617) begin
      _T_593 <= io_in_a_bits_address;
    end
    if (reset) begin
      _T_626 <= 9'h0;
    end else if (_T_618) begin
      if (_T_629) begin
        if (io_in_d_bits_opcode[0]) begin
          _T_626 <= _T_622[11:3];
        end else begin
          _T_626 <= 9'h0;
        end
      end else begin
        _T_626 <= _T_628;
      end
    end
    if (_T_670) begin
      _T_637 <= io_in_d_bits_opcode;
    end
    if (_T_670) begin
      _T_639 <= io_in_d_bits_size;
    end
    if (_T_670) begin
      _T_640 <= io_in_d_bits_source;
    end
    if (reset) begin
      inflight <= 5'h0;
    end else begin
      inflight <= _T_819;
    end
    if (reset) begin
      inflight_opcodes <= 20'h0;
    end else begin
      inflight_opcodes <= _T_822;
    end
    if (reset) begin
      inflight_sizes <= 40'h0;
    end else begin
      inflight_sizes <= _T_825;
    end
    if (reset) begin
      _T_680 <= 9'h0;
    end else if (_T_569) begin
      if (a_first) begin
        if (_T_576) begin
          _T_680 <= _T_15[11:3];
        end else begin
          _T_680 <= 9'h0;
        end
      end else begin
        _T_680 <= _T_682;
      end
    end
    if (reset) begin
      _T_698 <= 9'h0;
    end else if (_T_618) begin
      if (d_first) begin
        if (io_in_d_bits_opcode[0]) begin
          _T_698 <= _T_622[11:3];
        end else begin
          _T_698 <= 9'h0;
        end
      end else begin
        _T_698 <= _T_700;
      end
    end
    if (reset) begin
      _T_826 <= 32'h0;
    end else if (_T_840) begin
      _T_826 <= 32'h0;
    end else begin
      _T_826 <= _T_837;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_69 & _T_131) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock type unsupported by manager (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53231.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_69 & _T_131) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53232.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_69 & _T_148) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock from a client which does not support Probe (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53258.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_69 & _T_148) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53259.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_69 & _T_151) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock carries invalid source ID (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53265.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_69 & _T_151) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53266.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_69 & _T_155) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock smaller than a beat (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53273.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_69 & _T_155) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53274.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_69 & _T_158) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock address not aligned to size (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53280.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_69 & _T_158) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53281.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_69 & _T_162) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock carries invalid grow param (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53288.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_69 & _T_162) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53289.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_69 & _T_167) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock contains invalid mask (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53297.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53298.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_69 & _T_171) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock is corrupt (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53305.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_69 & _T_171) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53306.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_131) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm type unsupported by manager (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53323.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_131) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53324.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_148) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm from a client which does not support Probe (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53350.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_148) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53351.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_151) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm carries invalid source ID (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53357.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_151) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53358.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_155) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm smaller than a beat (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53365.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_155) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53366.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_158) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm address not aligned to size (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53372.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_158) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53373.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_162) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm carries invalid grow param (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53380.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_162) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53381.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_218) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm requests NtoB (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53388.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_218) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53389.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm contains invalid mask (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53397.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53398.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_171) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm is corrupt (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53405.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_171) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53406.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_103 & _T_242) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Get type unsupported by manager (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53426.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_103 & _T_242) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53427.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_103 & _T_151) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get carries invalid source ID (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53433.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_103 & _T_151) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53434.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_103 & _T_158) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get address not aligned to size (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53440.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_103 & _T_158) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53441.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_103 & _T_252) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get carries invalid param (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53448.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_103 & _T_252) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53449.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_103 & _T_256) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get contains invalid mask (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53456.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_103 & _T_256) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53457.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_103 & _T_171) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get is corrupt (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53464.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_103 & _T_171) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53465.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_115 & _T_242) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutFull type unsupported by manager (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53485.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_115 & _T_242) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53486.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_115 & _T_151) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull carries invalid source ID (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53492.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_115 & _T_151) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53493.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_115 & _T_158) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull address not aligned to size (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53499.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_115 & _T_158) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53500.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_115 & _T_252) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull carries invalid param (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53507.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_115 & _T_252) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53508.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_115 & _T_256) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull contains invalid mask (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53515.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_115 & _T_256) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53516.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_125 & _T_242) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutPartial type unsupported by manager (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53536.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_125 & _T_242) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53537.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_125 & _T_151) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial carries invalid source ID (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53543.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_125 & _T_151) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53544.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_125 & _T_158) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial address not aligned to size (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53550.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_125 & _T_158) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53551.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_125 & _T_252) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial carries invalid param (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53558.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_125 & _T_252) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53559.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_125 & _T_320) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial contains invalid mask (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53568.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_125 & _T_320) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53569.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_135 & _T_335) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Arithmetic type unsupported by manager (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53589.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_135 & _T_335) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53590.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_135 & _T_151) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic carries invalid source ID (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53596.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_135 & _T_151) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53597.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_135 & _T_158) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic address not aligned to size (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53603.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_135 & _T_158) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53604.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_135 & _T_345) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic carries invalid opcode param (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53611.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_135 & _T_345) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53612.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_135 & _T_256) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic contains invalid mask (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53619.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_135 & _T_256) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53620.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_145 & _T_335) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Logical type unsupported by manager (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53640.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_145 & _T_335) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53641.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_145 & _T_151) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical carries invalid source ID (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53647.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_145 & _T_151) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53648.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_145 & _T_158) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical address not aligned to size (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53654.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_145 & _T_158) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53655.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_145 & _T_374) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical carries invalid opcode param (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53662.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_145 & _T_374) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53663.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_145 & _T_256) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical contains invalid mask (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53670.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_145 & _T_256) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53671.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_155 & _T_242) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Hint type unsupported by manager (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53691.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_155 & _T_242) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53692.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_155 & _T_151) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint carries invalid source ID (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53698.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_155 & _T_151) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53699.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_155 & _T_158) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint address not aligned to size (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53705.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_155 & _T_158) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53706.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_155 & _T_403) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint carries invalid opcode param (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53713.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_155 & _T_403) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53714.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_155 & _T_256) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint contains invalid mask (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53721.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_155 & _T_256) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53722.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_155 & _T_171) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint is corrupt (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53729.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_155 & _T_171) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@53730.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_in_d_valid & _T_415) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel has invalid opcode (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@53740.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (io_in_d_valid & _T_415) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@53741.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_167 & _T_428) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck carries invalid source ID (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@53763.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_167 & _T_428) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@53764.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_167 & _T_432) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck smaller than a beat (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@53771.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_167 & _T_432) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@53772.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_167 & _T_440) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck is corrupt (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@53787.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_167 & _T_440) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@53788.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_167 & _T_131) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck is denied (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@53795.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_167 & _T_131) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@53796.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_175 & _T_428) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid source ID (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@53805.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_175 & _T_428) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@53806.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_175 & _T_131) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid sink ID (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@53812.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_175 & _T_131) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@53813.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_175 & _T_432) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant smaller than a beat (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@53820.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_175 & _T_432) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@53821.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_175 & _T_440) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant is corrupt (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@53844.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_175 & _T_440) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@53845.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_183 & _T_428) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid source ID (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@53863.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_183 & _T_428) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@53864.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_183 & _T_131) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid sink ID (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@53870.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_183 & _T_131) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@53871.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_183 & _T_432) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData smaller than a beat (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@53878.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_183 & _T_432) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@53879.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_183 & _T_496) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData is denied but not corrupt (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@53903.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_183 & _T_496) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@53904.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_191 & _T_428) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck carries invalid source ID (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@53922.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_191 & _T_428) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@53923.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_191 & _T_440) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck is corrupt (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@53938.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_191 & _T_440) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@53939.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_195 & _T_428) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData carries invalid source ID (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@53957.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_195 & _T_428) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@53958.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_195 & _T_496) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData is denied but not corrupt (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@53974.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_195 & _T_496) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@53975.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_199 & _T_428) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck carries invalid source ID (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@53993.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_199 & _T_428) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@53994.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_199 & _T_440) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck is corrupt (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@54009.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_199 & _T_440) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@54010.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_595 & _T_599) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel opcode changed within multibeat operation (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@54089.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_595 & _T_599) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@54090.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_595 & _T_603) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel param changed within multibeat operation (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@54097.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_595 & _T_603) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@54098.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_595 & _T_607) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel size changed within multibeat operation (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@54105.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_595 & _T_607) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@54106.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_595 & _T_611) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel source changed within multibeat operation (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@54113.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_595 & _T_611) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@54114.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_595 & _T_615) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel address changed with multibeat operation (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@54121.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_595 & _T_615) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@54122.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_644 & _T_648) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel opcode changed within multibeat operation (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@54170.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_644 & _T_648) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@54171.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_644 & _T_656) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel size changed within multibeat operation (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@54186.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_644 & _T_656) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@54187.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_644 & _T_660) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel source changed within multibeat operation (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@54194.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_644 & _T_660) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@54195.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_727 & _T_743) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel re-used a source ID (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@54347.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_727 & _T_743) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@54348.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_766 & _T_777) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel acknowledged for nothing inflight (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@54398.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_766 & _T_777) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@54399.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_766 & _T_790) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper opcode response (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@54415.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_766 & _T_790) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@54416.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_766 & _T_797) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper response size (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@54426.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_766 & _T_797) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@54427.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_804 & _T_809) begin
          $fwrite(32'h80000002,"Assertion failed: ready check\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@54444.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_804 & _T_809) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@54445.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_816) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' and 'D' concurrent, despite minlatency 1 (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@54456.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_816) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@54457.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_835) begin
          $fwrite(32'h80000002,"Assertion failed: TileLink timeout expired (connected at CanHaveBuiltInDevices.scala:33:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@54484.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_835) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@54485.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
