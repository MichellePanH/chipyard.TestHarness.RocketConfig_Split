module TLMonitor_51( // @[:chipyard.TestHarness.RocketConfig.fir@126883.2]
  input        clock, // @[:chipyard.TestHarness.RocketConfig.fir@126884.4]
  input        reset, // @[:chipyard.TestHarness.RocketConfig.fir@126885.4]
  input        io_in_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@126886.4]
  input        io_in_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@126886.4]
  input  [2:0] io_in_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@126886.4]
  input  [6:0] io_in_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@126886.4]
  input  [3:0] io_in_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@126886.4]
  input        io_in_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@126886.4]
  input        io_in_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@126886.4]
  input  [2:0] io_in_d_bits_opcode // @[:chipyard.TestHarness.RocketConfig.fir@126886.4]
);
  wire [31:0] plusarg_reader_out; // @[PlusArg.scala 44:11:chipyard.TestHarness.RocketConfig.fir@128189.4]
  wire [6:0] _T_10; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@126905.6]
  wire  _T_11; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@126906.6]
  wire  _T_56; // @[Monitor.scala 79:25:chipyard.TestHarness.RocketConfig.fir@126955.6]
  wire [6:0] _T_58; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@126958.8]
  wire [7:0] _T_59; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@126959.8]
  wire [7:0] _T_61; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@126961.8]
  wire  _T_62; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@126962.8]
  wire [6:0] _T_63; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@126963.8]
  wire [7:0] _T_64; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@126964.8]
  wire [7:0] _T_66; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@126966.8]
  wire  _T_67; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@126967.8]
  wire  _T_68; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@126968.8]
  wire  _T_73; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@126973.8]
  wire  _T_85; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@127001.8]
  wire  _T_86; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@127002.8]
  wire [3:0] _T_91; // @[Monitor.scala 86:18:chipyard.TestHarness.RocketConfig.fir@127015.8]
  wire  _T_92; // @[Monitor.scala 86:31:chipyard.TestHarness.RocketConfig.fir@127016.8]
  wire  _T_94; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@127018.8]
  wire  _T_95; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@127019.8]
  wire  _T_100; // @[Monitor.scala 90:25:chipyard.TestHarness.RocketConfig.fir@127033.6]
  wire  _T_148; // @[Monitor.scala 102:25:chipyard.TestHarness.RocketConfig.fir@127119.6]
  wire  _T_167; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@127139.8]
  wire  _T_168; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@127140.8]
  wire  _T_179; // @[Monitor.scala 107:30:chipyard.TestHarness.RocketConfig.fir@127167.8]
  wire  _T_181; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@127169.8]
  wire  _T_182; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@127170.8]
  wire  _T_187; // @[Monitor.scala 111:25:chipyard.TestHarness.RocketConfig.fir@127184.6]
  wire  _T_222; // @[Monitor.scala 119:25:chipyard.TestHarness.RocketConfig.fir@127241.6]
  wire  _T_259; // @[Monitor.scala 127:25:chipyard.TestHarness.RocketConfig.fir@127300.6]
  wire  _T_291; // @[Monitor.scala 135:25:chipyard.TestHarness.RocketConfig.fir@127354.6]
  wire  _T_323; // @[Monitor.scala 143:25:chipyard.TestHarness.RocketConfig.fir@127408.6]
  wire  _T_359; // @[Bundles.scala 44:24:chipyard.TestHarness.RocketConfig.fir@127472.6]
  wire  _T_361; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@127474.6]
  wire  _T_362; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@127475.6]
  wire  _T_366; // @[Monitor.scala 307:25:chipyard.TestHarness.RocketConfig.fir@127485.6]
  wire  _T_386; // @[Monitor.scala 315:25:chipyard.TestHarness.RocketConfig.fir@127527.6]
  wire  _T_414; // @[Monitor.scala 325:25:chipyard.TestHarness.RocketConfig.fir@127585.6]
  wire  _T_510; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@127781.4]
  reg  _T_519; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@127790.4]
  reg [31:0] _RAND_0;
  wire  _T_521; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@127792.4]
  wire  _T_522; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@127793.4]
  reg [2:0] _T_530; // @[Monitor.scala 381:22:chipyard.TestHarness.RocketConfig.fir@127804.4]
  reg [31:0] _RAND_1;
  reg [6:0] _T_534; // @[Monitor.scala 385:22:chipyard.TestHarness.RocketConfig.fir@127808.4]
  reg [31:0] _RAND_2;
  wire  _T_535; // @[Monitor.scala 386:22:chipyard.TestHarness.RocketConfig.fir@127809.4]
  wire  _T_536; // @[Monitor.scala 386:19:chipyard.TestHarness.RocketConfig.fir@127810.4]
  wire  _T_537; // @[Monitor.scala 387:32:chipyard.TestHarness.RocketConfig.fir@127812.6]
  wire  _T_539; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@127814.6]
  wire  _T_540; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@127815.6]
  wire  _T_553; // @[Monitor.scala 391:32:chipyard.TestHarness.RocketConfig.fir@127844.6]
  wire  _T_555; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@127846.6]
  wire  _T_556; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@127847.6]
  wire  _T_558; // @[Monitor.scala 393:20:chipyard.TestHarness.RocketConfig.fir@127854.4]
  wire  _T_559; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@127862.4]
  reg  _T_567; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@127870.4]
  reg [31:0] _RAND_3;
  wire  _T_569; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@127872.4]
  wire  _T_570; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@127873.4]
  reg [2:0] _T_578; // @[Monitor.scala 532:22:chipyard.TestHarness.RocketConfig.fir@127884.4]
  reg [31:0] _RAND_4;
  wire  _T_584; // @[Monitor.scala 538:22:chipyard.TestHarness.RocketConfig.fir@127890.4]
  wire  _T_585; // @[Monitor.scala 538:19:chipyard.TestHarness.RocketConfig.fir@127891.4]
  wire  _T_586; // @[Monitor.scala 539:29:chipyard.TestHarness.RocketConfig.fir@127893.6]
  wire  _T_588; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@127895.6]
  wire  _T_589; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@127896.6]
  wire  _T_611; // @[Monitor.scala 546:20:chipyard.TestHarness.RocketConfig.fir@127943.4]
  reg  inflight; // @[Monitor.scala 608:27:chipyard.TestHarness.RocketConfig.fir@127952.4]
  reg [31:0] _RAND_5;
  reg [3:0] inflight_opcodes; // @[Monitor.scala 610:35:chipyard.TestHarness.RocketConfig.fir@127953.4]
  reg [31:0] _RAND_6;
  reg [3:0] inflight_sizes; // @[Monitor.scala 612:33:chipyard.TestHarness.RocketConfig.fir@127954.4]
  reg [31:0] _RAND_7;
  reg  _T_621; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@127964.4]
  reg [31:0] _RAND_8;
  wire  _T_623; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@127966.4]
  wire  a_first; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@127967.4]
  reg  _T_639; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@127986.4]
  reg [31:0] _RAND_9;
  wire  _T_641; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@127988.4]
  wire  d_first; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@127989.4]
  wire [15:0] _T_654; // @[Monitor.scala 606:57:chipyard.TestHarness.RocketConfig.fir@128013.4]
  wire [15:0] _GEN_56; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@128014.4]
  wire [15:0] _T_655; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@128014.4]
  wire [15:0] _T_656; // @[Monitor.scala 629:152:chipyard.TestHarness.RocketConfig.fir@128015.4]
  wire [15:0] _GEN_58; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@128025.4]
  wire [15:0] _T_663; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@128025.4]
  wire [15:0] _T_664; // @[Monitor.scala 633:144:chipyard.TestHarness.RocketConfig.fir@128026.4]
  wire  _T_668; // @[Monitor.scala 643:27:chipyard.TestHarness.RocketConfig.fir@128051.4]
  wire [3:0] _T_671; // @[Monitor.scala 645:53:chipyard.TestHarness.RocketConfig.fir@128056.6]
  wire [3:0] _T_672; // @[Monitor.scala 645:61:chipyard.TestHarness.RocketConfig.fir@128057.6]
  wire [3:0] a_opcodes_set_interm; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@128053.4]
  wire [18:0] _T_676; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@128063.6]
  wire [2:0] a_sizes_set_interm; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@128053.4]
  wire [17:0] _T_678; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@128066.6]
  wire  _T_681; // @[Monitor.scala 649:17:chipyard.TestHarness.RocketConfig.fir@128070.6]
  wire  _T_683; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@128072.6]
  wire  _T_684; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@128073.6]
  wire [1:0] _GEN_15; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@128053.4]
  wire [18:0] _GEN_18; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@128053.4]
  wire [17:0] _GEN_19; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@128053.4]
  wire  _T_687; // @[Monitor.scala 660:27:chipyard.TestHarness.RocketConfig.fir@128087.4]
  wire  _T_689; // @[Monitor.scala 660:75:chipyard.TestHarness.RocketConfig.fir@128089.4]
  wire  _T_690; // @[Monitor.scala 660:72:chipyard.TestHarness.RocketConfig.fir@128090.4]
  wire [30:0] _T_697; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@128099.6]
  wire [1:0] _GEN_20; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@128091.4]
  wire [30:0] _GEN_21; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@128091.4]
  wire  _T_704; // @[Monitor.scala 665:26:chipyard.TestHarness.RocketConfig.fir@128109.4]
  wire  _T_707; // @[Monitor.scala 665:71:chipyard.TestHarness.RocketConfig.fir@128112.4]
  wire  _T_714; // @[Monitor.scala 666:166:chipyard.TestHarness.RocketConfig.fir@128120.6]
  wire  _T_715; // @[Monitor.scala 666:49:chipyard.TestHarness.RocketConfig.fir@128121.6]
  wire  _T_717; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@128123.6]
  wire  _T_718; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@128124.6]
  wire [3:0] a_opcode_lookup; // @[:chipyard.TestHarness.RocketConfig.fir@128006.4 :chipyard.TestHarness.RocketConfig.fir@128007.4 Monitor.scala 629:21:chipyard.TestHarness.RocketConfig.fir@128016.4]
  wire [2:0] _GEN_25; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@128130.6]
  wire [2:0] _GEN_26; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@128130.6]
  wire [2:0] _GEN_27; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@128130.6]
  wire [2:0] _GEN_28; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@128130.6]
  wire [2:0] _GEN_29; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@128130.6]
  wire [2:0] _GEN_30; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@128130.6]
  wire  _T_720; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@128130.6]
  wire [2:0] _GEN_37; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@128132.6]
  wire [2:0] _GEN_38; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@128132.6]
  wire  _T_722; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@128132.6]
  wire  _T_723; // @[Monitor.scala 667:71:chipyard.TestHarness.RocketConfig.fir@128133.6]
  wire [2:0] _GEN_41; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@128134.6]
  wire [2:0] _GEN_42; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@128134.6]
  wire [2:0] _GEN_43; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@128134.6]
  wire [2:0] _GEN_44; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@128134.6]
  wire [2:0] _GEN_45; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@128134.6]
  wire [2:0] _GEN_46; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@128134.6]
  wire  _T_724; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@128134.6]
  wire [2:0] _GEN_53; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@128135.6]
  wire [2:0] _GEN_54; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@128135.6]
  wire  _T_725; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@128135.6]
  wire  _T_726; // @[Monitor.scala 668:99:chipyard.TestHarness.RocketConfig.fir@128136.6]
  wire  _T_727; // @[Monitor.scala 668:34:chipyard.TestHarness.RocketConfig.fir@128137.6]
  wire  _T_728; // @[Monitor.scala 668:15:chipyard.TestHarness.RocketConfig.fir@128138.6]
  wire  _T_730; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@128140.6]
  wire  _T_731; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@128141.6]
  wire [3:0] a_size_lookup; // @[:chipyard.TestHarness.RocketConfig.fir@128017.4 :chipyard.TestHarness.RocketConfig.fir@128018.4 Monitor.scala 633:19:chipyard.TestHarness.RocketConfig.fir@128027.4]
  wire  _T_732; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@128146.6]
  wire  _T_735; // @[Monitor.scala 670:53:chipyard.TestHarness.RocketConfig.fir@128149.6]
  wire  _T_737; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@128151.6]
  wire  _T_738; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@128152.6]
  wire  _T_740; // @[Monitor.scala 672:36:chipyard.TestHarness.RocketConfig.fir@128159.4]
  wire  _T_741; // @[Monitor.scala 672:47:chipyard.TestHarness.RocketConfig.fir@128160.4]
  wire  _T_745; // @[Monitor.scala 672:116:chipyard.TestHarness.RocketConfig.fir@128164.4]
  wire  _T_746; // @[Monitor.scala 673:15:chipyard.TestHarness.RocketConfig.fir@128166.6]
  wire  _T_747; // @[Monitor.scala 673:32:chipyard.TestHarness.RocketConfig.fir@128167.6]
  wire  _T_749; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@128169.6]
  wire  _T_750; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@128170.6]
  wire  a_set; // @[:chipyard.TestHarness.RocketConfig.fir@128000.4 :chipyard.TestHarness.RocketConfig.fir@128001.4 Monitor.scala 644:13:chipyard.TestHarness.RocketConfig.fir@128055.6]
  wire  _T_751; // @[Monitor.scala 680:27:chipyard.TestHarness.RocketConfig.fir@128176.4]
  wire  d_clr; // @[:chipyard.TestHarness.RocketConfig.fir@128079.4 :chipyard.TestHarness.RocketConfig.fir@128080.4 Monitor.scala 661:13:chipyard.TestHarness.RocketConfig.fir@128093.6]
  wire  _T_752; // @[Monitor.scala 680:38:chipyard.TestHarness.RocketConfig.fir@128177.4]
  wire  _T_753; // @[Monitor.scala 680:36:chipyard.TestHarness.RocketConfig.fir@128178.4]
  wire [3:0] a_opcodes_set; // @[:chipyard.TestHarness.RocketConfig.fir@128002.4 :chipyard.TestHarness.RocketConfig.fir@128003.4 Monitor.scala 647:21:chipyard.TestHarness.RocketConfig.fir@128064.6]
  wire [3:0] _T_754; // @[Monitor.scala 681:43:chipyard.TestHarness.RocketConfig.fir@128180.4]
  wire [3:0] d_opcodes_clr; // @[:chipyard.TestHarness.RocketConfig.fir@128081.4 :chipyard.TestHarness.RocketConfig.fir@128082.4 Monitor.scala 662:21:chipyard.TestHarness.RocketConfig.fir@128100.6]
  wire [3:0] _T_755; // @[Monitor.scala 681:62:chipyard.TestHarness.RocketConfig.fir@128181.4]
  wire [3:0] _T_756; // @[Monitor.scala 681:60:chipyard.TestHarness.RocketConfig.fir@128182.4]
  wire [3:0] a_sizes_set; // @[:chipyard.TestHarness.RocketConfig.fir@128004.4 :chipyard.TestHarness.RocketConfig.fir@128005.4 Monitor.scala 648:19:chipyard.TestHarness.RocketConfig.fir@128067.6]
  wire [3:0] _T_757; // @[Monitor.scala 682:39:chipyard.TestHarness.RocketConfig.fir@128184.4]
  wire [3:0] _T_759; // @[Monitor.scala 682:54:chipyard.TestHarness.RocketConfig.fir@128186.4]
  reg [31:0] _T_760; // @[Monitor.scala 684:27:chipyard.TestHarness.RocketConfig.fir@128188.4]
  reg [31:0] _RAND_10;
  wire  _T_761; // @[Monitor.scala 687:26:chipyard.TestHarness.RocketConfig.fir@128191.4]
  wire  _T_762; // @[Monitor.scala 687:16:chipyard.TestHarness.RocketConfig.fir@128192.4]
  wire  _T_763; // @[Monitor.scala 687:39:chipyard.TestHarness.RocketConfig.fir@128193.4]
  wire  _T_764; // @[Monitor.scala 687:30:chipyard.TestHarness.RocketConfig.fir@128194.4]
  wire  _T_765; // @[Monitor.scala 687:59:chipyard.TestHarness.RocketConfig.fir@128195.4]
  wire  _T_766; // @[Monitor.scala 687:47:chipyard.TestHarness.RocketConfig.fir@128196.4]
  wire  _T_768; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@128198.4]
  wire  _T_769; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@128199.4]
  wire [31:0] _T_771; // @[Monitor.scala 689:26:chipyard.TestHarness.RocketConfig.fir@128205.4]
  wire  _T_774; // @[Monitor.scala 690:27:chipyard.TestHarness.RocketConfig.fir@128209.4]
  wire  _GEN_60; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@126975.10]
  wire  _GEN_68; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@127053.10]
  wire  _GEN_78; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@127142.10]
  wire  _GEN_84; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@127207.10]
  wire  _GEN_90; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@127264.10]
  wire  _GEN_94; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@127320.10]
  wire  _GEN_100; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@127374.10]
  wire  _GEN_106; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@127428.10]
  wire  _GEN_112; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@127540.10]
  wire  _GEN_114; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@127598.10]
  plusarg_reader #(.FORMAT("tilelink_timeout=%d"), .DEFAULT(0), .WIDTH(32)) plusarg_reader ( // @[PlusArg.scala 44:11:chipyard.TestHarness.RocketConfig.fir@128189.4]
    .out(plusarg_reader_out)
  );
  assign _T_10 = io_in_a_bits_address & 7'h3; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@126905.6]
  assign _T_11 = _T_10 == 7'h0; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@126906.6]
  assign _T_56 = io_in_a_bits_opcode == 3'h6; // @[Monitor.scala 79:25:chipyard.TestHarness.RocketConfig.fir@126955.6]
  assign _T_58 = io_in_a_bits_address ^ 7'h40; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@126958.8]
  assign _T_59 = {1'b0,$signed(_T_58)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@126959.8]
  assign _T_61 = $signed(_T_59) & -8'sh14; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@126961.8]
  assign _T_62 = $signed(_T_61) == 8'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@126962.8]
  assign _T_63 = io_in_a_bits_address ^ 7'h54; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@126963.8]
  assign _T_64 = {1'b0,$signed(_T_63)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@126964.8]
  assign _T_66 = $signed(_T_64) & -8'sh4; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@126966.8]
  assign _T_67 = $signed(_T_66) == 8'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@126967.8]
  assign _T_68 = _T_62 | _T_67; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@126968.8]
  assign _T_73 = ~reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@126973.8]
  assign _T_85 = _T_11 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@127001.8]
  assign _T_86 = ~_T_85; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@127002.8]
  assign _T_91 = ~io_in_a_bits_mask; // @[Monitor.scala 86:18:chipyard.TestHarness.RocketConfig.fir@127015.8]
  assign _T_92 = _T_91 == 4'h0; // @[Monitor.scala 86:31:chipyard.TestHarness.RocketConfig.fir@127016.8]
  assign _T_94 = _T_92 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@127018.8]
  assign _T_95 = ~_T_94; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@127019.8]
  assign _T_100 = io_in_a_bits_opcode == 3'h7; // @[Monitor.scala 90:25:chipyard.TestHarness.RocketConfig.fir@127033.6]
  assign _T_148 = io_in_a_bits_opcode == 3'h4; // @[Monitor.scala 102:25:chipyard.TestHarness.RocketConfig.fir@127119.6]
  assign _T_167 = _T_68 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@127139.8]
  assign _T_168 = ~_T_167; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@127140.8]
  assign _T_179 = io_in_a_bits_mask == 4'hf; // @[Monitor.scala 107:30:chipyard.TestHarness.RocketConfig.fir@127167.8]
  assign _T_181 = _T_179 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@127169.8]
  assign _T_182 = ~_T_181; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@127170.8]
  assign _T_187 = io_in_a_bits_opcode == 3'h0; // @[Monitor.scala 111:25:chipyard.TestHarness.RocketConfig.fir@127184.6]
  assign _T_222 = io_in_a_bits_opcode == 3'h1; // @[Monitor.scala 119:25:chipyard.TestHarness.RocketConfig.fir@127241.6]
  assign _T_259 = io_in_a_bits_opcode == 3'h2; // @[Monitor.scala 127:25:chipyard.TestHarness.RocketConfig.fir@127300.6]
  assign _T_291 = io_in_a_bits_opcode == 3'h3; // @[Monitor.scala 135:25:chipyard.TestHarness.RocketConfig.fir@127354.6]
  assign _T_323 = io_in_a_bits_opcode == 3'h5; // @[Monitor.scala 143:25:chipyard.TestHarness.RocketConfig.fir@127408.6]
  assign _T_359 = io_in_d_bits_opcode <= 3'h6; // @[Bundles.scala 44:24:chipyard.TestHarness.RocketConfig.fir@127472.6]
  assign _T_361 = _T_359 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@127474.6]
  assign _T_362 = ~_T_361; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@127475.6]
  assign _T_366 = io_in_d_bits_opcode == 3'h6; // @[Monitor.scala 307:25:chipyard.TestHarness.RocketConfig.fir@127485.6]
  assign _T_386 = io_in_d_bits_opcode == 3'h4; // @[Monitor.scala 315:25:chipyard.TestHarness.RocketConfig.fir@127527.6]
  assign _T_414 = io_in_d_bits_opcode == 3'h5; // @[Monitor.scala 325:25:chipyard.TestHarness.RocketConfig.fir@127585.6]
  assign _T_510 = io_in_a_ready & io_in_a_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@127781.4]
  assign _T_521 = _T_519 - 1'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@127792.4]
  assign _T_522 = ~_T_519; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@127793.4]
  assign _T_535 = ~_T_522; // @[Monitor.scala 386:22:chipyard.TestHarness.RocketConfig.fir@127809.4]
  assign _T_536 = io_in_a_valid & _T_535; // @[Monitor.scala 386:19:chipyard.TestHarness.RocketConfig.fir@127810.4]
  assign _T_537 = io_in_a_bits_opcode == _T_530; // @[Monitor.scala 387:32:chipyard.TestHarness.RocketConfig.fir@127812.6]
  assign _T_539 = _T_537 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@127814.6]
  assign _T_540 = ~_T_539; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@127815.6]
  assign _T_553 = io_in_a_bits_address == _T_534; // @[Monitor.scala 391:32:chipyard.TestHarness.RocketConfig.fir@127844.6]
  assign _T_555 = _T_553 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@127846.6]
  assign _T_556 = ~_T_555; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@127847.6]
  assign _T_558 = _T_510 & _T_522; // @[Monitor.scala 393:20:chipyard.TestHarness.RocketConfig.fir@127854.4]
  assign _T_559 = io_in_d_ready & io_in_d_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@127862.4]
  assign _T_569 = _T_567 - 1'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@127872.4]
  assign _T_570 = ~_T_567; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@127873.4]
  assign _T_584 = ~_T_570; // @[Monitor.scala 538:22:chipyard.TestHarness.RocketConfig.fir@127890.4]
  assign _T_585 = io_in_d_valid & _T_584; // @[Monitor.scala 538:19:chipyard.TestHarness.RocketConfig.fir@127891.4]
  assign _T_586 = io_in_d_bits_opcode == _T_578; // @[Monitor.scala 539:29:chipyard.TestHarness.RocketConfig.fir@127893.6]
  assign _T_588 = _T_586 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@127895.6]
  assign _T_589 = ~_T_588; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@127896.6]
  assign _T_611 = _T_559 & _T_570; // @[Monitor.scala 546:20:chipyard.TestHarness.RocketConfig.fir@127943.4]
  assign _T_623 = _T_621 - 1'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@127966.4]
  assign a_first = ~_T_621; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@127967.4]
  assign _T_641 = _T_639 - 1'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@127988.4]
  assign d_first = ~_T_639; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@127989.4]
  assign _T_654 = 16'h10 - 16'h1; // @[Monitor.scala 606:57:chipyard.TestHarness.RocketConfig.fir@128013.4]
  assign _GEN_56 = {{12'd0}, inflight_opcodes}; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@128014.4]
  assign _T_655 = _GEN_56 & _T_654; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@128014.4]
  assign _T_656 = {{1'd0}, _T_655[15:1]}; // @[Monitor.scala 629:152:chipyard.TestHarness.RocketConfig.fir@128015.4]
  assign _GEN_58 = {{12'd0}, inflight_sizes}; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@128025.4]
  assign _T_663 = _GEN_58 & _T_654; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@128025.4]
  assign _T_664 = {{1'd0}, _T_663[15:1]}; // @[Monitor.scala 633:144:chipyard.TestHarness.RocketConfig.fir@128026.4]
  assign _T_668 = _T_510 & a_first; // @[Monitor.scala 643:27:chipyard.TestHarness.RocketConfig.fir@128051.4]
  assign _T_671 = {io_in_a_bits_opcode, 1'h0}; // @[Monitor.scala 645:53:chipyard.TestHarness.RocketConfig.fir@128056.6]
  assign _T_672 = _T_671 | 4'h1; // @[Monitor.scala 645:61:chipyard.TestHarness.RocketConfig.fir@128057.6]
  assign a_opcodes_set_interm = _T_668 ? _T_672 : 4'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@128053.4]
  assign _T_676 = {{15'd0}, a_opcodes_set_interm}; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@128063.6]
  assign a_sizes_set_interm = _T_668 ? 3'h5 : 3'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@128053.4]
  assign _T_678 = {{15'd0}, a_sizes_set_interm}; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@128066.6]
  assign _T_681 = ~inflight; // @[Monitor.scala 649:17:chipyard.TestHarness.RocketConfig.fir@128070.6]
  assign _T_683 = _T_681 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@128072.6]
  assign _T_684 = ~_T_683; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@128073.6]
  assign _GEN_15 = _T_668 ? 2'h1 : 2'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@128053.4]
  assign _GEN_18 = _T_668 ? _T_676 : 19'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@128053.4]
  assign _GEN_19 = _T_668 ? _T_678 : 18'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@128053.4]
  assign _T_687 = _T_559 & d_first; // @[Monitor.scala 660:27:chipyard.TestHarness.RocketConfig.fir@128087.4]
  assign _T_689 = ~_T_366; // @[Monitor.scala 660:75:chipyard.TestHarness.RocketConfig.fir@128089.4]
  assign _T_690 = _T_687 & _T_689; // @[Monitor.scala 660:72:chipyard.TestHarness.RocketConfig.fir@128090.4]
  assign _T_697 = {{15'd0}, _T_654}; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@128099.6]
  assign _GEN_20 = _T_690 ? 2'h1 : 2'h0; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@128091.4]
  assign _GEN_21 = _T_690 ? _T_697 : 31'h0; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@128091.4]
  assign _T_704 = io_in_d_valid & d_first; // @[Monitor.scala 665:26:chipyard.TestHarness.RocketConfig.fir@128109.4]
  assign _T_707 = _T_704 & _T_689; // @[Monitor.scala 665:71:chipyard.TestHarness.RocketConfig.fir@128112.4]
  assign _T_714 = io_in_a_valid & a_first; // @[Monitor.scala 666:166:chipyard.TestHarness.RocketConfig.fir@128120.6]
  assign _T_715 = inflight | _T_714; // @[Monitor.scala 666:49:chipyard.TestHarness.RocketConfig.fir@128121.6]
  assign _T_717 = _T_715 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@128123.6]
  assign _T_718 = ~_T_717; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@128124.6]
  assign a_opcode_lookup = _T_656[3:0]; // @[:chipyard.TestHarness.RocketConfig.fir@128006.4 :chipyard.TestHarness.RocketConfig.fir@128007.4 Monitor.scala 629:21:chipyard.TestHarness.RocketConfig.fir@128016.4]
  assign _GEN_25 = 3'h2 == a_opcode_lookup[2:0] ? 3'h1 : 3'h0; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@128130.6]
  assign _GEN_26 = 3'h3 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_25; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@128130.6]
  assign _GEN_27 = 3'h4 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_26; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@128130.6]
  assign _GEN_28 = 3'h5 == a_opcode_lookup[2:0] ? 3'h2 : _GEN_27; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@128130.6]
  assign _GEN_29 = 3'h6 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_28; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@128130.6]
  assign _GEN_30 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_29; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@128130.6]
  assign _T_720 = io_in_d_bits_opcode == _GEN_30; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@128130.6]
  assign _GEN_37 = 3'h6 == a_opcode_lookup[2:0] ? 3'h5 : _GEN_28; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@128132.6]
  assign _GEN_38 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_37; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@128132.6]
  assign _T_722 = io_in_d_bits_opcode == _GEN_38; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@128132.6]
  assign _T_723 = _T_720 | _T_722; // @[Monitor.scala 667:71:chipyard.TestHarness.RocketConfig.fir@128133.6]
  assign _GEN_41 = 3'h2 == io_in_a_bits_opcode ? 3'h1 : 3'h0; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@128134.6]
  assign _GEN_42 = 3'h3 == io_in_a_bits_opcode ? 3'h1 : _GEN_41; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@128134.6]
  assign _GEN_43 = 3'h4 == io_in_a_bits_opcode ? 3'h1 : _GEN_42; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@128134.6]
  assign _GEN_44 = 3'h5 == io_in_a_bits_opcode ? 3'h2 : _GEN_43; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@128134.6]
  assign _GEN_45 = 3'h6 == io_in_a_bits_opcode ? 3'h4 : _GEN_44; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@128134.6]
  assign _GEN_46 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_45; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@128134.6]
  assign _T_724 = io_in_d_bits_opcode == _GEN_46; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@128134.6]
  assign _GEN_53 = 3'h6 == io_in_a_bits_opcode ? 3'h5 : _GEN_44; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@128135.6]
  assign _GEN_54 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_53; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@128135.6]
  assign _T_725 = io_in_d_bits_opcode == _GEN_54; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@128135.6]
  assign _T_726 = _T_724 | _T_725; // @[Monitor.scala 668:99:chipyard.TestHarness.RocketConfig.fir@128136.6]
  assign _T_727 = io_in_a_valid & _T_726; // @[Monitor.scala 668:34:chipyard.TestHarness.RocketConfig.fir@128137.6]
  assign _T_728 = _T_723 | _T_727; // @[Monitor.scala 668:15:chipyard.TestHarness.RocketConfig.fir@128138.6]
  assign _T_730 = _T_728 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@128140.6]
  assign _T_731 = ~_T_730; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@128141.6]
  assign a_size_lookup = _T_664[3:0]; // @[:chipyard.TestHarness.RocketConfig.fir@128017.4 :chipyard.TestHarness.RocketConfig.fir@128018.4 Monitor.scala 633:19:chipyard.TestHarness.RocketConfig.fir@128027.4]
  assign _T_732 = 4'h2 == a_size_lookup; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@128146.6]
  assign _T_735 = _T_732 | io_in_a_valid; // @[Monitor.scala 670:53:chipyard.TestHarness.RocketConfig.fir@128149.6]
  assign _T_737 = _T_735 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@128151.6]
  assign _T_738 = ~_T_737; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@128152.6]
  assign _T_740 = _T_704 & a_first; // @[Monitor.scala 672:36:chipyard.TestHarness.RocketConfig.fir@128159.4]
  assign _T_741 = _T_740 & io_in_a_valid; // @[Monitor.scala 672:47:chipyard.TestHarness.RocketConfig.fir@128160.4]
  assign _T_745 = _T_741 & _T_689; // @[Monitor.scala 672:116:chipyard.TestHarness.RocketConfig.fir@128164.4]
  assign _T_746 = ~io_in_d_ready; // @[Monitor.scala 673:15:chipyard.TestHarness.RocketConfig.fir@128166.6]
  assign _T_747 = _T_746 | io_in_a_ready; // @[Monitor.scala 673:32:chipyard.TestHarness.RocketConfig.fir@128167.6]
  assign _T_749 = _T_747 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@128169.6]
  assign _T_750 = ~_T_749; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@128170.6]
  assign a_set = _GEN_15[0]; // @[:chipyard.TestHarness.RocketConfig.fir@128000.4 :chipyard.TestHarness.RocketConfig.fir@128001.4 Monitor.scala 644:13:chipyard.TestHarness.RocketConfig.fir@128055.6]
  assign _T_751 = inflight | a_set; // @[Monitor.scala 680:27:chipyard.TestHarness.RocketConfig.fir@128176.4]
  assign d_clr = _GEN_20[0]; // @[:chipyard.TestHarness.RocketConfig.fir@128079.4 :chipyard.TestHarness.RocketConfig.fir@128080.4 Monitor.scala 661:13:chipyard.TestHarness.RocketConfig.fir@128093.6]
  assign _T_752 = ~d_clr; // @[Monitor.scala 680:38:chipyard.TestHarness.RocketConfig.fir@128177.4]
  assign _T_753 = _T_751 & _T_752; // @[Monitor.scala 680:36:chipyard.TestHarness.RocketConfig.fir@128178.4]
  assign a_opcodes_set = _GEN_18[3:0]; // @[:chipyard.TestHarness.RocketConfig.fir@128002.4 :chipyard.TestHarness.RocketConfig.fir@128003.4 Monitor.scala 647:21:chipyard.TestHarness.RocketConfig.fir@128064.6]
  assign _T_754 = inflight_opcodes | a_opcodes_set; // @[Monitor.scala 681:43:chipyard.TestHarness.RocketConfig.fir@128180.4]
  assign d_opcodes_clr = _GEN_21[3:0]; // @[:chipyard.TestHarness.RocketConfig.fir@128081.4 :chipyard.TestHarness.RocketConfig.fir@128082.4 Monitor.scala 662:21:chipyard.TestHarness.RocketConfig.fir@128100.6]
  assign _T_755 = ~d_opcodes_clr; // @[Monitor.scala 681:62:chipyard.TestHarness.RocketConfig.fir@128181.4]
  assign _T_756 = _T_754 & _T_755; // @[Monitor.scala 681:60:chipyard.TestHarness.RocketConfig.fir@128182.4]
  assign a_sizes_set = _GEN_19[3:0]; // @[:chipyard.TestHarness.RocketConfig.fir@128004.4 :chipyard.TestHarness.RocketConfig.fir@128005.4 Monitor.scala 648:19:chipyard.TestHarness.RocketConfig.fir@128067.6]
  assign _T_757 = inflight_sizes | a_sizes_set; // @[Monitor.scala 682:39:chipyard.TestHarness.RocketConfig.fir@128184.4]
  assign _T_759 = _T_757 & _T_755; // @[Monitor.scala 682:54:chipyard.TestHarness.RocketConfig.fir@128186.4]
  assign _T_761 = |inflight; // @[Monitor.scala 687:26:chipyard.TestHarness.RocketConfig.fir@128191.4]
  assign _T_762 = ~_T_761; // @[Monitor.scala 687:16:chipyard.TestHarness.RocketConfig.fir@128192.4]
  assign _T_763 = plusarg_reader_out == 32'h0; // @[Monitor.scala 687:39:chipyard.TestHarness.RocketConfig.fir@128193.4]
  assign _T_764 = _T_762 | _T_763; // @[Monitor.scala 687:30:chipyard.TestHarness.RocketConfig.fir@128194.4]
  assign _T_765 = _T_760 < plusarg_reader_out; // @[Monitor.scala 687:59:chipyard.TestHarness.RocketConfig.fir@128195.4]
  assign _T_766 = _T_764 | _T_765; // @[Monitor.scala 687:47:chipyard.TestHarness.RocketConfig.fir@128196.4]
  assign _T_768 = _T_766 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@128198.4]
  assign _T_769 = ~_T_768; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@128199.4]
  assign _T_771 = _T_760 + 32'h1; // @[Monitor.scala 689:26:chipyard.TestHarness.RocketConfig.fir@128205.4]
  assign _T_774 = _T_510 | _T_559; // @[Monitor.scala 690:27:chipyard.TestHarness.RocketConfig.fir@128209.4]
  assign _GEN_60 = io_in_a_valid & _T_56; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@126975.10]
  assign _GEN_68 = io_in_a_valid & _T_100; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@127053.10]
  assign _GEN_78 = io_in_a_valid & _T_148; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@127142.10]
  assign _GEN_84 = io_in_a_valid & _T_187; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@127207.10]
  assign _GEN_90 = io_in_a_valid & _T_222; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@127264.10]
  assign _GEN_94 = io_in_a_valid & _T_259; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@127320.10]
  assign _GEN_100 = io_in_a_valid & _T_291; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@127374.10]
  assign _GEN_106 = io_in_a_valid & _T_323; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@127428.10]
  assign _GEN_112 = io_in_d_valid & _T_386; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@127540.10]
  assign _GEN_114 = io_in_d_valid & _T_414; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@127598.10]
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
  _T_519 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_530 = _RAND_1[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_534 = _RAND_2[6:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_567 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_578 = _RAND_4[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  inflight = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  inflight_opcodes = _RAND_6[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  inflight_sizes = _RAND_7[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  _T_621 = _RAND_8[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  _T_639 = _RAND_9[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  _T_760 = _RAND_10[31:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      _T_519 <= 1'h0;
    end else if (_T_510) begin
      if (_T_522) begin
        _T_519 <= 1'h0;
      end else begin
        _T_519 <= _T_521;
      end
    end
    if (_T_558) begin
      _T_530 <= io_in_a_bits_opcode;
    end
    if (_T_558) begin
      _T_534 <= io_in_a_bits_address;
    end
    if (reset) begin
      _T_567 <= 1'h0;
    end else if (_T_559) begin
      if (_T_570) begin
        _T_567 <= 1'h0;
      end else begin
        _T_567 <= _T_569;
      end
    end
    if (_T_611) begin
      _T_578 <= io_in_d_bits_opcode;
    end
    if (reset) begin
      inflight <= 1'h0;
    end else begin
      inflight <= _T_753;
    end
    if (reset) begin
      inflight_opcodes <= 4'h0;
    end else begin
      inflight_opcodes <= _T_756;
    end
    if (reset) begin
      inflight_sizes <= 4'h0;
    end else begin
      inflight_sizes <= _T_759;
    end
    if (reset) begin
      _T_621 <= 1'h0;
    end else if (_T_510) begin
      if (a_first) begin
        _T_621 <= 1'h0;
      end else begin
        _T_621 <= _T_623;
      end
    end
    if (reset) begin
      _T_639 <= 1'h0;
    end else if (_T_559) begin
      if (d_first) begin
        _T_639 <= 1'h0;
      end else begin
        _T_639 <= _T_641;
      end
    end
    if (reset) begin
      _T_760 <= 32'h0;
    end else if (_T_774) begin
      _T_760 <= 32'h0;
    end else begin
      _T_760 <= _T_771;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_60 & _T_73) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock type unsupported by manager (connected at Debug.scala:632:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@126975.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_60 & _T_73) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@126976.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_60 & _T_73) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock from a client which does not support Probe (connected at Debug.scala:632:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@126982.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_60 & _T_73) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@126983.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_60 & _T_86) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock address not aligned to size (connected at Debug.scala:632:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@127004.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_60 & _T_86) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@127005.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_60 & _T_95) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock contains invalid mask (connected at Debug.scala:632:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@127021.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_60 & _T_95) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@127022.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_68 & _T_73) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm type unsupported by manager (connected at Debug.scala:632:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@127053.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_68 & _T_73) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@127054.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_68 & _T_73) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm from a client which does not support Probe (connected at Debug.scala:632:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@127060.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_68 & _T_73) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@127061.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_68 & _T_86) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm address not aligned to size (connected at Debug.scala:632:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@127082.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_68 & _T_86) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@127083.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_68 & _T_73) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm requests NtoB (connected at Debug.scala:632:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@127098.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_68 & _T_73) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@127099.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_68 & _T_95) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm contains invalid mask (connected at Debug.scala:632:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@127107.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_68 & _T_95) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@127108.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_78 & _T_168) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Get type unsupported by manager (connected at Debug.scala:632:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@127142.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_78 & _T_168) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@127143.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_78 & _T_86) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get address not aligned to size (connected at Debug.scala:632:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@127156.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_78 & _T_86) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@127157.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_78 & _T_182) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get contains invalid mask (connected at Debug.scala:632:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@127172.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_78 & _T_182) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@127173.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_84 & _T_168) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutFull type unsupported by manager (connected at Debug.scala:632:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@127207.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_84 & _T_168) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@127208.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_84 & _T_86) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull address not aligned to size (connected at Debug.scala:632:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@127221.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_84 & _T_86) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@127222.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_84 & _T_182) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull contains invalid mask (connected at Debug.scala:632:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@127237.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_84 & _T_182) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@127238.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_90 & _T_168) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutPartial type unsupported by manager (connected at Debug.scala:632:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@127264.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_90 & _T_168) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@127265.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_90 & _T_86) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial address not aligned to size (connected at Debug.scala:632:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@127278.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_90 & _T_86) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@127279.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_94 & _T_73) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Arithmetic type unsupported by manager (connected at Debug.scala:632:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@127320.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_94 & _T_73) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@127321.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_94 & _T_86) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic address not aligned to size (connected at Debug.scala:632:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@127334.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_94 & _T_86) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@127335.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_94 & _T_182) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic contains invalid mask (connected at Debug.scala:632:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@127350.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_94 & _T_182) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@127351.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_100 & _T_73) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Logical type unsupported by manager (connected at Debug.scala:632:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@127374.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_100 & _T_73) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@127375.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_100 & _T_86) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical address not aligned to size (connected at Debug.scala:632:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@127388.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_100 & _T_86) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@127389.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_100 & _T_182) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical contains invalid mask (connected at Debug.scala:632:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@127404.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_100 & _T_182) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@127405.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_106 & _T_73) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Hint type unsupported by manager (connected at Debug.scala:632:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@127428.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_106 & _T_73) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@127429.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_106 & _T_86) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint address not aligned to size (connected at Debug.scala:632:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@127442.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_106 & _T_86) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@127443.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_106 & _T_182) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint contains invalid mask (connected at Debug.scala:632:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@127458.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_106 & _T_182) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@127459.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_in_d_valid & _T_362) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel has invalid opcode (connected at Debug.scala:632:19)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@127477.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (io_in_d_valid & _T_362) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@127478.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_112 & _T_73) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid sink ID (connected at Debug.scala:632:19)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@127540.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_112 & _T_73) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@127541.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_114 & _T_73) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid sink ID (connected at Debug.scala:632:19)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@127598.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_114 & _T_73) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@127599.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_536 & _T_540) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel opcode changed within multibeat operation (connected at Debug.scala:632:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@127817.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_536 & _T_540) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@127818.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_536 & _T_556) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel address changed with multibeat operation (connected at Debug.scala:632:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@127849.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_536 & _T_556) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@127850.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_585 & _T_589) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel opcode changed within multibeat operation (connected at Debug.scala:632:19)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@127898.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_585 & _T_589) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@127899.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_668 & _T_684) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel re-used a source ID (connected at Debug.scala:632:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@128075.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_668 & _T_684) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@128076.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_707 & _T_718) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel acknowledged for nothing inflight (connected at Debug.scala:632:19)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@128126.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_707 & _T_718) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@128127.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_707 & _T_731) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper opcode response (connected at Debug.scala:632:19)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@128143.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_707 & _T_731) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@128144.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_707 & _T_738) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper response size (connected at Debug.scala:632:19)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@128154.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_707 & _T_738) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@128155.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_745 & _T_750) begin
          $fwrite(32'h80000002,"Assertion failed: ready check\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@128172.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_745 & _T_750) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@128173.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_769) begin
          $fwrite(32'h80000002,"Assertion failed: TileLink timeout expired (connected at Debug.scala:632:19)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@128201.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_769) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@128202.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
