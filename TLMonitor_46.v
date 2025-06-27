module TLMonitor_46( // @[:chipyard.TestHarness.RocketConfig.fir@116560.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@116561.4]
  input         reset, // @[:chipyard.TestHarness.RocketConfig.fir@116562.4]
  input         io_in_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@116563.4]
  input         io_in_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@116563.4]
  input  [2:0]  io_in_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@116563.4]
  input  [2:0]  io_in_a_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@116563.4]
  input  [2:0]  io_in_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@116563.4]
  input  [3:0]  io_in_a_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@116563.4]
  input  [31:0] io_in_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@116563.4]
  input  [7:0]  io_in_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@116563.4]
  input         io_in_a_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@116563.4]
  input         io_in_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@116563.4]
  input         io_in_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@116563.4]
  input  [2:0]  io_in_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@116563.4]
  input  [2:0]  io_in_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@116563.4]
  input  [3:0]  io_in_d_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@116563.4]
  input         io_in_d_bits_denied, // @[:chipyard.TestHarness.RocketConfig.fir@116563.4]
  input         io_in_d_bits_corrupt // @[:chipyard.TestHarness.RocketConfig.fir@116563.4]
);
  wire [31:0] plusarg_reader_out; // @[PlusArg.scala 44:11:chipyard.TestHarness.RocketConfig.fir@117881.4]
  wire  _T_10; // @[Parameters.scala 58:20:chipyard.TestHarness.RocketConfig.fir@116580.6]
  wire [12:0] _T_14; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@116586.6]
  wire [5:0] _T_16; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@116588.6]
  wire [31:0] _GEN_56; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@116589.6]
  wire [31:0] _T_17; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@116589.6]
  wire  _T_18; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@116590.6]
  wire [3:0] _T_21; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@116593.6]
  wire [2:0] _T_23; // @[Misc.scala 201:81:chipyard.TestHarness.RocketConfig.fir@116595.6]
  wire  _T_24; // @[Misc.scala 205:21:chipyard.TestHarness.RocketConfig.fir@116596.6]
  wire  _T_27; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@116599.6]
  wire  _T_29; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@116601.6]
  wire  _T_30; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@116602.6]
  wire  _T_32; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@116604.6]
  wire  _T_33; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@116605.6]
  wire  _T_36; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@116608.6]
  wire  _T_37; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@116609.6]
  wire  _T_38; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@116610.6]
  wire  _T_39; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@116611.6]
  wire  _T_40; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@116612.6]
  wire  _T_41; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@116613.6]
  wire  _T_42; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@116614.6]
  wire  _T_43; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@116615.6]
  wire  _T_44; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@116616.6]
  wire  _T_45; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@116617.6]
  wire  _T_46; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@116618.6]
  wire  _T_47; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@116619.6]
  wire  _T_48; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@116620.6]
  wire  _T_51; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@116623.6]
  wire  _T_52; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@116624.6]
  wire  _T_53; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@116625.6]
  wire  _T_54; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@116626.6]
  wire  _T_55; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@116627.6]
  wire  _T_56; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@116628.6]
  wire  _T_57; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@116629.6]
  wire  _T_58; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@116630.6]
  wire  _T_59; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@116631.6]
  wire  _T_60; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@116632.6]
  wire  _T_61; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@116633.6]
  wire  _T_62; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@116634.6]
  wire  _T_63; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@116635.6]
  wire  _T_64; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@116636.6]
  wire  _T_65; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@116637.6]
  wire  _T_66; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@116638.6]
  wire  _T_67; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@116639.6]
  wire  _T_68; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@116640.6]
  wire  _T_69; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@116641.6]
  wire  _T_70; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@116642.6]
  wire  _T_71; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@116643.6]
  wire  _T_72; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@116644.6]
  wire  _T_73; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@116645.6]
  wire  _T_74; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@116646.6]
  wire  _T_75; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@116647.6]
  wire [7:0] _T_82; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@116654.6]
  wire  _T_101; // @[Monitor.scala 79:25:chipyard.TestHarness.RocketConfig.fir@116677.6]
  wire [31:0] _T_103; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@116680.8]
  wire [32:0] _T_104; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@116681.8]
  wire [32:0] _T_106; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@116683.8]
  wire  _T_107; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@116684.8]
  wire  _T_112; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116689.8]
  wire  _T_117; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116702.8]
  wire  _T_118; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116703.8]
  wire  _T_121; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116710.8]
  wire  _T_122; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116711.8]
  wire  _T_124; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116717.8]
  wire  _T_125; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116718.8]
  wire  _T_126; // @[Bundles.scala 110:27:chipyard.TestHarness.RocketConfig.fir@116723.8]
  wire  _T_128; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116725.8]
  wire  _T_129; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116726.8]
  wire [7:0] _T_130; // @[Monitor.scala 86:18:chipyard.TestHarness.RocketConfig.fir@116731.8]
  wire  _T_131; // @[Monitor.scala 86:31:chipyard.TestHarness.RocketConfig.fir@116732.8]
  wire  _T_133; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116734.8]
  wire  _T_134; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116735.8]
  wire  _T_135; // @[Monitor.scala 87:18:chipyard.TestHarness.RocketConfig.fir@116740.8]
  wire  _T_137; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116742.8]
  wire  _T_138; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116743.8]
  wire  _T_139; // @[Monitor.scala 90:25:chipyard.TestHarness.RocketConfig.fir@116749.6]
  wire  _T_168; // @[Monitor.scala 97:31:chipyard.TestHarness.RocketConfig.fir@116803.8]
  wire  _T_170; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116805.8]
  wire  _T_171; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116806.8]
  wire  _T_181; // @[Monitor.scala 102:25:chipyard.TestHarness.RocketConfig.fir@116829.6]
  wire  _T_183; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@116832.8]
  wire  _T_191; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@116840.8]
  wire  _T_194; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116843.8]
  wire  _T_195; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116844.8]
  wire  _T_202; // @[Monitor.scala 106:31:chipyard.TestHarness.RocketConfig.fir@116863.8]
  wire  _T_204; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116865.8]
  wire  _T_205; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116866.8]
  wire  _T_206; // @[Monitor.scala 107:30:chipyard.TestHarness.RocketConfig.fir@116871.8]
  wire  _T_208; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116873.8]
  wire  _T_209; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116874.8]
  wire  _T_214; // @[Monitor.scala 111:25:chipyard.TestHarness.RocketConfig.fir@116888.6]
  wire  _T_243; // @[Monitor.scala 119:25:chipyard.TestHarness.RocketConfig.fir@116939.6]
  wire [7:0] _T_268; // @[Monitor.scala 124:33:chipyard.TestHarness.RocketConfig.fir@116981.8]
  wire [7:0] _T_269; // @[Monitor.scala 124:31:chipyard.TestHarness.RocketConfig.fir@116982.8]
  wire  _T_270; // @[Monitor.scala 124:40:chipyard.TestHarness.RocketConfig.fir@116983.8]
  wire  _T_272; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116985.8]
  wire  _T_273; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116986.8]
  wire  _T_274; // @[Monitor.scala 127:25:chipyard.TestHarness.RocketConfig.fir@116992.6]
  wire  _T_292; // @[Bundles.scala 140:33:chipyard.TestHarness.RocketConfig.fir@117023.8]
  wire  _T_294; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@117025.8]
  wire  _T_295; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@117026.8]
  wire  _T_300; // @[Monitor.scala 135:25:chipyard.TestHarness.RocketConfig.fir@117040.6]
  wire  _T_318; // @[Bundles.scala 147:30:chipyard.TestHarness.RocketConfig.fir@117071.8]
  wire  _T_320; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@117073.8]
  wire  _T_321; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@117074.8]
  wire  _T_326; // @[Monitor.scala 143:25:chipyard.TestHarness.RocketConfig.fir@117088.6]
  wire  _T_344; // @[Bundles.scala 160:28:chipyard.TestHarness.RocketConfig.fir@117119.8]
  wire  _T_346; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@117121.8]
  wire  _T_347; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@117122.8]
  wire  _T_356; // @[Bundles.scala 44:24:chipyard.TestHarness.RocketConfig.fir@117146.6]
  wire  _T_358; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117148.6]
  wire  _T_359; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117149.6]
  wire  _T_366; // @[Parameters.scala 58:20:chipyard.TestHarness.RocketConfig.fir@117160.6]
  wire  _T_370; // @[Monitor.scala 307:25:chipyard.TestHarness.RocketConfig.fir@117166.6]
  wire  _T_372; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117169.8]
  wire  _T_373; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117170.8]
  wire  _T_374; // @[Monitor.scala 309:27:chipyard.TestHarness.RocketConfig.fir@117175.8]
  wire  _T_376; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117177.8]
  wire  _T_377; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117178.8]
  wire  _T_382; // @[Monitor.scala 311:15:chipyard.TestHarness.RocketConfig.fir@117191.8]
  wire  _T_384; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117193.8]
  wire  _T_385; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117194.8]
  wire  _T_386; // @[Monitor.scala 312:15:chipyard.TestHarness.RocketConfig.fir@117199.8]
  wire  _T_388; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117201.8]
  wire  _T_389; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117202.8]
  wire  _T_390; // @[Monitor.scala 315:25:chipyard.TestHarness.RocketConfig.fir@117208.6]
  wire  _T_418; // @[Monitor.scala 325:25:chipyard.TestHarness.RocketConfig.fir@117266.6]
  wire  _T_438; // @[Monitor.scala 331:30:chipyard.TestHarness.RocketConfig.fir@117307.8]
  wire  _T_440; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117309.8]
  wire  _T_441; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117310.8]
  wire  _T_447; // @[Monitor.scala 335:25:chipyard.TestHarness.RocketConfig.fir@117325.6]
  wire  _T_464; // @[Monitor.scala 343:25:chipyard.TestHarness.RocketConfig.fir@117360.6]
  wire  _T_482; // @[Monitor.scala 351:25:chipyard.TestHarness.RocketConfig.fir@117396.6]
  wire  _T_514; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@117462.4]
  wire  _T_521; // @[Edges.scala 93:28:chipyard.TestHarness.RocketConfig.fir@117469.4]
  reg [2:0] _T_523; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@117471.4]
  reg [31:0] _RAND_0;
  wire [2:0] _T_525; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@117473.4]
  wire  _T_526; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@117474.4]
  reg [2:0] _T_534; // @[Monitor.scala 381:22:chipyard.TestHarness.RocketConfig.fir@117485.4]
  reg [31:0] _RAND_1;
  reg [2:0] _T_535; // @[Monitor.scala 382:22:chipyard.TestHarness.RocketConfig.fir@117486.4]
  reg [31:0] _RAND_2;
  reg [2:0] _T_536; // @[Monitor.scala 383:22:chipyard.TestHarness.RocketConfig.fir@117487.4]
  reg [31:0] _RAND_3;
  reg [3:0] _T_537; // @[Monitor.scala 384:22:chipyard.TestHarness.RocketConfig.fir@117488.4]
  reg [31:0] _RAND_4;
  reg [31:0] _T_538; // @[Monitor.scala 385:22:chipyard.TestHarness.RocketConfig.fir@117489.4]
  reg [31:0] _RAND_5;
  wire  _T_539; // @[Monitor.scala 386:22:chipyard.TestHarness.RocketConfig.fir@117490.4]
  wire  _T_540; // @[Monitor.scala 386:19:chipyard.TestHarness.RocketConfig.fir@117491.4]
  wire  _T_541; // @[Monitor.scala 387:32:chipyard.TestHarness.RocketConfig.fir@117493.6]
  wire  _T_543; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@117495.6]
  wire  _T_544; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@117496.6]
  wire  _T_545; // @[Monitor.scala 388:32:chipyard.TestHarness.RocketConfig.fir@117501.6]
  wire  _T_547; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@117503.6]
  wire  _T_548; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@117504.6]
  wire  _T_549; // @[Monitor.scala 389:32:chipyard.TestHarness.RocketConfig.fir@117509.6]
  wire  _T_551; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@117511.6]
  wire  _T_552; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@117512.6]
  wire  _T_553; // @[Monitor.scala 390:32:chipyard.TestHarness.RocketConfig.fir@117517.6]
  wire  _T_555; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@117519.6]
  wire  _T_556; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@117520.6]
  wire  _T_557; // @[Monitor.scala 391:32:chipyard.TestHarness.RocketConfig.fir@117525.6]
  wire  _T_559; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@117527.6]
  wire  _T_560; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@117528.6]
  wire  _T_562; // @[Monitor.scala 393:20:chipyard.TestHarness.RocketConfig.fir@117535.4]
  wire  _T_563; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@117543.4]
  wire [12:0] _T_565; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@117545.4]
  wire [5:0] _T_567; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@117547.4]
  reg [2:0] _T_571; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@117551.4]
  reg [31:0] _RAND_6;
  wire [2:0] _T_573; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@117553.4]
  wire  _T_574; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@117554.4]
  reg [2:0] _T_582; // @[Monitor.scala 532:22:chipyard.TestHarness.RocketConfig.fir@117565.4]
  reg [31:0] _RAND_7;
  reg [2:0] _T_584; // @[Monitor.scala 534:22:chipyard.TestHarness.RocketConfig.fir@117567.4]
  reg [31:0] _RAND_8;
  reg [3:0] _T_585; // @[Monitor.scala 535:22:chipyard.TestHarness.RocketConfig.fir@117568.4]
  reg [31:0] _RAND_9;
  reg  _T_587; // @[Monitor.scala 537:22:chipyard.TestHarness.RocketConfig.fir@117570.4]
  reg [31:0] _RAND_10;
  wire  _T_588; // @[Monitor.scala 538:22:chipyard.TestHarness.RocketConfig.fir@117571.4]
  wire  _T_589; // @[Monitor.scala 538:19:chipyard.TestHarness.RocketConfig.fir@117572.4]
  wire  _T_590; // @[Monitor.scala 539:29:chipyard.TestHarness.RocketConfig.fir@117574.6]
  wire  _T_592; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117576.6]
  wire  _T_593; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117577.6]
  wire  _T_598; // @[Monitor.scala 541:29:chipyard.TestHarness.RocketConfig.fir@117590.6]
  wire  _T_600; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117592.6]
  wire  _T_601; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117593.6]
  wire  _T_602; // @[Monitor.scala 542:29:chipyard.TestHarness.RocketConfig.fir@117598.6]
  wire  _T_604; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117600.6]
  wire  _T_605; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117601.6]
  wire  _T_610; // @[Monitor.scala 544:29:chipyard.TestHarness.RocketConfig.fir@117614.6]
  wire  _T_612; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117616.6]
  wire  _T_613; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117617.6]
  wire  _T_615; // @[Monitor.scala 546:20:chipyard.TestHarness.RocketConfig.fir@117624.4]
  reg [9:0] inflight; // @[Monitor.scala 608:27:chipyard.TestHarness.RocketConfig.fir@117633.4]
  reg [31:0] _RAND_11;
  reg [39:0] inflight_opcodes; // @[Monitor.scala 610:35:chipyard.TestHarness.RocketConfig.fir@117634.4]
  reg [63:0] _RAND_12;
  reg [39:0] inflight_sizes; // @[Monitor.scala 612:33:chipyard.TestHarness.RocketConfig.fir@117635.4]
  reg [63:0] _RAND_13;
  reg [2:0] _T_625; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@117645.4]
  reg [31:0] _RAND_14;
  wire [2:0] _T_627; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@117647.4]
  wire  a_first; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@117648.4]
  reg [2:0] _T_643; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@117667.4]
  reg [31:0] _RAND_15;
  wire [2:0] _T_645; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@117669.4]
  wire  d_first; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@117670.4]
  wire [5:0] _GEN_57; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@117689.4]
  wire [6:0] _T_653; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@117689.4]
  wire [39:0] _T_654; // @[Monitor.scala 629:44:chipyard.TestHarness.RocketConfig.fir@117690.4]
  wire [15:0] _T_658; // @[Monitor.scala 606:57:chipyard.TestHarness.RocketConfig.fir@117694.4]
  wire [39:0] _GEN_58; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@117695.4]
  wire [39:0] _T_659; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@117695.4]
  wire [39:0] _T_660; // @[Monitor.scala 629:152:chipyard.TestHarness.RocketConfig.fir@117696.4]
  wire [39:0] _T_662; // @[Monitor.scala 633:40:chipyard.TestHarness.RocketConfig.fir@117701.4]
  wire [39:0] _T_667; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@117706.4]
  wire [39:0] _T_668; // @[Monitor.scala 633:144:chipyard.TestHarness.RocketConfig.fir@117707.4]
  wire  _T_672; // @[Monitor.scala 643:27:chipyard.TestHarness.RocketConfig.fir@117732.4]
  wire [15:0] _T_674; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@117735.6]
  wire [3:0] _T_675; // @[Monitor.scala 645:53:chipyard.TestHarness.RocketConfig.fir@117737.6]
  wire [3:0] _T_676; // @[Monitor.scala 645:61:chipyard.TestHarness.RocketConfig.fir@117738.6]
  wire [3:0] _T_677; // @[Monitor.scala 646:49:chipyard.TestHarness.RocketConfig.fir@117740.6]
  wire [3:0] _T_678; // @[Monitor.scala 646:57:chipyard.TestHarness.RocketConfig.fir@117741.6]
  wire [5:0] _GEN_63; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@117743.6]
  wire [6:0] _T_679; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@117743.6]
  wire [3:0] a_opcodes_set_interm; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@117734.4]
  wire [130:0] _GEN_64; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@117744.6]
  wire [130:0] _T_680; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@117744.6]
  wire [3:0] a_sizes_set_interm; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@117734.4]
  wire [130:0] _GEN_66; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@117747.6]
  wire [130:0] _T_682; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@117747.6]
  wire [9:0] _T_683; // @[Monitor.scala 649:26:chipyard.TestHarness.RocketConfig.fir@117749.6]
  wire  _T_685; // @[Monitor.scala 649:17:chipyard.TestHarness.RocketConfig.fir@117751.6]
  wire  _T_687; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@117753.6]
  wire  _T_688; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@117754.6]
  wire [15:0] _GEN_15; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@117734.4]
  wire [130:0] _GEN_18; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@117734.4]
  wire [130:0] _GEN_19; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@117734.4]
  wire  _T_691; // @[Monitor.scala 660:27:chipyard.TestHarness.RocketConfig.fir@117768.4]
  wire  _T_693; // @[Monitor.scala 660:75:chipyard.TestHarness.RocketConfig.fir@117770.4]
  wire  _T_694; // @[Monitor.scala 660:72:chipyard.TestHarness.RocketConfig.fir@117771.4]
  wire [15:0] _T_695; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@117773.6]
  wire [142:0] _GEN_68; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@117780.6]
  wire [142:0] _T_701; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@117780.6]
  wire [15:0] _GEN_20; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@117772.4]
  wire [142:0] _GEN_21; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@117772.4]
  wire  _T_708; // @[Monitor.scala 665:26:chipyard.TestHarness.RocketConfig.fir@117790.4]
  wire  _T_711; // @[Monitor.scala 665:71:chipyard.TestHarness.RocketConfig.fir@117793.4]
  wire [9:0] _T_712; // @[Monitor.scala 666:25:chipyard.TestHarness.RocketConfig.fir@117795.6]
  wire  _T_714; // @[Monitor.scala 666:93:chipyard.TestHarness.RocketConfig.fir@117797.6]
  wire  _T_715; // @[Monitor.scala 666:68:chipyard.TestHarness.RocketConfig.fir@117798.6]
  wire  _T_716; // @[Monitor.scala 666:142:chipyard.TestHarness.RocketConfig.fir@117799.6]
  wire  _T_717; // @[Monitor.scala 666:119:chipyard.TestHarness.RocketConfig.fir@117800.6]
  wire  _T_718; // @[Monitor.scala 666:166:chipyard.TestHarness.RocketConfig.fir@117801.6]
  wire  _T_719; // @[Monitor.scala 666:49:chipyard.TestHarness.RocketConfig.fir@117802.6]
  wire  _T_721; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117804.6]
  wire  _T_722; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117805.6]
  wire [3:0] a_opcode_lookup; // @[:chipyard.TestHarness.RocketConfig.fir@117687.4 :chipyard.TestHarness.RocketConfig.fir@117688.4 Monitor.scala 629:21:chipyard.TestHarness.RocketConfig.fir@117697.4]
  wire [2:0] _GEN_25; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@117811.6]
  wire [2:0] _GEN_26; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@117811.6]
  wire [2:0] _GEN_27; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@117811.6]
  wire [2:0] _GEN_28; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@117811.6]
  wire [2:0] _GEN_29; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@117811.6]
  wire [2:0] _GEN_30; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@117811.6]
  wire  _T_724; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@117811.6]
  wire [2:0] _GEN_37; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@117813.6]
  wire [2:0] _GEN_38; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@117813.6]
  wire  _T_726; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@117813.6]
  wire  _T_727; // @[Monitor.scala 667:71:chipyard.TestHarness.RocketConfig.fir@117814.6]
  wire [2:0] _GEN_41; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@117815.6]
  wire [2:0] _GEN_42; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@117815.6]
  wire [2:0] _GEN_43; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@117815.6]
  wire [2:0] _GEN_44; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@117815.6]
  wire [2:0] _GEN_45; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@117815.6]
  wire [2:0] _GEN_46; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@117815.6]
  wire  _T_728; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@117815.6]
  wire [2:0] _GEN_53; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@117816.6]
  wire [2:0] _GEN_54; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@117816.6]
  wire  _T_729; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@117816.6]
  wire  _T_730; // @[Monitor.scala 668:99:chipyard.TestHarness.RocketConfig.fir@117817.6]
  wire  _T_731; // @[Monitor.scala 668:34:chipyard.TestHarness.RocketConfig.fir@117818.6]
  wire  _T_732; // @[Monitor.scala 668:15:chipyard.TestHarness.RocketConfig.fir@117819.6]
  wire  _T_734; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117821.6]
  wire  _T_735; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117822.6]
  wire [3:0] a_size_lookup; // @[:chipyard.TestHarness.RocketConfig.fir@117698.4 :chipyard.TestHarness.RocketConfig.fir@117699.4 Monitor.scala 633:19:chipyard.TestHarness.RocketConfig.fir@117708.4]
  wire [3:0] _GEN_71; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@117827.6]
  wire  _T_736; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@117827.6]
  wire  _T_738; // @[Monitor.scala 670:72:chipyard.TestHarness.RocketConfig.fir@117829.6]
  wire  _T_739; // @[Monitor.scala 670:53:chipyard.TestHarness.RocketConfig.fir@117830.6]
  wire  _T_741; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117832.6]
  wire  _T_742; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117833.6]
  wire  _T_744; // @[Monitor.scala 672:36:chipyard.TestHarness.RocketConfig.fir@117840.4]
  wire  _T_745; // @[Monitor.scala 672:47:chipyard.TestHarness.RocketConfig.fir@117841.4]
  wire  _T_747; // @[Monitor.scala 672:65:chipyard.TestHarness.RocketConfig.fir@117843.4]
  wire  _T_749; // @[Monitor.scala 672:116:chipyard.TestHarness.RocketConfig.fir@117845.4]
  wire  _T_750; // @[Monitor.scala 673:15:chipyard.TestHarness.RocketConfig.fir@117847.6]
  wire  _T_751; // @[Monitor.scala 673:32:chipyard.TestHarness.RocketConfig.fir@117848.6]
  wire  _T_753; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117850.6]
  wire  _T_754; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117851.6]
  wire [9:0] a_set; // @[:chipyard.TestHarness.RocketConfig.fir@117681.4 :chipyard.TestHarness.RocketConfig.fir@117682.4 Monitor.scala 644:13:chipyard.TestHarness.RocketConfig.fir@117736.6]
  wire [9:0] d_clr; // @[:chipyard.TestHarness.RocketConfig.fir@117760.4 :chipyard.TestHarness.RocketConfig.fir@117761.4 Monitor.scala 661:13:chipyard.TestHarness.RocketConfig.fir@117774.6]
  wire  _T_755; // @[Monitor.scala 677:20:chipyard.TestHarness.RocketConfig.fir@117857.4]
  wire  _T_756; // @[Monitor.scala 677:40:chipyard.TestHarness.RocketConfig.fir@117858.4]
  wire  _T_757; // @[Monitor.scala 677:33:chipyard.TestHarness.RocketConfig.fir@117859.4]
  wire  _T_758; // @[Monitor.scala 677:30:chipyard.TestHarness.RocketConfig.fir@117860.4]
  wire  _T_760; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117862.4]
  wire  _T_761; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117863.4]
  wire [9:0] _T_762; // @[Monitor.scala 680:27:chipyard.TestHarness.RocketConfig.fir@117868.4]
  wire [9:0] _T_763; // @[Monitor.scala 680:38:chipyard.TestHarness.RocketConfig.fir@117869.4]
  wire [9:0] _T_764; // @[Monitor.scala 680:36:chipyard.TestHarness.RocketConfig.fir@117870.4]
  wire [39:0] a_opcodes_set; // @[:chipyard.TestHarness.RocketConfig.fir@117683.4 :chipyard.TestHarness.RocketConfig.fir@117684.4 Monitor.scala 647:21:chipyard.TestHarness.RocketConfig.fir@117745.6]
  wire [39:0] _T_765; // @[Monitor.scala 681:43:chipyard.TestHarness.RocketConfig.fir@117872.4]
  wire [39:0] d_opcodes_clr; // @[:chipyard.TestHarness.RocketConfig.fir@117762.4 :chipyard.TestHarness.RocketConfig.fir@117763.4 Monitor.scala 662:21:chipyard.TestHarness.RocketConfig.fir@117781.6]
  wire [39:0] _T_766; // @[Monitor.scala 681:62:chipyard.TestHarness.RocketConfig.fir@117873.4]
  wire [39:0] _T_767; // @[Monitor.scala 681:60:chipyard.TestHarness.RocketConfig.fir@117874.4]
  wire [39:0] a_sizes_set; // @[:chipyard.TestHarness.RocketConfig.fir@117685.4 :chipyard.TestHarness.RocketConfig.fir@117686.4 Monitor.scala 648:19:chipyard.TestHarness.RocketConfig.fir@117748.6]
  wire [39:0] _T_768; // @[Monitor.scala 682:39:chipyard.TestHarness.RocketConfig.fir@117876.4]
  wire [39:0] _T_770; // @[Monitor.scala 682:54:chipyard.TestHarness.RocketConfig.fir@117878.4]
  reg [31:0] _T_771; // @[Monitor.scala 684:27:chipyard.TestHarness.RocketConfig.fir@117880.4]
  reg [31:0] _RAND_16;
  wire  _T_772; // @[Monitor.scala 687:26:chipyard.TestHarness.RocketConfig.fir@117883.4]
  wire  _T_773; // @[Monitor.scala 687:16:chipyard.TestHarness.RocketConfig.fir@117884.4]
  wire  _T_774; // @[Monitor.scala 687:39:chipyard.TestHarness.RocketConfig.fir@117885.4]
  wire  _T_775; // @[Monitor.scala 687:30:chipyard.TestHarness.RocketConfig.fir@117886.4]
  wire  _T_776; // @[Monitor.scala 687:59:chipyard.TestHarness.RocketConfig.fir@117887.4]
  wire  _T_777; // @[Monitor.scala 687:47:chipyard.TestHarness.RocketConfig.fir@117888.4]
  wire  _T_779; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@117890.4]
  wire  _T_780; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@117891.4]
  wire [31:0] _T_782; // @[Monitor.scala 689:26:chipyard.TestHarness.RocketConfig.fir@117897.4]
  wire  _T_785; // @[Monitor.scala 690:27:chipyard.TestHarness.RocketConfig.fir@117901.4]
  wire  _GEN_72; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116691.10]
  wire  _GEN_88; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116763.10]
  wire  _GEN_106; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116846.10]
  wire  _GEN_118; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116905.10]
  wire  _GEN_128; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116956.10]
  wire  _GEN_138; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@117006.10]
  wire  _GEN_148; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@117054.10]
  wire  _GEN_158; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@117102.10]
  wire  _GEN_170; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117172.10]
  wire  _GEN_178; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117214.10]
  wire  _GEN_186; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117272.10]
  wire  _GEN_194; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117331.10]
  wire  _GEN_198; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117366.10]
  wire  _GEN_202; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117402.10]
  plusarg_reader #(.FORMAT("tilelink_timeout=%d"), .DEFAULT(0), .WIDTH(32)) plusarg_reader ( // @[PlusArg.scala 44:11:chipyard.TestHarness.RocketConfig.fir@117881.4]
    .out(plusarg_reader_out)
  );
  assign _T_10 = io_in_a_bits_source <= 4'h9; // @[Parameters.scala 58:20:chipyard.TestHarness.RocketConfig.fir@116580.6]
  assign _T_14 = 13'h3f << io_in_a_bits_size; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@116586.6]
  assign _T_16 = ~_T_14[5:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@116588.6]
  assign _GEN_56 = {{26'd0}, _T_16}; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@116589.6]
  assign _T_17 = io_in_a_bits_address & _GEN_56; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@116589.6]
  assign _T_18 = _T_17 == 32'h0; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@116590.6]
  assign _T_21 = 4'h1 << io_in_a_bits_size[1:0]; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@116593.6]
  assign _T_23 = _T_21[2:0] | 3'h1; // @[Misc.scala 201:81:chipyard.TestHarness.RocketConfig.fir@116595.6]
  assign _T_24 = io_in_a_bits_size >= 3'h3; // @[Misc.scala 205:21:chipyard.TestHarness.RocketConfig.fir@116596.6]
  assign _T_27 = ~io_in_a_bits_address[2]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@116599.6]
  assign _T_29 = _T_23[2] & _T_27; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@116601.6]
  assign _T_30 = _T_24 | _T_29; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@116602.6]
  assign _T_32 = _T_23[2] & io_in_a_bits_address[2]; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@116604.6]
  assign _T_33 = _T_24 | _T_32; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@116605.6]
  assign _T_36 = ~io_in_a_bits_address[1]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@116608.6]
  assign _T_37 = _T_27 & _T_36; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@116609.6]
  assign _T_38 = _T_23[1] & _T_37; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@116610.6]
  assign _T_39 = _T_30 | _T_38; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@116611.6]
  assign _T_40 = _T_27 & io_in_a_bits_address[1]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@116612.6]
  assign _T_41 = _T_23[1] & _T_40; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@116613.6]
  assign _T_42 = _T_30 | _T_41; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@116614.6]
  assign _T_43 = io_in_a_bits_address[2] & _T_36; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@116615.6]
  assign _T_44 = _T_23[1] & _T_43; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@116616.6]
  assign _T_45 = _T_33 | _T_44; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@116617.6]
  assign _T_46 = io_in_a_bits_address[2] & io_in_a_bits_address[1]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@116618.6]
  assign _T_47 = _T_23[1] & _T_46; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@116619.6]
  assign _T_48 = _T_33 | _T_47; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@116620.6]
  assign _T_51 = ~io_in_a_bits_address[0]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@116623.6]
  assign _T_52 = _T_37 & _T_51; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@116624.6]
  assign _T_53 = _T_23[0] & _T_52; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@116625.6]
  assign _T_54 = _T_39 | _T_53; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@116626.6]
  assign _T_55 = _T_37 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@116627.6]
  assign _T_56 = _T_23[0] & _T_55; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@116628.6]
  assign _T_57 = _T_39 | _T_56; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@116629.6]
  assign _T_58 = _T_40 & _T_51; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@116630.6]
  assign _T_59 = _T_23[0] & _T_58; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@116631.6]
  assign _T_60 = _T_42 | _T_59; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@116632.6]
  assign _T_61 = _T_40 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@116633.6]
  assign _T_62 = _T_23[0] & _T_61; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@116634.6]
  assign _T_63 = _T_42 | _T_62; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@116635.6]
  assign _T_64 = _T_43 & _T_51; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@116636.6]
  assign _T_65 = _T_23[0] & _T_64; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@116637.6]
  assign _T_66 = _T_45 | _T_65; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@116638.6]
  assign _T_67 = _T_43 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@116639.6]
  assign _T_68 = _T_23[0] & _T_67; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@116640.6]
  assign _T_69 = _T_45 | _T_68; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@116641.6]
  assign _T_70 = _T_46 & _T_51; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@116642.6]
  assign _T_71 = _T_23[0] & _T_70; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@116643.6]
  assign _T_72 = _T_48 | _T_71; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@116644.6]
  assign _T_73 = _T_46 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@116645.6]
  assign _T_74 = _T_23[0] & _T_73; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@116646.6]
  assign _T_75 = _T_48 | _T_74; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@116647.6]
  assign _T_82 = {_T_75,_T_72,_T_69,_T_66,_T_63,_T_60,_T_57,_T_54}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@116654.6]
  assign _T_101 = io_in_a_bits_opcode == 3'h6; // @[Monitor.scala 79:25:chipyard.TestHarness.RocketConfig.fir@116677.6]
  assign _T_103 = io_in_a_bits_address ^ 32'h80000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@116680.8]
  assign _T_104 = {1'b0,$signed(_T_103)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@116681.8]
  assign _T_106 = $signed(_T_104) & -33'sh10000000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@116683.8]
  assign _T_107 = $signed(_T_106) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@116684.8]
  assign _T_112 = ~reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116689.8]
  assign _T_117 = _T_10 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116702.8]
  assign _T_118 = ~_T_117; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116703.8]
  assign _T_121 = _T_24 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116710.8]
  assign _T_122 = ~_T_121; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116711.8]
  assign _T_124 = _T_18 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116717.8]
  assign _T_125 = ~_T_124; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116718.8]
  assign _T_126 = io_in_a_bits_param <= 3'h2; // @[Bundles.scala 110:27:chipyard.TestHarness.RocketConfig.fir@116723.8]
  assign _T_128 = _T_126 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116725.8]
  assign _T_129 = ~_T_128; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116726.8]
  assign _T_130 = ~io_in_a_bits_mask; // @[Monitor.scala 86:18:chipyard.TestHarness.RocketConfig.fir@116731.8]
  assign _T_131 = _T_130 == 8'h0; // @[Monitor.scala 86:31:chipyard.TestHarness.RocketConfig.fir@116732.8]
  assign _T_133 = _T_131 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116734.8]
  assign _T_134 = ~_T_133; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116735.8]
  assign _T_135 = ~io_in_a_bits_corrupt; // @[Monitor.scala 87:18:chipyard.TestHarness.RocketConfig.fir@116740.8]
  assign _T_137 = _T_135 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116742.8]
  assign _T_138 = ~_T_137; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116743.8]
  assign _T_139 = io_in_a_bits_opcode == 3'h7; // @[Monitor.scala 90:25:chipyard.TestHarness.RocketConfig.fir@116749.6]
  assign _T_168 = io_in_a_bits_param != 3'h0; // @[Monitor.scala 97:31:chipyard.TestHarness.RocketConfig.fir@116803.8]
  assign _T_170 = _T_168 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116805.8]
  assign _T_171 = ~_T_170; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116806.8]
  assign _T_181 = io_in_a_bits_opcode == 3'h4; // @[Monitor.scala 102:25:chipyard.TestHarness.RocketConfig.fir@116829.6]
  assign _T_183 = io_in_a_bits_size <= 3'h6; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@116832.8]
  assign _T_191 = _T_183 & _T_107; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@116840.8]
  assign _T_194 = _T_191 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116843.8]
  assign _T_195 = ~_T_194; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116844.8]
  assign _T_202 = io_in_a_bits_param == 3'h0; // @[Monitor.scala 106:31:chipyard.TestHarness.RocketConfig.fir@116863.8]
  assign _T_204 = _T_202 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116865.8]
  assign _T_205 = ~_T_204; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116866.8]
  assign _T_206 = io_in_a_bits_mask == _T_82; // @[Monitor.scala 107:30:chipyard.TestHarness.RocketConfig.fir@116871.8]
  assign _T_208 = _T_206 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116873.8]
  assign _T_209 = ~_T_208; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116874.8]
  assign _T_214 = io_in_a_bits_opcode == 3'h0; // @[Monitor.scala 111:25:chipyard.TestHarness.RocketConfig.fir@116888.6]
  assign _T_243 = io_in_a_bits_opcode == 3'h1; // @[Monitor.scala 119:25:chipyard.TestHarness.RocketConfig.fir@116939.6]
  assign _T_268 = ~_T_82; // @[Monitor.scala 124:33:chipyard.TestHarness.RocketConfig.fir@116981.8]
  assign _T_269 = io_in_a_bits_mask & _T_268; // @[Monitor.scala 124:31:chipyard.TestHarness.RocketConfig.fir@116982.8]
  assign _T_270 = _T_269 == 8'h0; // @[Monitor.scala 124:40:chipyard.TestHarness.RocketConfig.fir@116983.8]
  assign _T_272 = _T_270 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116985.8]
  assign _T_273 = ~_T_272; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116986.8]
  assign _T_274 = io_in_a_bits_opcode == 3'h2; // @[Monitor.scala 127:25:chipyard.TestHarness.RocketConfig.fir@116992.6]
  assign _T_292 = io_in_a_bits_param <= 3'h4; // @[Bundles.scala 140:33:chipyard.TestHarness.RocketConfig.fir@117023.8]
  assign _T_294 = _T_292 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@117025.8]
  assign _T_295 = ~_T_294; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@117026.8]
  assign _T_300 = io_in_a_bits_opcode == 3'h3; // @[Monitor.scala 135:25:chipyard.TestHarness.RocketConfig.fir@117040.6]
  assign _T_318 = io_in_a_bits_param <= 3'h3; // @[Bundles.scala 147:30:chipyard.TestHarness.RocketConfig.fir@117071.8]
  assign _T_320 = _T_318 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@117073.8]
  assign _T_321 = ~_T_320; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@117074.8]
  assign _T_326 = io_in_a_bits_opcode == 3'h5; // @[Monitor.scala 143:25:chipyard.TestHarness.RocketConfig.fir@117088.6]
  assign _T_344 = io_in_a_bits_param <= 3'h1; // @[Bundles.scala 160:28:chipyard.TestHarness.RocketConfig.fir@117119.8]
  assign _T_346 = _T_344 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@117121.8]
  assign _T_347 = ~_T_346; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@117122.8]
  assign _T_356 = io_in_d_bits_opcode <= 3'h6; // @[Bundles.scala 44:24:chipyard.TestHarness.RocketConfig.fir@117146.6]
  assign _T_358 = _T_356 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117148.6]
  assign _T_359 = ~_T_358; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117149.6]
  assign _T_366 = io_in_d_bits_source <= 4'h9; // @[Parameters.scala 58:20:chipyard.TestHarness.RocketConfig.fir@117160.6]
  assign _T_370 = io_in_d_bits_opcode == 3'h6; // @[Monitor.scala 307:25:chipyard.TestHarness.RocketConfig.fir@117166.6]
  assign _T_372 = _T_366 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117169.8]
  assign _T_373 = ~_T_372; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117170.8]
  assign _T_374 = io_in_d_bits_size >= 3'h3; // @[Monitor.scala 309:27:chipyard.TestHarness.RocketConfig.fir@117175.8]
  assign _T_376 = _T_374 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117177.8]
  assign _T_377 = ~_T_376; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117178.8]
  assign _T_382 = ~io_in_d_bits_corrupt; // @[Monitor.scala 311:15:chipyard.TestHarness.RocketConfig.fir@117191.8]
  assign _T_384 = _T_382 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117193.8]
  assign _T_385 = ~_T_384; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117194.8]
  assign _T_386 = ~io_in_d_bits_denied; // @[Monitor.scala 312:15:chipyard.TestHarness.RocketConfig.fir@117199.8]
  assign _T_388 = _T_386 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117201.8]
  assign _T_389 = ~_T_388; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117202.8]
  assign _T_390 = io_in_d_bits_opcode == 3'h4; // @[Monitor.scala 315:25:chipyard.TestHarness.RocketConfig.fir@117208.6]
  assign _T_418 = io_in_d_bits_opcode == 3'h5; // @[Monitor.scala 325:25:chipyard.TestHarness.RocketConfig.fir@117266.6]
  assign _T_438 = _T_386 | io_in_d_bits_corrupt; // @[Monitor.scala 331:30:chipyard.TestHarness.RocketConfig.fir@117307.8]
  assign _T_440 = _T_438 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117309.8]
  assign _T_441 = ~_T_440; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117310.8]
  assign _T_447 = io_in_d_bits_opcode == 3'h0; // @[Monitor.scala 335:25:chipyard.TestHarness.RocketConfig.fir@117325.6]
  assign _T_464 = io_in_d_bits_opcode == 3'h1; // @[Monitor.scala 343:25:chipyard.TestHarness.RocketConfig.fir@117360.6]
  assign _T_482 = io_in_d_bits_opcode == 3'h2; // @[Monitor.scala 351:25:chipyard.TestHarness.RocketConfig.fir@117396.6]
  assign _T_514 = io_in_a_ready & io_in_a_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@117462.4]
  assign _T_521 = ~io_in_a_bits_opcode[2]; // @[Edges.scala 93:28:chipyard.TestHarness.RocketConfig.fir@117469.4]
  assign _T_525 = _T_523 - 3'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@117473.4]
  assign _T_526 = _T_523 == 3'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@117474.4]
  assign _T_539 = ~_T_526; // @[Monitor.scala 386:22:chipyard.TestHarness.RocketConfig.fir@117490.4]
  assign _T_540 = io_in_a_valid & _T_539; // @[Monitor.scala 386:19:chipyard.TestHarness.RocketConfig.fir@117491.4]
  assign _T_541 = io_in_a_bits_opcode == _T_534; // @[Monitor.scala 387:32:chipyard.TestHarness.RocketConfig.fir@117493.6]
  assign _T_543 = _T_541 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@117495.6]
  assign _T_544 = ~_T_543; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@117496.6]
  assign _T_545 = io_in_a_bits_param == _T_535; // @[Monitor.scala 388:32:chipyard.TestHarness.RocketConfig.fir@117501.6]
  assign _T_547 = _T_545 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@117503.6]
  assign _T_548 = ~_T_547; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@117504.6]
  assign _T_549 = io_in_a_bits_size == _T_536; // @[Monitor.scala 389:32:chipyard.TestHarness.RocketConfig.fir@117509.6]
  assign _T_551 = _T_549 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@117511.6]
  assign _T_552 = ~_T_551; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@117512.6]
  assign _T_553 = io_in_a_bits_source == _T_537; // @[Monitor.scala 390:32:chipyard.TestHarness.RocketConfig.fir@117517.6]
  assign _T_555 = _T_553 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@117519.6]
  assign _T_556 = ~_T_555; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@117520.6]
  assign _T_557 = io_in_a_bits_address == _T_538; // @[Monitor.scala 391:32:chipyard.TestHarness.RocketConfig.fir@117525.6]
  assign _T_559 = _T_557 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@117527.6]
  assign _T_560 = ~_T_559; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@117528.6]
  assign _T_562 = _T_514 & _T_526; // @[Monitor.scala 393:20:chipyard.TestHarness.RocketConfig.fir@117535.4]
  assign _T_563 = io_in_d_ready & io_in_d_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@117543.4]
  assign _T_565 = 13'h3f << io_in_d_bits_size; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@117545.4]
  assign _T_567 = ~_T_565[5:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@117547.4]
  assign _T_573 = _T_571 - 3'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@117553.4]
  assign _T_574 = _T_571 == 3'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@117554.4]
  assign _T_588 = ~_T_574; // @[Monitor.scala 538:22:chipyard.TestHarness.RocketConfig.fir@117571.4]
  assign _T_589 = io_in_d_valid & _T_588; // @[Monitor.scala 538:19:chipyard.TestHarness.RocketConfig.fir@117572.4]
  assign _T_590 = io_in_d_bits_opcode == _T_582; // @[Monitor.scala 539:29:chipyard.TestHarness.RocketConfig.fir@117574.6]
  assign _T_592 = _T_590 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117576.6]
  assign _T_593 = ~_T_592; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117577.6]
  assign _T_598 = io_in_d_bits_size == _T_584; // @[Monitor.scala 541:29:chipyard.TestHarness.RocketConfig.fir@117590.6]
  assign _T_600 = _T_598 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117592.6]
  assign _T_601 = ~_T_600; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117593.6]
  assign _T_602 = io_in_d_bits_source == _T_585; // @[Monitor.scala 542:29:chipyard.TestHarness.RocketConfig.fir@117598.6]
  assign _T_604 = _T_602 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117600.6]
  assign _T_605 = ~_T_604; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117601.6]
  assign _T_610 = io_in_d_bits_denied == _T_587; // @[Monitor.scala 544:29:chipyard.TestHarness.RocketConfig.fir@117614.6]
  assign _T_612 = _T_610 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117616.6]
  assign _T_613 = ~_T_612; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117617.6]
  assign _T_615 = _T_563 & _T_574; // @[Monitor.scala 546:20:chipyard.TestHarness.RocketConfig.fir@117624.4]
  assign _T_627 = _T_625 - 3'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@117647.4]
  assign a_first = _T_625 == 3'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@117648.4]
  assign _T_645 = _T_643 - 3'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@117669.4]
  assign d_first = _T_643 == 3'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@117670.4]
  assign _GEN_57 = {io_in_d_bits_source, 2'h0}; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@117689.4]
  assign _T_653 = {{1'd0}, _GEN_57}; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@117689.4]
  assign _T_654 = inflight_opcodes >> _T_653; // @[Monitor.scala 629:44:chipyard.TestHarness.RocketConfig.fir@117690.4]
  assign _T_658 = 16'h10 - 16'h1; // @[Monitor.scala 606:57:chipyard.TestHarness.RocketConfig.fir@117694.4]
  assign _GEN_58 = {{24'd0}, _T_658}; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@117695.4]
  assign _T_659 = _T_654 & _GEN_58; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@117695.4]
  assign _T_660 = {{1'd0}, _T_659[39:1]}; // @[Monitor.scala 629:152:chipyard.TestHarness.RocketConfig.fir@117696.4]
  assign _T_662 = inflight_sizes >> _T_653; // @[Monitor.scala 633:40:chipyard.TestHarness.RocketConfig.fir@117701.4]
  assign _T_667 = _T_662 & _GEN_58; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@117706.4]
  assign _T_668 = {{1'd0}, _T_667[39:1]}; // @[Monitor.scala 633:144:chipyard.TestHarness.RocketConfig.fir@117707.4]
  assign _T_672 = _T_514 & a_first; // @[Monitor.scala 643:27:chipyard.TestHarness.RocketConfig.fir@117732.4]
  assign _T_674 = 16'h1 << io_in_a_bits_source; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@117735.6]
  assign _T_675 = {io_in_a_bits_opcode, 1'h0}; // @[Monitor.scala 645:53:chipyard.TestHarness.RocketConfig.fir@117737.6]
  assign _T_676 = _T_675 | 4'h1; // @[Monitor.scala 645:61:chipyard.TestHarness.RocketConfig.fir@117738.6]
  assign _T_677 = {io_in_a_bits_size, 1'h0}; // @[Monitor.scala 646:49:chipyard.TestHarness.RocketConfig.fir@117740.6]
  assign _T_678 = _T_677 | 4'h1; // @[Monitor.scala 646:57:chipyard.TestHarness.RocketConfig.fir@117741.6]
  assign _GEN_63 = {io_in_a_bits_source, 2'h0}; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@117743.6]
  assign _T_679 = {{1'd0}, _GEN_63}; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@117743.6]
  assign a_opcodes_set_interm = _T_672 ? _T_676 : 4'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@117734.4]
  assign _GEN_64 = {{127'd0}, a_opcodes_set_interm}; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@117744.6]
  assign _T_680 = _GEN_64 << _T_679; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@117744.6]
  assign a_sizes_set_interm = _T_672 ? _T_678 : 4'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@117734.4]
  assign _GEN_66 = {{127'd0}, a_sizes_set_interm}; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@117747.6]
  assign _T_682 = _GEN_66 << _T_679; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@117747.6]
  assign _T_683 = inflight >> io_in_a_bits_source; // @[Monitor.scala 649:26:chipyard.TestHarness.RocketConfig.fir@117749.6]
  assign _T_685 = ~_T_683[0]; // @[Monitor.scala 649:17:chipyard.TestHarness.RocketConfig.fir@117751.6]
  assign _T_687 = _T_685 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@117753.6]
  assign _T_688 = ~_T_687; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@117754.6]
  assign _GEN_15 = _T_672 ? _T_674 : 16'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@117734.4]
  assign _GEN_18 = _T_672 ? _T_680 : 131'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@117734.4]
  assign _GEN_19 = _T_672 ? _T_682 : 131'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@117734.4]
  assign _T_691 = _T_563 & d_first; // @[Monitor.scala 660:27:chipyard.TestHarness.RocketConfig.fir@117768.4]
  assign _T_693 = ~_T_370; // @[Monitor.scala 660:75:chipyard.TestHarness.RocketConfig.fir@117770.4]
  assign _T_694 = _T_691 & _T_693; // @[Monitor.scala 660:72:chipyard.TestHarness.RocketConfig.fir@117771.4]
  assign _T_695 = 16'h1 << io_in_d_bits_source; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@117773.6]
  assign _GEN_68 = {{127'd0}, _T_658}; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@117780.6]
  assign _T_701 = _GEN_68 << _T_653; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@117780.6]
  assign _GEN_20 = _T_694 ? _T_695 : 16'h0; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@117772.4]
  assign _GEN_21 = _T_694 ? _T_701 : 143'h0; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@117772.4]
  assign _T_708 = io_in_d_valid & d_first; // @[Monitor.scala 665:26:chipyard.TestHarness.RocketConfig.fir@117790.4]
  assign _T_711 = _T_708 & _T_693; // @[Monitor.scala 665:71:chipyard.TestHarness.RocketConfig.fir@117793.4]
  assign _T_712 = inflight >> io_in_d_bits_source; // @[Monitor.scala 666:25:chipyard.TestHarness.RocketConfig.fir@117795.6]
  assign _T_714 = io_in_a_bits_source == io_in_d_bits_source; // @[Monitor.scala 666:93:chipyard.TestHarness.RocketConfig.fir@117797.6]
  assign _T_715 = io_in_a_valid & _T_714; // @[Monitor.scala 666:68:chipyard.TestHarness.RocketConfig.fir@117798.6]
  assign _T_716 = io_in_a_bits_size == io_in_d_bits_size; // @[Monitor.scala 666:142:chipyard.TestHarness.RocketConfig.fir@117799.6]
  assign _T_717 = _T_715 & _T_716; // @[Monitor.scala 666:119:chipyard.TestHarness.RocketConfig.fir@117800.6]
  assign _T_718 = _T_717 & a_first; // @[Monitor.scala 666:166:chipyard.TestHarness.RocketConfig.fir@117801.6]
  assign _T_719 = _T_712[0] | _T_718; // @[Monitor.scala 666:49:chipyard.TestHarness.RocketConfig.fir@117802.6]
  assign _T_721 = _T_719 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117804.6]
  assign _T_722 = ~_T_721; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117805.6]
  assign a_opcode_lookup = _T_660[3:0]; // @[:chipyard.TestHarness.RocketConfig.fir@117687.4 :chipyard.TestHarness.RocketConfig.fir@117688.4 Monitor.scala 629:21:chipyard.TestHarness.RocketConfig.fir@117697.4]
  assign _GEN_25 = 3'h2 == a_opcode_lookup[2:0] ? 3'h1 : 3'h0; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@117811.6]
  assign _GEN_26 = 3'h3 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_25; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@117811.6]
  assign _GEN_27 = 3'h4 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_26; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@117811.6]
  assign _GEN_28 = 3'h5 == a_opcode_lookup[2:0] ? 3'h2 : _GEN_27; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@117811.6]
  assign _GEN_29 = 3'h6 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_28; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@117811.6]
  assign _GEN_30 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_29; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@117811.6]
  assign _T_724 = io_in_d_bits_opcode == _GEN_30; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@117811.6]
  assign _GEN_37 = 3'h6 == a_opcode_lookup[2:0] ? 3'h5 : _GEN_28; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@117813.6]
  assign _GEN_38 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_37; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@117813.6]
  assign _T_726 = io_in_d_bits_opcode == _GEN_38; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@117813.6]
  assign _T_727 = _T_724 | _T_726; // @[Monitor.scala 667:71:chipyard.TestHarness.RocketConfig.fir@117814.6]
  assign _GEN_41 = 3'h2 == io_in_a_bits_opcode ? 3'h1 : 3'h0; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@117815.6]
  assign _GEN_42 = 3'h3 == io_in_a_bits_opcode ? 3'h1 : _GEN_41; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@117815.6]
  assign _GEN_43 = 3'h4 == io_in_a_bits_opcode ? 3'h1 : _GEN_42; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@117815.6]
  assign _GEN_44 = 3'h5 == io_in_a_bits_opcode ? 3'h2 : _GEN_43; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@117815.6]
  assign _GEN_45 = 3'h6 == io_in_a_bits_opcode ? 3'h4 : _GEN_44; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@117815.6]
  assign _GEN_46 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_45; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@117815.6]
  assign _T_728 = io_in_d_bits_opcode == _GEN_46; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@117815.6]
  assign _GEN_53 = 3'h6 == io_in_a_bits_opcode ? 3'h5 : _GEN_44; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@117816.6]
  assign _GEN_54 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_53; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@117816.6]
  assign _T_729 = io_in_d_bits_opcode == _GEN_54; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@117816.6]
  assign _T_730 = _T_728 | _T_729; // @[Monitor.scala 668:99:chipyard.TestHarness.RocketConfig.fir@117817.6]
  assign _T_731 = io_in_a_valid & _T_730; // @[Monitor.scala 668:34:chipyard.TestHarness.RocketConfig.fir@117818.6]
  assign _T_732 = _T_727 | _T_731; // @[Monitor.scala 668:15:chipyard.TestHarness.RocketConfig.fir@117819.6]
  assign _T_734 = _T_732 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117821.6]
  assign _T_735 = ~_T_734; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117822.6]
  assign a_size_lookup = _T_668[3:0]; // @[:chipyard.TestHarness.RocketConfig.fir@117698.4 :chipyard.TestHarness.RocketConfig.fir@117699.4 Monitor.scala 633:19:chipyard.TestHarness.RocketConfig.fir@117708.4]
  assign _GEN_71 = {{1'd0}, io_in_d_bits_size}; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@117827.6]
  assign _T_736 = _GEN_71 == a_size_lookup; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@117827.6]
  assign _T_738 = io_in_a_valid & _T_716; // @[Monitor.scala 670:72:chipyard.TestHarness.RocketConfig.fir@117829.6]
  assign _T_739 = _T_736 | _T_738; // @[Monitor.scala 670:53:chipyard.TestHarness.RocketConfig.fir@117830.6]
  assign _T_741 = _T_739 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117832.6]
  assign _T_742 = ~_T_741; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117833.6]
  assign _T_744 = _T_708 & a_first; // @[Monitor.scala 672:36:chipyard.TestHarness.RocketConfig.fir@117840.4]
  assign _T_745 = _T_744 & io_in_a_valid; // @[Monitor.scala 672:47:chipyard.TestHarness.RocketConfig.fir@117841.4]
  assign _T_747 = _T_745 & _T_714; // @[Monitor.scala 672:65:chipyard.TestHarness.RocketConfig.fir@117843.4]
  assign _T_749 = _T_747 & _T_693; // @[Monitor.scala 672:116:chipyard.TestHarness.RocketConfig.fir@117845.4]
  assign _T_750 = ~io_in_d_ready; // @[Monitor.scala 673:15:chipyard.TestHarness.RocketConfig.fir@117847.6]
  assign _T_751 = _T_750 | io_in_a_ready; // @[Monitor.scala 673:32:chipyard.TestHarness.RocketConfig.fir@117848.6]
  assign _T_753 = _T_751 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117850.6]
  assign _T_754 = ~_T_753; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117851.6]
  assign a_set = _GEN_15[9:0]; // @[:chipyard.TestHarness.RocketConfig.fir@117681.4 :chipyard.TestHarness.RocketConfig.fir@117682.4 Monitor.scala 644:13:chipyard.TestHarness.RocketConfig.fir@117736.6]
  assign d_clr = _GEN_20[9:0]; // @[:chipyard.TestHarness.RocketConfig.fir@117760.4 :chipyard.TestHarness.RocketConfig.fir@117761.4 Monitor.scala 661:13:chipyard.TestHarness.RocketConfig.fir@117774.6]
  assign _T_755 = a_set != d_clr; // @[Monitor.scala 677:20:chipyard.TestHarness.RocketConfig.fir@117857.4]
  assign _T_756 = |a_set; // @[Monitor.scala 677:40:chipyard.TestHarness.RocketConfig.fir@117858.4]
  assign _T_757 = ~_T_756; // @[Monitor.scala 677:33:chipyard.TestHarness.RocketConfig.fir@117859.4]
  assign _T_758 = _T_755 | _T_757; // @[Monitor.scala 677:30:chipyard.TestHarness.RocketConfig.fir@117860.4]
  assign _T_760 = _T_758 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117862.4]
  assign _T_761 = ~_T_760; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117863.4]
  assign _T_762 = inflight | a_set; // @[Monitor.scala 680:27:chipyard.TestHarness.RocketConfig.fir@117868.4]
  assign _T_763 = ~d_clr; // @[Monitor.scala 680:38:chipyard.TestHarness.RocketConfig.fir@117869.4]
  assign _T_764 = _T_762 & _T_763; // @[Monitor.scala 680:36:chipyard.TestHarness.RocketConfig.fir@117870.4]
  assign a_opcodes_set = _GEN_18[39:0]; // @[:chipyard.TestHarness.RocketConfig.fir@117683.4 :chipyard.TestHarness.RocketConfig.fir@117684.4 Monitor.scala 647:21:chipyard.TestHarness.RocketConfig.fir@117745.6]
  assign _T_765 = inflight_opcodes | a_opcodes_set; // @[Monitor.scala 681:43:chipyard.TestHarness.RocketConfig.fir@117872.4]
  assign d_opcodes_clr = _GEN_21[39:0]; // @[:chipyard.TestHarness.RocketConfig.fir@117762.4 :chipyard.TestHarness.RocketConfig.fir@117763.4 Monitor.scala 662:21:chipyard.TestHarness.RocketConfig.fir@117781.6]
  assign _T_766 = ~d_opcodes_clr; // @[Monitor.scala 681:62:chipyard.TestHarness.RocketConfig.fir@117873.4]
  assign _T_767 = _T_765 & _T_766; // @[Monitor.scala 681:60:chipyard.TestHarness.RocketConfig.fir@117874.4]
  assign a_sizes_set = _GEN_19[39:0]; // @[:chipyard.TestHarness.RocketConfig.fir@117685.4 :chipyard.TestHarness.RocketConfig.fir@117686.4 Monitor.scala 648:19:chipyard.TestHarness.RocketConfig.fir@117748.6]
  assign _T_768 = inflight_sizes | a_sizes_set; // @[Monitor.scala 682:39:chipyard.TestHarness.RocketConfig.fir@117876.4]
  assign _T_770 = _T_768 & _T_766; // @[Monitor.scala 682:54:chipyard.TestHarness.RocketConfig.fir@117878.4]
  assign _T_772 = |inflight; // @[Monitor.scala 687:26:chipyard.TestHarness.RocketConfig.fir@117883.4]
  assign _T_773 = ~_T_772; // @[Monitor.scala 687:16:chipyard.TestHarness.RocketConfig.fir@117884.4]
  assign _T_774 = plusarg_reader_out == 32'h0; // @[Monitor.scala 687:39:chipyard.TestHarness.RocketConfig.fir@117885.4]
  assign _T_775 = _T_773 | _T_774; // @[Monitor.scala 687:30:chipyard.TestHarness.RocketConfig.fir@117886.4]
  assign _T_776 = _T_771 < plusarg_reader_out; // @[Monitor.scala 687:59:chipyard.TestHarness.RocketConfig.fir@117887.4]
  assign _T_777 = _T_775 | _T_776; // @[Monitor.scala 687:47:chipyard.TestHarness.RocketConfig.fir@117888.4]
  assign _T_779 = _T_777 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@117890.4]
  assign _T_780 = ~_T_779; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@117891.4]
  assign _T_782 = _T_771 + 32'h1; // @[Monitor.scala 689:26:chipyard.TestHarness.RocketConfig.fir@117897.4]
  assign _T_785 = _T_514 | _T_563; // @[Monitor.scala 690:27:chipyard.TestHarness.RocketConfig.fir@117901.4]
  assign _GEN_72 = io_in_a_valid & _T_101; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116691.10]
  assign _GEN_88 = io_in_a_valid & _T_139; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116763.10]
  assign _GEN_106 = io_in_a_valid & _T_181; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116846.10]
  assign _GEN_118 = io_in_a_valid & _T_214; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116905.10]
  assign _GEN_128 = io_in_a_valid & _T_243; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116956.10]
  assign _GEN_138 = io_in_a_valid & _T_274; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@117006.10]
  assign _GEN_148 = io_in_a_valid & _T_300; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@117054.10]
  assign _GEN_158 = io_in_a_valid & _T_326; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@117102.10]
  assign _GEN_170 = io_in_d_valid & _T_370; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117172.10]
  assign _GEN_178 = io_in_d_valid & _T_390; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117214.10]
  assign _GEN_186 = io_in_d_valid & _T_418; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117272.10]
  assign _GEN_194 = io_in_d_valid & _T_447; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117331.10]
  assign _GEN_198 = io_in_d_valid & _T_464; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117366.10]
  assign _GEN_202 = io_in_d_valid & _T_482; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117402.10]
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
  _T_523 = _RAND_0[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_534 = _RAND_1[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_535 = _RAND_2[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_536 = _RAND_3[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_537 = _RAND_4[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_538 = _RAND_5[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  _T_571 = _RAND_6[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  _T_582 = _RAND_7[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  _T_584 = _RAND_8[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  _T_585 = _RAND_9[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  _T_587 = _RAND_10[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  inflight = _RAND_11[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {2{`RANDOM}};
  inflight_opcodes = _RAND_12[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {2{`RANDOM}};
  inflight_sizes = _RAND_13[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  _T_625 = _RAND_14[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  _T_643 = _RAND_15[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  _T_771 = _RAND_16[31:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      _T_523 <= 3'h0;
    end else if (_T_514) begin
      if (_T_526) begin
        if (_T_521) begin
          _T_523 <= _T_16[5:3];
        end else begin
          _T_523 <= 3'h0;
        end
      end else begin
        _T_523 <= _T_525;
      end
    end
    if (_T_562) begin
      _T_534 <= io_in_a_bits_opcode;
    end
    if (_T_562) begin
      _T_535 <= io_in_a_bits_param;
    end
    if (_T_562) begin
      _T_536 <= io_in_a_bits_size;
    end
    if (_T_562) begin
      _T_537 <= io_in_a_bits_source;
    end
    if (_T_562) begin
      _T_538 <= io_in_a_bits_address;
    end
    if (reset) begin
      _T_571 <= 3'h0;
    end else if (_T_563) begin
      if (_T_574) begin
        if (io_in_d_bits_opcode[0]) begin
          _T_571 <= _T_567[5:3];
        end else begin
          _T_571 <= 3'h0;
        end
      end else begin
        _T_571 <= _T_573;
      end
    end
    if (_T_615) begin
      _T_582 <= io_in_d_bits_opcode;
    end
    if (_T_615) begin
      _T_584 <= io_in_d_bits_size;
    end
    if (_T_615) begin
      _T_585 <= io_in_d_bits_source;
    end
    if (_T_615) begin
      _T_587 <= io_in_d_bits_denied;
    end
    if (reset) begin
      inflight <= 10'h0;
    end else begin
      inflight <= _T_764;
    end
    if (reset) begin
      inflight_opcodes <= 40'h0;
    end else begin
      inflight_opcodes <= _T_767;
    end
    if (reset) begin
      inflight_sizes <= 40'h0;
    end else begin
      inflight_sizes <= _T_770;
    end
    if (reset) begin
      _T_625 <= 3'h0;
    end else if (_T_514) begin
      if (a_first) begin
        if (_T_521) begin
          _T_625 <= _T_16[5:3];
        end else begin
          _T_625 <= 3'h0;
        end
      end else begin
        _T_625 <= _T_627;
      end
    end
    if (reset) begin
      _T_643 <= 3'h0;
    end else if (_T_563) begin
      if (d_first) begin
        if (io_in_d_bits_opcode[0]) begin
          _T_643 <= _T_567[5:3];
        end else begin
          _T_643 <= 3'h0;
        end
      end else begin
        _T_643 <= _T_645;
      end
    end
    if (reset) begin
      _T_771 <= 32'h0;
    end else if (_T_785) begin
      _T_771 <= 32'h0;
    end else begin
      _T_771 <= _T_782;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_72 & _T_112) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock type unsupported by manager (connected at BankedL2Params.scala:63:103)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116691.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_72 & _T_112) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116692.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_72 & _T_112) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock from a client which does not support Probe (connected at BankedL2Params.scala:63:103)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116698.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_72 & _T_112) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116699.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_72 & _T_118) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock carries invalid source ID (connected at BankedL2Params.scala:63:103)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116705.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_72 & _T_118) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116706.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_72 & _T_122) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock smaller than a beat (connected at BankedL2Params.scala:63:103)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116713.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_72 & _T_122) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116714.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_72 & _T_125) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock address not aligned to size (connected at BankedL2Params.scala:63:103)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116720.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_72 & _T_125) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116721.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_72 & _T_129) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock carries invalid grow param (connected at BankedL2Params.scala:63:103)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116728.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_72 & _T_129) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116729.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_72 & _T_134) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock contains invalid mask (connected at BankedL2Params.scala:63:103)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116737.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_72 & _T_134) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116738.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_72 & _T_138) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock is corrupt (connected at BankedL2Params.scala:63:103)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116745.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_72 & _T_138) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116746.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_88 & _T_112) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm type unsupported by manager (connected at BankedL2Params.scala:63:103)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116763.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_88 & _T_112) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116764.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_88 & _T_112) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm from a client which does not support Probe (connected at BankedL2Params.scala:63:103)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116770.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_88 & _T_112) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116771.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_88 & _T_118) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm carries invalid source ID (connected at BankedL2Params.scala:63:103)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116777.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_88 & _T_118) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116778.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_88 & _T_122) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm smaller than a beat (connected at BankedL2Params.scala:63:103)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116785.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_88 & _T_122) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116786.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_88 & _T_125) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm address not aligned to size (connected at BankedL2Params.scala:63:103)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116792.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_88 & _T_125) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116793.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_88 & _T_129) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm carries invalid grow param (connected at BankedL2Params.scala:63:103)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116800.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_88 & _T_129) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116801.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm requests NtoB (connected at BankedL2Params.scala:63:103)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116808.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116809.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_88 & _T_134) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm contains invalid mask (connected at BankedL2Params.scala:63:103)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116817.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_88 & _T_134) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116818.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_88 & _T_138) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm is corrupt (connected at BankedL2Params.scala:63:103)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116825.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_88 & _T_138) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116826.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_106 & _T_195) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Get type unsupported by manager (connected at BankedL2Params.scala:63:103)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116846.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_106 & _T_195) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116847.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_106 & _T_118) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get carries invalid source ID (connected at BankedL2Params.scala:63:103)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116853.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_106 & _T_118) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116854.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_106 & _T_125) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get address not aligned to size (connected at BankedL2Params.scala:63:103)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116860.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_106 & _T_125) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116861.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_106 & _T_205) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get carries invalid param (connected at BankedL2Params.scala:63:103)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116868.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_106 & _T_205) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116869.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_106 & _T_209) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get contains invalid mask (connected at BankedL2Params.scala:63:103)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116876.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_106 & _T_209) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116877.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_106 & _T_138) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get is corrupt (connected at BankedL2Params.scala:63:103)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116884.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_106 & _T_138) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116885.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_118 & _T_195) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutFull type unsupported by manager (connected at BankedL2Params.scala:63:103)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116905.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_118 & _T_195) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116906.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_118 & _T_118) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull carries invalid source ID (connected at BankedL2Params.scala:63:103)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116912.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_118 & _T_118) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116913.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_118 & _T_125) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull address not aligned to size (connected at BankedL2Params.scala:63:103)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116919.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_118 & _T_125) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116920.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_118 & _T_205) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull carries invalid param (connected at BankedL2Params.scala:63:103)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116927.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_118 & _T_205) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116928.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_118 & _T_209) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull contains invalid mask (connected at BankedL2Params.scala:63:103)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116935.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_118 & _T_209) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116936.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_128 & _T_195) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutPartial type unsupported by manager (connected at BankedL2Params.scala:63:103)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116956.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_128 & _T_195) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116957.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_128 & _T_118) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial carries invalid source ID (connected at BankedL2Params.scala:63:103)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116963.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_128 & _T_118) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116964.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_128 & _T_125) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial address not aligned to size (connected at BankedL2Params.scala:63:103)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116970.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_128 & _T_125) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116971.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_128 & _T_205) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial carries invalid param (connected at BankedL2Params.scala:63:103)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116978.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_128 & _T_205) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116979.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_128 & _T_273) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial contains invalid mask (connected at BankedL2Params.scala:63:103)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116988.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_128 & _T_273) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116989.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_138 & _T_112) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Arithmetic type unsupported by manager (connected at BankedL2Params.scala:63:103)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@117006.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_138 & _T_112) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@117007.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_138 & _T_118) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic carries invalid source ID (connected at BankedL2Params.scala:63:103)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@117013.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_138 & _T_118) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@117014.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_138 & _T_125) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic address not aligned to size (connected at BankedL2Params.scala:63:103)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@117020.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_138 & _T_125) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@117021.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_138 & _T_295) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic carries invalid opcode param (connected at BankedL2Params.scala:63:103)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@117028.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_138 & _T_295) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@117029.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_138 & _T_209) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic contains invalid mask (connected at BankedL2Params.scala:63:103)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@117036.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_138 & _T_209) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@117037.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_148 & _T_112) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Logical type unsupported by manager (connected at BankedL2Params.scala:63:103)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@117054.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_148 & _T_112) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@117055.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_148 & _T_118) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical carries invalid source ID (connected at BankedL2Params.scala:63:103)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@117061.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_148 & _T_118) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@117062.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_148 & _T_125) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical address not aligned to size (connected at BankedL2Params.scala:63:103)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@117068.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_148 & _T_125) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@117069.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_148 & _T_321) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical carries invalid opcode param (connected at BankedL2Params.scala:63:103)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@117076.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_148 & _T_321) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@117077.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_148 & _T_209) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical contains invalid mask (connected at BankedL2Params.scala:63:103)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@117084.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_148 & _T_209) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@117085.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_158 & _T_112) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Hint type unsupported by manager (connected at BankedL2Params.scala:63:103)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@117102.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_158 & _T_112) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@117103.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_158 & _T_118) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint carries invalid source ID (connected at BankedL2Params.scala:63:103)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@117109.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_158 & _T_118) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@117110.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_158 & _T_125) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint address not aligned to size (connected at BankedL2Params.scala:63:103)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@117116.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_158 & _T_125) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@117117.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_158 & _T_347) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint carries invalid opcode param (connected at BankedL2Params.scala:63:103)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@117124.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_158 & _T_347) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@117125.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_158 & _T_209) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint contains invalid mask (connected at BankedL2Params.scala:63:103)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@117132.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_158 & _T_209) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@117133.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_158 & _T_138) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint is corrupt (connected at BankedL2Params.scala:63:103)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@117140.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_158 & _T_138) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@117141.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_in_d_valid & _T_359) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel has invalid opcode (connected at BankedL2Params.scala:63:103)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117151.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (io_in_d_valid & _T_359) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117152.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_170 & _T_373) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck carries invalid source ID (connected at BankedL2Params.scala:63:103)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117172.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_170 & _T_373) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117173.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_170 & _T_377) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck smaller than a beat (connected at BankedL2Params.scala:63:103)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117180.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_170 & _T_377) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117181.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_170 & _T_385) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck is corrupt (connected at BankedL2Params.scala:63:103)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117196.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_170 & _T_385) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117197.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_170 & _T_389) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck is denied (connected at BankedL2Params.scala:63:103)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117204.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_170 & _T_389) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117205.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_178 & _T_373) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid source ID (connected at BankedL2Params.scala:63:103)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117214.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_178 & _T_373) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117215.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_178 & _T_112) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid sink ID (connected at BankedL2Params.scala:63:103)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117221.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_178 & _T_112) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117222.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_178 & _T_377) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant smaller than a beat (connected at BankedL2Params.scala:63:103)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117229.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_178 & _T_377) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117230.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_178 & _T_385) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant is corrupt (connected at BankedL2Params.scala:63:103)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117253.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_178 & _T_385) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117254.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_186 & _T_373) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid source ID (connected at BankedL2Params.scala:63:103)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117272.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_186 & _T_373) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117273.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_186 & _T_112) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid sink ID (connected at BankedL2Params.scala:63:103)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117279.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_186 & _T_112) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117280.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_186 & _T_377) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData smaller than a beat (connected at BankedL2Params.scala:63:103)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117287.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_186 & _T_377) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117288.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_186 & _T_441) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData is denied but not corrupt (connected at BankedL2Params.scala:63:103)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117312.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_186 & _T_441) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117313.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_194 & _T_373) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck carries invalid source ID (connected at BankedL2Params.scala:63:103)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117331.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_194 & _T_373) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117332.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_194 & _T_385) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck is corrupt (connected at BankedL2Params.scala:63:103)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117347.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_194 & _T_385) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117348.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_198 & _T_373) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData carries invalid source ID (connected at BankedL2Params.scala:63:103)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117366.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_198 & _T_373) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117367.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_198 & _T_441) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData is denied but not corrupt (connected at BankedL2Params.scala:63:103)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117383.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_198 & _T_441) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117384.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_202 & _T_373) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck carries invalid source ID (connected at BankedL2Params.scala:63:103)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117402.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_202 & _T_373) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117403.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_202 & _T_385) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck is corrupt (connected at BankedL2Params.scala:63:103)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117418.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_202 & _T_385) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117419.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_540 & _T_544) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel opcode changed within multibeat operation (connected at BankedL2Params.scala:63:103)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@117498.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_540 & _T_544) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@117499.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_540 & _T_548) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel param changed within multibeat operation (connected at BankedL2Params.scala:63:103)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@117506.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_540 & _T_548) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@117507.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_540 & _T_552) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel size changed within multibeat operation (connected at BankedL2Params.scala:63:103)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@117514.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_540 & _T_552) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@117515.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_540 & _T_556) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel source changed within multibeat operation (connected at BankedL2Params.scala:63:103)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@117522.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_540 & _T_556) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@117523.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_540 & _T_560) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel address changed with multibeat operation (connected at BankedL2Params.scala:63:103)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@117530.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_540 & _T_560) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@117531.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_589 & _T_593) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel opcode changed within multibeat operation (connected at BankedL2Params.scala:63:103)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117579.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_589 & _T_593) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117580.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_589 & _T_601) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel size changed within multibeat operation (connected at BankedL2Params.scala:63:103)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117595.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_589 & _T_601) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117596.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_589 & _T_605) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel source changed within multibeat operation (connected at BankedL2Params.scala:63:103)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117603.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_589 & _T_605) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117604.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_589 & _T_613) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel denied changed with multibeat operation (connected at BankedL2Params.scala:63:103)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117619.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_589 & _T_613) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117620.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_672 & _T_688) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel re-used a source ID (connected at BankedL2Params.scala:63:103)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@117756.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_672 & _T_688) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@117757.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_711 & _T_722) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel acknowledged for nothing inflight (connected at BankedL2Params.scala:63:103)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117807.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_711 & _T_722) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117808.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_711 & _T_735) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper opcode response (connected at BankedL2Params.scala:63:103)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117824.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_711 & _T_735) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117825.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_711 & _T_742) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper response size (connected at BankedL2Params.scala:63:103)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117835.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_711 & _T_742) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117836.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_749 & _T_754) begin
          $fwrite(32'h80000002,"Assertion failed: ready check\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117853.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_749 & _T_754) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117854.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_761) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' and 'D' concurrent, despite minlatency 1 (connected at BankedL2Params.scala:63:103)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117865.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_761) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@117866.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_780) begin
          $fwrite(32'h80000002,"Assertion failed: TileLink timeout expired (connected at BankedL2Params.scala:63:103)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@117893.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_780) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@117894.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
