module TLMonitor_53( // @[:chipyard.TestHarness.RocketConfig.fir@130994.2]
  input          clock, // @[:chipyard.TestHarness.RocketConfig.fir@130995.4]
  input          reset, // @[:chipyard.TestHarness.RocketConfig.fir@130996.4]
  input          io_in_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@130997.4]
  input          io_in_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@130997.4]
  input  [2:0]   io_in_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@130997.4]
  input  [127:0] io_in_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@130997.4]
  input  [3:0]   io_in_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@130997.4]
  input          io_in_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@130997.4]
  input          io_in_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@130997.4]
  input  [2:0]   io_in_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@130997.4]
  input  [1:0]   io_in_d_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@130997.4]
  input  [1:0]   io_in_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@130997.4]
  input          io_in_d_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@130997.4]
  input          io_in_d_bits_sink, // @[:chipyard.TestHarness.RocketConfig.fir@130997.4]
  input          io_in_d_bits_denied, // @[:chipyard.TestHarness.RocketConfig.fir@130997.4]
  input          io_in_d_bits_corrupt // @[:chipyard.TestHarness.RocketConfig.fir@130997.4]
);
  wire [31:0] plusarg_reader_out; // @[PlusArg.scala 44:11:chipyard.TestHarness.RocketConfig.fir@132261.4]
  wire [127:0] _T_10; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@131016.6]
  wire  _T_11; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@131017.6]
  wire [128:0] _T_48; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@131054.6]
  wire  _T_56; // @[Monitor.scala 79:25:chipyard.TestHarness.RocketConfig.fir@131066.6]
  wire [128:0] _T_64; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@131075.8]
  wire  _T_65; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@131076.8]
  wire  _T_69; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131080.8]
  wire  _T_70; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131081.8]
  wire  _T_73; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131088.8]
  wire  _T_82; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131109.8]
  wire  _T_83; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131110.8]
  wire [3:0] _T_88; // @[Monitor.scala 86:18:chipyard.TestHarness.RocketConfig.fir@131123.8]
  wire  _T_89; // @[Monitor.scala 86:31:chipyard.TestHarness.RocketConfig.fir@131124.8]
  wire  _T_91; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131126.8]
  wire  _T_92; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131127.8]
  wire  _T_97; // @[Monitor.scala 90:25:chipyard.TestHarness.RocketConfig.fir@131141.6]
  wire  _T_142; // @[Monitor.scala 102:25:chipyard.TestHarness.RocketConfig.fir@131224.6]
  wire  _T_167; // @[Monitor.scala 107:30:chipyard.TestHarness.RocketConfig.fir@131266.8]
  wire  _T_169; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131268.8]
  wire  _T_170; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131269.8]
  wire  _T_175; // @[Monitor.scala 111:25:chipyard.TestHarness.RocketConfig.fir@131283.6]
  wire  _T_204; // @[Monitor.scala 119:25:chipyard.TestHarness.RocketConfig.fir@131334.6]
  wire  _T_235; // @[Monitor.scala 127:25:chipyard.TestHarness.RocketConfig.fir@131387.6]
  wire  _T_261; // @[Monitor.scala 135:25:chipyard.TestHarness.RocketConfig.fir@131435.6]
  wire  _T_287; // @[Monitor.scala 143:25:chipyard.TestHarness.RocketConfig.fir@131483.6]
  wire  _T_320; // @[Bundles.scala 44:24:chipyard.TestHarness.RocketConfig.fir@131544.6]
  wire  _T_322; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131546.6]
  wire  _T_323; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131547.6]
  wire  _T_324; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@131552.6]
  wire  _T_326; // @[Monitor.scala 303:31:chipyard.TestHarness.RocketConfig.fir@131556.6]
  wire  _T_327; // @[Monitor.scala 307:25:chipyard.TestHarness.RocketConfig.fir@131557.6]
  wire  _T_329; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131560.8]
  wire  _T_330; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131561.8]
  wire  _T_331; // @[Monitor.scala 309:27:chipyard.TestHarness.RocketConfig.fir@131566.8]
  wire  _T_333; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131568.8]
  wire  _T_334; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131569.8]
  wire  _T_335; // @[Monitor.scala 310:28:chipyard.TestHarness.RocketConfig.fir@131574.8]
  wire  _T_337; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131576.8]
  wire  _T_338; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131577.8]
  wire  _T_339; // @[Monitor.scala 311:15:chipyard.TestHarness.RocketConfig.fir@131582.8]
  wire  _T_341; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131584.8]
  wire  _T_342; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131585.8]
  wire  _T_343; // @[Monitor.scala 312:15:chipyard.TestHarness.RocketConfig.fir@131590.8]
  wire  _T_345; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131592.8]
  wire  _T_346; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131593.8]
  wire  _T_347; // @[Monitor.scala 315:25:chipyard.TestHarness.RocketConfig.fir@131599.6]
  wire  _T_352; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131609.8]
  wire  _T_353; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131610.8]
  wire  _T_358; // @[Bundles.scala 104:26:chipyard.TestHarness.RocketConfig.fir@131623.8]
  wire  _T_360; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131625.8]
  wire  _T_361; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131626.8]
  wire  _T_362; // @[Monitor.scala 320:28:chipyard.TestHarness.RocketConfig.fir@131631.8]
  wire  _T_364; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131633.8]
  wire  _T_365; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131634.8]
  wire  _T_375; // @[Monitor.scala 325:25:chipyard.TestHarness.RocketConfig.fir@131657.6]
  wire  _T_395; // @[Monitor.scala 331:30:chipyard.TestHarness.RocketConfig.fir@131698.8]
  wire  _T_397; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131700.8]
  wire  _T_398; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131701.8]
  wire  _T_404; // @[Monitor.scala 335:25:chipyard.TestHarness.RocketConfig.fir@131716.6]
  wire  _T_421; // @[Monitor.scala 343:25:chipyard.TestHarness.RocketConfig.fir@131751.6]
  wire  _T_439; // @[Monitor.scala 351:25:chipyard.TestHarness.RocketConfig.fir@131787.6]
  wire  _T_471; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@131853.4]
  reg  _T_480; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@131862.4]
  reg [31:0] _RAND_0;
  wire  _T_482; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@131864.4]
  wire  _T_483; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@131865.4]
  reg [2:0] _T_491; // @[Monitor.scala 381:22:chipyard.TestHarness.RocketConfig.fir@131876.4]
  reg [31:0] _RAND_1;
  reg [127:0] _T_495; // @[Monitor.scala 385:22:chipyard.TestHarness.RocketConfig.fir@131880.4]
  reg [127:0] _RAND_2;
  wire  _T_496; // @[Monitor.scala 386:22:chipyard.TestHarness.RocketConfig.fir@131881.4]
  wire  _T_497; // @[Monitor.scala 386:19:chipyard.TestHarness.RocketConfig.fir@131882.4]
  wire  _T_498; // @[Monitor.scala 387:32:chipyard.TestHarness.RocketConfig.fir@131884.6]
  wire  _T_500; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131886.6]
  wire  _T_501; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131887.6]
  wire  _T_514; // @[Monitor.scala 391:32:chipyard.TestHarness.RocketConfig.fir@131916.6]
  wire  _T_516; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131918.6]
  wire  _T_517; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131919.6]
  wire  _T_519; // @[Monitor.scala 393:20:chipyard.TestHarness.RocketConfig.fir@131926.4]
  wire  _T_520; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@131934.4]
  reg  _T_528; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@131942.4]
  reg [31:0] _RAND_3;
  wire  _T_530; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@131944.4]
  wire  _T_531; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@131945.4]
  reg [2:0] _T_539; // @[Monitor.scala 532:22:chipyard.TestHarness.RocketConfig.fir@131956.4]
  reg [31:0] _RAND_4;
  reg [1:0] _T_540; // @[Monitor.scala 533:22:chipyard.TestHarness.RocketConfig.fir@131957.4]
  reg [31:0] _RAND_5;
  reg [1:0] _T_541; // @[Monitor.scala 534:22:chipyard.TestHarness.RocketConfig.fir@131958.4]
  reg [31:0] _RAND_6;
  reg  _T_542; // @[Monitor.scala 535:22:chipyard.TestHarness.RocketConfig.fir@131959.4]
  reg [31:0] _RAND_7;
  reg  _T_543; // @[Monitor.scala 536:22:chipyard.TestHarness.RocketConfig.fir@131960.4]
  reg [31:0] _RAND_8;
  reg  _T_544; // @[Monitor.scala 537:22:chipyard.TestHarness.RocketConfig.fir@131961.4]
  reg [31:0] _RAND_9;
  wire  _T_545; // @[Monitor.scala 538:22:chipyard.TestHarness.RocketConfig.fir@131962.4]
  wire  _T_546; // @[Monitor.scala 538:19:chipyard.TestHarness.RocketConfig.fir@131963.4]
  wire  _T_547; // @[Monitor.scala 539:29:chipyard.TestHarness.RocketConfig.fir@131965.6]
  wire  _T_549; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131967.6]
  wire  _T_550; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131968.6]
  wire  _T_551; // @[Monitor.scala 540:29:chipyard.TestHarness.RocketConfig.fir@131973.6]
  wire  _T_553; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131975.6]
  wire  _T_554; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131976.6]
  wire  _T_555; // @[Monitor.scala 541:29:chipyard.TestHarness.RocketConfig.fir@131981.6]
  wire  _T_557; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131983.6]
  wire  _T_558; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131984.6]
  wire  _T_559; // @[Monitor.scala 542:29:chipyard.TestHarness.RocketConfig.fir@131989.6]
  wire  _T_561; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131991.6]
  wire  _T_562; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131992.6]
  wire  _T_563; // @[Monitor.scala 543:29:chipyard.TestHarness.RocketConfig.fir@131997.6]
  wire  _T_565; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131999.6]
  wire  _T_566; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@132000.6]
  wire  _T_567; // @[Monitor.scala 544:29:chipyard.TestHarness.RocketConfig.fir@132005.6]
  wire  _T_569; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@132007.6]
  wire  _T_570; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@132008.6]
  wire  _T_572; // @[Monitor.scala 546:20:chipyard.TestHarness.RocketConfig.fir@132015.4]
  reg  inflight; // @[Monitor.scala 608:27:chipyard.TestHarness.RocketConfig.fir@132024.4]
  reg [31:0] _RAND_10;
  reg [3:0] inflight_opcodes; // @[Monitor.scala 610:35:chipyard.TestHarness.RocketConfig.fir@132025.4]
  reg [31:0] _RAND_11;
  reg [3:0] inflight_sizes; // @[Monitor.scala 612:33:chipyard.TestHarness.RocketConfig.fir@132026.4]
  reg [31:0] _RAND_12;
  reg  _T_582; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@132036.4]
  reg [31:0] _RAND_13;
  wire  _T_584; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@132038.4]
  wire  a_first; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@132039.4]
  reg  _T_600; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@132058.4]
  reg [31:0] _RAND_14;
  wire  _T_602; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@132060.4]
  wire  d_first; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@132061.4]
  wire [2:0] _GEN_56; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@132080.4]
  wire [3:0] _T_610; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@132080.4]
  wire [3:0] _T_611; // @[Monitor.scala 629:44:chipyard.TestHarness.RocketConfig.fir@132081.4]
  wire [15:0] _T_615; // @[Monitor.scala 606:57:chipyard.TestHarness.RocketConfig.fir@132085.4]
  wire [15:0] _GEN_57; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@132086.4]
  wire [15:0] _T_616; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@132086.4]
  wire [15:0] _T_617; // @[Monitor.scala 629:152:chipyard.TestHarness.RocketConfig.fir@132087.4]
  wire [3:0] _T_619; // @[Monitor.scala 633:40:chipyard.TestHarness.RocketConfig.fir@132092.4]
  wire [15:0] _GEN_60; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@132097.4]
  wire [15:0] _T_624; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@132097.4]
  wire [15:0] _T_625; // @[Monitor.scala 633:144:chipyard.TestHarness.RocketConfig.fir@132098.4]
  wire  _T_629; // @[Monitor.scala 643:27:chipyard.TestHarness.RocketConfig.fir@132123.4]
  wire [3:0] _T_632; // @[Monitor.scala 645:53:chipyard.TestHarness.RocketConfig.fir@132128.6]
  wire [3:0] _T_633; // @[Monitor.scala 645:61:chipyard.TestHarness.RocketConfig.fir@132129.6]
  wire [3:0] a_opcodes_set_interm; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@132125.4]
  wire [18:0] _T_637; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@132135.6]
  wire [2:0] a_sizes_set_interm; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@132125.4]
  wire [17:0] _T_639; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@132138.6]
  wire  _T_642; // @[Monitor.scala 649:17:chipyard.TestHarness.RocketConfig.fir@132142.6]
  wire  _T_644; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@132144.6]
  wire  _T_645; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@132145.6]
  wire [1:0] _GEN_15; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@132125.4]
  wire [18:0] _GEN_18; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@132125.4]
  wire [17:0] _GEN_19; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@132125.4]
  wire  _T_648; // @[Monitor.scala 660:27:chipyard.TestHarness.RocketConfig.fir@132159.4]
  wire  _T_650; // @[Monitor.scala 660:75:chipyard.TestHarness.RocketConfig.fir@132161.4]
  wire  _T_651; // @[Monitor.scala 660:72:chipyard.TestHarness.RocketConfig.fir@132162.4]
  wire [1:0] _T_652; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@132164.6]
  wire [30:0] _GEN_63; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@132171.6]
  wire [30:0] _T_658; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@132171.6]
  wire [1:0] _GEN_20; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@132163.4]
  wire [30:0] _GEN_21; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@132163.4]
  wire  _T_665; // @[Monitor.scala 665:26:chipyard.TestHarness.RocketConfig.fir@132181.4]
  wire  _T_668; // @[Monitor.scala 665:71:chipyard.TestHarness.RocketConfig.fir@132184.4]
  wire  _T_669; // @[Monitor.scala 666:25:chipyard.TestHarness.RocketConfig.fir@132186.6]
  wire  _T_672; // @[Monitor.scala 666:68:chipyard.TestHarness.RocketConfig.fir@132189.6]
  wire  _T_673; // @[Monitor.scala 666:142:chipyard.TestHarness.RocketConfig.fir@132190.6]
  wire  _T_674; // @[Monitor.scala 666:119:chipyard.TestHarness.RocketConfig.fir@132191.6]
  wire  _T_675; // @[Monitor.scala 666:166:chipyard.TestHarness.RocketConfig.fir@132192.6]
  wire  _T_676; // @[Monitor.scala 666:49:chipyard.TestHarness.RocketConfig.fir@132193.6]
  wire  _T_678; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@132195.6]
  wire  _T_679; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@132196.6]
  wire [3:0] a_opcode_lookup; // @[:chipyard.TestHarness.RocketConfig.fir@132078.4 :chipyard.TestHarness.RocketConfig.fir@132079.4 Monitor.scala 629:21:chipyard.TestHarness.RocketConfig.fir@132088.4]
  wire [2:0] _GEN_25; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@132202.6]
  wire [2:0] _GEN_26; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@132202.6]
  wire [2:0] _GEN_27; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@132202.6]
  wire [2:0] _GEN_28; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@132202.6]
  wire [2:0] _GEN_29; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@132202.6]
  wire [2:0] _GEN_30; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@132202.6]
  wire  _T_681; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@132202.6]
  wire [2:0] _GEN_37; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@132204.6]
  wire [2:0] _GEN_38; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@132204.6]
  wire  _T_683; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@132204.6]
  wire  _T_684; // @[Monitor.scala 667:71:chipyard.TestHarness.RocketConfig.fir@132205.6]
  wire [2:0] _GEN_41; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@132206.6]
  wire [2:0] _GEN_42; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@132206.6]
  wire [2:0] _GEN_43; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@132206.6]
  wire [2:0] _GEN_44; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@132206.6]
  wire [2:0] _GEN_45; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@132206.6]
  wire [2:0] _GEN_46; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@132206.6]
  wire  _T_685; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@132206.6]
  wire [2:0] _GEN_53; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@132207.6]
  wire [2:0] _GEN_54; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@132207.6]
  wire  _T_686; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@132207.6]
  wire  _T_687; // @[Monitor.scala 668:99:chipyard.TestHarness.RocketConfig.fir@132208.6]
  wire  _T_688; // @[Monitor.scala 668:34:chipyard.TestHarness.RocketConfig.fir@132209.6]
  wire  _T_689; // @[Monitor.scala 668:15:chipyard.TestHarness.RocketConfig.fir@132210.6]
  wire  _T_691; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@132212.6]
  wire  _T_692; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@132213.6]
  wire [3:0] a_size_lookup; // @[:chipyard.TestHarness.RocketConfig.fir@132089.4 :chipyard.TestHarness.RocketConfig.fir@132090.4 Monitor.scala 633:19:chipyard.TestHarness.RocketConfig.fir@132099.4]
  wire [3:0] _GEN_66; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@132218.6]
  wire  _T_693; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@132218.6]
  wire  _T_695; // @[Monitor.scala 670:72:chipyard.TestHarness.RocketConfig.fir@132220.6]
  wire  _T_696; // @[Monitor.scala 670:53:chipyard.TestHarness.RocketConfig.fir@132221.6]
  wire  _T_698; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@132223.6]
  wire  _T_699; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@132224.6]
  wire  _T_701; // @[Monitor.scala 672:36:chipyard.TestHarness.RocketConfig.fir@132231.4]
  wire  _T_702; // @[Monitor.scala 672:47:chipyard.TestHarness.RocketConfig.fir@132232.4]
  wire  _T_704; // @[Monitor.scala 672:65:chipyard.TestHarness.RocketConfig.fir@132234.4]
  wire  _T_706; // @[Monitor.scala 672:116:chipyard.TestHarness.RocketConfig.fir@132236.4]
  wire  _T_707; // @[Monitor.scala 673:15:chipyard.TestHarness.RocketConfig.fir@132238.6]
  wire  _T_708; // @[Monitor.scala 673:32:chipyard.TestHarness.RocketConfig.fir@132239.6]
  wire  _T_710; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@132241.6]
  wire  _T_711; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@132242.6]
  wire  a_set; // @[:chipyard.TestHarness.RocketConfig.fir@132072.4 :chipyard.TestHarness.RocketConfig.fir@132073.4 Monitor.scala 644:13:chipyard.TestHarness.RocketConfig.fir@132127.6]
  wire  _T_712; // @[Monitor.scala 680:27:chipyard.TestHarness.RocketConfig.fir@132248.4]
  wire  d_clr; // @[:chipyard.TestHarness.RocketConfig.fir@132151.4 :chipyard.TestHarness.RocketConfig.fir@132152.4 Monitor.scala 661:13:chipyard.TestHarness.RocketConfig.fir@132165.6]
  wire  _T_713; // @[Monitor.scala 680:38:chipyard.TestHarness.RocketConfig.fir@132249.4]
  wire  _T_714; // @[Monitor.scala 680:36:chipyard.TestHarness.RocketConfig.fir@132250.4]
  wire [3:0] a_opcodes_set; // @[:chipyard.TestHarness.RocketConfig.fir@132074.4 :chipyard.TestHarness.RocketConfig.fir@132075.4 Monitor.scala 647:21:chipyard.TestHarness.RocketConfig.fir@132136.6]
  wire [3:0] _T_715; // @[Monitor.scala 681:43:chipyard.TestHarness.RocketConfig.fir@132252.4]
  wire [3:0] d_opcodes_clr; // @[:chipyard.TestHarness.RocketConfig.fir@132153.4 :chipyard.TestHarness.RocketConfig.fir@132154.4 Monitor.scala 662:21:chipyard.TestHarness.RocketConfig.fir@132172.6]
  wire [3:0] _T_716; // @[Monitor.scala 681:62:chipyard.TestHarness.RocketConfig.fir@132253.4]
  wire [3:0] _T_717; // @[Monitor.scala 681:60:chipyard.TestHarness.RocketConfig.fir@132254.4]
  wire [3:0] a_sizes_set; // @[:chipyard.TestHarness.RocketConfig.fir@132076.4 :chipyard.TestHarness.RocketConfig.fir@132077.4 Monitor.scala 648:19:chipyard.TestHarness.RocketConfig.fir@132139.6]
  wire [3:0] _T_718; // @[Monitor.scala 682:39:chipyard.TestHarness.RocketConfig.fir@132256.4]
  wire [3:0] _T_720; // @[Monitor.scala 682:54:chipyard.TestHarness.RocketConfig.fir@132258.4]
  reg [31:0] _T_721; // @[Monitor.scala 684:27:chipyard.TestHarness.RocketConfig.fir@132260.4]
  reg [31:0] _RAND_15;
  wire  _T_722; // @[Monitor.scala 687:26:chipyard.TestHarness.RocketConfig.fir@132263.4]
  wire  _T_723; // @[Monitor.scala 687:16:chipyard.TestHarness.RocketConfig.fir@132264.4]
  wire  _T_724; // @[Monitor.scala 687:39:chipyard.TestHarness.RocketConfig.fir@132265.4]
  wire  _T_725; // @[Monitor.scala 687:30:chipyard.TestHarness.RocketConfig.fir@132266.4]
  wire  _T_726; // @[Monitor.scala 687:59:chipyard.TestHarness.RocketConfig.fir@132267.4]
  wire  _T_727; // @[Monitor.scala 687:47:chipyard.TestHarness.RocketConfig.fir@132268.4]
  wire  _T_729; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@132270.4]
  wire  _T_730; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@132271.4]
  wire [31:0] _T_732; // @[Monitor.scala 689:26:chipyard.TestHarness.RocketConfig.fir@132277.4]
  wire  _T_735; // @[Monitor.scala 690:27:chipyard.TestHarness.RocketConfig.fir@132281.4]
  wire  _GEN_67; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131083.10]
  wire  _GEN_75; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131158.10]
  wire  _GEN_85; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131241.10]
  wire  _GEN_91; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131300.10]
  wire  _GEN_97; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131351.10]
  wire  _GEN_101; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131401.10]
  wire  _GEN_107; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131449.10]
  wire  _GEN_113; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131500.10]
  wire  _GEN_119; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131563.10]
  wire  _GEN_129; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131605.10]
  wire  _GEN_141; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131663.10]
  wire  _GEN_153; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131722.10]
  wire  _GEN_159; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131757.10]
  wire  _GEN_165; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131793.10]
  plusarg_reader #(.FORMAT("tilelink_timeout=%d"), .DEFAULT(0), .WIDTH(32)) plusarg_reader ( // @[PlusArg.scala 44:11:chipyard.TestHarness.RocketConfig.fir@132261.4]
    .out(plusarg_reader_out)
  );
  assign _T_10 = io_in_a_bits_address & 128'h3; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@131016.6]
  assign _T_11 = _T_10 == 128'h0; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@131017.6]
  assign _T_48 = {1'b0,$signed(io_in_a_bits_address)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@131054.6]
  assign _T_56 = io_in_a_bits_opcode == 3'h6; // @[Monitor.scala 79:25:chipyard.TestHarness.RocketConfig.fir@131066.6]
  assign _T_64 = $signed(_T_48) & -129'sh100000000000000000000000000000000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@131075.8]
  assign _T_65 = $signed(_T_64) == 129'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@131076.8]
  assign _T_69 = _T_65 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131080.8]
  assign _T_70 = ~_T_69; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131081.8]
  assign _T_73 = ~reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131088.8]
  assign _T_82 = _T_11 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131109.8]
  assign _T_83 = ~_T_82; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131110.8]
  assign _T_88 = ~io_in_a_bits_mask; // @[Monitor.scala 86:18:chipyard.TestHarness.RocketConfig.fir@131123.8]
  assign _T_89 = _T_88 == 4'h0; // @[Monitor.scala 86:31:chipyard.TestHarness.RocketConfig.fir@131124.8]
  assign _T_91 = _T_89 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131126.8]
  assign _T_92 = ~_T_91; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131127.8]
  assign _T_97 = io_in_a_bits_opcode == 3'h7; // @[Monitor.scala 90:25:chipyard.TestHarness.RocketConfig.fir@131141.6]
  assign _T_142 = io_in_a_bits_opcode == 3'h4; // @[Monitor.scala 102:25:chipyard.TestHarness.RocketConfig.fir@131224.6]
  assign _T_167 = io_in_a_bits_mask == 4'hf; // @[Monitor.scala 107:30:chipyard.TestHarness.RocketConfig.fir@131266.8]
  assign _T_169 = _T_167 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131268.8]
  assign _T_170 = ~_T_169; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131269.8]
  assign _T_175 = io_in_a_bits_opcode == 3'h0; // @[Monitor.scala 111:25:chipyard.TestHarness.RocketConfig.fir@131283.6]
  assign _T_204 = io_in_a_bits_opcode == 3'h1; // @[Monitor.scala 119:25:chipyard.TestHarness.RocketConfig.fir@131334.6]
  assign _T_235 = io_in_a_bits_opcode == 3'h2; // @[Monitor.scala 127:25:chipyard.TestHarness.RocketConfig.fir@131387.6]
  assign _T_261 = io_in_a_bits_opcode == 3'h3; // @[Monitor.scala 135:25:chipyard.TestHarness.RocketConfig.fir@131435.6]
  assign _T_287 = io_in_a_bits_opcode == 3'h5; // @[Monitor.scala 143:25:chipyard.TestHarness.RocketConfig.fir@131483.6]
  assign _T_320 = io_in_d_bits_opcode <= 3'h6; // @[Bundles.scala 44:24:chipyard.TestHarness.RocketConfig.fir@131544.6]
  assign _T_322 = _T_320 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131546.6]
  assign _T_323 = ~_T_322; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131547.6]
  assign _T_324 = ~io_in_d_bits_source; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@131552.6]
  assign _T_326 = io_in_d_bits_sink < 1'h1; // @[Monitor.scala 303:31:chipyard.TestHarness.RocketConfig.fir@131556.6]
  assign _T_327 = io_in_d_bits_opcode == 3'h6; // @[Monitor.scala 307:25:chipyard.TestHarness.RocketConfig.fir@131557.6]
  assign _T_329 = _T_324 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131560.8]
  assign _T_330 = ~_T_329; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131561.8]
  assign _T_331 = io_in_d_bits_size >= 2'h2; // @[Monitor.scala 309:27:chipyard.TestHarness.RocketConfig.fir@131566.8]
  assign _T_333 = _T_331 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131568.8]
  assign _T_334 = ~_T_333; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131569.8]
  assign _T_335 = io_in_d_bits_param == 2'h0; // @[Monitor.scala 310:28:chipyard.TestHarness.RocketConfig.fir@131574.8]
  assign _T_337 = _T_335 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131576.8]
  assign _T_338 = ~_T_337; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131577.8]
  assign _T_339 = ~io_in_d_bits_corrupt; // @[Monitor.scala 311:15:chipyard.TestHarness.RocketConfig.fir@131582.8]
  assign _T_341 = _T_339 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131584.8]
  assign _T_342 = ~_T_341; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131585.8]
  assign _T_343 = ~io_in_d_bits_denied; // @[Monitor.scala 312:15:chipyard.TestHarness.RocketConfig.fir@131590.8]
  assign _T_345 = _T_343 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131592.8]
  assign _T_346 = ~_T_345; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131593.8]
  assign _T_347 = io_in_d_bits_opcode == 3'h4; // @[Monitor.scala 315:25:chipyard.TestHarness.RocketConfig.fir@131599.6]
  assign _T_352 = _T_326 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131609.8]
  assign _T_353 = ~_T_352; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131610.8]
  assign _T_358 = io_in_d_bits_param <= 2'h2; // @[Bundles.scala 104:26:chipyard.TestHarness.RocketConfig.fir@131623.8]
  assign _T_360 = _T_358 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131625.8]
  assign _T_361 = ~_T_360; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131626.8]
  assign _T_362 = io_in_d_bits_param != 2'h2; // @[Monitor.scala 320:28:chipyard.TestHarness.RocketConfig.fir@131631.8]
  assign _T_364 = _T_362 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131633.8]
  assign _T_365 = ~_T_364; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131634.8]
  assign _T_375 = io_in_d_bits_opcode == 3'h5; // @[Monitor.scala 325:25:chipyard.TestHarness.RocketConfig.fir@131657.6]
  assign _T_395 = _T_343 | io_in_d_bits_corrupt; // @[Monitor.scala 331:30:chipyard.TestHarness.RocketConfig.fir@131698.8]
  assign _T_397 = _T_395 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131700.8]
  assign _T_398 = ~_T_397; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131701.8]
  assign _T_404 = io_in_d_bits_opcode == 3'h0; // @[Monitor.scala 335:25:chipyard.TestHarness.RocketConfig.fir@131716.6]
  assign _T_421 = io_in_d_bits_opcode == 3'h1; // @[Monitor.scala 343:25:chipyard.TestHarness.RocketConfig.fir@131751.6]
  assign _T_439 = io_in_d_bits_opcode == 3'h2; // @[Monitor.scala 351:25:chipyard.TestHarness.RocketConfig.fir@131787.6]
  assign _T_471 = io_in_a_ready & io_in_a_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@131853.4]
  assign _T_482 = _T_480 - 1'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@131864.4]
  assign _T_483 = ~_T_480; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@131865.4]
  assign _T_496 = ~_T_483; // @[Monitor.scala 386:22:chipyard.TestHarness.RocketConfig.fir@131881.4]
  assign _T_497 = io_in_a_valid & _T_496; // @[Monitor.scala 386:19:chipyard.TestHarness.RocketConfig.fir@131882.4]
  assign _T_498 = io_in_a_bits_opcode == _T_491; // @[Monitor.scala 387:32:chipyard.TestHarness.RocketConfig.fir@131884.6]
  assign _T_500 = _T_498 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131886.6]
  assign _T_501 = ~_T_500; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131887.6]
  assign _T_514 = io_in_a_bits_address == _T_495; // @[Monitor.scala 391:32:chipyard.TestHarness.RocketConfig.fir@131916.6]
  assign _T_516 = _T_514 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131918.6]
  assign _T_517 = ~_T_516; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131919.6]
  assign _T_519 = _T_471 & _T_483; // @[Monitor.scala 393:20:chipyard.TestHarness.RocketConfig.fir@131926.4]
  assign _T_520 = io_in_d_ready & io_in_d_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@131934.4]
  assign _T_530 = _T_528 - 1'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@131944.4]
  assign _T_531 = ~_T_528; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@131945.4]
  assign _T_545 = ~_T_531; // @[Monitor.scala 538:22:chipyard.TestHarness.RocketConfig.fir@131962.4]
  assign _T_546 = io_in_d_valid & _T_545; // @[Monitor.scala 538:19:chipyard.TestHarness.RocketConfig.fir@131963.4]
  assign _T_547 = io_in_d_bits_opcode == _T_539; // @[Monitor.scala 539:29:chipyard.TestHarness.RocketConfig.fir@131965.6]
  assign _T_549 = _T_547 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131967.6]
  assign _T_550 = ~_T_549; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131968.6]
  assign _T_551 = io_in_d_bits_param == _T_540; // @[Monitor.scala 540:29:chipyard.TestHarness.RocketConfig.fir@131973.6]
  assign _T_553 = _T_551 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131975.6]
  assign _T_554 = ~_T_553; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131976.6]
  assign _T_555 = io_in_d_bits_size == _T_541; // @[Monitor.scala 541:29:chipyard.TestHarness.RocketConfig.fir@131981.6]
  assign _T_557 = _T_555 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131983.6]
  assign _T_558 = ~_T_557; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131984.6]
  assign _T_559 = io_in_d_bits_source == _T_542; // @[Monitor.scala 542:29:chipyard.TestHarness.RocketConfig.fir@131989.6]
  assign _T_561 = _T_559 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131991.6]
  assign _T_562 = ~_T_561; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131992.6]
  assign _T_563 = io_in_d_bits_sink == _T_543; // @[Monitor.scala 543:29:chipyard.TestHarness.RocketConfig.fir@131997.6]
  assign _T_565 = _T_563 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131999.6]
  assign _T_566 = ~_T_565; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@132000.6]
  assign _T_567 = io_in_d_bits_denied == _T_544; // @[Monitor.scala 544:29:chipyard.TestHarness.RocketConfig.fir@132005.6]
  assign _T_569 = _T_567 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@132007.6]
  assign _T_570 = ~_T_569; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@132008.6]
  assign _T_572 = _T_520 & _T_531; // @[Monitor.scala 546:20:chipyard.TestHarness.RocketConfig.fir@132015.4]
  assign _T_584 = _T_582 - 1'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@132038.4]
  assign a_first = ~_T_582; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@132039.4]
  assign _T_602 = _T_600 - 1'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@132060.4]
  assign d_first = ~_T_600; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@132061.4]
  assign _GEN_56 = {io_in_d_bits_source, 2'h0}; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@132080.4]
  assign _T_610 = {{1'd0}, _GEN_56}; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@132080.4]
  assign _T_611 = inflight_opcodes >> _T_610; // @[Monitor.scala 629:44:chipyard.TestHarness.RocketConfig.fir@132081.4]
  assign _T_615 = 16'h10 - 16'h1; // @[Monitor.scala 606:57:chipyard.TestHarness.RocketConfig.fir@132085.4]
  assign _GEN_57 = {{12'd0}, _T_611}; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@132086.4]
  assign _T_616 = _GEN_57 & _T_615; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@132086.4]
  assign _T_617 = {{1'd0}, _T_616[15:1]}; // @[Monitor.scala 629:152:chipyard.TestHarness.RocketConfig.fir@132087.4]
  assign _T_619 = inflight_sizes >> _T_610; // @[Monitor.scala 633:40:chipyard.TestHarness.RocketConfig.fir@132092.4]
  assign _GEN_60 = {{12'd0}, _T_619}; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@132097.4]
  assign _T_624 = _GEN_60 & _T_615; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@132097.4]
  assign _T_625 = {{1'd0}, _T_624[15:1]}; // @[Monitor.scala 633:144:chipyard.TestHarness.RocketConfig.fir@132098.4]
  assign _T_629 = _T_471 & a_first; // @[Monitor.scala 643:27:chipyard.TestHarness.RocketConfig.fir@132123.4]
  assign _T_632 = {io_in_a_bits_opcode, 1'h0}; // @[Monitor.scala 645:53:chipyard.TestHarness.RocketConfig.fir@132128.6]
  assign _T_633 = _T_632 | 4'h1; // @[Monitor.scala 645:61:chipyard.TestHarness.RocketConfig.fir@132129.6]
  assign a_opcodes_set_interm = _T_629 ? _T_633 : 4'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@132125.4]
  assign _T_637 = {{15'd0}, a_opcodes_set_interm}; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@132135.6]
  assign a_sizes_set_interm = _T_629 ? 3'h5 : 3'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@132125.4]
  assign _T_639 = {{15'd0}, a_sizes_set_interm}; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@132138.6]
  assign _T_642 = ~inflight; // @[Monitor.scala 649:17:chipyard.TestHarness.RocketConfig.fir@132142.6]
  assign _T_644 = _T_642 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@132144.6]
  assign _T_645 = ~_T_644; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@132145.6]
  assign _GEN_15 = _T_629 ? 2'h1 : 2'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@132125.4]
  assign _GEN_18 = _T_629 ? _T_637 : 19'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@132125.4]
  assign _GEN_19 = _T_629 ? _T_639 : 18'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@132125.4]
  assign _T_648 = _T_520 & d_first; // @[Monitor.scala 660:27:chipyard.TestHarness.RocketConfig.fir@132159.4]
  assign _T_650 = ~_T_327; // @[Monitor.scala 660:75:chipyard.TestHarness.RocketConfig.fir@132161.4]
  assign _T_651 = _T_648 & _T_650; // @[Monitor.scala 660:72:chipyard.TestHarness.RocketConfig.fir@132162.4]
  assign _T_652 = 2'h1 << io_in_d_bits_source; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@132164.6]
  assign _GEN_63 = {{15'd0}, _T_615}; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@132171.6]
  assign _T_658 = _GEN_63 << _T_610; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@132171.6]
  assign _GEN_20 = _T_651 ? _T_652 : 2'h0; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@132163.4]
  assign _GEN_21 = _T_651 ? _T_658 : 31'h0; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@132163.4]
  assign _T_665 = io_in_d_valid & d_first; // @[Monitor.scala 665:26:chipyard.TestHarness.RocketConfig.fir@132181.4]
  assign _T_668 = _T_665 & _T_650; // @[Monitor.scala 665:71:chipyard.TestHarness.RocketConfig.fir@132184.4]
  assign _T_669 = inflight >> io_in_d_bits_source; // @[Monitor.scala 666:25:chipyard.TestHarness.RocketConfig.fir@132186.6]
  assign _T_672 = io_in_a_valid & _T_324; // @[Monitor.scala 666:68:chipyard.TestHarness.RocketConfig.fir@132189.6]
  assign _T_673 = 2'h2 == io_in_d_bits_size; // @[Monitor.scala 666:142:chipyard.TestHarness.RocketConfig.fir@132190.6]
  assign _T_674 = _T_672 & _T_673; // @[Monitor.scala 666:119:chipyard.TestHarness.RocketConfig.fir@132191.6]
  assign _T_675 = _T_674 & a_first; // @[Monitor.scala 666:166:chipyard.TestHarness.RocketConfig.fir@132192.6]
  assign _T_676 = _T_669 | _T_675; // @[Monitor.scala 666:49:chipyard.TestHarness.RocketConfig.fir@132193.6]
  assign _T_678 = _T_676 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@132195.6]
  assign _T_679 = ~_T_678; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@132196.6]
  assign a_opcode_lookup = _T_617[3:0]; // @[:chipyard.TestHarness.RocketConfig.fir@132078.4 :chipyard.TestHarness.RocketConfig.fir@132079.4 Monitor.scala 629:21:chipyard.TestHarness.RocketConfig.fir@132088.4]
  assign _GEN_25 = 3'h2 == a_opcode_lookup[2:0] ? 3'h1 : 3'h0; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@132202.6]
  assign _GEN_26 = 3'h3 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_25; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@132202.6]
  assign _GEN_27 = 3'h4 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_26; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@132202.6]
  assign _GEN_28 = 3'h5 == a_opcode_lookup[2:0] ? 3'h2 : _GEN_27; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@132202.6]
  assign _GEN_29 = 3'h6 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_28; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@132202.6]
  assign _GEN_30 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_29; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@132202.6]
  assign _T_681 = io_in_d_bits_opcode == _GEN_30; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@132202.6]
  assign _GEN_37 = 3'h6 == a_opcode_lookup[2:0] ? 3'h5 : _GEN_28; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@132204.6]
  assign _GEN_38 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_37; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@132204.6]
  assign _T_683 = io_in_d_bits_opcode == _GEN_38; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@132204.6]
  assign _T_684 = _T_681 | _T_683; // @[Monitor.scala 667:71:chipyard.TestHarness.RocketConfig.fir@132205.6]
  assign _GEN_41 = 3'h2 == io_in_a_bits_opcode ? 3'h1 : 3'h0; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@132206.6]
  assign _GEN_42 = 3'h3 == io_in_a_bits_opcode ? 3'h1 : _GEN_41; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@132206.6]
  assign _GEN_43 = 3'h4 == io_in_a_bits_opcode ? 3'h1 : _GEN_42; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@132206.6]
  assign _GEN_44 = 3'h5 == io_in_a_bits_opcode ? 3'h2 : _GEN_43; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@132206.6]
  assign _GEN_45 = 3'h6 == io_in_a_bits_opcode ? 3'h4 : _GEN_44; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@132206.6]
  assign _GEN_46 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_45; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@132206.6]
  assign _T_685 = io_in_d_bits_opcode == _GEN_46; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@132206.6]
  assign _GEN_53 = 3'h6 == io_in_a_bits_opcode ? 3'h5 : _GEN_44; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@132207.6]
  assign _GEN_54 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_53; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@132207.6]
  assign _T_686 = io_in_d_bits_opcode == _GEN_54; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@132207.6]
  assign _T_687 = _T_685 | _T_686; // @[Monitor.scala 668:99:chipyard.TestHarness.RocketConfig.fir@132208.6]
  assign _T_688 = io_in_a_valid & _T_687; // @[Monitor.scala 668:34:chipyard.TestHarness.RocketConfig.fir@132209.6]
  assign _T_689 = _T_684 | _T_688; // @[Monitor.scala 668:15:chipyard.TestHarness.RocketConfig.fir@132210.6]
  assign _T_691 = _T_689 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@132212.6]
  assign _T_692 = ~_T_691; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@132213.6]
  assign a_size_lookup = _T_625[3:0]; // @[:chipyard.TestHarness.RocketConfig.fir@132089.4 :chipyard.TestHarness.RocketConfig.fir@132090.4 Monitor.scala 633:19:chipyard.TestHarness.RocketConfig.fir@132099.4]
  assign _GEN_66 = {{2'd0}, io_in_d_bits_size}; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@132218.6]
  assign _T_693 = _GEN_66 == a_size_lookup; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@132218.6]
  assign _T_695 = io_in_a_valid & _T_673; // @[Monitor.scala 670:72:chipyard.TestHarness.RocketConfig.fir@132220.6]
  assign _T_696 = _T_693 | _T_695; // @[Monitor.scala 670:53:chipyard.TestHarness.RocketConfig.fir@132221.6]
  assign _T_698 = _T_696 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@132223.6]
  assign _T_699 = ~_T_698; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@132224.6]
  assign _T_701 = _T_665 & a_first; // @[Monitor.scala 672:36:chipyard.TestHarness.RocketConfig.fir@132231.4]
  assign _T_702 = _T_701 & io_in_a_valid; // @[Monitor.scala 672:47:chipyard.TestHarness.RocketConfig.fir@132232.4]
  assign _T_704 = _T_702 & _T_324; // @[Monitor.scala 672:65:chipyard.TestHarness.RocketConfig.fir@132234.4]
  assign _T_706 = _T_704 & _T_650; // @[Monitor.scala 672:116:chipyard.TestHarness.RocketConfig.fir@132236.4]
  assign _T_707 = ~io_in_d_ready; // @[Monitor.scala 673:15:chipyard.TestHarness.RocketConfig.fir@132238.6]
  assign _T_708 = _T_707 | io_in_a_ready; // @[Monitor.scala 673:32:chipyard.TestHarness.RocketConfig.fir@132239.6]
  assign _T_710 = _T_708 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@132241.6]
  assign _T_711 = ~_T_710; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@132242.6]
  assign a_set = _GEN_15[0]; // @[:chipyard.TestHarness.RocketConfig.fir@132072.4 :chipyard.TestHarness.RocketConfig.fir@132073.4 Monitor.scala 644:13:chipyard.TestHarness.RocketConfig.fir@132127.6]
  assign _T_712 = inflight | a_set; // @[Monitor.scala 680:27:chipyard.TestHarness.RocketConfig.fir@132248.4]
  assign d_clr = _GEN_20[0]; // @[:chipyard.TestHarness.RocketConfig.fir@132151.4 :chipyard.TestHarness.RocketConfig.fir@132152.4 Monitor.scala 661:13:chipyard.TestHarness.RocketConfig.fir@132165.6]
  assign _T_713 = ~d_clr; // @[Monitor.scala 680:38:chipyard.TestHarness.RocketConfig.fir@132249.4]
  assign _T_714 = _T_712 & _T_713; // @[Monitor.scala 680:36:chipyard.TestHarness.RocketConfig.fir@132250.4]
  assign a_opcodes_set = _GEN_18[3:0]; // @[:chipyard.TestHarness.RocketConfig.fir@132074.4 :chipyard.TestHarness.RocketConfig.fir@132075.4 Monitor.scala 647:21:chipyard.TestHarness.RocketConfig.fir@132136.6]
  assign _T_715 = inflight_opcodes | a_opcodes_set; // @[Monitor.scala 681:43:chipyard.TestHarness.RocketConfig.fir@132252.4]
  assign d_opcodes_clr = _GEN_21[3:0]; // @[:chipyard.TestHarness.RocketConfig.fir@132153.4 :chipyard.TestHarness.RocketConfig.fir@132154.4 Monitor.scala 662:21:chipyard.TestHarness.RocketConfig.fir@132172.6]
  assign _T_716 = ~d_opcodes_clr; // @[Monitor.scala 681:62:chipyard.TestHarness.RocketConfig.fir@132253.4]
  assign _T_717 = _T_715 & _T_716; // @[Monitor.scala 681:60:chipyard.TestHarness.RocketConfig.fir@132254.4]
  assign a_sizes_set = _GEN_19[3:0]; // @[:chipyard.TestHarness.RocketConfig.fir@132076.4 :chipyard.TestHarness.RocketConfig.fir@132077.4 Monitor.scala 648:19:chipyard.TestHarness.RocketConfig.fir@132139.6]
  assign _T_718 = inflight_sizes | a_sizes_set; // @[Monitor.scala 682:39:chipyard.TestHarness.RocketConfig.fir@132256.4]
  assign _T_720 = _T_718 & _T_716; // @[Monitor.scala 682:54:chipyard.TestHarness.RocketConfig.fir@132258.4]
  assign _T_722 = |inflight; // @[Monitor.scala 687:26:chipyard.TestHarness.RocketConfig.fir@132263.4]
  assign _T_723 = ~_T_722; // @[Monitor.scala 687:16:chipyard.TestHarness.RocketConfig.fir@132264.4]
  assign _T_724 = plusarg_reader_out == 32'h0; // @[Monitor.scala 687:39:chipyard.TestHarness.RocketConfig.fir@132265.4]
  assign _T_725 = _T_723 | _T_724; // @[Monitor.scala 687:30:chipyard.TestHarness.RocketConfig.fir@132266.4]
  assign _T_726 = _T_721 < plusarg_reader_out; // @[Monitor.scala 687:59:chipyard.TestHarness.RocketConfig.fir@132267.4]
  assign _T_727 = _T_725 | _T_726; // @[Monitor.scala 687:47:chipyard.TestHarness.RocketConfig.fir@132268.4]
  assign _T_729 = _T_727 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@132270.4]
  assign _T_730 = ~_T_729; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@132271.4]
  assign _T_732 = _T_721 + 32'h1; // @[Monitor.scala 689:26:chipyard.TestHarness.RocketConfig.fir@132277.4]
  assign _T_735 = _T_471 | _T_520; // @[Monitor.scala 690:27:chipyard.TestHarness.RocketConfig.fir@132281.4]
  assign _GEN_67 = io_in_a_valid & _T_56; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131083.10]
  assign _GEN_75 = io_in_a_valid & _T_97; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131158.10]
  assign _GEN_85 = io_in_a_valid & _T_142; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131241.10]
  assign _GEN_91 = io_in_a_valid & _T_175; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131300.10]
  assign _GEN_97 = io_in_a_valid & _T_204; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131351.10]
  assign _GEN_101 = io_in_a_valid & _T_235; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131401.10]
  assign _GEN_107 = io_in_a_valid & _T_261; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131449.10]
  assign _GEN_113 = io_in_a_valid & _T_287; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131500.10]
  assign _GEN_119 = io_in_d_valid & _T_327; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131563.10]
  assign _GEN_129 = io_in_d_valid & _T_347; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131605.10]
  assign _GEN_141 = io_in_d_valid & _T_375; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131663.10]
  assign _GEN_153 = io_in_d_valid & _T_404; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131722.10]
  assign _GEN_159 = io_in_d_valid & _T_421; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131757.10]
  assign _GEN_165 = io_in_d_valid & _T_439; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131793.10]
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
  _T_480 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_491 = _RAND_1[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {4{`RANDOM}};
  _T_495 = _RAND_2[127:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_528 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_539 = _RAND_4[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_540 = _RAND_5[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  _T_541 = _RAND_6[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  _T_542 = _RAND_7[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  _T_543 = _RAND_8[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  _T_544 = _RAND_9[0:0];
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
  _T_582 = _RAND_13[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  _T_600 = _RAND_14[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  _T_721 = _RAND_15[31:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      _T_480 <= 1'h0;
    end else if (_T_471) begin
      if (_T_483) begin
        _T_480 <= 1'h0;
      end else begin
        _T_480 <= _T_482;
      end
    end
    if (_T_519) begin
      _T_491 <= io_in_a_bits_opcode;
    end
    if (_T_519) begin
      _T_495 <= io_in_a_bits_address;
    end
    if (reset) begin
      _T_528 <= 1'h0;
    end else if (_T_520) begin
      if (_T_531) begin
        _T_528 <= 1'h0;
      end else begin
        _T_528 <= _T_530;
      end
    end
    if (_T_572) begin
      _T_539 <= io_in_d_bits_opcode;
    end
    if (_T_572) begin
      _T_540 <= io_in_d_bits_param;
    end
    if (_T_572) begin
      _T_541 <= io_in_d_bits_size;
    end
    if (_T_572) begin
      _T_542 <= io_in_d_bits_source;
    end
    if (_T_572) begin
      _T_543 <= io_in_d_bits_sink;
    end
    if (_T_572) begin
      _T_544 <= io_in_d_bits_denied;
    end
    if (reset) begin
      inflight <= 1'h0;
    end else begin
      inflight <= _T_714;
    end
    if (reset) begin
      inflight_opcodes <= 4'h0;
    end else begin
      inflight_opcodes <= _T_717;
    end
    if (reset) begin
      inflight_sizes <= 4'h0;
    end else begin
      inflight_sizes <= _T_720;
    end
    if (reset) begin
      _T_582 <= 1'h0;
    end else if (_T_471) begin
      if (a_first) begin
        _T_582 <= 1'h0;
      end else begin
        _T_582 <= _T_584;
      end
    end
    if (reset) begin
      _T_600 <= 1'h0;
    end else if (_T_520) begin
      if (d_first) begin
        _T_600 <= 1'h0;
      end else begin
        _T_600 <= _T_602;
      end
    end
    if (reset) begin
      _T_721 <= 32'h0;
    end else if (_T_735) begin
      _T_721 <= 32'h0;
    end else begin
      _T_721 <= _T_732;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_67 & _T_70) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock type unsupported by manager (connected at BusBypass.scala:36:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131083.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_67 & _T_70) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131084.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_67 & _T_73) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock from a client which does not support Probe (connected at BusBypass.scala:36:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131090.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_67 & _T_73) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131091.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_67 & _T_83) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock address not aligned to size (connected at BusBypass.scala:36:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131112.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_67 & _T_83) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131113.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_67 & _T_92) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock contains invalid mask (connected at BusBypass.scala:36:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131129.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_67 & _T_92) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131130.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_75 & _T_70) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm type unsupported by manager (connected at BusBypass.scala:36:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131158.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_75 & _T_70) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131159.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_75 & _T_73) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm from a client which does not support Probe (connected at BusBypass.scala:36:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131165.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_75 & _T_73) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131166.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_75 & _T_83) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm address not aligned to size (connected at BusBypass.scala:36:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131187.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_75 & _T_83) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131188.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_75 & _T_73) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm requests NtoB (connected at BusBypass.scala:36:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131203.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_75 & _T_73) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131204.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_75 & _T_92) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm contains invalid mask (connected at BusBypass.scala:36:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131212.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_75 & _T_92) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131213.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_70) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Get type unsupported by manager (connected at BusBypass.scala:36:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131241.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_70) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131242.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_83) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get address not aligned to size (connected at BusBypass.scala:36:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131255.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_83) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131256.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_170) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get contains invalid mask (connected at BusBypass.scala:36:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131271.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_170) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131272.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_91 & _T_70) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutFull type unsupported by manager (connected at BusBypass.scala:36:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131300.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_91 & _T_70) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131301.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_91 & _T_83) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull address not aligned to size (connected at BusBypass.scala:36:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131314.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_91 & _T_83) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131315.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_91 & _T_170) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull contains invalid mask (connected at BusBypass.scala:36:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131330.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_91 & _T_170) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131331.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_97 & _T_70) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutPartial type unsupported by manager (connected at BusBypass.scala:36:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131351.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_97 & _T_70) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131352.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_97 & _T_83) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial address not aligned to size (connected at BusBypass.scala:36:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131365.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_97 & _T_83) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131366.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_101 & _T_73) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Arithmetic type unsupported by manager (connected at BusBypass.scala:36:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131401.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_101 & _T_73) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131402.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_101 & _T_83) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic address not aligned to size (connected at BusBypass.scala:36:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131415.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_101 & _T_83) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131416.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_101 & _T_170) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic contains invalid mask (connected at BusBypass.scala:36:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131431.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_101 & _T_170) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131432.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_107 & _T_73) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Logical type unsupported by manager (connected at BusBypass.scala:36:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131449.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_107 & _T_73) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131450.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_107 & _T_83) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical address not aligned to size (connected at BusBypass.scala:36:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131463.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_107 & _T_83) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131464.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_107 & _T_170) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical contains invalid mask (connected at BusBypass.scala:36:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131479.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_107 & _T_170) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131480.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_113 & _T_70) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Hint type unsupported by manager (connected at BusBypass.scala:36:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131500.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_113 & _T_70) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131501.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_113 & _T_83) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint address not aligned to size (connected at BusBypass.scala:36:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131514.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_113 & _T_83) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131515.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_113 & _T_170) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint contains invalid mask (connected at BusBypass.scala:36:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131530.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_113 & _T_170) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131531.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_in_d_valid & _T_323) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel has invalid opcode (connected at BusBypass.scala:36:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131549.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (io_in_d_valid & _T_323) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131550.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_119 & _T_330) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck carries invalid source ID (connected at BusBypass.scala:36:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131563.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_119 & _T_330) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131564.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_119 & _T_334) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck smaller than a beat (connected at BusBypass.scala:36:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131571.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_119 & _T_334) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131572.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_119 & _T_338) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseeAck carries invalid param (connected at BusBypass.scala:36:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131579.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_119 & _T_338) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131580.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_119 & _T_342) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck is corrupt (connected at BusBypass.scala:36:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131587.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_119 & _T_342) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131588.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_119 & _T_346) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck is denied (connected at BusBypass.scala:36:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131595.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_119 & _T_346) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131596.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_129 & _T_330) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid source ID (connected at BusBypass.scala:36:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131605.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_129 & _T_330) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131606.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_129 & _T_353) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid sink ID (connected at BusBypass.scala:36:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131612.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_129 & _T_353) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131613.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_129 & _T_334) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant smaller than a beat (connected at BusBypass.scala:36:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131620.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_129 & _T_334) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131621.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_129 & _T_361) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid cap param (connected at BusBypass.scala:36:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131628.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_129 & _T_361) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131629.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_129 & _T_365) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries toN param (connected at BusBypass.scala:36:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131636.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_129 & _T_365) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131637.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_129 & _T_342) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant is corrupt (connected at BusBypass.scala:36:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131644.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_129 & _T_342) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131645.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_141 & _T_330) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid source ID (connected at BusBypass.scala:36:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131663.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_141 & _T_330) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131664.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_141 & _T_353) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid sink ID (connected at BusBypass.scala:36:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131670.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_141 & _T_353) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131671.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_141 & _T_334) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData smaller than a beat (connected at BusBypass.scala:36:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131678.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_141 & _T_334) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131679.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_141 & _T_361) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid cap param (connected at BusBypass.scala:36:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131686.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_141 & _T_361) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131687.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_141 & _T_365) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries toN param (connected at BusBypass.scala:36:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131694.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_141 & _T_365) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131695.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_141 & _T_398) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData is denied but not corrupt (connected at BusBypass.scala:36:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131703.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_141 & _T_398) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131704.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_153 & _T_330) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck carries invalid source ID (connected at BusBypass.scala:36:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131722.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_153 & _T_330) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131723.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_153 & _T_338) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck carries invalid param (connected at BusBypass.scala:36:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131730.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_153 & _T_338) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131731.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_153 & _T_342) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck is corrupt (connected at BusBypass.scala:36:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131738.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_153 & _T_342) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131739.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_159 & _T_330) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData carries invalid source ID (connected at BusBypass.scala:36:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131757.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_159 & _T_330) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131758.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_159 & _T_338) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData carries invalid param (connected at BusBypass.scala:36:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131765.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_159 & _T_338) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131766.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_159 & _T_398) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData is denied but not corrupt (connected at BusBypass.scala:36:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131774.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_159 & _T_398) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131775.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_165 & _T_330) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck carries invalid source ID (connected at BusBypass.scala:36:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131793.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_165 & _T_330) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131794.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_165 & _T_338) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck carries invalid param (connected at BusBypass.scala:36:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131801.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_165 & _T_338) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131802.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_165 & _T_342) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck is corrupt (connected at BusBypass.scala:36:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131809.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_165 & _T_342) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131810.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_497 & _T_501) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel opcode changed within multibeat operation (connected at BusBypass.scala:36:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131889.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_497 & _T_501) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131890.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_497 & _T_517) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel address changed with multibeat operation (connected at BusBypass.scala:36:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131921.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_497 & _T_517) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@131922.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_546 & _T_550) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel opcode changed within multibeat operation (connected at BusBypass.scala:36:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131970.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_546 & _T_550) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131971.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_546 & _T_554) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel param changed within multibeat operation (connected at BusBypass.scala:36:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131978.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_546 & _T_554) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131979.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_546 & _T_558) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel size changed within multibeat operation (connected at BusBypass.scala:36:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131986.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_546 & _T_558) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131987.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_546 & _T_562) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel source changed within multibeat operation (connected at BusBypass.scala:36:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131994.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_546 & _T_562) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@131995.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_546 & _T_566) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel sink changed with multibeat operation (connected at BusBypass.scala:36:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@132002.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_546 & _T_566) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@132003.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_546 & _T_570) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel denied changed with multibeat operation (connected at BusBypass.scala:36:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@132010.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_546 & _T_570) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@132011.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_629 & _T_645) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel re-used a source ID (connected at BusBypass.scala:36:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@132147.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_629 & _T_645) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@132148.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_668 & _T_679) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel acknowledged for nothing inflight (connected at BusBypass.scala:36:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@132198.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_668 & _T_679) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@132199.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_668 & _T_692) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper opcode response (connected at BusBypass.scala:36:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@132215.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_668 & _T_692) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@132216.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_668 & _T_699) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper response size (connected at BusBypass.scala:36:14)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@132226.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_668 & _T_699) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@132227.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_706 & _T_711) begin
          $fwrite(32'h80000002,"Assertion failed: ready check\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@132244.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_706 & _T_711) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@132245.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_730) begin
          $fwrite(32'h80000002,"Assertion failed: TileLink timeout expired (connected at BusBypass.scala:36:14)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@132273.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_730) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@132274.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
