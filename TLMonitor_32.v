module TLMonitor_32( // @[:chipyard.TestHarness.RocketConfig.fir@66361.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@66362.4]
  input         reset, // @[:chipyard.TestHarness.RocketConfig.fir@66363.4]
  input         io_in_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@66364.4]
  input         io_in_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@66364.4]
  input  [2:0]  io_in_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@66364.4]
  input  [2:0]  io_in_a_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@66364.4]
  input  [2:0]  io_in_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@66364.4]
  input  [2:0]  io_in_a_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@66364.4]
  input  [11:0] io_in_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@66364.4]
  input  [7:0]  io_in_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@66364.4]
  input         io_in_a_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@66364.4]
  input         io_in_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@66364.4]
  input         io_in_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@66364.4]
  input  [2:0]  io_in_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@66364.4]
  input  [2:0]  io_in_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@66364.4]
  input  [2:0]  io_in_d_bits_source // @[:chipyard.TestHarness.RocketConfig.fir@66364.4]
);
  wire [31:0] plusarg_reader_out; // @[PlusArg.scala 44:11:chipyard.TestHarness.RocketConfig.fir@67735.4]
  wire  _T_4; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@66375.6]
  wire  _T_5; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@66376.6]
  wire  _T_6; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@66377.6]
  wire  _T_7; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@66378.6]
  wire  _T_9; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@66385.6]
  wire  _T_10; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@66386.6]
  wire  _T_11; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@66387.6]
  wire [12:0] _T_13; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@66389.6]
  wire [5:0] _T_15; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@66391.6]
  wire [11:0] _GEN_56; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@66392.6]
  wire [11:0] _T_16; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@66392.6]
  wire  _T_17; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@66393.6]
  wire [3:0] _T_20; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@66396.6]
  wire [2:0] _T_22; // @[Misc.scala 201:81:chipyard.TestHarness.RocketConfig.fir@66398.6]
  wire  _T_23; // @[Misc.scala 205:21:chipyard.TestHarness.RocketConfig.fir@66399.6]
  wire  _T_26; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@66402.6]
  wire  _T_28; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@66404.6]
  wire  _T_29; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@66405.6]
  wire  _T_31; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@66407.6]
  wire  _T_32; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@66408.6]
  wire  _T_35; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@66411.6]
  wire  _T_36; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@66412.6]
  wire  _T_37; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@66413.6]
  wire  _T_38; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@66414.6]
  wire  _T_39; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@66415.6]
  wire  _T_40; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@66416.6]
  wire  _T_41; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@66417.6]
  wire  _T_42; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@66418.6]
  wire  _T_43; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@66419.6]
  wire  _T_44; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@66420.6]
  wire  _T_45; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@66421.6]
  wire  _T_46; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@66422.6]
  wire  _T_47; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@66423.6]
  wire  _T_50; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@66426.6]
  wire  _T_51; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@66427.6]
  wire  _T_52; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@66428.6]
  wire  _T_53; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@66429.6]
  wire  _T_54; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@66430.6]
  wire  _T_55; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@66431.6]
  wire  _T_56; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@66432.6]
  wire  _T_57; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@66433.6]
  wire  _T_58; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@66434.6]
  wire  _T_59; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@66435.6]
  wire  _T_60; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@66436.6]
  wire  _T_61; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@66437.6]
  wire  _T_62; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@66438.6]
  wire  _T_63; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@66439.6]
  wire  _T_64; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@66440.6]
  wire  _T_65; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@66441.6]
  wire  _T_66; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@66442.6]
  wire  _T_67; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@66443.6]
  wire  _T_68; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@66444.6]
  wire  _T_69; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@66445.6]
  wire  _T_70; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@66446.6]
  wire  _T_71; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@66447.6]
  wire  _T_72; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@66448.6]
  wire  _T_73; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@66449.6]
  wire  _T_74; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@66450.6]
  wire [7:0] _T_81; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@66457.6]
  wire [12:0] _T_85; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@66461.6]
  wire  _T_120; // @[Monitor.scala 79:25:chipyard.TestHarness.RocketConfig.fir@66500.6]
  wire [12:0] _T_125; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@66506.8]
  wire  _T_126; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@66507.8]
  wire  _T_131; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66512.8]
  wire  _T_137; // @[Parameters.scala 92:48:chipyard.TestHarness.RocketConfig.fir@66527.8]
  wire  _T_139; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@66529.8]
  wire  _T_147; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66538.8]
  wire  _T_148; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66539.8]
  wire  _T_150; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66545.8]
  wire  _T_151; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66546.8]
  wire  _T_154; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66553.8]
  wire  _T_155; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66554.8]
  wire  _T_157; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66560.8]
  wire  _T_158; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66561.8]
  wire  _T_159; // @[Bundles.scala 110:27:chipyard.TestHarness.RocketConfig.fir@66566.8]
  wire  _T_161; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66568.8]
  wire  _T_162; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66569.8]
  wire [7:0] _T_163; // @[Monitor.scala 86:18:chipyard.TestHarness.RocketConfig.fir@66574.8]
  wire  _T_164; // @[Monitor.scala 86:31:chipyard.TestHarness.RocketConfig.fir@66575.8]
  wire  _T_166; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66577.8]
  wire  _T_167; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66578.8]
  wire  _T_168; // @[Monitor.scala 87:18:chipyard.TestHarness.RocketConfig.fir@66583.8]
  wire  _T_170; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66585.8]
  wire  _T_171; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66586.8]
  wire  _T_172; // @[Monitor.scala 90:25:chipyard.TestHarness.RocketConfig.fir@66592.6]
  wire  _T_215; // @[Monitor.scala 97:31:chipyard.TestHarness.RocketConfig.fir@66666.8]
  wire  _T_217; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66668.8]
  wire  _T_218; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66669.8]
  wire  _T_228; // @[Monitor.scala 102:25:chipyard.TestHarness.RocketConfig.fir@66692.6]
  wire  _T_230; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@66695.8]
  wire  _T_238; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@66703.8]
  wire  _T_241; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66706.8]
  wire  _T_242; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66707.8]
  wire  _T_249; // @[Monitor.scala 106:31:chipyard.TestHarness.RocketConfig.fir@66726.8]
  wire  _T_251; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66728.8]
  wire  _T_252; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66729.8]
  wire  _T_253; // @[Monitor.scala 107:30:chipyard.TestHarness.RocketConfig.fir@66734.8]
  wire  _T_255; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66736.8]
  wire  _T_256; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66737.8]
  wire  _T_261; // @[Monitor.scala 111:25:chipyard.TestHarness.RocketConfig.fir@66751.6]
  wire  _T_290; // @[Monitor.scala 119:25:chipyard.TestHarness.RocketConfig.fir@66802.6]
  wire [7:0] _T_315; // @[Monitor.scala 124:33:chipyard.TestHarness.RocketConfig.fir@66844.8]
  wire [7:0] _T_316; // @[Monitor.scala 124:31:chipyard.TestHarness.RocketConfig.fir@66845.8]
  wire  _T_317; // @[Monitor.scala 124:40:chipyard.TestHarness.RocketConfig.fir@66846.8]
  wire  _T_319; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66848.8]
  wire  _T_320; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66849.8]
  wire  _T_321; // @[Monitor.scala 127:25:chipyard.TestHarness.RocketConfig.fir@66855.6]
  wire  _T_339; // @[Bundles.scala 140:33:chipyard.TestHarness.RocketConfig.fir@66886.8]
  wire  _T_341; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66888.8]
  wire  _T_342; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66889.8]
  wire  _T_347; // @[Monitor.scala 135:25:chipyard.TestHarness.RocketConfig.fir@66903.6]
  wire  _T_365; // @[Bundles.scala 147:30:chipyard.TestHarness.RocketConfig.fir@66934.8]
  wire  _T_367; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66936.8]
  wire  _T_368; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66937.8]
  wire  _T_373; // @[Monitor.scala 143:25:chipyard.TestHarness.RocketConfig.fir@66951.6]
  wire  _T_391; // @[Bundles.scala 160:28:chipyard.TestHarness.RocketConfig.fir@66982.8]
  wire  _T_393; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66984.8]
  wire  _T_394; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66985.8]
  wire  _T_403; // @[Bundles.scala 44:24:chipyard.TestHarness.RocketConfig.fir@67009.6]
  wire  _T_405; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@67011.6]
  wire  _T_406; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@67012.6]
  wire  _T_407; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@67017.6]
  wire  _T_408; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@67018.6]
  wire  _T_409; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@67019.6]
  wire  _T_410; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@67020.6]
  wire  _T_412; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@67027.6]
  wire  _T_413; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@67028.6]
  wire  _T_414; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@67029.6]
  wire  _T_416; // @[Monitor.scala 307:25:chipyard.TestHarness.RocketConfig.fir@67031.6]
  wire  _T_418; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@67034.8]
  wire  _T_419; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@67035.8]
  wire  _T_420; // @[Monitor.scala 309:27:chipyard.TestHarness.RocketConfig.fir@67040.8]
  wire  _T_422; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@67042.8]
  wire  _T_423; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@67043.8]
  wire  _T_436; // @[Monitor.scala 315:25:chipyard.TestHarness.RocketConfig.fir@67073.6]
  wire  _T_464; // @[Monitor.scala 325:25:chipyard.TestHarness.RocketConfig.fir@67131.6]
  wire  _T_493; // @[Monitor.scala 335:25:chipyard.TestHarness.RocketConfig.fir@67190.6]
  wire  _T_510; // @[Monitor.scala 343:25:chipyard.TestHarness.RocketConfig.fir@67225.6]
  wire  _T_528; // @[Monitor.scala 351:25:chipyard.TestHarness.RocketConfig.fir@67261.6]
  wire  _T_560; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@67327.4]
  wire  _T_567; // @[Edges.scala 93:28:chipyard.TestHarness.RocketConfig.fir@67334.4]
  reg [2:0] _T_569; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@67336.4]
  reg [31:0] _RAND_0;
  wire [2:0] _T_571; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@67338.4]
  wire  _T_572; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@67339.4]
  reg [2:0] _T_580; // @[Monitor.scala 381:22:chipyard.TestHarness.RocketConfig.fir@67350.4]
  reg [31:0] _RAND_1;
  reg [2:0] _T_581; // @[Monitor.scala 382:22:chipyard.TestHarness.RocketConfig.fir@67351.4]
  reg [31:0] _RAND_2;
  reg [2:0] _T_582; // @[Monitor.scala 383:22:chipyard.TestHarness.RocketConfig.fir@67352.4]
  reg [31:0] _RAND_3;
  reg [2:0] _T_583; // @[Monitor.scala 384:22:chipyard.TestHarness.RocketConfig.fir@67353.4]
  reg [31:0] _RAND_4;
  reg [11:0] _T_584; // @[Monitor.scala 385:22:chipyard.TestHarness.RocketConfig.fir@67354.4]
  reg [31:0] _RAND_5;
  wire  _T_585; // @[Monitor.scala 386:22:chipyard.TestHarness.RocketConfig.fir@67355.4]
  wire  _T_586; // @[Monitor.scala 386:19:chipyard.TestHarness.RocketConfig.fir@67356.4]
  wire  _T_587; // @[Monitor.scala 387:32:chipyard.TestHarness.RocketConfig.fir@67358.6]
  wire  _T_589; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@67360.6]
  wire  _T_590; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@67361.6]
  wire  _T_591; // @[Monitor.scala 388:32:chipyard.TestHarness.RocketConfig.fir@67366.6]
  wire  _T_593; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@67368.6]
  wire  _T_594; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@67369.6]
  wire  _T_595; // @[Monitor.scala 389:32:chipyard.TestHarness.RocketConfig.fir@67374.6]
  wire  _T_597; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@67376.6]
  wire  _T_598; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@67377.6]
  wire  _T_599; // @[Monitor.scala 390:32:chipyard.TestHarness.RocketConfig.fir@67382.6]
  wire  _T_601; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@67384.6]
  wire  _T_602; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@67385.6]
  wire  _T_603; // @[Monitor.scala 391:32:chipyard.TestHarness.RocketConfig.fir@67390.6]
  wire  _T_605; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@67392.6]
  wire  _T_606; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@67393.6]
  wire  _T_608; // @[Monitor.scala 393:20:chipyard.TestHarness.RocketConfig.fir@67400.4]
  wire  _T_609; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@67408.4]
  wire [12:0] _T_611; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@67410.4]
  wire [5:0] _T_613; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@67412.4]
  reg [2:0] _T_617; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@67416.4]
  reg [31:0] _RAND_6;
  wire [2:0] _T_619; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@67418.4]
  wire  _T_620; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@67419.4]
  reg [2:0] _T_628; // @[Monitor.scala 532:22:chipyard.TestHarness.RocketConfig.fir@67430.4]
  reg [31:0] _RAND_7;
  reg [2:0] _T_630; // @[Monitor.scala 534:22:chipyard.TestHarness.RocketConfig.fir@67432.4]
  reg [31:0] _RAND_8;
  reg [2:0] _T_631; // @[Monitor.scala 535:22:chipyard.TestHarness.RocketConfig.fir@67433.4]
  reg [31:0] _RAND_9;
  wire  _T_634; // @[Monitor.scala 538:22:chipyard.TestHarness.RocketConfig.fir@67436.4]
  wire  _T_635; // @[Monitor.scala 538:19:chipyard.TestHarness.RocketConfig.fir@67437.4]
  wire  _T_636; // @[Monitor.scala 539:29:chipyard.TestHarness.RocketConfig.fir@67439.6]
  wire  _T_638; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@67441.6]
  wire  _T_639; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@67442.6]
  wire  _T_644; // @[Monitor.scala 541:29:chipyard.TestHarness.RocketConfig.fir@67455.6]
  wire  _T_646; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@67457.6]
  wire  _T_647; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@67458.6]
  wire  _T_648; // @[Monitor.scala 542:29:chipyard.TestHarness.RocketConfig.fir@67463.6]
  wire  _T_650; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@67465.6]
  wire  _T_651; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@67466.6]
  wire  _T_661; // @[Monitor.scala 546:20:chipyard.TestHarness.RocketConfig.fir@67489.4]
  reg [4:0] inflight; // @[Monitor.scala 608:27:chipyard.TestHarness.RocketConfig.fir@67498.4]
  reg [31:0] _RAND_10;
  reg [19:0] inflight_opcodes; // @[Monitor.scala 610:35:chipyard.TestHarness.RocketConfig.fir@67499.4]
  reg [31:0] _RAND_11;
  reg [19:0] inflight_sizes; // @[Monitor.scala 612:33:chipyard.TestHarness.RocketConfig.fir@67500.4]
  reg [31:0] _RAND_12;
  reg [2:0] _T_671; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@67510.4]
  reg [31:0] _RAND_13;
  wire [2:0] _T_673; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@67512.4]
  wire  a_first; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@67513.4]
  reg [2:0] _T_689; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@67532.4]
  reg [31:0] _RAND_14;
  wire [2:0] _T_691; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@67534.4]
  wire  d_first; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@67535.4]
  wire [4:0] _GEN_57; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@67554.4]
  wire [5:0] _T_699; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@67554.4]
  wire [19:0] _T_700; // @[Monitor.scala 629:44:chipyard.TestHarness.RocketConfig.fir@67555.4]
  wire [15:0] _T_704; // @[Monitor.scala 606:57:chipyard.TestHarness.RocketConfig.fir@67559.4]
  wire [19:0] _GEN_58; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@67560.4]
  wire [19:0] _T_705; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@67560.4]
  wire [19:0] _T_706; // @[Monitor.scala 629:152:chipyard.TestHarness.RocketConfig.fir@67561.4]
  wire [19:0] _T_708; // @[Monitor.scala 633:40:chipyard.TestHarness.RocketConfig.fir@67566.4]
  wire [19:0] _T_713; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@67571.4]
  wire [19:0] _T_714; // @[Monitor.scala 633:144:chipyard.TestHarness.RocketConfig.fir@67572.4]
  wire  _T_718; // @[Monitor.scala 643:27:chipyard.TestHarness.RocketConfig.fir@67597.4]
  wire [7:0] _T_720; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@67600.6]
  wire [3:0] _T_721; // @[Monitor.scala 645:53:chipyard.TestHarness.RocketConfig.fir@67602.6]
  wire [3:0] _T_722; // @[Monitor.scala 645:61:chipyard.TestHarness.RocketConfig.fir@67603.6]
  wire [3:0] _T_723; // @[Monitor.scala 646:49:chipyard.TestHarness.RocketConfig.fir@67605.6]
  wire [3:0] _T_724; // @[Monitor.scala 646:57:chipyard.TestHarness.RocketConfig.fir@67606.6]
  wire [4:0] _GEN_63; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@67608.6]
  wire [5:0] _T_725; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@67608.6]
  wire [3:0] a_opcodes_set_interm; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@67599.4]
  wire [66:0] _GEN_64; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@67609.6]
  wire [66:0] _T_726; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@67609.6]
  wire [3:0] a_sizes_set_interm; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@67599.4]
  wire [66:0] _GEN_66; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@67612.6]
  wire [66:0] _T_728; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@67612.6]
  wire [4:0] _T_729; // @[Monitor.scala 649:26:chipyard.TestHarness.RocketConfig.fir@67614.6]
  wire  _T_731; // @[Monitor.scala 649:17:chipyard.TestHarness.RocketConfig.fir@67616.6]
  wire  _T_733; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@67618.6]
  wire  _T_734; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@67619.6]
  wire [7:0] _GEN_15; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@67599.4]
  wire [66:0] _GEN_18; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@67599.4]
  wire [66:0] _GEN_19; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@67599.4]
  wire  _T_737; // @[Monitor.scala 660:27:chipyard.TestHarness.RocketConfig.fir@67633.4]
  wire  _T_739; // @[Monitor.scala 660:75:chipyard.TestHarness.RocketConfig.fir@67635.4]
  wire  _T_740; // @[Monitor.scala 660:72:chipyard.TestHarness.RocketConfig.fir@67636.4]
  wire [7:0] _T_741; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@67638.6]
  wire [78:0] _GEN_68; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@67645.6]
  wire [78:0] _T_747; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@67645.6]
  wire [7:0] _GEN_20; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@67637.4]
  wire [78:0] _GEN_21; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@67637.4]
  wire  _T_754; // @[Monitor.scala 665:26:chipyard.TestHarness.RocketConfig.fir@67655.4]
  wire  _T_757; // @[Monitor.scala 665:71:chipyard.TestHarness.RocketConfig.fir@67658.4]
  wire [4:0] _T_758; // @[Monitor.scala 666:25:chipyard.TestHarness.RocketConfig.fir@67660.6]
  wire  _T_760; // @[Monitor.scala 666:93:chipyard.TestHarness.RocketConfig.fir@67662.6]
  wire  _T_761; // @[Monitor.scala 666:68:chipyard.TestHarness.RocketConfig.fir@67663.6]
  wire  _T_762; // @[Monitor.scala 666:142:chipyard.TestHarness.RocketConfig.fir@67664.6]
  wire  _T_763; // @[Monitor.scala 666:119:chipyard.TestHarness.RocketConfig.fir@67665.6]
  wire  _T_764; // @[Monitor.scala 666:166:chipyard.TestHarness.RocketConfig.fir@67666.6]
  wire  _T_765; // @[Monitor.scala 666:49:chipyard.TestHarness.RocketConfig.fir@67667.6]
  wire  _T_767; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@67669.6]
  wire  _T_768; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@67670.6]
  wire [3:0] a_opcode_lookup; // @[:chipyard.TestHarness.RocketConfig.fir@67552.4 :chipyard.TestHarness.RocketConfig.fir@67553.4 Monitor.scala 629:21:chipyard.TestHarness.RocketConfig.fir@67562.4]
  wire [2:0] _GEN_25; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@67676.6]
  wire [2:0] _GEN_26; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@67676.6]
  wire [2:0] _GEN_27; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@67676.6]
  wire [2:0] _GEN_28; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@67676.6]
  wire [2:0] _GEN_29; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@67676.6]
  wire [2:0] _GEN_30; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@67676.6]
  wire  _T_770; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@67676.6]
  wire [2:0] _GEN_37; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@67678.6]
  wire [2:0] _GEN_38; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@67678.6]
  wire  _T_772; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@67678.6]
  wire  _T_773; // @[Monitor.scala 667:71:chipyard.TestHarness.RocketConfig.fir@67679.6]
  wire [2:0] _GEN_41; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@67680.6]
  wire [2:0] _GEN_42; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@67680.6]
  wire [2:0] _GEN_43; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@67680.6]
  wire [2:0] _GEN_44; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@67680.6]
  wire [2:0] _GEN_45; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@67680.6]
  wire [2:0] _GEN_46; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@67680.6]
  wire  _T_774; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@67680.6]
  wire [2:0] _GEN_53; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@67681.6]
  wire [2:0] _GEN_54; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@67681.6]
  wire  _T_775; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@67681.6]
  wire  _T_776; // @[Monitor.scala 668:99:chipyard.TestHarness.RocketConfig.fir@67682.6]
  wire  _T_777; // @[Monitor.scala 668:34:chipyard.TestHarness.RocketConfig.fir@67683.6]
  wire  _T_778; // @[Monitor.scala 668:15:chipyard.TestHarness.RocketConfig.fir@67684.6]
  wire  _T_780; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@67686.6]
  wire  _T_781; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@67687.6]
  wire [3:0] a_size_lookup; // @[:chipyard.TestHarness.RocketConfig.fir@67563.4 :chipyard.TestHarness.RocketConfig.fir@67564.4 Monitor.scala 633:19:chipyard.TestHarness.RocketConfig.fir@67573.4]
  wire [3:0] _GEN_71; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@67692.6]
  wire  _T_782; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@67692.6]
  wire  _T_784; // @[Monitor.scala 670:72:chipyard.TestHarness.RocketConfig.fir@67694.6]
  wire  _T_785; // @[Monitor.scala 670:53:chipyard.TestHarness.RocketConfig.fir@67695.6]
  wire  _T_787; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@67697.6]
  wire  _T_788; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@67698.6]
  wire  _T_790; // @[Monitor.scala 672:36:chipyard.TestHarness.RocketConfig.fir@67705.4]
  wire  _T_791; // @[Monitor.scala 672:47:chipyard.TestHarness.RocketConfig.fir@67706.4]
  wire  _T_793; // @[Monitor.scala 672:65:chipyard.TestHarness.RocketConfig.fir@67708.4]
  wire  _T_795; // @[Monitor.scala 672:116:chipyard.TestHarness.RocketConfig.fir@67710.4]
  wire  _T_796; // @[Monitor.scala 673:15:chipyard.TestHarness.RocketConfig.fir@67712.6]
  wire  _T_797; // @[Monitor.scala 673:32:chipyard.TestHarness.RocketConfig.fir@67713.6]
  wire  _T_799; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@67715.6]
  wire  _T_800; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@67716.6]
  wire [4:0] a_set; // @[:chipyard.TestHarness.RocketConfig.fir@67546.4 :chipyard.TestHarness.RocketConfig.fir@67547.4 Monitor.scala 644:13:chipyard.TestHarness.RocketConfig.fir@67601.6]
  wire [4:0] _T_801; // @[Monitor.scala 680:27:chipyard.TestHarness.RocketConfig.fir@67722.4]
  wire [4:0] d_clr; // @[:chipyard.TestHarness.RocketConfig.fir@67625.4 :chipyard.TestHarness.RocketConfig.fir@67626.4 Monitor.scala 661:13:chipyard.TestHarness.RocketConfig.fir@67639.6]
  wire [4:0] _T_802; // @[Monitor.scala 680:38:chipyard.TestHarness.RocketConfig.fir@67723.4]
  wire [4:0] _T_803; // @[Monitor.scala 680:36:chipyard.TestHarness.RocketConfig.fir@67724.4]
  wire [19:0] a_opcodes_set; // @[:chipyard.TestHarness.RocketConfig.fir@67548.4 :chipyard.TestHarness.RocketConfig.fir@67549.4 Monitor.scala 647:21:chipyard.TestHarness.RocketConfig.fir@67610.6]
  wire [19:0] _T_804; // @[Monitor.scala 681:43:chipyard.TestHarness.RocketConfig.fir@67726.4]
  wire [19:0] d_opcodes_clr; // @[:chipyard.TestHarness.RocketConfig.fir@67627.4 :chipyard.TestHarness.RocketConfig.fir@67628.4 Monitor.scala 662:21:chipyard.TestHarness.RocketConfig.fir@67646.6]
  wire [19:0] _T_805; // @[Monitor.scala 681:62:chipyard.TestHarness.RocketConfig.fir@67727.4]
  wire [19:0] _T_806; // @[Monitor.scala 681:60:chipyard.TestHarness.RocketConfig.fir@67728.4]
  wire [19:0] a_sizes_set; // @[:chipyard.TestHarness.RocketConfig.fir@67550.4 :chipyard.TestHarness.RocketConfig.fir@67551.4 Monitor.scala 648:19:chipyard.TestHarness.RocketConfig.fir@67613.6]
  wire [19:0] _T_807; // @[Monitor.scala 682:39:chipyard.TestHarness.RocketConfig.fir@67730.4]
  wire [19:0] _T_809; // @[Monitor.scala 682:54:chipyard.TestHarness.RocketConfig.fir@67732.4]
  reg [31:0] _T_810; // @[Monitor.scala 684:27:chipyard.TestHarness.RocketConfig.fir@67734.4]
  reg [31:0] _RAND_15;
  wire  _T_811; // @[Monitor.scala 687:26:chipyard.TestHarness.RocketConfig.fir@67737.4]
  wire  _T_812; // @[Monitor.scala 687:16:chipyard.TestHarness.RocketConfig.fir@67738.4]
  wire  _T_813; // @[Monitor.scala 687:39:chipyard.TestHarness.RocketConfig.fir@67739.4]
  wire  _T_814; // @[Monitor.scala 687:30:chipyard.TestHarness.RocketConfig.fir@67740.4]
  wire  _T_815; // @[Monitor.scala 687:59:chipyard.TestHarness.RocketConfig.fir@67741.4]
  wire  _T_816; // @[Monitor.scala 687:47:chipyard.TestHarness.RocketConfig.fir@67742.4]
  wire  _T_818; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@67744.4]
  wire  _T_819; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@67745.4]
  wire [31:0] _T_821; // @[Monitor.scala 689:26:chipyard.TestHarness.RocketConfig.fir@67751.4]
  wire  _T_824; // @[Monitor.scala 690:27:chipyard.TestHarness.RocketConfig.fir@67755.4]
  wire  _GEN_72; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66514.10]
  wire  _GEN_88; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66606.10]
  wire  _GEN_106; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66709.10]
  wire  _GEN_118; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66768.10]
  wire  _GEN_128; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66819.10]
  wire  _GEN_138; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66869.10]
  wire  _GEN_148; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66917.10]
  wire  _GEN_158; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66965.10]
  wire  _GEN_170; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@67037.10]
  wire  _GEN_174; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@67079.10]
  wire  _GEN_180; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@67137.10]
  wire  _GEN_186; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@67196.10]
  wire  _GEN_188; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@67231.10]
  wire  _GEN_190; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@67267.10]
  plusarg_reader #(.FORMAT("tilelink_timeout=%d"), .DEFAULT(0), .WIDTH(32)) plusarg_reader ( // @[PlusArg.scala 44:11:chipyard.TestHarness.RocketConfig.fir@67735.4]
    .out(plusarg_reader_out)
  );
  assign _T_4 = io_in_a_bits_source == 3'h4; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@66375.6]
  assign _T_5 = io_in_a_bits_source == 3'h0; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@66376.6]
  assign _T_6 = io_in_a_bits_source == 3'h1; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@66377.6]
  assign _T_7 = io_in_a_bits_source == 3'h2; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@66378.6]
  assign _T_9 = _T_4 | _T_5; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@66385.6]
  assign _T_10 = _T_9 | _T_6; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@66386.6]
  assign _T_11 = _T_10 | _T_7; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@66387.6]
  assign _T_13 = 13'h3f << io_in_a_bits_size; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@66389.6]
  assign _T_15 = ~_T_13[5:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@66391.6]
  assign _GEN_56 = {{6'd0}, _T_15}; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@66392.6]
  assign _T_16 = io_in_a_bits_address & _GEN_56; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@66392.6]
  assign _T_17 = _T_16 == 12'h0; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@66393.6]
  assign _T_20 = 4'h1 << io_in_a_bits_size[1:0]; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@66396.6]
  assign _T_22 = _T_20[2:0] | 3'h1; // @[Misc.scala 201:81:chipyard.TestHarness.RocketConfig.fir@66398.6]
  assign _T_23 = io_in_a_bits_size >= 3'h3; // @[Misc.scala 205:21:chipyard.TestHarness.RocketConfig.fir@66399.6]
  assign _T_26 = ~io_in_a_bits_address[2]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@66402.6]
  assign _T_28 = _T_22[2] & _T_26; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@66404.6]
  assign _T_29 = _T_23 | _T_28; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@66405.6]
  assign _T_31 = _T_22[2] & io_in_a_bits_address[2]; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@66407.6]
  assign _T_32 = _T_23 | _T_31; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@66408.6]
  assign _T_35 = ~io_in_a_bits_address[1]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@66411.6]
  assign _T_36 = _T_26 & _T_35; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@66412.6]
  assign _T_37 = _T_22[1] & _T_36; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@66413.6]
  assign _T_38 = _T_29 | _T_37; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@66414.6]
  assign _T_39 = _T_26 & io_in_a_bits_address[1]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@66415.6]
  assign _T_40 = _T_22[1] & _T_39; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@66416.6]
  assign _T_41 = _T_29 | _T_40; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@66417.6]
  assign _T_42 = io_in_a_bits_address[2] & _T_35; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@66418.6]
  assign _T_43 = _T_22[1] & _T_42; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@66419.6]
  assign _T_44 = _T_32 | _T_43; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@66420.6]
  assign _T_45 = io_in_a_bits_address[2] & io_in_a_bits_address[1]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@66421.6]
  assign _T_46 = _T_22[1] & _T_45; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@66422.6]
  assign _T_47 = _T_32 | _T_46; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@66423.6]
  assign _T_50 = ~io_in_a_bits_address[0]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@66426.6]
  assign _T_51 = _T_36 & _T_50; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@66427.6]
  assign _T_52 = _T_22[0] & _T_51; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@66428.6]
  assign _T_53 = _T_38 | _T_52; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@66429.6]
  assign _T_54 = _T_36 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@66430.6]
  assign _T_55 = _T_22[0] & _T_54; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@66431.6]
  assign _T_56 = _T_38 | _T_55; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@66432.6]
  assign _T_57 = _T_39 & _T_50; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@66433.6]
  assign _T_58 = _T_22[0] & _T_57; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@66434.6]
  assign _T_59 = _T_41 | _T_58; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@66435.6]
  assign _T_60 = _T_39 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@66436.6]
  assign _T_61 = _T_22[0] & _T_60; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@66437.6]
  assign _T_62 = _T_41 | _T_61; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@66438.6]
  assign _T_63 = _T_42 & _T_50; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@66439.6]
  assign _T_64 = _T_22[0] & _T_63; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@66440.6]
  assign _T_65 = _T_44 | _T_64; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@66441.6]
  assign _T_66 = _T_42 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@66442.6]
  assign _T_67 = _T_22[0] & _T_66; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@66443.6]
  assign _T_68 = _T_44 | _T_67; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@66444.6]
  assign _T_69 = _T_45 & _T_50; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@66445.6]
  assign _T_70 = _T_22[0] & _T_69; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@66446.6]
  assign _T_71 = _T_47 | _T_70; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@66447.6]
  assign _T_72 = _T_45 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@66448.6]
  assign _T_73 = _T_22[0] & _T_72; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@66449.6]
  assign _T_74 = _T_47 | _T_73; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@66450.6]
  assign _T_81 = {_T_74,_T_71,_T_68,_T_65,_T_62,_T_59,_T_56,_T_53}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@66457.6]
  assign _T_85 = {1'b0,$signed(io_in_a_bits_address)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@66461.6]
  assign _T_120 = io_in_a_bits_opcode == 3'h6; // @[Monitor.scala 79:25:chipyard.TestHarness.RocketConfig.fir@66500.6]
  assign _T_125 = $signed(_T_85) & -13'sh1000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@66506.8]
  assign _T_126 = $signed(_T_125) == 13'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@66507.8]
  assign _T_131 = ~reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66512.8]
  assign _T_137 = 3'h6 == io_in_a_bits_size; // @[Parameters.scala 92:48:chipyard.TestHarness.RocketConfig.fir@66527.8]
  assign _T_139 = _T_5 & _T_137; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@66529.8]
  assign _T_147 = _T_139 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66538.8]
  assign _T_148 = ~_T_147; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66539.8]
  assign _T_150 = _T_11 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66545.8]
  assign _T_151 = ~_T_150; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66546.8]
  assign _T_154 = _T_23 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66553.8]
  assign _T_155 = ~_T_154; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66554.8]
  assign _T_157 = _T_17 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66560.8]
  assign _T_158 = ~_T_157; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66561.8]
  assign _T_159 = io_in_a_bits_param <= 3'h2; // @[Bundles.scala 110:27:chipyard.TestHarness.RocketConfig.fir@66566.8]
  assign _T_161 = _T_159 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66568.8]
  assign _T_162 = ~_T_161; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66569.8]
  assign _T_163 = ~io_in_a_bits_mask; // @[Monitor.scala 86:18:chipyard.TestHarness.RocketConfig.fir@66574.8]
  assign _T_164 = _T_163 == 8'h0; // @[Monitor.scala 86:31:chipyard.TestHarness.RocketConfig.fir@66575.8]
  assign _T_166 = _T_164 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66577.8]
  assign _T_167 = ~_T_166; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66578.8]
  assign _T_168 = ~io_in_a_bits_corrupt; // @[Monitor.scala 87:18:chipyard.TestHarness.RocketConfig.fir@66583.8]
  assign _T_170 = _T_168 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66585.8]
  assign _T_171 = ~_T_170; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66586.8]
  assign _T_172 = io_in_a_bits_opcode == 3'h7; // @[Monitor.scala 90:25:chipyard.TestHarness.RocketConfig.fir@66592.6]
  assign _T_215 = io_in_a_bits_param != 3'h0; // @[Monitor.scala 97:31:chipyard.TestHarness.RocketConfig.fir@66666.8]
  assign _T_217 = _T_215 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66668.8]
  assign _T_218 = ~_T_217; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66669.8]
  assign _T_228 = io_in_a_bits_opcode == 3'h4; // @[Monitor.scala 102:25:chipyard.TestHarness.RocketConfig.fir@66692.6]
  assign _T_230 = io_in_a_bits_size <= 3'h6; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@66695.8]
  assign _T_238 = _T_230 & _T_126; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@66703.8]
  assign _T_241 = _T_238 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66706.8]
  assign _T_242 = ~_T_241; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66707.8]
  assign _T_249 = io_in_a_bits_param == 3'h0; // @[Monitor.scala 106:31:chipyard.TestHarness.RocketConfig.fir@66726.8]
  assign _T_251 = _T_249 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66728.8]
  assign _T_252 = ~_T_251; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66729.8]
  assign _T_253 = io_in_a_bits_mask == _T_81; // @[Monitor.scala 107:30:chipyard.TestHarness.RocketConfig.fir@66734.8]
  assign _T_255 = _T_253 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66736.8]
  assign _T_256 = ~_T_255; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66737.8]
  assign _T_261 = io_in_a_bits_opcode == 3'h0; // @[Monitor.scala 111:25:chipyard.TestHarness.RocketConfig.fir@66751.6]
  assign _T_290 = io_in_a_bits_opcode == 3'h1; // @[Monitor.scala 119:25:chipyard.TestHarness.RocketConfig.fir@66802.6]
  assign _T_315 = ~_T_81; // @[Monitor.scala 124:33:chipyard.TestHarness.RocketConfig.fir@66844.8]
  assign _T_316 = io_in_a_bits_mask & _T_315; // @[Monitor.scala 124:31:chipyard.TestHarness.RocketConfig.fir@66845.8]
  assign _T_317 = _T_316 == 8'h0; // @[Monitor.scala 124:40:chipyard.TestHarness.RocketConfig.fir@66846.8]
  assign _T_319 = _T_317 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66848.8]
  assign _T_320 = ~_T_319; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66849.8]
  assign _T_321 = io_in_a_bits_opcode == 3'h2; // @[Monitor.scala 127:25:chipyard.TestHarness.RocketConfig.fir@66855.6]
  assign _T_339 = io_in_a_bits_param <= 3'h4; // @[Bundles.scala 140:33:chipyard.TestHarness.RocketConfig.fir@66886.8]
  assign _T_341 = _T_339 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66888.8]
  assign _T_342 = ~_T_341; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66889.8]
  assign _T_347 = io_in_a_bits_opcode == 3'h3; // @[Monitor.scala 135:25:chipyard.TestHarness.RocketConfig.fir@66903.6]
  assign _T_365 = io_in_a_bits_param <= 3'h3; // @[Bundles.scala 147:30:chipyard.TestHarness.RocketConfig.fir@66934.8]
  assign _T_367 = _T_365 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66936.8]
  assign _T_368 = ~_T_367; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66937.8]
  assign _T_373 = io_in_a_bits_opcode == 3'h5; // @[Monitor.scala 143:25:chipyard.TestHarness.RocketConfig.fir@66951.6]
  assign _T_391 = io_in_a_bits_param <= 3'h1; // @[Bundles.scala 160:28:chipyard.TestHarness.RocketConfig.fir@66982.8]
  assign _T_393 = _T_391 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66984.8]
  assign _T_394 = ~_T_393; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66985.8]
  assign _T_403 = io_in_d_bits_opcode <= 3'h6; // @[Bundles.scala 44:24:chipyard.TestHarness.RocketConfig.fir@67009.6]
  assign _T_405 = _T_403 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@67011.6]
  assign _T_406 = ~_T_405; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@67012.6]
  assign _T_407 = io_in_d_bits_source == 3'h4; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@67017.6]
  assign _T_408 = io_in_d_bits_source == 3'h0; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@67018.6]
  assign _T_409 = io_in_d_bits_source == 3'h1; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@67019.6]
  assign _T_410 = io_in_d_bits_source == 3'h2; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@67020.6]
  assign _T_412 = _T_407 | _T_408; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@67027.6]
  assign _T_413 = _T_412 | _T_409; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@67028.6]
  assign _T_414 = _T_413 | _T_410; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@67029.6]
  assign _T_416 = io_in_d_bits_opcode == 3'h6; // @[Monitor.scala 307:25:chipyard.TestHarness.RocketConfig.fir@67031.6]
  assign _T_418 = _T_414 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@67034.8]
  assign _T_419 = ~_T_418; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@67035.8]
  assign _T_420 = io_in_d_bits_size >= 3'h3; // @[Monitor.scala 309:27:chipyard.TestHarness.RocketConfig.fir@67040.8]
  assign _T_422 = _T_420 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@67042.8]
  assign _T_423 = ~_T_422; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@67043.8]
  assign _T_436 = io_in_d_bits_opcode == 3'h4; // @[Monitor.scala 315:25:chipyard.TestHarness.RocketConfig.fir@67073.6]
  assign _T_464 = io_in_d_bits_opcode == 3'h5; // @[Monitor.scala 325:25:chipyard.TestHarness.RocketConfig.fir@67131.6]
  assign _T_493 = io_in_d_bits_opcode == 3'h0; // @[Monitor.scala 335:25:chipyard.TestHarness.RocketConfig.fir@67190.6]
  assign _T_510 = io_in_d_bits_opcode == 3'h1; // @[Monitor.scala 343:25:chipyard.TestHarness.RocketConfig.fir@67225.6]
  assign _T_528 = io_in_d_bits_opcode == 3'h2; // @[Monitor.scala 351:25:chipyard.TestHarness.RocketConfig.fir@67261.6]
  assign _T_560 = io_in_a_ready & io_in_a_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@67327.4]
  assign _T_567 = ~io_in_a_bits_opcode[2]; // @[Edges.scala 93:28:chipyard.TestHarness.RocketConfig.fir@67334.4]
  assign _T_571 = _T_569 - 3'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@67338.4]
  assign _T_572 = _T_569 == 3'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@67339.4]
  assign _T_585 = ~_T_572; // @[Monitor.scala 386:22:chipyard.TestHarness.RocketConfig.fir@67355.4]
  assign _T_586 = io_in_a_valid & _T_585; // @[Monitor.scala 386:19:chipyard.TestHarness.RocketConfig.fir@67356.4]
  assign _T_587 = io_in_a_bits_opcode == _T_580; // @[Monitor.scala 387:32:chipyard.TestHarness.RocketConfig.fir@67358.6]
  assign _T_589 = _T_587 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@67360.6]
  assign _T_590 = ~_T_589; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@67361.6]
  assign _T_591 = io_in_a_bits_param == _T_581; // @[Monitor.scala 388:32:chipyard.TestHarness.RocketConfig.fir@67366.6]
  assign _T_593 = _T_591 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@67368.6]
  assign _T_594 = ~_T_593; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@67369.6]
  assign _T_595 = io_in_a_bits_size == _T_582; // @[Monitor.scala 389:32:chipyard.TestHarness.RocketConfig.fir@67374.6]
  assign _T_597 = _T_595 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@67376.6]
  assign _T_598 = ~_T_597; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@67377.6]
  assign _T_599 = io_in_a_bits_source == _T_583; // @[Monitor.scala 390:32:chipyard.TestHarness.RocketConfig.fir@67382.6]
  assign _T_601 = _T_599 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@67384.6]
  assign _T_602 = ~_T_601; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@67385.6]
  assign _T_603 = io_in_a_bits_address == _T_584; // @[Monitor.scala 391:32:chipyard.TestHarness.RocketConfig.fir@67390.6]
  assign _T_605 = _T_603 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@67392.6]
  assign _T_606 = ~_T_605; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@67393.6]
  assign _T_608 = _T_560 & _T_572; // @[Monitor.scala 393:20:chipyard.TestHarness.RocketConfig.fir@67400.4]
  assign _T_609 = io_in_d_ready & io_in_d_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@67408.4]
  assign _T_611 = 13'h3f << io_in_d_bits_size; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@67410.4]
  assign _T_613 = ~_T_611[5:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@67412.4]
  assign _T_619 = _T_617 - 3'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@67418.4]
  assign _T_620 = _T_617 == 3'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@67419.4]
  assign _T_634 = ~_T_620; // @[Monitor.scala 538:22:chipyard.TestHarness.RocketConfig.fir@67436.4]
  assign _T_635 = io_in_d_valid & _T_634; // @[Monitor.scala 538:19:chipyard.TestHarness.RocketConfig.fir@67437.4]
  assign _T_636 = io_in_d_bits_opcode == _T_628; // @[Monitor.scala 539:29:chipyard.TestHarness.RocketConfig.fir@67439.6]
  assign _T_638 = _T_636 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@67441.6]
  assign _T_639 = ~_T_638; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@67442.6]
  assign _T_644 = io_in_d_bits_size == _T_630; // @[Monitor.scala 541:29:chipyard.TestHarness.RocketConfig.fir@67455.6]
  assign _T_646 = _T_644 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@67457.6]
  assign _T_647 = ~_T_646; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@67458.6]
  assign _T_648 = io_in_d_bits_source == _T_631; // @[Monitor.scala 542:29:chipyard.TestHarness.RocketConfig.fir@67463.6]
  assign _T_650 = _T_648 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@67465.6]
  assign _T_651 = ~_T_650; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@67466.6]
  assign _T_661 = _T_609 & _T_620; // @[Monitor.scala 546:20:chipyard.TestHarness.RocketConfig.fir@67489.4]
  assign _T_673 = _T_671 - 3'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@67512.4]
  assign a_first = _T_671 == 3'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@67513.4]
  assign _T_691 = _T_689 - 3'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@67534.4]
  assign d_first = _T_689 == 3'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@67535.4]
  assign _GEN_57 = {io_in_d_bits_source, 2'h0}; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@67554.4]
  assign _T_699 = {{1'd0}, _GEN_57}; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@67554.4]
  assign _T_700 = inflight_opcodes >> _T_699; // @[Monitor.scala 629:44:chipyard.TestHarness.RocketConfig.fir@67555.4]
  assign _T_704 = 16'h10 - 16'h1; // @[Monitor.scala 606:57:chipyard.TestHarness.RocketConfig.fir@67559.4]
  assign _GEN_58 = {{4'd0}, _T_704}; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@67560.4]
  assign _T_705 = _T_700 & _GEN_58; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@67560.4]
  assign _T_706 = {{1'd0}, _T_705[19:1]}; // @[Monitor.scala 629:152:chipyard.TestHarness.RocketConfig.fir@67561.4]
  assign _T_708 = inflight_sizes >> _T_699; // @[Monitor.scala 633:40:chipyard.TestHarness.RocketConfig.fir@67566.4]
  assign _T_713 = _T_708 & _GEN_58; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@67571.4]
  assign _T_714 = {{1'd0}, _T_713[19:1]}; // @[Monitor.scala 633:144:chipyard.TestHarness.RocketConfig.fir@67572.4]
  assign _T_718 = _T_560 & a_first; // @[Monitor.scala 643:27:chipyard.TestHarness.RocketConfig.fir@67597.4]
  assign _T_720 = 8'h1 << io_in_a_bits_source; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@67600.6]
  assign _T_721 = {io_in_a_bits_opcode, 1'h0}; // @[Monitor.scala 645:53:chipyard.TestHarness.RocketConfig.fir@67602.6]
  assign _T_722 = _T_721 | 4'h1; // @[Monitor.scala 645:61:chipyard.TestHarness.RocketConfig.fir@67603.6]
  assign _T_723 = {io_in_a_bits_size, 1'h0}; // @[Monitor.scala 646:49:chipyard.TestHarness.RocketConfig.fir@67605.6]
  assign _T_724 = _T_723 | 4'h1; // @[Monitor.scala 646:57:chipyard.TestHarness.RocketConfig.fir@67606.6]
  assign _GEN_63 = {io_in_a_bits_source, 2'h0}; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@67608.6]
  assign _T_725 = {{1'd0}, _GEN_63}; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@67608.6]
  assign a_opcodes_set_interm = _T_718 ? _T_722 : 4'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@67599.4]
  assign _GEN_64 = {{63'd0}, a_opcodes_set_interm}; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@67609.6]
  assign _T_726 = _GEN_64 << _T_725; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@67609.6]
  assign a_sizes_set_interm = _T_718 ? _T_724 : 4'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@67599.4]
  assign _GEN_66 = {{63'd0}, a_sizes_set_interm}; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@67612.6]
  assign _T_728 = _GEN_66 << _T_725; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@67612.6]
  assign _T_729 = inflight >> io_in_a_bits_source; // @[Monitor.scala 649:26:chipyard.TestHarness.RocketConfig.fir@67614.6]
  assign _T_731 = ~_T_729[0]; // @[Monitor.scala 649:17:chipyard.TestHarness.RocketConfig.fir@67616.6]
  assign _T_733 = _T_731 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@67618.6]
  assign _T_734 = ~_T_733; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@67619.6]
  assign _GEN_15 = _T_718 ? _T_720 : 8'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@67599.4]
  assign _GEN_18 = _T_718 ? _T_726 : 67'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@67599.4]
  assign _GEN_19 = _T_718 ? _T_728 : 67'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@67599.4]
  assign _T_737 = _T_609 & d_first; // @[Monitor.scala 660:27:chipyard.TestHarness.RocketConfig.fir@67633.4]
  assign _T_739 = ~_T_416; // @[Monitor.scala 660:75:chipyard.TestHarness.RocketConfig.fir@67635.4]
  assign _T_740 = _T_737 & _T_739; // @[Monitor.scala 660:72:chipyard.TestHarness.RocketConfig.fir@67636.4]
  assign _T_741 = 8'h1 << io_in_d_bits_source; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@67638.6]
  assign _GEN_68 = {{63'd0}, _T_704}; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@67645.6]
  assign _T_747 = _GEN_68 << _T_699; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@67645.6]
  assign _GEN_20 = _T_740 ? _T_741 : 8'h0; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@67637.4]
  assign _GEN_21 = _T_740 ? _T_747 : 79'h0; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@67637.4]
  assign _T_754 = io_in_d_valid & d_first; // @[Monitor.scala 665:26:chipyard.TestHarness.RocketConfig.fir@67655.4]
  assign _T_757 = _T_754 & _T_739; // @[Monitor.scala 665:71:chipyard.TestHarness.RocketConfig.fir@67658.4]
  assign _T_758 = inflight >> io_in_d_bits_source; // @[Monitor.scala 666:25:chipyard.TestHarness.RocketConfig.fir@67660.6]
  assign _T_760 = io_in_a_bits_source == io_in_d_bits_source; // @[Monitor.scala 666:93:chipyard.TestHarness.RocketConfig.fir@67662.6]
  assign _T_761 = io_in_a_valid & _T_760; // @[Monitor.scala 666:68:chipyard.TestHarness.RocketConfig.fir@67663.6]
  assign _T_762 = io_in_a_bits_size == io_in_d_bits_size; // @[Monitor.scala 666:142:chipyard.TestHarness.RocketConfig.fir@67664.6]
  assign _T_763 = _T_761 & _T_762; // @[Monitor.scala 666:119:chipyard.TestHarness.RocketConfig.fir@67665.6]
  assign _T_764 = _T_763 & a_first; // @[Monitor.scala 666:166:chipyard.TestHarness.RocketConfig.fir@67666.6]
  assign _T_765 = _T_758[0] | _T_764; // @[Monitor.scala 666:49:chipyard.TestHarness.RocketConfig.fir@67667.6]
  assign _T_767 = _T_765 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@67669.6]
  assign _T_768 = ~_T_767; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@67670.6]
  assign a_opcode_lookup = _T_706[3:0]; // @[:chipyard.TestHarness.RocketConfig.fir@67552.4 :chipyard.TestHarness.RocketConfig.fir@67553.4 Monitor.scala 629:21:chipyard.TestHarness.RocketConfig.fir@67562.4]
  assign _GEN_25 = 3'h2 == a_opcode_lookup[2:0] ? 3'h1 : 3'h0; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@67676.6]
  assign _GEN_26 = 3'h3 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_25; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@67676.6]
  assign _GEN_27 = 3'h4 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_26; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@67676.6]
  assign _GEN_28 = 3'h5 == a_opcode_lookup[2:0] ? 3'h2 : _GEN_27; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@67676.6]
  assign _GEN_29 = 3'h6 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_28; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@67676.6]
  assign _GEN_30 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_29; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@67676.6]
  assign _T_770 = io_in_d_bits_opcode == _GEN_30; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@67676.6]
  assign _GEN_37 = 3'h6 == a_opcode_lookup[2:0] ? 3'h5 : _GEN_28; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@67678.6]
  assign _GEN_38 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_37; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@67678.6]
  assign _T_772 = io_in_d_bits_opcode == _GEN_38; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@67678.6]
  assign _T_773 = _T_770 | _T_772; // @[Monitor.scala 667:71:chipyard.TestHarness.RocketConfig.fir@67679.6]
  assign _GEN_41 = 3'h2 == io_in_a_bits_opcode ? 3'h1 : 3'h0; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@67680.6]
  assign _GEN_42 = 3'h3 == io_in_a_bits_opcode ? 3'h1 : _GEN_41; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@67680.6]
  assign _GEN_43 = 3'h4 == io_in_a_bits_opcode ? 3'h1 : _GEN_42; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@67680.6]
  assign _GEN_44 = 3'h5 == io_in_a_bits_opcode ? 3'h2 : _GEN_43; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@67680.6]
  assign _GEN_45 = 3'h6 == io_in_a_bits_opcode ? 3'h4 : _GEN_44; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@67680.6]
  assign _GEN_46 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_45; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@67680.6]
  assign _T_774 = io_in_d_bits_opcode == _GEN_46; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@67680.6]
  assign _GEN_53 = 3'h6 == io_in_a_bits_opcode ? 3'h5 : _GEN_44; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@67681.6]
  assign _GEN_54 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_53; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@67681.6]
  assign _T_775 = io_in_d_bits_opcode == _GEN_54; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@67681.6]
  assign _T_776 = _T_774 | _T_775; // @[Monitor.scala 668:99:chipyard.TestHarness.RocketConfig.fir@67682.6]
  assign _T_777 = io_in_a_valid & _T_776; // @[Monitor.scala 668:34:chipyard.TestHarness.RocketConfig.fir@67683.6]
  assign _T_778 = _T_773 | _T_777; // @[Monitor.scala 668:15:chipyard.TestHarness.RocketConfig.fir@67684.6]
  assign _T_780 = _T_778 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@67686.6]
  assign _T_781 = ~_T_780; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@67687.6]
  assign a_size_lookup = _T_714[3:0]; // @[:chipyard.TestHarness.RocketConfig.fir@67563.4 :chipyard.TestHarness.RocketConfig.fir@67564.4 Monitor.scala 633:19:chipyard.TestHarness.RocketConfig.fir@67573.4]
  assign _GEN_71 = {{1'd0}, io_in_d_bits_size}; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@67692.6]
  assign _T_782 = _GEN_71 == a_size_lookup; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@67692.6]
  assign _T_784 = io_in_a_valid & _T_762; // @[Monitor.scala 670:72:chipyard.TestHarness.RocketConfig.fir@67694.6]
  assign _T_785 = _T_782 | _T_784; // @[Monitor.scala 670:53:chipyard.TestHarness.RocketConfig.fir@67695.6]
  assign _T_787 = _T_785 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@67697.6]
  assign _T_788 = ~_T_787; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@67698.6]
  assign _T_790 = _T_754 & a_first; // @[Monitor.scala 672:36:chipyard.TestHarness.RocketConfig.fir@67705.4]
  assign _T_791 = _T_790 & io_in_a_valid; // @[Monitor.scala 672:47:chipyard.TestHarness.RocketConfig.fir@67706.4]
  assign _T_793 = _T_791 & _T_760; // @[Monitor.scala 672:65:chipyard.TestHarness.RocketConfig.fir@67708.4]
  assign _T_795 = _T_793 & _T_739; // @[Monitor.scala 672:116:chipyard.TestHarness.RocketConfig.fir@67710.4]
  assign _T_796 = ~io_in_d_ready; // @[Monitor.scala 673:15:chipyard.TestHarness.RocketConfig.fir@67712.6]
  assign _T_797 = _T_796 | io_in_a_ready; // @[Monitor.scala 673:32:chipyard.TestHarness.RocketConfig.fir@67713.6]
  assign _T_799 = _T_797 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@67715.6]
  assign _T_800 = ~_T_799; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@67716.6]
  assign a_set = _GEN_15[4:0]; // @[:chipyard.TestHarness.RocketConfig.fir@67546.4 :chipyard.TestHarness.RocketConfig.fir@67547.4 Monitor.scala 644:13:chipyard.TestHarness.RocketConfig.fir@67601.6]
  assign _T_801 = inflight | a_set; // @[Monitor.scala 680:27:chipyard.TestHarness.RocketConfig.fir@67722.4]
  assign d_clr = _GEN_20[4:0]; // @[:chipyard.TestHarness.RocketConfig.fir@67625.4 :chipyard.TestHarness.RocketConfig.fir@67626.4 Monitor.scala 661:13:chipyard.TestHarness.RocketConfig.fir@67639.6]
  assign _T_802 = ~d_clr; // @[Monitor.scala 680:38:chipyard.TestHarness.RocketConfig.fir@67723.4]
  assign _T_803 = _T_801 & _T_802; // @[Monitor.scala 680:36:chipyard.TestHarness.RocketConfig.fir@67724.4]
  assign a_opcodes_set = _GEN_18[19:0]; // @[:chipyard.TestHarness.RocketConfig.fir@67548.4 :chipyard.TestHarness.RocketConfig.fir@67549.4 Monitor.scala 647:21:chipyard.TestHarness.RocketConfig.fir@67610.6]
  assign _T_804 = inflight_opcodes | a_opcodes_set; // @[Monitor.scala 681:43:chipyard.TestHarness.RocketConfig.fir@67726.4]
  assign d_opcodes_clr = _GEN_21[19:0]; // @[:chipyard.TestHarness.RocketConfig.fir@67627.4 :chipyard.TestHarness.RocketConfig.fir@67628.4 Monitor.scala 662:21:chipyard.TestHarness.RocketConfig.fir@67646.6]
  assign _T_805 = ~d_opcodes_clr; // @[Monitor.scala 681:62:chipyard.TestHarness.RocketConfig.fir@67727.4]
  assign _T_806 = _T_804 & _T_805; // @[Monitor.scala 681:60:chipyard.TestHarness.RocketConfig.fir@67728.4]
  assign a_sizes_set = _GEN_19[19:0]; // @[:chipyard.TestHarness.RocketConfig.fir@67550.4 :chipyard.TestHarness.RocketConfig.fir@67551.4 Monitor.scala 648:19:chipyard.TestHarness.RocketConfig.fir@67613.6]
  assign _T_807 = inflight_sizes | a_sizes_set; // @[Monitor.scala 682:39:chipyard.TestHarness.RocketConfig.fir@67730.4]
  assign _T_809 = _T_807 & _T_805; // @[Monitor.scala 682:54:chipyard.TestHarness.RocketConfig.fir@67732.4]
  assign _T_811 = |inflight; // @[Monitor.scala 687:26:chipyard.TestHarness.RocketConfig.fir@67737.4]
  assign _T_812 = ~_T_811; // @[Monitor.scala 687:16:chipyard.TestHarness.RocketConfig.fir@67738.4]
  assign _T_813 = plusarg_reader_out == 32'h0; // @[Monitor.scala 687:39:chipyard.TestHarness.RocketConfig.fir@67739.4]
  assign _T_814 = _T_812 | _T_813; // @[Monitor.scala 687:30:chipyard.TestHarness.RocketConfig.fir@67740.4]
  assign _T_815 = _T_810 < plusarg_reader_out; // @[Monitor.scala 687:59:chipyard.TestHarness.RocketConfig.fir@67741.4]
  assign _T_816 = _T_814 | _T_815; // @[Monitor.scala 687:47:chipyard.TestHarness.RocketConfig.fir@67742.4]
  assign _T_818 = _T_816 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@67744.4]
  assign _T_819 = ~_T_818; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@67745.4]
  assign _T_821 = _T_810 + 32'h1; // @[Monitor.scala 689:26:chipyard.TestHarness.RocketConfig.fir@67751.4]
  assign _T_824 = _T_560 | _T_609; // @[Monitor.scala 690:27:chipyard.TestHarness.RocketConfig.fir@67755.4]
  assign _GEN_72 = io_in_a_valid & _T_120; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66514.10]
  assign _GEN_88 = io_in_a_valid & _T_172; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66606.10]
  assign _GEN_106 = io_in_a_valid & _T_228; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66709.10]
  assign _GEN_118 = io_in_a_valid & _T_261; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66768.10]
  assign _GEN_128 = io_in_a_valid & _T_290; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66819.10]
  assign _GEN_138 = io_in_a_valid & _T_321; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66869.10]
  assign _GEN_148 = io_in_a_valid & _T_347; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66917.10]
  assign _GEN_158 = io_in_a_valid & _T_373; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66965.10]
  assign _GEN_170 = io_in_d_valid & _T_416; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@67037.10]
  assign _GEN_174 = io_in_d_valid & _T_436; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@67079.10]
  assign _GEN_180 = io_in_d_valid & _T_464; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@67137.10]
  assign _GEN_186 = io_in_d_valid & _T_493; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@67196.10]
  assign _GEN_188 = io_in_d_valid & _T_510; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@67231.10]
  assign _GEN_190 = io_in_d_valid & _T_528; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@67267.10]
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
  _T_569 = _RAND_0[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_580 = _RAND_1[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_581 = _RAND_2[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_582 = _RAND_3[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_583 = _RAND_4[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_584 = _RAND_5[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  _T_617 = _RAND_6[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  _T_628 = _RAND_7[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  _T_630 = _RAND_8[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  _T_631 = _RAND_9[2:0];
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
  _RAND_12 = {1{`RANDOM}};
  inflight_sizes = _RAND_12[19:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  _T_671 = _RAND_13[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  _T_689 = _RAND_14[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  _T_810 = _RAND_15[31:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      _T_569 <= 3'h0;
    end else if (_T_560) begin
      if (_T_572) begin
        if (_T_567) begin
          _T_569 <= _T_15[5:3];
        end else begin
          _T_569 <= 3'h0;
        end
      end else begin
        _T_569 <= _T_571;
      end
    end
    if (_T_608) begin
      _T_580 <= io_in_a_bits_opcode;
    end
    if (_T_608) begin
      _T_581 <= io_in_a_bits_param;
    end
    if (_T_608) begin
      _T_582 <= io_in_a_bits_size;
    end
    if (_T_608) begin
      _T_583 <= io_in_a_bits_source;
    end
    if (_T_608) begin
      _T_584 <= io_in_a_bits_address;
    end
    if (reset) begin
      _T_617 <= 3'h0;
    end else if (_T_609) begin
      if (_T_620) begin
        if (io_in_d_bits_opcode[0]) begin
          _T_617 <= _T_613[5:3];
        end else begin
          _T_617 <= 3'h0;
        end
      end else begin
        _T_617 <= _T_619;
      end
    end
    if (_T_661) begin
      _T_628 <= io_in_d_bits_opcode;
    end
    if (_T_661) begin
      _T_630 <= io_in_d_bits_size;
    end
    if (_T_661) begin
      _T_631 <= io_in_d_bits_source;
    end
    if (reset) begin
      inflight <= 5'h0;
    end else begin
      inflight <= _T_803;
    end
    if (reset) begin
      inflight_opcodes <= 20'h0;
    end else begin
      inflight_opcodes <= _T_806;
    end
    if (reset) begin
      inflight_sizes <= 20'h0;
    end else begin
      inflight_sizes <= _T_809;
    end
    if (reset) begin
      _T_671 <= 3'h0;
    end else if (_T_560) begin
      if (a_first) begin
        if (_T_567) begin
          _T_671 <= _T_15[5:3];
        end else begin
          _T_671 <= 3'h0;
        end
      end else begin
        _T_671 <= _T_673;
      end
    end
    if (reset) begin
      _T_689 <= 3'h0;
    end else if (_T_609) begin
      if (d_first) begin
        if (io_in_d_bits_opcode[0]) begin
          _T_689 <= _T_613[5:3];
        end else begin
          _T_689 <= 3'h0;
        end
      end else begin
        _T_689 <= _T_691;
      end
    end
    if (reset) begin
      _T_810 <= 32'h0;
    end else if (_T_824) begin
      _T_810 <= 32'h0;
    end else begin
      _T_810 <= _T_821;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_72 & _T_131) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock type unsupported by manager (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66514.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66515.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock from a client which does not support Probe (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66541.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66542.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock carries invalid source ID (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66548.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66549.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock smaller than a beat (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66556.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66557.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock address not aligned to size (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66563.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66564.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock carries invalid grow param (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66571.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66572.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock contains invalid mask (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66580.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66581.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock is corrupt (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66588.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66589.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm type unsupported by manager (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66606.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66607.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm from a client which does not support Probe (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66633.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66634.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm carries invalid source ID (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66640.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66641.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm smaller than a beat (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66648.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66649.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm address not aligned to size (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66655.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66656.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm carries invalid grow param (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66663.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66664.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm requests NtoB (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66671.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66672.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm contains invalid mask (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66680.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66681.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm is corrupt (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66688.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66689.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Get type unsupported by manager (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66709.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66710.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get carries invalid source ID (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66716.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66717.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get address not aligned to size (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66723.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66724.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get carries invalid param (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66731.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66732.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get contains invalid mask (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66739.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66740.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get is corrupt (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66747.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66748.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutFull type unsupported by manager (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66768.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66769.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull carries invalid source ID (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66775.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66776.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull address not aligned to size (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66782.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66783.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull carries invalid param (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66790.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66791.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull contains invalid mask (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66798.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66799.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutPartial type unsupported by manager (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66819.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66820.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial carries invalid source ID (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66826.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66827.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial address not aligned to size (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66833.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66834.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial carries invalid param (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66841.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66842.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial contains invalid mask (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66851.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66852.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Arithmetic type unsupported by manager (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66869.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66870.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic carries invalid source ID (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66876.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66877.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic address not aligned to size (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66883.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66884.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_138 & _T_342) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic carries invalid opcode param (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66891.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_138 & _T_342) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66892.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic contains invalid mask (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66899.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66900.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Logical type unsupported by manager (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66917.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66918.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical carries invalid source ID (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66924.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66925.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical address not aligned to size (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66931.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66932.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_148 & _T_368) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical carries invalid opcode param (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66939.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_148 & _T_368) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66940.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical contains invalid mask (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66947.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66948.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Hint type unsupported by manager (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66965.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66966.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint carries invalid source ID (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66972.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66973.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint address not aligned to size (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66979.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66980.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_158 & _T_394) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint carries invalid opcode param (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66987.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_158 & _T_394) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66988.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint contains invalid mask (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66995.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@66996.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint is corrupt (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@67003.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@67004.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_in_d_valid & _T_406) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel has invalid opcode (connected at Periphery.scala:84:64)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@67014.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (io_in_d_valid & _T_406) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@67015.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_170 & _T_419) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck carries invalid source ID (connected at Periphery.scala:84:64)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@67037.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_170 & _T_419) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@67038.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_170 & _T_423) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck smaller than a beat (connected at Periphery.scala:84:64)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@67045.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_170 & _T_423) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@67046.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_174 & _T_419) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid source ID (connected at Periphery.scala:84:64)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@67079.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_174 & _T_419) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@67080.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_174 & _T_131) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid sink ID (connected at Periphery.scala:84:64)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@67086.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_174 & _T_131) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@67087.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_174 & _T_423) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant smaller than a beat (connected at Periphery.scala:84:64)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@67094.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_174 & _T_423) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@67095.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_180 & _T_419) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid source ID (connected at Periphery.scala:84:64)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@67137.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_180 & _T_419) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@67138.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid sink ID (connected at Periphery.scala:84:64)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@67144.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@67145.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_180 & _T_423) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData smaller than a beat (connected at Periphery.scala:84:64)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@67152.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_180 & _T_423) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@67153.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_186 & _T_419) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck carries invalid source ID (connected at Periphery.scala:84:64)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@67196.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_186 & _T_419) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@67197.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_188 & _T_419) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData carries invalid source ID (connected at Periphery.scala:84:64)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@67231.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_188 & _T_419) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@67232.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_190 & _T_419) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck carries invalid source ID (connected at Periphery.scala:84:64)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@67267.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_190 & _T_419) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@67268.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_586 & _T_590) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel opcode changed within multibeat operation (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@67363.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_586 & _T_590) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@67364.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_586 & _T_594) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel param changed within multibeat operation (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@67371.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_586 & _T_594) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@67372.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_586 & _T_598) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel size changed within multibeat operation (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@67379.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_586 & _T_598) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@67380.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_586 & _T_602) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel source changed within multibeat operation (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@67387.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_586 & _T_602) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@67388.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_586 & _T_606) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel address changed with multibeat operation (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@67395.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_586 & _T_606) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@67396.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_635 & _T_639) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel opcode changed within multibeat operation (connected at Periphery.scala:84:64)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@67444.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_635 & _T_639) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@67445.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_635 & _T_647) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel size changed within multibeat operation (connected at Periphery.scala:84:64)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@67460.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_635 & _T_647) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@67461.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_635 & _T_651) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel source changed within multibeat operation (connected at Periphery.scala:84:64)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@67468.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_635 & _T_651) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@67469.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_718 & _T_734) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel re-used a source ID (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@67621.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_718 & _T_734) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@67622.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_757 & _T_768) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel acknowledged for nothing inflight (connected at Periphery.scala:84:64)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@67672.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_757 & _T_768) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@67673.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_757 & _T_781) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper opcode response (connected at Periphery.scala:84:64)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@67689.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_757 & _T_781) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@67690.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_757 & _T_788) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper response size (connected at Periphery.scala:84:64)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@67700.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_757 & _T_788) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@67701.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_795 & _T_800) begin
          $fwrite(32'h80000002,"Assertion failed: ready check\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@67718.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_795 & _T_800) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@67719.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_819) begin
          $fwrite(32'h80000002,"Assertion failed: TileLink timeout expired (connected at Periphery.scala:84:64)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@67747.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_819) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@67748.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
