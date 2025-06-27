module TLMonitor_61( // @[:chipyard.TestHarness.RocketConfig.fir@255368.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@255369.4]
  input         reset, // @[:chipyard.TestHarness.RocketConfig.fir@255370.4]
  input         io_in_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@255371.4]
  input         io_in_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@255371.4]
  input  [2:0]  io_in_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@255371.4]
  input  [2:0]  io_in_a_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@255371.4]
  input  [1:0]  io_in_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@255371.4]
  input  [6:0]  io_in_a_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@255371.4]
  input  [30:0] io_in_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@255371.4]
  input  [7:0]  io_in_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@255371.4]
  input         io_in_a_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@255371.4]
  input         io_in_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@255371.4]
  input         io_in_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@255371.4]
  input  [2:0]  io_in_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@255371.4]
  input  [1:0]  io_in_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@255371.4]
  input  [6:0]  io_in_d_bits_source // @[:chipyard.TestHarness.RocketConfig.fir@255371.4]
);
  wire [31:0] plusarg_reader_out; // @[PlusArg.scala 44:11:chipyard.TestHarness.RocketConfig.fir@256678.4]
  wire  _T_10; // @[Parameters.scala 58:20:chipyard.TestHarness.RocketConfig.fir@255388.6]
  wire [5:0] _T_14; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@255394.6]
  wire [2:0] _T_16; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@255396.6]
  wire [30:0] _GEN_56; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@255397.6]
  wire [30:0] _T_17; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@255397.6]
  wire  _T_18; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@255398.6]
  wire [2:0] _T_19; // @[Misc.scala 201:34:chipyard.TestHarness.RocketConfig.fir@255399.6]
  wire [3:0] _T_21; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@255401.6]
  wire [2:0] _T_23; // @[Misc.scala 201:81:chipyard.TestHarness.RocketConfig.fir@255403.6]
  wire  _T_24; // @[Misc.scala 205:21:chipyard.TestHarness.RocketConfig.fir@255404.6]
  wire  _T_27; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@255407.6]
  wire  _T_29; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@255409.6]
  wire  _T_30; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@255410.6]
  wire  _T_32; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@255412.6]
  wire  _T_33; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@255413.6]
  wire  _T_36; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@255416.6]
  wire  _T_37; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@255417.6]
  wire  _T_38; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@255418.6]
  wire  _T_39; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@255419.6]
  wire  _T_40; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@255420.6]
  wire  _T_41; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@255421.6]
  wire  _T_42; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@255422.6]
  wire  _T_43; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@255423.6]
  wire  _T_44; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@255424.6]
  wire  _T_45; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@255425.6]
  wire  _T_46; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@255426.6]
  wire  _T_47; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@255427.6]
  wire  _T_48; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@255428.6]
  wire  _T_51; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@255431.6]
  wire  _T_52; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@255432.6]
  wire  _T_53; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@255433.6]
  wire  _T_54; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@255434.6]
  wire  _T_55; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@255435.6]
  wire  _T_56; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@255436.6]
  wire  _T_57; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@255437.6]
  wire  _T_58; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@255438.6]
  wire  _T_59; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@255439.6]
  wire  _T_60; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@255440.6]
  wire  _T_61; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@255441.6]
  wire  _T_62; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@255442.6]
  wire  _T_63; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@255443.6]
  wire  _T_64; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@255444.6]
  wire  _T_65; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@255445.6]
  wire  _T_66; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@255446.6]
  wire  _T_67; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@255447.6]
  wire  _T_68; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@255448.6]
  wire  _T_69; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@255449.6]
  wire  _T_70; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@255450.6]
  wire  _T_71; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@255451.6]
  wire  _T_72; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@255452.6]
  wire  _T_73; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@255453.6]
  wire  _T_74; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@255454.6]
  wire  _T_75; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@255455.6]
  wire [7:0] _T_82; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@255462.6]
  wire  _T_101; // @[Monitor.scala 79:25:chipyard.TestHarness.RocketConfig.fir@255485.6]
  wire [30:0] _T_103; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@255488.8]
  wire [31:0] _T_104; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@255489.8]
  wire [31:0] _T_106; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@255491.8]
  wire  _T_107; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@255492.8]
  wire  _T_112; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255497.8]
  wire  _T_117; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255510.8]
  wire  _T_118; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255511.8]
  wire  _T_121; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255518.8]
  wire  _T_122; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255519.8]
  wire  _T_124; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255525.8]
  wire  _T_125; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255526.8]
  wire  _T_126; // @[Bundles.scala 110:27:chipyard.TestHarness.RocketConfig.fir@255531.8]
  wire  _T_128; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255533.8]
  wire  _T_129; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255534.8]
  wire [7:0] _T_130; // @[Monitor.scala 86:18:chipyard.TestHarness.RocketConfig.fir@255539.8]
  wire  _T_131; // @[Monitor.scala 86:31:chipyard.TestHarness.RocketConfig.fir@255540.8]
  wire  _T_133; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255542.8]
  wire  _T_134; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255543.8]
  wire  _T_135; // @[Monitor.scala 87:18:chipyard.TestHarness.RocketConfig.fir@255548.8]
  wire  _T_137; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255550.8]
  wire  _T_138; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255551.8]
  wire  _T_139; // @[Monitor.scala 90:25:chipyard.TestHarness.RocketConfig.fir@255557.6]
  wire  _T_168; // @[Monitor.scala 97:31:chipyard.TestHarness.RocketConfig.fir@255611.8]
  wire  _T_170; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255613.8]
  wire  _T_171; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255614.8]
  wire  _T_181; // @[Monitor.scala 102:25:chipyard.TestHarness.RocketConfig.fir@255637.6]
  wire  _T_194; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255651.8]
  wire  _T_195; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255652.8]
  wire  _T_202; // @[Monitor.scala 106:31:chipyard.TestHarness.RocketConfig.fir@255671.8]
  wire  _T_204; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255673.8]
  wire  _T_205; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255674.8]
  wire  _T_206; // @[Monitor.scala 107:30:chipyard.TestHarness.RocketConfig.fir@255679.8]
  wire  _T_208; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255681.8]
  wire  _T_209; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255682.8]
  wire  _T_214; // @[Monitor.scala 111:25:chipyard.TestHarness.RocketConfig.fir@255696.6]
  wire  _T_243; // @[Monitor.scala 119:25:chipyard.TestHarness.RocketConfig.fir@255747.6]
  wire [7:0] _T_268; // @[Monitor.scala 124:33:chipyard.TestHarness.RocketConfig.fir@255789.8]
  wire [7:0] _T_269; // @[Monitor.scala 124:31:chipyard.TestHarness.RocketConfig.fir@255790.8]
  wire  _T_270; // @[Monitor.scala 124:40:chipyard.TestHarness.RocketConfig.fir@255791.8]
  wire  _T_272; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255793.8]
  wire  _T_273; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255794.8]
  wire  _T_274; // @[Monitor.scala 127:25:chipyard.TestHarness.RocketConfig.fir@255800.6]
  wire  _T_292; // @[Bundles.scala 140:33:chipyard.TestHarness.RocketConfig.fir@255831.8]
  wire  _T_294; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255833.8]
  wire  _T_295; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255834.8]
  wire  _T_300; // @[Monitor.scala 135:25:chipyard.TestHarness.RocketConfig.fir@255848.6]
  wire  _T_318; // @[Bundles.scala 147:30:chipyard.TestHarness.RocketConfig.fir@255879.8]
  wire  _T_320; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255881.8]
  wire  _T_321; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255882.8]
  wire  _T_326; // @[Monitor.scala 143:25:chipyard.TestHarness.RocketConfig.fir@255896.6]
  wire  _T_344; // @[Bundles.scala 160:28:chipyard.TestHarness.RocketConfig.fir@255927.8]
  wire  _T_346; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255929.8]
  wire  _T_347; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255930.8]
  wire  _T_356; // @[Bundles.scala 44:24:chipyard.TestHarness.RocketConfig.fir@255954.6]
  wire  _T_358; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@255956.6]
  wire  _T_359; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@255957.6]
  wire  _T_366; // @[Parameters.scala 58:20:chipyard.TestHarness.RocketConfig.fir@255968.6]
  wire  _T_370; // @[Monitor.scala 307:25:chipyard.TestHarness.RocketConfig.fir@255974.6]
  wire  _T_372; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@255977.8]
  wire  _T_373; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@255978.8]
  wire  _T_374; // @[Monitor.scala 309:27:chipyard.TestHarness.RocketConfig.fir@255983.8]
  wire  _T_376; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@255985.8]
  wire  _T_377; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@255986.8]
  wire  _T_390; // @[Monitor.scala 315:25:chipyard.TestHarness.RocketConfig.fir@256016.6]
  wire  _T_418; // @[Monitor.scala 325:25:chipyard.TestHarness.RocketConfig.fir@256074.6]
  wire  _T_447; // @[Monitor.scala 335:25:chipyard.TestHarness.RocketConfig.fir@256133.6]
  wire  _T_464; // @[Monitor.scala 343:25:chipyard.TestHarness.RocketConfig.fir@256168.6]
  wire  _T_482; // @[Monitor.scala 351:25:chipyard.TestHarness.RocketConfig.fir@256204.6]
  wire  _T_514; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@256270.4]
  reg  _T_523; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@256279.4]
  reg [31:0] _RAND_0;
  wire  _T_525; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@256281.4]
  wire  _T_526; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@256282.4]
  reg [2:0] _T_534; // @[Monitor.scala 381:22:chipyard.TestHarness.RocketConfig.fir@256293.4]
  reg [31:0] _RAND_1;
  reg [2:0] _T_535; // @[Monitor.scala 382:22:chipyard.TestHarness.RocketConfig.fir@256294.4]
  reg [31:0] _RAND_2;
  reg [1:0] _T_536; // @[Monitor.scala 383:22:chipyard.TestHarness.RocketConfig.fir@256295.4]
  reg [31:0] _RAND_3;
  reg [6:0] _T_537; // @[Monitor.scala 384:22:chipyard.TestHarness.RocketConfig.fir@256296.4]
  reg [31:0] _RAND_4;
  reg [30:0] _T_538; // @[Monitor.scala 385:22:chipyard.TestHarness.RocketConfig.fir@256297.4]
  reg [31:0] _RAND_5;
  wire  _T_539; // @[Monitor.scala 386:22:chipyard.TestHarness.RocketConfig.fir@256298.4]
  wire  _T_540; // @[Monitor.scala 386:19:chipyard.TestHarness.RocketConfig.fir@256299.4]
  wire  _T_541; // @[Monitor.scala 387:32:chipyard.TestHarness.RocketConfig.fir@256301.6]
  wire  _T_543; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@256303.6]
  wire  _T_544; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@256304.6]
  wire  _T_545; // @[Monitor.scala 388:32:chipyard.TestHarness.RocketConfig.fir@256309.6]
  wire  _T_547; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@256311.6]
  wire  _T_548; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@256312.6]
  wire  _T_549; // @[Monitor.scala 389:32:chipyard.TestHarness.RocketConfig.fir@256317.6]
  wire  _T_551; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@256319.6]
  wire  _T_552; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@256320.6]
  wire  _T_553; // @[Monitor.scala 390:32:chipyard.TestHarness.RocketConfig.fir@256325.6]
  wire  _T_555; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@256327.6]
  wire  _T_556; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@256328.6]
  wire  _T_557; // @[Monitor.scala 391:32:chipyard.TestHarness.RocketConfig.fir@256333.6]
  wire  _T_559; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@256335.6]
  wire  _T_560; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@256336.6]
  wire  _T_562; // @[Monitor.scala 393:20:chipyard.TestHarness.RocketConfig.fir@256343.4]
  wire  _T_563; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@256351.4]
  reg  _T_571; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@256359.4]
  reg [31:0] _RAND_6;
  wire  _T_573; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@256361.4]
  wire  _T_574; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@256362.4]
  reg [2:0] _T_582; // @[Monitor.scala 532:22:chipyard.TestHarness.RocketConfig.fir@256373.4]
  reg [31:0] _RAND_7;
  reg [1:0] _T_584; // @[Monitor.scala 534:22:chipyard.TestHarness.RocketConfig.fir@256375.4]
  reg [31:0] _RAND_8;
  reg [6:0] _T_585; // @[Monitor.scala 535:22:chipyard.TestHarness.RocketConfig.fir@256376.4]
  reg [31:0] _RAND_9;
  wire  _T_588; // @[Monitor.scala 538:22:chipyard.TestHarness.RocketConfig.fir@256379.4]
  wire  _T_589; // @[Monitor.scala 538:19:chipyard.TestHarness.RocketConfig.fir@256380.4]
  wire  _T_590; // @[Monitor.scala 539:29:chipyard.TestHarness.RocketConfig.fir@256382.6]
  wire  _T_592; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@256384.6]
  wire  _T_593; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@256385.6]
  wire  _T_598; // @[Monitor.scala 541:29:chipyard.TestHarness.RocketConfig.fir@256398.6]
  wire  _T_600; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@256400.6]
  wire  _T_601; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@256401.6]
  wire  _T_602; // @[Monitor.scala 542:29:chipyard.TestHarness.RocketConfig.fir@256406.6]
  wire  _T_604; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@256408.6]
  wire  _T_605; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@256409.6]
  wire  _T_615; // @[Monitor.scala 546:20:chipyard.TestHarness.RocketConfig.fir@256432.4]
  reg [79:0] inflight; // @[Monitor.scala 608:27:chipyard.TestHarness.RocketConfig.fir@256441.4]
  reg [95:0] _RAND_10;
  reg [319:0] inflight_opcodes; // @[Monitor.scala 610:35:chipyard.TestHarness.RocketConfig.fir@256442.4]
  reg [319:0] _RAND_11;
  reg [319:0] inflight_sizes; // @[Monitor.scala 612:33:chipyard.TestHarness.RocketConfig.fir@256443.4]
  reg [319:0] _RAND_12;
  reg  _T_625; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@256453.4]
  reg [31:0] _RAND_13;
  wire  _T_627; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@256455.4]
  wire  a_first; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@256456.4]
  reg  _T_643; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@256475.4]
  reg [31:0] _RAND_14;
  wire  _T_645; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@256477.4]
  wire  d_first; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@256478.4]
  wire [8:0] _GEN_57; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@256497.4]
  wire [9:0] _T_653; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@256497.4]
  wire [319:0] _T_654; // @[Monitor.scala 629:44:chipyard.TestHarness.RocketConfig.fir@256498.4]
  wire [15:0] _T_658; // @[Monitor.scala 606:57:chipyard.TestHarness.RocketConfig.fir@256502.4]
  wire [319:0] _GEN_58; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@256503.4]
  wire [319:0] _T_659; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@256503.4]
  wire [319:0] _T_660; // @[Monitor.scala 629:152:chipyard.TestHarness.RocketConfig.fir@256504.4]
  wire [319:0] _T_662; // @[Monitor.scala 633:40:chipyard.TestHarness.RocketConfig.fir@256509.4]
  wire [319:0] _T_667; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@256514.4]
  wire [319:0] _T_668; // @[Monitor.scala 633:144:chipyard.TestHarness.RocketConfig.fir@256515.4]
  wire  _T_672; // @[Monitor.scala 643:27:chipyard.TestHarness.RocketConfig.fir@256540.4]
  wire [127:0] _T_674; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@256543.6]
  wire [3:0] _T_675; // @[Monitor.scala 645:53:chipyard.TestHarness.RocketConfig.fir@256545.6]
  wire [3:0] _T_676; // @[Monitor.scala 645:61:chipyard.TestHarness.RocketConfig.fir@256546.6]
  wire [2:0] _T_677; // @[Monitor.scala 646:49:chipyard.TestHarness.RocketConfig.fir@256548.6]
  wire [2:0] _T_678; // @[Monitor.scala 646:57:chipyard.TestHarness.RocketConfig.fir@256549.6]
  wire [8:0] _GEN_63; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@256551.6]
  wire [9:0] _T_679; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@256551.6]
  wire [3:0] a_opcodes_set_interm; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@256542.4]
  wire [1026:0] _GEN_64; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@256552.6]
  wire [1026:0] _T_680; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@256552.6]
  wire [2:0] a_sizes_set_interm; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@256542.4]
  wire [1025:0] _GEN_66; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@256555.6]
  wire [1025:0] _T_682; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@256555.6]
  wire [79:0] _T_683; // @[Monitor.scala 649:26:chipyard.TestHarness.RocketConfig.fir@256557.6]
  wire  _T_685; // @[Monitor.scala 649:17:chipyard.TestHarness.RocketConfig.fir@256559.6]
  wire  _T_687; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@256561.6]
  wire  _T_688; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@256562.6]
  wire [127:0] _GEN_15; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@256542.4]
  wire [1026:0] _GEN_18; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@256542.4]
  wire [1025:0] _GEN_19; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@256542.4]
  wire  _T_691; // @[Monitor.scala 660:27:chipyard.TestHarness.RocketConfig.fir@256576.4]
  wire  _T_693; // @[Monitor.scala 660:75:chipyard.TestHarness.RocketConfig.fir@256578.4]
  wire  _T_694; // @[Monitor.scala 660:72:chipyard.TestHarness.RocketConfig.fir@256579.4]
  wire [127:0] _T_695; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@256581.6]
  wire [1038:0] _GEN_68; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@256588.6]
  wire [1038:0] _T_701; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@256588.6]
  wire [127:0] _GEN_20; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@256580.4]
  wire [1038:0] _GEN_21; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@256580.4]
  wire  _T_708; // @[Monitor.scala 665:26:chipyard.TestHarness.RocketConfig.fir@256598.4]
  wire  _T_711; // @[Monitor.scala 665:71:chipyard.TestHarness.RocketConfig.fir@256601.4]
  wire [79:0] _T_712; // @[Monitor.scala 666:25:chipyard.TestHarness.RocketConfig.fir@256603.6]
  wire  _T_714; // @[Monitor.scala 666:93:chipyard.TestHarness.RocketConfig.fir@256605.6]
  wire  _T_715; // @[Monitor.scala 666:68:chipyard.TestHarness.RocketConfig.fir@256606.6]
  wire  _T_716; // @[Monitor.scala 666:142:chipyard.TestHarness.RocketConfig.fir@256607.6]
  wire  _T_717; // @[Monitor.scala 666:119:chipyard.TestHarness.RocketConfig.fir@256608.6]
  wire  _T_718; // @[Monitor.scala 666:166:chipyard.TestHarness.RocketConfig.fir@256609.6]
  wire  _T_719; // @[Monitor.scala 666:49:chipyard.TestHarness.RocketConfig.fir@256610.6]
  wire  _T_721; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@256612.6]
  wire  _T_722; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@256613.6]
  wire [3:0] a_opcode_lookup; // @[:chipyard.TestHarness.RocketConfig.fir@256495.4 :chipyard.TestHarness.RocketConfig.fir@256496.4 Monitor.scala 629:21:chipyard.TestHarness.RocketConfig.fir@256505.4]
  wire [2:0] _GEN_25; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@256619.6]
  wire [2:0] _GEN_26; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@256619.6]
  wire [2:0] _GEN_27; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@256619.6]
  wire [2:0] _GEN_28; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@256619.6]
  wire [2:0] _GEN_29; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@256619.6]
  wire [2:0] _GEN_30; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@256619.6]
  wire  _T_724; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@256619.6]
  wire [2:0] _GEN_37; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@256621.6]
  wire [2:0] _GEN_38; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@256621.6]
  wire  _T_726; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@256621.6]
  wire  _T_727; // @[Monitor.scala 667:71:chipyard.TestHarness.RocketConfig.fir@256622.6]
  wire [2:0] _GEN_41; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@256623.6]
  wire [2:0] _GEN_42; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@256623.6]
  wire [2:0] _GEN_43; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@256623.6]
  wire [2:0] _GEN_44; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@256623.6]
  wire [2:0] _GEN_45; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@256623.6]
  wire [2:0] _GEN_46; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@256623.6]
  wire  _T_728; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@256623.6]
  wire [2:0] _GEN_53; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@256624.6]
  wire [2:0] _GEN_54; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@256624.6]
  wire  _T_729; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@256624.6]
  wire  _T_730; // @[Monitor.scala 668:99:chipyard.TestHarness.RocketConfig.fir@256625.6]
  wire  _T_731; // @[Monitor.scala 668:34:chipyard.TestHarness.RocketConfig.fir@256626.6]
  wire  _T_732; // @[Monitor.scala 668:15:chipyard.TestHarness.RocketConfig.fir@256627.6]
  wire  _T_734; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@256629.6]
  wire  _T_735; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@256630.6]
  wire [3:0] a_size_lookup; // @[:chipyard.TestHarness.RocketConfig.fir@256506.4 :chipyard.TestHarness.RocketConfig.fir@256507.4 Monitor.scala 633:19:chipyard.TestHarness.RocketConfig.fir@256516.4]
  wire [3:0] _GEN_71; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@256635.6]
  wire  _T_736; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@256635.6]
  wire  _T_738; // @[Monitor.scala 670:72:chipyard.TestHarness.RocketConfig.fir@256637.6]
  wire  _T_739; // @[Monitor.scala 670:53:chipyard.TestHarness.RocketConfig.fir@256638.6]
  wire  _T_741; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@256640.6]
  wire  _T_742; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@256641.6]
  wire  _T_744; // @[Monitor.scala 672:36:chipyard.TestHarness.RocketConfig.fir@256648.4]
  wire  _T_745; // @[Monitor.scala 672:47:chipyard.TestHarness.RocketConfig.fir@256649.4]
  wire  _T_747; // @[Monitor.scala 672:65:chipyard.TestHarness.RocketConfig.fir@256651.4]
  wire  _T_749; // @[Monitor.scala 672:116:chipyard.TestHarness.RocketConfig.fir@256653.4]
  wire  _T_750; // @[Monitor.scala 673:15:chipyard.TestHarness.RocketConfig.fir@256655.6]
  wire  _T_751; // @[Monitor.scala 673:32:chipyard.TestHarness.RocketConfig.fir@256656.6]
  wire  _T_753; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@256658.6]
  wire  _T_754; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@256659.6]
  wire [79:0] a_set; // @[:chipyard.TestHarness.RocketConfig.fir@256489.4 :chipyard.TestHarness.RocketConfig.fir@256490.4 Monitor.scala 644:13:chipyard.TestHarness.RocketConfig.fir@256544.6]
  wire [79:0] _T_755; // @[Monitor.scala 680:27:chipyard.TestHarness.RocketConfig.fir@256665.4]
  wire [79:0] d_clr; // @[:chipyard.TestHarness.RocketConfig.fir@256568.4 :chipyard.TestHarness.RocketConfig.fir@256569.4 Monitor.scala 661:13:chipyard.TestHarness.RocketConfig.fir@256582.6]
  wire [79:0] _T_756; // @[Monitor.scala 680:38:chipyard.TestHarness.RocketConfig.fir@256666.4]
  wire [79:0] _T_757; // @[Monitor.scala 680:36:chipyard.TestHarness.RocketConfig.fir@256667.4]
  wire [319:0] a_opcodes_set; // @[:chipyard.TestHarness.RocketConfig.fir@256491.4 :chipyard.TestHarness.RocketConfig.fir@256492.4 Monitor.scala 647:21:chipyard.TestHarness.RocketConfig.fir@256553.6]
  wire [319:0] _T_758; // @[Monitor.scala 681:43:chipyard.TestHarness.RocketConfig.fir@256669.4]
  wire [319:0] d_opcodes_clr; // @[:chipyard.TestHarness.RocketConfig.fir@256570.4 :chipyard.TestHarness.RocketConfig.fir@256571.4 Monitor.scala 662:21:chipyard.TestHarness.RocketConfig.fir@256589.6]
  wire [319:0] _T_759; // @[Monitor.scala 681:62:chipyard.TestHarness.RocketConfig.fir@256670.4]
  wire [319:0] _T_760; // @[Monitor.scala 681:60:chipyard.TestHarness.RocketConfig.fir@256671.4]
  wire [319:0] a_sizes_set; // @[:chipyard.TestHarness.RocketConfig.fir@256493.4 :chipyard.TestHarness.RocketConfig.fir@256494.4 Monitor.scala 648:19:chipyard.TestHarness.RocketConfig.fir@256556.6]
  wire [319:0] _T_761; // @[Monitor.scala 682:39:chipyard.TestHarness.RocketConfig.fir@256673.4]
  wire [319:0] _T_763; // @[Monitor.scala 682:54:chipyard.TestHarness.RocketConfig.fir@256675.4]
  reg [31:0] _T_764; // @[Monitor.scala 684:27:chipyard.TestHarness.RocketConfig.fir@256677.4]
  reg [31:0] _RAND_15;
  wire  _T_765; // @[Monitor.scala 687:26:chipyard.TestHarness.RocketConfig.fir@256680.4]
  wire  _T_766; // @[Monitor.scala 687:16:chipyard.TestHarness.RocketConfig.fir@256681.4]
  wire  _T_767; // @[Monitor.scala 687:39:chipyard.TestHarness.RocketConfig.fir@256682.4]
  wire  _T_768; // @[Monitor.scala 687:30:chipyard.TestHarness.RocketConfig.fir@256683.4]
  wire  _T_769; // @[Monitor.scala 687:59:chipyard.TestHarness.RocketConfig.fir@256684.4]
  wire  _T_770; // @[Monitor.scala 687:47:chipyard.TestHarness.RocketConfig.fir@256685.4]
  wire  _T_772; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@256687.4]
  wire  _T_773; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@256688.4]
  wire [31:0] _T_775; // @[Monitor.scala 689:26:chipyard.TestHarness.RocketConfig.fir@256694.4]
  wire  _T_778; // @[Monitor.scala 690:27:chipyard.TestHarness.RocketConfig.fir@256698.4]
  wire  _GEN_72; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255499.10]
  wire  _GEN_88; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255571.10]
  wire  _GEN_106; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255654.10]
  wire  _GEN_118; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255713.10]
  wire  _GEN_128; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255764.10]
  wire  _GEN_138; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255814.10]
  wire  _GEN_148; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255862.10]
  wire  _GEN_158; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255910.10]
  wire  _GEN_170; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@255980.10]
  wire  _GEN_174; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@256022.10]
  wire  _GEN_180; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@256080.10]
  wire  _GEN_186; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@256139.10]
  wire  _GEN_188; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@256174.10]
  wire  _GEN_190; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@256210.10]
  plusarg_reader #(.FORMAT("tilelink_timeout=%d"), .DEFAULT(0), .WIDTH(32)) plusarg_reader ( // @[PlusArg.scala 44:11:chipyard.TestHarness.RocketConfig.fir@256678.4]
    .out(plusarg_reader_out)
  );
  assign _T_10 = io_in_a_bits_source <= 7'h4f; // @[Parameters.scala 58:20:chipyard.TestHarness.RocketConfig.fir@255388.6]
  assign _T_14 = 6'h7 << io_in_a_bits_size; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@255394.6]
  assign _T_16 = ~_T_14[2:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@255396.6]
  assign _GEN_56 = {{28'd0}, _T_16}; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@255397.6]
  assign _T_17 = io_in_a_bits_address & _GEN_56; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@255397.6]
  assign _T_18 = _T_17 == 31'h0; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@255398.6]
  assign _T_19 = {{1'd0}, io_in_a_bits_size}; // @[Misc.scala 201:34:chipyard.TestHarness.RocketConfig.fir@255399.6]
  assign _T_21 = 4'h1 << _T_19[1:0]; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@255401.6]
  assign _T_23 = _T_21[2:0] | 3'h1; // @[Misc.scala 201:81:chipyard.TestHarness.RocketConfig.fir@255403.6]
  assign _T_24 = io_in_a_bits_size >= 2'h3; // @[Misc.scala 205:21:chipyard.TestHarness.RocketConfig.fir@255404.6]
  assign _T_27 = ~io_in_a_bits_address[2]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@255407.6]
  assign _T_29 = _T_23[2] & _T_27; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@255409.6]
  assign _T_30 = _T_24 | _T_29; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@255410.6]
  assign _T_32 = _T_23[2] & io_in_a_bits_address[2]; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@255412.6]
  assign _T_33 = _T_24 | _T_32; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@255413.6]
  assign _T_36 = ~io_in_a_bits_address[1]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@255416.6]
  assign _T_37 = _T_27 & _T_36; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@255417.6]
  assign _T_38 = _T_23[1] & _T_37; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@255418.6]
  assign _T_39 = _T_30 | _T_38; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@255419.6]
  assign _T_40 = _T_27 & io_in_a_bits_address[1]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@255420.6]
  assign _T_41 = _T_23[1] & _T_40; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@255421.6]
  assign _T_42 = _T_30 | _T_41; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@255422.6]
  assign _T_43 = io_in_a_bits_address[2] & _T_36; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@255423.6]
  assign _T_44 = _T_23[1] & _T_43; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@255424.6]
  assign _T_45 = _T_33 | _T_44; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@255425.6]
  assign _T_46 = io_in_a_bits_address[2] & io_in_a_bits_address[1]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@255426.6]
  assign _T_47 = _T_23[1] & _T_46; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@255427.6]
  assign _T_48 = _T_33 | _T_47; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@255428.6]
  assign _T_51 = ~io_in_a_bits_address[0]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@255431.6]
  assign _T_52 = _T_37 & _T_51; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@255432.6]
  assign _T_53 = _T_23[0] & _T_52; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@255433.6]
  assign _T_54 = _T_39 | _T_53; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@255434.6]
  assign _T_55 = _T_37 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@255435.6]
  assign _T_56 = _T_23[0] & _T_55; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@255436.6]
  assign _T_57 = _T_39 | _T_56; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@255437.6]
  assign _T_58 = _T_40 & _T_51; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@255438.6]
  assign _T_59 = _T_23[0] & _T_58; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@255439.6]
  assign _T_60 = _T_42 | _T_59; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@255440.6]
  assign _T_61 = _T_40 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@255441.6]
  assign _T_62 = _T_23[0] & _T_61; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@255442.6]
  assign _T_63 = _T_42 | _T_62; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@255443.6]
  assign _T_64 = _T_43 & _T_51; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@255444.6]
  assign _T_65 = _T_23[0] & _T_64; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@255445.6]
  assign _T_66 = _T_45 | _T_65; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@255446.6]
  assign _T_67 = _T_43 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@255447.6]
  assign _T_68 = _T_23[0] & _T_67; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@255448.6]
  assign _T_69 = _T_45 | _T_68; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@255449.6]
  assign _T_70 = _T_46 & _T_51; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@255450.6]
  assign _T_71 = _T_23[0] & _T_70; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@255451.6]
  assign _T_72 = _T_48 | _T_71; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@255452.6]
  assign _T_73 = _T_46 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@255453.6]
  assign _T_74 = _T_23[0] & _T_73; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@255454.6]
  assign _T_75 = _T_48 | _T_74; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@255455.6]
  assign _T_82 = {_T_75,_T_72,_T_69,_T_66,_T_63,_T_60,_T_57,_T_54}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@255462.6]
  assign _T_101 = io_in_a_bits_opcode == 3'h6; // @[Monitor.scala 79:25:chipyard.TestHarness.RocketConfig.fir@255485.6]
  assign _T_103 = io_in_a_bits_address ^ 31'h54000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@255488.8]
  assign _T_104 = {1'b0,$signed(_T_103)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@255489.8]
  assign _T_106 = $signed(_T_104) & -32'sh1000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@255491.8]
  assign _T_107 = $signed(_T_106) == 32'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@255492.8]
  assign _T_112 = ~reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255497.8]
  assign _T_117 = _T_10 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255510.8]
  assign _T_118 = ~_T_117; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255511.8]
  assign _T_121 = _T_24 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255518.8]
  assign _T_122 = ~_T_121; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255519.8]
  assign _T_124 = _T_18 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255525.8]
  assign _T_125 = ~_T_124; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255526.8]
  assign _T_126 = io_in_a_bits_param <= 3'h2; // @[Bundles.scala 110:27:chipyard.TestHarness.RocketConfig.fir@255531.8]
  assign _T_128 = _T_126 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255533.8]
  assign _T_129 = ~_T_128; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255534.8]
  assign _T_130 = ~io_in_a_bits_mask; // @[Monitor.scala 86:18:chipyard.TestHarness.RocketConfig.fir@255539.8]
  assign _T_131 = _T_130 == 8'h0; // @[Monitor.scala 86:31:chipyard.TestHarness.RocketConfig.fir@255540.8]
  assign _T_133 = _T_131 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255542.8]
  assign _T_134 = ~_T_133; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255543.8]
  assign _T_135 = ~io_in_a_bits_corrupt; // @[Monitor.scala 87:18:chipyard.TestHarness.RocketConfig.fir@255548.8]
  assign _T_137 = _T_135 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255550.8]
  assign _T_138 = ~_T_137; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255551.8]
  assign _T_139 = io_in_a_bits_opcode == 3'h7; // @[Monitor.scala 90:25:chipyard.TestHarness.RocketConfig.fir@255557.6]
  assign _T_168 = io_in_a_bits_param != 3'h0; // @[Monitor.scala 97:31:chipyard.TestHarness.RocketConfig.fir@255611.8]
  assign _T_170 = _T_168 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255613.8]
  assign _T_171 = ~_T_170; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255614.8]
  assign _T_181 = io_in_a_bits_opcode == 3'h4; // @[Monitor.scala 102:25:chipyard.TestHarness.RocketConfig.fir@255637.6]
  assign _T_194 = _T_107 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255651.8]
  assign _T_195 = ~_T_194; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255652.8]
  assign _T_202 = io_in_a_bits_param == 3'h0; // @[Monitor.scala 106:31:chipyard.TestHarness.RocketConfig.fir@255671.8]
  assign _T_204 = _T_202 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255673.8]
  assign _T_205 = ~_T_204; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255674.8]
  assign _T_206 = io_in_a_bits_mask == _T_82; // @[Monitor.scala 107:30:chipyard.TestHarness.RocketConfig.fir@255679.8]
  assign _T_208 = _T_206 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255681.8]
  assign _T_209 = ~_T_208; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255682.8]
  assign _T_214 = io_in_a_bits_opcode == 3'h0; // @[Monitor.scala 111:25:chipyard.TestHarness.RocketConfig.fir@255696.6]
  assign _T_243 = io_in_a_bits_opcode == 3'h1; // @[Monitor.scala 119:25:chipyard.TestHarness.RocketConfig.fir@255747.6]
  assign _T_268 = ~_T_82; // @[Monitor.scala 124:33:chipyard.TestHarness.RocketConfig.fir@255789.8]
  assign _T_269 = io_in_a_bits_mask & _T_268; // @[Monitor.scala 124:31:chipyard.TestHarness.RocketConfig.fir@255790.8]
  assign _T_270 = _T_269 == 8'h0; // @[Monitor.scala 124:40:chipyard.TestHarness.RocketConfig.fir@255791.8]
  assign _T_272 = _T_270 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255793.8]
  assign _T_273 = ~_T_272; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255794.8]
  assign _T_274 = io_in_a_bits_opcode == 3'h2; // @[Monitor.scala 127:25:chipyard.TestHarness.RocketConfig.fir@255800.6]
  assign _T_292 = io_in_a_bits_param <= 3'h4; // @[Bundles.scala 140:33:chipyard.TestHarness.RocketConfig.fir@255831.8]
  assign _T_294 = _T_292 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255833.8]
  assign _T_295 = ~_T_294; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255834.8]
  assign _T_300 = io_in_a_bits_opcode == 3'h3; // @[Monitor.scala 135:25:chipyard.TestHarness.RocketConfig.fir@255848.6]
  assign _T_318 = io_in_a_bits_param <= 3'h3; // @[Bundles.scala 147:30:chipyard.TestHarness.RocketConfig.fir@255879.8]
  assign _T_320 = _T_318 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255881.8]
  assign _T_321 = ~_T_320; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255882.8]
  assign _T_326 = io_in_a_bits_opcode == 3'h5; // @[Monitor.scala 143:25:chipyard.TestHarness.RocketConfig.fir@255896.6]
  assign _T_344 = io_in_a_bits_param <= 3'h1; // @[Bundles.scala 160:28:chipyard.TestHarness.RocketConfig.fir@255927.8]
  assign _T_346 = _T_344 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255929.8]
  assign _T_347 = ~_T_346; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255930.8]
  assign _T_356 = io_in_d_bits_opcode <= 3'h6; // @[Bundles.scala 44:24:chipyard.TestHarness.RocketConfig.fir@255954.6]
  assign _T_358 = _T_356 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@255956.6]
  assign _T_359 = ~_T_358; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@255957.6]
  assign _T_366 = io_in_d_bits_source <= 7'h4f; // @[Parameters.scala 58:20:chipyard.TestHarness.RocketConfig.fir@255968.6]
  assign _T_370 = io_in_d_bits_opcode == 3'h6; // @[Monitor.scala 307:25:chipyard.TestHarness.RocketConfig.fir@255974.6]
  assign _T_372 = _T_366 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@255977.8]
  assign _T_373 = ~_T_372; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@255978.8]
  assign _T_374 = io_in_d_bits_size >= 2'h3; // @[Monitor.scala 309:27:chipyard.TestHarness.RocketConfig.fir@255983.8]
  assign _T_376 = _T_374 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@255985.8]
  assign _T_377 = ~_T_376; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@255986.8]
  assign _T_390 = io_in_d_bits_opcode == 3'h4; // @[Monitor.scala 315:25:chipyard.TestHarness.RocketConfig.fir@256016.6]
  assign _T_418 = io_in_d_bits_opcode == 3'h5; // @[Monitor.scala 325:25:chipyard.TestHarness.RocketConfig.fir@256074.6]
  assign _T_447 = io_in_d_bits_opcode == 3'h0; // @[Monitor.scala 335:25:chipyard.TestHarness.RocketConfig.fir@256133.6]
  assign _T_464 = io_in_d_bits_opcode == 3'h1; // @[Monitor.scala 343:25:chipyard.TestHarness.RocketConfig.fir@256168.6]
  assign _T_482 = io_in_d_bits_opcode == 3'h2; // @[Monitor.scala 351:25:chipyard.TestHarness.RocketConfig.fir@256204.6]
  assign _T_514 = io_in_a_ready & io_in_a_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@256270.4]
  assign _T_525 = _T_523 - 1'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@256281.4]
  assign _T_526 = ~_T_523; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@256282.4]
  assign _T_539 = ~_T_526; // @[Monitor.scala 386:22:chipyard.TestHarness.RocketConfig.fir@256298.4]
  assign _T_540 = io_in_a_valid & _T_539; // @[Monitor.scala 386:19:chipyard.TestHarness.RocketConfig.fir@256299.4]
  assign _T_541 = io_in_a_bits_opcode == _T_534; // @[Monitor.scala 387:32:chipyard.TestHarness.RocketConfig.fir@256301.6]
  assign _T_543 = _T_541 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@256303.6]
  assign _T_544 = ~_T_543; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@256304.6]
  assign _T_545 = io_in_a_bits_param == _T_535; // @[Monitor.scala 388:32:chipyard.TestHarness.RocketConfig.fir@256309.6]
  assign _T_547 = _T_545 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@256311.6]
  assign _T_548 = ~_T_547; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@256312.6]
  assign _T_549 = io_in_a_bits_size == _T_536; // @[Monitor.scala 389:32:chipyard.TestHarness.RocketConfig.fir@256317.6]
  assign _T_551 = _T_549 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@256319.6]
  assign _T_552 = ~_T_551; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@256320.6]
  assign _T_553 = io_in_a_bits_source == _T_537; // @[Monitor.scala 390:32:chipyard.TestHarness.RocketConfig.fir@256325.6]
  assign _T_555 = _T_553 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@256327.6]
  assign _T_556 = ~_T_555; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@256328.6]
  assign _T_557 = io_in_a_bits_address == _T_538; // @[Monitor.scala 391:32:chipyard.TestHarness.RocketConfig.fir@256333.6]
  assign _T_559 = _T_557 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@256335.6]
  assign _T_560 = ~_T_559; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@256336.6]
  assign _T_562 = _T_514 & _T_526; // @[Monitor.scala 393:20:chipyard.TestHarness.RocketConfig.fir@256343.4]
  assign _T_563 = io_in_d_ready & io_in_d_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@256351.4]
  assign _T_573 = _T_571 - 1'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@256361.4]
  assign _T_574 = ~_T_571; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@256362.4]
  assign _T_588 = ~_T_574; // @[Monitor.scala 538:22:chipyard.TestHarness.RocketConfig.fir@256379.4]
  assign _T_589 = io_in_d_valid & _T_588; // @[Monitor.scala 538:19:chipyard.TestHarness.RocketConfig.fir@256380.4]
  assign _T_590 = io_in_d_bits_opcode == _T_582; // @[Monitor.scala 539:29:chipyard.TestHarness.RocketConfig.fir@256382.6]
  assign _T_592 = _T_590 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@256384.6]
  assign _T_593 = ~_T_592; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@256385.6]
  assign _T_598 = io_in_d_bits_size == _T_584; // @[Monitor.scala 541:29:chipyard.TestHarness.RocketConfig.fir@256398.6]
  assign _T_600 = _T_598 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@256400.6]
  assign _T_601 = ~_T_600; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@256401.6]
  assign _T_602 = io_in_d_bits_source == _T_585; // @[Monitor.scala 542:29:chipyard.TestHarness.RocketConfig.fir@256406.6]
  assign _T_604 = _T_602 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@256408.6]
  assign _T_605 = ~_T_604; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@256409.6]
  assign _T_615 = _T_563 & _T_574; // @[Monitor.scala 546:20:chipyard.TestHarness.RocketConfig.fir@256432.4]
  assign _T_627 = _T_625 - 1'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@256455.4]
  assign a_first = ~_T_625; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@256456.4]
  assign _T_645 = _T_643 - 1'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@256477.4]
  assign d_first = ~_T_643; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@256478.4]
  assign _GEN_57 = {io_in_d_bits_source, 2'h0}; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@256497.4]
  assign _T_653 = {{1'd0}, _GEN_57}; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@256497.4]
  assign _T_654 = inflight_opcodes >> _T_653; // @[Monitor.scala 629:44:chipyard.TestHarness.RocketConfig.fir@256498.4]
  assign _T_658 = 16'h10 - 16'h1; // @[Monitor.scala 606:57:chipyard.TestHarness.RocketConfig.fir@256502.4]
  assign _GEN_58 = {{304'd0}, _T_658}; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@256503.4]
  assign _T_659 = _T_654 & _GEN_58; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@256503.4]
  assign _T_660 = {{1'd0}, _T_659[319:1]}; // @[Monitor.scala 629:152:chipyard.TestHarness.RocketConfig.fir@256504.4]
  assign _T_662 = inflight_sizes >> _T_653; // @[Monitor.scala 633:40:chipyard.TestHarness.RocketConfig.fir@256509.4]
  assign _T_667 = _T_662 & _GEN_58; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@256514.4]
  assign _T_668 = {{1'd0}, _T_667[319:1]}; // @[Monitor.scala 633:144:chipyard.TestHarness.RocketConfig.fir@256515.4]
  assign _T_672 = _T_514 & a_first; // @[Monitor.scala 643:27:chipyard.TestHarness.RocketConfig.fir@256540.4]
  assign _T_674 = 128'h1 << io_in_a_bits_source; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@256543.6]
  assign _T_675 = {io_in_a_bits_opcode, 1'h0}; // @[Monitor.scala 645:53:chipyard.TestHarness.RocketConfig.fir@256545.6]
  assign _T_676 = _T_675 | 4'h1; // @[Monitor.scala 645:61:chipyard.TestHarness.RocketConfig.fir@256546.6]
  assign _T_677 = {io_in_a_bits_size, 1'h0}; // @[Monitor.scala 646:49:chipyard.TestHarness.RocketConfig.fir@256548.6]
  assign _T_678 = _T_677 | 3'h1; // @[Monitor.scala 646:57:chipyard.TestHarness.RocketConfig.fir@256549.6]
  assign _GEN_63 = {io_in_a_bits_source, 2'h0}; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@256551.6]
  assign _T_679 = {{1'd0}, _GEN_63}; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@256551.6]
  assign a_opcodes_set_interm = _T_672 ? _T_676 : 4'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@256542.4]
  assign _GEN_64 = {{1023'd0}, a_opcodes_set_interm}; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@256552.6]
  assign _T_680 = _GEN_64 << _T_679; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@256552.6]
  assign a_sizes_set_interm = _T_672 ? _T_678 : 3'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@256542.4]
  assign _GEN_66 = {{1023'd0}, a_sizes_set_interm}; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@256555.6]
  assign _T_682 = _GEN_66 << _T_679; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@256555.6]
  assign _T_683 = inflight >> io_in_a_bits_source; // @[Monitor.scala 649:26:chipyard.TestHarness.RocketConfig.fir@256557.6]
  assign _T_685 = ~_T_683[0]; // @[Monitor.scala 649:17:chipyard.TestHarness.RocketConfig.fir@256559.6]
  assign _T_687 = _T_685 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@256561.6]
  assign _T_688 = ~_T_687; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@256562.6]
  assign _GEN_15 = _T_672 ? _T_674 : 128'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@256542.4]
  assign _GEN_18 = _T_672 ? _T_680 : 1027'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@256542.4]
  assign _GEN_19 = _T_672 ? _T_682 : 1026'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@256542.4]
  assign _T_691 = _T_563 & d_first; // @[Monitor.scala 660:27:chipyard.TestHarness.RocketConfig.fir@256576.4]
  assign _T_693 = ~_T_370; // @[Monitor.scala 660:75:chipyard.TestHarness.RocketConfig.fir@256578.4]
  assign _T_694 = _T_691 & _T_693; // @[Monitor.scala 660:72:chipyard.TestHarness.RocketConfig.fir@256579.4]
  assign _T_695 = 128'h1 << io_in_d_bits_source; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@256581.6]
  assign _GEN_68 = {{1023'd0}, _T_658}; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@256588.6]
  assign _T_701 = _GEN_68 << _T_653; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@256588.6]
  assign _GEN_20 = _T_694 ? _T_695 : 128'h0; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@256580.4]
  assign _GEN_21 = _T_694 ? _T_701 : 1039'h0; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@256580.4]
  assign _T_708 = io_in_d_valid & d_first; // @[Monitor.scala 665:26:chipyard.TestHarness.RocketConfig.fir@256598.4]
  assign _T_711 = _T_708 & _T_693; // @[Monitor.scala 665:71:chipyard.TestHarness.RocketConfig.fir@256601.4]
  assign _T_712 = inflight >> io_in_d_bits_source; // @[Monitor.scala 666:25:chipyard.TestHarness.RocketConfig.fir@256603.6]
  assign _T_714 = io_in_a_bits_source == io_in_d_bits_source; // @[Monitor.scala 666:93:chipyard.TestHarness.RocketConfig.fir@256605.6]
  assign _T_715 = io_in_a_valid & _T_714; // @[Monitor.scala 666:68:chipyard.TestHarness.RocketConfig.fir@256606.6]
  assign _T_716 = io_in_a_bits_size == io_in_d_bits_size; // @[Monitor.scala 666:142:chipyard.TestHarness.RocketConfig.fir@256607.6]
  assign _T_717 = _T_715 & _T_716; // @[Monitor.scala 666:119:chipyard.TestHarness.RocketConfig.fir@256608.6]
  assign _T_718 = _T_717 & a_first; // @[Monitor.scala 666:166:chipyard.TestHarness.RocketConfig.fir@256609.6]
  assign _T_719 = _T_712[0] | _T_718; // @[Monitor.scala 666:49:chipyard.TestHarness.RocketConfig.fir@256610.6]
  assign _T_721 = _T_719 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@256612.6]
  assign _T_722 = ~_T_721; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@256613.6]
  assign a_opcode_lookup = _T_660[3:0]; // @[:chipyard.TestHarness.RocketConfig.fir@256495.4 :chipyard.TestHarness.RocketConfig.fir@256496.4 Monitor.scala 629:21:chipyard.TestHarness.RocketConfig.fir@256505.4]
  assign _GEN_25 = 3'h2 == a_opcode_lookup[2:0] ? 3'h1 : 3'h0; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@256619.6]
  assign _GEN_26 = 3'h3 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_25; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@256619.6]
  assign _GEN_27 = 3'h4 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_26; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@256619.6]
  assign _GEN_28 = 3'h5 == a_opcode_lookup[2:0] ? 3'h2 : _GEN_27; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@256619.6]
  assign _GEN_29 = 3'h6 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_28; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@256619.6]
  assign _GEN_30 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_29; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@256619.6]
  assign _T_724 = io_in_d_bits_opcode == _GEN_30; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@256619.6]
  assign _GEN_37 = 3'h6 == a_opcode_lookup[2:0] ? 3'h5 : _GEN_28; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@256621.6]
  assign _GEN_38 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_37; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@256621.6]
  assign _T_726 = io_in_d_bits_opcode == _GEN_38; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@256621.6]
  assign _T_727 = _T_724 | _T_726; // @[Monitor.scala 667:71:chipyard.TestHarness.RocketConfig.fir@256622.6]
  assign _GEN_41 = 3'h2 == io_in_a_bits_opcode ? 3'h1 : 3'h0; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@256623.6]
  assign _GEN_42 = 3'h3 == io_in_a_bits_opcode ? 3'h1 : _GEN_41; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@256623.6]
  assign _GEN_43 = 3'h4 == io_in_a_bits_opcode ? 3'h1 : _GEN_42; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@256623.6]
  assign _GEN_44 = 3'h5 == io_in_a_bits_opcode ? 3'h2 : _GEN_43; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@256623.6]
  assign _GEN_45 = 3'h6 == io_in_a_bits_opcode ? 3'h4 : _GEN_44; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@256623.6]
  assign _GEN_46 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_45; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@256623.6]
  assign _T_728 = io_in_d_bits_opcode == _GEN_46; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@256623.6]
  assign _GEN_53 = 3'h6 == io_in_a_bits_opcode ? 3'h5 : _GEN_44; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@256624.6]
  assign _GEN_54 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_53; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@256624.6]
  assign _T_729 = io_in_d_bits_opcode == _GEN_54; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@256624.6]
  assign _T_730 = _T_728 | _T_729; // @[Monitor.scala 668:99:chipyard.TestHarness.RocketConfig.fir@256625.6]
  assign _T_731 = io_in_a_valid & _T_730; // @[Monitor.scala 668:34:chipyard.TestHarness.RocketConfig.fir@256626.6]
  assign _T_732 = _T_727 | _T_731; // @[Monitor.scala 668:15:chipyard.TestHarness.RocketConfig.fir@256627.6]
  assign _T_734 = _T_732 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@256629.6]
  assign _T_735 = ~_T_734; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@256630.6]
  assign a_size_lookup = _T_668[3:0]; // @[:chipyard.TestHarness.RocketConfig.fir@256506.4 :chipyard.TestHarness.RocketConfig.fir@256507.4 Monitor.scala 633:19:chipyard.TestHarness.RocketConfig.fir@256516.4]
  assign _GEN_71 = {{2'd0}, io_in_d_bits_size}; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@256635.6]
  assign _T_736 = _GEN_71 == a_size_lookup; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@256635.6]
  assign _T_738 = io_in_a_valid & _T_716; // @[Monitor.scala 670:72:chipyard.TestHarness.RocketConfig.fir@256637.6]
  assign _T_739 = _T_736 | _T_738; // @[Monitor.scala 670:53:chipyard.TestHarness.RocketConfig.fir@256638.6]
  assign _T_741 = _T_739 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@256640.6]
  assign _T_742 = ~_T_741; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@256641.6]
  assign _T_744 = _T_708 & a_first; // @[Monitor.scala 672:36:chipyard.TestHarness.RocketConfig.fir@256648.4]
  assign _T_745 = _T_744 & io_in_a_valid; // @[Monitor.scala 672:47:chipyard.TestHarness.RocketConfig.fir@256649.4]
  assign _T_747 = _T_745 & _T_714; // @[Monitor.scala 672:65:chipyard.TestHarness.RocketConfig.fir@256651.4]
  assign _T_749 = _T_747 & _T_693; // @[Monitor.scala 672:116:chipyard.TestHarness.RocketConfig.fir@256653.4]
  assign _T_750 = ~io_in_d_ready; // @[Monitor.scala 673:15:chipyard.TestHarness.RocketConfig.fir@256655.6]
  assign _T_751 = _T_750 | io_in_a_ready; // @[Monitor.scala 673:32:chipyard.TestHarness.RocketConfig.fir@256656.6]
  assign _T_753 = _T_751 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@256658.6]
  assign _T_754 = ~_T_753; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@256659.6]
  assign a_set = _GEN_15[79:0]; // @[:chipyard.TestHarness.RocketConfig.fir@256489.4 :chipyard.TestHarness.RocketConfig.fir@256490.4 Monitor.scala 644:13:chipyard.TestHarness.RocketConfig.fir@256544.6]
  assign _T_755 = inflight | a_set; // @[Monitor.scala 680:27:chipyard.TestHarness.RocketConfig.fir@256665.4]
  assign d_clr = _GEN_20[79:0]; // @[:chipyard.TestHarness.RocketConfig.fir@256568.4 :chipyard.TestHarness.RocketConfig.fir@256569.4 Monitor.scala 661:13:chipyard.TestHarness.RocketConfig.fir@256582.6]
  assign _T_756 = ~d_clr; // @[Monitor.scala 680:38:chipyard.TestHarness.RocketConfig.fir@256666.4]
  assign _T_757 = _T_755 & _T_756; // @[Monitor.scala 680:36:chipyard.TestHarness.RocketConfig.fir@256667.4]
  assign a_opcodes_set = _GEN_18[319:0]; // @[:chipyard.TestHarness.RocketConfig.fir@256491.4 :chipyard.TestHarness.RocketConfig.fir@256492.4 Monitor.scala 647:21:chipyard.TestHarness.RocketConfig.fir@256553.6]
  assign _T_758 = inflight_opcodes | a_opcodes_set; // @[Monitor.scala 681:43:chipyard.TestHarness.RocketConfig.fir@256669.4]
  assign d_opcodes_clr = _GEN_21[319:0]; // @[:chipyard.TestHarness.RocketConfig.fir@256570.4 :chipyard.TestHarness.RocketConfig.fir@256571.4 Monitor.scala 662:21:chipyard.TestHarness.RocketConfig.fir@256589.6]
  assign _T_759 = ~d_opcodes_clr; // @[Monitor.scala 681:62:chipyard.TestHarness.RocketConfig.fir@256670.4]
  assign _T_760 = _T_758 & _T_759; // @[Monitor.scala 681:60:chipyard.TestHarness.RocketConfig.fir@256671.4]
  assign a_sizes_set = _GEN_19[319:0]; // @[:chipyard.TestHarness.RocketConfig.fir@256493.4 :chipyard.TestHarness.RocketConfig.fir@256494.4 Monitor.scala 648:19:chipyard.TestHarness.RocketConfig.fir@256556.6]
  assign _T_761 = inflight_sizes | a_sizes_set; // @[Monitor.scala 682:39:chipyard.TestHarness.RocketConfig.fir@256673.4]
  assign _T_763 = _T_761 & _T_759; // @[Monitor.scala 682:54:chipyard.TestHarness.RocketConfig.fir@256675.4]
  assign _T_765 = |inflight; // @[Monitor.scala 687:26:chipyard.TestHarness.RocketConfig.fir@256680.4]
  assign _T_766 = ~_T_765; // @[Monitor.scala 687:16:chipyard.TestHarness.RocketConfig.fir@256681.4]
  assign _T_767 = plusarg_reader_out == 32'h0; // @[Monitor.scala 687:39:chipyard.TestHarness.RocketConfig.fir@256682.4]
  assign _T_768 = _T_766 | _T_767; // @[Monitor.scala 687:30:chipyard.TestHarness.RocketConfig.fir@256683.4]
  assign _T_769 = _T_764 < plusarg_reader_out; // @[Monitor.scala 687:59:chipyard.TestHarness.RocketConfig.fir@256684.4]
  assign _T_770 = _T_768 | _T_769; // @[Monitor.scala 687:47:chipyard.TestHarness.RocketConfig.fir@256685.4]
  assign _T_772 = _T_770 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@256687.4]
  assign _T_773 = ~_T_772; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@256688.4]
  assign _T_775 = _T_764 + 32'h1; // @[Monitor.scala 689:26:chipyard.TestHarness.RocketConfig.fir@256694.4]
  assign _T_778 = _T_514 | _T_563; // @[Monitor.scala 690:27:chipyard.TestHarness.RocketConfig.fir@256698.4]
  assign _GEN_72 = io_in_a_valid & _T_101; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255499.10]
  assign _GEN_88 = io_in_a_valid & _T_139; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255571.10]
  assign _GEN_106 = io_in_a_valid & _T_181; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255654.10]
  assign _GEN_118 = io_in_a_valid & _T_214; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255713.10]
  assign _GEN_128 = io_in_a_valid & _T_243; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255764.10]
  assign _GEN_138 = io_in_a_valid & _T_274; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255814.10]
  assign _GEN_148 = io_in_a_valid & _T_300; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255862.10]
  assign _GEN_158 = io_in_a_valid & _T_326; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255910.10]
  assign _GEN_170 = io_in_d_valid & _T_370; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@255980.10]
  assign _GEN_174 = io_in_d_valid & _T_390; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@256022.10]
  assign _GEN_180 = io_in_d_valid & _T_418; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@256080.10]
  assign _GEN_186 = io_in_d_valid & _T_447; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@256139.10]
  assign _GEN_188 = io_in_d_valid & _T_464; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@256174.10]
  assign _GEN_190 = io_in_d_valid & _T_482; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@256210.10]
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
  _T_538 = _RAND_5[30:0];
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock type unsupported by manager (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255499.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255500.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock from a client which does not support Probe (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255506.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255507.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock carries invalid source ID (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255513.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255514.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock smaller than a beat (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255521.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255522.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock address not aligned to size (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255528.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255529.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock carries invalid grow param (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255536.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255537.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock contains invalid mask (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255545.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255546.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock is corrupt (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255553.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255554.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm type unsupported by manager (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255571.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255572.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm from a client which does not support Probe (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255578.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255579.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm carries invalid source ID (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255585.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255586.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm smaller than a beat (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255593.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255594.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm address not aligned to size (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255600.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255601.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm carries invalid grow param (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255608.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255609.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm requests NtoB (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255616.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255617.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm contains invalid mask (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255625.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255626.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm is corrupt (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255633.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255634.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Get type unsupported by manager (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255654.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255655.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get carries invalid source ID (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255661.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255662.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get address not aligned to size (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255668.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255669.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get carries invalid param (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255676.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255677.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get contains invalid mask (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255684.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255685.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get is corrupt (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255692.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255693.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutFull type unsupported by manager (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255713.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255714.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull carries invalid source ID (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255720.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255721.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull address not aligned to size (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255727.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255728.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull carries invalid param (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255735.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255736.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull contains invalid mask (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255743.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255744.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutPartial type unsupported by manager (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255764.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255765.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial carries invalid source ID (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255771.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255772.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial address not aligned to size (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255778.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255779.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial carries invalid param (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255786.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255787.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial contains invalid mask (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255796.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255797.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Arithmetic type unsupported by manager (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255814.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255815.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic carries invalid source ID (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255821.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255822.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic address not aligned to size (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255828.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255829.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic carries invalid opcode param (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255836.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255837.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic contains invalid mask (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255844.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255845.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Logical type unsupported by manager (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255862.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255863.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical carries invalid source ID (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255869.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255870.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical address not aligned to size (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255876.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255877.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical carries invalid opcode param (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255884.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255885.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical contains invalid mask (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255892.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255893.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Hint type unsupported by manager (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255910.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255911.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint carries invalid source ID (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255917.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255918.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint address not aligned to size (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255924.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255925.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint carries invalid opcode param (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255932.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255933.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint contains invalid mask (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255940.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255941.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint is corrupt (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255948.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@255949.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel has invalid opcode (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@255959.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@255960.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck carries invalid source ID (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@255980.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@255981.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck smaller than a beat (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@255988.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@255989.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid source ID (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@256022.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@256023.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid sink ID (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@256029.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@256030.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant smaller than a beat (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@256037.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@256038.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid source ID (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@256080.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@256081.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid sink ID (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@256087.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@256088.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData smaller than a beat (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@256095.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@256096.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck carries invalid source ID (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@256139.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@256140.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData carries invalid source ID (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@256174.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@256175.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck carries invalid source ID (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@256210.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@256211.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel opcode changed within multibeat operation (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@256306.8]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@256307.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel param changed within multibeat operation (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@256314.8]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@256315.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel size changed within multibeat operation (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@256322.8]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@256323.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel source changed within multibeat operation (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@256330.8]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@256331.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel address changed with multibeat operation (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@256338.8]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@256339.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel opcode changed within multibeat operation (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@256387.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@256388.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel size changed within multibeat operation (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@256403.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@256404.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel source changed within multibeat operation (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@256411.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@256412.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel re-used a source ID (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@256564.8]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@256565.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel acknowledged for nothing inflight (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@256615.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@256616.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper opcode response (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@256632.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@256633.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper response size (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@256643.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@256644.8]
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
          $fwrite(32'h80000002,"Assertion failed: ready check\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@256661.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@256662.8]
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
          $fwrite(32'h80000002,"Assertion failed: TileLink timeout expired (connected at CrossingHelper.scala:17:44)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@256690.6]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@256691.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
