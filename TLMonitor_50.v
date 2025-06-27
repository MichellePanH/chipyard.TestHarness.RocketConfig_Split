module TLMonitor_50( // @[:chipyard.TestHarness.RocketConfig.fir@124833.2]
  input        clock, // @[:chipyard.TestHarness.RocketConfig.fir@124834.4]
  input        reset, // @[:chipyard.TestHarness.RocketConfig.fir@124835.4]
  input        io_in_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@124836.4]
  input        io_in_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@124836.4]
  input  [2:0] io_in_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@124836.4]
  input  [8:0] io_in_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@124836.4]
  input  [3:0] io_in_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@124836.4]
  input        io_in_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@124836.4]
  input        io_in_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@124836.4]
  input  [2:0] io_in_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@124836.4]
  input  [1:0] io_in_d_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@124836.4]
  input  [1:0] io_in_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@124836.4]
  input        io_in_d_bits_sink, // @[:chipyard.TestHarness.RocketConfig.fir@124836.4]
  input        io_in_d_bits_denied, // @[:chipyard.TestHarness.RocketConfig.fir@124836.4]
  input        io_in_d_bits_corrupt // @[:chipyard.TestHarness.RocketConfig.fir@124836.4]
);
  wire [31:0] plusarg_reader_out; // @[PlusArg.scala 44:11:chipyard.TestHarness.RocketConfig.fir@126091.4]
  wire [8:0] _T_10; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@124855.6]
  wire  _T_11; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@124856.6]
  wire [9:0] _T_48; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@124893.6]
  wire  _T_56; // @[Monitor.scala 79:25:chipyard.TestHarness.RocketConfig.fir@124905.6]
  wire [9:0] _T_61; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@124911.8]
  wire  _T_62; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@124912.8]
  wire  _T_67; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@124917.8]
  wire  _T_79; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@124945.8]
  wire  _T_80; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@124946.8]
  wire [3:0] _T_85; // @[Monitor.scala 86:18:chipyard.TestHarness.RocketConfig.fir@124959.8]
  wire  _T_86; // @[Monitor.scala 86:31:chipyard.TestHarness.RocketConfig.fir@124960.8]
  wire  _T_88; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@124962.8]
  wire  _T_89; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@124963.8]
  wire  _T_94; // @[Monitor.scala 90:25:chipyard.TestHarness.RocketConfig.fir@124977.6]
  wire  _T_136; // @[Monitor.scala 102:25:chipyard.TestHarness.RocketConfig.fir@125057.6]
  wire  _T_149; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@125071.8]
  wire  _T_150; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@125072.8]
  wire  _T_161; // @[Monitor.scala 107:30:chipyard.TestHarness.RocketConfig.fir@125099.8]
  wire  _T_163; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@125101.8]
  wire  _T_164; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@125102.8]
  wire  _T_169; // @[Monitor.scala 111:25:chipyard.TestHarness.RocketConfig.fir@125116.6]
  wire  _T_198; // @[Monitor.scala 119:25:chipyard.TestHarness.RocketConfig.fir@125167.6]
  wire  _T_229; // @[Monitor.scala 127:25:chipyard.TestHarness.RocketConfig.fir@125220.6]
  wire  _T_255; // @[Monitor.scala 135:25:chipyard.TestHarness.RocketConfig.fir@125268.6]
  wire  _T_281; // @[Monitor.scala 143:25:chipyard.TestHarness.RocketConfig.fir@125316.6]
  wire  _T_311; // @[Bundles.scala 44:24:chipyard.TestHarness.RocketConfig.fir@125374.6]
  wire  _T_313; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125376.6]
  wire  _T_314; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125377.6]
  wire  _T_318; // @[Monitor.scala 307:25:chipyard.TestHarness.RocketConfig.fir@125387.6]
  wire  _T_322; // @[Monitor.scala 309:27:chipyard.TestHarness.RocketConfig.fir@125396.8]
  wire  _T_324; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125398.8]
  wire  _T_325; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125399.8]
  wire  _T_326; // @[Monitor.scala 310:28:chipyard.TestHarness.RocketConfig.fir@125404.8]
  wire  _T_328; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125406.8]
  wire  _T_329; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125407.8]
  wire  _T_330; // @[Monitor.scala 311:15:chipyard.TestHarness.RocketConfig.fir@125412.8]
  wire  _T_332; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125414.8]
  wire  _T_333; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125415.8]
  wire  _T_334; // @[Monitor.scala 312:15:chipyard.TestHarness.RocketConfig.fir@125420.8]
  wire  _T_336; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125422.8]
  wire  _T_337; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125423.8]
  wire  _T_338; // @[Monitor.scala 315:25:chipyard.TestHarness.RocketConfig.fir@125429.6]
  wire  _T_349; // @[Bundles.scala 104:26:chipyard.TestHarness.RocketConfig.fir@125453.8]
  wire  _T_351; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125455.8]
  wire  _T_352; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125456.8]
  wire  _T_353; // @[Monitor.scala 320:28:chipyard.TestHarness.RocketConfig.fir@125461.8]
  wire  _T_355; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125463.8]
  wire  _T_356; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125464.8]
  wire  _T_366; // @[Monitor.scala 325:25:chipyard.TestHarness.RocketConfig.fir@125487.6]
  wire  _T_386; // @[Monitor.scala 331:30:chipyard.TestHarness.RocketConfig.fir@125528.8]
  wire  _T_388; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125530.8]
  wire  _T_389; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125531.8]
  wire  _T_395; // @[Monitor.scala 335:25:chipyard.TestHarness.RocketConfig.fir@125546.6]
  wire  _T_412; // @[Monitor.scala 343:25:chipyard.TestHarness.RocketConfig.fir@125581.6]
  wire  _T_430; // @[Monitor.scala 351:25:chipyard.TestHarness.RocketConfig.fir@125617.6]
  wire  _T_462; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@125683.4]
  reg  _T_471; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@125692.4]
  reg [31:0] _RAND_0;
  wire  _T_473; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@125694.4]
  wire  _T_474; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@125695.4]
  reg [2:0] _T_482; // @[Monitor.scala 381:22:chipyard.TestHarness.RocketConfig.fir@125706.4]
  reg [31:0] _RAND_1;
  reg [8:0] _T_486; // @[Monitor.scala 385:22:chipyard.TestHarness.RocketConfig.fir@125710.4]
  reg [31:0] _RAND_2;
  wire  _T_487; // @[Monitor.scala 386:22:chipyard.TestHarness.RocketConfig.fir@125711.4]
  wire  _T_488; // @[Monitor.scala 386:19:chipyard.TestHarness.RocketConfig.fir@125712.4]
  wire  _T_489; // @[Monitor.scala 387:32:chipyard.TestHarness.RocketConfig.fir@125714.6]
  wire  _T_491; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@125716.6]
  wire  _T_492; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@125717.6]
  wire  _T_505; // @[Monitor.scala 391:32:chipyard.TestHarness.RocketConfig.fir@125746.6]
  wire  _T_507; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@125748.6]
  wire  _T_508; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@125749.6]
  wire  _T_510; // @[Monitor.scala 393:20:chipyard.TestHarness.RocketConfig.fir@125756.4]
  wire  _T_511; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@125764.4]
  reg  _T_519; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@125772.4]
  reg [31:0] _RAND_3;
  wire  _T_521; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@125774.4]
  wire  _T_522; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@125775.4]
  reg [2:0] _T_530; // @[Monitor.scala 532:22:chipyard.TestHarness.RocketConfig.fir@125786.4]
  reg [31:0] _RAND_4;
  reg [1:0] _T_531; // @[Monitor.scala 533:22:chipyard.TestHarness.RocketConfig.fir@125787.4]
  reg [31:0] _RAND_5;
  reg [1:0] _T_532; // @[Monitor.scala 534:22:chipyard.TestHarness.RocketConfig.fir@125788.4]
  reg [31:0] _RAND_6;
  reg  _T_534; // @[Monitor.scala 536:22:chipyard.TestHarness.RocketConfig.fir@125790.4]
  reg [31:0] _RAND_7;
  reg  _T_535; // @[Monitor.scala 537:22:chipyard.TestHarness.RocketConfig.fir@125791.4]
  reg [31:0] _RAND_8;
  wire  _T_536; // @[Monitor.scala 538:22:chipyard.TestHarness.RocketConfig.fir@125792.4]
  wire  _T_537; // @[Monitor.scala 538:19:chipyard.TestHarness.RocketConfig.fir@125793.4]
  wire  _T_538; // @[Monitor.scala 539:29:chipyard.TestHarness.RocketConfig.fir@125795.6]
  wire  _T_540; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125797.6]
  wire  _T_541; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125798.6]
  wire  _T_542; // @[Monitor.scala 540:29:chipyard.TestHarness.RocketConfig.fir@125803.6]
  wire  _T_544; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125805.6]
  wire  _T_545; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125806.6]
  wire  _T_546; // @[Monitor.scala 541:29:chipyard.TestHarness.RocketConfig.fir@125811.6]
  wire  _T_548; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125813.6]
  wire  _T_549; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125814.6]
  wire  _T_554; // @[Monitor.scala 543:29:chipyard.TestHarness.RocketConfig.fir@125827.6]
  wire  _T_556; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125829.6]
  wire  _T_557; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125830.6]
  wire  _T_558; // @[Monitor.scala 544:29:chipyard.TestHarness.RocketConfig.fir@125835.6]
  wire  _T_560; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125837.6]
  wire  _T_561; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125838.6]
  wire  _T_563; // @[Monitor.scala 546:20:chipyard.TestHarness.RocketConfig.fir@125845.4]
  reg  inflight; // @[Monitor.scala 608:27:chipyard.TestHarness.RocketConfig.fir@125854.4]
  reg [31:0] _RAND_9;
  reg [3:0] inflight_opcodes; // @[Monitor.scala 610:35:chipyard.TestHarness.RocketConfig.fir@125855.4]
  reg [31:0] _RAND_10;
  reg [3:0] inflight_sizes; // @[Monitor.scala 612:33:chipyard.TestHarness.RocketConfig.fir@125856.4]
  reg [31:0] _RAND_11;
  reg  _T_573; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@125866.4]
  reg [31:0] _RAND_12;
  wire  _T_575; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@125868.4]
  wire  a_first; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@125869.4]
  reg  _T_591; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@125888.4]
  reg [31:0] _RAND_13;
  wire  _T_593; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@125890.4]
  wire  d_first; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@125891.4]
  wire [15:0] _T_606; // @[Monitor.scala 606:57:chipyard.TestHarness.RocketConfig.fir@125915.4]
  wire [15:0] _GEN_56; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@125916.4]
  wire [15:0] _T_607; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@125916.4]
  wire [15:0] _T_608; // @[Monitor.scala 629:152:chipyard.TestHarness.RocketConfig.fir@125917.4]
  wire [15:0] _GEN_58; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@125927.4]
  wire [15:0] _T_615; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@125927.4]
  wire [15:0] _T_616; // @[Monitor.scala 633:144:chipyard.TestHarness.RocketConfig.fir@125928.4]
  wire  _T_620; // @[Monitor.scala 643:27:chipyard.TestHarness.RocketConfig.fir@125953.4]
  wire [3:0] _T_623; // @[Monitor.scala 645:53:chipyard.TestHarness.RocketConfig.fir@125958.6]
  wire [3:0] _T_624; // @[Monitor.scala 645:61:chipyard.TestHarness.RocketConfig.fir@125959.6]
  wire [3:0] a_opcodes_set_interm; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@125955.4]
  wire [18:0] _T_628; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@125965.6]
  wire [2:0] a_sizes_set_interm; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@125955.4]
  wire [17:0] _T_630; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@125968.6]
  wire  _T_633; // @[Monitor.scala 649:17:chipyard.TestHarness.RocketConfig.fir@125972.6]
  wire  _T_635; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@125974.6]
  wire  _T_636; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@125975.6]
  wire [1:0] _GEN_15; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@125955.4]
  wire [18:0] _GEN_18; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@125955.4]
  wire [17:0] _GEN_19; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@125955.4]
  wire  _T_639; // @[Monitor.scala 660:27:chipyard.TestHarness.RocketConfig.fir@125989.4]
  wire  _T_641; // @[Monitor.scala 660:75:chipyard.TestHarness.RocketConfig.fir@125991.4]
  wire  _T_642; // @[Monitor.scala 660:72:chipyard.TestHarness.RocketConfig.fir@125992.4]
  wire [30:0] _T_649; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@126001.6]
  wire [1:0] _GEN_20; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@125993.4]
  wire [30:0] _GEN_21; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@125993.4]
  wire  _T_656; // @[Monitor.scala 665:26:chipyard.TestHarness.RocketConfig.fir@126011.4]
  wire  _T_659; // @[Monitor.scala 665:71:chipyard.TestHarness.RocketConfig.fir@126014.4]
  wire  _T_664; // @[Monitor.scala 666:142:chipyard.TestHarness.RocketConfig.fir@126020.6]
  wire  _T_665; // @[Monitor.scala 666:119:chipyard.TestHarness.RocketConfig.fir@126021.6]
  wire  _T_666; // @[Monitor.scala 666:166:chipyard.TestHarness.RocketConfig.fir@126022.6]
  wire  _T_667; // @[Monitor.scala 666:49:chipyard.TestHarness.RocketConfig.fir@126023.6]
  wire  _T_669; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@126025.6]
  wire  _T_670; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@126026.6]
  wire [3:0] a_opcode_lookup; // @[:chipyard.TestHarness.RocketConfig.fir@125908.4 :chipyard.TestHarness.RocketConfig.fir@125909.4 Monitor.scala 629:21:chipyard.TestHarness.RocketConfig.fir@125918.4]
  wire [2:0] _GEN_25; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@126032.6]
  wire [2:0] _GEN_26; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@126032.6]
  wire [2:0] _GEN_27; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@126032.6]
  wire [2:0] _GEN_28; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@126032.6]
  wire [2:0] _GEN_29; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@126032.6]
  wire [2:0] _GEN_30; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@126032.6]
  wire  _T_672; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@126032.6]
  wire [2:0] _GEN_37; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@126034.6]
  wire [2:0] _GEN_38; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@126034.6]
  wire  _T_674; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@126034.6]
  wire  _T_675; // @[Monitor.scala 667:71:chipyard.TestHarness.RocketConfig.fir@126035.6]
  wire [2:0] _GEN_41; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@126036.6]
  wire [2:0] _GEN_42; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@126036.6]
  wire [2:0] _GEN_43; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@126036.6]
  wire [2:0] _GEN_44; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@126036.6]
  wire [2:0] _GEN_45; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@126036.6]
  wire [2:0] _GEN_46; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@126036.6]
  wire  _T_676; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@126036.6]
  wire [2:0] _GEN_53; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@126037.6]
  wire [2:0] _GEN_54; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@126037.6]
  wire  _T_677; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@126037.6]
  wire  _T_678; // @[Monitor.scala 668:99:chipyard.TestHarness.RocketConfig.fir@126038.6]
  wire  _T_679; // @[Monitor.scala 668:34:chipyard.TestHarness.RocketConfig.fir@126039.6]
  wire  _T_680; // @[Monitor.scala 668:15:chipyard.TestHarness.RocketConfig.fir@126040.6]
  wire  _T_682; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@126042.6]
  wire  _T_683; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@126043.6]
  wire [3:0] a_size_lookup; // @[:chipyard.TestHarness.RocketConfig.fir@125919.4 :chipyard.TestHarness.RocketConfig.fir@125920.4 Monitor.scala 633:19:chipyard.TestHarness.RocketConfig.fir@125929.4]
  wire [3:0] _GEN_60; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@126048.6]
  wire  _T_684; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@126048.6]
  wire  _T_687; // @[Monitor.scala 670:53:chipyard.TestHarness.RocketConfig.fir@126051.6]
  wire  _T_689; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@126053.6]
  wire  _T_690; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@126054.6]
  wire  _T_692; // @[Monitor.scala 672:36:chipyard.TestHarness.RocketConfig.fir@126061.4]
  wire  _T_693; // @[Monitor.scala 672:47:chipyard.TestHarness.RocketConfig.fir@126062.4]
  wire  _T_697; // @[Monitor.scala 672:116:chipyard.TestHarness.RocketConfig.fir@126066.4]
  wire  _T_698; // @[Monitor.scala 673:15:chipyard.TestHarness.RocketConfig.fir@126068.6]
  wire  _T_699; // @[Monitor.scala 673:32:chipyard.TestHarness.RocketConfig.fir@126069.6]
  wire  _T_701; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@126071.6]
  wire  _T_702; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@126072.6]
  wire  a_set; // @[:chipyard.TestHarness.RocketConfig.fir@125902.4 :chipyard.TestHarness.RocketConfig.fir@125903.4 Monitor.scala 644:13:chipyard.TestHarness.RocketConfig.fir@125957.6]
  wire  _T_703; // @[Monitor.scala 680:27:chipyard.TestHarness.RocketConfig.fir@126078.4]
  wire  d_clr; // @[:chipyard.TestHarness.RocketConfig.fir@125981.4 :chipyard.TestHarness.RocketConfig.fir@125982.4 Monitor.scala 661:13:chipyard.TestHarness.RocketConfig.fir@125995.6]
  wire  _T_704; // @[Monitor.scala 680:38:chipyard.TestHarness.RocketConfig.fir@126079.4]
  wire  _T_705; // @[Monitor.scala 680:36:chipyard.TestHarness.RocketConfig.fir@126080.4]
  wire [3:0] a_opcodes_set; // @[:chipyard.TestHarness.RocketConfig.fir@125904.4 :chipyard.TestHarness.RocketConfig.fir@125905.4 Monitor.scala 647:21:chipyard.TestHarness.RocketConfig.fir@125966.6]
  wire [3:0] _T_706; // @[Monitor.scala 681:43:chipyard.TestHarness.RocketConfig.fir@126082.4]
  wire [3:0] d_opcodes_clr; // @[:chipyard.TestHarness.RocketConfig.fir@125983.4 :chipyard.TestHarness.RocketConfig.fir@125984.4 Monitor.scala 662:21:chipyard.TestHarness.RocketConfig.fir@126002.6]
  wire [3:0] _T_707; // @[Monitor.scala 681:62:chipyard.TestHarness.RocketConfig.fir@126083.4]
  wire [3:0] _T_708; // @[Monitor.scala 681:60:chipyard.TestHarness.RocketConfig.fir@126084.4]
  wire [3:0] a_sizes_set; // @[:chipyard.TestHarness.RocketConfig.fir@125906.4 :chipyard.TestHarness.RocketConfig.fir@125907.4 Monitor.scala 648:19:chipyard.TestHarness.RocketConfig.fir@125969.6]
  wire [3:0] _T_709; // @[Monitor.scala 682:39:chipyard.TestHarness.RocketConfig.fir@126086.4]
  wire [3:0] _T_711; // @[Monitor.scala 682:54:chipyard.TestHarness.RocketConfig.fir@126088.4]
  reg [31:0] _T_712; // @[Monitor.scala 684:27:chipyard.TestHarness.RocketConfig.fir@126090.4]
  reg [31:0] _RAND_14;
  wire  _T_713; // @[Monitor.scala 687:26:chipyard.TestHarness.RocketConfig.fir@126093.4]
  wire  _T_714; // @[Monitor.scala 687:16:chipyard.TestHarness.RocketConfig.fir@126094.4]
  wire  _T_715; // @[Monitor.scala 687:39:chipyard.TestHarness.RocketConfig.fir@126095.4]
  wire  _T_716; // @[Monitor.scala 687:30:chipyard.TestHarness.RocketConfig.fir@126096.4]
  wire  _T_717; // @[Monitor.scala 687:59:chipyard.TestHarness.RocketConfig.fir@126097.4]
  wire  _T_718; // @[Monitor.scala 687:47:chipyard.TestHarness.RocketConfig.fir@126098.4]
  wire  _T_720; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@126100.4]
  wire  _T_721; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@126101.4]
  wire [31:0] _T_723; // @[Monitor.scala 689:26:chipyard.TestHarness.RocketConfig.fir@126107.4]
  wire  _T_726; // @[Monitor.scala 690:27:chipyard.TestHarness.RocketConfig.fir@126111.4]
  wire  _GEN_61; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@124919.10]
  wire  _GEN_69; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@124991.10]
  wire  _GEN_79; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@125074.10]
  wire  _GEN_85; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@125133.10]
  wire  _GEN_91; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@125184.10]
  wire  _GEN_95; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@125234.10]
  wire  _GEN_101; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@125282.10]
  wire  _GEN_107; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@125330.10]
  wire  _GEN_113; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125401.10]
  wire  _GEN_121; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125442.10]
  wire  _GEN_131; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125500.10]
  wire  _GEN_141; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125560.10]
  wire  _GEN_145; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125595.10]
  wire  _GEN_149; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125631.10]
  plusarg_reader #(.FORMAT("tilelink_timeout=%d"), .DEFAULT(0), .WIDTH(32)) plusarg_reader ( // @[PlusArg.scala 44:11:chipyard.TestHarness.RocketConfig.fir@126091.4]
    .out(plusarg_reader_out)
  );
  assign _T_10 = io_in_a_bits_address & 9'h3; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@124855.6]
  assign _T_11 = _T_10 == 9'h0; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@124856.6]
  assign _T_48 = {1'b0,$signed(io_in_a_bits_address)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@124893.6]
  assign _T_56 = io_in_a_bits_opcode == 3'h6; // @[Monitor.scala 79:25:chipyard.TestHarness.RocketConfig.fir@124905.6]
  assign _T_61 = $signed(_T_48) & -10'sh200; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@124911.8]
  assign _T_62 = $signed(_T_61) == 10'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@124912.8]
  assign _T_67 = ~reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@124917.8]
  assign _T_79 = _T_11 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@124945.8]
  assign _T_80 = ~_T_79; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@124946.8]
  assign _T_85 = ~io_in_a_bits_mask; // @[Monitor.scala 86:18:chipyard.TestHarness.RocketConfig.fir@124959.8]
  assign _T_86 = _T_85 == 4'h0; // @[Monitor.scala 86:31:chipyard.TestHarness.RocketConfig.fir@124960.8]
  assign _T_88 = _T_86 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@124962.8]
  assign _T_89 = ~_T_88; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@124963.8]
  assign _T_94 = io_in_a_bits_opcode == 3'h7; // @[Monitor.scala 90:25:chipyard.TestHarness.RocketConfig.fir@124977.6]
  assign _T_136 = io_in_a_bits_opcode == 3'h4; // @[Monitor.scala 102:25:chipyard.TestHarness.RocketConfig.fir@125057.6]
  assign _T_149 = _T_62 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@125071.8]
  assign _T_150 = ~_T_149; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@125072.8]
  assign _T_161 = io_in_a_bits_mask == 4'hf; // @[Monitor.scala 107:30:chipyard.TestHarness.RocketConfig.fir@125099.8]
  assign _T_163 = _T_161 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@125101.8]
  assign _T_164 = ~_T_163; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@125102.8]
  assign _T_169 = io_in_a_bits_opcode == 3'h0; // @[Monitor.scala 111:25:chipyard.TestHarness.RocketConfig.fir@125116.6]
  assign _T_198 = io_in_a_bits_opcode == 3'h1; // @[Monitor.scala 119:25:chipyard.TestHarness.RocketConfig.fir@125167.6]
  assign _T_229 = io_in_a_bits_opcode == 3'h2; // @[Monitor.scala 127:25:chipyard.TestHarness.RocketConfig.fir@125220.6]
  assign _T_255 = io_in_a_bits_opcode == 3'h3; // @[Monitor.scala 135:25:chipyard.TestHarness.RocketConfig.fir@125268.6]
  assign _T_281 = io_in_a_bits_opcode == 3'h5; // @[Monitor.scala 143:25:chipyard.TestHarness.RocketConfig.fir@125316.6]
  assign _T_311 = io_in_d_bits_opcode <= 3'h6; // @[Bundles.scala 44:24:chipyard.TestHarness.RocketConfig.fir@125374.6]
  assign _T_313 = _T_311 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125376.6]
  assign _T_314 = ~_T_313; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125377.6]
  assign _T_318 = io_in_d_bits_opcode == 3'h6; // @[Monitor.scala 307:25:chipyard.TestHarness.RocketConfig.fir@125387.6]
  assign _T_322 = io_in_d_bits_size >= 2'h2; // @[Monitor.scala 309:27:chipyard.TestHarness.RocketConfig.fir@125396.8]
  assign _T_324 = _T_322 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125398.8]
  assign _T_325 = ~_T_324; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125399.8]
  assign _T_326 = io_in_d_bits_param == 2'h0; // @[Monitor.scala 310:28:chipyard.TestHarness.RocketConfig.fir@125404.8]
  assign _T_328 = _T_326 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125406.8]
  assign _T_329 = ~_T_328; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125407.8]
  assign _T_330 = ~io_in_d_bits_corrupt; // @[Monitor.scala 311:15:chipyard.TestHarness.RocketConfig.fir@125412.8]
  assign _T_332 = _T_330 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125414.8]
  assign _T_333 = ~_T_332; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125415.8]
  assign _T_334 = ~io_in_d_bits_denied; // @[Monitor.scala 312:15:chipyard.TestHarness.RocketConfig.fir@125420.8]
  assign _T_336 = _T_334 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125422.8]
  assign _T_337 = ~_T_336; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125423.8]
  assign _T_338 = io_in_d_bits_opcode == 3'h4; // @[Monitor.scala 315:25:chipyard.TestHarness.RocketConfig.fir@125429.6]
  assign _T_349 = io_in_d_bits_param <= 2'h2; // @[Bundles.scala 104:26:chipyard.TestHarness.RocketConfig.fir@125453.8]
  assign _T_351 = _T_349 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125455.8]
  assign _T_352 = ~_T_351; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125456.8]
  assign _T_353 = io_in_d_bits_param != 2'h2; // @[Monitor.scala 320:28:chipyard.TestHarness.RocketConfig.fir@125461.8]
  assign _T_355 = _T_353 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125463.8]
  assign _T_356 = ~_T_355; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125464.8]
  assign _T_366 = io_in_d_bits_opcode == 3'h5; // @[Monitor.scala 325:25:chipyard.TestHarness.RocketConfig.fir@125487.6]
  assign _T_386 = _T_334 | io_in_d_bits_corrupt; // @[Monitor.scala 331:30:chipyard.TestHarness.RocketConfig.fir@125528.8]
  assign _T_388 = _T_386 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125530.8]
  assign _T_389 = ~_T_388; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125531.8]
  assign _T_395 = io_in_d_bits_opcode == 3'h0; // @[Monitor.scala 335:25:chipyard.TestHarness.RocketConfig.fir@125546.6]
  assign _T_412 = io_in_d_bits_opcode == 3'h1; // @[Monitor.scala 343:25:chipyard.TestHarness.RocketConfig.fir@125581.6]
  assign _T_430 = io_in_d_bits_opcode == 3'h2; // @[Monitor.scala 351:25:chipyard.TestHarness.RocketConfig.fir@125617.6]
  assign _T_462 = io_in_a_ready & io_in_a_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@125683.4]
  assign _T_473 = _T_471 - 1'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@125694.4]
  assign _T_474 = ~_T_471; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@125695.4]
  assign _T_487 = ~_T_474; // @[Monitor.scala 386:22:chipyard.TestHarness.RocketConfig.fir@125711.4]
  assign _T_488 = io_in_a_valid & _T_487; // @[Monitor.scala 386:19:chipyard.TestHarness.RocketConfig.fir@125712.4]
  assign _T_489 = io_in_a_bits_opcode == _T_482; // @[Monitor.scala 387:32:chipyard.TestHarness.RocketConfig.fir@125714.6]
  assign _T_491 = _T_489 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@125716.6]
  assign _T_492 = ~_T_491; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@125717.6]
  assign _T_505 = io_in_a_bits_address == _T_486; // @[Monitor.scala 391:32:chipyard.TestHarness.RocketConfig.fir@125746.6]
  assign _T_507 = _T_505 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@125748.6]
  assign _T_508 = ~_T_507; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@125749.6]
  assign _T_510 = _T_462 & _T_474; // @[Monitor.scala 393:20:chipyard.TestHarness.RocketConfig.fir@125756.4]
  assign _T_511 = io_in_d_ready & io_in_d_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@125764.4]
  assign _T_521 = _T_519 - 1'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@125774.4]
  assign _T_522 = ~_T_519; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@125775.4]
  assign _T_536 = ~_T_522; // @[Monitor.scala 538:22:chipyard.TestHarness.RocketConfig.fir@125792.4]
  assign _T_537 = io_in_d_valid & _T_536; // @[Monitor.scala 538:19:chipyard.TestHarness.RocketConfig.fir@125793.4]
  assign _T_538 = io_in_d_bits_opcode == _T_530; // @[Monitor.scala 539:29:chipyard.TestHarness.RocketConfig.fir@125795.6]
  assign _T_540 = _T_538 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125797.6]
  assign _T_541 = ~_T_540; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125798.6]
  assign _T_542 = io_in_d_bits_param == _T_531; // @[Monitor.scala 540:29:chipyard.TestHarness.RocketConfig.fir@125803.6]
  assign _T_544 = _T_542 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125805.6]
  assign _T_545 = ~_T_544; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125806.6]
  assign _T_546 = io_in_d_bits_size == _T_532; // @[Monitor.scala 541:29:chipyard.TestHarness.RocketConfig.fir@125811.6]
  assign _T_548 = _T_546 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125813.6]
  assign _T_549 = ~_T_548; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125814.6]
  assign _T_554 = io_in_d_bits_sink == _T_534; // @[Monitor.scala 543:29:chipyard.TestHarness.RocketConfig.fir@125827.6]
  assign _T_556 = _T_554 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125829.6]
  assign _T_557 = ~_T_556; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125830.6]
  assign _T_558 = io_in_d_bits_denied == _T_535; // @[Monitor.scala 544:29:chipyard.TestHarness.RocketConfig.fir@125835.6]
  assign _T_560 = _T_558 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125837.6]
  assign _T_561 = ~_T_560; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125838.6]
  assign _T_563 = _T_511 & _T_522; // @[Monitor.scala 546:20:chipyard.TestHarness.RocketConfig.fir@125845.4]
  assign _T_575 = _T_573 - 1'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@125868.4]
  assign a_first = ~_T_573; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@125869.4]
  assign _T_593 = _T_591 - 1'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@125890.4]
  assign d_first = ~_T_591; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@125891.4]
  assign _T_606 = 16'h10 - 16'h1; // @[Monitor.scala 606:57:chipyard.TestHarness.RocketConfig.fir@125915.4]
  assign _GEN_56 = {{12'd0}, inflight_opcodes}; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@125916.4]
  assign _T_607 = _GEN_56 & _T_606; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@125916.4]
  assign _T_608 = {{1'd0}, _T_607[15:1]}; // @[Monitor.scala 629:152:chipyard.TestHarness.RocketConfig.fir@125917.4]
  assign _GEN_58 = {{12'd0}, inflight_sizes}; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@125927.4]
  assign _T_615 = _GEN_58 & _T_606; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@125927.4]
  assign _T_616 = {{1'd0}, _T_615[15:1]}; // @[Monitor.scala 633:144:chipyard.TestHarness.RocketConfig.fir@125928.4]
  assign _T_620 = _T_462 & a_first; // @[Monitor.scala 643:27:chipyard.TestHarness.RocketConfig.fir@125953.4]
  assign _T_623 = {io_in_a_bits_opcode, 1'h0}; // @[Monitor.scala 645:53:chipyard.TestHarness.RocketConfig.fir@125958.6]
  assign _T_624 = _T_623 | 4'h1; // @[Monitor.scala 645:61:chipyard.TestHarness.RocketConfig.fir@125959.6]
  assign a_opcodes_set_interm = _T_620 ? _T_624 : 4'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@125955.4]
  assign _T_628 = {{15'd0}, a_opcodes_set_interm}; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@125965.6]
  assign a_sizes_set_interm = _T_620 ? 3'h5 : 3'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@125955.4]
  assign _T_630 = {{15'd0}, a_sizes_set_interm}; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@125968.6]
  assign _T_633 = ~inflight; // @[Monitor.scala 649:17:chipyard.TestHarness.RocketConfig.fir@125972.6]
  assign _T_635 = _T_633 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@125974.6]
  assign _T_636 = ~_T_635; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@125975.6]
  assign _GEN_15 = _T_620 ? 2'h1 : 2'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@125955.4]
  assign _GEN_18 = _T_620 ? _T_628 : 19'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@125955.4]
  assign _GEN_19 = _T_620 ? _T_630 : 18'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@125955.4]
  assign _T_639 = _T_511 & d_first; // @[Monitor.scala 660:27:chipyard.TestHarness.RocketConfig.fir@125989.4]
  assign _T_641 = ~_T_318; // @[Monitor.scala 660:75:chipyard.TestHarness.RocketConfig.fir@125991.4]
  assign _T_642 = _T_639 & _T_641; // @[Monitor.scala 660:72:chipyard.TestHarness.RocketConfig.fir@125992.4]
  assign _T_649 = {{15'd0}, _T_606}; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@126001.6]
  assign _GEN_20 = _T_642 ? 2'h1 : 2'h0; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@125993.4]
  assign _GEN_21 = _T_642 ? _T_649 : 31'h0; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@125993.4]
  assign _T_656 = io_in_d_valid & d_first; // @[Monitor.scala 665:26:chipyard.TestHarness.RocketConfig.fir@126011.4]
  assign _T_659 = _T_656 & _T_641; // @[Monitor.scala 665:71:chipyard.TestHarness.RocketConfig.fir@126014.4]
  assign _T_664 = 2'h2 == io_in_d_bits_size; // @[Monitor.scala 666:142:chipyard.TestHarness.RocketConfig.fir@126020.6]
  assign _T_665 = io_in_a_valid & _T_664; // @[Monitor.scala 666:119:chipyard.TestHarness.RocketConfig.fir@126021.6]
  assign _T_666 = _T_665 & a_first; // @[Monitor.scala 666:166:chipyard.TestHarness.RocketConfig.fir@126022.6]
  assign _T_667 = inflight | _T_666; // @[Monitor.scala 666:49:chipyard.TestHarness.RocketConfig.fir@126023.6]
  assign _T_669 = _T_667 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@126025.6]
  assign _T_670 = ~_T_669; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@126026.6]
  assign a_opcode_lookup = _T_608[3:0]; // @[:chipyard.TestHarness.RocketConfig.fir@125908.4 :chipyard.TestHarness.RocketConfig.fir@125909.4 Monitor.scala 629:21:chipyard.TestHarness.RocketConfig.fir@125918.4]
  assign _GEN_25 = 3'h2 == a_opcode_lookup[2:0] ? 3'h1 : 3'h0; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@126032.6]
  assign _GEN_26 = 3'h3 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_25; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@126032.6]
  assign _GEN_27 = 3'h4 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_26; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@126032.6]
  assign _GEN_28 = 3'h5 == a_opcode_lookup[2:0] ? 3'h2 : _GEN_27; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@126032.6]
  assign _GEN_29 = 3'h6 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_28; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@126032.6]
  assign _GEN_30 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_29; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@126032.6]
  assign _T_672 = io_in_d_bits_opcode == _GEN_30; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@126032.6]
  assign _GEN_37 = 3'h6 == a_opcode_lookup[2:0] ? 3'h5 : _GEN_28; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@126034.6]
  assign _GEN_38 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_37; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@126034.6]
  assign _T_674 = io_in_d_bits_opcode == _GEN_38; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@126034.6]
  assign _T_675 = _T_672 | _T_674; // @[Monitor.scala 667:71:chipyard.TestHarness.RocketConfig.fir@126035.6]
  assign _GEN_41 = 3'h2 == io_in_a_bits_opcode ? 3'h1 : 3'h0; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@126036.6]
  assign _GEN_42 = 3'h3 == io_in_a_bits_opcode ? 3'h1 : _GEN_41; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@126036.6]
  assign _GEN_43 = 3'h4 == io_in_a_bits_opcode ? 3'h1 : _GEN_42; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@126036.6]
  assign _GEN_44 = 3'h5 == io_in_a_bits_opcode ? 3'h2 : _GEN_43; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@126036.6]
  assign _GEN_45 = 3'h6 == io_in_a_bits_opcode ? 3'h4 : _GEN_44; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@126036.6]
  assign _GEN_46 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_45; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@126036.6]
  assign _T_676 = io_in_d_bits_opcode == _GEN_46; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@126036.6]
  assign _GEN_53 = 3'h6 == io_in_a_bits_opcode ? 3'h5 : _GEN_44; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@126037.6]
  assign _GEN_54 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_53; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@126037.6]
  assign _T_677 = io_in_d_bits_opcode == _GEN_54; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@126037.6]
  assign _T_678 = _T_676 | _T_677; // @[Monitor.scala 668:99:chipyard.TestHarness.RocketConfig.fir@126038.6]
  assign _T_679 = io_in_a_valid & _T_678; // @[Monitor.scala 668:34:chipyard.TestHarness.RocketConfig.fir@126039.6]
  assign _T_680 = _T_675 | _T_679; // @[Monitor.scala 668:15:chipyard.TestHarness.RocketConfig.fir@126040.6]
  assign _T_682 = _T_680 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@126042.6]
  assign _T_683 = ~_T_682; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@126043.6]
  assign a_size_lookup = _T_616[3:0]; // @[:chipyard.TestHarness.RocketConfig.fir@125919.4 :chipyard.TestHarness.RocketConfig.fir@125920.4 Monitor.scala 633:19:chipyard.TestHarness.RocketConfig.fir@125929.4]
  assign _GEN_60 = {{2'd0}, io_in_d_bits_size}; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@126048.6]
  assign _T_684 = _GEN_60 == a_size_lookup; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@126048.6]
  assign _T_687 = _T_684 | _T_665; // @[Monitor.scala 670:53:chipyard.TestHarness.RocketConfig.fir@126051.6]
  assign _T_689 = _T_687 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@126053.6]
  assign _T_690 = ~_T_689; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@126054.6]
  assign _T_692 = _T_656 & a_first; // @[Monitor.scala 672:36:chipyard.TestHarness.RocketConfig.fir@126061.4]
  assign _T_693 = _T_692 & io_in_a_valid; // @[Monitor.scala 672:47:chipyard.TestHarness.RocketConfig.fir@126062.4]
  assign _T_697 = _T_693 & _T_641; // @[Monitor.scala 672:116:chipyard.TestHarness.RocketConfig.fir@126066.4]
  assign _T_698 = ~io_in_d_ready; // @[Monitor.scala 673:15:chipyard.TestHarness.RocketConfig.fir@126068.6]
  assign _T_699 = _T_698 | io_in_a_ready; // @[Monitor.scala 673:32:chipyard.TestHarness.RocketConfig.fir@126069.6]
  assign _T_701 = _T_699 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@126071.6]
  assign _T_702 = ~_T_701; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@126072.6]
  assign a_set = _GEN_15[0]; // @[:chipyard.TestHarness.RocketConfig.fir@125902.4 :chipyard.TestHarness.RocketConfig.fir@125903.4 Monitor.scala 644:13:chipyard.TestHarness.RocketConfig.fir@125957.6]
  assign _T_703 = inflight | a_set; // @[Monitor.scala 680:27:chipyard.TestHarness.RocketConfig.fir@126078.4]
  assign d_clr = _GEN_20[0]; // @[:chipyard.TestHarness.RocketConfig.fir@125981.4 :chipyard.TestHarness.RocketConfig.fir@125982.4 Monitor.scala 661:13:chipyard.TestHarness.RocketConfig.fir@125995.6]
  assign _T_704 = ~d_clr; // @[Monitor.scala 680:38:chipyard.TestHarness.RocketConfig.fir@126079.4]
  assign _T_705 = _T_703 & _T_704; // @[Monitor.scala 680:36:chipyard.TestHarness.RocketConfig.fir@126080.4]
  assign a_opcodes_set = _GEN_18[3:0]; // @[:chipyard.TestHarness.RocketConfig.fir@125904.4 :chipyard.TestHarness.RocketConfig.fir@125905.4 Monitor.scala 647:21:chipyard.TestHarness.RocketConfig.fir@125966.6]
  assign _T_706 = inflight_opcodes | a_opcodes_set; // @[Monitor.scala 681:43:chipyard.TestHarness.RocketConfig.fir@126082.4]
  assign d_opcodes_clr = _GEN_21[3:0]; // @[:chipyard.TestHarness.RocketConfig.fir@125983.4 :chipyard.TestHarness.RocketConfig.fir@125984.4 Monitor.scala 662:21:chipyard.TestHarness.RocketConfig.fir@126002.6]
  assign _T_707 = ~d_opcodes_clr; // @[Monitor.scala 681:62:chipyard.TestHarness.RocketConfig.fir@126083.4]
  assign _T_708 = _T_706 & _T_707; // @[Monitor.scala 681:60:chipyard.TestHarness.RocketConfig.fir@126084.4]
  assign a_sizes_set = _GEN_19[3:0]; // @[:chipyard.TestHarness.RocketConfig.fir@125906.4 :chipyard.TestHarness.RocketConfig.fir@125907.4 Monitor.scala 648:19:chipyard.TestHarness.RocketConfig.fir@125969.6]
  assign _T_709 = inflight_sizes | a_sizes_set; // @[Monitor.scala 682:39:chipyard.TestHarness.RocketConfig.fir@126086.4]
  assign _T_711 = _T_709 & _T_707; // @[Monitor.scala 682:54:chipyard.TestHarness.RocketConfig.fir@126088.4]
  assign _T_713 = |inflight; // @[Monitor.scala 687:26:chipyard.TestHarness.RocketConfig.fir@126093.4]
  assign _T_714 = ~_T_713; // @[Monitor.scala 687:16:chipyard.TestHarness.RocketConfig.fir@126094.4]
  assign _T_715 = plusarg_reader_out == 32'h0; // @[Monitor.scala 687:39:chipyard.TestHarness.RocketConfig.fir@126095.4]
  assign _T_716 = _T_714 | _T_715; // @[Monitor.scala 687:30:chipyard.TestHarness.RocketConfig.fir@126096.4]
  assign _T_717 = _T_712 < plusarg_reader_out; // @[Monitor.scala 687:59:chipyard.TestHarness.RocketConfig.fir@126097.4]
  assign _T_718 = _T_716 | _T_717; // @[Monitor.scala 687:47:chipyard.TestHarness.RocketConfig.fir@126098.4]
  assign _T_720 = _T_718 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@126100.4]
  assign _T_721 = ~_T_720; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@126101.4]
  assign _T_723 = _T_712 + 32'h1; // @[Monitor.scala 689:26:chipyard.TestHarness.RocketConfig.fir@126107.4]
  assign _T_726 = _T_462 | _T_511; // @[Monitor.scala 690:27:chipyard.TestHarness.RocketConfig.fir@126111.4]
  assign _GEN_61 = io_in_a_valid & _T_56; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@124919.10]
  assign _GEN_69 = io_in_a_valid & _T_94; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@124991.10]
  assign _GEN_79 = io_in_a_valid & _T_136; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@125074.10]
  assign _GEN_85 = io_in_a_valid & _T_169; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@125133.10]
  assign _GEN_91 = io_in_a_valid & _T_198; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@125184.10]
  assign _GEN_95 = io_in_a_valid & _T_229; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@125234.10]
  assign _GEN_101 = io_in_a_valid & _T_255; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@125282.10]
  assign _GEN_107 = io_in_a_valid & _T_281; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@125330.10]
  assign _GEN_113 = io_in_d_valid & _T_318; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125401.10]
  assign _GEN_121 = io_in_d_valid & _T_338; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125442.10]
  assign _GEN_131 = io_in_d_valid & _T_366; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125500.10]
  assign _GEN_141 = io_in_d_valid & _T_395; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125560.10]
  assign _GEN_145 = io_in_d_valid & _T_412; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125595.10]
  assign _GEN_149 = io_in_d_valid & _T_430; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125631.10]
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
  _T_471 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_482 = _RAND_1[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_486 = _RAND_2[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_519 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_530 = _RAND_4[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_531 = _RAND_5[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  _T_532 = _RAND_6[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  _T_534 = _RAND_7[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  _T_535 = _RAND_8[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  inflight = _RAND_9[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  inflight_opcodes = _RAND_10[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  inflight_sizes = _RAND_11[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  _T_573 = _RAND_12[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  _T_591 = _RAND_13[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  _T_712 = _RAND_14[31:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      _T_471 <= 1'h0;
    end else if (_T_462) begin
      if (_T_474) begin
        _T_471 <= 1'h0;
      end else begin
        _T_471 <= _T_473;
      end
    end
    if (_T_510) begin
      _T_482 <= io_in_a_bits_opcode;
    end
    if (_T_510) begin
      _T_486 <= io_in_a_bits_address;
    end
    if (reset) begin
      _T_519 <= 1'h0;
    end else if (_T_511) begin
      if (_T_522) begin
        _T_519 <= 1'h0;
      end else begin
        _T_519 <= _T_521;
      end
    end
    if (_T_563) begin
      _T_530 <= io_in_d_bits_opcode;
    end
    if (_T_563) begin
      _T_531 <= io_in_d_bits_param;
    end
    if (_T_563) begin
      _T_532 <= io_in_d_bits_size;
    end
    if (_T_563) begin
      _T_534 <= io_in_d_bits_sink;
    end
    if (_T_563) begin
      _T_535 <= io_in_d_bits_denied;
    end
    if (reset) begin
      inflight <= 1'h0;
    end else begin
      inflight <= _T_705;
    end
    if (reset) begin
      inflight_opcodes <= 4'h0;
    end else begin
      inflight_opcodes <= _T_708;
    end
    if (reset) begin
      inflight_sizes <= 4'h0;
    end else begin
      inflight_sizes <= _T_711;
    end
    if (reset) begin
      _T_573 <= 1'h0;
    end else if (_T_462) begin
      if (a_first) begin
        _T_573 <= 1'h0;
      end else begin
        _T_573 <= _T_575;
      end
    end
    if (reset) begin
      _T_591 <= 1'h0;
    end else if (_T_511) begin
      if (d_first) begin
        _T_591 <= 1'h0;
      end else begin
        _T_591 <= _T_593;
      end
    end
    if (reset) begin
      _T_712 <= 32'h0;
    end else if (_T_726) begin
      _T_712 <= 32'h0;
    end else begin
      _T_712 <= _T_723;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_61 & _T_67) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock type unsupported by manager (connected at Debug.scala:606:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@124919.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_61 & _T_67) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@124920.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_61 & _T_67) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock from a client which does not support Probe (connected at Debug.scala:606:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@124926.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_61 & _T_67) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@124927.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_61 & _T_80) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock address not aligned to size (connected at Debug.scala:606:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@124948.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_61 & _T_80) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@124949.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_61 & _T_89) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock contains invalid mask (connected at Debug.scala:606:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@124965.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_61 & _T_89) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@124966.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_69 & _T_67) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm type unsupported by manager (connected at Debug.scala:606:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@124991.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_69 & _T_67) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@124992.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_69 & _T_67) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm from a client which does not support Probe (connected at Debug.scala:606:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@124998.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_69 & _T_67) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@124999.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_69 & _T_80) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm address not aligned to size (connected at Debug.scala:606:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@125020.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_69 & _T_80) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@125021.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_69 & _T_67) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm requests NtoB (connected at Debug.scala:606:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@125036.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_69 & _T_67) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@125037.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_69 & _T_89) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm contains invalid mask (connected at Debug.scala:606:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@125045.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_69 & _T_89) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@125046.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_79 & _T_150) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Get type unsupported by manager (connected at Debug.scala:606:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@125074.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_79 & _T_150) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@125075.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_79 & _T_80) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get address not aligned to size (connected at Debug.scala:606:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@125088.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_79 & _T_80) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@125089.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_79 & _T_164) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get contains invalid mask (connected at Debug.scala:606:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@125104.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_79 & _T_164) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@125105.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_150) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutFull type unsupported by manager (connected at Debug.scala:606:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@125133.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_150) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@125134.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_80) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull address not aligned to size (connected at Debug.scala:606:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@125147.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_80) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@125148.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_164) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull contains invalid mask (connected at Debug.scala:606:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@125163.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_164) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@125164.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_91 & _T_150) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutPartial type unsupported by manager (connected at Debug.scala:606:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@125184.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_91 & _T_150) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@125185.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_91 & _T_80) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial address not aligned to size (connected at Debug.scala:606:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@125198.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_91 & _T_80) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@125199.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_95 & _T_67) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Arithmetic type unsupported by manager (connected at Debug.scala:606:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@125234.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_95 & _T_67) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@125235.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_95 & _T_80) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic address not aligned to size (connected at Debug.scala:606:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@125248.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_95 & _T_80) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@125249.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_95 & _T_164) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic contains invalid mask (connected at Debug.scala:606:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@125264.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_95 & _T_164) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@125265.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_101 & _T_67) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Logical type unsupported by manager (connected at Debug.scala:606:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@125282.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_101 & _T_67) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@125283.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_101 & _T_80) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical address not aligned to size (connected at Debug.scala:606:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@125296.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_101 & _T_80) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@125297.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_101 & _T_164) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical contains invalid mask (connected at Debug.scala:606:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@125312.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_101 & _T_164) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@125313.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_107 & _T_67) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Hint type unsupported by manager (connected at Debug.scala:606:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@125330.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_107 & _T_67) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@125331.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_107 & _T_80) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint address not aligned to size (connected at Debug.scala:606:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@125344.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_107 & _T_80) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@125345.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_107 & _T_164) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint contains invalid mask (connected at Debug.scala:606:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@125360.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_107 & _T_164) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@125361.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_in_d_valid & _T_314) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel has invalid opcode (connected at Debug.scala:606:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125379.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (io_in_d_valid & _T_314) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125380.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_113 & _T_325) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck smaller than a beat (connected at Debug.scala:606:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125401.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_113 & _T_325) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125402.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_113 & _T_329) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseeAck carries invalid param (connected at Debug.scala:606:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125409.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_113 & _T_329) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125410.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_113 & _T_333) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck is corrupt (connected at Debug.scala:606:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125417.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_113 & _T_333) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125418.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_113 & _T_337) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck is denied (connected at Debug.scala:606:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125425.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_113 & _T_337) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125426.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_121 & _T_67) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid sink ID (connected at Debug.scala:606:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125442.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_121 & _T_67) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125443.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_121 & _T_325) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant smaller than a beat (connected at Debug.scala:606:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125450.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_121 & _T_325) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125451.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_121 & _T_352) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid cap param (connected at Debug.scala:606:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125458.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_121 & _T_352) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125459.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_121 & _T_356) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries toN param (connected at Debug.scala:606:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125466.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_121 & _T_356) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125467.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_121 & _T_333) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant is corrupt (connected at Debug.scala:606:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125474.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_121 & _T_333) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125475.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_131 & _T_67) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid sink ID (connected at Debug.scala:606:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125500.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_131 & _T_67) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125501.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_131 & _T_325) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData smaller than a beat (connected at Debug.scala:606:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125508.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_131 & _T_325) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125509.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_131 & _T_352) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid cap param (connected at Debug.scala:606:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125516.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_131 & _T_352) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125517.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_131 & _T_356) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries toN param (connected at Debug.scala:606:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125524.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_131 & _T_356) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125525.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_131 & _T_389) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData is denied but not corrupt (connected at Debug.scala:606:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125533.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_131 & _T_389) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125534.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_141 & _T_329) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck carries invalid param (connected at Debug.scala:606:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125560.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_141 & _T_329) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125561.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_141 & _T_333) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck is corrupt (connected at Debug.scala:606:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125568.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_141 & _T_333) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125569.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_145 & _T_329) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData carries invalid param (connected at Debug.scala:606:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125595.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_145 & _T_329) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125596.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_145 & _T_389) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData is denied but not corrupt (connected at Debug.scala:606:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125604.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_145 & _T_389) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125605.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_149 & _T_329) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck carries invalid param (connected at Debug.scala:606:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125631.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_149 & _T_329) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125632.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_149 & _T_333) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck is corrupt (connected at Debug.scala:606:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125639.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_149 & _T_333) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125640.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_488 & _T_492) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel opcode changed within multibeat operation (connected at Debug.scala:606:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@125719.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_488 & _T_492) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@125720.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_488 & _T_508) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel address changed with multibeat operation (connected at Debug.scala:606:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@125751.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_488 & _T_508) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@125752.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_537 & _T_541) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel opcode changed within multibeat operation (connected at Debug.scala:606:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125800.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_537 & _T_541) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125801.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_537 & _T_545) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel param changed within multibeat operation (connected at Debug.scala:606:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125808.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_537 & _T_545) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125809.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_537 & _T_549) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel size changed within multibeat operation (connected at Debug.scala:606:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125816.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_537 & _T_549) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125817.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_537 & _T_557) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel sink changed with multibeat operation (connected at Debug.scala:606:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125832.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_537 & _T_557) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125833.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_537 & _T_561) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel denied changed with multibeat operation (connected at Debug.scala:606:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125840.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_537 & _T_561) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@125841.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_620 & _T_636) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel re-used a source ID (connected at Debug.scala:606:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@125977.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_620 & _T_636) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@125978.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_659 & _T_670) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel acknowledged for nothing inflight (connected at Debug.scala:606:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@126028.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_659 & _T_670) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@126029.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_659 & _T_683) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper opcode response (connected at Debug.scala:606:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@126045.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_659 & _T_683) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@126046.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_659 & _T_690) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper response size (connected at Debug.scala:606:18)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@126056.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_659 & _T_690) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@126057.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_697 & _T_702) begin
          $fwrite(32'h80000002,"Assertion failed: ready check\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@126074.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_697 & _T_702) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@126075.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_721) begin
          $fwrite(32'h80000002,"Assertion failed: TileLink timeout expired (connected at Debug.scala:606:18)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@126103.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_721) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@126104.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
