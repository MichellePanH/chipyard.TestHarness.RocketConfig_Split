module TLMonitor_54( // @[:chipyard.TestHarness.RocketConfig.fir@132674.2]
  input        clock, // @[:chipyard.TestHarness.RocketConfig.fir@132675.4]
  input        reset, // @[:chipyard.TestHarness.RocketConfig.fir@132676.4]
  input        io_in_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@132677.4]
  input        io_in_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@132677.4]
  input  [2:0] io_in_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@132677.4]
  input  [8:0] io_in_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@132677.4]
  input  [3:0] io_in_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@132677.4]
  input        io_in_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@132677.4]
  input        io_in_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@132677.4]
  input  [2:0] io_in_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@132677.4]
  input  [1:0] io_in_d_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@132677.4]
  input  [1:0] io_in_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@132677.4]
  input        io_in_d_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@132677.4]
  input        io_in_d_bits_sink, // @[:chipyard.TestHarness.RocketConfig.fir@132677.4]
  input        io_in_d_bits_denied, // @[:chipyard.TestHarness.RocketConfig.fir@132677.4]
  input        io_in_d_bits_corrupt // @[:chipyard.TestHarness.RocketConfig.fir@132677.4]
);
  wire [31:0] plusarg_reader_out; // @[PlusArg.scala 44:11:chipyard.TestHarness.RocketConfig.fir@134183.4]
  wire [8:0] _T_10; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@132696.6]
  wire  _T_11; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@132697.6]
  wire [9:0] _T_48; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@132734.6]
  wire  _T_56; // @[Monitor.scala 79:25:chipyard.TestHarness.RocketConfig.fir@132746.6]
  wire [9:0] _T_61; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@132752.8]
  wire  _T_62; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@132753.8]
  wire [8:0] _T_63; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@132754.8]
  wire [9:0] _T_64; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@132755.8]
  wire [9:0] _T_66; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@132757.8]
  wire  _T_67; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@132758.8]
  wire [8:0] _T_68; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@132759.8]
  wire [9:0] _T_69; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@132760.8]
  wire [9:0] _T_71; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@132762.8]
  wire  _T_72; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@132763.8]
  wire [8:0] _T_73; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@132764.8]
  wire [9:0] _T_74; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@132765.8]
  wire [9:0] _T_76; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@132767.8]
  wire  _T_77; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@132768.8]
  wire [8:0] _T_78; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@132769.8]
  wire [9:0] _T_79; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@132770.8]
  wire [9:0] _T_81; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@132772.8]
  wire  _T_82; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@132773.8]
  wire [8:0] _T_83; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@132774.8]
  wire [9:0] _T_84; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@132775.8]
  wire [9:0] _T_86; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@132777.8]
  wire  _T_87; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@132778.8]
  wire  _T_88; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@132779.8]
  wire  _T_89; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@132780.8]
  wire  _T_90; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@132781.8]
  wire  _T_91; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@132782.8]
  wire  _T_92; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@132783.8]
  wire  _T_97; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@132788.8]
  wire  _T_109; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@132816.8]
  wire  _T_110; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@132817.8]
  wire [3:0] _T_115; // @[Monitor.scala 86:18:chipyard.TestHarness.RocketConfig.fir@132830.8]
  wire  _T_116; // @[Monitor.scala 86:31:chipyard.TestHarness.RocketConfig.fir@132831.8]
  wire  _T_118; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@132833.8]
  wire  _T_119; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@132834.8]
  wire  _T_124; // @[Monitor.scala 90:25:chipyard.TestHarness.RocketConfig.fir@132848.6]
  wire  _T_196; // @[Monitor.scala 102:25:chipyard.TestHarness.RocketConfig.fir@132958.6]
  wire  _T_239; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@133002.8]
  wire  _T_240; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@133003.8]
  wire  _T_251; // @[Monitor.scala 107:30:chipyard.TestHarness.RocketConfig.fir@133030.8]
  wire  _T_253; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@133032.8]
  wire  _T_254; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@133033.8]
  wire  _T_259; // @[Monitor.scala 111:25:chipyard.TestHarness.RocketConfig.fir@133047.6]
  wire  _T_318; // @[Monitor.scala 119:25:chipyard.TestHarness.RocketConfig.fir@133128.6]
  wire  _T_379; // @[Monitor.scala 127:25:chipyard.TestHarness.RocketConfig.fir@133211.6]
  wire  _T_435; // @[Monitor.scala 135:25:chipyard.TestHarness.RocketConfig.fir@133289.6]
  wire  _T_491; // @[Monitor.scala 143:25:chipyard.TestHarness.RocketConfig.fir@133367.6]
  wire  _T_551; // @[Bundles.scala 44:24:chipyard.TestHarness.RocketConfig.fir@133455.6]
  wire  _T_553; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133457.6]
  wire  _T_554; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133458.6]
  wire  _T_555; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@133463.6]
  wire  _T_558; // @[Monitor.scala 307:25:chipyard.TestHarness.RocketConfig.fir@133468.6]
  wire  _T_560; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133471.8]
  wire  _T_561; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133472.8]
  wire  _T_562; // @[Monitor.scala 309:27:chipyard.TestHarness.RocketConfig.fir@133477.8]
  wire  _T_564; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133479.8]
  wire  _T_565; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133480.8]
  wire  _T_566; // @[Monitor.scala 310:28:chipyard.TestHarness.RocketConfig.fir@133485.8]
  wire  _T_568; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133487.8]
  wire  _T_569; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133488.8]
  wire  _T_570; // @[Monitor.scala 311:15:chipyard.TestHarness.RocketConfig.fir@133493.8]
  wire  _T_572; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133495.8]
  wire  _T_573; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133496.8]
  wire  _T_574; // @[Monitor.scala 312:15:chipyard.TestHarness.RocketConfig.fir@133501.8]
  wire  _T_576; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133503.8]
  wire  _T_577; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133504.8]
  wire  _T_578; // @[Monitor.scala 315:25:chipyard.TestHarness.RocketConfig.fir@133510.6]
  wire  _T_589; // @[Bundles.scala 104:26:chipyard.TestHarness.RocketConfig.fir@133534.8]
  wire  _T_591; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133536.8]
  wire  _T_592; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133537.8]
  wire  _T_593; // @[Monitor.scala 320:28:chipyard.TestHarness.RocketConfig.fir@133542.8]
  wire  _T_595; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133544.8]
  wire  _T_596; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133545.8]
  wire  _T_606; // @[Monitor.scala 325:25:chipyard.TestHarness.RocketConfig.fir@133568.6]
  wire  _T_626; // @[Monitor.scala 331:30:chipyard.TestHarness.RocketConfig.fir@133609.8]
  wire  _T_628; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133611.8]
  wire  _T_629; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133612.8]
  wire  _T_635; // @[Monitor.scala 335:25:chipyard.TestHarness.RocketConfig.fir@133627.6]
  wire  _T_652; // @[Monitor.scala 343:25:chipyard.TestHarness.RocketConfig.fir@133662.6]
  wire  _T_670; // @[Monitor.scala 351:25:chipyard.TestHarness.RocketConfig.fir@133698.6]
  wire  _T_702; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@133764.4]
  reg  _T_711; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@133773.4]
  reg [31:0] _RAND_0;
  wire  _T_713; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@133775.4]
  wire  _T_714; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@133776.4]
  reg [2:0] _T_722; // @[Monitor.scala 381:22:chipyard.TestHarness.RocketConfig.fir@133787.4]
  reg [31:0] _RAND_1;
  reg [8:0] _T_726; // @[Monitor.scala 385:22:chipyard.TestHarness.RocketConfig.fir@133791.4]
  reg [31:0] _RAND_2;
  wire  _T_727; // @[Monitor.scala 386:22:chipyard.TestHarness.RocketConfig.fir@133792.4]
  wire  _T_728; // @[Monitor.scala 386:19:chipyard.TestHarness.RocketConfig.fir@133793.4]
  wire  _T_729; // @[Monitor.scala 387:32:chipyard.TestHarness.RocketConfig.fir@133795.6]
  wire  _T_731; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@133797.6]
  wire  _T_732; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@133798.6]
  wire  _T_745; // @[Monitor.scala 391:32:chipyard.TestHarness.RocketConfig.fir@133827.6]
  wire  _T_747; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@133829.6]
  wire  _T_748; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@133830.6]
  wire  _T_750; // @[Monitor.scala 393:20:chipyard.TestHarness.RocketConfig.fir@133837.4]
  wire  _T_751; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@133845.4]
  reg  _T_759; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@133853.4]
  reg [31:0] _RAND_3;
  wire  _T_761; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@133855.4]
  wire  _T_762; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@133856.4]
  reg [2:0] _T_770; // @[Monitor.scala 532:22:chipyard.TestHarness.RocketConfig.fir@133867.4]
  reg [31:0] _RAND_4;
  reg [1:0] _T_771; // @[Monitor.scala 533:22:chipyard.TestHarness.RocketConfig.fir@133868.4]
  reg [31:0] _RAND_5;
  reg [1:0] _T_772; // @[Monitor.scala 534:22:chipyard.TestHarness.RocketConfig.fir@133869.4]
  reg [31:0] _RAND_6;
  reg  _T_773; // @[Monitor.scala 535:22:chipyard.TestHarness.RocketConfig.fir@133870.4]
  reg [31:0] _RAND_7;
  reg  _T_774; // @[Monitor.scala 536:22:chipyard.TestHarness.RocketConfig.fir@133871.4]
  reg [31:0] _RAND_8;
  reg  _T_775; // @[Monitor.scala 537:22:chipyard.TestHarness.RocketConfig.fir@133872.4]
  reg [31:0] _RAND_9;
  wire  _T_776; // @[Monitor.scala 538:22:chipyard.TestHarness.RocketConfig.fir@133873.4]
  wire  _T_777; // @[Monitor.scala 538:19:chipyard.TestHarness.RocketConfig.fir@133874.4]
  wire  _T_778; // @[Monitor.scala 539:29:chipyard.TestHarness.RocketConfig.fir@133876.6]
  wire  _T_780; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133878.6]
  wire  _T_781; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133879.6]
  wire  _T_782; // @[Monitor.scala 540:29:chipyard.TestHarness.RocketConfig.fir@133884.6]
  wire  _T_784; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133886.6]
  wire  _T_785; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133887.6]
  wire  _T_786; // @[Monitor.scala 541:29:chipyard.TestHarness.RocketConfig.fir@133892.6]
  wire  _T_788; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133894.6]
  wire  _T_789; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133895.6]
  wire  _T_790; // @[Monitor.scala 542:29:chipyard.TestHarness.RocketConfig.fir@133900.6]
  wire  _T_792; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133902.6]
  wire  _T_793; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133903.6]
  wire  _T_794; // @[Monitor.scala 543:29:chipyard.TestHarness.RocketConfig.fir@133908.6]
  wire  _T_796; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133910.6]
  wire  _T_797; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133911.6]
  wire  _T_798; // @[Monitor.scala 544:29:chipyard.TestHarness.RocketConfig.fir@133916.6]
  wire  _T_800; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133918.6]
  wire  _T_801; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133919.6]
  wire  _T_803; // @[Monitor.scala 546:20:chipyard.TestHarness.RocketConfig.fir@133926.4]
  reg  inflight; // @[Monitor.scala 608:27:chipyard.TestHarness.RocketConfig.fir@133935.4]
  reg [31:0] _RAND_10;
  reg [3:0] inflight_opcodes; // @[Monitor.scala 610:35:chipyard.TestHarness.RocketConfig.fir@133936.4]
  reg [31:0] _RAND_11;
  reg [3:0] inflight_sizes; // @[Monitor.scala 612:33:chipyard.TestHarness.RocketConfig.fir@133937.4]
  reg [31:0] _RAND_12;
  reg  _T_813; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@133947.4]
  reg [31:0] _RAND_13;
  wire  _T_815; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@133949.4]
  wire  a_first; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@133950.4]
  reg  _T_831; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@133969.4]
  reg [31:0] _RAND_14;
  wire  _T_833; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@133971.4]
  wire  d_first; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@133972.4]
  wire [2:0] _GEN_56; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@133991.4]
  wire [3:0] _T_841; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@133991.4]
  wire [3:0] _T_842; // @[Monitor.scala 629:44:chipyard.TestHarness.RocketConfig.fir@133992.4]
  wire [15:0] _T_846; // @[Monitor.scala 606:57:chipyard.TestHarness.RocketConfig.fir@133996.4]
  wire [15:0] _GEN_57; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@133997.4]
  wire [15:0] _T_847; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@133997.4]
  wire [15:0] _T_848; // @[Monitor.scala 629:152:chipyard.TestHarness.RocketConfig.fir@133998.4]
  wire [3:0] _T_850; // @[Monitor.scala 633:40:chipyard.TestHarness.RocketConfig.fir@134003.4]
  wire [15:0] _GEN_60; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@134008.4]
  wire [15:0] _T_855; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@134008.4]
  wire [15:0] _T_856; // @[Monitor.scala 633:144:chipyard.TestHarness.RocketConfig.fir@134009.4]
  wire  _T_860; // @[Monitor.scala 643:27:chipyard.TestHarness.RocketConfig.fir@134034.4]
  wire [3:0] _T_863; // @[Monitor.scala 645:53:chipyard.TestHarness.RocketConfig.fir@134039.6]
  wire [3:0] _T_864; // @[Monitor.scala 645:61:chipyard.TestHarness.RocketConfig.fir@134040.6]
  wire [3:0] a_opcodes_set_interm; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@134036.4]
  wire [18:0] _T_868; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@134046.6]
  wire [2:0] a_sizes_set_interm; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@134036.4]
  wire [17:0] _T_870; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@134049.6]
  wire  _T_873; // @[Monitor.scala 649:17:chipyard.TestHarness.RocketConfig.fir@134053.6]
  wire  _T_875; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@134055.6]
  wire  _T_876; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@134056.6]
  wire [1:0] _GEN_15; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@134036.4]
  wire [18:0] _GEN_18; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@134036.4]
  wire [17:0] _GEN_19; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@134036.4]
  wire  _T_879; // @[Monitor.scala 660:27:chipyard.TestHarness.RocketConfig.fir@134070.4]
  wire  _T_881; // @[Monitor.scala 660:75:chipyard.TestHarness.RocketConfig.fir@134072.4]
  wire  _T_882; // @[Monitor.scala 660:72:chipyard.TestHarness.RocketConfig.fir@134073.4]
  wire [1:0] _T_883; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@134075.6]
  wire [30:0] _GEN_63; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@134082.6]
  wire [30:0] _T_889; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@134082.6]
  wire [1:0] _GEN_20; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@134074.4]
  wire [30:0] _GEN_21; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@134074.4]
  wire  _T_896; // @[Monitor.scala 665:26:chipyard.TestHarness.RocketConfig.fir@134092.4]
  wire  _T_899; // @[Monitor.scala 665:71:chipyard.TestHarness.RocketConfig.fir@134095.4]
  wire  _T_900; // @[Monitor.scala 666:25:chipyard.TestHarness.RocketConfig.fir@134097.6]
  wire  _T_903; // @[Monitor.scala 666:68:chipyard.TestHarness.RocketConfig.fir@134100.6]
  wire  _T_904; // @[Monitor.scala 666:142:chipyard.TestHarness.RocketConfig.fir@134101.6]
  wire  _T_905; // @[Monitor.scala 666:119:chipyard.TestHarness.RocketConfig.fir@134102.6]
  wire  _T_906; // @[Monitor.scala 666:166:chipyard.TestHarness.RocketConfig.fir@134103.6]
  wire  _T_907; // @[Monitor.scala 666:49:chipyard.TestHarness.RocketConfig.fir@134104.6]
  wire  _T_909; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@134106.6]
  wire  _T_910; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@134107.6]
  wire [3:0] a_opcode_lookup; // @[:chipyard.TestHarness.RocketConfig.fir@133989.4 :chipyard.TestHarness.RocketConfig.fir@133990.4 Monitor.scala 629:21:chipyard.TestHarness.RocketConfig.fir@133999.4]
  wire [2:0] _GEN_25; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@134113.6]
  wire [2:0] _GEN_26; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@134113.6]
  wire [2:0] _GEN_27; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@134113.6]
  wire [2:0] _GEN_28; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@134113.6]
  wire [2:0] _GEN_29; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@134113.6]
  wire [2:0] _GEN_30; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@134113.6]
  wire  _T_912; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@134113.6]
  wire [2:0] _GEN_37; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@134115.6]
  wire [2:0] _GEN_38; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@134115.6]
  wire  _T_914; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@134115.6]
  wire  _T_915; // @[Monitor.scala 667:71:chipyard.TestHarness.RocketConfig.fir@134116.6]
  wire [2:0] _GEN_41; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@134117.6]
  wire [2:0] _GEN_42; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@134117.6]
  wire [2:0] _GEN_43; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@134117.6]
  wire [2:0] _GEN_44; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@134117.6]
  wire [2:0] _GEN_45; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@134117.6]
  wire [2:0] _GEN_46; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@134117.6]
  wire  _T_916; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@134117.6]
  wire [2:0] _GEN_53; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@134118.6]
  wire [2:0] _GEN_54; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@134118.6]
  wire  _T_917; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@134118.6]
  wire  _T_918; // @[Monitor.scala 668:99:chipyard.TestHarness.RocketConfig.fir@134119.6]
  wire  _T_919; // @[Monitor.scala 668:34:chipyard.TestHarness.RocketConfig.fir@134120.6]
  wire  _T_920; // @[Monitor.scala 668:15:chipyard.TestHarness.RocketConfig.fir@134121.6]
  wire  _T_922; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@134123.6]
  wire  _T_923; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@134124.6]
  wire [3:0] a_size_lookup; // @[:chipyard.TestHarness.RocketConfig.fir@134000.4 :chipyard.TestHarness.RocketConfig.fir@134001.4 Monitor.scala 633:19:chipyard.TestHarness.RocketConfig.fir@134010.4]
  wire [3:0] _GEN_66; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@134129.6]
  wire  _T_924; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@134129.6]
  wire  _T_926; // @[Monitor.scala 670:72:chipyard.TestHarness.RocketConfig.fir@134131.6]
  wire  _T_927; // @[Monitor.scala 670:53:chipyard.TestHarness.RocketConfig.fir@134132.6]
  wire  _T_929; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@134134.6]
  wire  _T_930; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@134135.6]
  wire  _T_932; // @[Monitor.scala 672:36:chipyard.TestHarness.RocketConfig.fir@134142.4]
  wire  _T_933; // @[Monitor.scala 672:47:chipyard.TestHarness.RocketConfig.fir@134143.4]
  wire  _T_935; // @[Monitor.scala 672:65:chipyard.TestHarness.RocketConfig.fir@134145.4]
  wire  _T_937; // @[Monitor.scala 672:116:chipyard.TestHarness.RocketConfig.fir@134147.4]
  wire  _T_938; // @[Monitor.scala 673:15:chipyard.TestHarness.RocketConfig.fir@134149.6]
  wire  _T_939; // @[Monitor.scala 673:32:chipyard.TestHarness.RocketConfig.fir@134150.6]
  wire  _T_941; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@134152.6]
  wire  _T_942; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@134153.6]
  wire  a_set; // @[:chipyard.TestHarness.RocketConfig.fir@133983.4 :chipyard.TestHarness.RocketConfig.fir@133984.4 Monitor.scala 644:13:chipyard.TestHarness.RocketConfig.fir@134038.6]
  wire  d_clr; // @[:chipyard.TestHarness.RocketConfig.fir@134062.4 :chipyard.TestHarness.RocketConfig.fir@134063.4 Monitor.scala 661:13:chipyard.TestHarness.RocketConfig.fir@134076.6]
  wire  _T_943; // @[Monitor.scala 677:20:chipyard.TestHarness.RocketConfig.fir@134159.4]
  wire  _T_944; // @[Monitor.scala 677:40:chipyard.TestHarness.RocketConfig.fir@134160.4]
  wire  _T_945; // @[Monitor.scala 677:33:chipyard.TestHarness.RocketConfig.fir@134161.4]
  wire  _T_946; // @[Monitor.scala 677:30:chipyard.TestHarness.RocketConfig.fir@134162.4]
  wire  _T_948; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@134164.4]
  wire  _T_949; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@134165.4]
  wire  _T_950; // @[Monitor.scala 680:27:chipyard.TestHarness.RocketConfig.fir@134170.4]
  wire  _T_951; // @[Monitor.scala 680:38:chipyard.TestHarness.RocketConfig.fir@134171.4]
  wire  _T_952; // @[Monitor.scala 680:36:chipyard.TestHarness.RocketConfig.fir@134172.4]
  wire [3:0] a_opcodes_set; // @[:chipyard.TestHarness.RocketConfig.fir@133985.4 :chipyard.TestHarness.RocketConfig.fir@133986.4 Monitor.scala 647:21:chipyard.TestHarness.RocketConfig.fir@134047.6]
  wire [3:0] _T_953; // @[Monitor.scala 681:43:chipyard.TestHarness.RocketConfig.fir@134174.4]
  wire [3:0] d_opcodes_clr; // @[:chipyard.TestHarness.RocketConfig.fir@134064.4 :chipyard.TestHarness.RocketConfig.fir@134065.4 Monitor.scala 662:21:chipyard.TestHarness.RocketConfig.fir@134083.6]
  wire [3:0] _T_954; // @[Monitor.scala 681:62:chipyard.TestHarness.RocketConfig.fir@134175.4]
  wire [3:0] _T_955; // @[Monitor.scala 681:60:chipyard.TestHarness.RocketConfig.fir@134176.4]
  wire [3:0] a_sizes_set; // @[:chipyard.TestHarness.RocketConfig.fir@133987.4 :chipyard.TestHarness.RocketConfig.fir@133988.4 Monitor.scala 648:19:chipyard.TestHarness.RocketConfig.fir@134050.6]
  wire [3:0] _T_956; // @[Monitor.scala 682:39:chipyard.TestHarness.RocketConfig.fir@134178.4]
  wire [3:0] _T_958; // @[Monitor.scala 682:54:chipyard.TestHarness.RocketConfig.fir@134180.4]
  reg [31:0] _T_959; // @[Monitor.scala 684:27:chipyard.TestHarness.RocketConfig.fir@134182.4]
  reg [31:0] _RAND_15;
  wire  _T_960; // @[Monitor.scala 687:26:chipyard.TestHarness.RocketConfig.fir@134185.4]
  wire  _T_961; // @[Monitor.scala 687:16:chipyard.TestHarness.RocketConfig.fir@134186.4]
  wire  _T_962; // @[Monitor.scala 687:39:chipyard.TestHarness.RocketConfig.fir@134187.4]
  wire  _T_963; // @[Monitor.scala 687:30:chipyard.TestHarness.RocketConfig.fir@134188.4]
  wire  _T_964; // @[Monitor.scala 687:59:chipyard.TestHarness.RocketConfig.fir@134189.4]
  wire  _T_965; // @[Monitor.scala 687:47:chipyard.TestHarness.RocketConfig.fir@134190.4]
  wire  _T_967; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@134192.4]
  wire  _T_968; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@134193.4]
  wire [31:0] _T_970; // @[Monitor.scala 689:26:chipyard.TestHarness.RocketConfig.fir@134199.4]
  wire  _T_973; // @[Monitor.scala 690:27:chipyard.TestHarness.RocketConfig.fir@134203.4]
  wire  _GEN_67; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@132790.10]
  wire  _GEN_75; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@132892.10]
  wire  _GEN_85; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@133005.10]
  wire  _GEN_91; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@133094.10]
  wire  _GEN_97; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@133175.10]
  wire  _GEN_101; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@133255.10]
  wire  _GEN_107; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@133333.10]
  wire  _GEN_113; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@133411.10]
  wire  _GEN_119; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133474.10]
  wire  _GEN_129; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133516.10]
  wire  _GEN_143; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133574.10]
  wire  _GEN_157; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133633.10]
  wire  _GEN_165; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133668.10]
  wire  _GEN_173; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133704.10]
  plusarg_reader #(.FORMAT("tilelink_timeout=%d"), .DEFAULT(0), .WIDTH(32)) plusarg_reader ( // @[PlusArg.scala 44:11:chipyard.TestHarness.RocketConfig.fir@134183.4]
    .out(plusarg_reader_out)
  );
  assign _T_10 = io_in_a_bits_address & 9'h3; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@132696.6]
  assign _T_11 = _T_10 == 9'h0; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@132697.6]
  assign _T_48 = {1'b0,$signed(io_in_a_bits_address)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@132734.6]
  assign _T_56 = io_in_a_bits_opcode == 3'h6; // @[Monitor.scala 79:25:chipyard.TestHarness.RocketConfig.fir@132746.6]
  assign _T_61 = $signed(_T_48) & -10'sh40; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@132752.8]
  assign _T_62 = $signed(_T_61) == 10'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@132753.8]
  assign _T_63 = io_in_a_bits_address ^ 9'h44; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@132754.8]
  assign _T_64 = {1'b0,$signed(_T_63)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@132755.8]
  assign _T_66 = $signed(_T_64) & -10'sh4; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@132757.8]
  assign _T_67 = $signed(_T_66) == 10'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@132758.8]
  assign _T_68 = io_in_a_bits_address ^ 9'h48; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@132759.8]
  assign _T_69 = {1'b0,$signed(_T_68)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@132760.8]
  assign _T_71 = $signed(_T_69) & -10'sh18; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@132762.8]
  assign _T_72 = $signed(_T_71) == 10'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@132763.8]
  assign _T_73 = io_in_a_bits_address ^ 9'h60; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@132764.8]
  assign _T_74 = {1'b0,$signed(_T_73)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@132765.8]
  assign _T_76 = $signed(_T_74) & -10'sh20; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@132767.8]
  assign _T_77 = $signed(_T_76) == 10'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@132768.8]
  assign _T_78 = io_in_a_bits_address ^ 9'h80; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@132769.8]
  assign _T_79 = {1'b0,$signed(_T_78)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@132770.8]
  assign _T_81 = $signed(_T_79) & -10'sh80; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@132772.8]
  assign _T_82 = $signed(_T_81) == 10'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@132773.8]
  assign _T_83 = io_in_a_bits_address ^ 9'h100; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@132774.8]
  assign _T_84 = {1'b0,$signed(_T_83)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@132775.8]
  assign _T_86 = $signed(_T_84) & -10'sh100; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@132777.8]
  assign _T_87 = $signed(_T_86) == 10'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@132778.8]
  assign _T_88 = _T_62 | _T_67; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@132779.8]
  assign _T_89 = _T_88 | _T_72; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@132780.8]
  assign _T_90 = _T_89 | _T_77; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@132781.8]
  assign _T_91 = _T_90 | _T_82; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@132782.8]
  assign _T_92 = _T_91 | _T_87; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@132783.8]
  assign _T_97 = ~reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@132788.8]
  assign _T_109 = _T_11 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@132816.8]
  assign _T_110 = ~_T_109; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@132817.8]
  assign _T_115 = ~io_in_a_bits_mask; // @[Monitor.scala 86:18:chipyard.TestHarness.RocketConfig.fir@132830.8]
  assign _T_116 = _T_115 == 4'h0; // @[Monitor.scala 86:31:chipyard.TestHarness.RocketConfig.fir@132831.8]
  assign _T_118 = _T_116 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@132833.8]
  assign _T_119 = ~_T_118; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@132834.8]
  assign _T_124 = io_in_a_bits_opcode == 3'h7; // @[Monitor.scala 90:25:chipyard.TestHarness.RocketConfig.fir@132848.6]
  assign _T_196 = io_in_a_bits_opcode == 3'h4; // @[Monitor.scala 102:25:chipyard.TestHarness.RocketConfig.fir@132958.6]
  assign _T_239 = _T_92 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@133002.8]
  assign _T_240 = ~_T_239; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@133003.8]
  assign _T_251 = io_in_a_bits_mask == 4'hf; // @[Monitor.scala 107:30:chipyard.TestHarness.RocketConfig.fir@133030.8]
  assign _T_253 = _T_251 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@133032.8]
  assign _T_254 = ~_T_253; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@133033.8]
  assign _T_259 = io_in_a_bits_opcode == 3'h0; // @[Monitor.scala 111:25:chipyard.TestHarness.RocketConfig.fir@133047.6]
  assign _T_318 = io_in_a_bits_opcode == 3'h1; // @[Monitor.scala 119:25:chipyard.TestHarness.RocketConfig.fir@133128.6]
  assign _T_379 = io_in_a_bits_opcode == 3'h2; // @[Monitor.scala 127:25:chipyard.TestHarness.RocketConfig.fir@133211.6]
  assign _T_435 = io_in_a_bits_opcode == 3'h3; // @[Monitor.scala 135:25:chipyard.TestHarness.RocketConfig.fir@133289.6]
  assign _T_491 = io_in_a_bits_opcode == 3'h5; // @[Monitor.scala 143:25:chipyard.TestHarness.RocketConfig.fir@133367.6]
  assign _T_551 = io_in_d_bits_opcode <= 3'h6; // @[Bundles.scala 44:24:chipyard.TestHarness.RocketConfig.fir@133455.6]
  assign _T_553 = _T_551 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133457.6]
  assign _T_554 = ~_T_553; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133458.6]
  assign _T_555 = ~io_in_d_bits_source; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@133463.6]
  assign _T_558 = io_in_d_bits_opcode == 3'h6; // @[Monitor.scala 307:25:chipyard.TestHarness.RocketConfig.fir@133468.6]
  assign _T_560 = _T_555 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133471.8]
  assign _T_561 = ~_T_560; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133472.8]
  assign _T_562 = io_in_d_bits_size >= 2'h2; // @[Monitor.scala 309:27:chipyard.TestHarness.RocketConfig.fir@133477.8]
  assign _T_564 = _T_562 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133479.8]
  assign _T_565 = ~_T_564; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133480.8]
  assign _T_566 = io_in_d_bits_param == 2'h0; // @[Monitor.scala 310:28:chipyard.TestHarness.RocketConfig.fir@133485.8]
  assign _T_568 = _T_566 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133487.8]
  assign _T_569 = ~_T_568; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133488.8]
  assign _T_570 = ~io_in_d_bits_corrupt; // @[Monitor.scala 311:15:chipyard.TestHarness.RocketConfig.fir@133493.8]
  assign _T_572 = _T_570 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133495.8]
  assign _T_573 = ~_T_572; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133496.8]
  assign _T_574 = ~io_in_d_bits_denied; // @[Monitor.scala 312:15:chipyard.TestHarness.RocketConfig.fir@133501.8]
  assign _T_576 = _T_574 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133503.8]
  assign _T_577 = ~_T_576; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133504.8]
  assign _T_578 = io_in_d_bits_opcode == 3'h4; // @[Monitor.scala 315:25:chipyard.TestHarness.RocketConfig.fir@133510.6]
  assign _T_589 = io_in_d_bits_param <= 2'h2; // @[Bundles.scala 104:26:chipyard.TestHarness.RocketConfig.fir@133534.8]
  assign _T_591 = _T_589 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133536.8]
  assign _T_592 = ~_T_591; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133537.8]
  assign _T_593 = io_in_d_bits_param != 2'h2; // @[Monitor.scala 320:28:chipyard.TestHarness.RocketConfig.fir@133542.8]
  assign _T_595 = _T_593 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133544.8]
  assign _T_596 = ~_T_595; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133545.8]
  assign _T_606 = io_in_d_bits_opcode == 3'h5; // @[Monitor.scala 325:25:chipyard.TestHarness.RocketConfig.fir@133568.6]
  assign _T_626 = _T_574 | io_in_d_bits_corrupt; // @[Monitor.scala 331:30:chipyard.TestHarness.RocketConfig.fir@133609.8]
  assign _T_628 = _T_626 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133611.8]
  assign _T_629 = ~_T_628; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133612.8]
  assign _T_635 = io_in_d_bits_opcode == 3'h0; // @[Monitor.scala 335:25:chipyard.TestHarness.RocketConfig.fir@133627.6]
  assign _T_652 = io_in_d_bits_opcode == 3'h1; // @[Monitor.scala 343:25:chipyard.TestHarness.RocketConfig.fir@133662.6]
  assign _T_670 = io_in_d_bits_opcode == 3'h2; // @[Monitor.scala 351:25:chipyard.TestHarness.RocketConfig.fir@133698.6]
  assign _T_702 = io_in_a_ready & io_in_a_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@133764.4]
  assign _T_713 = _T_711 - 1'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@133775.4]
  assign _T_714 = ~_T_711; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@133776.4]
  assign _T_727 = ~_T_714; // @[Monitor.scala 386:22:chipyard.TestHarness.RocketConfig.fir@133792.4]
  assign _T_728 = io_in_a_valid & _T_727; // @[Monitor.scala 386:19:chipyard.TestHarness.RocketConfig.fir@133793.4]
  assign _T_729 = io_in_a_bits_opcode == _T_722; // @[Monitor.scala 387:32:chipyard.TestHarness.RocketConfig.fir@133795.6]
  assign _T_731 = _T_729 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@133797.6]
  assign _T_732 = ~_T_731; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@133798.6]
  assign _T_745 = io_in_a_bits_address == _T_726; // @[Monitor.scala 391:32:chipyard.TestHarness.RocketConfig.fir@133827.6]
  assign _T_747 = _T_745 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@133829.6]
  assign _T_748 = ~_T_747; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@133830.6]
  assign _T_750 = _T_702 & _T_714; // @[Monitor.scala 393:20:chipyard.TestHarness.RocketConfig.fir@133837.4]
  assign _T_751 = io_in_d_ready & io_in_d_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@133845.4]
  assign _T_761 = _T_759 - 1'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@133855.4]
  assign _T_762 = ~_T_759; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@133856.4]
  assign _T_776 = ~_T_762; // @[Monitor.scala 538:22:chipyard.TestHarness.RocketConfig.fir@133873.4]
  assign _T_777 = io_in_d_valid & _T_776; // @[Monitor.scala 538:19:chipyard.TestHarness.RocketConfig.fir@133874.4]
  assign _T_778 = io_in_d_bits_opcode == _T_770; // @[Monitor.scala 539:29:chipyard.TestHarness.RocketConfig.fir@133876.6]
  assign _T_780 = _T_778 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133878.6]
  assign _T_781 = ~_T_780; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133879.6]
  assign _T_782 = io_in_d_bits_param == _T_771; // @[Monitor.scala 540:29:chipyard.TestHarness.RocketConfig.fir@133884.6]
  assign _T_784 = _T_782 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133886.6]
  assign _T_785 = ~_T_784; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133887.6]
  assign _T_786 = io_in_d_bits_size == _T_772; // @[Monitor.scala 541:29:chipyard.TestHarness.RocketConfig.fir@133892.6]
  assign _T_788 = _T_786 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133894.6]
  assign _T_789 = ~_T_788; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133895.6]
  assign _T_790 = io_in_d_bits_source == _T_773; // @[Monitor.scala 542:29:chipyard.TestHarness.RocketConfig.fir@133900.6]
  assign _T_792 = _T_790 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133902.6]
  assign _T_793 = ~_T_792; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133903.6]
  assign _T_794 = io_in_d_bits_sink == _T_774; // @[Monitor.scala 543:29:chipyard.TestHarness.RocketConfig.fir@133908.6]
  assign _T_796 = _T_794 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133910.6]
  assign _T_797 = ~_T_796; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133911.6]
  assign _T_798 = io_in_d_bits_denied == _T_775; // @[Monitor.scala 544:29:chipyard.TestHarness.RocketConfig.fir@133916.6]
  assign _T_800 = _T_798 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133918.6]
  assign _T_801 = ~_T_800; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133919.6]
  assign _T_803 = _T_751 & _T_762; // @[Monitor.scala 546:20:chipyard.TestHarness.RocketConfig.fir@133926.4]
  assign _T_815 = _T_813 - 1'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@133949.4]
  assign a_first = ~_T_813; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@133950.4]
  assign _T_833 = _T_831 - 1'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@133971.4]
  assign d_first = ~_T_831; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@133972.4]
  assign _GEN_56 = {io_in_d_bits_source, 2'h0}; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@133991.4]
  assign _T_841 = {{1'd0}, _GEN_56}; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@133991.4]
  assign _T_842 = inflight_opcodes >> _T_841; // @[Monitor.scala 629:44:chipyard.TestHarness.RocketConfig.fir@133992.4]
  assign _T_846 = 16'h10 - 16'h1; // @[Monitor.scala 606:57:chipyard.TestHarness.RocketConfig.fir@133996.4]
  assign _GEN_57 = {{12'd0}, _T_842}; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@133997.4]
  assign _T_847 = _GEN_57 & _T_846; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@133997.4]
  assign _T_848 = {{1'd0}, _T_847[15:1]}; // @[Monitor.scala 629:152:chipyard.TestHarness.RocketConfig.fir@133998.4]
  assign _T_850 = inflight_sizes >> _T_841; // @[Monitor.scala 633:40:chipyard.TestHarness.RocketConfig.fir@134003.4]
  assign _GEN_60 = {{12'd0}, _T_850}; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@134008.4]
  assign _T_855 = _GEN_60 & _T_846; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@134008.4]
  assign _T_856 = {{1'd0}, _T_855[15:1]}; // @[Monitor.scala 633:144:chipyard.TestHarness.RocketConfig.fir@134009.4]
  assign _T_860 = _T_702 & a_first; // @[Monitor.scala 643:27:chipyard.TestHarness.RocketConfig.fir@134034.4]
  assign _T_863 = {io_in_a_bits_opcode, 1'h0}; // @[Monitor.scala 645:53:chipyard.TestHarness.RocketConfig.fir@134039.6]
  assign _T_864 = _T_863 | 4'h1; // @[Monitor.scala 645:61:chipyard.TestHarness.RocketConfig.fir@134040.6]
  assign a_opcodes_set_interm = _T_860 ? _T_864 : 4'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@134036.4]
  assign _T_868 = {{15'd0}, a_opcodes_set_interm}; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@134046.6]
  assign a_sizes_set_interm = _T_860 ? 3'h5 : 3'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@134036.4]
  assign _T_870 = {{15'd0}, a_sizes_set_interm}; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@134049.6]
  assign _T_873 = ~inflight; // @[Monitor.scala 649:17:chipyard.TestHarness.RocketConfig.fir@134053.6]
  assign _T_875 = _T_873 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@134055.6]
  assign _T_876 = ~_T_875; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@134056.6]
  assign _GEN_15 = _T_860 ? 2'h1 : 2'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@134036.4]
  assign _GEN_18 = _T_860 ? _T_868 : 19'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@134036.4]
  assign _GEN_19 = _T_860 ? _T_870 : 18'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@134036.4]
  assign _T_879 = _T_751 & d_first; // @[Monitor.scala 660:27:chipyard.TestHarness.RocketConfig.fir@134070.4]
  assign _T_881 = ~_T_558; // @[Monitor.scala 660:75:chipyard.TestHarness.RocketConfig.fir@134072.4]
  assign _T_882 = _T_879 & _T_881; // @[Monitor.scala 660:72:chipyard.TestHarness.RocketConfig.fir@134073.4]
  assign _T_883 = 2'h1 << io_in_d_bits_source; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@134075.6]
  assign _GEN_63 = {{15'd0}, _T_846}; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@134082.6]
  assign _T_889 = _GEN_63 << _T_841; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@134082.6]
  assign _GEN_20 = _T_882 ? _T_883 : 2'h0; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@134074.4]
  assign _GEN_21 = _T_882 ? _T_889 : 31'h0; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@134074.4]
  assign _T_896 = io_in_d_valid & d_first; // @[Monitor.scala 665:26:chipyard.TestHarness.RocketConfig.fir@134092.4]
  assign _T_899 = _T_896 & _T_881; // @[Monitor.scala 665:71:chipyard.TestHarness.RocketConfig.fir@134095.4]
  assign _T_900 = inflight >> io_in_d_bits_source; // @[Monitor.scala 666:25:chipyard.TestHarness.RocketConfig.fir@134097.6]
  assign _T_903 = io_in_a_valid & _T_555; // @[Monitor.scala 666:68:chipyard.TestHarness.RocketConfig.fir@134100.6]
  assign _T_904 = 2'h2 == io_in_d_bits_size; // @[Monitor.scala 666:142:chipyard.TestHarness.RocketConfig.fir@134101.6]
  assign _T_905 = _T_903 & _T_904; // @[Monitor.scala 666:119:chipyard.TestHarness.RocketConfig.fir@134102.6]
  assign _T_906 = _T_905 & a_first; // @[Monitor.scala 666:166:chipyard.TestHarness.RocketConfig.fir@134103.6]
  assign _T_907 = _T_900 | _T_906; // @[Monitor.scala 666:49:chipyard.TestHarness.RocketConfig.fir@134104.6]
  assign _T_909 = _T_907 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@134106.6]
  assign _T_910 = ~_T_909; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@134107.6]
  assign a_opcode_lookup = _T_848[3:0]; // @[:chipyard.TestHarness.RocketConfig.fir@133989.4 :chipyard.TestHarness.RocketConfig.fir@133990.4 Monitor.scala 629:21:chipyard.TestHarness.RocketConfig.fir@133999.4]
  assign _GEN_25 = 3'h2 == a_opcode_lookup[2:0] ? 3'h1 : 3'h0; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@134113.6]
  assign _GEN_26 = 3'h3 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_25; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@134113.6]
  assign _GEN_27 = 3'h4 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_26; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@134113.6]
  assign _GEN_28 = 3'h5 == a_opcode_lookup[2:0] ? 3'h2 : _GEN_27; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@134113.6]
  assign _GEN_29 = 3'h6 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_28; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@134113.6]
  assign _GEN_30 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_29; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@134113.6]
  assign _T_912 = io_in_d_bits_opcode == _GEN_30; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@134113.6]
  assign _GEN_37 = 3'h6 == a_opcode_lookup[2:0] ? 3'h5 : _GEN_28; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@134115.6]
  assign _GEN_38 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_37; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@134115.6]
  assign _T_914 = io_in_d_bits_opcode == _GEN_38; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@134115.6]
  assign _T_915 = _T_912 | _T_914; // @[Monitor.scala 667:71:chipyard.TestHarness.RocketConfig.fir@134116.6]
  assign _GEN_41 = 3'h2 == io_in_a_bits_opcode ? 3'h1 : 3'h0; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@134117.6]
  assign _GEN_42 = 3'h3 == io_in_a_bits_opcode ? 3'h1 : _GEN_41; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@134117.6]
  assign _GEN_43 = 3'h4 == io_in_a_bits_opcode ? 3'h1 : _GEN_42; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@134117.6]
  assign _GEN_44 = 3'h5 == io_in_a_bits_opcode ? 3'h2 : _GEN_43; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@134117.6]
  assign _GEN_45 = 3'h6 == io_in_a_bits_opcode ? 3'h4 : _GEN_44; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@134117.6]
  assign _GEN_46 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_45; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@134117.6]
  assign _T_916 = io_in_d_bits_opcode == _GEN_46; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@134117.6]
  assign _GEN_53 = 3'h6 == io_in_a_bits_opcode ? 3'h5 : _GEN_44; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@134118.6]
  assign _GEN_54 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_53; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@134118.6]
  assign _T_917 = io_in_d_bits_opcode == _GEN_54; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@134118.6]
  assign _T_918 = _T_916 | _T_917; // @[Monitor.scala 668:99:chipyard.TestHarness.RocketConfig.fir@134119.6]
  assign _T_919 = io_in_a_valid & _T_918; // @[Monitor.scala 668:34:chipyard.TestHarness.RocketConfig.fir@134120.6]
  assign _T_920 = _T_915 | _T_919; // @[Monitor.scala 668:15:chipyard.TestHarness.RocketConfig.fir@134121.6]
  assign _T_922 = _T_920 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@134123.6]
  assign _T_923 = ~_T_922; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@134124.6]
  assign a_size_lookup = _T_856[3:0]; // @[:chipyard.TestHarness.RocketConfig.fir@134000.4 :chipyard.TestHarness.RocketConfig.fir@134001.4 Monitor.scala 633:19:chipyard.TestHarness.RocketConfig.fir@134010.4]
  assign _GEN_66 = {{2'd0}, io_in_d_bits_size}; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@134129.6]
  assign _T_924 = _GEN_66 == a_size_lookup; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@134129.6]
  assign _T_926 = io_in_a_valid & _T_904; // @[Monitor.scala 670:72:chipyard.TestHarness.RocketConfig.fir@134131.6]
  assign _T_927 = _T_924 | _T_926; // @[Monitor.scala 670:53:chipyard.TestHarness.RocketConfig.fir@134132.6]
  assign _T_929 = _T_927 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@134134.6]
  assign _T_930 = ~_T_929; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@134135.6]
  assign _T_932 = _T_896 & a_first; // @[Monitor.scala 672:36:chipyard.TestHarness.RocketConfig.fir@134142.4]
  assign _T_933 = _T_932 & io_in_a_valid; // @[Monitor.scala 672:47:chipyard.TestHarness.RocketConfig.fir@134143.4]
  assign _T_935 = _T_933 & _T_555; // @[Monitor.scala 672:65:chipyard.TestHarness.RocketConfig.fir@134145.4]
  assign _T_937 = _T_935 & _T_881; // @[Monitor.scala 672:116:chipyard.TestHarness.RocketConfig.fir@134147.4]
  assign _T_938 = ~io_in_d_ready; // @[Monitor.scala 673:15:chipyard.TestHarness.RocketConfig.fir@134149.6]
  assign _T_939 = _T_938 | io_in_a_ready; // @[Monitor.scala 673:32:chipyard.TestHarness.RocketConfig.fir@134150.6]
  assign _T_941 = _T_939 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@134152.6]
  assign _T_942 = ~_T_941; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@134153.6]
  assign a_set = _GEN_15[0]; // @[:chipyard.TestHarness.RocketConfig.fir@133983.4 :chipyard.TestHarness.RocketConfig.fir@133984.4 Monitor.scala 644:13:chipyard.TestHarness.RocketConfig.fir@134038.6]
  assign d_clr = _GEN_20[0]; // @[:chipyard.TestHarness.RocketConfig.fir@134062.4 :chipyard.TestHarness.RocketConfig.fir@134063.4 Monitor.scala 661:13:chipyard.TestHarness.RocketConfig.fir@134076.6]
  assign _T_943 = a_set != d_clr; // @[Monitor.scala 677:20:chipyard.TestHarness.RocketConfig.fir@134159.4]
  assign _T_944 = |a_set; // @[Monitor.scala 677:40:chipyard.TestHarness.RocketConfig.fir@134160.4]
  assign _T_945 = ~_T_944; // @[Monitor.scala 677:33:chipyard.TestHarness.RocketConfig.fir@134161.4]
  assign _T_946 = _T_943 | _T_945; // @[Monitor.scala 677:30:chipyard.TestHarness.RocketConfig.fir@134162.4]
  assign _T_948 = _T_946 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@134164.4]
  assign _T_949 = ~_T_948; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@134165.4]
  assign _T_950 = inflight | a_set; // @[Monitor.scala 680:27:chipyard.TestHarness.RocketConfig.fir@134170.4]
  assign _T_951 = ~d_clr; // @[Monitor.scala 680:38:chipyard.TestHarness.RocketConfig.fir@134171.4]
  assign _T_952 = _T_950 & _T_951; // @[Monitor.scala 680:36:chipyard.TestHarness.RocketConfig.fir@134172.4]
  assign a_opcodes_set = _GEN_18[3:0]; // @[:chipyard.TestHarness.RocketConfig.fir@133985.4 :chipyard.TestHarness.RocketConfig.fir@133986.4 Monitor.scala 647:21:chipyard.TestHarness.RocketConfig.fir@134047.6]
  assign _T_953 = inflight_opcodes | a_opcodes_set; // @[Monitor.scala 681:43:chipyard.TestHarness.RocketConfig.fir@134174.4]
  assign d_opcodes_clr = _GEN_21[3:0]; // @[:chipyard.TestHarness.RocketConfig.fir@134064.4 :chipyard.TestHarness.RocketConfig.fir@134065.4 Monitor.scala 662:21:chipyard.TestHarness.RocketConfig.fir@134083.6]
  assign _T_954 = ~d_opcodes_clr; // @[Monitor.scala 681:62:chipyard.TestHarness.RocketConfig.fir@134175.4]
  assign _T_955 = _T_953 & _T_954; // @[Monitor.scala 681:60:chipyard.TestHarness.RocketConfig.fir@134176.4]
  assign a_sizes_set = _GEN_19[3:0]; // @[:chipyard.TestHarness.RocketConfig.fir@133987.4 :chipyard.TestHarness.RocketConfig.fir@133988.4 Monitor.scala 648:19:chipyard.TestHarness.RocketConfig.fir@134050.6]
  assign _T_956 = inflight_sizes | a_sizes_set; // @[Monitor.scala 682:39:chipyard.TestHarness.RocketConfig.fir@134178.4]
  assign _T_958 = _T_956 & _T_954; // @[Monitor.scala 682:54:chipyard.TestHarness.RocketConfig.fir@134180.4]
  assign _T_960 = |inflight; // @[Monitor.scala 687:26:chipyard.TestHarness.RocketConfig.fir@134185.4]
  assign _T_961 = ~_T_960; // @[Monitor.scala 687:16:chipyard.TestHarness.RocketConfig.fir@134186.4]
  assign _T_962 = plusarg_reader_out == 32'h0; // @[Monitor.scala 687:39:chipyard.TestHarness.RocketConfig.fir@134187.4]
  assign _T_963 = _T_961 | _T_962; // @[Monitor.scala 687:30:chipyard.TestHarness.RocketConfig.fir@134188.4]
  assign _T_964 = _T_959 < plusarg_reader_out; // @[Monitor.scala 687:59:chipyard.TestHarness.RocketConfig.fir@134189.4]
  assign _T_965 = _T_963 | _T_964; // @[Monitor.scala 687:47:chipyard.TestHarness.RocketConfig.fir@134190.4]
  assign _T_967 = _T_965 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@134192.4]
  assign _T_968 = ~_T_967; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@134193.4]
  assign _T_970 = _T_959 + 32'h1; // @[Monitor.scala 689:26:chipyard.TestHarness.RocketConfig.fir@134199.4]
  assign _T_973 = _T_702 | _T_751; // @[Monitor.scala 690:27:chipyard.TestHarness.RocketConfig.fir@134203.4]
  assign _GEN_67 = io_in_a_valid & _T_56; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@132790.10]
  assign _GEN_75 = io_in_a_valid & _T_124; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@132892.10]
  assign _GEN_85 = io_in_a_valid & _T_196; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@133005.10]
  assign _GEN_91 = io_in_a_valid & _T_259; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@133094.10]
  assign _GEN_97 = io_in_a_valid & _T_318; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@133175.10]
  assign _GEN_101 = io_in_a_valid & _T_379; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@133255.10]
  assign _GEN_107 = io_in_a_valid & _T_435; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@133333.10]
  assign _GEN_113 = io_in_a_valid & _T_491; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@133411.10]
  assign _GEN_119 = io_in_d_valid & _T_558; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133474.10]
  assign _GEN_129 = io_in_d_valid & _T_578; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133516.10]
  assign _GEN_143 = io_in_d_valid & _T_606; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133574.10]
  assign _GEN_157 = io_in_d_valid & _T_635; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133633.10]
  assign _GEN_165 = io_in_d_valid & _T_652; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133668.10]
  assign _GEN_173 = io_in_d_valid & _T_670; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133704.10]
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
  _T_726 = _RAND_2[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_759 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_770 = _RAND_4[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_771 = _RAND_5[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  _T_772 = _RAND_6[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  _T_773 = _RAND_7[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  _T_774 = _RAND_8[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  _T_775 = _RAND_9[0:0];
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
  _T_959 = _RAND_15[31:0];
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
      _T_771 <= io_in_d_bits_param;
    end
    if (_T_803) begin
      _T_772 <= io_in_d_bits_size;
    end
    if (_T_803) begin
      _T_773 <= io_in_d_bits_source;
    end
    if (_T_803) begin
      _T_774 <= io_in_d_bits_sink;
    end
    if (_T_803) begin
      _T_775 <= io_in_d_bits_denied;
    end
    if (reset) begin
      inflight <= 1'h0;
    end else begin
      inflight <= _T_952;
    end
    if (reset) begin
      inflight_opcodes <= 4'h0;
    end else begin
      inflight_opcodes <= _T_955;
    end
    if (reset) begin
      inflight_sizes <= 4'h0;
    end else begin
      inflight_sizes <= _T_958;
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
      _T_959 <= 32'h0;
    end else if (_T_973) begin
      _T_959 <= 32'h0;
    end else begin
      _T_959 <= _T_970;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_67 & _T_97) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock type unsupported by manager (connected at Debug.scala:631:46)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@132790.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_67 & _T_97) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@132791.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_67 & _T_97) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock from a client which does not support Probe (connected at Debug.scala:631:46)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@132797.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_67 & _T_97) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@132798.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_67 & _T_110) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock address not aligned to size (connected at Debug.scala:631:46)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@132819.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_67 & _T_110) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@132820.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_67 & _T_119) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock contains invalid mask (connected at Debug.scala:631:46)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@132836.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_67 & _T_119) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@132837.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_75 & _T_97) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm type unsupported by manager (connected at Debug.scala:631:46)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@132892.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_75 & _T_97) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@132893.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_75 & _T_97) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm from a client which does not support Probe (connected at Debug.scala:631:46)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@132899.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_75 & _T_97) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@132900.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_75 & _T_110) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm address not aligned to size (connected at Debug.scala:631:46)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@132921.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_75 & _T_110) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@132922.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_75 & _T_97) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm requests NtoB (connected at Debug.scala:631:46)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@132937.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_75 & _T_97) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@132938.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_75 & _T_119) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm contains invalid mask (connected at Debug.scala:631:46)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@132946.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_75 & _T_119) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@132947.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_240) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Get type unsupported by manager (connected at Debug.scala:631:46)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@133005.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_240) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@133006.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_110) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get address not aligned to size (connected at Debug.scala:631:46)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@133019.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_110) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@133020.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_254) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get contains invalid mask (connected at Debug.scala:631:46)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@133035.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_254) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@133036.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_91 & _T_240) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutFull type unsupported by manager (connected at Debug.scala:631:46)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@133094.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_91 & _T_240) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@133095.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_91 & _T_110) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull address not aligned to size (connected at Debug.scala:631:46)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@133108.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_91 & _T_110) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@133109.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_91 & _T_254) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull contains invalid mask (connected at Debug.scala:631:46)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@133124.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_91 & _T_254) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@133125.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_97 & _T_240) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutPartial type unsupported by manager (connected at Debug.scala:631:46)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@133175.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_97 & _T_240) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@133176.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_97 & _T_110) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial address not aligned to size (connected at Debug.scala:631:46)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@133189.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_97 & _T_110) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@133190.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_101 & _T_97) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Arithmetic type unsupported by manager (connected at Debug.scala:631:46)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@133255.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_101 & _T_97) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@133256.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_101 & _T_110) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic address not aligned to size (connected at Debug.scala:631:46)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@133269.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_101 & _T_110) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@133270.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_101 & _T_254) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic contains invalid mask (connected at Debug.scala:631:46)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@133285.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_101 & _T_254) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@133286.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_107 & _T_97) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Logical type unsupported by manager (connected at Debug.scala:631:46)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@133333.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_107 & _T_97) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@133334.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_107 & _T_110) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical address not aligned to size (connected at Debug.scala:631:46)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@133347.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_107 & _T_110) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@133348.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_107 & _T_254) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical contains invalid mask (connected at Debug.scala:631:46)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@133363.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_107 & _T_254) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@133364.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_113 & _T_97) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Hint type unsupported by manager (connected at Debug.scala:631:46)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@133411.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_113 & _T_97) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@133412.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_113 & _T_110) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint address not aligned to size (connected at Debug.scala:631:46)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@133425.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_113 & _T_110) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@133426.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_113 & _T_254) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint contains invalid mask (connected at Debug.scala:631:46)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@133441.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_113 & _T_254) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@133442.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel has invalid opcode (connected at Debug.scala:631:46)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133460.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133461.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_119 & _T_561) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck carries invalid source ID (connected at Debug.scala:631:46)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133474.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_119 & _T_561) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133475.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_119 & _T_565) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck smaller than a beat (connected at Debug.scala:631:46)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133482.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_119 & _T_565) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133483.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_119 & _T_569) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseeAck carries invalid param (connected at Debug.scala:631:46)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133490.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_119 & _T_569) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133491.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_119 & _T_573) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck is corrupt (connected at Debug.scala:631:46)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133498.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_119 & _T_573) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133499.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_119 & _T_577) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck is denied (connected at Debug.scala:631:46)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133506.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_119 & _T_577) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133507.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_129 & _T_561) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid source ID (connected at Debug.scala:631:46)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133516.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_129 & _T_561) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133517.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_129 & _T_97) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid sink ID (connected at Debug.scala:631:46)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133523.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_129 & _T_97) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133524.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_129 & _T_565) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant smaller than a beat (connected at Debug.scala:631:46)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133531.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_129 & _T_565) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133532.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_129 & _T_592) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid cap param (connected at Debug.scala:631:46)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133539.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_129 & _T_592) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133540.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_129 & _T_596) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries toN param (connected at Debug.scala:631:46)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133547.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_129 & _T_596) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133548.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_129 & _T_573) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant is corrupt (connected at Debug.scala:631:46)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133555.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_129 & _T_573) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133556.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_129 & _T_577) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant is denied (connected at Debug.scala:631:46)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133564.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_129 & _T_577) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133565.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_143 & _T_561) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid source ID (connected at Debug.scala:631:46)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133574.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_143 & _T_561) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133575.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_143 & _T_97) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid sink ID (connected at Debug.scala:631:46)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133581.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_143 & _T_97) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133582.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_143 & _T_565) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData smaller than a beat (connected at Debug.scala:631:46)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133589.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_143 & _T_565) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133590.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_143 & _T_592) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid cap param (connected at Debug.scala:631:46)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133597.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_143 & _T_592) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133598.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_143 & _T_596) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries toN param (connected at Debug.scala:631:46)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133605.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_143 & _T_596) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133606.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_143 & _T_629) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData is denied but not corrupt (connected at Debug.scala:631:46)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133614.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_143 & _T_629) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133615.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_143 & _T_577) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData is denied (connected at Debug.scala:631:46)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133623.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_143 & _T_577) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133624.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_157 & _T_561) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck carries invalid source ID (connected at Debug.scala:631:46)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133633.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_157 & _T_561) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133634.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_157 & _T_569) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck carries invalid param (connected at Debug.scala:631:46)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133641.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_157 & _T_569) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133642.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_157 & _T_573) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck is corrupt (connected at Debug.scala:631:46)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133649.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_157 & _T_573) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133650.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_157 & _T_577) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck is denied (connected at Debug.scala:631:46)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133658.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_157 & _T_577) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133659.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_165 & _T_561) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData carries invalid source ID (connected at Debug.scala:631:46)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133668.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_165 & _T_561) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133669.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_165 & _T_569) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData carries invalid param (connected at Debug.scala:631:46)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133676.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_165 & _T_569) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133677.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_165 & _T_629) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData is denied but not corrupt (connected at Debug.scala:631:46)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133685.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_165 & _T_629) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133686.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_165 & _T_577) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData is denied (connected at Debug.scala:631:46)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133694.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_165 & _T_577) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133695.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_173 & _T_561) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck carries invalid source ID (connected at Debug.scala:631:46)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133704.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_173 & _T_561) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133705.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_173 & _T_569) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck carries invalid param (connected at Debug.scala:631:46)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133712.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_173 & _T_569) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133713.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_173 & _T_573) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck is corrupt (connected at Debug.scala:631:46)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133720.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_173 & _T_573) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133721.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_173 & _T_577) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck is denied (connected at Debug.scala:631:46)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133729.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_173 & _T_577) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133730.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel opcode changed within multibeat operation (connected at Debug.scala:631:46)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@133800.8]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@133801.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel address changed with multibeat operation (connected at Debug.scala:631:46)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@133832.8]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@133833.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel opcode changed within multibeat operation (connected at Debug.scala:631:46)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133881.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133882.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_777 & _T_785) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel param changed within multibeat operation (connected at Debug.scala:631:46)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133889.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_777 & _T_785) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133890.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel size changed within multibeat operation (connected at Debug.scala:631:46)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133897.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133898.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel source changed within multibeat operation (connected at Debug.scala:631:46)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133905.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133906.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_777 & _T_797) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel sink changed with multibeat operation (connected at Debug.scala:631:46)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133913.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_777 & _T_797) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133914.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_777 & _T_801) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel denied changed with multibeat operation (connected at Debug.scala:631:46)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133921.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_777 & _T_801) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@133922.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel re-used a source ID (connected at Debug.scala:631:46)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@134058.8]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@134059.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel acknowledged for nothing inflight (connected at Debug.scala:631:46)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@134109.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@134110.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper opcode response (connected at Debug.scala:631:46)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@134126.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@134127.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper response size (connected at Debug.scala:631:46)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@134137.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@134138.8]
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
          $fwrite(32'h80000002,"Assertion failed: ready check\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@134155.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@134156.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_949) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' and 'D' concurrent, despite minlatency 3 (connected at Debug.scala:631:46)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@134167.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_949) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@134168.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_968) begin
          $fwrite(32'h80000002,"Assertion failed: TileLink timeout expired (connected at Debug.scala:631:46)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@134195.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_968) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@134196.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
