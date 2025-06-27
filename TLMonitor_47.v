module TLMonitor_47( // @[:chipyard.TestHarness.RocketConfig.fir@117953.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@117954.4]
  input         reset, // @[:chipyard.TestHarness.RocketConfig.fir@117955.4]
  input         io_in_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@117956.4]
  input         io_in_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@117956.4]
  input  [2:0]  io_in_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@117956.4]
  input  [2:0]  io_in_a_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@117956.4]
  input  [2:0]  io_in_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@117956.4]
  input  [3:0]  io_in_a_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@117956.4]
  input  [31:0] io_in_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@117956.4]
  input  [7:0]  io_in_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@117956.4]
  input         io_in_a_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@117956.4]
  input         io_in_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@117956.4]
  input         io_in_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@117956.4]
  input  [2:0]  io_in_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@117956.4]
  input  [2:0]  io_in_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@117956.4]
  input  [3:0]  io_in_d_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@117956.4]
  input         io_in_d_bits_denied, // @[:chipyard.TestHarness.RocketConfig.fir@117956.4]
  input         io_in_d_bits_corrupt // @[:chipyard.TestHarness.RocketConfig.fir@117956.4]
);
  wire [31:0] plusarg_reader_out; // @[PlusArg.scala 44:11:chipyard.TestHarness.RocketConfig.fir@119274.4]
  wire  _T_10; // @[Parameters.scala 58:20:chipyard.TestHarness.RocketConfig.fir@117973.6]
  wire [12:0] _T_14; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@117979.6]
  wire [5:0] _T_16; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@117981.6]
  wire [31:0] _GEN_56; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@117982.6]
  wire [31:0] _T_17; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@117982.6]
  wire  _T_18; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@117983.6]
  wire [3:0] _T_21; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@117986.6]
  wire [2:0] _T_23; // @[Misc.scala 201:81:chipyard.TestHarness.RocketConfig.fir@117988.6]
  wire  _T_24; // @[Misc.scala 205:21:chipyard.TestHarness.RocketConfig.fir@117989.6]
  wire  _T_27; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@117992.6]
  wire  _T_29; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@117994.6]
  wire  _T_30; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@117995.6]
  wire  _T_32; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@117997.6]
  wire  _T_33; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@117998.6]
  wire  _T_36; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@118001.6]
  wire  _T_37; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@118002.6]
  wire  _T_38; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@118003.6]
  wire  _T_39; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@118004.6]
  wire  _T_40; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@118005.6]
  wire  _T_41; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@118006.6]
  wire  _T_42; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@118007.6]
  wire  _T_43; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@118008.6]
  wire  _T_44; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@118009.6]
  wire  _T_45; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@118010.6]
  wire  _T_46; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@118011.6]
  wire  _T_47; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@118012.6]
  wire  _T_48; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@118013.6]
  wire  _T_51; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@118016.6]
  wire  _T_52; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@118017.6]
  wire  _T_53; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@118018.6]
  wire  _T_54; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@118019.6]
  wire  _T_55; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@118020.6]
  wire  _T_56; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@118021.6]
  wire  _T_57; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@118022.6]
  wire  _T_58; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@118023.6]
  wire  _T_59; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@118024.6]
  wire  _T_60; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@118025.6]
  wire  _T_61; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@118026.6]
  wire  _T_62; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@118027.6]
  wire  _T_63; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@118028.6]
  wire  _T_64; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@118029.6]
  wire  _T_65; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@118030.6]
  wire  _T_66; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@118031.6]
  wire  _T_67; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@118032.6]
  wire  _T_68; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@118033.6]
  wire  _T_69; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@118034.6]
  wire  _T_70; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@118035.6]
  wire  _T_71; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@118036.6]
  wire  _T_72; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@118037.6]
  wire  _T_73; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@118038.6]
  wire  _T_74; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@118039.6]
  wire  _T_75; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@118040.6]
  wire [7:0] _T_82; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@118047.6]
  wire  _T_101; // @[Monitor.scala 79:25:chipyard.TestHarness.RocketConfig.fir@118070.6]
  wire [31:0] _T_103; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@118073.8]
  wire [32:0] _T_104; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@118074.8]
  wire [32:0] _T_106; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@118076.8]
  wire  _T_107; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@118077.8]
  wire  _T_112; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118082.8]
  wire  _T_117; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118095.8]
  wire  _T_118; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118096.8]
  wire  _T_121; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118103.8]
  wire  _T_122; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118104.8]
  wire  _T_124; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118110.8]
  wire  _T_125; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118111.8]
  wire  _T_126; // @[Bundles.scala 110:27:chipyard.TestHarness.RocketConfig.fir@118116.8]
  wire  _T_128; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118118.8]
  wire  _T_129; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118119.8]
  wire [7:0] _T_130; // @[Monitor.scala 86:18:chipyard.TestHarness.RocketConfig.fir@118124.8]
  wire  _T_131; // @[Monitor.scala 86:31:chipyard.TestHarness.RocketConfig.fir@118125.8]
  wire  _T_133; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118127.8]
  wire  _T_134; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118128.8]
  wire  _T_135; // @[Monitor.scala 87:18:chipyard.TestHarness.RocketConfig.fir@118133.8]
  wire  _T_137; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118135.8]
  wire  _T_138; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118136.8]
  wire  _T_139; // @[Monitor.scala 90:25:chipyard.TestHarness.RocketConfig.fir@118142.6]
  wire  _T_168; // @[Monitor.scala 97:31:chipyard.TestHarness.RocketConfig.fir@118196.8]
  wire  _T_170; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118198.8]
  wire  _T_171; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118199.8]
  wire  _T_181; // @[Monitor.scala 102:25:chipyard.TestHarness.RocketConfig.fir@118222.6]
  wire  _T_183; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@118225.8]
  wire  _T_191; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@118233.8]
  wire  _T_194; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118236.8]
  wire  _T_195; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118237.8]
  wire  _T_202; // @[Monitor.scala 106:31:chipyard.TestHarness.RocketConfig.fir@118256.8]
  wire  _T_204; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118258.8]
  wire  _T_205; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118259.8]
  wire  _T_206; // @[Monitor.scala 107:30:chipyard.TestHarness.RocketConfig.fir@118264.8]
  wire  _T_208; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118266.8]
  wire  _T_209; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118267.8]
  wire  _T_214; // @[Monitor.scala 111:25:chipyard.TestHarness.RocketConfig.fir@118281.6]
  wire  _T_243; // @[Monitor.scala 119:25:chipyard.TestHarness.RocketConfig.fir@118332.6]
  wire [7:0] _T_268; // @[Monitor.scala 124:33:chipyard.TestHarness.RocketConfig.fir@118374.8]
  wire [7:0] _T_269; // @[Monitor.scala 124:31:chipyard.TestHarness.RocketConfig.fir@118375.8]
  wire  _T_270; // @[Monitor.scala 124:40:chipyard.TestHarness.RocketConfig.fir@118376.8]
  wire  _T_272; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118378.8]
  wire  _T_273; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118379.8]
  wire  _T_274; // @[Monitor.scala 127:25:chipyard.TestHarness.RocketConfig.fir@118385.6]
  wire  _T_292; // @[Bundles.scala 140:33:chipyard.TestHarness.RocketConfig.fir@118416.8]
  wire  _T_294; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118418.8]
  wire  _T_295; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118419.8]
  wire  _T_300; // @[Monitor.scala 135:25:chipyard.TestHarness.RocketConfig.fir@118433.6]
  wire  _T_318; // @[Bundles.scala 147:30:chipyard.TestHarness.RocketConfig.fir@118464.8]
  wire  _T_320; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118466.8]
  wire  _T_321; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118467.8]
  wire  _T_326; // @[Monitor.scala 143:25:chipyard.TestHarness.RocketConfig.fir@118481.6]
  wire  _T_344; // @[Bundles.scala 160:28:chipyard.TestHarness.RocketConfig.fir@118512.8]
  wire  _T_346; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118514.8]
  wire  _T_347; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118515.8]
  wire  _T_356; // @[Bundles.scala 44:24:chipyard.TestHarness.RocketConfig.fir@118539.6]
  wire  _T_358; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@118541.6]
  wire  _T_359; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@118542.6]
  wire  _T_366; // @[Parameters.scala 58:20:chipyard.TestHarness.RocketConfig.fir@118553.6]
  wire  _T_370; // @[Monitor.scala 307:25:chipyard.TestHarness.RocketConfig.fir@118559.6]
  wire  _T_372; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@118562.8]
  wire  _T_373; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@118563.8]
  wire  _T_374; // @[Monitor.scala 309:27:chipyard.TestHarness.RocketConfig.fir@118568.8]
  wire  _T_376; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@118570.8]
  wire  _T_377; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@118571.8]
  wire  _T_382; // @[Monitor.scala 311:15:chipyard.TestHarness.RocketConfig.fir@118584.8]
  wire  _T_384; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@118586.8]
  wire  _T_385; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@118587.8]
  wire  _T_386; // @[Monitor.scala 312:15:chipyard.TestHarness.RocketConfig.fir@118592.8]
  wire  _T_388; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@118594.8]
  wire  _T_389; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@118595.8]
  wire  _T_390; // @[Monitor.scala 315:25:chipyard.TestHarness.RocketConfig.fir@118601.6]
  wire  _T_418; // @[Monitor.scala 325:25:chipyard.TestHarness.RocketConfig.fir@118659.6]
  wire  _T_438; // @[Monitor.scala 331:30:chipyard.TestHarness.RocketConfig.fir@118700.8]
  wire  _T_440; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@118702.8]
  wire  _T_441; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@118703.8]
  wire  _T_447; // @[Monitor.scala 335:25:chipyard.TestHarness.RocketConfig.fir@118718.6]
  wire  _T_464; // @[Monitor.scala 343:25:chipyard.TestHarness.RocketConfig.fir@118753.6]
  wire  _T_482; // @[Monitor.scala 351:25:chipyard.TestHarness.RocketConfig.fir@118789.6]
  wire  _T_514; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@118855.4]
  wire  _T_521; // @[Edges.scala 93:28:chipyard.TestHarness.RocketConfig.fir@118862.4]
  reg [2:0] _T_523; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@118864.4]
  reg [31:0] _RAND_0;
  wire [2:0] _T_525; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@118866.4]
  wire  _T_526; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@118867.4]
  reg [2:0] _T_534; // @[Monitor.scala 381:22:chipyard.TestHarness.RocketConfig.fir@118878.4]
  reg [31:0] _RAND_1;
  reg [2:0] _T_535; // @[Monitor.scala 382:22:chipyard.TestHarness.RocketConfig.fir@118879.4]
  reg [31:0] _RAND_2;
  reg [2:0] _T_536; // @[Monitor.scala 383:22:chipyard.TestHarness.RocketConfig.fir@118880.4]
  reg [31:0] _RAND_3;
  reg [3:0] _T_537; // @[Monitor.scala 384:22:chipyard.TestHarness.RocketConfig.fir@118881.4]
  reg [31:0] _RAND_4;
  reg [31:0] _T_538; // @[Monitor.scala 385:22:chipyard.TestHarness.RocketConfig.fir@118882.4]
  reg [31:0] _RAND_5;
  wire  _T_539; // @[Monitor.scala 386:22:chipyard.TestHarness.RocketConfig.fir@118883.4]
  wire  _T_540; // @[Monitor.scala 386:19:chipyard.TestHarness.RocketConfig.fir@118884.4]
  wire  _T_541; // @[Monitor.scala 387:32:chipyard.TestHarness.RocketConfig.fir@118886.6]
  wire  _T_543; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118888.6]
  wire  _T_544; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118889.6]
  wire  _T_545; // @[Monitor.scala 388:32:chipyard.TestHarness.RocketConfig.fir@118894.6]
  wire  _T_547; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118896.6]
  wire  _T_548; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118897.6]
  wire  _T_549; // @[Monitor.scala 389:32:chipyard.TestHarness.RocketConfig.fir@118902.6]
  wire  _T_551; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118904.6]
  wire  _T_552; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118905.6]
  wire  _T_553; // @[Monitor.scala 390:32:chipyard.TestHarness.RocketConfig.fir@118910.6]
  wire  _T_555; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118912.6]
  wire  _T_556; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118913.6]
  wire  _T_557; // @[Monitor.scala 391:32:chipyard.TestHarness.RocketConfig.fir@118918.6]
  wire  _T_559; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118920.6]
  wire  _T_560; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118921.6]
  wire  _T_562; // @[Monitor.scala 393:20:chipyard.TestHarness.RocketConfig.fir@118928.4]
  wire  _T_563; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@118936.4]
  wire [12:0] _T_565; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@118938.4]
  wire [5:0] _T_567; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@118940.4]
  reg [2:0] _T_571; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@118944.4]
  reg [31:0] _RAND_6;
  wire [2:0] _T_573; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@118946.4]
  wire  _T_574; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@118947.4]
  reg [2:0] _T_582; // @[Monitor.scala 532:22:chipyard.TestHarness.RocketConfig.fir@118958.4]
  reg [31:0] _RAND_7;
  reg [2:0] _T_584; // @[Monitor.scala 534:22:chipyard.TestHarness.RocketConfig.fir@118960.4]
  reg [31:0] _RAND_8;
  reg [3:0] _T_585; // @[Monitor.scala 535:22:chipyard.TestHarness.RocketConfig.fir@118961.4]
  reg [31:0] _RAND_9;
  reg  _T_587; // @[Monitor.scala 537:22:chipyard.TestHarness.RocketConfig.fir@118963.4]
  reg [31:0] _RAND_10;
  wire  _T_588; // @[Monitor.scala 538:22:chipyard.TestHarness.RocketConfig.fir@118964.4]
  wire  _T_589; // @[Monitor.scala 538:19:chipyard.TestHarness.RocketConfig.fir@118965.4]
  wire  _T_590; // @[Monitor.scala 539:29:chipyard.TestHarness.RocketConfig.fir@118967.6]
  wire  _T_592; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@118969.6]
  wire  _T_593; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@118970.6]
  wire  _T_598; // @[Monitor.scala 541:29:chipyard.TestHarness.RocketConfig.fir@118983.6]
  wire  _T_600; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@118985.6]
  wire  _T_601; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@118986.6]
  wire  _T_602; // @[Monitor.scala 542:29:chipyard.TestHarness.RocketConfig.fir@118991.6]
  wire  _T_604; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@118993.6]
  wire  _T_605; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@118994.6]
  wire  _T_610; // @[Monitor.scala 544:29:chipyard.TestHarness.RocketConfig.fir@119007.6]
  wire  _T_612; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@119009.6]
  wire  _T_613; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@119010.6]
  wire  _T_615; // @[Monitor.scala 546:20:chipyard.TestHarness.RocketConfig.fir@119017.4]
  reg [9:0] inflight; // @[Monitor.scala 608:27:chipyard.TestHarness.RocketConfig.fir@119026.4]
  reg [31:0] _RAND_11;
  reg [39:0] inflight_opcodes; // @[Monitor.scala 610:35:chipyard.TestHarness.RocketConfig.fir@119027.4]
  reg [63:0] _RAND_12;
  reg [39:0] inflight_sizes; // @[Monitor.scala 612:33:chipyard.TestHarness.RocketConfig.fir@119028.4]
  reg [63:0] _RAND_13;
  reg [2:0] _T_625; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@119038.4]
  reg [31:0] _RAND_14;
  wire [2:0] _T_627; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@119040.4]
  wire  a_first; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@119041.4]
  reg [2:0] _T_643; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@119060.4]
  reg [31:0] _RAND_15;
  wire [2:0] _T_645; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@119062.4]
  wire  d_first; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@119063.4]
  wire [5:0] _GEN_57; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@119082.4]
  wire [6:0] _T_653; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@119082.4]
  wire [39:0] _T_654; // @[Monitor.scala 629:44:chipyard.TestHarness.RocketConfig.fir@119083.4]
  wire [15:0] _T_658; // @[Monitor.scala 606:57:chipyard.TestHarness.RocketConfig.fir@119087.4]
  wire [39:0] _GEN_58; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@119088.4]
  wire [39:0] _T_659; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@119088.4]
  wire [39:0] _T_660; // @[Monitor.scala 629:152:chipyard.TestHarness.RocketConfig.fir@119089.4]
  wire [39:0] _T_662; // @[Monitor.scala 633:40:chipyard.TestHarness.RocketConfig.fir@119094.4]
  wire [39:0] _T_667; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@119099.4]
  wire [39:0] _T_668; // @[Monitor.scala 633:144:chipyard.TestHarness.RocketConfig.fir@119100.4]
  wire  _T_672; // @[Monitor.scala 643:27:chipyard.TestHarness.RocketConfig.fir@119125.4]
  wire [15:0] _T_674; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@119128.6]
  wire [3:0] _T_675; // @[Monitor.scala 645:53:chipyard.TestHarness.RocketConfig.fir@119130.6]
  wire [3:0] _T_676; // @[Monitor.scala 645:61:chipyard.TestHarness.RocketConfig.fir@119131.6]
  wire [3:0] _T_677; // @[Monitor.scala 646:49:chipyard.TestHarness.RocketConfig.fir@119133.6]
  wire [3:0] _T_678; // @[Monitor.scala 646:57:chipyard.TestHarness.RocketConfig.fir@119134.6]
  wire [5:0] _GEN_63; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@119136.6]
  wire [6:0] _T_679; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@119136.6]
  wire [3:0] a_opcodes_set_interm; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@119127.4]
  wire [130:0] _GEN_64; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@119137.6]
  wire [130:0] _T_680; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@119137.6]
  wire [3:0] a_sizes_set_interm; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@119127.4]
  wire [130:0] _GEN_66; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@119140.6]
  wire [130:0] _T_682; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@119140.6]
  wire [9:0] _T_683; // @[Monitor.scala 649:26:chipyard.TestHarness.RocketConfig.fir@119142.6]
  wire  _T_685; // @[Monitor.scala 649:17:chipyard.TestHarness.RocketConfig.fir@119144.6]
  wire  _T_687; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@119146.6]
  wire  _T_688; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@119147.6]
  wire [15:0] _GEN_15; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@119127.4]
  wire [130:0] _GEN_18; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@119127.4]
  wire [130:0] _GEN_19; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@119127.4]
  wire  _T_691; // @[Monitor.scala 660:27:chipyard.TestHarness.RocketConfig.fir@119161.4]
  wire  _T_693; // @[Monitor.scala 660:75:chipyard.TestHarness.RocketConfig.fir@119163.4]
  wire  _T_694; // @[Monitor.scala 660:72:chipyard.TestHarness.RocketConfig.fir@119164.4]
  wire [15:0] _T_695; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@119166.6]
  wire [142:0] _GEN_68; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@119173.6]
  wire [142:0] _T_701; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@119173.6]
  wire [15:0] _GEN_20; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@119165.4]
  wire [142:0] _GEN_21; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@119165.4]
  wire  _T_708; // @[Monitor.scala 665:26:chipyard.TestHarness.RocketConfig.fir@119183.4]
  wire  _T_711; // @[Monitor.scala 665:71:chipyard.TestHarness.RocketConfig.fir@119186.4]
  wire [9:0] _T_712; // @[Monitor.scala 666:25:chipyard.TestHarness.RocketConfig.fir@119188.6]
  wire  _T_714; // @[Monitor.scala 666:93:chipyard.TestHarness.RocketConfig.fir@119190.6]
  wire  _T_715; // @[Monitor.scala 666:68:chipyard.TestHarness.RocketConfig.fir@119191.6]
  wire  _T_716; // @[Monitor.scala 666:142:chipyard.TestHarness.RocketConfig.fir@119192.6]
  wire  _T_717; // @[Monitor.scala 666:119:chipyard.TestHarness.RocketConfig.fir@119193.6]
  wire  _T_718; // @[Monitor.scala 666:166:chipyard.TestHarness.RocketConfig.fir@119194.6]
  wire  _T_719; // @[Monitor.scala 666:49:chipyard.TestHarness.RocketConfig.fir@119195.6]
  wire  _T_721; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@119197.6]
  wire  _T_722; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@119198.6]
  wire [3:0] a_opcode_lookup; // @[:chipyard.TestHarness.RocketConfig.fir@119080.4 :chipyard.TestHarness.RocketConfig.fir@119081.4 Monitor.scala 629:21:chipyard.TestHarness.RocketConfig.fir@119090.4]
  wire [2:0] _GEN_25; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@119204.6]
  wire [2:0] _GEN_26; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@119204.6]
  wire [2:0] _GEN_27; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@119204.6]
  wire [2:0] _GEN_28; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@119204.6]
  wire [2:0] _GEN_29; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@119204.6]
  wire [2:0] _GEN_30; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@119204.6]
  wire  _T_724; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@119204.6]
  wire [2:0] _GEN_37; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@119206.6]
  wire [2:0] _GEN_38; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@119206.6]
  wire  _T_726; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@119206.6]
  wire  _T_727; // @[Monitor.scala 667:71:chipyard.TestHarness.RocketConfig.fir@119207.6]
  wire [2:0] _GEN_41; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@119208.6]
  wire [2:0] _GEN_42; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@119208.6]
  wire [2:0] _GEN_43; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@119208.6]
  wire [2:0] _GEN_44; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@119208.6]
  wire [2:0] _GEN_45; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@119208.6]
  wire [2:0] _GEN_46; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@119208.6]
  wire  _T_728; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@119208.6]
  wire [2:0] _GEN_53; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@119209.6]
  wire [2:0] _GEN_54; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@119209.6]
  wire  _T_729; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@119209.6]
  wire  _T_730; // @[Monitor.scala 668:99:chipyard.TestHarness.RocketConfig.fir@119210.6]
  wire  _T_731; // @[Monitor.scala 668:34:chipyard.TestHarness.RocketConfig.fir@119211.6]
  wire  _T_732; // @[Monitor.scala 668:15:chipyard.TestHarness.RocketConfig.fir@119212.6]
  wire  _T_734; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@119214.6]
  wire  _T_735; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@119215.6]
  wire [3:0] a_size_lookup; // @[:chipyard.TestHarness.RocketConfig.fir@119091.4 :chipyard.TestHarness.RocketConfig.fir@119092.4 Monitor.scala 633:19:chipyard.TestHarness.RocketConfig.fir@119101.4]
  wire [3:0] _GEN_71; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@119220.6]
  wire  _T_736; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@119220.6]
  wire  _T_738; // @[Monitor.scala 670:72:chipyard.TestHarness.RocketConfig.fir@119222.6]
  wire  _T_739; // @[Monitor.scala 670:53:chipyard.TestHarness.RocketConfig.fir@119223.6]
  wire  _T_741; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@119225.6]
  wire  _T_742; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@119226.6]
  wire  _T_744; // @[Monitor.scala 672:36:chipyard.TestHarness.RocketConfig.fir@119233.4]
  wire  _T_745; // @[Monitor.scala 672:47:chipyard.TestHarness.RocketConfig.fir@119234.4]
  wire  _T_747; // @[Monitor.scala 672:65:chipyard.TestHarness.RocketConfig.fir@119236.4]
  wire  _T_749; // @[Monitor.scala 672:116:chipyard.TestHarness.RocketConfig.fir@119238.4]
  wire  _T_750; // @[Monitor.scala 673:15:chipyard.TestHarness.RocketConfig.fir@119240.6]
  wire  _T_751; // @[Monitor.scala 673:32:chipyard.TestHarness.RocketConfig.fir@119241.6]
  wire  _T_753; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@119243.6]
  wire  _T_754; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@119244.6]
  wire [9:0] a_set; // @[:chipyard.TestHarness.RocketConfig.fir@119074.4 :chipyard.TestHarness.RocketConfig.fir@119075.4 Monitor.scala 644:13:chipyard.TestHarness.RocketConfig.fir@119129.6]
  wire [9:0] d_clr; // @[:chipyard.TestHarness.RocketConfig.fir@119153.4 :chipyard.TestHarness.RocketConfig.fir@119154.4 Monitor.scala 661:13:chipyard.TestHarness.RocketConfig.fir@119167.6]
  wire  _T_755; // @[Monitor.scala 677:20:chipyard.TestHarness.RocketConfig.fir@119250.4]
  wire  _T_756; // @[Monitor.scala 677:40:chipyard.TestHarness.RocketConfig.fir@119251.4]
  wire  _T_757; // @[Monitor.scala 677:33:chipyard.TestHarness.RocketConfig.fir@119252.4]
  wire  _T_758; // @[Monitor.scala 677:30:chipyard.TestHarness.RocketConfig.fir@119253.4]
  wire  _T_760; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@119255.4]
  wire  _T_761; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@119256.4]
  wire [9:0] _T_762; // @[Monitor.scala 680:27:chipyard.TestHarness.RocketConfig.fir@119261.4]
  wire [9:0] _T_763; // @[Monitor.scala 680:38:chipyard.TestHarness.RocketConfig.fir@119262.4]
  wire [9:0] _T_764; // @[Monitor.scala 680:36:chipyard.TestHarness.RocketConfig.fir@119263.4]
  wire [39:0] a_opcodes_set; // @[:chipyard.TestHarness.RocketConfig.fir@119076.4 :chipyard.TestHarness.RocketConfig.fir@119077.4 Monitor.scala 647:21:chipyard.TestHarness.RocketConfig.fir@119138.6]
  wire [39:0] _T_765; // @[Monitor.scala 681:43:chipyard.TestHarness.RocketConfig.fir@119265.4]
  wire [39:0] d_opcodes_clr; // @[:chipyard.TestHarness.RocketConfig.fir@119155.4 :chipyard.TestHarness.RocketConfig.fir@119156.4 Monitor.scala 662:21:chipyard.TestHarness.RocketConfig.fir@119174.6]
  wire [39:0] _T_766; // @[Monitor.scala 681:62:chipyard.TestHarness.RocketConfig.fir@119266.4]
  wire [39:0] _T_767; // @[Monitor.scala 681:60:chipyard.TestHarness.RocketConfig.fir@119267.4]
  wire [39:0] a_sizes_set; // @[:chipyard.TestHarness.RocketConfig.fir@119078.4 :chipyard.TestHarness.RocketConfig.fir@119079.4 Monitor.scala 648:19:chipyard.TestHarness.RocketConfig.fir@119141.6]
  wire [39:0] _T_768; // @[Monitor.scala 682:39:chipyard.TestHarness.RocketConfig.fir@119269.4]
  wire [39:0] _T_770; // @[Monitor.scala 682:54:chipyard.TestHarness.RocketConfig.fir@119271.4]
  reg [31:0] _T_771; // @[Monitor.scala 684:27:chipyard.TestHarness.RocketConfig.fir@119273.4]
  reg [31:0] _RAND_16;
  wire  _T_772; // @[Monitor.scala 687:26:chipyard.TestHarness.RocketConfig.fir@119276.4]
  wire  _T_773; // @[Monitor.scala 687:16:chipyard.TestHarness.RocketConfig.fir@119277.4]
  wire  _T_774; // @[Monitor.scala 687:39:chipyard.TestHarness.RocketConfig.fir@119278.4]
  wire  _T_775; // @[Monitor.scala 687:30:chipyard.TestHarness.RocketConfig.fir@119279.4]
  wire  _T_776; // @[Monitor.scala 687:59:chipyard.TestHarness.RocketConfig.fir@119280.4]
  wire  _T_777; // @[Monitor.scala 687:47:chipyard.TestHarness.RocketConfig.fir@119281.4]
  wire  _T_779; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@119283.4]
  wire  _T_780; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@119284.4]
  wire [31:0] _T_782; // @[Monitor.scala 689:26:chipyard.TestHarness.RocketConfig.fir@119290.4]
  wire  _T_785; // @[Monitor.scala 690:27:chipyard.TestHarness.RocketConfig.fir@119294.4]
  wire  _GEN_72; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118084.10]
  wire  _GEN_88; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118156.10]
  wire  _GEN_106; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118239.10]
  wire  _GEN_118; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118298.10]
  wire  _GEN_128; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118349.10]
  wire  _GEN_138; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118399.10]
  wire  _GEN_148; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118447.10]
  wire  _GEN_158; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118495.10]
  wire  _GEN_170; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@118565.10]
  wire  _GEN_178; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@118607.10]
  wire  _GEN_186; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@118665.10]
  wire  _GEN_194; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@118724.10]
  wire  _GEN_198; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@118759.10]
  wire  _GEN_202; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@118795.10]
  plusarg_reader #(.FORMAT("tilelink_timeout=%d"), .DEFAULT(0), .WIDTH(32)) plusarg_reader ( // @[PlusArg.scala 44:11:chipyard.TestHarness.RocketConfig.fir@119274.4]
    .out(plusarg_reader_out)
  );
  assign _T_10 = io_in_a_bits_source <= 4'h9; // @[Parameters.scala 58:20:chipyard.TestHarness.RocketConfig.fir@117973.6]
  assign _T_14 = 13'h3f << io_in_a_bits_size; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@117979.6]
  assign _T_16 = ~_T_14[5:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@117981.6]
  assign _GEN_56 = {{26'd0}, _T_16}; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@117982.6]
  assign _T_17 = io_in_a_bits_address & _GEN_56; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@117982.6]
  assign _T_18 = _T_17 == 32'h0; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@117983.6]
  assign _T_21 = 4'h1 << io_in_a_bits_size[1:0]; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@117986.6]
  assign _T_23 = _T_21[2:0] | 3'h1; // @[Misc.scala 201:81:chipyard.TestHarness.RocketConfig.fir@117988.6]
  assign _T_24 = io_in_a_bits_size >= 3'h3; // @[Misc.scala 205:21:chipyard.TestHarness.RocketConfig.fir@117989.6]
  assign _T_27 = ~io_in_a_bits_address[2]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@117992.6]
  assign _T_29 = _T_23[2] & _T_27; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@117994.6]
  assign _T_30 = _T_24 | _T_29; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@117995.6]
  assign _T_32 = _T_23[2] & io_in_a_bits_address[2]; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@117997.6]
  assign _T_33 = _T_24 | _T_32; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@117998.6]
  assign _T_36 = ~io_in_a_bits_address[1]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@118001.6]
  assign _T_37 = _T_27 & _T_36; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@118002.6]
  assign _T_38 = _T_23[1] & _T_37; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@118003.6]
  assign _T_39 = _T_30 | _T_38; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@118004.6]
  assign _T_40 = _T_27 & io_in_a_bits_address[1]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@118005.6]
  assign _T_41 = _T_23[1] & _T_40; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@118006.6]
  assign _T_42 = _T_30 | _T_41; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@118007.6]
  assign _T_43 = io_in_a_bits_address[2] & _T_36; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@118008.6]
  assign _T_44 = _T_23[1] & _T_43; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@118009.6]
  assign _T_45 = _T_33 | _T_44; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@118010.6]
  assign _T_46 = io_in_a_bits_address[2] & io_in_a_bits_address[1]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@118011.6]
  assign _T_47 = _T_23[1] & _T_46; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@118012.6]
  assign _T_48 = _T_33 | _T_47; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@118013.6]
  assign _T_51 = ~io_in_a_bits_address[0]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@118016.6]
  assign _T_52 = _T_37 & _T_51; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@118017.6]
  assign _T_53 = _T_23[0] & _T_52; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@118018.6]
  assign _T_54 = _T_39 | _T_53; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@118019.6]
  assign _T_55 = _T_37 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@118020.6]
  assign _T_56 = _T_23[0] & _T_55; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@118021.6]
  assign _T_57 = _T_39 | _T_56; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@118022.6]
  assign _T_58 = _T_40 & _T_51; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@118023.6]
  assign _T_59 = _T_23[0] & _T_58; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@118024.6]
  assign _T_60 = _T_42 | _T_59; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@118025.6]
  assign _T_61 = _T_40 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@118026.6]
  assign _T_62 = _T_23[0] & _T_61; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@118027.6]
  assign _T_63 = _T_42 | _T_62; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@118028.6]
  assign _T_64 = _T_43 & _T_51; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@118029.6]
  assign _T_65 = _T_23[0] & _T_64; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@118030.6]
  assign _T_66 = _T_45 | _T_65; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@118031.6]
  assign _T_67 = _T_43 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@118032.6]
  assign _T_68 = _T_23[0] & _T_67; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@118033.6]
  assign _T_69 = _T_45 | _T_68; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@118034.6]
  assign _T_70 = _T_46 & _T_51; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@118035.6]
  assign _T_71 = _T_23[0] & _T_70; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@118036.6]
  assign _T_72 = _T_48 | _T_71; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@118037.6]
  assign _T_73 = _T_46 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@118038.6]
  assign _T_74 = _T_23[0] & _T_73; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@118039.6]
  assign _T_75 = _T_48 | _T_74; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@118040.6]
  assign _T_82 = {_T_75,_T_72,_T_69,_T_66,_T_63,_T_60,_T_57,_T_54}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@118047.6]
  assign _T_101 = io_in_a_bits_opcode == 3'h6; // @[Monitor.scala 79:25:chipyard.TestHarness.RocketConfig.fir@118070.6]
  assign _T_103 = io_in_a_bits_address ^ 32'h80000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@118073.8]
  assign _T_104 = {1'b0,$signed(_T_103)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@118074.8]
  assign _T_106 = $signed(_T_104) & -33'sh10000000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@118076.8]
  assign _T_107 = $signed(_T_106) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@118077.8]
  assign _T_112 = ~reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118082.8]
  assign _T_117 = _T_10 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118095.8]
  assign _T_118 = ~_T_117; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118096.8]
  assign _T_121 = _T_24 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118103.8]
  assign _T_122 = ~_T_121; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118104.8]
  assign _T_124 = _T_18 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118110.8]
  assign _T_125 = ~_T_124; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118111.8]
  assign _T_126 = io_in_a_bits_param <= 3'h2; // @[Bundles.scala 110:27:chipyard.TestHarness.RocketConfig.fir@118116.8]
  assign _T_128 = _T_126 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118118.8]
  assign _T_129 = ~_T_128; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118119.8]
  assign _T_130 = ~io_in_a_bits_mask; // @[Monitor.scala 86:18:chipyard.TestHarness.RocketConfig.fir@118124.8]
  assign _T_131 = _T_130 == 8'h0; // @[Monitor.scala 86:31:chipyard.TestHarness.RocketConfig.fir@118125.8]
  assign _T_133 = _T_131 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118127.8]
  assign _T_134 = ~_T_133; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118128.8]
  assign _T_135 = ~io_in_a_bits_corrupt; // @[Monitor.scala 87:18:chipyard.TestHarness.RocketConfig.fir@118133.8]
  assign _T_137 = _T_135 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118135.8]
  assign _T_138 = ~_T_137; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118136.8]
  assign _T_139 = io_in_a_bits_opcode == 3'h7; // @[Monitor.scala 90:25:chipyard.TestHarness.RocketConfig.fir@118142.6]
  assign _T_168 = io_in_a_bits_param != 3'h0; // @[Monitor.scala 97:31:chipyard.TestHarness.RocketConfig.fir@118196.8]
  assign _T_170 = _T_168 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118198.8]
  assign _T_171 = ~_T_170; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118199.8]
  assign _T_181 = io_in_a_bits_opcode == 3'h4; // @[Monitor.scala 102:25:chipyard.TestHarness.RocketConfig.fir@118222.6]
  assign _T_183 = io_in_a_bits_size <= 3'h6; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@118225.8]
  assign _T_191 = _T_183 & _T_107; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@118233.8]
  assign _T_194 = _T_191 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118236.8]
  assign _T_195 = ~_T_194; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118237.8]
  assign _T_202 = io_in_a_bits_param == 3'h0; // @[Monitor.scala 106:31:chipyard.TestHarness.RocketConfig.fir@118256.8]
  assign _T_204 = _T_202 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118258.8]
  assign _T_205 = ~_T_204; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118259.8]
  assign _T_206 = io_in_a_bits_mask == _T_82; // @[Monitor.scala 107:30:chipyard.TestHarness.RocketConfig.fir@118264.8]
  assign _T_208 = _T_206 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118266.8]
  assign _T_209 = ~_T_208; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118267.8]
  assign _T_214 = io_in_a_bits_opcode == 3'h0; // @[Monitor.scala 111:25:chipyard.TestHarness.RocketConfig.fir@118281.6]
  assign _T_243 = io_in_a_bits_opcode == 3'h1; // @[Monitor.scala 119:25:chipyard.TestHarness.RocketConfig.fir@118332.6]
  assign _T_268 = ~_T_82; // @[Monitor.scala 124:33:chipyard.TestHarness.RocketConfig.fir@118374.8]
  assign _T_269 = io_in_a_bits_mask & _T_268; // @[Monitor.scala 124:31:chipyard.TestHarness.RocketConfig.fir@118375.8]
  assign _T_270 = _T_269 == 8'h0; // @[Monitor.scala 124:40:chipyard.TestHarness.RocketConfig.fir@118376.8]
  assign _T_272 = _T_270 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118378.8]
  assign _T_273 = ~_T_272; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118379.8]
  assign _T_274 = io_in_a_bits_opcode == 3'h2; // @[Monitor.scala 127:25:chipyard.TestHarness.RocketConfig.fir@118385.6]
  assign _T_292 = io_in_a_bits_param <= 3'h4; // @[Bundles.scala 140:33:chipyard.TestHarness.RocketConfig.fir@118416.8]
  assign _T_294 = _T_292 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118418.8]
  assign _T_295 = ~_T_294; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118419.8]
  assign _T_300 = io_in_a_bits_opcode == 3'h3; // @[Monitor.scala 135:25:chipyard.TestHarness.RocketConfig.fir@118433.6]
  assign _T_318 = io_in_a_bits_param <= 3'h3; // @[Bundles.scala 147:30:chipyard.TestHarness.RocketConfig.fir@118464.8]
  assign _T_320 = _T_318 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118466.8]
  assign _T_321 = ~_T_320; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118467.8]
  assign _T_326 = io_in_a_bits_opcode == 3'h5; // @[Monitor.scala 143:25:chipyard.TestHarness.RocketConfig.fir@118481.6]
  assign _T_344 = io_in_a_bits_param <= 3'h1; // @[Bundles.scala 160:28:chipyard.TestHarness.RocketConfig.fir@118512.8]
  assign _T_346 = _T_344 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118514.8]
  assign _T_347 = ~_T_346; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118515.8]
  assign _T_356 = io_in_d_bits_opcode <= 3'h6; // @[Bundles.scala 44:24:chipyard.TestHarness.RocketConfig.fir@118539.6]
  assign _T_358 = _T_356 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@118541.6]
  assign _T_359 = ~_T_358; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@118542.6]
  assign _T_366 = io_in_d_bits_source <= 4'h9; // @[Parameters.scala 58:20:chipyard.TestHarness.RocketConfig.fir@118553.6]
  assign _T_370 = io_in_d_bits_opcode == 3'h6; // @[Monitor.scala 307:25:chipyard.TestHarness.RocketConfig.fir@118559.6]
  assign _T_372 = _T_366 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@118562.8]
  assign _T_373 = ~_T_372; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@118563.8]
  assign _T_374 = io_in_d_bits_size >= 3'h3; // @[Monitor.scala 309:27:chipyard.TestHarness.RocketConfig.fir@118568.8]
  assign _T_376 = _T_374 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@118570.8]
  assign _T_377 = ~_T_376; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@118571.8]
  assign _T_382 = ~io_in_d_bits_corrupt; // @[Monitor.scala 311:15:chipyard.TestHarness.RocketConfig.fir@118584.8]
  assign _T_384 = _T_382 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@118586.8]
  assign _T_385 = ~_T_384; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@118587.8]
  assign _T_386 = ~io_in_d_bits_denied; // @[Monitor.scala 312:15:chipyard.TestHarness.RocketConfig.fir@118592.8]
  assign _T_388 = _T_386 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@118594.8]
  assign _T_389 = ~_T_388; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@118595.8]
  assign _T_390 = io_in_d_bits_opcode == 3'h4; // @[Monitor.scala 315:25:chipyard.TestHarness.RocketConfig.fir@118601.6]
  assign _T_418 = io_in_d_bits_opcode == 3'h5; // @[Monitor.scala 325:25:chipyard.TestHarness.RocketConfig.fir@118659.6]
  assign _T_438 = _T_386 | io_in_d_bits_corrupt; // @[Monitor.scala 331:30:chipyard.TestHarness.RocketConfig.fir@118700.8]
  assign _T_440 = _T_438 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@118702.8]
  assign _T_441 = ~_T_440; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@118703.8]
  assign _T_447 = io_in_d_bits_opcode == 3'h0; // @[Monitor.scala 335:25:chipyard.TestHarness.RocketConfig.fir@118718.6]
  assign _T_464 = io_in_d_bits_opcode == 3'h1; // @[Monitor.scala 343:25:chipyard.TestHarness.RocketConfig.fir@118753.6]
  assign _T_482 = io_in_d_bits_opcode == 3'h2; // @[Monitor.scala 351:25:chipyard.TestHarness.RocketConfig.fir@118789.6]
  assign _T_514 = io_in_a_ready & io_in_a_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@118855.4]
  assign _T_521 = ~io_in_a_bits_opcode[2]; // @[Edges.scala 93:28:chipyard.TestHarness.RocketConfig.fir@118862.4]
  assign _T_525 = _T_523 - 3'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@118866.4]
  assign _T_526 = _T_523 == 3'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@118867.4]
  assign _T_539 = ~_T_526; // @[Monitor.scala 386:22:chipyard.TestHarness.RocketConfig.fir@118883.4]
  assign _T_540 = io_in_a_valid & _T_539; // @[Monitor.scala 386:19:chipyard.TestHarness.RocketConfig.fir@118884.4]
  assign _T_541 = io_in_a_bits_opcode == _T_534; // @[Monitor.scala 387:32:chipyard.TestHarness.RocketConfig.fir@118886.6]
  assign _T_543 = _T_541 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118888.6]
  assign _T_544 = ~_T_543; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118889.6]
  assign _T_545 = io_in_a_bits_param == _T_535; // @[Monitor.scala 388:32:chipyard.TestHarness.RocketConfig.fir@118894.6]
  assign _T_547 = _T_545 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118896.6]
  assign _T_548 = ~_T_547; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118897.6]
  assign _T_549 = io_in_a_bits_size == _T_536; // @[Monitor.scala 389:32:chipyard.TestHarness.RocketConfig.fir@118902.6]
  assign _T_551 = _T_549 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118904.6]
  assign _T_552 = ~_T_551; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118905.6]
  assign _T_553 = io_in_a_bits_source == _T_537; // @[Monitor.scala 390:32:chipyard.TestHarness.RocketConfig.fir@118910.6]
  assign _T_555 = _T_553 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118912.6]
  assign _T_556 = ~_T_555; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118913.6]
  assign _T_557 = io_in_a_bits_address == _T_538; // @[Monitor.scala 391:32:chipyard.TestHarness.RocketConfig.fir@118918.6]
  assign _T_559 = _T_557 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118920.6]
  assign _T_560 = ~_T_559; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118921.6]
  assign _T_562 = _T_514 & _T_526; // @[Monitor.scala 393:20:chipyard.TestHarness.RocketConfig.fir@118928.4]
  assign _T_563 = io_in_d_ready & io_in_d_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@118936.4]
  assign _T_565 = 13'h3f << io_in_d_bits_size; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@118938.4]
  assign _T_567 = ~_T_565[5:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@118940.4]
  assign _T_573 = _T_571 - 3'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@118946.4]
  assign _T_574 = _T_571 == 3'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@118947.4]
  assign _T_588 = ~_T_574; // @[Monitor.scala 538:22:chipyard.TestHarness.RocketConfig.fir@118964.4]
  assign _T_589 = io_in_d_valid & _T_588; // @[Monitor.scala 538:19:chipyard.TestHarness.RocketConfig.fir@118965.4]
  assign _T_590 = io_in_d_bits_opcode == _T_582; // @[Monitor.scala 539:29:chipyard.TestHarness.RocketConfig.fir@118967.6]
  assign _T_592 = _T_590 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@118969.6]
  assign _T_593 = ~_T_592; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@118970.6]
  assign _T_598 = io_in_d_bits_size == _T_584; // @[Monitor.scala 541:29:chipyard.TestHarness.RocketConfig.fir@118983.6]
  assign _T_600 = _T_598 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@118985.6]
  assign _T_601 = ~_T_600; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@118986.6]
  assign _T_602 = io_in_d_bits_source == _T_585; // @[Monitor.scala 542:29:chipyard.TestHarness.RocketConfig.fir@118991.6]
  assign _T_604 = _T_602 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@118993.6]
  assign _T_605 = ~_T_604; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@118994.6]
  assign _T_610 = io_in_d_bits_denied == _T_587; // @[Monitor.scala 544:29:chipyard.TestHarness.RocketConfig.fir@119007.6]
  assign _T_612 = _T_610 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@119009.6]
  assign _T_613 = ~_T_612; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@119010.6]
  assign _T_615 = _T_563 & _T_574; // @[Monitor.scala 546:20:chipyard.TestHarness.RocketConfig.fir@119017.4]
  assign _T_627 = _T_625 - 3'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@119040.4]
  assign a_first = _T_625 == 3'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@119041.4]
  assign _T_645 = _T_643 - 3'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@119062.4]
  assign d_first = _T_643 == 3'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@119063.4]
  assign _GEN_57 = {io_in_d_bits_source, 2'h0}; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@119082.4]
  assign _T_653 = {{1'd0}, _GEN_57}; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@119082.4]
  assign _T_654 = inflight_opcodes >> _T_653; // @[Monitor.scala 629:44:chipyard.TestHarness.RocketConfig.fir@119083.4]
  assign _T_658 = 16'h10 - 16'h1; // @[Monitor.scala 606:57:chipyard.TestHarness.RocketConfig.fir@119087.4]
  assign _GEN_58 = {{24'd0}, _T_658}; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@119088.4]
  assign _T_659 = _T_654 & _GEN_58; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@119088.4]
  assign _T_660 = {{1'd0}, _T_659[39:1]}; // @[Monitor.scala 629:152:chipyard.TestHarness.RocketConfig.fir@119089.4]
  assign _T_662 = inflight_sizes >> _T_653; // @[Monitor.scala 633:40:chipyard.TestHarness.RocketConfig.fir@119094.4]
  assign _T_667 = _T_662 & _GEN_58; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@119099.4]
  assign _T_668 = {{1'd0}, _T_667[39:1]}; // @[Monitor.scala 633:144:chipyard.TestHarness.RocketConfig.fir@119100.4]
  assign _T_672 = _T_514 & a_first; // @[Monitor.scala 643:27:chipyard.TestHarness.RocketConfig.fir@119125.4]
  assign _T_674 = 16'h1 << io_in_a_bits_source; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@119128.6]
  assign _T_675 = {io_in_a_bits_opcode, 1'h0}; // @[Monitor.scala 645:53:chipyard.TestHarness.RocketConfig.fir@119130.6]
  assign _T_676 = _T_675 | 4'h1; // @[Monitor.scala 645:61:chipyard.TestHarness.RocketConfig.fir@119131.6]
  assign _T_677 = {io_in_a_bits_size, 1'h0}; // @[Monitor.scala 646:49:chipyard.TestHarness.RocketConfig.fir@119133.6]
  assign _T_678 = _T_677 | 4'h1; // @[Monitor.scala 646:57:chipyard.TestHarness.RocketConfig.fir@119134.6]
  assign _GEN_63 = {io_in_a_bits_source, 2'h0}; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@119136.6]
  assign _T_679 = {{1'd0}, _GEN_63}; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@119136.6]
  assign a_opcodes_set_interm = _T_672 ? _T_676 : 4'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@119127.4]
  assign _GEN_64 = {{127'd0}, a_opcodes_set_interm}; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@119137.6]
  assign _T_680 = _GEN_64 << _T_679; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@119137.6]
  assign a_sizes_set_interm = _T_672 ? _T_678 : 4'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@119127.4]
  assign _GEN_66 = {{127'd0}, a_sizes_set_interm}; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@119140.6]
  assign _T_682 = _GEN_66 << _T_679; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@119140.6]
  assign _T_683 = inflight >> io_in_a_bits_source; // @[Monitor.scala 649:26:chipyard.TestHarness.RocketConfig.fir@119142.6]
  assign _T_685 = ~_T_683[0]; // @[Monitor.scala 649:17:chipyard.TestHarness.RocketConfig.fir@119144.6]
  assign _T_687 = _T_685 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@119146.6]
  assign _T_688 = ~_T_687; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@119147.6]
  assign _GEN_15 = _T_672 ? _T_674 : 16'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@119127.4]
  assign _GEN_18 = _T_672 ? _T_680 : 131'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@119127.4]
  assign _GEN_19 = _T_672 ? _T_682 : 131'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@119127.4]
  assign _T_691 = _T_563 & d_first; // @[Monitor.scala 660:27:chipyard.TestHarness.RocketConfig.fir@119161.4]
  assign _T_693 = ~_T_370; // @[Monitor.scala 660:75:chipyard.TestHarness.RocketConfig.fir@119163.4]
  assign _T_694 = _T_691 & _T_693; // @[Monitor.scala 660:72:chipyard.TestHarness.RocketConfig.fir@119164.4]
  assign _T_695 = 16'h1 << io_in_d_bits_source; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@119166.6]
  assign _GEN_68 = {{127'd0}, _T_658}; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@119173.6]
  assign _T_701 = _GEN_68 << _T_653; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@119173.6]
  assign _GEN_20 = _T_694 ? _T_695 : 16'h0; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@119165.4]
  assign _GEN_21 = _T_694 ? _T_701 : 143'h0; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@119165.4]
  assign _T_708 = io_in_d_valid & d_first; // @[Monitor.scala 665:26:chipyard.TestHarness.RocketConfig.fir@119183.4]
  assign _T_711 = _T_708 & _T_693; // @[Monitor.scala 665:71:chipyard.TestHarness.RocketConfig.fir@119186.4]
  assign _T_712 = inflight >> io_in_d_bits_source; // @[Monitor.scala 666:25:chipyard.TestHarness.RocketConfig.fir@119188.6]
  assign _T_714 = io_in_a_bits_source == io_in_d_bits_source; // @[Monitor.scala 666:93:chipyard.TestHarness.RocketConfig.fir@119190.6]
  assign _T_715 = io_in_a_valid & _T_714; // @[Monitor.scala 666:68:chipyard.TestHarness.RocketConfig.fir@119191.6]
  assign _T_716 = io_in_a_bits_size == io_in_d_bits_size; // @[Monitor.scala 666:142:chipyard.TestHarness.RocketConfig.fir@119192.6]
  assign _T_717 = _T_715 & _T_716; // @[Monitor.scala 666:119:chipyard.TestHarness.RocketConfig.fir@119193.6]
  assign _T_718 = _T_717 & a_first; // @[Monitor.scala 666:166:chipyard.TestHarness.RocketConfig.fir@119194.6]
  assign _T_719 = _T_712[0] | _T_718; // @[Monitor.scala 666:49:chipyard.TestHarness.RocketConfig.fir@119195.6]
  assign _T_721 = _T_719 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@119197.6]
  assign _T_722 = ~_T_721; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@119198.6]
  assign a_opcode_lookup = _T_660[3:0]; // @[:chipyard.TestHarness.RocketConfig.fir@119080.4 :chipyard.TestHarness.RocketConfig.fir@119081.4 Monitor.scala 629:21:chipyard.TestHarness.RocketConfig.fir@119090.4]
  assign _GEN_25 = 3'h2 == a_opcode_lookup[2:0] ? 3'h1 : 3'h0; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@119204.6]
  assign _GEN_26 = 3'h3 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_25; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@119204.6]
  assign _GEN_27 = 3'h4 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_26; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@119204.6]
  assign _GEN_28 = 3'h5 == a_opcode_lookup[2:0] ? 3'h2 : _GEN_27; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@119204.6]
  assign _GEN_29 = 3'h6 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_28; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@119204.6]
  assign _GEN_30 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_29; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@119204.6]
  assign _T_724 = io_in_d_bits_opcode == _GEN_30; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@119204.6]
  assign _GEN_37 = 3'h6 == a_opcode_lookup[2:0] ? 3'h5 : _GEN_28; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@119206.6]
  assign _GEN_38 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_37; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@119206.6]
  assign _T_726 = io_in_d_bits_opcode == _GEN_38; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@119206.6]
  assign _T_727 = _T_724 | _T_726; // @[Monitor.scala 667:71:chipyard.TestHarness.RocketConfig.fir@119207.6]
  assign _GEN_41 = 3'h2 == io_in_a_bits_opcode ? 3'h1 : 3'h0; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@119208.6]
  assign _GEN_42 = 3'h3 == io_in_a_bits_opcode ? 3'h1 : _GEN_41; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@119208.6]
  assign _GEN_43 = 3'h4 == io_in_a_bits_opcode ? 3'h1 : _GEN_42; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@119208.6]
  assign _GEN_44 = 3'h5 == io_in_a_bits_opcode ? 3'h2 : _GEN_43; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@119208.6]
  assign _GEN_45 = 3'h6 == io_in_a_bits_opcode ? 3'h4 : _GEN_44; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@119208.6]
  assign _GEN_46 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_45; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@119208.6]
  assign _T_728 = io_in_d_bits_opcode == _GEN_46; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@119208.6]
  assign _GEN_53 = 3'h6 == io_in_a_bits_opcode ? 3'h5 : _GEN_44; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@119209.6]
  assign _GEN_54 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_53; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@119209.6]
  assign _T_729 = io_in_d_bits_opcode == _GEN_54; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@119209.6]
  assign _T_730 = _T_728 | _T_729; // @[Monitor.scala 668:99:chipyard.TestHarness.RocketConfig.fir@119210.6]
  assign _T_731 = io_in_a_valid & _T_730; // @[Monitor.scala 668:34:chipyard.TestHarness.RocketConfig.fir@119211.6]
  assign _T_732 = _T_727 | _T_731; // @[Monitor.scala 668:15:chipyard.TestHarness.RocketConfig.fir@119212.6]
  assign _T_734 = _T_732 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@119214.6]
  assign _T_735 = ~_T_734; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@119215.6]
  assign a_size_lookup = _T_668[3:0]; // @[:chipyard.TestHarness.RocketConfig.fir@119091.4 :chipyard.TestHarness.RocketConfig.fir@119092.4 Monitor.scala 633:19:chipyard.TestHarness.RocketConfig.fir@119101.4]
  assign _GEN_71 = {{1'd0}, io_in_d_bits_size}; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@119220.6]
  assign _T_736 = _GEN_71 == a_size_lookup; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@119220.6]
  assign _T_738 = io_in_a_valid & _T_716; // @[Monitor.scala 670:72:chipyard.TestHarness.RocketConfig.fir@119222.6]
  assign _T_739 = _T_736 | _T_738; // @[Monitor.scala 670:53:chipyard.TestHarness.RocketConfig.fir@119223.6]
  assign _T_741 = _T_739 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@119225.6]
  assign _T_742 = ~_T_741; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@119226.6]
  assign _T_744 = _T_708 & a_first; // @[Monitor.scala 672:36:chipyard.TestHarness.RocketConfig.fir@119233.4]
  assign _T_745 = _T_744 & io_in_a_valid; // @[Monitor.scala 672:47:chipyard.TestHarness.RocketConfig.fir@119234.4]
  assign _T_747 = _T_745 & _T_714; // @[Monitor.scala 672:65:chipyard.TestHarness.RocketConfig.fir@119236.4]
  assign _T_749 = _T_747 & _T_693; // @[Monitor.scala 672:116:chipyard.TestHarness.RocketConfig.fir@119238.4]
  assign _T_750 = ~io_in_d_ready; // @[Monitor.scala 673:15:chipyard.TestHarness.RocketConfig.fir@119240.6]
  assign _T_751 = _T_750 | io_in_a_ready; // @[Monitor.scala 673:32:chipyard.TestHarness.RocketConfig.fir@119241.6]
  assign _T_753 = _T_751 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@119243.6]
  assign _T_754 = ~_T_753; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@119244.6]
  assign a_set = _GEN_15[9:0]; // @[:chipyard.TestHarness.RocketConfig.fir@119074.4 :chipyard.TestHarness.RocketConfig.fir@119075.4 Monitor.scala 644:13:chipyard.TestHarness.RocketConfig.fir@119129.6]
  assign d_clr = _GEN_20[9:0]; // @[:chipyard.TestHarness.RocketConfig.fir@119153.4 :chipyard.TestHarness.RocketConfig.fir@119154.4 Monitor.scala 661:13:chipyard.TestHarness.RocketConfig.fir@119167.6]
  assign _T_755 = a_set != d_clr; // @[Monitor.scala 677:20:chipyard.TestHarness.RocketConfig.fir@119250.4]
  assign _T_756 = |a_set; // @[Monitor.scala 677:40:chipyard.TestHarness.RocketConfig.fir@119251.4]
  assign _T_757 = ~_T_756; // @[Monitor.scala 677:33:chipyard.TestHarness.RocketConfig.fir@119252.4]
  assign _T_758 = _T_755 | _T_757; // @[Monitor.scala 677:30:chipyard.TestHarness.RocketConfig.fir@119253.4]
  assign _T_760 = _T_758 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@119255.4]
  assign _T_761 = ~_T_760; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@119256.4]
  assign _T_762 = inflight | a_set; // @[Monitor.scala 680:27:chipyard.TestHarness.RocketConfig.fir@119261.4]
  assign _T_763 = ~d_clr; // @[Monitor.scala 680:38:chipyard.TestHarness.RocketConfig.fir@119262.4]
  assign _T_764 = _T_762 & _T_763; // @[Monitor.scala 680:36:chipyard.TestHarness.RocketConfig.fir@119263.4]
  assign a_opcodes_set = _GEN_18[39:0]; // @[:chipyard.TestHarness.RocketConfig.fir@119076.4 :chipyard.TestHarness.RocketConfig.fir@119077.4 Monitor.scala 647:21:chipyard.TestHarness.RocketConfig.fir@119138.6]
  assign _T_765 = inflight_opcodes | a_opcodes_set; // @[Monitor.scala 681:43:chipyard.TestHarness.RocketConfig.fir@119265.4]
  assign d_opcodes_clr = _GEN_21[39:0]; // @[:chipyard.TestHarness.RocketConfig.fir@119155.4 :chipyard.TestHarness.RocketConfig.fir@119156.4 Monitor.scala 662:21:chipyard.TestHarness.RocketConfig.fir@119174.6]
  assign _T_766 = ~d_opcodes_clr; // @[Monitor.scala 681:62:chipyard.TestHarness.RocketConfig.fir@119266.4]
  assign _T_767 = _T_765 & _T_766; // @[Monitor.scala 681:60:chipyard.TestHarness.RocketConfig.fir@119267.4]
  assign a_sizes_set = _GEN_19[39:0]; // @[:chipyard.TestHarness.RocketConfig.fir@119078.4 :chipyard.TestHarness.RocketConfig.fir@119079.4 Monitor.scala 648:19:chipyard.TestHarness.RocketConfig.fir@119141.6]
  assign _T_768 = inflight_sizes | a_sizes_set; // @[Monitor.scala 682:39:chipyard.TestHarness.RocketConfig.fir@119269.4]
  assign _T_770 = _T_768 & _T_766; // @[Monitor.scala 682:54:chipyard.TestHarness.RocketConfig.fir@119271.4]
  assign _T_772 = |inflight; // @[Monitor.scala 687:26:chipyard.TestHarness.RocketConfig.fir@119276.4]
  assign _T_773 = ~_T_772; // @[Monitor.scala 687:16:chipyard.TestHarness.RocketConfig.fir@119277.4]
  assign _T_774 = plusarg_reader_out == 32'h0; // @[Monitor.scala 687:39:chipyard.TestHarness.RocketConfig.fir@119278.4]
  assign _T_775 = _T_773 | _T_774; // @[Monitor.scala 687:30:chipyard.TestHarness.RocketConfig.fir@119279.4]
  assign _T_776 = _T_771 < plusarg_reader_out; // @[Monitor.scala 687:59:chipyard.TestHarness.RocketConfig.fir@119280.4]
  assign _T_777 = _T_775 | _T_776; // @[Monitor.scala 687:47:chipyard.TestHarness.RocketConfig.fir@119281.4]
  assign _T_779 = _T_777 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@119283.4]
  assign _T_780 = ~_T_779; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@119284.4]
  assign _T_782 = _T_771 + 32'h1; // @[Monitor.scala 689:26:chipyard.TestHarness.RocketConfig.fir@119290.4]
  assign _T_785 = _T_514 | _T_563; // @[Monitor.scala 690:27:chipyard.TestHarness.RocketConfig.fir@119294.4]
  assign _GEN_72 = io_in_a_valid & _T_101; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118084.10]
  assign _GEN_88 = io_in_a_valid & _T_139; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118156.10]
  assign _GEN_106 = io_in_a_valid & _T_181; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118239.10]
  assign _GEN_118 = io_in_a_valid & _T_214; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118298.10]
  assign _GEN_128 = io_in_a_valid & _T_243; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118349.10]
  assign _GEN_138 = io_in_a_valid & _T_274; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118399.10]
  assign _GEN_148 = io_in_a_valid & _T_300; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118447.10]
  assign _GEN_158 = io_in_a_valid & _T_326; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118495.10]
  assign _GEN_170 = io_in_d_valid & _T_370; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@118565.10]
  assign _GEN_178 = io_in_d_valid & _T_390; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@118607.10]
  assign _GEN_186 = io_in_d_valid & _T_418; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@118665.10]
  assign _GEN_194 = io_in_d_valid & _T_447; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@118724.10]
  assign _GEN_198 = io_in_d_valid & _T_464; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@118759.10]
  assign _GEN_202 = io_in_d_valid & _T_482; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@118795.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock type unsupported by manager (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118084.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118085.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock from a client which does not support Probe (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118091.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118092.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock carries invalid source ID (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118098.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118099.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock smaller than a beat (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118106.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118107.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock address not aligned to size (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118113.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118114.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock carries invalid grow param (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118121.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118122.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock contains invalid mask (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118130.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118131.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock is corrupt (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118138.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118139.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm type unsupported by manager (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118156.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118157.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm from a client which does not support Probe (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118163.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118164.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm carries invalid source ID (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118170.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118171.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm smaller than a beat (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118178.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118179.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm address not aligned to size (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118185.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118186.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm carries invalid grow param (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118193.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118194.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm requests NtoB (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118201.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118202.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm contains invalid mask (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118210.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118211.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm is corrupt (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118218.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118219.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Get type unsupported by manager (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118239.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118240.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get carries invalid source ID (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118246.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118247.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get address not aligned to size (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118253.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118254.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get carries invalid param (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118261.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118262.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get contains invalid mask (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118269.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118270.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get is corrupt (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118277.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118278.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutFull type unsupported by manager (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118298.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118299.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull carries invalid source ID (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118305.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118306.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull address not aligned to size (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118312.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118313.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull carries invalid param (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118320.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118321.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull contains invalid mask (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118328.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118329.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutPartial type unsupported by manager (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118349.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118350.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial carries invalid source ID (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118356.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118357.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial address not aligned to size (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118363.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118364.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial carries invalid param (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118371.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118372.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial contains invalid mask (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118381.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118382.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Arithmetic type unsupported by manager (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118399.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118400.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic carries invalid source ID (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118406.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118407.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic address not aligned to size (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118413.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118414.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic carries invalid opcode param (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118421.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118422.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic contains invalid mask (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118429.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118430.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Logical type unsupported by manager (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118447.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118448.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical carries invalid source ID (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118454.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118455.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical address not aligned to size (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118461.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118462.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical carries invalid opcode param (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118469.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118470.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical contains invalid mask (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118477.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118478.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Hint type unsupported by manager (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118495.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118496.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint carries invalid source ID (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118502.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118503.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint address not aligned to size (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118509.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118510.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint carries invalid opcode param (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118517.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118518.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint contains invalid mask (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118525.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118526.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint is corrupt (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118533.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118534.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel has invalid opcode (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@118544.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@118545.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck carries invalid source ID (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@118565.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@118566.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck smaller than a beat (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@118573.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@118574.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck is corrupt (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@118589.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@118590.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck is denied (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@118597.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@118598.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid source ID (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@118607.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@118608.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid sink ID (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@118614.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@118615.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant smaller than a beat (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@118622.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@118623.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant is corrupt (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@118646.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@118647.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid source ID (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@118665.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@118666.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid sink ID (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@118672.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@118673.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData smaller than a beat (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@118680.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@118681.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData is denied but not corrupt (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@118705.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@118706.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck carries invalid source ID (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@118724.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@118725.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck is corrupt (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@118740.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@118741.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData carries invalid source ID (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@118759.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@118760.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData is denied but not corrupt (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@118776.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@118777.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck carries invalid source ID (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@118795.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@118796.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck is corrupt (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@118811.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@118812.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel opcode changed within multibeat operation (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118891.8]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118892.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel param changed within multibeat operation (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118899.8]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118900.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel size changed within multibeat operation (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118907.8]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118908.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel source changed within multibeat operation (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118915.8]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118916.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel address changed with multibeat operation (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118923.8]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@118924.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel opcode changed within multibeat operation (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@118972.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@118973.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel size changed within multibeat operation (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@118988.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@118989.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel source changed within multibeat operation (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@118996.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@118997.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel denied changed with multibeat operation (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@119012.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@119013.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel re-used a source ID (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@119149.8]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@119150.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel acknowledged for nothing inflight (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@119200.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@119201.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper opcode response (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@119217.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@119218.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper response size (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@119228.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@119229.8]
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
          $fwrite(32'h80000002,"Assertion failed: ready check\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@119246.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@119247.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' and 'D' concurrent, despite minlatency 1 (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@119258.6]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@119259.6]
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
          $fwrite(32'h80000002,"Assertion failed: TileLink timeout expired (connected at BusWrapper.scala:179:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@119286.6]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@119287.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
