module TLMonitor_58( // @[:chipyard.TestHarness.RocketConfig.fir@193428.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@193429.4]
  input         reset, // @[:chipyard.TestHarness.RocketConfig.fir@193430.4]
  input         io_in_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@193431.4]
  input         io_in_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@193431.4]
  input  [31:0] io_in_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@193431.4]
  input         io_in_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@193431.4]
  input  [2:0]  io_in_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@193431.4]
  input  [1:0]  io_in_d_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@193431.4]
  input  [3:0]  io_in_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@193431.4]
  input  [2:0]  io_in_d_bits_sink, // @[:chipyard.TestHarness.RocketConfig.fir@193431.4]
  input         io_in_d_bits_denied, // @[:chipyard.TestHarness.RocketConfig.fir@193431.4]
  input         io_in_d_bits_corrupt // @[:chipyard.TestHarness.RocketConfig.fir@193431.4]
);
  wire [31:0] plusarg_reader_out; // @[PlusArg.scala 44:11:chipyard.TestHarness.RocketConfig.fir@195109.4]
  wire [31:0] _T_10; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@193450.6]
  wire  _T_11; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@193451.6]
  wire [32:0] _T_79; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@193519.6]
  wire [31:0] _T_89; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@193534.8]
  wire [32:0] _T_90; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@193535.8]
  wire [32:0] _T_92; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@193537.8]
  wire  _T_93; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@193538.8]
  wire [31:0] _T_94; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@193539.8]
  wire [32:0] _T_95; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@193540.8]
  wire [32:0] _T_97; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@193542.8]
  wire  _T_98; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@193543.8]
  wire [31:0] _T_99; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@193544.8]
  wire [32:0] _T_100; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@193545.8]
  wire [32:0] _T_102; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@193547.8]
  wire  _T_103; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@193548.8]
  wire [31:0] _T_104; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@193549.8]
  wire [32:0] _T_105; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@193550.8]
  wire [32:0] _T_107; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@193552.8]
  wire  _T_108; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@193553.8]
  wire [31:0] _T_109; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@193554.8]
  wire [32:0] _T_110; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@193555.8]
  wire [32:0] _T_112; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@193557.8]
  wire  _T_113; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@193558.8]
  wire [32:0] _T_117; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@193562.8]
  wire  _T_118; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@193563.8]
  wire [31:0] _T_119; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@193564.8]
  wire [32:0] _T_120; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@193565.8]
  wire [32:0] _T_122; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@193567.8]
  wire  _T_123; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@193568.8]
  wire [31:0] _T_133; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@193578.8]
  wire [32:0] _T_134; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@193579.8]
  wire [32:0] _T_136; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@193581.8]
  wire  _T_137; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@193582.8]
  wire  _T_155; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@193616.8]
  wire  _T_156; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@193617.8]
  wire  _T_307; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@193824.8]
  wire  _T_308; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@193825.8]
  wire  _T_309; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@193826.8]
  wire  _T_310; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@193827.8]
  wire  _T_311; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@193828.8]
  wire  _T_312; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@193829.8]
  wire  _T_315; // @[Parameters.scala 553:30:chipyard.TestHarness.RocketConfig.fir@193832.8]
  wire  _T_317; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@193834.8]
  wire  _T_318; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@193835.8]
  wire  _T_723; // @[Bundles.scala 44:24:chipyard.TestHarness.RocketConfig.fir@194381.6]
  wire  _T_725; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194383.6]
  wire  _T_726; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194384.6]
  wire  _T_730; // @[Monitor.scala 307:25:chipyard.TestHarness.RocketConfig.fir@194394.6]
  wire  _T_734; // @[Monitor.scala 309:27:chipyard.TestHarness.RocketConfig.fir@194403.8]
  wire  _T_736; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194405.8]
  wire  _T_737; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194406.8]
  wire  _T_738; // @[Monitor.scala 310:28:chipyard.TestHarness.RocketConfig.fir@194411.8]
  wire  _T_740; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194413.8]
  wire  _T_741; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194414.8]
  wire  _T_742; // @[Monitor.scala 311:15:chipyard.TestHarness.RocketConfig.fir@194419.8]
  wire  _T_744; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194421.8]
  wire  _T_745; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194422.8]
  wire  _T_746; // @[Monitor.scala 312:15:chipyard.TestHarness.RocketConfig.fir@194427.8]
  wire  _T_748; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194429.8]
  wire  _T_749; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194430.8]
  wire  _T_750; // @[Monitor.scala 315:25:chipyard.TestHarness.RocketConfig.fir@194436.6]
  wire  _T_761; // @[Bundles.scala 104:26:chipyard.TestHarness.RocketConfig.fir@194460.8]
  wire  _T_763; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194462.8]
  wire  _T_764; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194463.8]
  wire  _T_765; // @[Monitor.scala 320:28:chipyard.TestHarness.RocketConfig.fir@194468.8]
  wire  _T_767; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194470.8]
  wire  _T_768; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194471.8]
  wire  _T_778; // @[Monitor.scala 325:25:chipyard.TestHarness.RocketConfig.fir@194494.6]
  wire  _T_798; // @[Monitor.scala 331:30:chipyard.TestHarness.RocketConfig.fir@194535.8]
  wire  _T_800; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194537.8]
  wire  _T_801; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194538.8]
  wire  _T_807; // @[Monitor.scala 335:25:chipyard.TestHarness.RocketConfig.fir@194553.6]
  wire  _T_824; // @[Monitor.scala 343:25:chipyard.TestHarness.RocketConfig.fir@194588.6]
  wire  _T_842; // @[Monitor.scala 351:25:chipyard.TestHarness.RocketConfig.fir@194624.6]
  wire  _T_874; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@194690.4]
  reg [8:0] _T_883; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@194699.4]
  reg [31:0] _RAND_0;
  wire [8:0] _T_885; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@194701.4]
  wire  _T_886; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@194702.4]
  reg [31:0] _T_898; // @[Monitor.scala 385:22:chipyard.TestHarness.RocketConfig.fir@194717.4]
  reg [31:0] _RAND_1;
  wire  _T_899; // @[Monitor.scala 386:22:chipyard.TestHarness.RocketConfig.fir@194718.4]
  wire  _T_900; // @[Monitor.scala 386:19:chipyard.TestHarness.RocketConfig.fir@194719.4]
  wire  _T_917; // @[Monitor.scala 391:32:chipyard.TestHarness.RocketConfig.fir@194753.6]
  wire  _T_919; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@194755.6]
  wire  _T_920; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@194756.6]
  wire  _T_922; // @[Monitor.scala 393:20:chipyard.TestHarness.RocketConfig.fir@194763.4]
  wire [26:0] _T_925; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@194773.4]
  wire [11:0] _T_927; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@194775.4]
  reg [8:0] _T_931; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@194779.4]
  reg [31:0] _RAND_2;
  wire [8:0] _T_933; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@194781.4]
  wire  _T_934; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@194782.4]
  reg [2:0] _T_942; // @[Monitor.scala 532:22:chipyard.TestHarness.RocketConfig.fir@194793.4]
  reg [31:0] _RAND_3;
  reg [1:0] _T_943; // @[Monitor.scala 533:22:chipyard.TestHarness.RocketConfig.fir@194794.4]
  reg [31:0] _RAND_4;
  reg [3:0] _T_944; // @[Monitor.scala 534:22:chipyard.TestHarness.RocketConfig.fir@194795.4]
  reg [31:0] _RAND_5;
  reg [2:0] _T_946; // @[Monitor.scala 536:22:chipyard.TestHarness.RocketConfig.fir@194797.4]
  reg [31:0] _RAND_6;
  reg  _T_947; // @[Monitor.scala 537:22:chipyard.TestHarness.RocketConfig.fir@194798.4]
  reg [31:0] _RAND_7;
  wire  _T_948; // @[Monitor.scala 538:22:chipyard.TestHarness.RocketConfig.fir@194799.4]
  wire  _T_949; // @[Monitor.scala 538:19:chipyard.TestHarness.RocketConfig.fir@194800.4]
  wire  _T_950; // @[Monitor.scala 539:29:chipyard.TestHarness.RocketConfig.fir@194802.6]
  wire  _T_952; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194804.6]
  wire  _T_953; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194805.6]
  wire  _T_954; // @[Monitor.scala 540:29:chipyard.TestHarness.RocketConfig.fir@194810.6]
  wire  _T_956; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194812.6]
  wire  _T_957; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194813.6]
  wire  _T_958; // @[Monitor.scala 541:29:chipyard.TestHarness.RocketConfig.fir@194818.6]
  wire  _T_960; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194820.6]
  wire  _T_961; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194821.6]
  wire  _T_966; // @[Monitor.scala 543:29:chipyard.TestHarness.RocketConfig.fir@194834.6]
  wire  _T_968; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194836.6]
  wire  _T_969; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194837.6]
  wire  _T_970; // @[Monitor.scala 544:29:chipyard.TestHarness.RocketConfig.fir@194842.6]
  wire  _T_972; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194844.6]
  wire  _T_973; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194845.6]
  wire  _T_975; // @[Monitor.scala 546:20:chipyard.TestHarness.RocketConfig.fir@194852.4]
  reg  inflight; // @[Monitor.scala 608:27:chipyard.TestHarness.RocketConfig.fir@194861.4]
  reg [31:0] _RAND_8;
  reg [3:0] inflight_opcodes; // @[Monitor.scala 610:35:chipyard.TestHarness.RocketConfig.fir@194862.4]
  reg [31:0] _RAND_9;
  reg [7:0] inflight_sizes; // @[Monitor.scala 612:33:chipyard.TestHarness.RocketConfig.fir@194863.4]
  reg [31:0] _RAND_10;
  reg [8:0] _T_985; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@194873.4]
  reg [31:0] _RAND_11;
  wire [8:0] _T_987; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@194875.4]
  wire  a_first; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@194876.4]
  reg [8:0] _T_1003; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@194895.4]
  reg [31:0] _RAND_12;
  wire [8:0] _T_1005; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@194897.4]
  wire  d_first; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@194898.4]
  wire [15:0] _T_1018; // @[Monitor.scala 606:57:chipyard.TestHarness.RocketConfig.fir@194922.4]
  wire [15:0] _GEN_56; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@194923.4]
  wire [15:0] _T_1019; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@194923.4]
  wire [15:0] _T_1020; // @[Monitor.scala 629:152:chipyard.TestHarness.RocketConfig.fir@194924.4]
  wire [15:0] _T_1026; // @[Monitor.scala 606:57:chipyard.TestHarness.RocketConfig.fir@194933.4]
  wire [15:0] _GEN_58; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@194934.4]
  wire [15:0] _T_1027; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@194934.4]
  wire [15:0] _T_1028; // @[Monitor.scala 633:144:chipyard.TestHarness.RocketConfig.fir@194935.4]
  wire  _T_1032; // @[Monitor.scala 643:27:chipyard.TestHarness.RocketConfig.fir@194960.4]
  wire [3:0] a_opcodes_set_interm; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@194962.4]
  wire [18:0] _T_1040; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@194972.6]
  wire [4:0] a_sizes_set_interm; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@194962.4]
  wire [19:0] _T_1042; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@194975.6]
  wire  _T_1045; // @[Monitor.scala 649:17:chipyard.TestHarness.RocketConfig.fir@194979.6]
  wire  _T_1047; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@194981.6]
  wire  _T_1048; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@194982.6]
  wire [1:0] _GEN_15; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@194962.4]
  wire [18:0] _GEN_18; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@194962.4]
  wire [19:0] _GEN_19; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@194962.4]
  wire  _T_1051; // @[Monitor.scala 660:27:chipyard.TestHarness.RocketConfig.fir@194996.4]
  wire  _T_1053; // @[Monitor.scala 660:75:chipyard.TestHarness.RocketConfig.fir@194998.4]
  wire  _T_1054; // @[Monitor.scala 660:72:chipyard.TestHarness.RocketConfig.fir@194999.4]
  wire [30:0] _T_1061; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@195008.6]
  wire [30:0] _T_1067; // @[Monitor.scala 663:72:chipyard.TestHarness.RocketConfig.fir@195015.6]
  wire [1:0] _GEN_20; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@195000.4]
  wire [30:0] _GEN_21; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@195000.4]
  wire [30:0] _GEN_22; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@195000.4]
  wire  _T_1076; // @[Monitor.scala 666:142:chipyard.TestHarness.RocketConfig.fir@195027.6]
  wire  _T_1077; // @[Monitor.scala 666:119:chipyard.TestHarness.RocketConfig.fir@195028.6]
  wire  _T_1078; // @[Monitor.scala 666:166:chipyard.TestHarness.RocketConfig.fir@195029.6]
  wire  _T_1079; // @[Monitor.scala 666:49:chipyard.TestHarness.RocketConfig.fir@195030.6]
  wire  _T_1081; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@195032.6]
  wire  _T_1082; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@195033.6]
  wire [3:0] a_opcode_lookup; // @[:chipyard.TestHarness.RocketConfig.fir@194915.4 :chipyard.TestHarness.RocketConfig.fir@194916.4 Monitor.scala 629:21:chipyard.TestHarness.RocketConfig.fir@194925.4]
  wire [2:0] _GEN_25; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@195039.6]
  wire [2:0] _GEN_26; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@195039.6]
  wire [2:0] _GEN_27; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@195039.6]
  wire [2:0] _GEN_28; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@195039.6]
  wire [2:0] _GEN_29; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@195039.6]
  wire [2:0] _GEN_30; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@195039.6]
  wire  _T_1084; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@195039.6]
  wire [2:0] _GEN_37; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@195041.6]
  wire [2:0] _GEN_38; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@195041.6]
  wire  _T_1086; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@195041.6]
  wire  _T_1087; // @[Monitor.scala 667:71:chipyard.TestHarness.RocketConfig.fir@195042.6]
  wire  _T_1090; // @[Monitor.scala 668:99:chipyard.TestHarness.RocketConfig.fir@195045.6]
  wire  _T_1091; // @[Monitor.scala 668:34:chipyard.TestHarness.RocketConfig.fir@195046.6]
  wire  _T_1092; // @[Monitor.scala 668:15:chipyard.TestHarness.RocketConfig.fir@195047.6]
  wire  _T_1094; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@195049.6]
  wire  _T_1095; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@195050.6]
  wire [7:0] a_size_lookup; // @[:chipyard.TestHarness.RocketConfig.fir@194926.4 :chipyard.TestHarness.RocketConfig.fir@194927.4 Monitor.scala 633:19:chipyard.TestHarness.RocketConfig.fir@194936.4]
  wire [7:0] _GEN_60; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@195055.6]
  wire  _T_1096; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@195055.6]
  wire  _T_1099; // @[Monitor.scala 670:53:chipyard.TestHarness.RocketConfig.fir@195058.6]
  wire  _T_1101; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@195060.6]
  wire  _T_1102; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@195061.6]
  wire  _T_1104; // @[Monitor.scala 672:36:chipyard.TestHarness.RocketConfig.fir@195068.4]
  wire  _T_1105; // @[Monitor.scala 672:47:chipyard.TestHarness.RocketConfig.fir@195069.4]
  wire  _T_1109; // @[Monitor.scala 672:116:chipyard.TestHarness.RocketConfig.fir@195073.4]
  wire  _T_1113; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@195078.6]
  wire  _T_1114; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@195079.6]
  wire  a_set; // @[:chipyard.TestHarness.RocketConfig.fir@194909.4 :chipyard.TestHarness.RocketConfig.fir@194910.4 Monitor.scala 644:13:chipyard.TestHarness.RocketConfig.fir@194964.6]
  wire  d_clr; // @[:chipyard.TestHarness.RocketConfig.fir@194988.4 :chipyard.TestHarness.RocketConfig.fir@194989.4 Monitor.scala 661:13:chipyard.TestHarness.RocketConfig.fir@195002.6]
  wire  _T_1115; // @[Monitor.scala 677:20:chipyard.TestHarness.RocketConfig.fir@195085.4]
  wire  _T_1116; // @[Monitor.scala 677:40:chipyard.TestHarness.RocketConfig.fir@195086.4]
  wire  _T_1117; // @[Monitor.scala 677:33:chipyard.TestHarness.RocketConfig.fir@195087.4]
  wire  _T_1118; // @[Monitor.scala 677:30:chipyard.TestHarness.RocketConfig.fir@195088.4]
  wire  _T_1120; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@195090.4]
  wire  _T_1121; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@195091.4]
  wire  _T_1122; // @[Monitor.scala 680:27:chipyard.TestHarness.RocketConfig.fir@195096.4]
  wire  _T_1123; // @[Monitor.scala 680:38:chipyard.TestHarness.RocketConfig.fir@195097.4]
  wire  _T_1124; // @[Monitor.scala 680:36:chipyard.TestHarness.RocketConfig.fir@195098.4]
  wire [3:0] a_opcodes_set; // @[:chipyard.TestHarness.RocketConfig.fir@194911.4 :chipyard.TestHarness.RocketConfig.fir@194912.4 Monitor.scala 647:21:chipyard.TestHarness.RocketConfig.fir@194973.6]
  wire [3:0] _T_1125; // @[Monitor.scala 681:43:chipyard.TestHarness.RocketConfig.fir@195100.4]
  wire [3:0] d_opcodes_clr; // @[:chipyard.TestHarness.RocketConfig.fir@194990.4 :chipyard.TestHarness.RocketConfig.fir@194991.4 Monitor.scala 662:21:chipyard.TestHarness.RocketConfig.fir@195009.6]
  wire [3:0] _T_1126; // @[Monitor.scala 681:62:chipyard.TestHarness.RocketConfig.fir@195101.4]
  wire [3:0] _T_1127; // @[Monitor.scala 681:60:chipyard.TestHarness.RocketConfig.fir@195102.4]
  wire [7:0] a_sizes_set; // @[:chipyard.TestHarness.RocketConfig.fir@194913.4 :chipyard.TestHarness.RocketConfig.fir@194914.4 Monitor.scala 648:19:chipyard.TestHarness.RocketConfig.fir@194976.6]
  wire [7:0] _T_1128; // @[Monitor.scala 682:39:chipyard.TestHarness.RocketConfig.fir@195104.4]
  wire [7:0] d_sizes_clr; // @[:chipyard.TestHarness.RocketConfig.fir@194992.4 :chipyard.TestHarness.RocketConfig.fir@194993.4 Monitor.scala 663:19:chipyard.TestHarness.RocketConfig.fir@195016.6]
  wire [7:0] _T_1129; // @[Monitor.scala 682:56:chipyard.TestHarness.RocketConfig.fir@195105.4]
  wire [7:0] _T_1130; // @[Monitor.scala 682:54:chipyard.TestHarness.RocketConfig.fir@195106.4]
  reg [31:0] _T_1131; // @[Monitor.scala 684:27:chipyard.TestHarness.RocketConfig.fir@195108.4]
  reg [31:0] _RAND_13;
  wire  _T_1132; // @[Monitor.scala 687:26:chipyard.TestHarness.RocketConfig.fir@195111.4]
  wire  _T_1133; // @[Monitor.scala 687:16:chipyard.TestHarness.RocketConfig.fir@195112.4]
  wire  _T_1134; // @[Monitor.scala 687:39:chipyard.TestHarness.RocketConfig.fir@195113.4]
  wire  _T_1135; // @[Monitor.scala 687:30:chipyard.TestHarness.RocketConfig.fir@195114.4]
  wire  _T_1136; // @[Monitor.scala 687:59:chipyard.TestHarness.RocketConfig.fir@195115.4]
  wire  _T_1137; // @[Monitor.scala 687:47:chipyard.TestHarness.RocketConfig.fir@195116.4]
  wire  _T_1139; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@195118.4]
  wire  _T_1140; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@195119.4]
  wire [31:0] _T_1142; // @[Monitor.scala 689:26:chipyard.TestHarness.RocketConfig.fir@195125.4]
  wire  _T_1145; // @[Monitor.scala 690:27:chipyard.TestHarness.RocketConfig.fir@195129.4]
  wire  _GEN_61; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194408.10]
  wire  _GEN_69; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194457.10]
  wire  _GEN_77; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194515.10]
  wire  _GEN_85; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194567.10]
  wire  _GEN_89; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194602.10]
  wire  _GEN_93; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194638.10]
  plusarg_reader #(.FORMAT("tilelink_timeout=%d"), .DEFAULT(0), .WIDTH(32)) plusarg_reader ( // @[PlusArg.scala 44:11:chipyard.TestHarness.RocketConfig.fir@195109.4]
    .out(plusarg_reader_out)
  );
  assign _T_10 = io_in_a_bits_address & 32'h3f; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@193450.6]
  assign _T_11 = _T_10 == 32'h0; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@193451.6]
  assign _T_79 = {1'b0,$signed(io_in_a_bits_address)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@193519.6]
  assign _T_89 = io_in_a_bits_address ^ 32'h3000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@193534.8]
  assign _T_90 = {1'b0,$signed(_T_89)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@193535.8]
  assign _T_92 = $signed(_T_90) & -33'sh1000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@193537.8]
  assign _T_93 = $signed(_T_92) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@193538.8]
  assign _T_94 = io_in_a_bits_address ^ 32'h2010000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@193539.8]
  assign _T_95 = {1'b0,$signed(_T_94)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@193540.8]
  assign _T_97 = $signed(_T_95) & -33'sh1000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@193542.8]
  assign _T_98 = $signed(_T_97) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@193543.8]
  assign _T_99 = io_in_a_bits_address ^ 32'h54000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@193544.8]
  assign _T_100 = {1'b0,$signed(_T_99)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@193545.8]
  assign _T_102 = $signed(_T_100) & -33'sh1000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@193547.8]
  assign _T_103 = $signed(_T_102) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@193548.8]
  assign _T_104 = io_in_a_bits_address ^ 32'hc000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@193549.8]
  assign _T_105 = {1'b0,$signed(_T_104)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@193550.8]
  assign _T_107 = $signed(_T_105) & -33'sh4000000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@193552.8]
  assign _T_108 = $signed(_T_107) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@193553.8]
  assign _T_109 = io_in_a_bits_address ^ 32'h2000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@193554.8]
  assign _T_110 = {1'b0,$signed(_T_109)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@193555.8]
  assign _T_112 = $signed(_T_110) & -33'sh10000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@193557.8]
  assign _T_113 = $signed(_T_112) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@193558.8]
  assign _T_117 = $signed(_T_79) & -33'sh1000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@193562.8]
  assign _T_118 = $signed(_T_117) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@193563.8]
  assign _T_119 = io_in_a_bits_address ^ 32'h10000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@193564.8]
  assign _T_120 = {1'b0,$signed(_T_119)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@193565.8]
  assign _T_122 = $signed(_T_120) & -33'sh10000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@193567.8]
  assign _T_123 = $signed(_T_122) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@193568.8]
  assign _T_133 = io_in_a_bits_address ^ 32'h80000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@193578.8]
  assign _T_134 = {1'b0,$signed(_T_133)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@193579.8]
  assign _T_136 = $signed(_T_134) & -33'sh10000000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@193581.8]
  assign _T_137 = $signed(_T_136) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@193582.8]
  assign _T_155 = _T_11 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@193616.8]
  assign _T_156 = ~_T_155; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@193617.8]
  assign _T_307 = _T_98 | _T_103; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@193824.8]
  assign _T_308 = _T_307 | _T_108; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@193825.8]
  assign _T_309 = _T_308 | _T_113; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@193826.8]
  assign _T_310 = _T_309 | _T_118; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@193827.8]
  assign _T_311 = _T_310 | _T_123; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@193828.8]
  assign _T_312 = _T_311 | _T_137; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@193829.8]
  assign _T_315 = _T_93 | _T_312; // @[Parameters.scala 553:30:chipyard.TestHarness.RocketConfig.fir@193832.8]
  assign _T_317 = _T_315 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@193834.8]
  assign _T_318 = ~_T_317; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@193835.8]
  assign _T_723 = io_in_d_bits_opcode <= 3'h6; // @[Bundles.scala 44:24:chipyard.TestHarness.RocketConfig.fir@194381.6]
  assign _T_725 = _T_723 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194383.6]
  assign _T_726 = ~_T_725; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194384.6]
  assign _T_730 = io_in_d_bits_opcode == 3'h6; // @[Monitor.scala 307:25:chipyard.TestHarness.RocketConfig.fir@194394.6]
  assign _T_734 = io_in_d_bits_size >= 4'h3; // @[Monitor.scala 309:27:chipyard.TestHarness.RocketConfig.fir@194403.8]
  assign _T_736 = _T_734 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194405.8]
  assign _T_737 = ~_T_736; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194406.8]
  assign _T_738 = io_in_d_bits_param == 2'h0; // @[Monitor.scala 310:28:chipyard.TestHarness.RocketConfig.fir@194411.8]
  assign _T_740 = _T_738 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194413.8]
  assign _T_741 = ~_T_740; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194414.8]
  assign _T_742 = ~io_in_d_bits_corrupt; // @[Monitor.scala 311:15:chipyard.TestHarness.RocketConfig.fir@194419.8]
  assign _T_744 = _T_742 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194421.8]
  assign _T_745 = ~_T_744; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194422.8]
  assign _T_746 = ~io_in_d_bits_denied; // @[Monitor.scala 312:15:chipyard.TestHarness.RocketConfig.fir@194427.8]
  assign _T_748 = _T_746 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194429.8]
  assign _T_749 = ~_T_748; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194430.8]
  assign _T_750 = io_in_d_bits_opcode == 3'h4; // @[Monitor.scala 315:25:chipyard.TestHarness.RocketConfig.fir@194436.6]
  assign _T_761 = io_in_d_bits_param <= 2'h2; // @[Bundles.scala 104:26:chipyard.TestHarness.RocketConfig.fir@194460.8]
  assign _T_763 = _T_761 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194462.8]
  assign _T_764 = ~_T_763; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194463.8]
  assign _T_765 = io_in_d_bits_param != 2'h2; // @[Monitor.scala 320:28:chipyard.TestHarness.RocketConfig.fir@194468.8]
  assign _T_767 = _T_765 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194470.8]
  assign _T_768 = ~_T_767; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194471.8]
  assign _T_778 = io_in_d_bits_opcode == 3'h5; // @[Monitor.scala 325:25:chipyard.TestHarness.RocketConfig.fir@194494.6]
  assign _T_798 = _T_746 | io_in_d_bits_corrupt; // @[Monitor.scala 331:30:chipyard.TestHarness.RocketConfig.fir@194535.8]
  assign _T_800 = _T_798 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194537.8]
  assign _T_801 = ~_T_800; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194538.8]
  assign _T_807 = io_in_d_bits_opcode == 3'h0; // @[Monitor.scala 335:25:chipyard.TestHarness.RocketConfig.fir@194553.6]
  assign _T_824 = io_in_d_bits_opcode == 3'h1; // @[Monitor.scala 343:25:chipyard.TestHarness.RocketConfig.fir@194588.6]
  assign _T_842 = io_in_d_bits_opcode == 3'h2; // @[Monitor.scala 351:25:chipyard.TestHarness.RocketConfig.fir@194624.6]
  assign _T_874 = io_in_a_ready & io_in_a_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@194690.4]
  assign _T_885 = _T_883 - 9'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@194701.4]
  assign _T_886 = _T_883 == 9'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@194702.4]
  assign _T_899 = ~_T_886; // @[Monitor.scala 386:22:chipyard.TestHarness.RocketConfig.fir@194718.4]
  assign _T_900 = io_in_a_valid & _T_899; // @[Monitor.scala 386:19:chipyard.TestHarness.RocketConfig.fir@194719.4]
  assign _T_917 = io_in_a_bits_address == _T_898; // @[Monitor.scala 391:32:chipyard.TestHarness.RocketConfig.fir@194753.6]
  assign _T_919 = _T_917 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@194755.6]
  assign _T_920 = ~_T_919; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@194756.6]
  assign _T_922 = _T_874 & _T_886; // @[Monitor.scala 393:20:chipyard.TestHarness.RocketConfig.fir@194763.4]
  assign _T_925 = 27'hfff << io_in_d_bits_size; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@194773.4]
  assign _T_927 = ~_T_925[11:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@194775.4]
  assign _T_933 = _T_931 - 9'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@194781.4]
  assign _T_934 = _T_931 == 9'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@194782.4]
  assign _T_948 = ~_T_934; // @[Monitor.scala 538:22:chipyard.TestHarness.RocketConfig.fir@194799.4]
  assign _T_949 = io_in_d_valid & _T_948; // @[Monitor.scala 538:19:chipyard.TestHarness.RocketConfig.fir@194800.4]
  assign _T_950 = io_in_d_bits_opcode == _T_942; // @[Monitor.scala 539:29:chipyard.TestHarness.RocketConfig.fir@194802.6]
  assign _T_952 = _T_950 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194804.6]
  assign _T_953 = ~_T_952; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194805.6]
  assign _T_954 = io_in_d_bits_param == _T_943; // @[Monitor.scala 540:29:chipyard.TestHarness.RocketConfig.fir@194810.6]
  assign _T_956 = _T_954 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194812.6]
  assign _T_957 = ~_T_956; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194813.6]
  assign _T_958 = io_in_d_bits_size == _T_944; // @[Monitor.scala 541:29:chipyard.TestHarness.RocketConfig.fir@194818.6]
  assign _T_960 = _T_958 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194820.6]
  assign _T_961 = ~_T_960; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194821.6]
  assign _T_966 = io_in_d_bits_sink == _T_946; // @[Monitor.scala 543:29:chipyard.TestHarness.RocketConfig.fir@194834.6]
  assign _T_968 = _T_966 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194836.6]
  assign _T_969 = ~_T_968; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194837.6]
  assign _T_970 = io_in_d_bits_denied == _T_947; // @[Monitor.scala 544:29:chipyard.TestHarness.RocketConfig.fir@194842.6]
  assign _T_972 = _T_970 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194844.6]
  assign _T_973 = ~_T_972; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194845.6]
  assign _T_975 = io_in_d_valid & _T_934; // @[Monitor.scala 546:20:chipyard.TestHarness.RocketConfig.fir@194852.4]
  assign _T_987 = _T_985 - 9'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@194875.4]
  assign a_first = _T_985 == 9'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@194876.4]
  assign _T_1005 = _T_1003 - 9'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@194897.4]
  assign d_first = _T_1003 == 9'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@194898.4]
  assign _T_1018 = 16'h10 - 16'h1; // @[Monitor.scala 606:57:chipyard.TestHarness.RocketConfig.fir@194922.4]
  assign _GEN_56 = {{12'd0}, inflight_opcodes}; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@194923.4]
  assign _T_1019 = _GEN_56 & _T_1018; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@194923.4]
  assign _T_1020 = {{1'd0}, _T_1019[15:1]}; // @[Monitor.scala 629:152:chipyard.TestHarness.RocketConfig.fir@194924.4]
  assign _T_1026 = 16'h100 - 16'h1; // @[Monitor.scala 606:57:chipyard.TestHarness.RocketConfig.fir@194933.4]
  assign _GEN_58 = {{8'd0}, inflight_sizes}; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@194934.4]
  assign _T_1027 = _GEN_58 & _T_1026; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@194934.4]
  assign _T_1028 = {{1'd0}, _T_1027[15:1]}; // @[Monitor.scala 633:144:chipyard.TestHarness.RocketConfig.fir@194935.4]
  assign _T_1032 = _T_874 & a_first; // @[Monitor.scala 643:27:chipyard.TestHarness.RocketConfig.fir@194960.4]
  assign a_opcodes_set_interm = _T_1032 ? 4'h9 : 4'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@194962.4]
  assign _T_1040 = {{15'd0}, a_opcodes_set_interm}; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@194972.6]
  assign a_sizes_set_interm = _T_1032 ? 5'hd : 5'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@194962.4]
  assign _T_1042 = {{15'd0}, a_sizes_set_interm}; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@194975.6]
  assign _T_1045 = ~inflight; // @[Monitor.scala 649:17:chipyard.TestHarness.RocketConfig.fir@194979.6]
  assign _T_1047 = _T_1045 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@194981.6]
  assign _T_1048 = ~_T_1047; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@194982.6]
  assign _GEN_15 = _T_1032 ? 2'h1 : 2'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@194962.4]
  assign _GEN_18 = _T_1032 ? _T_1040 : 19'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@194962.4]
  assign _GEN_19 = _T_1032 ? _T_1042 : 20'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@194962.4]
  assign _T_1051 = io_in_d_valid & d_first; // @[Monitor.scala 660:27:chipyard.TestHarness.RocketConfig.fir@194996.4]
  assign _T_1053 = ~_T_730; // @[Monitor.scala 660:75:chipyard.TestHarness.RocketConfig.fir@194998.4]
  assign _T_1054 = _T_1051 & _T_1053; // @[Monitor.scala 660:72:chipyard.TestHarness.RocketConfig.fir@194999.4]
  assign _T_1061 = {{15'd0}, _T_1018}; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@195008.6]
  assign _T_1067 = {{15'd0}, _T_1026}; // @[Monitor.scala 663:72:chipyard.TestHarness.RocketConfig.fir@195015.6]
  assign _GEN_20 = _T_1054 ? 2'h1 : 2'h0; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@195000.4]
  assign _GEN_21 = _T_1054 ? _T_1061 : 31'h0; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@195000.4]
  assign _GEN_22 = _T_1054 ? _T_1067 : 31'h0; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@195000.4]
  assign _T_1076 = 4'h6 == io_in_d_bits_size; // @[Monitor.scala 666:142:chipyard.TestHarness.RocketConfig.fir@195027.6]
  assign _T_1077 = io_in_a_valid & _T_1076; // @[Monitor.scala 666:119:chipyard.TestHarness.RocketConfig.fir@195028.6]
  assign _T_1078 = _T_1077 & a_first; // @[Monitor.scala 666:166:chipyard.TestHarness.RocketConfig.fir@195029.6]
  assign _T_1079 = inflight | _T_1078; // @[Monitor.scala 666:49:chipyard.TestHarness.RocketConfig.fir@195030.6]
  assign _T_1081 = _T_1079 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@195032.6]
  assign _T_1082 = ~_T_1081; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@195033.6]
  assign a_opcode_lookup = _T_1020[3:0]; // @[:chipyard.TestHarness.RocketConfig.fir@194915.4 :chipyard.TestHarness.RocketConfig.fir@194916.4 Monitor.scala 629:21:chipyard.TestHarness.RocketConfig.fir@194925.4]
  assign _GEN_25 = 3'h2 == a_opcode_lookup[2:0] ? 3'h1 : 3'h0; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@195039.6]
  assign _GEN_26 = 3'h3 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_25; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@195039.6]
  assign _GEN_27 = 3'h4 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_26; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@195039.6]
  assign _GEN_28 = 3'h5 == a_opcode_lookup[2:0] ? 3'h2 : _GEN_27; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@195039.6]
  assign _GEN_29 = 3'h6 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_28; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@195039.6]
  assign _GEN_30 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_29; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@195039.6]
  assign _T_1084 = io_in_d_bits_opcode == _GEN_30; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@195039.6]
  assign _GEN_37 = 3'h6 == a_opcode_lookup[2:0] ? 3'h5 : _GEN_28; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@195041.6]
  assign _GEN_38 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_37; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@195041.6]
  assign _T_1086 = io_in_d_bits_opcode == _GEN_38; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@195041.6]
  assign _T_1087 = _T_1084 | _T_1086; // @[Monitor.scala 667:71:chipyard.TestHarness.RocketConfig.fir@195042.6]
  assign _T_1090 = _T_824 | _T_824; // @[Monitor.scala 668:99:chipyard.TestHarness.RocketConfig.fir@195045.6]
  assign _T_1091 = io_in_a_valid & _T_1090; // @[Monitor.scala 668:34:chipyard.TestHarness.RocketConfig.fir@195046.6]
  assign _T_1092 = _T_1087 | _T_1091; // @[Monitor.scala 668:15:chipyard.TestHarness.RocketConfig.fir@195047.6]
  assign _T_1094 = _T_1092 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@195049.6]
  assign _T_1095 = ~_T_1094; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@195050.6]
  assign a_size_lookup = _T_1028[7:0]; // @[:chipyard.TestHarness.RocketConfig.fir@194926.4 :chipyard.TestHarness.RocketConfig.fir@194927.4 Monitor.scala 633:19:chipyard.TestHarness.RocketConfig.fir@194936.4]
  assign _GEN_60 = {{4'd0}, io_in_d_bits_size}; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@195055.6]
  assign _T_1096 = _GEN_60 == a_size_lookup; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@195055.6]
  assign _T_1099 = _T_1096 | _T_1077; // @[Monitor.scala 670:53:chipyard.TestHarness.RocketConfig.fir@195058.6]
  assign _T_1101 = _T_1099 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@195060.6]
  assign _T_1102 = ~_T_1101; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@195061.6]
  assign _T_1104 = _T_1051 & a_first; // @[Monitor.scala 672:36:chipyard.TestHarness.RocketConfig.fir@195068.4]
  assign _T_1105 = _T_1104 & io_in_a_valid; // @[Monitor.scala 672:47:chipyard.TestHarness.RocketConfig.fir@195069.4]
  assign _T_1109 = _T_1105 & _T_1053; // @[Monitor.scala 672:116:chipyard.TestHarness.RocketConfig.fir@195073.4]
  assign _T_1113 = io_in_a_ready | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@195078.6]
  assign _T_1114 = ~_T_1113; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@195079.6]
  assign a_set = _GEN_15[0]; // @[:chipyard.TestHarness.RocketConfig.fir@194909.4 :chipyard.TestHarness.RocketConfig.fir@194910.4 Monitor.scala 644:13:chipyard.TestHarness.RocketConfig.fir@194964.6]
  assign d_clr = _GEN_20[0]; // @[:chipyard.TestHarness.RocketConfig.fir@194988.4 :chipyard.TestHarness.RocketConfig.fir@194989.4 Monitor.scala 661:13:chipyard.TestHarness.RocketConfig.fir@195002.6]
  assign _T_1115 = a_set != d_clr; // @[Monitor.scala 677:20:chipyard.TestHarness.RocketConfig.fir@195085.4]
  assign _T_1116 = |a_set; // @[Monitor.scala 677:40:chipyard.TestHarness.RocketConfig.fir@195086.4]
  assign _T_1117 = ~_T_1116; // @[Monitor.scala 677:33:chipyard.TestHarness.RocketConfig.fir@195087.4]
  assign _T_1118 = _T_1115 | _T_1117; // @[Monitor.scala 677:30:chipyard.TestHarness.RocketConfig.fir@195088.4]
  assign _T_1120 = _T_1118 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@195090.4]
  assign _T_1121 = ~_T_1120; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@195091.4]
  assign _T_1122 = inflight | a_set; // @[Monitor.scala 680:27:chipyard.TestHarness.RocketConfig.fir@195096.4]
  assign _T_1123 = ~d_clr; // @[Monitor.scala 680:38:chipyard.TestHarness.RocketConfig.fir@195097.4]
  assign _T_1124 = _T_1122 & _T_1123; // @[Monitor.scala 680:36:chipyard.TestHarness.RocketConfig.fir@195098.4]
  assign a_opcodes_set = _GEN_18[3:0]; // @[:chipyard.TestHarness.RocketConfig.fir@194911.4 :chipyard.TestHarness.RocketConfig.fir@194912.4 Monitor.scala 647:21:chipyard.TestHarness.RocketConfig.fir@194973.6]
  assign _T_1125 = inflight_opcodes | a_opcodes_set; // @[Monitor.scala 681:43:chipyard.TestHarness.RocketConfig.fir@195100.4]
  assign d_opcodes_clr = _GEN_21[3:0]; // @[:chipyard.TestHarness.RocketConfig.fir@194990.4 :chipyard.TestHarness.RocketConfig.fir@194991.4 Monitor.scala 662:21:chipyard.TestHarness.RocketConfig.fir@195009.6]
  assign _T_1126 = ~d_opcodes_clr; // @[Monitor.scala 681:62:chipyard.TestHarness.RocketConfig.fir@195101.4]
  assign _T_1127 = _T_1125 & _T_1126; // @[Monitor.scala 681:60:chipyard.TestHarness.RocketConfig.fir@195102.4]
  assign a_sizes_set = _GEN_19[7:0]; // @[:chipyard.TestHarness.RocketConfig.fir@194913.4 :chipyard.TestHarness.RocketConfig.fir@194914.4 Monitor.scala 648:19:chipyard.TestHarness.RocketConfig.fir@194976.6]
  assign _T_1128 = inflight_sizes | a_sizes_set; // @[Monitor.scala 682:39:chipyard.TestHarness.RocketConfig.fir@195104.4]
  assign d_sizes_clr = _GEN_22[7:0]; // @[:chipyard.TestHarness.RocketConfig.fir@194992.4 :chipyard.TestHarness.RocketConfig.fir@194993.4 Monitor.scala 663:19:chipyard.TestHarness.RocketConfig.fir@195016.6]
  assign _T_1129 = ~d_sizes_clr; // @[Monitor.scala 682:56:chipyard.TestHarness.RocketConfig.fir@195105.4]
  assign _T_1130 = _T_1128 & _T_1129; // @[Monitor.scala 682:54:chipyard.TestHarness.RocketConfig.fir@195106.4]
  assign _T_1132 = |inflight; // @[Monitor.scala 687:26:chipyard.TestHarness.RocketConfig.fir@195111.4]
  assign _T_1133 = ~_T_1132; // @[Monitor.scala 687:16:chipyard.TestHarness.RocketConfig.fir@195112.4]
  assign _T_1134 = plusarg_reader_out == 32'h0; // @[Monitor.scala 687:39:chipyard.TestHarness.RocketConfig.fir@195113.4]
  assign _T_1135 = _T_1133 | _T_1134; // @[Monitor.scala 687:30:chipyard.TestHarness.RocketConfig.fir@195114.4]
  assign _T_1136 = _T_1131 < plusarg_reader_out; // @[Monitor.scala 687:59:chipyard.TestHarness.RocketConfig.fir@195115.4]
  assign _T_1137 = _T_1135 | _T_1136; // @[Monitor.scala 687:47:chipyard.TestHarness.RocketConfig.fir@195116.4]
  assign _T_1139 = _T_1137 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@195118.4]
  assign _T_1140 = ~_T_1139; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@195119.4]
  assign _T_1142 = _T_1131 + 32'h1; // @[Monitor.scala 689:26:chipyard.TestHarness.RocketConfig.fir@195125.4]
  assign _T_1145 = _T_874 | io_in_d_valid; // @[Monitor.scala 690:27:chipyard.TestHarness.RocketConfig.fir@195129.4]
  assign _GEN_61 = io_in_d_valid & _T_730; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194408.10]
  assign _GEN_69 = io_in_d_valid & _T_750; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194457.10]
  assign _GEN_77 = io_in_d_valid & _T_778; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194515.10]
  assign _GEN_85 = io_in_d_valid & _T_807; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194567.10]
  assign _GEN_89 = io_in_d_valid & _T_824; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194602.10]
  assign _GEN_93 = io_in_d_valid & _T_842; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194638.10]
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
  _T_898 = _RAND_1[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_931 = _RAND_2[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_942 = _RAND_3[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_943 = _RAND_4[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_944 = _RAND_5[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  _T_946 = _RAND_6[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  _T_947 = _RAND_7[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  inflight = _RAND_8[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  inflight_opcodes = _RAND_9[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  inflight_sizes = _RAND_10[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  _T_985 = _RAND_11[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  _T_1003 = _RAND_12[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  _T_1131 = _RAND_13[31:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      _T_883 <= 9'h0;
    end else if (_T_874) begin
      if (_T_886) begin
        _T_883 <= 9'h0;
      end else begin
        _T_883 <= _T_885;
      end
    end
    if (_T_922) begin
      _T_898 <= io_in_a_bits_address;
    end
    if (reset) begin
      _T_931 <= 9'h0;
    end else if (io_in_d_valid) begin
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
        _T_985 <= 9'h0;
      end else begin
        _T_985 <= _T_987;
      end
    end
    if (reset) begin
      _T_1003 <= 9'h0;
    end else if (io_in_d_valid) begin
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
        if (io_in_a_valid & _T_318) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Get type unsupported by manager (connected at Frontend.scala:353:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@193837.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (io_in_a_valid & _T_318) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@193838.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_in_a_valid & _T_156) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get address not aligned to size (connected at Frontend.scala:353:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@193851.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (io_in_a_valid & _T_156) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@193852.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel has invalid opcode (connected at Frontend.scala:353:21)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194386.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194387.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_61 & _T_737) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck smaller than a beat (connected at Frontend.scala:353:21)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194408.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_61 & _T_737) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194409.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_61 & _T_741) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseeAck carries invalid param (connected at Frontend.scala:353:21)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194416.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_61 & _T_741) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194417.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_61 & _T_745) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck is corrupt (connected at Frontend.scala:353:21)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194424.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_61 & _T_745) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194425.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_61 & _T_749) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck is denied (connected at Frontend.scala:353:21)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194432.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_61 & _T_749) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194433.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_69 & _T_737) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant smaller than a beat (connected at Frontend.scala:353:21)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194457.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_69 & _T_737) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194458.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_69 & _T_764) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid cap param (connected at Frontend.scala:353:21)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194465.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_69 & _T_764) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194466.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_69 & _T_768) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries toN param (connected at Frontend.scala:353:21)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194473.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_69 & _T_768) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194474.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_69 & _T_745) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant is corrupt (connected at Frontend.scala:353:21)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194481.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_69 & _T_745) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194482.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_77 & _T_737) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData smaller than a beat (connected at Frontend.scala:353:21)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194515.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_77 & _T_737) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194516.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_77 & _T_764) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid cap param (connected at Frontend.scala:353:21)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194523.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_77 & _T_764) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194524.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_77 & _T_768) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries toN param (connected at Frontend.scala:353:21)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194531.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_77 & _T_768) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194532.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_77 & _T_801) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData is denied but not corrupt (connected at Frontend.scala:353:21)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194540.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_77 & _T_801) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194541.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_741) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck carries invalid param (connected at Frontend.scala:353:21)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194567.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_741) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194568.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_745) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck is corrupt (connected at Frontend.scala:353:21)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194575.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_745) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194576.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_89 & _T_741) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData carries invalid param (connected at Frontend.scala:353:21)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194602.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_89 & _T_741) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194603.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_89 & _T_801) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData is denied but not corrupt (connected at Frontend.scala:353:21)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194611.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_89 & _T_801) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194612.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_93 & _T_741) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck carries invalid param (connected at Frontend.scala:353:21)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194638.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_93 & _T_741) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194639.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_93 & _T_745) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck is corrupt (connected at Frontend.scala:353:21)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194646.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_93 & _T_745) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194647.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel address changed with multibeat operation (connected at Frontend.scala:353:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@194758.8]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@194759.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel opcode changed within multibeat operation (connected at Frontend.scala:353:21)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194807.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194808.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel param changed within multibeat operation (connected at Frontend.scala:353:21)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194815.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194816.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel size changed within multibeat operation (connected at Frontend.scala:353:21)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194823.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194824.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel sink changed with multibeat operation (connected at Frontend.scala:353:21)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194839.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194840.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel denied changed with multibeat operation (connected at Frontend.scala:353:21)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194847.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@194848.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel re-used a source ID (connected at Frontend.scala:353:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@194984.8]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@194985.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1054 & _T_1082) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel acknowledged for nothing inflight (connected at Frontend.scala:353:21)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@195035.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1054 & _T_1082) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@195036.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1054 & _T_1095) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper opcode response (connected at Frontend.scala:353:21)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@195052.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1054 & _T_1095) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@195053.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1054 & _T_1102) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper response size (connected at Frontend.scala:353:21)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@195063.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1054 & _T_1102) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@195064.8]
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
          $fwrite(32'h80000002,"Assertion failed: ready check\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@195081.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@195082.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' and 'D' concurrent, despite minlatency 4 (connected at Frontend.scala:353:21)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@195093.6]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@195094.6]
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
          $fwrite(32'h80000002,"Assertion failed: TileLink timeout expired (connected at Frontend.scala:353:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@195121.6]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@195122.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
