module TLMonitor_60( // @[:chipyard.TestHarness.RocketConfig.fir@252834.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@252835.4]
  input         reset, // @[:chipyard.TestHarness.RocketConfig.fir@252836.4]
  input         io_in_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@252837.4]
  input         io_in_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@252837.4]
  input  [2:0]  io_in_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@252837.4]
  input  [2:0]  io_in_a_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@252837.4]
  input  [1:0]  io_in_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@252837.4]
  input  [6:0]  io_in_a_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@252837.4]
  input  [16:0] io_in_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@252837.4]
  input  [7:0]  io_in_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@252837.4]
  input         io_in_a_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@252837.4]
  input         io_in_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@252837.4]
  input         io_in_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@252837.4]
  input  [1:0]  io_in_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@252837.4]
  input  [6:0]  io_in_d_bits_source // @[:chipyard.TestHarness.RocketConfig.fir@252837.4]
);
  wire [31:0] plusarg_reader_out; // @[PlusArg.scala 44:11:chipyard.TestHarness.RocketConfig.fir@254138.4]
  wire  _T_10; // @[Parameters.scala 58:20:chipyard.TestHarness.RocketConfig.fir@252854.6]
  wire [5:0] _T_14; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@252860.6]
  wire [2:0] _T_16; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@252862.6]
  wire [16:0] _GEN_56; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@252863.6]
  wire [16:0] _T_17; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@252863.6]
  wire  _T_18; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@252864.6]
  wire [2:0] _T_19; // @[Misc.scala 201:34:chipyard.TestHarness.RocketConfig.fir@252865.6]
  wire [3:0] _T_21; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@252867.6]
  wire [2:0] _T_23; // @[Misc.scala 201:81:chipyard.TestHarness.RocketConfig.fir@252869.6]
  wire  _T_24; // @[Misc.scala 205:21:chipyard.TestHarness.RocketConfig.fir@252870.6]
  wire  _T_27; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@252873.6]
  wire  _T_29; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@252875.6]
  wire  _T_30; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@252876.6]
  wire  _T_32; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@252878.6]
  wire  _T_33; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@252879.6]
  wire  _T_36; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@252882.6]
  wire  _T_37; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@252883.6]
  wire  _T_38; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@252884.6]
  wire  _T_39; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@252885.6]
  wire  _T_40; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@252886.6]
  wire  _T_41; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@252887.6]
  wire  _T_42; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@252888.6]
  wire  _T_43; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@252889.6]
  wire  _T_44; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@252890.6]
  wire  _T_45; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@252891.6]
  wire  _T_46; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@252892.6]
  wire  _T_47; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@252893.6]
  wire  _T_48; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@252894.6]
  wire  _T_51; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@252897.6]
  wire  _T_52; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@252898.6]
  wire  _T_53; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@252899.6]
  wire  _T_54; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@252900.6]
  wire  _T_55; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@252901.6]
  wire  _T_56; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@252902.6]
  wire  _T_57; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@252903.6]
  wire  _T_58; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@252904.6]
  wire  _T_59; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@252905.6]
  wire  _T_60; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@252906.6]
  wire  _T_61; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@252907.6]
  wire  _T_62; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@252908.6]
  wire  _T_63; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@252909.6]
  wire  _T_64; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@252910.6]
  wire  _T_65; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@252911.6]
  wire  _T_66; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@252912.6]
  wire  _T_67; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@252913.6]
  wire  _T_68; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@252914.6]
  wire  _T_69; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@252915.6]
  wire  _T_70; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@252916.6]
  wire  _T_71; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@252917.6]
  wire  _T_72; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@252918.6]
  wire  _T_73; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@252919.6]
  wire  _T_74; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@252920.6]
  wire  _T_75; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@252921.6]
  wire [7:0] _T_82; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@252928.6]
  wire  _T_101; // @[Monitor.scala 79:25:chipyard.TestHarness.RocketConfig.fir@252951.6]
  wire [16:0] _T_103; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@252954.8]
  wire [17:0] _T_104; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@252955.8]
  wire [17:0] _T_106; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@252957.8]
  wire  _T_107; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@252958.8]
  wire  _T_112; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@252963.8]
  wire  _T_117; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@252976.8]
  wire  _T_118; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@252977.8]
  wire  _T_121; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@252984.8]
  wire  _T_122; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@252985.8]
  wire  _T_124; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@252991.8]
  wire  _T_125; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@252992.8]
  wire  _T_126; // @[Bundles.scala 110:27:chipyard.TestHarness.RocketConfig.fir@252997.8]
  wire  _T_128; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@252999.8]
  wire  _T_129; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253000.8]
  wire [7:0] _T_130; // @[Monitor.scala 86:18:chipyard.TestHarness.RocketConfig.fir@253005.8]
  wire  _T_131; // @[Monitor.scala 86:31:chipyard.TestHarness.RocketConfig.fir@253006.8]
  wire  _T_133; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253008.8]
  wire  _T_134; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253009.8]
  wire  _T_135; // @[Monitor.scala 87:18:chipyard.TestHarness.RocketConfig.fir@253014.8]
  wire  _T_137; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253016.8]
  wire  _T_138; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253017.8]
  wire  _T_139; // @[Monitor.scala 90:25:chipyard.TestHarness.RocketConfig.fir@253023.6]
  wire  _T_168; // @[Monitor.scala 97:31:chipyard.TestHarness.RocketConfig.fir@253077.8]
  wire  _T_170; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253079.8]
  wire  _T_171; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253080.8]
  wire  _T_181; // @[Monitor.scala 102:25:chipyard.TestHarness.RocketConfig.fir@253103.6]
  wire  _T_194; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253117.8]
  wire  _T_195; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253118.8]
  wire  _T_202; // @[Monitor.scala 106:31:chipyard.TestHarness.RocketConfig.fir@253137.8]
  wire  _T_204; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253139.8]
  wire  _T_205; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253140.8]
  wire  _T_206; // @[Monitor.scala 107:30:chipyard.TestHarness.RocketConfig.fir@253145.8]
  wire  _T_208; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253147.8]
  wire  _T_209; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253148.8]
  wire  _T_214; // @[Monitor.scala 111:25:chipyard.TestHarness.RocketConfig.fir@253162.6]
  wire  _T_240; // @[Monitor.scala 119:25:chipyard.TestHarness.RocketConfig.fir@253210.6]
  wire [7:0] _T_262; // @[Monitor.scala 124:33:chipyard.TestHarness.RocketConfig.fir@253249.8]
  wire [7:0] _T_263; // @[Monitor.scala 124:31:chipyard.TestHarness.RocketConfig.fir@253250.8]
  wire  _T_264; // @[Monitor.scala 124:40:chipyard.TestHarness.RocketConfig.fir@253251.8]
  wire  _T_266; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253253.8]
  wire  _T_267; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253254.8]
  wire  _T_268; // @[Monitor.scala 127:25:chipyard.TestHarness.RocketConfig.fir@253260.6]
  wire  _T_286; // @[Bundles.scala 140:33:chipyard.TestHarness.RocketConfig.fir@253291.8]
  wire  _T_288; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253293.8]
  wire  _T_289; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253294.8]
  wire  _T_294; // @[Monitor.scala 135:25:chipyard.TestHarness.RocketConfig.fir@253308.6]
  wire  _T_312; // @[Bundles.scala 147:30:chipyard.TestHarness.RocketConfig.fir@253339.8]
  wire  _T_314; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253341.8]
  wire  _T_315; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253342.8]
  wire  _T_320; // @[Monitor.scala 143:25:chipyard.TestHarness.RocketConfig.fir@253356.6]
  wire  _T_338; // @[Bundles.scala 160:28:chipyard.TestHarness.RocketConfig.fir@253387.8]
  wire  _T_340; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253389.8]
  wire  _T_341; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253390.8]
  wire  _T_360; // @[Parameters.scala 58:20:chipyard.TestHarness.RocketConfig.fir@253428.6]
  wire  _T_366; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@253437.8]
  wire  _T_367; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@253438.8]
  wire  _T_508; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@253730.4]
  reg  _T_517; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@253739.4]
  reg [31:0] _RAND_0;
  wire  _T_519; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@253741.4]
  wire  _T_520; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@253742.4]
  reg [2:0] _T_528; // @[Monitor.scala 381:22:chipyard.TestHarness.RocketConfig.fir@253753.4]
  reg [31:0] _RAND_1;
  reg [2:0] _T_529; // @[Monitor.scala 382:22:chipyard.TestHarness.RocketConfig.fir@253754.4]
  reg [31:0] _RAND_2;
  reg [1:0] _T_530; // @[Monitor.scala 383:22:chipyard.TestHarness.RocketConfig.fir@253755.4]
  reg [31:0] _RAND_3;
  reg [6:0] _T_531; // @[Monitor.scala 384:22:chipyard.TestHarness.RocketConfig.fir@253756.4]
  reg [31:0] _RAND_4;
  reg [16:0] _T_532; // @[Monitor.scala 385:22:chipyard.TestHarness.RocketConfig.fir@253757.4]
  reg [31:0] _RAND_5;
  wire  _T_533; // @[Monitor.scala 386:22:chipyard.TestHarness.RocketConfig.fir@253758.4]
  wire  _T_534; // @[Monitor.scala 386:19:chipyard.TestHarness.RocketConfig.fir@253759.4]
  wire  _T_535; // @[Monitor.scala 387:32:chipyard.TestHarness.RocketConfig.fir@253761.6]
  wire  _T_537; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253763.6]
  wire  _T_538; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253764.6]
  wire  _T_539; // @[Monitor.scala 388:32:chipyard.TestHarness.RocketConfig.fir@253769.6]
  wire  _T_541; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253771.6]
  wire  _T_542; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253772.6]
  wire  _T_543; // @[Monitor.scala 389:32:chipyard.TestHarness.RocketConfig.fir@253777.6]
  wire  _T_545; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253779.6]
  wire  _T_546; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253780.6]
  wire  _T_547; // @[Monitor.scala 390:32:chipyard.TestHarness.RocketConfig.fir@253785.6]
  wire  _T_549; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253787.6]
  wire  _T_550; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253788.6]
  wire  _T_551; // @[Monitor.scala 391:32:chipyard.TestHarness.RocketConfig.fir@253793.6]
  wire  _T_553; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253795.6]
  wire  _T_554; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253796.6]
  wire  _T_556; // @[Monitor.scala 393:20:chipyard.TestHarness.RocketConfig.fir@253803.4]
  wire  _T_557; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@253811.4]
  reg  _T_565; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@253819.4]
  reg [31:0] _RAND_6;
  wire  _T_567; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@253821.4]
  wire  _T_568; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@253822.4]
  reg [1:0] _T_578; // @[Monitor.scala 534:22:chipyard.TestHarness.RocketConfig.fir@253835.4]
  reg [31:0] _RAND_7;
  reg [6:0] _T_579; // @[Monitor.scala 535:22:chipyard.TestHarness.RocketConfig.fir@253836.4]
  reg [31:0] _RAND_8;
  wire  _T_582; // @[Monitor.scala 538:22:chipyard.TestHarness.RocketConfig.fir@253839.4]
  wire  _T_583; // @[Monitor.scala 538:19:chipyard.TestHarness.RocketConfig.fir@253840.4]
  wire  _T_592; // @[Monitor.scala 541:29:chipyard.TestHarness.RocketConfig.fir@253858.6]
  wire  _T_594; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@253860.6]
  wire  _T_595; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@253861.6]
  wire  _T_596; // @[Monitor.scala 542:29:chipyard.TestHarness.RocketConfig.fir@253866.6]
  wire  _T_598; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@253868.6]
  wire  _T_599; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@253869.6]
  wire  _T_609; // @[Monitor.scala 546:20:chipyard.TestHarness.RocketConfig.fir@253892.4]
  reg [79:0] inflight; // @[Monitor.scala 608:27:chipyard.TestHarness.RocketConfig.fir@253901.4]
  reg [95:0] _RAND_9;
  reg [319:0] inflight_opcodes; // @[Monitor.scala 610:35:chipyard.TestHarness.RocketConfig.fir@253902.4]
  reg [319:0] _RAND_10;
  reg [319:0] inflight_sizes; // @[Monitor.scala 612:33:chipyard.TestHarness.RocketConfig.fir@253903.4]
  reg [319:0] _RAND_11;
  reg  _T_619; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@253913.4]
  reg [31:0] _RAND_12;
  wire  _T_621; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@253915.4]
  wire  a_first; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@253916.4]
  reg  _T_637; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@253935.4]
  reg [31:0] _RAND_13;
  wire  _T_639; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@253937.4]
  wire  d_first; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@253938.4]
  wire [8:0] _GEN_57; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@253957.4]
  wire [9:0] _T_647; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@253957.4]
  wire [319:0] _T_648; // @[Monitor.scala 629:44:chipyard.TestHarness.RocketConfig.fir@253958.4]
  wire [15:0] _T_652; // @[Monitor.scala 606:57:chipyard.TestHarness.RocketConfig.fir@253962.4]
  wire [319:0] _GEN_58; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@253963.4]
  wire [319:0] _T_653; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@253963.4]
  wire [319:0] _T_654; // @[Monitor.scala 629:152:chipyard.TestHarness.RocketConfig.fir@253964.4]
  wire [319:0] _T_656; // @[Monitor.scala 633:40:chipyard.TestHarness.RocketConfig.fir@253969.4]
  wire [319:0] _T_661; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@253974.4]
  wire [319:0] _T_662; // @[Monitor.scala 633:144:chipyard.TestHarness.RocketConfig.fir@253975.4]
  wire  _T_666; // @[Monitor.scala 643:27:chipyard.TestHarness.RocketConfig.fir@254000.4]
  wire [127:0] _T_668; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@254003.6]
  wire [3:0] _T_669; // @[Monitor.scala 645:53:chipyard.TestHarness.RocketConfig.fir@254005.6]
  wire [3:0] _T_670; // @[Monitor.scala 645:61:chipyard.TestHarness.RocketConfig.fir@254006.6]
  wire [2:0] _T_671; // @[Monitor.scala 646:49:chipyard.TestHarness.RocketConfig.fir@254008.6]
  wire [2:0] _T_672; // @[Monitor.scala 646:57:chipyard.TestHarness.RocketConfig.fir@254009.6]
  wire [8:0] _GEN_63; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@254011.6]
  wire [9:0] _T_673; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@254011.6]
  wire [3:0] a_opcodes_set_interm; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@254002.4]
  wire [1026:0] _GEN_64; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@254012.6]
  wire [1026:0] _T_674; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@254012.6]
  wire [2:0] a_sizes_set_interm; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@254002.4]
  wire [1025:0] _GEN_66; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@254015.6]
  wire [1025:0] _T_676; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@254015.6]
  wire [79:0] _T_677; // @[Monitor.scala 649:26:chipyard.TestHarness.RocketConfig.fir@254017.6]
  wire  _T_679; // @[Monitor.scala 649:17:chipyard.TestHarness.RocketConfig.fir@254019.6]
  wire  _T_681; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@254021.6]
  wire  _T_682; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@254022.6]
  wire [127:0] _GEN_15; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@254002.4]
  wire [1026:0] _GEN_18; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@254002.4]
  wire [1025:0] _GEN_19; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@254002.4]
  wire  _T_685; // @[Monitor.scala 660:27:chipyard.TestHarness.RocketConfig.fir@254036.4]
  wire [127:0] _T_689; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@254041.6]
  wire [1038:0] _GEN_68; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@254048.6]
  wire [1038:0] _T_695; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@254048.6]
  wire [127:0] _GEN_20; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@254040.4]
  wire [1038:0] _GEN_21; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@254040.4]
  wire  _T_702; // @[Monitor.scala 665:26:chipyard.TestHarness.RocketConfig.fir@254058.4]
  wire [79:0] _T_706; // @[Monitor.scala 666:25:chipyard.TestHarness.RocketConfig.fir@254063.6]
  wire  _T_708; // @[Monitor.scala 666:93:chipyard.TestHarness.RocketConfig.fir@254065.6]
  wire  _T_709; // @[Monitor.scala 666:68:chipyard.TestHarness.RocketConfig.fir@254066.6]
  wire  _T_710; // @[Monitor.scala 666:142:chipyard.TestHarness.RocketConfig.fir@254067.6]
  wire  _T_711; // @[Monitor.scala 666:119:chipyard.TestHarness.RocketConfig.fir@254068.6]
  wire  _T_712; // @[Monitor.scala 666:166:chipyard.TestHarness.RocketConfig.fir@254069.6]
  wire  _T_713; // @[Monitor.scala 666:49:chipyard.TestHarness.RocketConfig.fir@254070.6]
  wire  _T_715; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@254072.6]
  wire  _T_716; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@254073.6]
  wire [3:0] a_opcode_lookup; // @[:chipyard.TestHarness.RocketConfig.fir@253955.4 :chipyard.TestHarness.RocketConfig.fir@253956.4 Monitor.scala 629:21:chipyard.TestHarness.RocketConfig.fir@253965.4]
  wire [2:0] _GEN_25; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@254079.6]
  wire [2:0] _GEN_26; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@254079.6]
  wire [2:0] _GEN_27; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@254079.6]
  wire [2:0] _GEN_28; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@254079.6]
  wire [2:0] _GEN_29; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@254079.6]
  wire [2:0] _GEN_30; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@254079.6]
  wire  _T_718; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@254079.6]
  wire [2:0] _GEN_37; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@254081.6]
  wire [2:0] _GEN_38; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@254081.6]
  wire  _T_720; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@254081.6]
  wire  _T_721; // @[Monitor.scala 667:71:chipyard.TestHarness.RocketConfig.fir@254082.6]
  wire [2:0] _GEN_41; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@254083.6]
  wire [2:0] _GEN_42; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@254083.6]
  wire [2:0] _GEN_43; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@254083.6]
  wire [2:0] _GEN_44; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@254083.6]
  wire [2:0] _GEN_45; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@254083.6]
  wire [2:0] _GEN_46; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@254083.6]
  wire  _T_722; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@254083.6]
  wire [2:0] _GEN_53; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@254084.6]
  wire [2:0] _GEN_54; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@254084.6]
  wire  _T_723; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@254084.6]
  wire  _T_724; // @[Monitor.scala 668:99:chipyard.TestHarness.RocketConfig.fir@254085.6]
  wire  _T_725; // @[Monitor.scala 668:34:chipyard.TestHarness.RocketConfig.fir@254086.6]
  wire  _T_726; // @[Monitor.scala 668:15:chipyard.TestHarness.RocketConfig.fir@254087.6]
  wire  _T_728; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@254089.6]
  wire  _T_729; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@254090.6]
  wire [3:0] a_size_lookup; // @[:chipyard.TestHarness.RocketConfig.fir@253966.4 :chipyard.TestHarness.RocketConfig.fir@253967.4 Monitor.scala 633:19:chipyard.TestHarness.RocketConfig.fir@253976.4]
  wire [3:0] _GEN_71; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@254095.6]
  wire  _T_730; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@254095.6]
  wire  _T_732; // @[Monitor.scala 670:72:chipyard.TestHarness.RocketConfig.fir@254097.6]
  wire  _T_733; // @[Monitor.scala 670:53:chipyard.TestHarness.RocketConfig.fir@254098.6]
  wire  _T_735; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@254100.6]
  wire  _T_736; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@254101.6]
  wire  _T_738; // @[Monitor.scala 672:36:chipyard.TestHarness.RocketConfig.fir@254108.4]
  wire  _T_739; // @[Monitor.scala 672:47:chipyard.TestHarness.RocketConfig.fir@254109.4]
  wire  _T_741; // @[Monitor.scala 672:65:chipyard.TestHarness.RocketConfig.fir@254111.4]
  wire  _T_744; // @[Monitor.scala 673:15:chipyard.TestHarness.RocketConfig.fir@254115.6]
  wire  _T_745; // @[Monitor.scala 673:32:chipyard.TestHarness.RocketConfig.fir@254116.6]
  wire  _T_747; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@254118.6]
  wire  _T_748; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@254119.6]
  wire [79:0] a_set; // @[:chipyard.TestHarness.RocketConfig.fir@253949.4 :chipyard.TestHarness.RocketConfig.fir@253950.4 Monitor.scala 644:13:chipyard.TestHarness.RocketConfig.fir@254004.6]
  wire [79:0] _T_749; // @[Monitor.scala 680:27:chipyard.TestHarness.RocketConfig.fir@254125.4]
  wire [79:0] d_clr; // @[:chipyard.TestHarness.RocketConfig.fir@254028.4 :chipyard.TestHarness.RocketConfig.fir@254029.4 Monitor.scala 661:13:chipyard.TestHarness.RocketConfig.fir@254042.6]
  wire [79:0] _T_750; // @[Monitor.scala 680:38:chipyard.TestHarness.RocketConfig.fir@254126.4]
  wire [79:0] _T_751; // @[Monitor.scala 680:36:chipyard.TestHarness.RocketConfig.fir@254127.4]
  wire [319:0] a_opcodes_set; // @[:chipyard.TestHarness.RocketConfig.fir@253951.4 :chipyard.TestHarness.RocketConfig.fir@253952.4 Monitor.scala 647:21:chipyard.TestHarness.RocketConfig.fir@254013.6]
  wire [319:0] _T_752; // @[Monitor.scala 681:43:chipyard.TestHarness.RocketConfig.fir@254129.4]
  wire [319:0] d_opcodes_clr; // @[:chipyard.TestHarness.RocketConfig.fir@254030.4 :chipyard.TestHarness.RocketConfig.fir@254031.4 Monitor.scala 662:21:chipyard.TestHarness.RocketConfig.fir@254049.6]
  wire [319:0] _T_753; // @[Monitor.scala 681:62:chipyard.TestHarness.RocketConfig.fir@254130.4]
  wire [319:0] _T_754; // @[Monitor.scala 681:60:chipyard.TestHarness.RocketConfig.fir@254131.4]
  wire [319:0] a_sizes_set; // @[:chipyard.TestHarness.RocketConfig.fir@253953.4 :chipyard.TestHarness.RocketConfig.fir@253954.4 Monitor.scala 648:19:chipyard.TestHarness.RocketConfig.fir@254016.6]
  wire [319:0] _T_755; // @[Monitor.scala 682:39:chipyard.TestHarness.RocketConfig.fir@254133.4]
  wire [319:0] _T_757; // @[Monitor.scala 682:54:chipyard.TestHarness.RocketConfig.fir@254135.4]
  reg [31:0] _T_758; // @[Monitor.scala 684:27:chipyard.TestHarness.RocketConfig.fir@254137.4]
  reg [31:0] _RAND_14;
  wire  _T_759; // @[Monitor.scala 687:26:chipyard.TestHarness.RocketConfig.fir@254140.4]
  wire  _T_760; // @[Monitor.scala 687:16:chipyard.TestHarness.RocketConfig.fir@254141.4]
  wire  _T_761; // @[Monitor.scala 687:39:chipyard.TestHarness.RocketConfig.fir@254142.4]
  wire  _T_762; // @[Monitor.scala 687:30:chipyard.TestHarness.RocketConfig.fir@254143.4]
  wire  _T_763; // @[Monitor.scala 687:59:chipyard.TestHarness.RocketConfig.fir@254144.4]
  wire  _T_764; // @[Monitor.scala 687:47:chipyard.TestHarness.RocketConfig.fir@254145.4]
  wire  _T_766; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@254147.4]
  wire  _T_767; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@254148.4]
  wire [31:0] _T_769; // @[Monitor.scala 689:26:chipyard.TestHarness.RocketConfig.fir@254154.4]
  wire  _T_772; // @[Monitor.scala 690:27:chipyard.TestHarness.RocketConfig.fir@254158.4]
  wire  _GEN_72; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@252965.10]
  wire  _GEN_88; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253037.10]
  wire  _GEN_106; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253120.10]
  wire  _GEN_118; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253176.10]
  wire  _GEN_128; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253224.10]
  wire  _GEN_138; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253274.10]
  wire  _GEN_148; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253322.10]
  wire  _GEN_158; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253370.10]
  plusarg_reader #(.FORMAT("tilelink_timeout=%d"), .DEFAULT(0), .WIDTH(32)) plusarg_reader ( // @[PlusArg.scala 44:11:chipyard.TestHarness.RocketConfig.fir@254138.4]
    .out(plusarg_reader_out)
  );
  assign _T_10 = io_in_a_bits_source <= 7'h4f; // @[Parameters.scala 58:20:chipyard.TestHarness.RocketConfig.fir@252854.6]
  assign _T_14 = 6'h7 << io_in_a_bits_size; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@252860.6]
  assign _T_16 = ~_T_14[2:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@252862.6]
  assign _GEN_56 = {{14'd0}, _T_16}; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@252863.6]
  assign _T_17 = io_in_a_bits_address & _GEN_56; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@252863.6]
  assign _T_18 = _T_17 == 17'h0; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@252864.6]
  assign _T_19 = {{1'd0}, io_in_a_bits_size}; // @[Misc.scala 201:34:chipyard.TestHarness.RocketConfig.fir@252865.6]
  assign _T_21 = 4'h1 << _T_19[1:0]; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@252867.6]
  assign _T_23 = _T_21[2:0] | 3'h1; // @[Misc.scala 201:81:chipyard.TestHarness.RocketConfig.fir@252869.6]
  assign _T_24 = io_in_a_bits_size >= 2'h3; // @[Misc.scala 205:21:chipyard.TestHarness.RocketConfig.fir@252870.6]
  assign _T_27 = ~io_in_a_bits_address[2]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@252873.6]
  assign _T_29 = _T_23[2] & _T_27; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@252875.6]
  assign _T_30 = _T_24 | _T_29; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@252876.6]
  assign _T_32 = _T_23[2] & io_in_a_bits_address[2]; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@252878.6]
  assign _T_33 = _T_24 | _T_32; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@252879.6]
  assign _T_36 = ~io_in_a_bits_address[1]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@252882.6]
  assign _T_37 = _T_27 & _T_36; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@252883.6]
  assign _T_38 = _T_23[1] & _T_37; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@252884.6]
  assign _T_39 = _T_30 | _T_38; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@252885.6]
  assign _T_40 = _T_27 & io_in_a_bits_address[1]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@252886.6]
  assign _T_41 = _T_23[1] & _T_40; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@252887.6]
  assign _T_42 = _T_30 | _T_41; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@252888.6]
  assign _T_43 = io_in_a_bits_address[2] & _T_36; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@252889.6]
  assign _T_44 = _T_23[1] & _T_43; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@252890.6]
  assign _T_45 = _T_33 | _T_44; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@252891.6]
  assign _T_46 = io_in_a_bits_address[2] & io_in_a_bits_address[1]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@252892.6]
  assign _T_47 = _T_23[1] & _T_46; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@252893.6]
  assign _T_48 = _T_33 | _T_47; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@252894.6]
  assign _T_51 = ~io_in_a_bits_address[0]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@252897.6]
  assign _T_52 = _T_37 & _T_51; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@252898.6]
  assign _T_53 = _T_23[0] & _T_52; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@252899.6]
  assign _T_54 = _T_39 | _T_53; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@252900.6]
  assign _T_55 = _T_37 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@252901.6]
  assign _T_56 = _T_23[0] & _T_55; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@252902.6]
  assign _T_57 = _T_39 | _T_56; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@252903.6]
  assign _T_58 = _T_40 & _T_51; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@252904.6]
  assign _T_59 = _T_23[0] & _T_58; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@252905.6]
  assign _T_60 = _T_42 | _T_59; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@252906.6]
  assign _T_61 = _T_40 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@252907.6]
  assign _T_62 = _T_23[0] & _T_61; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@252908.6]
  assign _T_63 = _T_42 | _T_62; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@252909.6]
  assign _T_64 = _T_43 & _T_51; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@252910.6]
  assign _T_65 = _T_23[0] & _T_64; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@252911.6]
  assign _T_66 = _T_45 | _T_65; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@252912.6]
  assign _T_67 = _T_43 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@252913.6]
  assign _T_68 = _T_23[0] & _T_67; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@252914.6]
  assign _T_69 = _T_45 | _T_68; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@252915.6]
  assign _T_70 = _T_46 & _T_51; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@252916.6]
  assign _T_71 = _T_23[0] & _T_70; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@252917.6]
  assign _T_72 = _T_48 | _T_71; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@252918.6]
  assign _T_73 = _T_46 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@252919.6]
  assign _T_74 = _T_23[0] & _T_73; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@252920.6]
  assign _T_75 = _T_48 | _T_74; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@252921.6]
  assign _T_82 = {_T_75,_T_72,_T_69,_T_66,_T_63,_T_60,_T_57,_T_54}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@252928.6]
  assign _T_101 = io_in_a_bits_opcode == 3'h6; // @[Monitor.scala 79:25:chipyard.TestHarness.RocketConfig.fir@252951.6]
  assign _T_103 = io_in_a_bits_address ^ 17'h10000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@252954.8]
  assign _T_104 = {1'b0,$signed(_T_103)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@252955.8]
  assign _T_106 = $signed(_T_104) & -18'sh10000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@252957.8]
  assign _T_107 = $signed(_T_106) == 18'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@252958.8]
  assign _T_112 = ~reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@252963.8]
  assign _T_117 = _T_10 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@252976.8]
  assign _T_118 = ~_T_117; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@252977.8]
  assign _T_121 = _T_24 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@252984.8]
  assign _T_122 = ~_T_121; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@252985.8]
  assign _T_124 = _T_18 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@252991.8]
  assign _T_125 = ~_T_124; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@252992.8]
  assign _T_126 = io_in_a_bits_param <= 3'h2; // @[Bundles.scala 110:27:chipyard.TestHarness.RocketConfig.fir@252997.8]
  assign _T_128 = _T_126 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@252999.8]
  assign _T_129 = ~_T_128; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253000.8]
  assign _T_130 = ~io_in_a_bits_mask; // @[Monitor.scala 86:18:chipyard.TestHarness.RocketConfig.fir@253005.8]
  assign _T_131 = _T_130 == 8'h0; // @[Monitor.scala 86:31:chipyard.TestHarness.RocketConfig.fir@253006.8]
  assign _T_133 = _T_131 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253008.8]
  assign _T_134 = ~_T_133; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253009.8]
  assign _T_135 = ~io_in_a_bits_corrupt; // @[Monitor.scala 87:18:chipyard.TestHarness.RocketConfig.fir@253014.8]
  assign _T_137 = _T_135 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253016.8]
  assign _T_138 = ~_T_137; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253017.8]
  assign _T_139 = io_in_a_bits_opcode == 3'h7; // @[Monitor.scala 90:25:chipyard.TestHarness.RocketConfig.fir@253023.6]
  assign _T_168 = io_in_a_bits_param != 3'h0; // @[Monitor.scala 97:31:chipyard.TestHarness.RocketConfig.fir@253077.8]
  assign _T_170 = _T_168 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253079.8]
  assign _T_171 = ~_T_170; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253080.8]
  assign _T_181 = io_in_a_bits_opcode == 3'h4; // @[Monitor.scala 102:25:chipyard.TestHarness.RocketConfig.fir@253103.6]
  assign _T_194 = _T_107 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253117.8]
  assign _T_195 = ~_T_194; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253118.8]
  assign _T_202 = io_in_a_bits_param == 3'h0; // @[Monitor.scala 106:31:chipyard.TestHarness.RocketConfig.fir@253137.8]
  assign _T_204 = _T_202 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253139.8]
  assign _T_205 = ~_T_204; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253140.8]
  assign _T_206 = io_in_a_bits_mask == _T_82; // @[Monitor.scala 107:30:chipyard.TestHarness.RocketConfig.fir@253145.8]
  assign _T_208 = _T_206 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253147.8]
  assign _T_209 = ~_T_208; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253148.8]
  assign _T_214 = io_in_a_bits_opcode == 3'h0; // @[Monitor.scala 111:25:chipyard.TestHarness.RocketConfig.fir@253162.6]
  assign _T_240 = io_in_a_bits_opcode == 3'h1; // @[Monitor.scala 119:25:chipyard.TestHarness.RocketConfig.fir@253210.6]
  assign _T_262 = ~_T_82; // @[Monitor.scala 124:33:chipyard.TestHarness.RocketConfig.fir@253249.8]
  assign _T_263 = io_in_a_bits_mask & _T_262; // @[Monitor.scala 124:31:chipyard.TestHarness.RocketConfig.fir@253250.8]
  assign _T_264 = _T_263 == 8'h0; // @[Monitor.scala 124:40:chipyard.TestHarness.RocketConfig.fir@253251.8]
  assign _T_266 = _T_264 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253253.8]
  assign _T_267 = ~_T_266; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253254.8]
  assign _T_268 = io_in_a_bits_opcode == 3'h2; // @[Monitor.scala 127:25:chipyard.TestHarness.RocketConfig.fir@253260.6]
  assign _T_286 = io_in_a_bits_param <= 3'h4; // @[Bundles.scala 140:33:chipyard.TestHarness.RocketConfig.fir@253291.8]
  assign _T_288 = _T_286 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253293.8]
  assign _T_289 = ~_T_288; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253294.8]
  assign _T_294 = io_in_a_bits_opcode == 3'h3; // @[Monitor.scala 135:25:chipyard.TestHarness.RocketConfig.fir@253308.6]
  assign _T_312 = io_in_a_bits_param <= 3'h3; // @[Bundles.scala 147:30:chipyard.TestHarness.RocketConfig.fir@253339.8]
  assign _T_314 = _T_312 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253341.8]
  assign _T_315 = ~_T_314; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253342.8]
  assign _T_320 = io_in_a_bits_opcode == 3'h5; // @[Monitor.scala 143:25:chipyard.TestHarness.RocketConfig.fir@253356.6]
  assign _T_338 = io_in_a_bits_param <= 3'h1; // @[Bundles.scala 160:28:chipyard.TestHarness.RocketConfig.fir@253387.8]
  assign _T_340 = _T_338 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253389.8]
  assign _T_341 = ~_T_340; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253390.8]
  assign _T_360 = io_in_d_bits_source <= 7'h4f; // @[Parameters.scala 58:20:chipyard.TestHarness.RocketConfig.fir@253428.6]
  assign _T_366 = _T_360 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@253437.8]
  assign _T_367 = ~_T_366; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@253438.8]
  assign _T_508 = io_in_a_ready & io_in_a_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@253730.4]
  assign _T_519 = _T_517 - 1'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@253741.4]
  assign _T_520 = ~_T_517; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@253742.4]
  assign _T_533 = ~_T_520; // @[Monitor.scala 386:22:chipyard.TestHarness.RocketConfig.fir@253758.4]
  assign _T_534 = io_in_a_valid & _T_533; // @[Monitor.scala 386:19:chipyard.TestHarness.RocketConfig.fir@253759.4]
  assign _T_535 = io_in_a_bits_opcode == _T_528; // @[Monitor.scala 387:32:chipyard.TestHarness.RocketConfig.fir@253761.6]
  assign _T_537 = _T_535 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253763.6]
  assign _T_538 = ~_T_537; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253764.6]
  assign _T_539 = io_in_a_bits_param == _T_529; // @[Monitor.scala 388:32:chipyard.TestHarness.RocketConfig.fir@253769.6]
  assign _T_541 = _T_539 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253771.6]
  assign _T_542 = ~_T_541; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253772.6]
  assign _T_543 = io_in_a_bits_size == _T_530; // @[Monitor.scala 389:32:chipyard.TestHarness.RocketConfig.fir@253777.6]
  assign _T_545 = _T_543 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253779.6]
  assign _T_546 = ~_T_545; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253780.6]
  assign _T_547 = io_in_a_bits_source == _T_531; // @[Monitor.scala 390:32:chipyard.TestHarness.RocketConfig.fir@253785.6]
  assign _T_549 = _T_547 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253787.6]
  assign _T_550 = ~_T_549; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253788.6]
  assign _T_551 = io_in_a_bits_address == _T_532; // @[Monitor.scala 391:32:chipyard.TestHarness.RocketConfig.fir@253793.6]
  assign _T_553 = _T_551 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253795.6]
  assign _T_554 = ~_T_553; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253796.6]
  assign _T_556 = _T_508 & _T_520; // @[Monitor.scala 393:20:chipyard.TestHarness.RocketConfig.fir@253803.4]
  assign _T_557 = io_in_d_ready & io_in_d_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@253811.4]
  assign _T_567 = _T_565 - 1'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@253821.4]
  assign _T_568 = ~_T_565; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@253822.4]
  assign _T_582 = ~_T_568; // @[Monitor.scala 538:22:chipyard.TestHarness.RocketConfig.fir@253839.4]
  assign _T_583 = io_in_d_valid & _T_582; // @[Monitor.scala 538:19:chipyard.TestHarness.RocketConfig.fir@253840.4]
  assign _T_592 = io_in_d_bits_size == _T_578; // @[Monitor.scala 541:29:chipyard.TestHarness.RocketConfig.fir@253858.6]
  assign _T_594 = _T_592 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@253860.6]
  assign _T_595 = ~_T_594; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@253861.6]
  assign _T_596 = io_in_d_bits_source == _T_579; // @[Monitor.scala 542:29:chipyard.TestHarness.RocketConfig.fir@253866.6]
  assign _T_598 = _T_596 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@253868.6]
  assign _T_599 = ~_T_598; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@253869.6]
  assign _T_609 = _T_557 & _T_568; // @[Monitor.scala 546:20:chipyard.TestHarness.RocketConfig.fir@253892.4]
  assign _T_621 = _T_619 - 1'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@253915.4]
  assign a_first = ~_T_619; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@253916.4]
  assign _T_639 = _T_637 - 1'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@253937.4]
  assign d_first = ~_T_637; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@253938.4]
  assign _GEN_57 = {io_in_d_bits_source, 2'h0}; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@253957.4]
  assign _T_647 = {{1'd0}, _GEN_57}; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@253957.4]
  assign _T_648 = inflight_opcodes >> _T_647; // @[Monitor.scala 629:44:chipyard.TestHarness.RocketConfig.fir@253958.4]
  assign _T_652 = 16'h10 - 16'h1; // @[Monitor.scala 606:57:chipyard.TestHarness.RocketConfig.fir@253962.4]
  assign _GEN_58 = {{304'd0}, _T_652}; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@253963.4]
  assign _T_653 = _T_648 & _GEN_58; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@253963.4]
  assign _T_654 = {{1'd0}, _T_653[319:1]}; // @[Monitor.scala 629:152:chipyard.TestHarness.RocketConfig.fir@253964.4]
  assign _T_656 = inflight_sizes >> _T_647; // @[Monitor.scala 633:40:chipyard.TestHarness.RocketConfig.fir@253969.4]
  assign _T_661 = _T_656 & _GEN_58; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@253974.4]
  assign _T_662 = {{1'd0}, _T_661[319:1]}; // @[Monitor.scala 633:144:chipyard.TestHarness.RocketConfig.fir@253975.4]
  assign _T_666 = _T_508 & a_first; // @[Monitor.scala 643:27:chipyard.TestHarness.RocketConfig.fir@254000.4]
  assign _T_668 = 128'h1 << io_in_a_bits_source; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@254003.6]
  assign _T_669 = {io_in_a_bits_opcode, 1'h0}; // @[Monitor.scala 645:53:chipyard.TestHarness.RocketConfig.fir@254005.6]
  assign _T_670 = _T_669 | 4'h1; // @[Monitor.scala 645:61:chipyard.TestHarness.RocketConfig.fir@254006.6]
  assign _T_671 = {io_in_a_bits_size, 1'h0}; // @[Monitor.scala 646:49:chipyard.TestHarness.RocketConfig.fir@254008.6]
  assign _T_672 = _T_671 | 3'h1; // @[Monitor.scala 646:57:chipyard.TestHarness.RocketConfig.fir@254009.6]
  assign _GEN_63 = {io_in_a_bits_source, 2'h0}; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@254011.6]
  assign _T_673 = {{1'd0}, _GEN_63}; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@254011.6]
  assign a_opcodes_set_interm = _T_666 ? _T_670 : 4'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@254002.4]
  assign _GEN_64 = {{1023'd0}, a_opcodes_set_interm}; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@254012.6]
  assign _T_674 = _GEN_64 << _T_673; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@254012.6]
  assign a_sizes_set_interm = _T_666 ? _T_672 : 3'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@254002.4]
  assign _GEN_66 = {{1023'd0}, a_sizes_set_interm}; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@254015.6]
  assign _T_676 = _GEN_66 << _T_673; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@254015.6]
  assign _T_677 = inflight >> io_in_a_bits_source; // @[Monitor.scala 649:26:chipyard.TestHarness.RocketConfig.fir@254017.6]
  assign _T_679 = ~_T_677[0]; // @[Monitor.scala 649:17:chipyard.TestHarness.RocketConfig.fir@254019.6]
  assign _T_681 = _T_679 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@254021.6]
  assign _T_682 = ~_T_681; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@254022.6]
  assign _GEN_15 = _T_666 ? _T_668 : 128'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@254002.4]
  assign _GEN_18 = _T_666 ? _T_674 : 1027'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@254002.4]
  assign _GEN_19 = _T_666 ? _T_676 : 1026'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@254002.4]
  assign _T_685 = _T_557 & d_first; // @[Monitor.scala 660:27:chipyard.TestHarness.RocketConfig.fir@254036.4]
  assign _T_689 = 128'h1 << io_in_d_bits_source; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@254041.6]
  assign _GEN_68 = {{1023'd0}, _T_652}; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@254048.6]
  assign _T_695 = _GEN_68 << _T_647; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@254048.6]
  assign _GEN_20 = _T_685 ? _T_689 : 128'h0; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@254040.4]
  assign _GEN_21 = _T_685 ? _T_695 : 1039'h0; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@254040.4]
  assign _T_702 = io_in_d_valid & d_first; // @[Monitor.scala 665:26:chipyard.TestHarness.RocketConfig.fir@254058.4]
  assign _T_706 = inflight >> io_in_d_bits_source; // @[Monitor.scala 666:25:chipyard.TestHarness.RocketConfig.fir@254063.6]
  assign _T_708 = io_in_a_bits_source == io_in_d_bits_source; // @[Monitor.scala 666:93:chipyard.TestHarness.RocketConfig.fir@254065.6]
  assign _T_709 = io_in_a_valid & _T_708; // @[Monitor.scala 666:68:chipyard.TestHarness.RocketConfig.fir@254066.6]
  assign _T_710 = io_in_a_bits_size == io_in_d_bits_size; // @[Monitor.scala 666:142:chipyard.TestHarness.RocketConfig.fir@254067.6]
  assign _T_711 = _T_709 & _T_710; // @[Monitor.scala 666:119:chipyard.TestHarness.RocketConfig.fir@254068.6]
  assign _T_712 = _T_711 & a_first; // @[Monitor.scala 666:166:chipyard.TestHarness.RocketConfig.fir@254069.6]
  assign _T_713 = _T_706[0] | _T_712; // @[Monitor.scala 666:49:chipyard.TestHarness.RocketConfig.fir@254070.6]
  assign _T_715 = _T_713 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@254072.6]
  assign _T_716 = ~_T_715; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@254073.6]
  assign a_opcode_lookup = _T_654[3:0]; // @[:chipyard.TestHarness.RocketConfig.fir@253955.4 :chipyard.TestHarness.RocketConfig.fir@253956.4 Monitor.scala 629:21:chipyard.TestHarness.RocketConfig.fir@253965.4]
  assign _GEN_25 = 3'h2 == a_opcode_lookup[2:0] ? 3'h1 : 3'h0; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@254079.6]
  assign _GEN_26 = 3'h3 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_25; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@254079.6]
  assign _GEN_27 = 3'h4 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_26; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@254079.6]
  assign _GEN_28 = 3'h5 == a_opcode_lookup[2:0] ? 3'h2 : _GEN_27; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@254079.6]
  assign _GEN_29 = 3'h6 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_28; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@254079.6]
  assign _GEN_30 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_29; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@254079.6]
  assign _T_718 = 3'h1 == _GEN_30; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@254079.6]
  assign _GEN_37 = 3'h6 == a_opcode_lookup[2:0] ? 3'h5 : _GEN_28; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@254081.6]
  assign _GEN_38 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_37; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@254081.6]
  assign _T_720 = 3'h1 == _GEN_38; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@254081.6]
  assign _T_721 = _T_718 | _T_720; // @[Monitor.scala 667:71:chipyard.TestHarness.RocketConfig.fir@254082.6]
  assign _GEN_41 = 3'h2 == io_in_a_bits_opcode ? 3'h1 : 3'h0; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@254083.6]
  assign _GEN_42 = 3'h3 == io_in_a_bits_opcode ? 3'h1 : _GEN_41; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@254083.6]
  assign _GEN_43 = 3'h4 == io_in_a_bits_opcode ? 3'h1 : _GEN_42; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@254083.6]
  assign _GEN_44 = 3'h5 == io_in_a_bits_opcode ? 3'h2 : _GEN_43; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@254083.6]
  assign _GEN_45 = 3'h6 == io_in_a_bits_opcode ? 3'h4 : _GEN_44; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@254083.6]
  assign _GEN_46 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_45; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@254083.6]
  assign _T_722 = 3'h1 == _GEN_46; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@254083.6]
  assign _GEN_53 = 3'h6 == io_in_a_bits_opcode ? 3'h5 : _GEN_44; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@254084.6]
  assign _GEN_54 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_53; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@254084.6]
  assign _T_723 = 3'h1 == _GEN_54; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@254084.6]
  assign _T_724 = _T_722 | _T_723; // @[Monitor.scala 668:99:chipyard.TestHarness.RocketConfig.fir@254085.6]
  assign _T_725 = io_in_a_valid & _T_724; // @[Monitor.scala 668:34:chipyard.TestHarness.RocketConfig.fir@254086.6]
  assign _T_726 = _T_721 | _T_725; // @[Monitor.scala 668:15:chipyard.TestHarness.RocketConfig.fir@254087.6]
  assign _T_728 = _T_726 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@254089.6]
  assign _T_729 = ~_T_728; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@254090.6]
  assign a_size_lookup = _T_662[3:0]; // @[:chipyard.TestHarness.RocketConfig.fir@253966.4 :chipyard.TestHarness.RocketConfig.fir@253967.4 Monitor.scala 633:19:chipyard.TestHarness.RocketConfig.fir@253976.4]
  assign _GEN_71 = {{2'd0}, io_in_d_bits_size}; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@254095.6]
  assign _T_730 = _GEN_71 == a_size_lookup; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@254095.6]
  assign _T_732 = io_in_a_valid & _T_710; // @[Monitor.scala 670:72:chipyard.TestHarness.RocketConfig.fir@254097.6]
  assign _T_733 = _T_730 | _T_732; // @[Monitor.scala 670:53:chipyard.TestHarness.RocketConfig.fir@254098.6]
  assign _T_735 = _T_733 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@254100.6]
  assign _T_736 = ~_T_735; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@254101.6]
  assign _T_738 = _T_702 & a_first; // @[Monitor.scala 672:36:chipyard.TestHarness.RocketConfig.fir@254108.4]
  assign _T_739 = _T_738 & io_in_a_valid; // @[Monitor.scala 672:47:chipyard.TestHarness.RocketConfig.fir@254109.4]
  assign _T_741 = _T_739 & _T_708; // @[Monitor.scala 672:65:chipyard.TestHarness.RocketConfig.fir@254111.4]
  assign _T_744 = ~io_in_d_ready; // @[Monitor.scala 673:15:chipyard.TestHarness.RocketConfig.fir@254115.6]
  assign _T_745 = _T_744 | io_in_a_ready; // @[Monitor.scala 673:32:chipyard.TestHarness.RocketConfig.fir@254116.6]
  assign _T_747 = _T_745 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@254118.6]
  assign _T_748 = ~_T_747; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@254119.6]
  assign a_set = _GEN_15[79:0]; // @[:chipyard.TestHarness.RocketConfig.fir@253949.4 :chipyard.TestHarness.RocketConfig.fir@253950.4 Monitor.scala 644:13:chipyard.TestHarness.RocketConfig.fir@254004.6]
  assign _T_749 = inflight | a_set; // @[Monitor.scala 680:27:chipyard.TestHarness.RocketConfig.fir@254125.4]
  assign d_clr = _GEN_20[79:0]; // @[:chipyard.TestHarness.RocketConfig.fir@254028.4 :chipyard.TestHarness.RocketConfig.fir@254029.4 Monitor.scala 661:13:chipyard.TestHarness.RocketConfig.fir@254042.6]
  assign _T_750 = ~d_clr; // @[Monitor.scala 680:38:chipyard.TestHarness.RocketConfig.fir@254126.4]
  assign _T_751 = _T_749 & _T_750; // @[Monitor.scala 680:36:chipyard.TestHarness.RocketConfig.fir@254127.4]
  assign a_opcodes_set = _GEN_18[319:0]; // @[:chipyard.TestHarness.RocketConfig.fir@253951.4 :chipyard.TestHarness.RocketConfig.fir@253952.4 Monitor.scala 647:21:chipyard.TestHarness.RocketConfig.fir@254013.6]
  assign _T_752 = inflight_opcodes | a_opcodes_set; // @[Monitor.scala 681:43:chipyard.TestHarness.RocketConfig.fir@254129.4]
  assign d_opcodes_clr = _GEN_21[319:0]; // @[:chipyard.TestHarness.RocketConfig.fir@254030.4 :chipyard.TestHarness.RocketConfig.fir@254031.4 Monitor.scala 662:21:chipyard.TestHarness.RocketConfig.fir@254049.6]
  assign _T_753 = ~d_opcodes_clr; // @[Monitor.scala 681:62:chipyard.TestHarness.RocketConfig.fir@254130.4]
  assign _T_754 = _T_752 & _T_753; // @[Monitor.scala 681:60:chipyard.TestHarness.RocketConfig.fir@254131.4]
  assign a_sizes_set = _GEN_19[319:0]; // @[:chipyard.TestHarness.RocketConfig.fir@253953.4 :chipyard.TestHarness.RocketConfig.fir@253954.4 Monitor.scala 648:19:chipyard.TestHarness.RocketConfig.fir@254016.6]
  assign _T_755 = inflight_sizes | a_sizes_set; // @[Monitor.scala 682:39:chipyard.TestHarness.RocketConfig.fir@254133.4]
  assign _T_757 = _T_755 & _T_753; // @[Monitor.scala 682:54:chipyard.TestHarness.RocketConfig.fir@254135.4]
  assign _T_759 = |inflight; // @[Monitor.scala 687:26:chipyard.TestHarness.RocketConfig.fir@254140.4]
  assign _T_760 = ~_T_759; // @[Monitor.scala 687:16:chipyard.TestHarness.RocketConfig.fir@254141.4]
  assign _T_761 = plusarg_reader_out == 32'h0; // @[Monitor.scala 687:39:chipyard.TestHarness.RocketConfig.fir@254142.4]
  assign _T_762 = _T_760 | _T_761; // @[Monitor.scala 687:30:chipyard.TestHarness.RocketConfig.fir@254143.4]
  assign _T_763 = _T_758 < plusarg_reader_out; // @[Monitor.scala 687:59:chipyard.TestHarness.RocketConfig.fir@254144.4]
  assign _T_764 = _T_762 | _T_763; // @[Monitor.scala 687:47:chipyard.TestHarness.RocketConfig.fir@254145.4]
  assign _T_766 = _T_764 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@254147.4]
  assign _T_767 = ~_T_766; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@254148.4]
  assign _T_769 = _T_758 + 32'h1; // @[Monitor.scala 689:26:chipyard.TestHarness.RocketConfig.fir@254154.4]
  assign _T_772 = _T_508 | _T_557; // @[Monitor.scala 690:27:chipyard.TestHarness.RocketConfig.fir@254158.4]
  assign _GEN_72 = io_in_a_valid & _T_101; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@252965.10]
  assign _GEN_88 = io_in_a_valid & _T_139; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253037.10]
  assign _GEN_106 = io_in_a_valid & _T_181; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253120.10]
  assign _GEN_118 = io_in_a_valid & _T_214; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253176.10]
  assign _GEN_128 = io_in_a_valid & _T_240; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253224.10]
  assign _GEN_138 = io_in_a_valid & _T_268; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253274.10]
  assign _GEN_148 = io_in_a_valid & _T_294; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253322.10]
  assign _GEN_158 = io_in_a_valid & _T_320; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253370.10]
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
  _T_517 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_528 = _RAND_1[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_529 = _RAND_2[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_530 = _RAND_3[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_531 = _RAND_4[6:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_532 = _RAND_5[16:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  _T_565 = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  _T_578 = _RAND_7[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  _T_579 = _RAND_8[6:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {3{`RANDOM}};
  inflight = _RAND_9[79:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {10{`RANDOM}};
  inflight_opcodes = _RAND_10[319:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {10{`RANDOM}};
  inflight_sizes = _RAND_11[319:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  _T_619 = _RAND_12[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  _T_637 = _RAND_13[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  _T_758 = _RAND_14[31:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      _T_517 <= 1'h0;
    end else if (_T_508) begin
      if (_T_520) begin
        _T_517 <= 1'h0;
      end else begin
        _T_517 <= _T_519;
      end
    end
    if (_T_556) begin
      _T_528 <= io_in_a_bits_opcode;
    end
    if (_T_556) begin
      _T_529 <= io_in_a_bits_param;
    end
    if (_T_556) begin
      _T_530 <= io_in_a_bits_size;
    end
    if (_T_556) begin
      _T_531 <= io_in_a_bits_source;
    end
    if (_T_556) begin
      _T_532 <= io_in_a_bits_address;
    end
    if (reset) begin
      _T_565 <= 1'h0;
    end else if (_T_557) begin
      if (_T_568) begin
        _T_565 <= 1'h0;
      end else begin
        _T_565 <= _T_567;
      end
    end
    if (_T_609) begin
      _T_578 <= io_in_d_bits_size;
    end
    if (_T_609) begin
      _T_579 <= io_in_d_bits_source;
    end
    if (reset) begin
      inflight <= 80'h0;
    end else begin
      inflight <= _T_751;
    end
    if (reset) begin
      inflight_opcodes <= 320'h0;
    end else begin
      inflight_opcodes <= _T_754;
    end
    if (reset) begin
      inflight_sizes <= 320'h0;
    end else begin
      inflight_sizes <= _T_757;
    end
    if (reset) begin
      _T_619 <= 1'h0;
    end else if (_T_508) begin
      if (a_first) begin
        _T_619 <= 1'h0;
      end else begin
        _T_619 <= _T_621;
      end
    end
    if (reset) begin
      _T_637 <= 1'h0;
    end else if (_T_557) begin
      if (d_first) begin
        _T_637 <= 1'h0;
      end else begin
        _T_637 <= _T_639;
      end
    end
    if (reset) begin
      _T_758 <= 32'h0;
    end else if (_T_772) begin
      _T_758 <= 32'h0;
    end else begin
      _T_758 <= _T_769;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_72 & _T_112) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock type unsupported by manager (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@252965.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@252966.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock from a client which does not support Probe (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@252972.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@252973.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock carries invalid source ID (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@252979.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@252980.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock smaller than a beat (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@252987.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@252988.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock address not aligned to size (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@252994.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@252995.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock carries invalid grow param (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253002.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253003.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock contains invalid mask (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253011.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253012.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock is corrupt (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253019.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253020.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm type unsupported by manager (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253037.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253038.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm from a client which does not support Probe (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253044.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253045.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm carries invalid source ID (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253051.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253052.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm smaller than a beat (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253059.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253060.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm address not aligned to size (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253066.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253067.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm carries invalid grow param (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253074.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253075.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm requests NtoB (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253082.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253083.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm contains invalid mask (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253091.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253092.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm is corrupt (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253099.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253100.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Get type unsupported by manager (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253120.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253121.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get carries invalid source ID (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253127.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253128.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get address not aligned to size (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253134.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253135.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get carries invalid param (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253142.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253143.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get contains invalid mask (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253150.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253151.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get is corrupt (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253158.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253159.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_118 & _T_112) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutFull type unsupported by manager (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253176.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_118 & _T_112) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253177.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull carries invalid source ID (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253183.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253184.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull address not aligned to size (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253190.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253191.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull carries invalid param (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253198.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253199.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull contains invalid mask (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253206.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253207.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_128 & _T_112) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutPartial type unsupported by manager (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253224.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_128 & _T_112) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253225.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial carries invalid source ID (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253231.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253232.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial address not aligned to size (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253238.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253239.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial carries invalid param (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253246.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253247.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_128 & _T_267) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial contains invalid mask (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253256.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_128 & _T_267) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253257.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Arithmetic type unsupported by manager (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253274.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253275.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic carries invalid source ID (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253281.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253282.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic address not aligned to size (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253288.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253289.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_138 & _T_289) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic carries invalid opcode param (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253296.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_138 & _T_289) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253297.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic contains invalid mask (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253304.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253305.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Logical type unsupported by manager (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253322.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253323.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical carries invalid source ID (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253329.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253330.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical address not aligned to size (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253336.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253337.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_148 & _T_315) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical carries invalid opcode param (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253344.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_148 & _T_315) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253345.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical contains invalid mask (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253352.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253353.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Hint type unsupported by manager (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253370.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253371.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint carries invalid source ID (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253377.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253378.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint address not aligned to size (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253384.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253385.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_158 & _T_341) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint carries invalid opcode param (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253392.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_158 & _T_341) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253393.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint contains invalid mask (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253400.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253401.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint is corrupt (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253408.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253409.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_in_d_valid & _T_367) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData carries invalid source ID (connected at BootROM.scala:74:16)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@253634.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (io_in_d_valid & _T_367) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@253635.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_534 & _T_538) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel opcode changed within multibeat operation (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253766.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_534 & _T_538) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253767.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_534 & _T_542) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel param changed within multibeat operation (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253774.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_534 & _T_542) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253775.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_534 & _T_546) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel size changed within multibeat operation (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253782.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_534 & _T_546) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253783.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_534 & _T_550) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel source changed within multibeat operation (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253790.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_534 & _T_550) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253791.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_534 & _T_554) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel address changed with multibeat operation (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253798.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_534 & _T_554) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@253799.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_583 & _T_595) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel size changed within multibeat operation (connected at BootROM.scala:74:16)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@253863.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_583 & _T_595) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@253864.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_583 & _T_599) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel source changed within multibeat operation (connected at BootROM.scala:74:16)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@253871.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_583 & _T_599) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@253872.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_666 & _T_682) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel re-used a source ID (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@254024.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_666 & _T_682) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@254025.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_702 & _T_716) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel acknowledged for nothing inflight (connected at BootROM.scala:74:16)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@254075.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_702 & _T_716) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@254076.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_702 & _T_729) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper opcode response (connected at BootROM.scala:74:16)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@254092.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_702 & _T_729) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@254093.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_702 & _T_736) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper response size (connected at BootROM.scala:74:16)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@254103.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_702 & _T_736) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@254104.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_741 & _T_748) begin
          $fwrite(32'h80000002,"Assertion failed: ready check\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@254121.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_741 & _T_748) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@254122.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_767) begin
          $fwrite(32'h80000002,"Assertion failed: TileLink timeout expired (connected at BootROM.scala:74:16)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@254150.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_767) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@254151.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
