module TLMonitor_52( // @[:chipyard.TestHarness.RocketConfig.fir@129134.2]
  input        clock, // @[:chipyard.TestHarness.RocketConfig.fir@129135.4]
  input        reset, // @[:chipyard.TestHarness.RocketConfig.fir@129136.4]
  input        io_in_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@129137.4]
  input        io_in_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@129137.4]
  input  [2:0] io_in_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@129137.4]
  input  [8:0] io_in_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@129137.4]
  input  [3:0] io_in_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@129137.4]
  input        io_in_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@129137.4]
  input        io_in_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@129137.4]
  input  [2:0] io_in_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@129137.4]
  input  [1:0] io_in_d_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@129137.4]
  input  [1:0] io_in_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@129137.4]
  input        io_in_d_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@129137.4]
  input        io_in_d_bits_sink, // @[:chipyard.TestHarness.RocketConfig.fir@129137.4]
  input        io_in_d_bits_denied, // @[:chipyard.TestHarness.RocketConfig.fir@129137.4]
  input        io_in_d_bits_corrupt // @[:chipyard.TestHarness.RocketConfig.fir@129137.4]
);
  wire [31:0] plusarg_reader_out; // @[PlusArg.scala 44:11:chipyard.TestHarness.RocketConfig.fir@130632.4]
  wire [8:0] _T_10; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@129156.6]
  wire  _T_11; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@129157.6]
  wire [9:0] _T_48; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@129194.6]
  wire  _T_56; // @[Monitor.scala 79:25:chipyard.TestHarness.RocketConfig.fir@129206.6]
  wire [9:0] _T_61; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@129212.8]
  wire  _T_62; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@129213.8]
  wire [8:0] _T_63; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@129214.8]
  wire [9:0] _T_64; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@129215.8]
  wire [9:0] _T_66; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@129217.8]
  wire  _T_67; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@129218.8]
  wire [8:0] _T_68; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@129219.8]
  wire [9:0] _T_69; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@129220.8]
  wire [9:0] _T_71; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@129222.8]
  wire  _T_72; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@129223.8]
  wire [8:0] _T_73; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@129224.8]
  wire [9:0] _T_74; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@129225.8]
  wire [9:0] _T_76; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@129227.8]
  wire  _T_77; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@129228.8]
  wire [8:0] _T_78; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@129229.8]
  wire [9:0] _T_79; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@129230.8]
  wire [9:0] _T_81; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@129232.8]
  wire  _T_82; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@129233.8]
  wire [8:0] _T_83; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@129234.8]
  wire [9:0] _T_84; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@129235.8]
  wire [9:0] _T_86; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@129237.8]
  wire  _T_87; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@129238.8]
  wire  _T_88; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@129239.8]
  wire  _T_89; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@129240.8]
  wire  _T_90; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@129241.8]
  wire  _T_91; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@129242.8]
  wire  _T_92; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@129243.8]
  wire  _T_97; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@129248.8]
  wire  _T_109; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@129276.8]
  wire  _T_110; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@129277.8]
  wire [3:0] _T_115; // @[Monitor.scala 86:18:chipyard.TestHarness.RocketConfig.fir@129290.8]
  wire  _T_116; // @[Monitor.scala 86:31:chipyard.TestHarness.RocketConfig.fir@129291.8]
  wire  _T_118; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@129293.8]
  wire  _T_119; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@129294.8]
  wire  _T_124; // @[Monitor.scala 90:25:chipyard.TestHarness.RocketConfig.fir@129308.6]
  wire  _T_196; // @[Monitor.scala 102:25:chipyard.TestHarness.RocketConfig.fir@129418.6]
  wire  _T_239; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@129462.8]
  wire  _T_240; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@129463.8]
  wire  _T_251; // @[Monitor.scala 107:30:chipyard.TestHarness.RocketConfig.fir@129490.8]
  wire  _T_253; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@129492.8]
  wire  _T_254; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@129493.8]
  wire  _T_259; // @[Monitor.scala 111:25:chipyard.TestHarness.RocketConfig.fir@129507.6]
  wire  _T_318; // @[Monitor.scala 119:25:chipyard.TestHarness.RocketConfig.fir@129588.6]
  wire  _T_379; // @[Monitor.scala 127:25:chipyard.TestHarness.RocketConfig.fir@129671.6]
  wire  _T_435; // @[Monitor.scala 135:25:chipyard.TestHarness.RocketConfig.fir@129749.6]
  wire  _T_491; // @[Monitor.scala 143:25:chipyard.TestHarness.RocketConfig.fir@129827.6]
  wire  _T_551; // @[Bundles.scala 44:24:chipyard.TestHarness.RocketConfig.fir@129915.6]
  wire  _T_553; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@129917.6]
  wire  _T_554; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@129918.6]
  wire  _T_555; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@129923.6]
  wire  _T_558; // @[Monitor.scala 307:25:chipyard.TestHarness.RocketConfig.fir@129928.6]
  wire  _T_560; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@129931.8]
  wire  _T_561; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@129932.8]
  wire  _T_562; // @[Monitor.scala 309:27:chipyard.TestHarness.RocketConfig.fir@129937.8]
  wire  _T_564; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@129939.8]
  wire  _T_565; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@129940.8]
  wire  _T_566; // @[Monitor.scala 310:28:chipyard.TestHarness.RocketConfig.fir@129945.8]
  wire  _T_568; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@129947.8]
  wire  _T_569; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@129948.8]
  wire  _T_570; // @[Monitor.scala 311:15:chipyard.TestHarness.RocketConfig.fir@129953.8]
  wire  _T_572; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@129955.8]
  wire  _T_573; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@129956.8]
  wire  _T_574; // @[Monitor.scala 312:15:chipyard.TestHarness.RocketConfig.fir@129961.8]
  wire  _T_576; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@129963.8]
  wire  _T_577; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@129964.8]
  wire  _T_578; // @[Monitor.scala 315:25:chipyard.TestHarness.RocketConfig.fir@129970.6]
  wire  _T_589; // @[Bundles.scala 104:26:chipyard.TestHarness.RocketConfig.fir@129994.8]
  wire  _T_591; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@129996.8]
  wire  _T_592; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@129997.8]
  wire  _T_593; // @[Monitor.scala 320:28:chipyard.TestHarness.RocketConfig.fir@130002.8]
  wire  _T_595; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130004.8]
  wire  _T_596; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130005.8]
  wire  _T_606; // @[Monitor.scala 325:25:chipyard.TestHarness.RocketConfig.fir@130028.6]
  wire  _T_626; // @[Monitor.scala 331:30:chipyard.TestHarness.RocketConfig.fir@130069.8]
  wire  _T_628; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130071.8]
  wire  _T_629; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130072.8]
  wire  _T_635; // @[Monitor.scala 335:25:chipyard.TestHarness.RocketConfig.fir@130087.6]
  wire  _T_652; // @[Monitor.scala 343:25:chipyard.TestHarness.RocketConfig.fir@130122.6]
  wire  _T_670; // @[Monitor.scala 351:25:chipyard.TestHarness.RocketConfig.fir@130158.6]
  wire  _T_702; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@130224.4]
  reg  _T_711; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@130233.4]
  reg [31:0] _RAND_0;
  wire  _T_713; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@130235.4]
  wire  _T_714; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@130236.4]
  reg [2:0] _T_722; // @[Monitor.scala 381:22:chipyard.TestHarness.RocketConfig.fir@130247.4]
  reg [31:0] _RAND_1;
  reg [8:0] _T_726; // @[Monitor.scala 385:22:chipyard.TestHarness.RocketConfig.fir@130251.4]
  reg [31:0] _RAND_2;
  wire  _T_727; // @[Monitor.scala 386:22:chipyard.TestHarness.RocketConfig.fir@130252.4]
  wire  _T_728; // @[Monitor.scala 386:19:chipyard.TestHarness.RocketConfig.fir@130253.4]
  wire  _T_729; // @[Monitor.scala 387:32:chipyard.TestHarness.RocketConfig.fir@130255.6]
  wire  _T_731; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@130257.6]
  wire  _T_732; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@130258.6]
  wire  _T_745; // @[Monitor.scala 391:32:chipyard.TestHarness.RocketConfig.fir@130287.6]
  wire  _T_747; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@130289.6]
  wire  _T_748; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@130290.6]
  wire  _T_750; // @[Monitor.scala 393:20:chipyard.TestHarness.RocketConfig.fir@130297.4]
  wire  _T_751; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@130305.4]
  reg  _T_759; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@130313.4]
  reg [31:0] _RAND_3;
  wire  _T_761; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@130315.4]
  wire  _T_762; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@130316.4]
  reg [2:0] _T_770; // @[Monitor.scala 532:22:chipyard.TestHarness.RocketConfig.fir@130327.4]
  reg [31:0] _RAND_4;
  reg [1:0] _T_771; // @[Monitor.scala 533:22:chipyard.TestHarness.RocketConfig.fir@130328.4]
  reg [31:0] _RAND_5;
  reg [1:0] _T_772; // @[Monitor.scala 534:22:chipyard.TestHarness.RocketConfig.fir@130329.4]
  reg [31:0] _RAND_6;
  reg  _T_773; // @[Monitor.scala 535:22:chipyard.TestHarness.RocketConfig.fir@130330.4]
  reg [31:0] _RAND_7;
  reg  _T_774; // @[Monitor.scala 536:22:chipyard.TestHarness.RocketConfig.fir@130331.4]
  reg [31:0] _RAND_8;
  reg  _T_775; // @[Monitor.scala 537:22:chipyard.TestHarness.RocketConfig.fir@130332.4]
  reg [31:0] _RAND_9;
  wire  _T_776; // @[Monitor.scala 538:22:chipyard.TestHarness.RocketConfig.fir@130333.4]
  wire  _T_777; // @[Monitor.scala 538:19:chipyard.TestHarness.RocketConfig.fir@130334.4]
  wire  _T_778; // @[Monitor.scala 539:29:chipyard.TestHarness.RocketConfig.fir@130336.6]
  wire  _T_780; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130338.6]
  wire  _T_781; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130339.6]
  wire  _T_782; // @[Monitor.scala 540:29:chipyard.TestHarness.RocketConfig.fir@130344.6]
  wire  _T_784; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130346.6]
  wire  _T_785; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130347.6]
  wire  _T_786; // @[Monitor.scala 541:29:chipyard.TestHarness.RocketConfig.fir@130352.6]
  wire  _T_788; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130354.6]
  wire  _T_789; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130355.6]
  wire  _T_790; // @[Monitor.scala 542:29:chipyard.TestHarness.RocketConfig.fir@130360.6]
  wire  _T_792; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130362.6]
  wire  _T_793; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130363.6]
  wire  _T_794; // @[Monitor.scala 543:29:chipyard.TestHarness.RocketConfig.fir@130368.6]
  wire  _T_796; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130370.6]
  wire  _T_797; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130371.6]
  wire  _T_798; // @[Monitor.scala 544:29:chipyard.TestHarness.RocketConfig.fir@130376.6]
  wire  _T_800; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130378.6]
  wire  _T_801; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130379.6]
  wire  _T_803; // @[Monitor.scala 546:20:chipyard.TestHarness.RocketConfig.fir@130386.4]
  reg  inflight; // @[Monitor.scala 608:27:chipyard.TestHarness.RocketConfig.fir@130395.4]
  reg [31:0] _RAND_10;
  reg [3:0] inflight_opcodes; // @[Monitor.scala 610:35:chipyard.TestHarness.RocketConfig.fir@130396.4]
  reg [31:0] _RAND_11;
  reg [3:0] inflight_sizes; // @[Monitor.scala 612:33:chipyard.TestHarness.RocketConfig.fir@130397.4]
  reg [31:0] _RAND_12;
  reg  _T_813; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@130407.4]
  reg [31:0] _RAND_13;
  wire  _T_815; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@130409.4]
  wire  a_first; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@130410.4]
  reg  _T_831; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@130429.4]
  reg [31:0] _RAND_14;
  wire  _T_833; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@130431.4]
  wire  d_first; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@130432.4]
  wire [2:0] _GEN_56; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@130451.4]
  wire [3:0] _T_841; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@130451.4]
  wire [3:0] _T_842; // @[Monitor.scala 629:44:chipyard.TestHarness.RocketConfig.fir@130452.4]
  wire [15:0] _T_846; // @[Monitor.scala 606:57:chipyard.TestHarness.RocketConfig.fir@130456.4]
  wire [15:0] _GEN_57; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@130457.4]
  wire [15:0] _T_847; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@130457.4]
  wire [15:0] _T_848; // @[Monitor.scala 629:152:chipyard.TestHarness.RocketConfig.fir@130458.4]
  wire [3:0] _T_850; // @[Monitor.scala 633:40:chipyard.TestHarness.RocketConfig.fir@130463.4]
  wire [15:0] _GEN_60; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@130468.4]
  wire [15:0] _T_855; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@130468.4]
  wire [15:0] _T_856; // @[Monitor.scala 633:144:chipyard.TestHarness.RocketConfig.fir@130469.4]
  wire  _T_860; // @[Monitor.scala 643:27:chipyard.TestHarness.RocketConfig.fir@130494.4]
  wire [3:0] _T_863; // @[Monitor.scala 645:53:chipyard.TestHarness.RocketConfig.fir@130499.6]
  wire [3:0] _T_864; // @[Monitor.scala 645:61:chipyard.TestHarness.RocketConfig.fir@130500.6]
  wire [3:0] a_opcodes_set_interm; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@130496.4]
  wire [18:0] _T_868; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@130506.6]
  wire [2:0] a_sizes_set_interm; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@130496.4]
  wire [17:0] _T_870; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@130509.6]
  wire  _T_873; // @[Monitor.scala 649:17:chipyard.TestHarness.RocketConfig.fir@130513.6]
  wire  _T_875; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@130515.6]
  wire  _T_876; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@130516.6]
  wire [1:0] _GEN_15; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@130496.4]
  wire [18:0] _GEN_18; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@130496.4]
  wire [17:0] _GEN_19; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@130496.4]
  wire  _T_879; // @[Monitor.scala 660:27:chipyard.TestHarness.RocketConfig.fir@130530.4]
  wire  _T_881; // @[Monitor.scala 660:75:chipyard.TestHarness.RocketConfig.fir@130532.4]
  wire  _T_882; // @[Monitor.scala 660:72:chipyard.TestHarness.RocketConfig.fir@130533.4]
  wire [1:0] _T_883; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@130535.6]
  wire [30:0] _GEN_63; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@130542.6]
  wire [30:0] _T_889; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@130542.6]
  wire [1:0] _GEN_20; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@130534.4]
  wire [30:0] _GEN_21; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@130534.4]
  wire  _T_896; // @[Monitor.scala 665:26:chipyard.TestHarness.RocketConfig.fir@130552.4]
  wire  _T_899; // @[Monitor.scala 665:71:chipyard.TestHarness.RocketConfig.fir@130555.4]
  wire  _T_900; // @[Monitor.scala 666:25:chipyard.TestHarness.RocketConfig.fir@130557.6]
  wire  _T_903; // @[Monitor.scala 666:68:chipyard.TestHarness.RocketConfig.fir@130560.6]
  wire  _T_904; // @[Monitor.scala 666:142:chipyard.TestHarness.RocketConfig.fir@130561.6]
  wire  _T_905; // @[Monitor.scala 666:119:chipyard.TestHarness.RocketConfig.fir@130562.6]
  wire  _T_906; // @[Monitor.scala 666:166:chipyard.TestHarness.RocketConfig.fir@130563.6]
  wire  _T_907; // @[Monitor.scala 666:49:chipyard.TestHarness.RocketConfig.fir@130564.6]
  wire  _T_909; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130566.6]
  wire  _T_910; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130567.6]
  wire [3:0] a_opcode_lookup; // @[:chipyard.TestHarness.RocketConfig.fir@130449.4 :chipyard.TestHarness.RocketConfig.fir@130450.4 Monitor.scala 629:21:chipyard.TestHarness.RocketConfig.fir@130459.4]
  wire [2:0] _GEN_25; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@130573.6]
  wire [2:0] _GEN_26; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@130573.6]
  wire [2:0] _GEN_27; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@130573.6]
  wire [2:0] _GEN_28; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@130573.6]
  wire [2:0] _GEN_29; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@130573.6]
  wire [2:0] _GEN_30; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@130573.6]
  wire  _T_912; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@130573.6]
  wire [2:0] _GEN_37; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@130575.6]
  wire [2:0] _GEN_38; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@130575.6]
  wire  _T_914; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@130575.6]
  wire  _T_915; // @[Monitor.scala 667:71:chipyard.TestHarness.RocketConfig.fir@130576.6]
  wire [2:0] _GEN_41; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@130577.6]
  wire [2:0] _GEN_42; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@130577.6]
  wire [2:0] _GEN_43; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@130577.6]
  wire [2:0] _GEN_44; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@130577.6]
  wire [2:0] _GEN_45; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@130577.6]
  wire [2:0] _GEN_46; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@130577.6]
  wire  _T_916; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@130577.6]
  wire [2:0] _GEN_53; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@130578.6]
  wire [2:0] _GEN_54; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@130578.6]
  wire  _T_917; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@130578.6]
  wire  _T_918; // @[Monitor.scala 668:99:chipyard.TestHarness.RocketConfig.fir@130579.6]
  wire  _T_919; // @[Monitor.scala 668:34:chipyard.TestHarness.RocketConfig.fir@130580.6]
  wire  _T_920; // @[Monitor.scala 668:15:chipyard.TestHarness.RocketConfig.fir@130581.6]
  wire  _T_922; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130583.6]
  wire  _T_923; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130584.6]
  wire [3:0] a_size_lookup; // @[:chipyard.TestHarness.RocketConfig.fir@130460.4 :chipyard.TestHarness.RocketConfig.fir@130461.4 Monitor.scala 633:19:chipyard.TestHarness.RocketConfig.fir@130470.4]
  wire [3:0] _GEN_66; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@130589.6]
  wire  _T_924; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@130589.6]
  wire  _T_926; // @[Monitor.scala 670:72:chipyard.TestHarness.RocketConfig.fir@130591.6]
  wire  _T_927; // @[Monitor.scala 670:53:chipyard.TestHarness.RocketConfig.fir@130592.6]
  wire  _T_929; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130594.6]
  wire  _T_930; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130595.6]
  wire  _T_932; // @[Monitor.scala 672:36:chipyard.TestHarness.RocketConfig.fir@130602.4]
  wire  _T_933; // @[Monitor.scala 672:47:chipyard.TestHarness.RocketConfig.fir@130603.4]
  wire  _T_935; // @[Monitor.scala 672:65:chipyard.TestHarness.RocketConfig.fir@130605.4]
  wire  _T_937; // @[Monitor.scala 672:116:chipyard.TestHarness.RocketConfig.fir@130607.4]
  wire  _T_938; // @[Monitor.scala 673:15:chipyard.TestHarness.RocketConfig.fir@130609.6]
  wire  _T_939; // @[Monitor.scala 673:32:chipyard.TestHarness.RocketConfig.fir@130610.6]
  wire  _T_941; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130612.6]
  wire  _T_942; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130613.6]
  wire  a_set; // @[:chipyard.TestHarness.RocketConfig.fir@130443.4 :chipyard.TestHarness.RocketConfig.fir@130444.4 Monitor.scala 644:13:chipyard.TestHarness.RocketConfig.fir@130498.6]
  wire  _T_943; // @[Monitor.scala 680:27:chipyard.TestHarness.RocketConfig.fir@130619.4]
  wire  d_clr; // @[:chipyard.TestHarness.RocketConfig.fir@130522.4 :chipyard.TestHarness.RocketConfig.fir@130523.4 Monitor.scala 661:13:chipyard.TestHarness.RocketConfig.fir@130536.6]
  wire  _T_944; // @[Monitor.scala 680:38:chipyard.TestHarness.RocketConfig.fir@130620.4]
  wire  _T_945; // @[Monitor.scala 680:36:chipyard.TestHarness.RocketConfig.fir@130621.4]
  wire [3:0] a_opcodes_set; // @[:chipyard.TestHarness.RocketConfig.fir@130445.4 :chipyard.TestHarness.RocketConfig.fir@130446.4 Monitor.scala 647:21:chipyard.TestHarness.RocketConfig.fir@130507.6]
  wire [3:0] _T_946; // @[Monitor.scala 681:43:chipyard.TestHarness.RocketConfig.fir@130623.4]
  wire [3:0] d_opcodes_clr; // @[:chipyard.TestHarness.RocketConfig.fir@130524.4 :chipyard.TestHarness.RocketConfig.fir@130525.4 Monitor.scala 662:21:chipyard.TestHarness.RocketConfig.fir@130543.6]
  wire [3:0] _T_947; // @[Monitor.scala 681:62:chipyard.TestHarness.RocketConfig.fir@130624.4]
  wire [3:0] _T_948; // @[Monitor.scala 681:60:chipyard.TestHarness.RocketConfig.fir@130625.4]
  wire [3:0] a_sizes_set; // @[:chipyard.TestHarness.RocketConfig.fir@130447.4 :chipyard.TestHarness.RocketConfig.fir@130448.4 Monitor.scala 648:19:chipyard.TestHarness.RocketConfig.fir@130510.6]
  wire [3:0] _T_949; // @[Monitor.scala 682:39:chipyard.TestHarness.RocketConfig.fir@130627.4]
  wire [3:0] _T_951; // @[Monitor.scala 682:54:chipyard.TestHarness.RocketConfig.fir@130629.4]
  reg [31:0] _T_952; // @[Monitor.scala 684:27:chipyard.TestHarness.RocketConfig.fir@130631.4]
  reg [31:0] _RAND_15;
  wire  _T_953; // @[Monitor.scala 687:26:chipyard.TestHarness.RocketConfig.fir@130634.4]
  wire  _T_954; // @[Monitor.scala 687:16:chipyard.TestHarness.RocketConfig.fir@130635.4]
  wire  _T_955; // @[Monitor.scala 687:39:chipyard.TestHarness.RocketConfig.fir@130636.4]
  wire  _T_956; // @[Monitor.scala 687:30:chipyard.TestHarness.RocketConfig.fir@130637.4]
  wire  _T_957; // @[Monitor.scala 687:59:chipyard.TestHarness.RocketConfig.fir@130638.4]
  wire  _T_958; // @[Monitor.scala 687:47:chipyard.TestHarness.RocketConfig.fir@130639.4]
  wire  _T_960; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@130641.4]
  wire  _T_961; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@130642.4]
  wire [31:0] _T_963; // @[Monitor.scala 689:26:chipyard.TestHarness.RocketConfig.fir@130648.4]
  wire  _T_966; // @[Monitor.scala 690:27:chipyard.TestHarness.RocketConfig.fir@130652.4]
  wire  _GEN_67; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@129250.10]
  wire  _GEN_75; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@129352.10]
  wire  _GEN_85; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@129465.10]
  wire  _GEN_91; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@129554.10]
  wire  _GEN_97; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@129635.10]
  wire  _GEN_101; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@129715.10]
  wire  _GEN_107; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@129793.10]
  wire  _GEN_113; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@129871.10]
  wire  _GEN_119; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@129934.10]
  wire  _GEN_129; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@129976.10]
  wire  _GEN_141; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130034.10]
  wire  _GEN_153; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130093.10]
  wire  _GEN_159; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130128.10]
  wire  _GEN_165; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130164.10]
  plusarg_reader #(.FORMAT("tilelink_timeout=%d"), .DEFAULT(0), .WIDTH(32)) plusarg_reader ( // @[PlusArg.scala 44:11:chipyard.TestHarness.RocketConfig.fir@130632.4]
    .out(plusarg_reader_out)
  );
  assign _T_10 = io_in_a_bits_address & 9'h3; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@129156.6]
  assign _T_11 = _T_10 == 9'h0; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@129157.6]
  assign _T_48 = {1'b0,$signed(io_in_a_bits_address)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@129194.6]
  assign _T_56 = io_in_a_bits_opcode == 3'h6; // @[Monitor.scala 79:25:chipyard.TestHarness.RocketConfig.fir@129206.6]
  assign _T_61 = $signed(_T_48) & -10'sh40; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@129212.8]
  assign _T_62 = $signed(_T_61) == 10'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@129213.8]
  assign _T_63 = io_in_a_bits_address ^ 9'h44; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@129214.8]
  assign _T_64 = {1'b0,$signed(_T_63)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@129215.8]
  assign _T_66 = $signed(_T_64) & -10'sh4; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@129217.8]
  assign _T_67 = $signed(_T_66) == 10'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@129218.8]
  assign _T_68 = io_in_a_bits_address ^ 9'h48; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@129219.8]
  assign _T_69 = {1'b0,$signed(_T_68)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@129220.8]
  assign _T_71 = $signed(_T_69) & -10'sh18; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@129222.8]
  assign _T_72 = $signed(_T_71) == 10'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@129223.8]
  assign _T_73 = io_in_a_bits_address ^ 9'h60; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@129224.8]
  assign _T_74 = {1'b0,$signed(_T_73)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@129225.8]
  assign _T_76 = $signed(_T_74) & -10'sh20; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@129227.8]
  assign _T_77 = $signed(_T_76) == 10'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@129228.8]
  assign _T_78 = io_in_a_bits_address ^ 9'h80; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@129229.8]
  assign _T_79 = {1'b0,$signed(_T_78)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@129230.8]
  assign _T_81 = $signed(_T_79) & -10'sh80; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@129232.8]
  assign _T_82 = $signed(_T_81) == 10'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@129233.8]
  assign _T_83 = io_in_a_bits_address ^ 9'h100; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@129234.8]
  assign _T_84 = {1'b0,$signed(_T_83)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@129235.8]
  assign _T_86 = $signed(_T_84) & -10'sh100; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@129237.8]
  assign _T_87 = $signed(_T_86) == 10'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@129238.8]
  assign _T_88 = _T_62 | _T_67; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@129239.8]
  assign _T_89 = _T_88 | _T_72; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@129240.8]
  assign _T_90 = _T_89 | _T_77; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@129241.8]
  assign _T_91 = _T_90 | _T_82; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@129242.8]
  assign _T_92 = _T_91 | _T_87; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@129243.8]
  assign _T_97 = ~reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@129248.8]
  assign _T_109 = _T_11 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@129276.8]
  assign _T_110 = ~_T_109; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@129277.8]
  assign _T_115 = ~io_in_a_bits_mask; // @[Monitor.scala 86:18:chipyard.TestHarness.RocketConfig.fir@129290.8]
  assign _T_116 = _T_115 == 4'h0; // @[Monitor.scala 86:31:chipyard.TestHarness.RocketConfig.fir@129291.8]
  assign _T_118 = _T_116 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@129293.8]
  assign _T_119 = ~_T_118; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@129294.8]
  assign _T_124 = io_in_a_bits_opcode == 3'h7; // @[Monitor.scala 90:25:chipyard.TestHarness.RocketConfig.fir@129308.6]
  assign _T_196 = io_in_a_bits_opcode == 3'h4; // @[Monitor.scala 102:25:chipyard.TestHarness.RocketConfig.fir@129418.6]
  assign _T_239 = _T_92 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@129462.8]
  assign _T_240 = ~_T_239; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@129463.8]
  assign _T_251 = io_in_a_bits_mask == 4'hf; // @[Monitor.scala 107:30:chipyard.TestHarness.RocketConfig.fir@129490.8]
  assign _T_253 = _T_251 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@129492.8]
  assign _T_254 = ~_T_253; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@129493.8]
  assign _T_259 = io_in_a_bits_opcode == 3'h0; // @[Monitor.scala 111:25:chipyard.TestHarness.RocketConfig.fir@129507.6]
  assign _T_318 = io_in_a_bits_opcode == 3'h1; // @[Monitor.scala 119:25:chipyard.TestHarness.RocketConfig.fir@129588.6]
  assign _T_379 = io_in_a_bits_opcode == 3'h2; // @[Monitor.scala 127:25:chipyard.TestHarness.RocketConfig.fir@129671.6]
  assign _T_435 = io_in_a_bits_opcode == 3'h3; // @[Monitor.scala 135:25:chipyard.TestHarness.RocketConfig.fir@129749.6]
  assign _T_491 = io_in_a_bits_opcode == 3'h5; // @[Monitor.scala 143:25:chipyard.TestHarness.RocketConfig.fir@129827.6]
  assign _T_551 = io_in_d_bits_opcode <= 3'h6; // @[Bundles.scala 44:24:chipyard.TestHarness.RocketConfig.fir@129915.6]
  assign _T_553 = _T_551 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@129917.6]
  assign _T_554 = ~_T_553; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@129918.6]
  assign _T_555 = ~io_in_d_bits_source; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@129923.6]
  assign _T_558 = io_in_d_bits_opcode == 3'h6; // @[Monitor.scala 307:25:chipyard.TestHarness.RocketConfig.fir@129928.6]
  assign _T_560 = _T_555 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@129931.8]
  assign _T_561 = ~_T_560; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@129932.8]
  assign _T_562 = io_in_d_bits_size >= 2'h2; // @[Monitor.scala 309:27:chipyard.TestHarness.RocketConfig.fir@129937.8]
  assign _T_564 = _T_562 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@129939.8]
  assign _T_565 = ~_T_564; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@129940.8]
  assign _T_566 = io_in_d_bits_param == 2'h0; // @[Monitor.scala 310:28:chipyard.TestHarness.RocketConfig.fir@129945.8]
  assign _T_568 = _T_566 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@129947.8]
  assign _T_569 = ~_T_568; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@129948.8]
  assign _T_570 = ~io_in_d_bits_corrupt; // @[Monitor.scala 311:15:chipyard.TestHarness.RocketConfig.fir@129953.8]
  assign _T_572 = _T_570 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@129955.8]
  assign _T_573 = ~_T_572; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@129956.8]
  assign _T_574 = ~io_in_d_bits_denied; // @[Monitor.scala 312:15:chipyard.TestHarness.RocketConfig.fir@129961.8]
  assign _T_576 = _T_574 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@129963.8]
  assign _T_577 = ~_T_576; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@129964.8]
  assign _T_578 = io_in_d_bits_opcode == 3'h4; // @[Monitor.scala 315:25:chipyard.TestHarness.RocketConfig.fir@129970.6]
  assign _T_589 = io_in_d_bits_param <= 2'h2; // @[Bundles.scala 104:26:chipyard.TestHarness.RocketConfig.fir@129994.8]
  assign _T_591 = _T_589 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@129996.8]
  assign _T_592 = ~_T_591; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@129997.8]
  assign _T_593 = io_in_d_bits_param != 2'h2; // @[Monitor.scala 320:28:chipyard.TestHarness.RocketConfig.fir@130002.8]
  assign _T_595 = _T_593 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130004.8]
  assign _T_596 = ~_T_595; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130005.8]
  assign _T_606 = io_in_d_bits_opcode == 3'h5; // @[Monitor.scala 325:25:chipyard.TestHarness.RocketConfig.fir@130028.6]
  assign _T_626 = _T_574 | io_in_d_bits_corrupt; // @[Monitor.scala 331:30:chipyard.TestHarness.RocketConfig.fir@130069.8]
  assign _T_628 = _T_626 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130071.8]
  assign _T_629 = ~_T_628; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130072.8]
  assign _T_635 = io_in_d_bits_opcode == 3'h0; // @[Monitor.scala 335:25:chipyard.TestHarness.RocketConfig.fir@130087.6]
  assign _T_652 = io_in_d_bits_opcode == 3'h1; // @[Monitor.scala 343:25:chipyard.TestHarness.RocketConfig.fir@130122.6]
  assign _T_670 = io_in_d_bits_opcode == 3'h2; // @[Monitor.scala 351:25:chipyard.TestHarness.RocketConfig.fir@130158.6]
  assign _T_702 = io_in_a_ready & io_in_a_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@130224.4]
  assign _T_713 = _T_711 - 1'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@130235.4]
  assign _T_714 = ~_T_711; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@130236.4]
  assign _T_727 = ~_T_714; // @[Monitor.scala 386:22:chipyard.TestHarness.RocketConfig.fir@130252.4]
  assign _T_728 = io_in_a_valid & _T_727; // @[Monitor.scala 386:19:chipyard.TestHarness.RocketConfig.fir@130253.4]
  assign _T_729 = io_in_a_bits_opcode == _T_722; // @[Monitor.scala 387:32:chipyard.TestHarness.RocketConfig.fir@130255.6]
  assign _T_731 = _T_729 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@130257.6]
  assign _T_732 = ~_T_731; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@130258.6]
  assign _T_745 = io_in_a_bits_address == _T_726; // @[Monitor.scala 391:32:chipyard.TestHarness.RocketConfig.fir@130287.6]
  assign _T_747 = _T_745 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@130289.6]
  assign _T_748 = ~_T_747; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@130290.6]
  assign _T_750 = _T_702 & _T_714; // @[Monitor.scala 393:20:chipyard.TestHarness.RocketConfig.fir@130297.4]
  assign _T_751 = io_in_d_ready & io_in_d_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@130305.4]
  assign _T_761 = _T_759 - 1'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@130315.4]
  assign _T_762 = ~_T_759; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@130316.4]
  assign _T_776 = ~_T_762; // @[Monitor.scala 538:22:chipyard.TestHarness.RocketConfig.fir@130333.4]
  assign _T_777 = io_in_d_valid & _T_776; // @[Monitor.scala 538:19:chipyard.TestHarness.RocketConfig.fir@130334.4]
  assign _T_778 = io_in_d_bits_opcode == _T_770; // @[Monitor.scala 539:29:chipyard.TestHarness.RocketConfig.fir@130336.6]
  assign _T_780 = _T_778 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130338.6]
  assign _T_781 = ~_T_780; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130339.6]
  assign _T_782 = io_in_d_bits_param == _T_771; // @[Monitor.scala 540:29:chipyard.TestHarness.RocketConfig.fir@130344.6]
  assign _T_784 = _T_782 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130346.6]
  assign _T_785 = ~_T_784; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130347.6]
  assign _T_786 = io_in_d_bits_size == _T_772; // @[Monitor.scala 541:29:chipyard.TestHarness.RocketConfig.fir@130352.6]
  assign _T_788 = _T_786 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130354.6]
  assign _T_789 = ~_T_788; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130355.6]
  assign _T_790 = io_in_d_bits_source == _T_773; // @[Monitor.scala 542:29:chipyard.TestHarness.RocketConfig.fir@130360.6]
  assign _T_792 = _T_790 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130362.6]
  assign _T_793 = ~_T_792; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130363.6]
  assign _T_794 = io_in_d_bits_sink == _T_774; // @[Monitor.scala 543:29:chipyard.TestHarness.RocketConfig.fir@130368.6]
  assign _T_796 = _T_794 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130370.6]
  assign _T_797 = ~_T_796; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130371.6]
  assign _T_798 = io_in_d_bits_denied == _T_775; // @[Monitor.scala 544:29:chipyard.TestHarness.RocketConfig.fir@130376.6]
  assign _T_800 = _T_798 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130378.6]
  assign _T_801 = ~_T_800; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130379.6]
  assign _T_803 = _T_751 & _T_762; // @[Monitor.scala 546:20:chipyard.TestHarness.RocketConfig.fir@130386.4]
  assign _T_815 = _T_813 - 1'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@130409.4]
  assign a_first = ~_T_813; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@130410.4]
  assign _T_833 = _T_831 - 1'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@130431.4]
  assign d_first = ~_T_831; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@130432.4]
  assign _GEN_56 = {io_in_d_bits_source, 2'h0}; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@130451.4]
  assign _T_841 = {{1'd0}, _GEN_56}; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@130451.4]
  assign _T_842 = inflight_opcodes >> _T_841; // @[Monitor.scala 629:44:chipyard.TestHarness.RocketConfig.fir@130452.4]
  assign _T_846 = 16'h10 - 16'h1; // @[Monitor.scala 606:57:chipyard.TestHarness.RocketConfig.fir@130456.4]
  assign _GEN_57 = {{12'd0}, _T_842}; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@130457.4]
  assign _T_847 = _GEN_57 & _T_846; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@130457.4]
  assign _T_848 = {{1'd0}, _T_847[15:1]}; // @[Monitor.scala 629:152:chipyard.TestHarness.RocketConfig.fir@130458.4]
  assign _T_850 = inflight_sizes >> _T_841; // @[Monitor.scala 633:40:chipyard.TestHarness.RocketConfig.fir@130463.4]
  assign _GEN_60 = {{12'd0}, _T_850}; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@130468.4]
  assign _T_855 = _GEN_60 & _T_846; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@130468.4]
  assign _T_856 = {{1'd0}, _T_855[15:1]}; // @[Monitor.scala 633:144:chipyard.TestHarness.RocketConfig.fir@130469.4]
  assign _T_860 = _T_702 & a_first; // @[Monitor.scala 643:27:chipyard.TestHarness.RocketConfig.fir@130494.4]
  assign _T_863 = {io_in_a_bits_opcode, 1'h0}; // @[Monitor.scala 645:53:chipyard.TestHarness.RocketConfig.fir@130499.6]
  assign _T_864 = _T_863 | 4'h1; // @[Monitor.scala 645:61:chipyard.TestHarness.RocketConfig.fir@130500.6]
  assign a_opcodes_set_interm = _T_860 ? _T_864 : 4'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@130496.4]
  assign _T_868 = {{15'd0}, a_opcodes_set_interm}; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@130506.6]
  assign a_sizes_set_interm = _T_860 ? 3'h5 : 3'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@130496.4]
  assign _T_870 = {{15'd0}, a_sizes_set_interm}; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@130509.6]
  assign _T_873 = ~inflight; // @[Monitor.scala 649:17:chipyard.TestHarness.RocketConfig.fir@130513.6]
  assign _T_875 = _T_873 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@130515.6]
  assign _T_876 = ~_T_875; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@130516.6]
  assign _GEN_15 = _T_860 ? 2'h1 : 2'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@130496.4]
  assign _GEN_18 = _T_860 ? _T_868 : 19'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@130496.4]
  assign _GEN_19 = _T_860 ? _T_870 : 18'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@130496.4]
  assign _T_879 = _T_751 & d_first; // @[Monitor.scala 660:27:chipyard.TestHarness.RocketConfig.fir@130530.4]
  assign _T_881 = ~_T_558; // @[Monitor.scala 660:75:chipyard.TestHarness.RocketConfig.fir@130532.4]
  assign _T_882 = _T_879 & _T_881; // @[Monitor.scala 660:72:chipyard.TestHarness.RocketConfig.fir@130533.4]
  assign _T_883 = 2'h1 << io_in_d_bits_source; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@130535.6]
  assign _GEN_63 = {{15'd0}, _T_846}; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@130542.6]
  assign _T_889 = _GEN_63 << _T_841; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@130542.6]
  assign _GEN_20 = _T_882 ? _T_883 : 2'h0; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@130534.4]
  assign _GEN_21 = _T_882 ? _T_889 : 31'h0; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@130534.4]
  assign _T_896 = io_in_d_valid & d_first; // @[Monitor.scala 665:26:chipyard.TestHarness.RocketConfig.fir@130552.4]
  assign _T_899 = _T_896 & _T_881; // @[Monitor.scala 665:71:chipyard.TestHarness.RocketConfig.fir@130555.4]
  assign _T_900 = inflight >> io_in_d_bits_source; // @[Monitor.scala 666:25:chipyard.TestHarness.RocketConfig.fir@130557.6]
  assign _T_903 = io_in_a_valid & _T_555; // @[Monitor.scala 666:68:chipyard.TestHarness.RocketConfig.fir@130560.6]
  assign _T_904 = 2'h2 == io_in_d_bits_size; // @[Monitor.scala 666:142:chipyard.TestHarness.RocketConfig.fir@130561.6]
  assign _T_905 = _T_903 & _T_904; // @[Monitor.scala 666:119:chipyard.TestHarness.RocketConfig.fir@130562.6]
  assign _T_906 = _T_905 & a_first; // @[Monitor.scala 666:166:chipyard.TestHarness.RocketConfig.fir@130563.6]
  assign _T_907 = _T_900 | _T_906; // @[Monitor.scala 666:49:chipyard.TestHarness.RocketConfig.fir@130564.6]
  assign _T_909 = _T_907 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130566.6]
  assign _T_910 = ~_T_909; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130567.6]
  assign a_opcode_lookup = _T_848[3:0]; // @[:chipyard.TestHarness.RocketConfig.fir@130449.4 :chipyard.TestHarness.RocketConfig.fir@130450.4 Monitor.scala 629:21:chipyard.TestHarness.RocketConfig.fir@130459.4]
  assign _GEN_25 = 3'h2 == a_opcode_lookup[2:0] ? 3'h1 : 3'h0; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@130573.6]
  assign _GEN_26 = 3'h3 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_25; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@130573.6]
  assign _GEN_27 = 3'h4 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_26; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@130573.6]
  assign _GEN_28 = 3'h5 == a_opcode_lookup[2:0] ? 3'h2 : _GEN_27; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@130573.6]
  assign _GEN_29 = 3'h6 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_28; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@130573.6]
  assign _GEN_30 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_29; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@130573.6]
  assign _T_912 = io_in_d_bits_opcode == _GEN_30; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@130573.6]
  assign _GEN_37 = 3'h6 == a_opcode_lookup[2:0] ? 3'h5 : _GEN_28; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@130575.6]
  assign _GEN_38 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_37; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@130575.6]
  assign _T_914 = io_in_d_bits_opcode == _GEN_38; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@130575.6]
  assign _T_915 = _T_912 | _T_914; // @[Monitor.scala 667:71:chipyard.TestHarness.RocketConfig.fir@130576.6]
  assign _GEN_41 = 3'h2 == io_in_a_bits_opcode ? 3'h1 : 3'h0; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@130577.6]
  assign _GEN_42 = 3'h3 == io_in_a_bits_opcode ? 3'h1 : _GEN_41; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@130577.6]
  assign _GEN_43 = 3'h4 == io_in_a_bits_opcode ? 3'h1 : _GEN_42; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@130577.6]
  assign _GEN_44 = 3'h5 == io_in_a_bits_opcode ? 3'h2 : _GEN_43; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@130577.6]
  assign _GEN_45 = 3'h6 == io_in_a_bits_opcode ? 3'h4 : _GEN_44; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@130577.6]
  assign _GEN_46 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_45; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@130577.6]
  assign _T_916 = io_in_d_bits_opcode == _GEN_46; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@130577.6]
  assign _GEN_53 = 3'h6 == io_in_a_bits_opcode ? 3'h5 : _GEN_44; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@130578.6]
  assign _GEN_54 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_53; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@130578.6]
  assign _T_917 = io_in_d_bits_opcode == _GEN_54; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@130578.6]
  assign _T_918 = _T_916 | _T_917; // @[Monitor.scala 668:99:chipyard.TestHarness.RocketConfig.fir@130579.6]
  assign _T_919 = io_in_a_valid & _T_918; // @[Monitor.scala 668:34:chipyard.TestHarness.RocketConfig.fir@130580.6]
  assign _T_920 = _T_915 | _T_919; // @[Monitor.scala 668:15:chipyard.TestHarness.RocketConfig.fir@130581.6]
  assign _T_922 = _T_920 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130583.6]
  assign _T_923 = ~_T_922; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130584.6]
  assign a_size_lookup = _T_856[3:0]; // @[:chipyard.TestHarness.RocketConfig.fir@130460.4 :chipyard.TestHarness.RocketConfig.fir@130461.4 Monitor.scala 633:19:chipyard.TestHarness.RocketConfig.fir@130470.4]
  assign _GEN_66 = {{2'd0}, io_in_d_bits_size}; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@130589.6]
  assign _T_924 = _GEN_66 == a_size_lookup; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@130589.6]
  assign _T_926 = io_in_a_valid & _T_904; // @[Monitor.scala 670:72:chipyard.TestHarness.RocketConfig.fir@130591.6]
  assign _T_927 = _T_924 | _T_926; // @[Monitor.scala 670:53:chipyard.TestHarness.RocketConfig.fir@130592.6]
  assign _T_929 = _T_927 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130594.6]
  assign _T_930 = ~_T_929; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130595.6]
  assign _T_932 = _T_896 & a_first; // @[Monitor.scala 672:36:chipyard.TestHarness.RocketConfig.fir@130602.4]
  assign _T_933 = _T_932 & io_in_a_valid; // @[Monitor.scala 672:47:chipyard.TestHarness.RocketConfig.fir@130603.4]
  assign _T_935 = _T_933 & _T_555; // @[Monitor.scala 672:65:chipyard.TestHarness.RocketConfig.fir@130605.4]
  assign _T_937 = _T_935 & _T_881; // @[Monitor.scala 672:116:chipyard.TestHarness.RocketConfig.fir@130607.4]
  assign _T_938 = ~io_in_d_ready; // @[Monitor.scala 673:15:chipyard.TestHarness.RocketConfig.fir@130609.6]
  assign _T_939 = _T_938 | io_in_a_ready; // @[Monitor.scala 673:32:chipyard.TestHarness.RocketConfig.fir@130610.6]
  assign _T_941 = _T_939 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130612.6]
  assign _T_942 = ~_T_941; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130613.6]
  assign a_set = _GEN_15[0]; // @[:chipyard.TestHarness.RocketConfig.fir@130443.4 :chipyard.TestHarness.RocketConfig.fir@130444.4 Monitor.scala 644:13:chipyard.TestHarness.RocketConfig.fir@130498.6]
  assign _T_943 = inflight | a_set; // @[Monitor.scala 680:27:chipyard.TestHarness.RocketConfig.fir@130619.4]
  assign d_clr = _GEN_20[0]; // @[:chipyard.TestHarness.RocketConfig.fir@130522.4 :chipyard.TestHarness.RocketConfig.fir@130523.4 Monitor.scala 661:13:chipyard.TestHarness.RocketConfig.fir@130536.6]
  assign _T_944 = ~d_clr; // @[Monitor.scala 680:38:chipyard.TestHarness.RocketConfig.fir@130620.4]
  assign _T_945 = _T_943 & _T_944; // @[Monitor.scala 680:36:chipyard.TestHarness.RocketConfig.fir@130621.4]
  assign a_opcodes_set = _GEN_18[3:0]; // @[:chipyard.TestHarness.RocketConfig.fir@130445.4 :chipyard.TestHarness.RocketConfig.fir@130446.4 Monitor.scala 647:21:chipyard.TestHarness.RocketConfig.fir@130507.6]
  assign _T_946 = inflight_opcodes | a_opcodes_set; // @[Monitor.scala 681:43:chipyard.TestHarness.RocketConfig.fir@130623.4]
  assign d_opcodes_clr = _GEN_21[3:0]; // @[:chipyard.TestHarness.RocketConfig.fir@130524.4 :chipyard.TestHarness.RocketConfig.fir@130525.4 Monitor.scala 662:21:chipyard.TestHarness.RocketConfig.fir@130543.6]
  assign _T_947 = ~d_opcodes_clr; // @[Monitor.scala 681:62:chipyard.TestHarness.RocketConfig.fir@130624.4]
  assign _T_948 = _T_946 & _T_947; // @[Monitor.scala 681:60:chipyard.TestHarness.RocketConfig.fir@130625.4]
  assign a_sizes_set = _GEN_19[3:0]; // @[:chipyard.TestHarness.RocketConfig.fir@130447.4 :chipyard.TestHarness.RocketConfig.fir@130448.4 Monitor.scala 648:19:chipyard.TestHarness.RocketConfig.fir@130510.6]
  assign _T_949 = inflight_sizes | a_sizes_set; // @[Monitor.scala 682:39:chipyard.TestHarness.RocketConfig.fir@130627.4]
  assign _T_951 = _T_949 & _T_947; // @[Monitor.scala 682:54:chipyard.TestHarness.RocketConfig.fir@130629.4]
  assign _T_953 = |inflight; // @[Monitor.scala 687:26:chipyard.TestHarness.RocketConfig.fir@130634.4]
  assign _T_954 = ~_T_953; // @[Monitor.scala 687:16:chipyard.TestHarness.RocketConfig.fir@130635.4]
  assign _T_955 = plusarg_reader_out == 32'h0; // @[Monitor.scala 687:39:chipyard.TestHarness.RocketConfig.fir@130636.4]
  assign _T_956 = _T_954 | _T_955; // @[Monitor.scala 687:30:chipyard.TestHarness.RocketConfig.fir@130637.4]
  assign _T_957 = _T_952 < plusarg_reader_out; // @[Monitor.scala 687:59:chipyard.TestHarness.RocketConfig.fir@130638.4]
  assign _T_958 = _T_956 | _T_957; // @[Monitor.scala 687:47:chipyard.TestHarness.RocketConfig.fir@130639.4]
  assign _T_960 = _T_958 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@130641.4]
  assign _T_961 = ~_T_960; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@130642.4]
  assign _T_963 = _T_952 + 32'h1; // @[Monitor.scala 689:26:chipyard.TestHarness.RocketConfig.fir@130648.4]
  assign _T_966 = _T_702 | _T_751; // @[Monitor.scala 690:27:chipyard.TestHarness.RocketConfig.fir@130652.4]
  assign _GEN_67 = io_in_a_valid & _T_56; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@129250.10]
  assign _GEN_75 = io_in_a_valid & _T_124; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@129352.10]
  assign _GEN_85 = io_in_a_valid & _T_196; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@129465.10]
  assign _GEN_91 = io_in_a_valid & _T_259; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@129554.10]
  assign _GEN_97 = io_in_a_valid & _T_318; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@129635.10]
  assign _GEN_101 = io_in_a_valid & _T_379; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@129715.10]
  assign _GEN_107 = io_in_a_valid & _T_435; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@129793.10]
  assign _GEN_113 = io_in_a_valid & _T_491; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@129871.10]
  assign _GEN_119 = io_in_d_valid & _T_558; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@129934.10]
  assign _GEN_129 = io_in_d_valid & _T_578; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@129976.10]
  assign _GEN_141 = io_in_d_valid & _T_606; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130034.10]
  assign _GEN_153 = io_in_d_valid & _T_635; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130093.10]
  assign _GEN_159 = io_in_d_valid & _T_652; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130128.10]
  assign _GEN_165 = io_in_d_valid & _T_670; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130164.10]
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
  _T_952 = _RAND_15[31:0];
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
      inflight <= _T_945;
    end
    if (reset) begin
      inflight_opcodes <= 4'h0;
    end else begin
      inflight_opcodes <= _T_948;
    end
    if (reset) begin
      inflight_sizes <= 4'h0;
    end else begin
      inflight_sizes <= _T_951;
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
      _T_952 <= 32'h0;
    end else if (_T_966) begin
      _T_952 <= 32'h0;
    end else begin
      _T_952 <= _T_963;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_67 & _T_97) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock type unsupported by manager (connected at BusBypass.scala:35:12)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@129250.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@129251.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock from a client which does not support Probe (connected at BusBypass.scala:35:12)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@129257.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@129258.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock address not aligned to size (connected at BusBypass.scala:35:12)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@129279.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@129280.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock contains invalid mask (connected at BusBypass.scala:35:12)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@129296.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@129297.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm type unsupported by manager (connected at BusBypass.scala:35:12)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@129352.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@129353.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm from a client which does not support Probe (connected at BusBypass.scala:35:12)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@129359.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@129360.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm address not aligned to size (connected at BusBypass.scala:35:12)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@129381.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@129382.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm requests NtoB (connected at BusBypass.scala:35:12)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@129397.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@129398.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm contains invalid mask (connected at BusBypass.scala:35:12)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@129406.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@129407.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Get type unsupported by manager (connected at BusBypass.scala:35:12)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@129465.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@129466.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get address not aligned to size (connected at BusBypass.scala:35:12)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@129479.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@129480.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get contains invalid mask (connected at BusBypass.scala:35:12)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@129495.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@129496.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutFull type unsupported by manager (connected at BusBypass.scala:35:12)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@129554.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@129555.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull address not aligned to size (connected at BusBypass.scala:35:12)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@129568.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@129569.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull contains invalid mask (connected at BusBypass.scala:35:12)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@129584.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@129585.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutPartial type unsupported by manager (connected at BusBypass.scala:35:12)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@129635.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@129636.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial address not aligned to size (connected at BusBypass.scala:35:12)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@129649.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@129650.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Arithmetic type unsupported by manager (connected at BusBypass.scala:35:12)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@129715.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@129716.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic address not aligned to size (connected at BusBypass.scala:35:12)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@129729.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@129730.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic contains invalid mask (connected at BusBypass.scala:35:12)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@129745.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@129746.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Logical type unsupported by manager (connected at BusBypass.scala:35:12)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@129793.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@129794.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical address not aligned to size (connected at BusBypass.scala:35:12)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@129807.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@129808.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical contains invalid mask (connected at BusBypass.scala:35:12)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@129823.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@129824.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Hint type unsupported by manager (connected at BusBypass.scala:35:12)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@129871.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@129872.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint address not aligned to size (connected at BusBypass.scala:35:12)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@129885.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@129886.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint contains invalid mask (connected at BusBypass.scala:35:12)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@129901.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@129902.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel has invalid opcode (connected at BusBypass.scala:35:12)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@129920.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@129921.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck carries invalid source ID (connected at BusBypass.scala:35:12)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@129934.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@129935.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck smaller than a beat (connected at BusBypass.scala:35:12)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@129942.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@129943.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseeAck carries invalid param (connected at BusBypass.scala:35:12)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@129950.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@129951.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck is corrupt (connected at BusBypass.scala:35:12)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@129958.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@129959.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck is denied (connected at BusBypass.scala:35:12)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@129966.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@129967.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid source ID (connected at BusBypass.scala:35:12)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@129976.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@129977.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid sink ID (connected at BusBypass.scala:35:12)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@129983.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@129984.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant smaller than a beat (connected at BusBypass.scala:35:12)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@129991.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@129992.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid cap param (connected at BusBypass.scala:35:12)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@129999.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130000.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries toN param (connected at BusBypass.scala:35:12)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130007.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130008.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant is corrupt (connected at BusBypass.scala:35:12)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130015.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130016.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_141 & _T_561) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid source ID (connected at BusBypass.scala:35:12)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130034.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_141 & _T_561) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130035.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_141 & _T_97) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid sink ID (connected at BusBypass.scala:35:12)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130041.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_141 & _T_97) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130042.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_141 & _T_565) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData smaller than a beat (connected at BusBypass.scala:35:12)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130049.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_141 & _T_565) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130050.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_141 & _T_592) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid cap param (connected at BusBypass.scala:35:12)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130057.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_141 & _T_592) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130058.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_141 & _T_596) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries toN param (connected at BusBypass.scala:35:12)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130065.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_141 & _T_596) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130066.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_141 & _T_629) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData is denied but not corrupt (connected at BusBypass.scala:35:12)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130074.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_141 & _T_629) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130075.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_153 & _T_561) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck carries invalid source ID (connected at BusBypass.scala:35:12)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130093.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_153 & _T_561) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130094.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_153 & _T_569) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck carries invalid param (connected at BusBypass.scala:35:12)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130101.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_153 & _T_569) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130102.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_153 & _T_573) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck is corrupt (connected at BusBypass.scala:35:12)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130109.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_153 & _T_573) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130110.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_159 & _T_561) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData carries invalid source ID (connected at BusBypass.scala:35:12)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130128.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_159 & _T_561) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130129.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_159 & _T_569) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData carries invalid param (connected at BusBypass.scala:35:12)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130136.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_159 & _T_569) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130137.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_159 & _T_629) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData is denied but not corrupt (connected at BusBypass.scala:35:12)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130145.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_159 & _T_629) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130146.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck carries invalid source ID (connected at BusBypass.scala:35:12)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130164.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130165.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck carries invalid param (connected at BusBypass.scala:35:12)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130172.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130173.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_165 & _T_573) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck is corrupt (connected at BusBypass.scala:35:12)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130180.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_165 & _T_573) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130181.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel opcode changed within multibeat operation (connected at BusBypass.scala:35:12)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@130260.8]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@130261.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel address changed with multibeat operation (connected at BusBypass.scala:35:12)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@130292.8]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@130293.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel opcode changed within multibeat operation (connected at BusBypass.scala:35:12)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130341.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130342.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel param changed within multibeat operation (connected at BusBypass.scala:35:12)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130349.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130350.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel size changed within multibeat operation (connected at BusBypass.scala:35:12)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130357.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130358.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel source changed within multibeat operation (connected at BusBypass.scala:35:12)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130365.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130366.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel sink changed with multibeat operation (connected at BusBypass.scala:35:12)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130373.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130374.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel denied changed with multibeat operation (connected at BusBypass.scala:35:12)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130381.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130382.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel re-used a source ID (connected at BusBypass.scala:35:12)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@130518.8]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@130519.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel acknowledged for nothing inflight (connected at BusBypass.scala:35:12)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130569.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130570.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper opcode response (connected at BusBypass.scala:35:12)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130586.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130587.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper response size (connected at BusBypass.scala:35:12)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130597.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130598.8]
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
          $fwrite(32'h80000002,"Assertion failed: ready check\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130615.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@130616.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_961) begin
          $fwrite(32'h80000002,"Assertion failed: TileLink timeout expired (connected at BusBypass.scala:35:12)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@130644.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_961) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@130645.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
