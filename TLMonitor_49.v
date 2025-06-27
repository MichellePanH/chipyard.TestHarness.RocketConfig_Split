module TLMonitor_49( // @[:chipyard.TestHarness.RocketConfig.fir@122394.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@122395.4]
  input         reset, // @[:chipyard.TestHarness.RocketConfig.fir@122396.4]
  input         io_in_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@122397.4]
  input         io_in_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@122397.4]
  input  [2:0]  io_in_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@122397.4]
  input  [2:0]  io_in_a_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@122397.4]
  input  [1:0]  io_in_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@122397.4]
  input  [6:0]  io_in_a_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@122397.4]
  input  [25:0] io_in_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@122397.4]
  input  [7:0]  io_in_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@122397.4]
  input         io_in_a_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@122397.4]
  input         io_in_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@122397.4]
  input         io_in_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@122397.4]
  input  [2:0]  io_in_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@122397.4]
  input  [1:0]  io_in_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@122397.4]
  input  [6:0]  io_in_d_bits_source // @[:chipyard.TestHarness.RocketConfig.fir@122397.4]
);
  wire [31:0] plusarg_reader_out; // @[PlusArg.scala 44:11:chipyard.TestHarness.RocketConfig.fir@123704.4]
  wire  _T_10; // @[Parameters.scala 58:20:chipyard.TestHarness.RocketConfig.fir@122414.6]
  wire [5:0] _T_14; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@122420.6]
  wire [2:0] _T_16; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@122422.6]
  wire [25:0] _GEN_56; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@122423.6]
  wire [25:0] _T_17; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@122423.6]
  wire  _T_18; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@122424.6]
  wire [2:0] _T_19; // @[Misc.scala 201:34:chipyard.TestHarness.RocketConfig.fir@122425.6]
  wire [3:0] _T_21; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@122427.6]
  wire [2:0] _T_23; // @[Misc.scala 201:81:chipyard.TestHarness.RocketConfig.fir@122429.6]
  wire  _T_24; // @[Misc.scala 205:21:chipyard.TestHarness.RocketConfig.fir@122430.6]
  wire  _T_27; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@122433.6]
  wire  _T_29; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@122435.6]
  wire  _T_30; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@122436.6]
  wire  _T_32; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@122438.6]
  wire  _T_33; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@122439.6]
  wire  _T_36; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@122442.6]
  wire  _T_37; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@122443.6]
  wire  _T_38; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@122444.6]
  wire  _T_39; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@122445.6]
  wire  _T_40; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@122446.6]
  wire  _T_41; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@122447.6]
  wire  _T_42; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@122448.6]
  wire  _T_43; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@122449.6]
  wire  _T_44; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@122450.6]
  wire  _T_45; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@122451.6]
  wire  _T_46; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@122452.6]
  wire  _T_47; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@122453.6]
  wire  _T_48; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@122454.6]
  wire  _T_51; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@122457.6]
  wire  _T_52; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@122458.6]
  wire  _T_53; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@122459.6]
  wire  _T_54; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@122460.6]
  wire  _T_55; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@122461.6]
  wire  _T_56; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@122462.6]
  wire  _T_57; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@122463.6]
  wire  _T_58; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@122464.6]
  wire  _T_59; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@122465.6]
  wire  _T_60; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@122466.6]
  wire  _T_61; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@122467.6]
  wire  _T_62; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@122468.6]
  wire  _T_63; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@122469.6]
  wire  _T_64; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@122470.6]
  wire  _T_65; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@122471.6]
  wire  _T_66; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@122472.6]
  wire  _T_67; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@122473.6]
  wire  _T_68; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@122474.6]
  wire  _T_69; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@122475.6]
  wire  _T_70; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@122476.6]
  wire  _T_71; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@122477.6]
  wire  _T_72; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@122478.6]
  wire  _T_73; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@122479.6]
  wire  _T_74; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@122480.6]
  wire  _T_75; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@122481.6]
  wire [7:0] _T_82; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@122488.6]
  wire  _T_101; // @[Monitor.scala 79:25:chipyard.TestHarness.RocketConfig.fir@122511.6]
  wire [25:0] _T_103; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@122514.8]
  wire [26:0] _T_104; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@122515.8]
  wire [26:0] _T_106; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@122517.8]
  wire  _T_107; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@122518.8]
  wire  _T_112; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122523.8]
  wire  _T_117; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122536.8]
  wire  _T_118; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122537.8]
  wire  _T_121; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122544.8]
  wire  _T_122; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122545.8]
  wire  _T_124; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122551.8]
  wire  _T_125; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122552.8]
  wire  _T_126; // @[Bundles.scala 110:27:chipyard.TestHarness.RocketConfig.fir@122557.8]
  wire  _T_128; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122559.8]
  wire  _T_129; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122560.8]
  wire [7:0] _T_130; // @[Monitor.scala 86:18:chipyard.TestHarness.RocketConfig.fir@122565.8]
  wire  _T_131; // @[Monitor.scala 86:31:chipyard.TestHarness.RocketConfig.fir@122566.8]
  wire  _T_133; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122568.8]
  wire  _T_134; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122569.8]
  wire  _T_135; // @[Monitor.scala 87:18:chipyard.TestHarness.RocketConfig.fir@122574.8]
  wire  _T_137; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122576.8]
  wire  _T_138; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122577.8]
  wire  _T_139; // @[Monitor.scala 90:25:chipyard.TestHarness.RocketConfig.fir@122583.6]
  wire  _T_168; // @[Monitor.scala 97:31:chipyard.TestHarness.RocketConfig.fir@122637.8]
  wire  _T_170; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122639.8]
  wire  _T_171; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122640.8]
  wire  _T_181; // @[Monitor.scala 102:25:chipyard.TestHarness.RocketConfig.fir@122663.6]
  wire  _T_194; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122677.8]
  wire  _T_195; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122678.8]
  wire  _T_202; // @[Monitor.scala 106:31:chipyard.TestHarness.RocketConfig.fir@122697.8]
  wire  _T_204; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122699.8]
  wire  _T_205; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122700.8]
  wire  _T_206; // @[Monitor.scala 107:30:chipyard.TestHarness.RocketConfig.fir@122705.8]
  wire  _T_208; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122707.8]
  wire  _T_209; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122708.8]
  wire  _T_214; // @[Monitor.scala 111:25:chipyard.TestHarness.RocketConfig.fir@122722.6]
  wire  _T_243; // @[Monitor.scala 119:25:chipyard.TestHarness.RocketConfig.fir@122773.6]
  wire [7:0] _T_268; // @[Monitor.scala 124:33:chipyard.TestHarness.RocketConfig.fir@122815.8]
  wire [7:0] _T_269; // @[Monitor.scala 124:31:chipyard.TestHarness.RocketConfig.fir@122816.8]
  wire  _T_270; // @[Monitor.scala 124:40:chipyard.TestHarness.RocketConfig.fir@122817.8]
  wire  _T_272; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122819.8]
  wire  _T_273; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122820.8]
  wire  _T_274; // @[Monitor.scala 127:25:chipyard.TestHarness.RocketConfig.fir@122826.6]
  wire  _T_292; // @[Bundles.scala 140:33:chipyard.TestHarness.RocketConfig.fir@122857.8]
  wire  _T_294; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122859.8]
  wire  _T_295; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122860.8]
  wire  _T_300; // @[Monitor.scala 135:25:chipyard.TestHarness.RocketConfig.fir@122874.6]
  wire  _T_318; // @[Bundles.scala 147:30:chipyard.TestHarness.RocketConfig.fir@122905.8]
  wire  _T_320; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122907.8]
  wire  _T_321; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122908.8]
  wire  _T_326; // @[Monitor.scala 143:25:chipyard.TestHarness.RocketConfig.fir@122922.6]
  wire  _T_344; // @[Bundles.scala 160:28:chipyard.TestHarness.RocketConfig.fir@122953.8]
  wire  _T_346; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122955.8]
  wire  _T_347; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122956.8]
  wire  _T_356; // @[Bundles.scala 44:24:chipyard.TestHarness.RocketConfig.fir@122980.6]
  wire  _T_358; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@122982.6]
  wire  _T_359; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@122983.6]
  wire  _T_366; // @[Parameters.scala 58:20:chipyard.TestHarness.RocketConfig.fir@122994.6]
  wire  _T_370; // @[Monitor.scala 307:25:chipyard.TestHarness.RocketConfig.fir@123000.6]
  wire  _T_372; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@123003.8]
  wire  _T_373; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@123004.8]
  wire  _T_374; // @[Monitor.scala 309:27:chipyard.TestHarness.RocketConfig.fir@123009.8]
  wire  _T_376; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@123011.8]
  wire  _T_377; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@123012.8]
  wire  _T_390; // @[Monitor.scala 315:25:chipyard.TestHarness.RocketConfig.fir@123042.6]
  wire  _T_418; // @[Monitor.scala 325:25:chipyard.TestHarness.RocketConfig.fir@123100.6]
  wire  _T_447; // @[Monitor.scala 335:25:chipyard.TestHarness.RocketConfig.fir@123159.6]
  wire  _T_464; // @[Monitor.scala 343:25:chipyard.TestHarness.RocketConfig.fir@123194.6]
  wire  _T_482; // @[Monitor.scala 351:25:chipyard.TestHarness.RocketConfig.fir@123230.6]
  wire  _T_514; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@123296.4]
  reg  _T_523; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@123305.4]
  reg [31:0] _RAND_0;
  wire  _T_525; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@123307.4]
  wire  _T_526; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@123308.4]
  reg [2:0] _T_534; // @[Monitor.scala 381:22:chipyard.TestHarness.RocketConfig.fir@123319.4]
  reg [31:0] _RAND_1;
  reg [2:0] _T_535; // @[Monitor.scala 382:22:chipyard.TestHarness.RocketConfig.fir@123320.4]
  reg [31:0] _RAND_2;
  reg [1:0] _T_536; // @[Monitor.scala 383:22:chipyard.TestHarness.RocketConfig.fir@123321.4]
  reg [31:0] _RAND_3;
  reg [6:0] _T_537; // @[Monitor.scala 384:22:chipyard.TestHarness.RocketConfig.fir@123322.4]
  reg [31:0] _RAND_4;
  reg [25:0] _T_538; // @[Monitor.scala 385:22:chipyard.TestHarness.RocketConfig.fir@123323.4]
  reg [31:0] _RAND_5;
  wire  _T_539; // @[Monitor.scala 386:22:chipyard.TestHarness.RocketConfig.fir@123324.4]
  wire  _T_540; // @[Monitor.scala 386:19:chipyard.TestHarness.RocketConfig.fir@123325.4]
  wire  _T_541; // @[Monitor.scala 387:32:chipyard.TestHarness.RocketConfig.fir@123327.6]
  wire  _T_543; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@123329.6]
  wire  _T_544; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@123330.6]
  wire  _T_545; // @[Monitor.scala 388:32:chipyard.TestHarness.RocketConfig.fir@123335.6]
  wire  _T_547; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@123337.6]
  wire  _T_548; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@123338.6]
  wire  _T_549; // @[Monitor.scala 389:32:chipyard.TestHarness.RocketConfig.fir@123343.6]
  wire  _T_551; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@123345.6]
  wire  _T_552; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@123346.6]
  wire  _T_553; // @[Monitor.scala 390:32:chipyard.TestHarness.RocketConfig.fir@123351.6]
  wire  _T_555; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@123353.6]
  wire  _T_556; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@123354.6]
  wire  _T_557; // @[Monitor.scala 391:32:chipyard.TestHarness.RocketConfig.fir@123359.6]
  wire  _T_559; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@123361.6]
  wire  _T_560; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@123362.6]
  wire  _T_562; // @[Monitor.scala 393:20:chipyard.TestHarness.RocketConfig.fir@123369.4]
  wire  _T_563; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@123377.4]
  reg  _T_571; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@123385.4]
  reg [31:0] _RAND_6;
  wire  _T_573; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@123387.4]
  wire  _T_574; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@123388.4]
  reg [2:0] _T_582; // @[Monitor.scala 532:22:chipyard.TestHarness.RocketConfig.fir@123399.4]
  reg [31:0] _RAND_7;
  reg [1:0] _T_584; // @[Monitor.scala 534:22:chipyard.TestHarness.RocketConfig.fir@123401.4]
  reg [31:0] _RAND_8;
  reg [6:0] _T_585; // @[Monitor.scala 535:22:chipyard.TestHarness.RocketConfig.fir@123402.4]
  reg [31:0] _RAND_9;
  wire  _T_588; // @[Monitor.scala 538:22:chipyard.TestHarness.RocketConfig.fir@123405.4]
  wire  _T_589; // @[Monitor.scala 538:19:chipyard.TestHarness.RocketConfig.fir@123406.4]
  wire  _T_590; // @[Monitor.scala 539:29:chipyard.TestHarness.RocketConfig.fir@123408.6]
  wire  _T_592; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@123410.6]
  wire  _T_593; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@123411.6]
  wire  _T_598; // @[Monitor.scala 541:29:chipyard.TestHarness.RocketConfig.fir@123424.6]
  wire  _T_600; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@123426.6]
  wire  _T_601; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@123427.6]
  wire  _T_602; // @[Monitor.scala 542:29:chipyard.TestHarness.RocketConfig.fir@123432.6]
  wire  _T_604; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@123434.6]
  wire  _T_605; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@123435.6]
  wire  _T_615; // @[Monitor.scala 546:20:chipyard.TestHarness.RocketConfig.fir@123458.4]
  reg [79:0] inflight; // @[Monitor.scala 608:27:chipyard.TestHarness.RocketConfig.fir@123467.4]
  reg [95:0] _RAND_10;
  reg [319:0] inflight_opcodes; // @[Monitor.scala 610:35:chipyard.TestHarness.RocketConfig.fir@123468.4]
  reg [319:0] _RAND_11;
  reg [319:0] inflight_sizes; // @[Monitor.scala 612:33:chipyard.TestHarness.RocketConfig.fir@123469.4]
  reg [319:0] _RAND_12;
  reg  _T_625; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@123479.4]
  reg [31:0] _RAND_13;
  wire  _T_627; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@123481.4]
  wire  a_first; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@123482.4]
  reg  _T_643; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@123501.4]
  reg [31:0] _RAND_14;
  wire  _T_645; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@123503.4]
  wire  d_first; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@123504.4]
  wire [8:0] _GEN_57; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@123523.4]
  wire [9:0] _T_653; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@123523.4]
  wire [319:0] _T_654; // @[Monitor.scala 629:44:chipyard.TestHarness.RocketConfig.fir@123524.4]
  wire [15:0] _T_658; // @[Monitor.scala 606:57:chipyard.TestHarness.RocketConfig.fir@123528.4]
  wire [319:0] _GEN_58; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@123529.4]
  wire [319:0] _T_659; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@123529.4]
  wire [319:0] _T_660; // @[Monitor.scala 629:152:chipyard.TestHarness.RocketConfig.fir@123530.4]
  wire [319:0] _T_662; // @[Monitor.scala 633:40:chipyard.TestHarness.RocketConfig.fir@123535.4]
  wire [319:0] _T_667; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@123540.4]
  wire [319:0] _T_668; // @[Monitor.scala 633:144:chipyard.TestHarness.RocketConfig.fir@123541.4]
  wire  _T_672; // @[Monitor.scala 643:27:chipyard.TestHarness.RocketConfig.fir@123566.4]
  wire [127:0] _T_674; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@123569.6]
  wire [3:0] _T_675; // @[Monitor.scala 645:53:chipyard.TestHarness.RocketConfig.fir@123571.6]
  wire [3:0] _T_676; // @[Monitor.scala 645:61:chipyard.TestHarness.RocketConfig.fir@123572.6]
  wire [2:0] _T_677; // @[Monitor.scala 646:49:chipyard.TestHarness.RocketConfig.fir@123574.6]
  wire [2:0] _T_678; // @[Monitor.scala 646:57:chipyard.TestHarness.RocketConfig.fir@123575.6]
  wire [8:0] _GEN_63; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@123577.6]
  wire [9:0] _T_679; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@123577.6]
  wire [3:0] a_opcodes_set_interm; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@123568.4]
  wire [1026:0] _GEN_64; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@123578.6]
  wire [1026:0] _T_680; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@123578.6]
  wire [2:0] a_sizes_set_interm; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@123568.4]
  wire [1025:0] _GEN_66; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@123581.6]
  wire [1025:0] _T_682; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@123581.6]
  wire [79:0] _T_683; // @[Monitor.scala 649:26:chipyard.TestHarness.RocketConfig.fir@123583.6]
  wire  _T_685; // @[Monitor.scala 649:17:chipyard.TestHarness.RocketConfig.fir@123585.6]
  wire  _T_687; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@123587.6]
  wire  _T_688; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@123588.6]
  wire [127:0] _GEN_15; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@123568.4]
  wire [1026:0] _GEN_18; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@123568.4]
  wire [1025:0] _GEN_19; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@123568.4]
  wire  _T_691; // @[Monitor.scala 660:27:chipyard.TestHarness.RocketConfig.fir@123602.4]
  wire  _T_693; // @[Monitor.scala 660:75:chipyard.TestHarness.RocketConfig.fir@123604.4]
  wire  _T_694; // @[Monitor.scala 660:72:chipyard.TestHarness.RocketConfig.fir@123605.4]
  wire [127:0] _T_695; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@123607.6]
  wire [1038:0] _GEN_68; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@123614.6]
  wire [1038:0] _T_701; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@123614.6]
  wire [127:0] _GEN_20; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@123606.4]
  wire [1038:0] _GEN_21; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@123606.4]
  wire  _T_708; // @[Monitor.scala 665:26:chipyard.TestHarness.RocketConfig.fir@123624.4]
  wire  _T_711; // @[Monitor.scala 665:71:chipyard.TestHarness.RocketConfig.fir@123627.4]
  wire [79:0] _T_712; // @[Monitor.scala 666:25:chipyard.TestHarness.RocketConfig.fir@123629.6]
  wire  _T_714; // @[Monitor.scala 666:93:chipyard.TestHarness.RocketConfig.fir@123631.6]
  wire  _T_715; // @[Monitor.scala 666:68:chipyard.TestHarness.RocketConfig.fir@123632.6]
  wire  _T_716; // @[Monitor.scala 666:142:chipyard.TestHarness.RocketConfig.fir@123633.6]
  wire  _T_717; // @[Monitor.scala 666:119:chipyard.TestHarness.RocketConfig.fir@123634.6]
  wire  _T_718; // @[Monitor.scala 666:166:chipyard.TestHarness.RocketConfig.fir@123635.6]
  wire  _T_719; // @[Monitor.scala 666:49:chipyard.TestHarness.RocketConfig.fir@123636.6]
  wire  _T_721; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@123638.6]
  wire  _T_722; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@123639.6]
  wire [3:0] a_opcode_lookup; // @[:chipyard.TestHarness.RocketConfig.fir@123521.4 :chipyard.TestHarness.RocketConfig.fir@123522.4 Monitor.scala 629:21:chipyard.TestHarness.RocketConfig.fir@123531.4]
  wire [2:0] _GEN_25; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@123645.6]
  wire [2:0] _GEN_26; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@123645.6]
  wire [2:0] _GEN_27; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@123645.6]
  wire [2:0] _GEN_28; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@123645.6]
  wire [2:0] _GEN_29; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@123645.6]
  wire [2:0] _GEN_30; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@123645.6]
  wire  _T_724; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@123645.6]
  wire [2:0] _GEN_37; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@123647.6]
  wire [2:0] _GEN_38; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@123647.6]
  wire  _T_726; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@123647.6]
  wire  _T_727; // @[Monitor.scala 667:71:chipyard.TestHarness.RocketConfig.fir@123648.6]
  wire [2:0] _GEN_41; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@123649.6]
  wire [2:0] _GEN_42; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@123649.6]
  wire [2:0] _GEN_43; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@123649.6]
  wire [2:0] _GEN_44; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@123649.6]
  wire [2:0] _GEN_45; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@123649.6]
  wire [2:0] _GEN_46; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@123649.6]
  wire  _T_728; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@123649.6]
  wire [2:0] _GEN_53; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@123650.6]
  wire [2:0] _GEN_54; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@123650.6]
  wire  _T_729; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@123650.6]
  wire  _T_730; // @[Monitor.scala 668:99:chipyard.TestHarness.RocketConfig.fir@123651.6]
  wire  _T_731; // @[Monitor.scala 668:34:chipyard.TestHarness.RocketConfig.fir@123652.6]
  wire  _T_732; // @[Monitor.scala 668:15:chipyard.TestHarness.RocketConfig.fir@123653.6]
  wire  _T_734; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@123655.6]
  wire  _T_735; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@123656.6]
  wire [3:0] a_size_lookup; // @[:chipyard.TestHarness.RocketConfig.fir@123532.4 :chipyard.TestHarness.RocketConfig.fir@123533.4 Monitor.scala 633:19:chipyard.TestHarness.RocketConfig.fir@123542.4]
  wire [3:0] _GEN_71; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@123661.6]
  wire  _T_736; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@123661.6]
  wire  _T_738; // @[Monitor.scala 670:72:chipyard.TestHarness.RocketConfig.fir@123663.6]
  wire  _T_739; // @[Monitor.scala 670:53:chipyard.TestHarness.RocketConfig.fir@123664.6]
  wire  _T_741; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@123666.6]
  wire  _T_742; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@123667.6]
  wire  _T_744; // @[Monitor.scala 672:36:chipyard.TestHarness.RocketConfig.fir@123674.4]
  wire  _T_745; // @[Monitor.scala 672:47:chipyard.TestHarness.RocketConfig.fir@123675.4]
  wire  _T_747; // @[Monitor.scala 672:65:chipyard.TestHarness.RocketConfig.fir@123677.4]
  wire  _T_749; // @[Monitor.scala 672:116:chipyard.TestHarness.RocketConfig.fir@123679.4]
  wire  _T_750; // @[Monitor.scala 673:15:chipyard.TestHarness.RocketConfig.fir@123681.6]
  wire  _T_751; // @[Monitor.scala 673:32:chipyard.TestHarness.RocketConfig.fir@123682.6]
  wire  _T_753; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@123684.6]
  wire  _T_754; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@123685.6]
  wire [79:0] a_set; // @[:chipyard.TestHarness.RocketConfig.fir@123515.4 :chipyard.TestHarness.RocketConfig.fir@123516.4 Monitor.scala 644:13:chipyard.TestHarness.RocketConfig.fir@123570.6]
  wire [79:0] _T_755; // @[Monitor.scala 680:27:chipyard.TestHarness.RocketConfig.fir@123691.4]
  wire [79:0] d_clr; // @[:chipyard.TestHarness.RocketConfig.fir@123594.4 :chipyard.TestHarness.RocketConfig.fir@123595.4 Monitor.scala 661:13:chipyard.TestHarness.RocketConfig.fir@123608.6]
  wire [79:0] _T_756; // @[Monitor.scala 680:38:chipyard.TestHarness.RocketConfig.fir@123692.4]
  wire [79:0] _T_757; // @[Monitor.scala 680:36:chipyard.TestHarness.RocketConfig.fir@123693.4]
  wire [319:0] a_opcodes_set; // @[:chipyard.TestHarness.RocketConfig.fir@123517.4 :chipyard.TestHarness.RocketConfig.fir@123518.4 Monitor.scala 647:21:chipyard.TestHarness.RocketConfig.fir@123579.6]
  wire [319:0] _T_758; // @[Monitor.scala 681:43:chipyard.TestHarness.RocketConfig.fir@123695.4]
  wire [319:0] d_opcodes_clr; // @[:chipyard.TestHarness.RocketConfig.fir@123596.4 :chipyard.TestHarness.RocketConfig.fir@123597.4 Monitor.scala 662:21:chipyard.TestHarness.RocketConfig.fir@123615.6]
  wire [319:0] _T_759; // @[Monitor.scala 681:62:chipyard.TestHarness.RocketConfig.fir@123696.4]
  wire [319:0] _T_760; // @[Monitor.scala 681:60:chipyard.TestHarness.RocketConfig.fir@123697.4]
  wire [319:0] a_sizes_set; // @[:chipyard.TestHarness.RocketConfig.fir@123519.4 :chipyard.TestHarness.RocketConfig.fir@123520.4 Monitor.scala 648:19:chipyard.TestHarness.RocketConfig.fir@123582.6]
  wire [319:0] _T_761; // @[Monitor.scala 682:39:chipyard.TestHarness.RocketConfig.fir@123699.4]
  wire [319:0] _T_763; // @[Monitor.scala 682:54:chipyard.TestHarness.RocketConfig.fir@123701.4]
  reg [31:0] _T_764; // @[Monitor.scala 684:27:chipyard.TestHarness.RocketConfig.fir@123703.4]
  reg [31:0] _RAND_15;
  wire  _T_765; // @[Monitor.scala 687:26:chipyard.TestHarness.RocketConfig.fir@123706.4]
  wire  _T_766; // @[Monitor.scala 687:16:chipyard.TestHarness.RocketConfig.fir@123707.4]
  wire  _T_767; // @[Monitor.scala 687:39:chipyard.TestHarness.RocketConfig.fir@123708.4]
  wire  _T_768; // @[Monitor.scala 687:30:chipyard.TestHarness.RocketConfig.fir@123709.4]
  wire  _T_769; // @[Monitor.scala 687:59:chipyard.TestHarness.RocketConfig.fir@123710.4]
  wire  _T_770; // @[Monitor.scala 687:47:chipyard.TestHarness.RocketConfig.fir@123711.4]
  wire  _T_772; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@123713.4]
  wire  _T_773; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@123714.4]
  wire [31:0] _T_775; // @[Monitor.scala 689:26:chipyard.TestHarness.RocketConfig.fir@123720.4]
  wire  _T_778; // @[Monitor.scala 690:27:chipyard.TestHarness.RocketConfig.fir@123724.4]
  wire  _GEN_72; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122525.10]
  wire  _GEN_88; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122597.10]
  wire  _GEN_106; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122680.10]
  wire  _GEN_118; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122739.10]
  wire  _GEN_128; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122790.10]
  wire  _GEN_138; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122840.10]
  wire  _GEN_148; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122888.10]
  wire  _GEN_158; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122936.10]
  wire  _GEN_170; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@123006.10]
  wire  _GEN_174; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@123048.10]
  wire  _GEN_180; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@123106.10]
  wire  _GEN_186; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@123165.10]
  wire  _GEN_188; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@123200.10]
  wire  _GEN_190; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@123236.10]
  plusarg_reader #(.FORMAT("tilelink_timeout=%d"), .DEFAULT(0), .WIDTH(32)) plusarg_reader ( // @[PlusArg.scala 44:11:chipyard.TestHarness.RocketConfig.fir@123704.4]
    .out(plusarg_reader_out)
  );
  assign _T_10 = io_in_a_bits_source <= 7'h4f; // @[Parameters.scala 58:20:chipyard.TestHarness.RocketConfig.fir@122414.6]
  assign _T_14 = 6'h7 << io_in_a_bits_size; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@122420.6]
  assign _T_16 = ~_T_14[2:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@122422.6]
  assign _GEN_56 = {{23'd0}, _T_16}; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@122423.6]
  assign _T_17 = io_in_a_bits_address & _GEN_56; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@122423.6]
  assign _T_18 = _T_17 == 26'h0; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@122424.6]
  assign _T_19 = {{1'd0}, io_in_a_bits_size}; // @[Misc.scala 201:34:chipyard.TestHarness.RocketConfig.fir@122425.6]
  assign _T_21 = 4'h1 << _T_19[1:0]; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@122427.6]
  assign _T_23 = _T_21[2:0] | 3'h1; // @[Misc.scala 201:81:chipyard.TestHarness.RocketConfig.fir@122429.6]
  assign _T_24 = io_in_a_bits_size >= 2'h3; // @[Misc.scala 205:21:chipyard.TestHarness.RocketConfig.fir@122430.6]
  assign _T_27 = ~io_in_a_bits_address[2]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@122433.6]
  assign _T_29 = _T_23[2] & _T_27; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@122435.6]
  assign _T_30 = _T_24 | _T_29; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@122436.6]
  assign _T_32 = _T_23[2] & io_in_a_bits_address[2]; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@122438.6]
  assign _T_33 = _T_24 | _T_32; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@122439.6]
  assign _T_36 = ~io_in_a_bits_address[1]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@122442.6]
  assign _T_37 = _T_27 & _T_36; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@122443.6]
  assign _T_38 = _T_23[1] & _T_37; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@122444.6]
  assign _T_39 = _T_30 | _T_38; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@122445.6]
  assign _T_40 = _T_27 & io_in_a_bits_address[1]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@122446.6]
  assign _T_41 = _T_23[1] & _T_40; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@122447.6]
  assign _T_42 = _T_30 | _T_41; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@122448.6]
  assign _T_43 = io_in_a_bits_address[2] & _T_36; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@122449.6]
  assign _T_44 = _T_23[1] & _T_43; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@122450.6]
  assign _T_45 = _T_33 | _T_44; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@122451.6]
  assign _T_46 = io_in_a_bits_address[2] & io_in_a_bits_address[1]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@122452.6]
  assign _T_47 = _T_23[1] & _T_46; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@122453.6]
  assign _T_48 = _T_33 | _T_47; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@122454.6]
  assign _T_51 = ~io_in_a_bits_address[0]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@122457.6]
  assign _T_52 = _T_37 & _T_51; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@122458.6]
  assign _T_53 = _T_23[0] & _T_52; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@122459.6]
  assign _T_54 = _T_39 | _T_53; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@122460.6]
  assign _T_55 = _T_37 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@122461.6]
  assign _T_56 = _T_23[0] & _T_55; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@122462.6]
  assign _T_57 = _T_39 | _T_56; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@122463.6]
  assign _T_58 = _T_40 & _T_51; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@122464.6]
  assign _T_59 = _T_23[0] & _T_58; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@122465.6]
  assign _T_60 = _T_42 | _T_59; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@122466.6]
  assign _T_61 = _T_40 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@122467.6]
  assign _T_62 = _T_23[0] & _T_61; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@122468.6]
  assign _T_63 = _T_42 | _T_62; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@122469.6]
  assign _T_64 = _T_43 & _T_51; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@122470.6]
  assign _T_65 = _T_23[0] & _T_64; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@122471.6]
  assign _T_66 = _T_45 | _T_65; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@122472.6]
  assign _T_67 = _T_43 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@122473.6]
  assign _T_68 = _T_23[0] & _T_67; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@122474.6]
  assign _T_69 = _T_45 | _T_68; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@122475.6]
  assign _T_70 = _T_46 & _T_51; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@122476.6]
  assign _T_71 = _T_23[0] & _T_70; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@122477.6]
  assign _T_72 = _T_48 | _T_71; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@122478.6]
  assign _T_73 = _T_46 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@122479.6]
  assign _T_74 = _T_23[0] & _T_73; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@122480.6]
  assign _T_75 = _T_48 | _T_74; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@122481.6]
  assign _T_82 = {_T_75,_T_72,_T_69,_T_66,_T_63,_T_60,_T_57,_T_54}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@122488.6]
  assign _T_101 = io_in_a_bits_opcode == 3'h6; // @[Monitor.scala 79:25:chipyard.TestHarness.RocketConfig.fir@122511.6]
  assign _T_103 = io_in_a_bits_address ^ 26'h2000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@122514.8]
  assign _T_104 = {1'b0,$signed(_T_103)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@122515.8]
  assign _T_106 = $signed(_T_104) & -27'sh10000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@122517.8]
  assign _T_107 = $signed(_T_106) == 27'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@122518.8]
  assign _T_112 = ~reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122523.8]
  assign _T_117 = _T_10 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122536.8]
  assign _T_118 = ~_T_117; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122537.8]
  assign _T_121 = _T_24 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122544.8]
  assign _T_122 = ~_T_121; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122545.8]
  assign _T_124 = _T_18 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122551.8]
  assign _T_125 = ~_T_124; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122552.8]
  assign _T_126 = io_in_a_bits_param <= 3'h2; // @[Bundles.scala 110:27:chipyard.TestHarness.RocketConfig.fir@122557.8]
  assign _T_128 = _T_126 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122559.8]
  assign _T_129 = ~_T_128; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122560.8]
  assign _T_130 = ~io_in_a_bits_mask; // @[Monitor.scala 86:18:chipyard.TestHarness.RocketConfig.fir@122565.8]
  assign _T_131 = _T_130 == 8'h0; // @[Monitor.scala 86:31:chipyard.TestHarness.RocketConfig.fir@122566.8]
  assign _T_133 = _T_131 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122568.8]
  assign _T_134 = ~_T_133; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122569.8]
  assign _T_135 = ~io_in_a_bits_corrupt; // @[Monitor.scala 87:18:chipyard.TestHarness.RocketConfig.fir@122574.8]
  assign _T_137 = _T_135 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122576.8]
  assign _T_138 = ~_T_137; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122577.8]
  assign _T_139 = io_in_a_bits_opcode == 3'h7; // @[Monitor.scala 90:25:chipyard.TestHarness.RocketConfig.fir@122583.6]
  assign _T_168 = io_in_a_bits_param != 3'h0; // @[Monitor.scala 97:31:chipyard.TestHarness.RocketConfig.fir@122637.8]
  assign _T_170 = _T_168 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122639.8]
  assign _T_171 = ~_T_170; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122640.8]
  assign _T_181 = io_in_a_bits_opcode == 3'h4; // @[Monitor.scala 102:25:chipyard.TestHarness.RocketConfig.fir@122663.6]
  assign _T_194 = _T_107 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122677.8]
  assign _T_195 = ~_T_194; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122678.8]
  assign _T_202 = io_in_a_bits_param == 3'h0; // @[Monitor.scala 106:31:chipyard.TestHarness.RocketConfig.fir@122697.8]
  assign _T_204 = _T_202 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122699.8]
  assign _T_205 = ~_T_204; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122700.8]
  assign _T_206 = io_in_a_bits_mask == _T_82; // @[Monitor.scala 107:30:chipyard.TestHarness.RocketConfig.fir@122705.8]
  assign _T_208 = _T_206 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122707.8]
  assign _T_209 = ~_T_208; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122708.8]
  assign _T_214 = io_in_a_bits_opcode == 3'h0; // @[Monitor.scala 111:25:chipyard.TestHarness.RocketConfig.fir@122722.6]
  assign _T_243 = io_in_a_bits_opcode == 3'h1; // @[Monitor.scala 119:25:chipyard.TestHarness.RocketConfig.fir@122773.6]
  assign _T_268 = ~_T_82; // @[Monitor.scala 124:33:chipyard.TestHarness.RocketConfig.fir@122815.8]
  assign _T_269 = io_in_a_bits_mask & _T_268; // @[Monitor.scala 124:31:chipyard.TestHarness.RocketConfig.fir@122816.8]
  assign _T_270 = _T_269 == 8'h0; // @[Monitor.scala 124:40:chipyard.TestHarness.RocketConfig.fir@122817.8]
  assign _T_272 = _T_270 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122819.8]
  assign _T_273 = ~_T_272; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122820.8]
  assign _T_274 = io_in_a_bits_opcode == 3'h2; // @[Monitor.scala 127:25:chipyard.TestHarness.RocketConfig.fir@122826.6]
  assign _T_292 = io_in_a_bits_param <= 3'h4; // @[Bundles.scala 140:33:chipyard.TestHarness.RocketConfig.fir@122857.8]
  assign _T_294 = _T_292 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122859.8]
  assign _T_295 = ~_T_294; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122860.8]
  assign _T_300 = io_in_a_bits_opcode == 3'h3; // @[Monitor.scala 135:25:chipyard.TestHarness.RocketConfig.fir@122874.6]
  assign _T_318 = io_in_a_bits_param <= 3'h3; // @[Bundles.scala 147:30:chipyard.TestHarness.RocketConfig.fir@122905.8]
  assign _T_320 = _T_318 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122907.8]
  assign _T_321 = ~_T_320; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122908.8]
  assign _T_326 = io_in_a_bits_opcode == 3'h5; // @[Monitor.scala 143:25:chipyard.TestHarness.RocketConfig.fir@122922.6]
  assign _T_344 = io_in_a_bits_param <= 3'h1; // @[Bundles.scala 160:28:chipyard.TestHarness.RocketConfig.fir@122953.8]
  assign _T_346 = _T_344 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122955.8]
  assign _T_347 = ~_T_346; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122956.8]
  assign _T_356 = io_in_d_bits_opcode <= 3'h6; // @[Bundles.scala 44:24:chipyard.TestHarness.RocketConfig.fir@122980.6]
  assign _T_358 = _T_356 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@122982.6]
  assign _T_359 = ~_T_358; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@122983.6]
  assign _T_366 = io_in_d_bits_source <= 7'h4f; // @[Parameters.scala 58:20:chipyard.TestHarness.RocketConfig.fir@122994.6]
  assign _T_370 = io_in_d_bits_opcode == 3'h6; // @[Monitor.scala 307:25:chipyard.TestHarness.RocketConfig.fir@123000.6]
  assign _T_372 = _T_366 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@123003.8]
  assign _T_373 = ~_T_372; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@123004.8]
  assign _T_374 = io_in_d_bits_size >= 2'h3; // @[Monitor.scala 309:27:chipyard.TestHarness.RocketConfig.fir@123009.8]
  assign _T_376 = _T_374 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@123011.8]
  assign _T_377 = ~_T_376; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@123012.8]
  assign _T_390 = io_in_d_bits_opcode == 3'h4; // @[Monitor.scala 315:25:chipyard.TestHarness.RocketConfig.fir@123042.6]
  assign _T_418 = io_in_d_bits_opcode == 3'h5; // @[Monitor.scala 325:25:chipyard.TestHarness.RocketConfig.fir@123100.6]
  assign _T_447 = io_in_d_bits_opcode == 3'h0; // @[Monitor.scala 335:25:chipyard.TestHarness.RocketConfig.fir@123159.6]
  assign _T_464 = io_in_d_bits_opcode == 3'h1; // @[Monitor.scala 343:25:chipyard.TestHarness.RocketConfig.fir@123194.6]
  assign _T_482 = io_in_d_bits_opcode == 3'h2; // @[Monitor.scala 351:25:chipyard.TestHarness.RocketConfig.fir@123230.6]
  assign _T_514 = io_in_a_ready & io_in_a_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@123296.4]
  assign _T_525 = _T_523 - 1'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@123307.4]
  assign _T_526 = ~_T_523; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@123308.4]
  assign _T_539 = ~_T_526; // @[Monitor.scala 386:22:chipyard.TestHarness.RocketConfig.fir@123324.4]
  assign _T_540 = io_in_a_valid & _T_539; // @[Monitor.scala 386:19:chipyard.TestHarness.RocketConfig.fir@123325.4]
  assign _T_541 = io_in_a_bits_opcode == _T_534; // @[Monitor.scala 387:32:chipyard.TestHarness.RocketConfig.fir@123327.6]
  assign _T_543 = _T_541 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@123329.6]
  assign _T_544 = ~_T_543; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@123330.6]
  assign _T_545 = io_in_a_bits_param == _T_535; // @[Monitor.scala 388:32:chipyard.TestHarness.RocketConfig.fir@123335.6]
  assign _T_547 = _T_545 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@123337.6]
  assign _T_548 = ~_T_547; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@123338.6]
  assign _T_549 = io_in_a_bits_size == _T_536; // @[Monitor.scala 389:32:chipyard.TestHarness.RocketConfig.fir@123343.6]
  assign _T_551 = _T_549 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@123345.6]
  assign _T_552 = ~_T_551; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@123346.6]
  assign _T_553 = io_in_a_bits_source == _T_537; // @[Monitor.scala 390:32:chipyard.TestHarness.RocketConfig.fir@123351.6]
  assign _T_555 = _T_553 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@123353.6]
  assign _T_556 = ~_T_555; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@123354.6]
  assign _T_557 = io_in_a_bits_address == _T_538; // @[Monitor.scala 391:32:chipyard.TestHarness.RocketConfig.fir@123359.6]
  assign _T_559 = _T_557 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@123361.6]
  assign _T_560 = ~_T_559; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@123362.6]
  assign _T_562 = _T_514 & _T_526; // @[Monitor.scala 393:20:chipyard.TestHarness.RocketConfig.fir@123369.4]
  assign _T_563 = io_in_d_ready & io_in_d_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@123377.4]
  assign _T_573 = _T_571 - 1'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@123387.4]
  assign _T_574 = ~_T_571; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@123388.4]
  assign _T_588 = ~_T_574; // @[Monitor.scala 538:22:chipyard.TestHarness.RocketConfig.fir@123405.4]
  assign _T_589 = io_in_d_valid & _T_588; // @[Monitor.scala 538:19:chipyard.TestHarness.RocketConfig.fir@123406.4]
  assign _T_590 = io_in_d_bits_opcode == _T_582; // @[Monitor.scala 539:29:chipyard.TestHarness.RocketConfig.fir@123408.6]
  assign _T_592 = _T_590 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@123410.6]
  assign _T_593 = ~_T_592; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@123411.6]
  assign _T_598 = io_in_d_bits_size == _T_584; // @[Monitor.scala 541:29:chipyard.TestHarness.RocketConfig.fir@123424.6]
  assign _T_600 = _T_598 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@123426.6]
  assign _T_601 = ~_T_600; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@123427.6]
  assign _T_602 = io_in_d_bits_source == _T_585; // @[Monitor.scala 542:29:chipyard.TestHarness.RocketConfig.fir@123432.6]
  assign _T_604 = _T_602 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@123434.6]
  assign _T_605 = ~_T_604; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@123435.6]
  assign _T_615 = _T_563 & _T_574; // @[Monitor.scala 546:20:chipyard.TestHarness.RocketConfig.fir@123458.4]
  assign _T_627 = _T_625 - 1'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@123481.4]
  assign a_first = ~_T_625; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@123482.4]
  assign _T_645 = _T_643 - 1'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@123503.4]
  assign d_first = ~_T_643; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@123504.4]
  assign _GEN_57 = {io_in_d_bits_source, 2'h0}; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@123523.4]
  assign _T_653 = {{1'd0}, _GEN_57}; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@123523.4]
  assign _T_654 = inflight_opcodes >> _T_653; // @[Monitor.scala 629:44:chipyard.TestHarness.RocketConfig.fir@123524.4]
  assign _T_658 = 16'h10 - 16'h1; // @[Monitor.scala 606:57:chipyard.TestHarness.RocketConfig.fir@123528.4]
  assign _GEN_58 = {{304'd0}, _T_658}; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@123529.4]
  assign _T_659 = _T_654 & _GEN_58; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@123529.4]
  assign _T_660 = {{1'd0}, _T_659[319:1]}; // @[Monitor.scala 629:152:chipyard.TestHarness.RocketConfig.fir@123530.4]
  assign _T_662 = inflight_sizes >> _T_653; // @[Monitor.scala 633:40:chipyard.TestHarness.RocketConfig.fir@123535.4]
  assign _T_667 = _T_662 & _GEN_58; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@123540.4]
  assign _T_668 = {{1'd0}, _T_667[319:1]}; // @[Monitor.scala 633:144:chipyard.TestHarness.RocketConfig.fir@123541.4]
  assign _T_672 = _T_514 & a_first; // @[Monitor.scala 643:27:chipyard.TestHarness.RocketConfig.fir@123566.4]
  assign _T_674 = 128'h1 << io_in_a_bits_source; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@123569.6]
  assign _T_675 = {io_in_a_bits_opcode, 1'h0}; // @[Monitor.scala 645:53:chipyard.TestHarness.RocketConfig.fir@123571.6]
  assign _T_676 = _T_675 | 4'h1; // @[Monitor.scala 645:61:chipyard.TestHarness.RocketConfig.fir@123572.6]
  assign _T_677 = {io_in_a_bits_size, 1'h0}; // @[Monitor.scala 646:49:chipyard.TestHarness.RocketConfig.fir@123574.6]
  assign _T_678 = _T_677 | 3'h1; // @[Monitor.scala 646:57:chipyard.TestHarness.RocketConfig.fir@123575.6]
  assign _GEN_63 = {io_in_a_bits_source, 2'h0}; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@123577.6]
  assign _T_679 = {{1'd0}, _GEN_63}; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@123577.6]
  assign a_opcodes_set_interm = _T_672 ? _T_676 : 4'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@123568.4]
  assign _GEN_64 = {{1023'd0}, a_opcodes_set_interm}; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@123578.6]
  assign _T_680 = _GEN_64 << _T_679; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@123578.6]
  assign a_sizes_set_interm = _T_672 ? _T_678 : 3'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@123568.4]
  assign _GEN_66 = {{1023'd0}, a_sizes_set_interm}; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@123581.6]
  assign _T_682 = _GEN_66 << _T_679; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@123581.6]
  assign _T_683 = inflight >> io_in_a_bits_source; // @[Monitor.scala 649:26:chipyard.TestHarness.RocketConfig.fir@123583.6]
  assign _T_685 = ~_T_683[0]; // @[Monitor.scala 649:17:chipyard.TestHarness.RocketConfig.fir@123585.6]
  assign _T_687 = _T_685 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@123587.6]
  assign _T_688 = ~_T_687; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@123588.6]
  assign _GEN_15 = _T_672 ? _T_674 : 128'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@123568.4]
  assign _GEN_18 = _T_672 ? _T_680 : 1027'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@123568.4]
  assign _GEN_19 = _T_672 ? _T_682 : 1026'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@123568.4]
  assign _T_691 = _T_563 & d_first; // @[Monitor.scala 660:27:chipyard.TestHarness.RocketConfig.fir@123602.4]
  assign _T_693 = ~_T_370; // @[Monitor.scala 660:75:chipyard.TestHarness.RocketConfig.fir@123604.4]
  assign _T_694 = _T_691 & _T_693; // @[Monitor.scala 660:72:chipyard.TestHarness.RocketConfig.fir@123605.4]
  assign _T_695 = 128'h1 << io_in_d_bits_source; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@123607.6]
  assign _GEN_68 = {{1023'd0}, _T_658}; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@123614.6]
  assign _T_701 = _GEN_68 << _T_653; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@123614.6]
  assign _GEN_20 = _T_694 ? _T_695 : 128'h0; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@123606.4]
  assign _GEN_21 = _T_694 ? _T_701 : 1039'h0; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@123606.4]
  assign _T_708 = io_in_d_valid & d_first; // @[Monitor.scala 665:26:chipyard.TestHarness.RocketConfig.fir@123624.4]
  assign _T_711 = _T_708 & _T_693; // @[Monitor.scala 665:71:chipyard.TestHarness.RocketConfig.fir@123627.4]
  assign _T_712 = inflight >> io_in_d_bits_source; // @[Monitor.scala 666:25:chipyard.TestHarness.RocketConfig.fir@123629.6]
  assign _T_714 = io_in_a_bits_source == io_in_d_bits_source; // @[Monitor.scala 666:93:chipyard.TestHarness.RocketConfig.fir@123631.6]
  assign _T_715 = io_in_a_valid & _T_714; // @[Monitor.scala 666:68:chipyard.TestHarness.RocketConfig.fir@123632.6]
  assign _T_716 = io_in_a_bits_size == io_in_d_bits_size; // @[Monitor.scala 666:142:chipyard.TestHarness.RocketConfig.fir@123633.6]
  assign _T_717 = _T_715 & _T_716; // @[Monitor.scala 666:119:chipyard.TestHarness.RocketConfig.fir@123634.6]
  assign _T_718 = _T_717 & a_first; // @[Monitor.scala 666:166:chipyard.TestHarness.RocketConfig.fir@123635.6]
  assign _T_719 = _T_712[0] | _T_718; // @[Monitor.scala 666:49:chipyard.TestHarness.RocketConfig.fir@123636.6]
  assign _T_721 = _T_719 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@123638.6]
  assign _T_722 = ~_T_721; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@123639.6]
  assign a_opcode_lookup = _T_660[3:0]; // @[:chipyard.TestHarness.RocketConfig.fir@123521.4 :chipyard.TestHarness.RocketConfig.fir@123522.4 Monitor.scala 629:21:chipyard.TestHarness.RocketConfig.fir@123531.4]
  assign _GEN_25 = 3'h2 == a_opcode_lookup[2:0] ? 3'h1 : 3'h0; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@123645.6]
  assign _GEN_26 = 3'h3 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_25; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@123645.6]
  assign _GEN_27 = 3'h4 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_26; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@123645.6]
  assign _GEN_28 = 3'h5 == a_opcode_lookup[2:0] ? 3'h2 : _GEN_27; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@123645.6]
  assign _GEN_29 = 3'h6 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_28; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@123645.6]
  assign _GEN_30 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_29; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@123645.6]
  assign _T_724 = io_in_d_bits_opcode == _GEN_30; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@123645.6]
  assign _GEN_37 = 3'h6 == a_opcode_lookup[2:0] ? 3'h5 : _GEN_28; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@123647.6]
  assign _GEN_38 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_37; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@123647.6]
  assign _T_726 = io_in_d_bits_opcode == _GEN_38; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@123647.6]
  assign _T_727 = _T_724 | _T_726; // @[Monitor.scala 667:71:chipyard.TestHarness.RocketConfig.fir@123648.6]
  assign _GEN_41 = 3'h2 == io_in_a_bits_opcode ? 3'h1 : 3'h0; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@123649.6]
  assign _GEN_42 = 3'h3 == io_in_a_bits_opcode ? 3'h1 : _GEN_41; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@123649.6]
  assign _GEN_43 = 3'h4 == io_in_a_bits_opcode ? 3'h1 : _GEN_42; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@123649.6]
  assign _GEN_44 = 3'h5 == io_in_a_bits_opcode ? 3'h2 : _GEN_43; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@123649.6]
  assign _GEN_45 = 3'h6 == io_in_a_bits_opcode ? 3'h4 : _GEN_44; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@123649.6]
  assign _GEN_46 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_45; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@123649.6]
  assign _T_728 = io_in_d_bits_opcode == _GEN_46; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@123649.6]
  assign _GEN_53 = 3'h6 == io_in_a_bits_opcode ? 3'h5 : _GEN_44; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@123650.6]
  assign _GEN_54 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_53; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@123650.6]
  assign _T_729 = io_in_d_bits_opcode == _GEN_54; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@123650.6]
  assign _T_730 = _T_728 | _T_729; // @[Monitor.scala 668:99:chipyard.TestHarness.RocketConfig.fir@123651.6]
  assign _T_731 = io_in_a_valid & _T_730; // @[Monitor.scala 668:34:chipyard.TestHarness.RocketConfig.fir@123652.6]
  assign _T_732 = _T_727 | _T_731; // @[Monitor.scala 668:15:chipyard.TestHarness.RocketConfig.fir@123653.6]
  assign _T_734 = _T_732 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@123655.6]
  assign _T_735 = ~_T_734; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@123656.6]
  assign a_size_lookup = _T_668[3:0]; // @[:chipyard.TestHarness.RocketConfig.fir@123532.4 :chipyard.TestHarness.RocketConfig.fir@123533.4 Monitor.scala 633:19:chipyard.TestHarness.RocketConfig.fir@123542.4]
  assign _GEN_71 = {{2'd0}, io_in_d_bits_size}; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@123661.6]
  assign _T_736 = _GEN_71 == a_size_lookup; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@123661.6]
  assign _T_738 = io_in_a_valid & _T_716; // @[Monitor.scala 670:72:chipyard.TestHarness.RocketConfig.fir@123663.6]
  assign _T_739 = _T_736 | _T_738; // @[Monitor.scala 670:53:chipyard.TestHarness.RocketConfig.fir@123664.6]
  assign _T_741 = _T_739 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@123666.6]
  assign _T_742 = ~_T_741; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@123667.6]
  assign _T_744 = _T_708 & a_first; // @[Monitor.scala 672:36:chipyard.TestHarness.RocketConfig.fir@123674.4]
  assign _T_745 = _T_744 & io_in_a_valid; // @[Monitor.scala 672:47:chipyard.TestHarness.RocketConfig.fir@123675.4]
  assign _T_747 = _T_745 & _T_714; // @[Monitor.scala 672:65:chipyard.TestHarness.RocketConfig.fir@123677.4]
  assign _T_749 = _T_747 & _T_693; // @[Monitor.scala 672:116:chipyard.TestHarness.RocketConfig.fir@123679.4]
  assign _T_750 = ~io_in_d_ready; // @[Monitor.scala 673:15:chipyard.TestHarness.RocketConfig.fir@123681.6]
  assign _T_751 = _T_750 | io_in_a_ready; // @[Monitor.scala 673:32:chipyard.TestHarness.RocketConfig.fir@123682.6]
  assign _T_753 = _T_751 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@123684.6]
  assign _T_754 = ~_T_753; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@123685.6]
  assign a_set = _GEN_15[79:0]; // @[:chipyard.TestHarness.RocketConfig.fir@123515.4 :chipyard.TestHarness.RocketConfig.fir@123516.4 Monitor.scala 644:13:chipyard.TestHarness.RocketConfig.fir@123570.6]
  assign _T_755 = inflight | a_set; // @[Monitor.scala 680:27:chipyard.TestHarness.RocketConfig.fir@123691.4]
  assign d_clr = _GEN_20[79:0]; // @[:chipyard.TestHarness.RocketConfig.fir@123594.4 :chipyard.TestHarness.RocketConfig.fir@123595.4 Monitor.scala 661:13:chipyard.TestHarness.RocketConfig.fir@123608.6]
  assign _T_756 = ~d_clr; // @[Monitor.scala 680:38:chipyard.TestHarness.RocketConfig.fir@123692.4]
  assign _T_757 = _T_755 & _T_756; // @[Monitor.scala 680:36:chipyard.TestHarness.RocketConfig.fir@123693.4]
  assign a_opcodes_set = _GEN_18[319:0]; // @[:chipyard.TestHarness.RocketConfig.fir@123517.4 :chipyard.TestHarness.RocketConfig.fir@123518.4 Monitor.scala 647:21:chipyard.TestHarness.RocketConfig.fir@123579.6]
  assign _T_758 = inflight_opcodes | a_opcodes_set; // @[Monitor.scala 681:43:chipyard.TestHarness.RocketConfig.fir@123695.4]
  assign d_opcodes_clr = _GEN_21[319:0]; // @[:chipyard.TestHarness.RocketConfig.fir@123596.4 :chipyard.TestHarness.RocketConfig.fir@123597.4 Monitor.scala 662:21:chipyard.TestHarness.RocketConfig.fir@123615.6]
  assign _T_759 = ~d_opcodes_clr; // @[Monitor.scala 681:62:chipyard.TestHarness.RocketConfig.fir@123696.4]
  assign _T_760 = _T_758 & _T_759; // @[Monitor.scala 681:60:chipyard.TestHarness.RocketConfig.fir@123697.4]
  assign a_sizes_set = _GEN_19[319:0]; // @[:chipyard.TestHarness.RocketConfig.fir@123519.4 :chipyard.TestHarness.RocketConfig.fir@123520.4 Monitor.scala 648:19:chipyard.TestHarness.RocketConfig.fir@123582.6]
  assign _T_761 = inflight_sizes | a_sizes_set; // @[Monitor.scala 682:39:chipyard.TestHarness.RocketConfig.fir@123699.4]
  assign _T_763 = _T_761 & _T_759; // @[Monitor.scala 682:54:chipyard.TestHarness.RocketConfig.fir@123701.4]
  assign _T_765 = |inflight; // @[Monitor.scala 687:26:chipyard.TestHarness.RocketConfig.fir@123706.4]
  assign _T_766 = ~_T_765; // @[Monitor.scala 687:16:chipyard.TestHarness.RocketConfig.fir@123707.4]
  assign _T_767 = plusarg_reader_out == 32'h0; // @[Monitor.scala 687:39:chipyard.TestHarness.RocketConfig.fir@123708.4]
  assign _T_768 = _T_766 | _T_767; // @[Monitor.scala 687:30:chipyard.TestHarness.RocketConfig.fir@123709.4]
  assign _T_769 = _T_764 < plusarg_reader_out; // @[Monitor.scala 687:59:chipyard.TestHarness.RocketConfig.fir@123710.4]
  assign _T_770 = _T_768 | _T_769; // @[Monitor.scala 687:47:chipyard.TestHarness.RocketConfig.fir@123711.4]
  assign _T_772 = _T_770 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@123713.4]
  assign _T_773 = ~_T_772; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@123714.4]
  assign _T_775 = _T_764 + 32'h1; // @[Monitor.scala 689:26:chipyard.TestHarness.RocketConfig.fir@123720.4]
  assign _T_778 = _T_514 | _T_563; // @[Monitor.scala 690:27:chipyard.TestHarness.RocketConfig.fir@123724.4]
  assign _GEN_72 = io_in_a_valid & _T_101; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122525.10]
  assign _GEN_88 = io_in_a_valid & _T_139; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122597.10]
  assign _GEN_106 = io_in_a_valid & _T_181; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122680.10]
  assign _GEN_118 = io_in_a_valid & _T_214; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122739.10]
  assign _GEN_128 = io_in_a_valid & _T_243; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122790.10]
  assign _GEN_138 = io_in_a_valid & _T_274; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122840.10]
  assign _GEN_148 = io_in_a_valid & _T_300; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122888.10]
  assign _GEN_158 = io_in_a_valid & _T_326; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122936.10]
  assign _GEN_170 = io_in_d_valid & _T_370; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@123006.10]
  assign _GEN_174 = io_in_d_valid & _T_390; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@123048.10]
  assign _GEN_180 = io_in_d_valid & _T_418; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@123106.10]
  assign _GEN_186 = io_in_d_valid & _T_447; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@123165.10]
  assign _GEN_188 = io_in_d_valid & _T_464; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@123200.10]
  assign _GEN_190 = io_in_d_valid & _T_482; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@123236.10]
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
  _T_523 = _RAND_0[0:0];
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
  _T_536 = _RAND_3[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_537 = _RAND_4[6:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_538 = _RAND_5[25:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  _T_571 = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  _T_582 = _RAND_7[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  _T_584 = _RAND_8[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  _T_585 = _RAND_9[6:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {3{`RANDOM}};
  inflight = _RAND_10[79:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {10{`RANDOM}};
  inflight_opcodes = _RAND_11[319:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {10{`RANDOM}};
  inflight_sizes = _RAND_12[319:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  _T_625 = _RAND_13[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  _T_643 = _RAND_14[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  _T_764 = _RAND_15[31:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      _T_523 <= 1'h0;
    end else if (_T_514) begin
      if (_T_526) begin
        _T_523 <= 1'h0;
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
      _T_571 <= 1'h0;
    end else if (_T_563) begin
      if (_T_574) begin
        _T_571 <= 1'h0;
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
    if (reset) begin
      inflight <= 80'h0;
    end else begin
      inflight <= _T_757;
    end
    if (reset) begin
      inflight_opcodes <= 320'h0;
    end else begin
      inflight_opcodes <= _T_760;
    end
    if (reset) begin
      inflight_sizes <= 320'h0;
    end else begin
      inflight_sizes <= _T_763;
    end
    if (reset) begin
      _T_625 <= 1'h0;
    end else if (_T_514) begin
      if (a_first) begin
        _T_625 <= 1'h0;
      end else begin
        _T_625 <= _T_627;
      end
    end
    if (reset) begin
      _T_643 <= 1'h0;
    end else if (_T_563) begin
      if (d_first) begin
        _T_643 <= 1'h0;
      end else begin
        _T_643 <= _T_645;
      end
    end
    if (reset) begin
      _T_764 <= 32'h0;
    end else if (_T_778) begin
      _T_764 <= 32'h0;
    end else begin
      _T_764 <= _T_775;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_72 & _T_112) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock type unsupported by manager (connected at CLINT.scala:111:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122525.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122526.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock from a client which does not support Probe (connected at CLINT.scala:111:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122532.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122533.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock carries invalid source ID (connected at CLINT.scala:111:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122539.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122540.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock smaller than a beat (connected at CLINT.scala:111:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122547.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122548.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock address not aligned to size (connected at CLINT.scala:111:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122554.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122555.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock carries invalid grow param (connected at CLINT.scala:111:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122562.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122563.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock contains invalid mask (connected at CLINT.scala:111:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122571.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122572.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock is corrupt (connected at CLINT.scala:111:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122579.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122580.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm type unsupported by manager (connected at CLINT.scala:111:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122597.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122598.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm from a client which does not support Probe (connected at CLINT.scala:111:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122604.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122605.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm carries invalid source ID (connected at CLINT.scala:111:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122611.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122612.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm smaller than a beat (connected at CLINT.scala:111:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122619.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122620.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm address not aligned to size (connected at CLINT.scala:111:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122626.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122627.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm carries invalid grow param (connected at CLINT.scala:111:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122634.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122635.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm requests NtoB (connected at CLINT.scala:111:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122642.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122643.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm contains invalid mask (connected at CLINT.scala:111:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122651.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122652.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm is corrupt (connected at CLINT.scala:111:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122659.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122660.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Get type unsupported by manager (connected at CLINT.scala:111:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122680.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122681.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get carries invalid source ID (connected at CLINT.scala:111:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122687.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122688.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get address not aligned to size (connected at CLINT.scala:111:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122694.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122695.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get carries invalid param (connected at CLINT.scala:111:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122702.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122703.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get contains invalid mask (connected at CLINT.scala:111:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122710.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122711.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get is corrupt (connected at CLINT.scala:111:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122718.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122719.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutFull type unsupported by manager (connected at CLINT.scala:111:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122739.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122740.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull carries invalid source ID (connected at CLINT.scala:111:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122746.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122747.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull address not aligned to size (connected at CLINT.scala:111:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122753.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122754.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull carries invalid param (connected at CLINT.scala:111:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122761.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122762.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull contains invalid mask (connected at CLINT.scala:111:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122769.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122770.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutPartial type unsupported by manager (connected at CLINT.scala:111:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122790.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122791.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial carries invalid source ID (connected at CLINT.scala:111:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122797.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122798.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial address not aligned to size (connected at CLINT.scala:111:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122804.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122805.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial carries invalid param (connected at CLINT.scala:111:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122812.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122813.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial contains invalid mask (connected at CLINT.scala:111:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122822.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122823.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Arithmetic type unsupported by manager (connected at CLINT.scala:111:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122840.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122841.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic carries invalid source ID (connected at CLINT.scala:111:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122847.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122848.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic address not aligned to size (connected at CLINT.scala:111:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122854.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122855.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic carries invalid opcode param (connected at CLINT.scala:111:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122862.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122863.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic contains invalid mask (connected at CLINT.scala:111:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122870.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122871.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Logical type unsupported by manager (connected at CLINT.scala:111:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122888.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122889.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical carries invalid source ID (connected at CLINT.scala:111:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122895.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122896.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical address not aligned to size (connected at CLINT.scala:111:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122902.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122903.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical carries invalid opcode param (connected at CLINT.scala:111:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122910.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122911.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical contains invalid mask (connected at CLINT.scala:111:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122918.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122919.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Hint type unsupported by manager (connected at CLINT.scala:111:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122936.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122937.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint carries invalid source ID (connected at CLINT.scala:111:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122943.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122944.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint address not aligned to size (connected at CLINT.scala:111:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122950.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122951.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint carries invalid opcode param (connected at CLINT.scala:111:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122958.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122959.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint contains invalid mask (connected at CLINT.scala:111:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122966.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122967.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint is corrupt (connected at CLINT.scala:111:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122974.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@122975.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel has invalid opcode (connected at CLINT.scala:111:16)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@122985.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@122986.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck carries invalid source ID (connected at CLINT.scala:111:16)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@123006.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@123007.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck smaller than a beat (connected at CLINT.scala:111:16)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@123014.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@123015.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_174 & _T_373) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid source ID (connected at CLINT.scala:111:16)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@123048.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_174 & _T_373) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@123049.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_174 & _T_112) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid sink ID (connected at CLINT.scala:111:16)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@123055.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_174 & _T_112) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@123056.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_174 & _T_377) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant smaller than a beat (connected at CLINT.scala:111:16)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@123063.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_174 & _T_377) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@123064.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_180 & _T_373) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid source ID (connected at CLINT.scala:111:16)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@123106.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_180 & _T_373) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@123107.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_180 & _T_112) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid sink ID (connected at CLINT.scala:111:16)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@123113.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_180 & _T_112) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@123114.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_180 & _T_377) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData smaller than a beat (connected at CLINT.scala:111:16)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@123121.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_180 & _T_377) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@123122.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck carries invalid source ID (connected at CLINT.scala:111:16)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@123165.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@123166.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_188 & _T_373) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData carries invalid source ID (connected at CLINT.scala:111:16)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@123200.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_188 & _T_373) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@123201.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_190 & _T_373) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck carries invalid source ID (connected at CLINT.scala:111:16)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@123236.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_190 & _T_373) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@123237.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel opcode changed within multibeat operation (connected at CLINT.scala:111:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@123332.8]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@123333.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel param changed within multibeat operation (connected at CLINT.scala:111:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@123340.8]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@123341.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel size changed within multibeat operation (connected at CLINT.scala:111:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@123348.8]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@123349.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel source changed within multibeat operation (connected at CLINT.scala:111:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@123356.8]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@123357.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel address changed with multibeat operation (connected at CLINT.scala:111:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@123364.8]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@123365.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel opcode changed within multibeat operation (connected at CLINT.scala:111:16)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@123413.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@123414.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel size changed within multibeat operation (connected at CLINT.scala:111:16)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@123429.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@123430.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel source changed within multibeat operation (connected at CLINT.scala:111:16)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@123437.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@123438.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel re-used a source ID (connected at CLINT.scala:111:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@123590.8]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@123591.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel acknowledged for nothing inflight (connected at CLINT.scala:111:16)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@123641.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@123642.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper opcode response (connected at CLINT.scala:111:16)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@123658.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@123659.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper response size (connected at CLINT.scala:111:16)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@123669.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@123670.8]
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
          $fwrite(32'h80000002,"Assertion failed: ready check\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@123687.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@123688.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_773) begin
          $fwrite(32'h80000002,"Assertion failed: TileLink timeout expired (connected at CLINT.scala:111:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@123716.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_773) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@123717.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
