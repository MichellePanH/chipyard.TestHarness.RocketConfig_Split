module TLMonitor_11( // @[:chipyard.TestHarness.RocketConfig.fir@25929.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@25930.4]
  input         reset, // @[:chipyard.TestHarness.RocketConfig.fir@25931.4]
  input         io_in_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@25932.4]
  input         io_in_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@25932.4]
  input  [2:0]  io_in_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@25932.4]
  input  [2:0]  io_in_a_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@25932.4]
  input  [2:0]  io_in_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@25932.4]
  input  [2:0]  io_in_a_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@25932.4]
  input  [30:0] io_in_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@25932.4]
  input  [7:0]  io_in_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@25932.4]
  input         io_in_a_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@25932.4]
  input         io_in_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@25932.4]
  input         io_in_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@25932.4]
  input  [2:0]  io_in_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@25932.4]
  input  [1:0]  io_in_d_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@25932.4]
  input  [2:0]  io_in_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@25932.4]
  input  [2:0]  io_in_d_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@25932.4]
  input         io_in_d_bits_sink, // @[:chipyard.TestHarness.RocketConfig.fir@25932.4]
  input         io_in_d_bits_denied, // @[:chipyard.TestHarness.RocketConfig.fir@25932.4]
  input         io_in_d_bits_corrupt // @[:chipyard.TestHarness.RocketConfig.fir@25932.4]
);
  wire [31:0] plusarg_reader_out; // @[PlusArg.scala 44:11:chipyard.TestHarness.RocketConfig.fir@27314.4]
  wire  _T_4; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@25943.6]
  wire  _T_5; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@25944.6]
  wire  _T_6; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@25945.6]
  wire  _T_7; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@25946.6]
  wire  _T_9; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@25953.6]
  wire  _T_10; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@25954.6]
  wire  _T_11; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@25955.6]
  wire [12:0] _T_13; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@25957.6]
  wire [5:0] _T_15; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@25959.6]
  wire [30:0] _GEN_56; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@25960.6]
  wire [30:0] _T_16; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@25960.6]
  wire  _T_17; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@25961.6]
  wire [3:0] _T_20; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@25964.6]
  wire [2:0] _T_22; // @[Misc.scala 201:81:chipyard.TestHarness.RocketConfig.fir@25966.6]
  wire  _T_23; // @[Misc.scala 205:21:chipyard.TestHarness.RocketConfig.fir@25967.6]
  wire  _T_26; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@25970.6]
  wire  _T_28; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@25972.6]
  wire  _T_29; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@25973.6]
  wire  _T_31; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@25975.6]
  wire  _T_32; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@25976.6]
  wire  _T_35; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@25979.6]
  wire  _T_36; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@25980.6]
  wire  _T_37; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@25981.6]
  wire  _T_38; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@25982.6]
  wire  _T_39; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@25983.6]
  wire  _T_40; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@25984.6]
  wire  _T_41; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@25985.6]
  wire  _T_42; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@25986.6]
  wire  _T_43; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@25987.6]
  wire  _T_44; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@25988.6]
  wire  _T_45; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@25989.6]
  wire  _T_46; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@25990.6]
  wire  _T_47; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@25991.6]
  wire  _T_50; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@25994.6]
  wire  _T_51; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@25995.6]
  wire  _T_52; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@25996.6]
  wire  _T_53; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@25997.6]
  wire  _T_54; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@25998.6]
  wire  _T_55; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@25999.6]
  wire  _T_56; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@26000.6]
  wire  _T_57; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@26001.6]
  wire  _T_58; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@26002.6]
  wire  _T_59; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@26003.6]
  wire  _T_60; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@26004.6]
  wire  _T_61; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@26005.6]
  wire  _T_62; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@26006.6]
  wire  _T_63; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@26007.6]
  wire  _T_64; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@26008.6]
  wire  _T_65; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@26009.6]
  wire  _T_66; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@26010.6]
  wire  _T_67; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@26011.6]
  wire  _T_68; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@26012.6]
  wire  _T_69; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@26013.6]
  wire  _T_70; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@26014.6]
  wire  _T_71; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@26015.6]
  wire  _T_72; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@26016.6]
  wire  _T_73; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@26017.6]
  wire  _T_74; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@26018.6]
  wire [7:0] _T_81; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@26025.6]
  wire  _T_120; // @[Monitor.scala 79:25:chipyard.TestHarness.RocketConfig.fir@26068.6]
  wire [30:0] _T_122; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@26071.8]
  wire [31:0] _T_123; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@26072.8]
  wire [31:0] _T_125; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@26074.8]
  wire  _T_126; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@26075.8]
  wire  _T_131; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26080.8]
  wire  _T_137; // @[Parameters.scala 92:48:chipyard.TestHarness.RocketConfig.fir@26095.8]
  wire  _T_139; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@26097.8]
  wire  _T_147; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26106.8]
  wire  _T_148; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26107.8]
  wire  _T_150; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26113.8]
  wire  _T_151; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26114.8]
  wire  _T_154; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26121.8]
  wire  _T_155; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26122.8]
  wire  _T_157; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26128.8]
  wire  _T_158; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26129.8]
  wire  _T_159; // @[Bundles.scala 110:27:chipyard.TestHarness.RocketConfig.fir@26134.8]
  wire  _T_161; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26136.8]
  wire  _T_162; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26137.8]
  wire [7:0] _T_163; // @[Monitor.scala 86:18:chipyard.TestHarness.RocketConfig.fir@26142.8]
  wire  _T_164; // @[Monitor.scala 86:31:chipyard.TestHarness.RocketConfig.fir@26143.8]
  wire  _T_166; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26145.8]
  wire  _T_167; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26146.8]
  wire  _T_168; // @[Monitor.scala 87:18:chipyard.TestHarness.RocketConfig.fir@26151.8]
  wire  _T_170; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26153.8]
  wire  _T_171; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26154.8]
  wire  _T_172; // @[Monitor.scala 90:25:chipyard.TestHarness.RocketConfig.fir@26160.6]
  wire  _T_215; // @[Monitor.scala 97:31:chipyard.TestHarness.RocketConfig.fir@26234.8]
  wire  _T_217; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26236.8]
  wire  _T_218; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26237.8]
  wire  _T_228; // @[Monitor.scala 102:25:chipyard.TestHarness.RocketConfig.fir@26260.6]
  wire  _T_230; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@26263.8]
  wire  _T_238; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@26271.8]
  wire  _T_241; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26274.8]
  wire  _T_242; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26275.8]
  wire  _T_249; // @[Monitor.scala 106:31:chipyard.TestHarness.RocketConfig.fir@26294.8]
  wire  _T_251; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26296.8]
  wire  _T_252; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26297.8]
  wire  _T_253; // @[Monitor.scala 107:30:chipyard.TestHarness.RocketConfig.fir@26302.8]
  wire  _T_255; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26304.8]
  wire  _T_256; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26305.8]
  wire  _T_261; // @[Monitor.scala 111:25:chipyard.TestHarness.RocketConfig.fir@26319.6]
  wire  _T_290; // @[Monitor.scala 119:25:chipyard.TestHarness.RocketConfig.fir@26370.6]
  wire [7:0] _T_315; // @[Monitor.scala 124:33:chipyard.TestHarness.RocketConfig.fir@26412.8]
  wire [7:0] _T_316; // @[Monitor.scala 124:31:chipyard.TestHarness.RocketConfig.fir@26413.8]
  wire  _T_317; // @[Monitor.scala 124:40:chipyard.TestHarness.RocketConfig.fir@26414.8]
  wire  _T_319; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26416.8]
  wire  _T_320; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26417.8]
  wire  _T_321; // @[Monitor.scala 127:25:chipyard.TestHarness.RocketConfig.fir@26423.6]
  wire  _T_339; // @[Bundles.scala 140:33:chipyard.TestHarness.RocketConfig.fir@26454.8]
  wire  _T_341; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26456.8]
  wire  _T_342; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26457.8]
  wire  _T_347; // @[Monitor.scala 135:25:chipyard.TestHarness.RocketConfig.fir@26471.6]
  wire  _T_365; // @[Bundles.scala 147:30:chipyard.TestHarness.RocketConfig.fir@26502.8]
  wire  _T_367; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26504.8]
  wire  _T_368; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26505.8]
  wire  _T_373; // @[Monitor.scala 143:25:chipyard.TestHarness.RocketConfig.fir@26519.6]
  wire  _T_391; // @[Bundles.scala 160:28:chipyard.TestHarness.RocketConfig.fir@26550.8]
  wire  _T_393; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26552.8]
  wire  _T_394; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26553.8]
  wire  _T_403; // @[Bundles.scala 44:24:chipyard.TestHarness.RocketConfig.fir@26577.6]
  wire  _T_405; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26579.6]
  wire  _T_406; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26580.6]
  wire  _T_407; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@26585.6]
  wire  _T_408; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@26586.6]
  wire  _T_409; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@26587.6]
  wire  _T_410; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@26588.6]
  wire  _T_412; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@26595.6]
  wire  _T_413; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@26596.6]
  wire  _T_414; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@26597.6]
  wire  _T_416; // @[Monitor.scala 307:25:chipyard.TestHarness.RocketConfig.fir@26599.6]
  wire  _T_418; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26602.8]
  wire  _T_419; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26603.8]
  wire  _T_420; // @[Monitor.scala 309:27:chipyard.TestHarness.RocketConfig.fir@26608.8]
  wire  _T_422; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26610.8]
  wire  _T_423; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26611.8]
  wire  _T_424; // @[Monitor.scala 310:28:chipyard.TestHarness.RocketConfig.fir@26616.8]
  wire  _T_426; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26618.8]
  wire  _T_427; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26619.8]
  wire  _T_428; // @[Monitor.scala 311:15:chipyard.TestHarness.RocketConfig.fir@26624.8]
  wire  _T_430; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26626.8]
  wire  _T_431; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26627.8]
  wire  _T_432; // @[Monitor.scala 312:15:chipyard.TestHarness.RocketConfig.fir@26632.8]
  wire  _T_434; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26634.8]
  wire  _T_435; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26635.8]
  wire  _T_436; // @[Monitor.scala 315:25:chipyard.TestHarness.RocketConfig.fir@26641.6]
  wire  _T_447; // @[Bundles.scala 104:26:chipyard.TestHarness.RocketConfig.fir@26665.8]
  wire  _T_449; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26667.8]
  wire  _T_450; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26668.8]
  wire  _T_451; // @[Monitor.scala 320:28:chipyard.TestHarness.RocketConfig.fir@26673.8]
  wire  _T_453; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26675.8]
  wire  _T_454; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26676.8]
  wire  _T_464; // @[Monitor.scala 325:25:chipyard.TestHarness.RocketConfig.fir@26699.6]
  wire  _T_484; // @[Monitor.scala 331:30:chipyard.TestHarness.RocketConfig.fir@26740.8]
  wire  _T_486; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26742.8]
  wire  _T_487; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26743.8]
  wire  _T_493; // @[Monitor.scala 335:25:chipyard.TestHarness.RocketConfig.fir@26758.6]
  wire  _T_510; // @[Monitor.scala 343:25:chipyard.TestHarness.RocketConfig.fir@26793.6]
  wire  _T_528; // @[Monitor.scala 351:25:chipyard.TestHarness.RocketConfig.fir@26829.6]
  wire  _T_560; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@26895.4]
  wire  _T_567; // @[Edges.scala 93:28:chipyard.TestHarness.RocketConfig.fir@26902.4]
  reg [2:0] _T_569; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@26904.4]
  reg [31:0] _RAND_0;
  wire [2:0] _T_571; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@26906.4]
  wire  _T_572; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@26907.4]
  reg [2:0] _T_580; // @[Monitor.scala 381:22:chipyard.TestHarness.RocketConfig.fir@26918.4]
  reg [31:0] _RAND_1;
  reg [2:0] _T_581; // @[Monitor.scala 382:22:chipyard.TestHarness.RocketConfig.fir@26919.4]
  reg [31:0] _RAND_2;
  reg [2:0] _T_582; // @[Monitor.scala 383:22:chipyard.TestHarness.RocketConfig.fir@26920.4]
  reg [31:0] _RAND_3;
  reg [2:0] _T_583; // @[Monitor.scala 384:22:chipyard.TestHarness.RocketConfig.fir@26921.4]
  reg [31:0] _RAND_4;
  reg [30:0] _T_584; // @[Monitor.scala 385:22:chipyard.TestHarness.RocketConfig.fir@26922.4]
  reg [31:0] _RAND_5;
  wire  _T_585; // @[Monitor.scala 386:22:chipyard.TestHarness.RocketConfig.fir@26923.4]
  wire  _T_586; // @[Monitor.scala 386:19:chipyard.TestHarness.RocketConfig.fir@26924.4]
  wire  _T_587; // @[Monitor.scala 387:32:chipyard.TestHarness.RocketConfig.fir@26926.6]
  wire  _T_589; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26928.6]
  wire  _T_590; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26929.6]
  wire  _T_591; // @[Monitor.scala 388:32:chipyard.TestHarness.RocketConfig.fir@26934.6]
  wire  _T_593; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26936.6]
  wire  _T_594; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26937.6]
  wire  _T_595; // @[Monitor.scala 389:32:chipyard.TestHarness.RocketConfig.fir@26942.6]
  wire  _T_597; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26944.6]
  wire  _T_598; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26945.6]
  wire  _T_599; // @[Monitor.scala 390:32:chipyard.TestHarness.RocketConfig.fir@26950.6]
  wire  _T_601; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26952.6]
  wire  _T_602; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26953.6]
  wire  _T_603; // @[Monitor.scala 391:32:chipyard.TestHarness.RocketConfig.fir@26958.6]
  wire  _T_605; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26960.6]
  wire  _T_606; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26961.6]
  wire  _T_608; // @[Monitor.scala 393:20:chipyard.TestHarness.RocketConfig.fir@26968.4]
  wire  _T_609; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@26976.4]
  wire [12:0] _T_611; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@26978.4]
  wire [5:0] _T_613; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@26980.4]
  reg [2:0] _T_617; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@26984.4]
  reg [31:0] _RAND_6;
  wire [2:0] _T_619; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@26986.4]
  wire  _T_620; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@26987.4]
  reg [2:0] _T_628; // @[Monitor.scala 532:22:chipyard.TestHarness.RocketConfig.fir@26998.4]
  reg [31:0] _RAND_7;
  reg [1:0] _T_629; // @[Monitor.scala 533:22:chipyard.TestHarness.RocketConfig.fir@26999.4]
  reg [31:0] _RAND_8;
  reg [2:0] _T_630; // @[Monitor.scala 534:22:chipyard.TestHarness.RocketConfig.fir@27000.4]
  reg [31:0] _RAND_9;
  reg [2:0] _T_631; // @[Monitor.scala 535:22:chipyard.TestHarness.RocketConfig.fir@27001.4]
  reg [31:0] _RAND_10;
  reg  _T_632; // @[Monitor.scala 536:22:chipyard.TestHarness.RocketConfig.fir@27002.4]
  reg [31:0] _RAND_11;
  reg  _T_633; // @[Monitor.scala 537:22:chipyard.TestHarness.RocketConfig.fir@27003.4]
  reg [31:0] _RAND_12;
  wire  _T_634; // @[Monitor.scala 538:22:chipyard.TestHarness.RocketConfig.fir@27004.4]
  wire  _T_635; // @[Monitor.scala 538:19:chipyard.TestHarness.RocketConfig.fir@27005.4]
  wire  _T_636; // @[Monitor.scala 539:29:chipyard.TestHarness.RocketConfig.fir@27007.6]
  wire  _T_638; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@27009.6]
  wire  _T_639; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@27010.6]
  wire  _T_640; // @[Monitor.scala 540:29:chipyard.TestHarness.RocketConfig.fir@27015.6]
  wire  _T_642; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@27017.6]
  wire  _T_643; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@27018.6]
  wire  _T_644; // @[Monitor.scala 541:29:chipyard.TestHarness.RocketConfig.fir@27023.6]
  wire  _T_646; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@27025.6]
  wire  _T_647; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@27026.6]
  wire  _T_648; // @[Monitor.scala 542:29:chipyard.TestHarness.RocketConfig.fir@27031.6]
  wire  _T_650; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@27033.6]
  wire  _T_651; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@27034.6]
  wire  _T_652; // @[Monitor.scala 543:29:chipyard.TestHarness.RocketConfig.fir@27039.6]
  wire  _T_654; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@27041.6]
  wire  _T_655; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@27042.6]
  wire  _T_656; // @[Monitor.scala 544:29:chipyard.TestHarness.RocketConfig.fir@27047.6]
  wire  _T_658; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@27049.6]
  wire  _T_659; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@27050.6]
  wire  _T_661; // @[Monitor.scala 546:20:chipyard.TestHarness.RocketConfig.fir@27057.4]
  reg [4:0] inflight; // @[Monitor.scala 608:27:chipyard.TestHarness.RocketConfig.fir@27066.4]
  reg [31:0] _RAND_13;
  reg [19:0] inflight_opcodes; // @[Monitor.scala 610:35:chipyard.TestHarness.RocketConfig.fir@27067.4]
  reg [31:0] _RAND_14;
  reg [19:0] inflight_sizes; // @[Monitor.scala 612:33:chipyard.TestHarness.RocketConfig.fir@27068.4]
  reg [31:0] _RAND_15;
  reg [2:0] _T_671; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@27078.4]
  reg [31:0] _RAND_16;
  wire [2:0] _T_673; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@27080.4]
  wire  a_first; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@27081.4]
  reg [2:0] _T_689; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@27100.4]
  reg [31:0] _RAND_17;
  wire [2:0] _T_691; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@27102.4]
  wire  d_first; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@27103.4]
  wire [4:0] _GEN_57; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@27122.4]
  wire [5:0] _T_699; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@27122.4]
  wire [19:0] _T_700; // @[Monitor.scala 629:44:chipyard.TestHarness.RocketConfig.fir@27123.4]
  wire [15:0] _T_704; // @[Monitor.scala 606:57:chipyard.TestHarness.RocketConfig.fir@27127.4]
  wire [19:0] _GEN_58; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@27128.4]
  wire [19:0] _T_705; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@27128.4]
  wire [19:0] _T_706; // @[Monitor.scala 629:152:chipyard.TestHarness.RocketConfig.fir@27129.4]
  wire [19:0] _T_708; // @[Monitor.scala 633:40:chipyard.TestHarness.RocketConfig.fir@27134.4]
  wire [19:0] _T_713; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@27139.4]
  wire [19:0] _T_714; // @[Monitor.scala 633:144:chipyard.TestHarness.RocketConfig.fir@27140.4]
  wire  _T_718; // @[Monitor.scala 643:27:chipyard.TestHarness.RocketConfig.fir@27165.4]
  wire [7:0] _T_720; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@27168.6]
  wire [3:0] _T_721; // @[Monitor.scala 645:53:chipyard.TestHarness.RocketConfig.fir@27170.6]
  wire [3:0] _T_722; // @[Monitor.scala 645:61:chipyard.TestHarness.RocketConfig.fir@27171.6]
  wire [3:0] _T_723; // @[Monitor.scala 646:49:chipyard.TestHarness.RocketConfig.fir@27173.6]
  wire [3:0] _T_724; // @[Monitor.scala 646:57:chipyard.TestHarness.RocketConfig.fir@27174.6]
  wire [4:0] _GEN_63; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@27176.6]
  wire [5:0] _T_725; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@27176.6]
  wire [3:0] a_opcodes_set_interm; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@27167.4]
  wire [66:0] _GEN_64; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@27177.6]
  wire [66:0] _T_726; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@27177.6]
  wire [3:0] a_sizes_set_interm; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@27167.4]
  wire [66:0] _GEN_66; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@27180.6]
  wire [66:0] _T_728; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@27180.6]
  wire [4:0] _T_729; // @[Monitor.scala 649:26:chipyard.TestHarness.RocketConfig.fir@27182.6]
  wire  _T_731; // @[Monitor.scala 649:17:chipyard.TestHarness.RocketConfig.fir@27184.6]
  wire  _T_733; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@27186.6]
  wire  _T_734; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@27187.6]
  wire [7:0] _GEN_15; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@27167.4]
  wire [66:0] _GEN_18; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@27167.4]
  wire [66:0] _GEN_19; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@27167.4]
  wire  _T_737; // @[Monitor.scala 660:27:chipyard.TestHarness.RocketConfig.fir@27201.4]
  wire  _T_739; // @[Monitor.scala 660:75:chipyard.TestHarness.RocketConfig.fir@27203.4]
  wire  _T_740; // @[Monitor.scala 660:72:chipyard.TestHarness.RocketConfig.fir@27204.4]
  wire [7:0] _T_741; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@27206.6]
  wire [78:0] _GEN_68; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@27213.6]
  wire [78:0] _T_747; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@27213.6]
  wire [7:0] _GEN_20; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@27205.4]
  wire [78:0] _GEN_21; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@27205.4]
  wire  _T_754; // @[Monitor.scala 665:26:chipyard.TestHarness.RocketConfig.fir@27223.4]
  wire  _T_757; // @[Monitor.scala 665:71:chipyard.TestHarness.RocketConfig.fir@27226.4]
  wire [4:0] _T_758; // @[Monitor.scala 666:25:chipyard.TestHarness.RocketConfig.fir@27228.6]
  wire  _T_760; // @[Monitor.scala 666:93:chipyard.TestHarness.RocketConfig.fir@27230.6]
  wire  _T_761; // @[Monitor.scala 666:68:chipyard.TestHarness.RocketConfig.fir@27231.6]
  wire  _T_762; // @[Monitor.scala 666:142:chipyard.TestHarness.RocketConfig.fir@27232.6]
  wire  _T_763; // @[Monitor.scala 666:119:chipyard.TestHarness.RocketConfig.fir@27233.6]
  wire  _T_764; // @[Monitor.scala 666:166:chipyard.TestHarness.RocketConfig.fir@27234.6]
  wire  _T_765; // @[Monitor.scala 666:49:chipyard.TestHarness.RocketConfig.fir@27235.6]
  wire  _T_767; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@27237.6]
  wire  _T_768; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@27238.6]
  wire [3:0] a_opcode_lookup; // @[:chipyard.TestHarness.RocketConfig.fir@27120.4 :chipyard.TestHarness.RocketConfig.fir@27121.4 Monitor.scala 629:21:chipyard.TestHarness.RocketConfig.fir@27130.4]
  wire [2:0] _GEN_25; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@27244.6]
  wire [2:0] _GEN_26; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@27244.6]
  wire [2:0] _GEN_27; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@27244.6]
  wire [2:0] _GEN_28; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@27244.6]
  wire [2:0] _GEN_29; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@27244.6]
  wire [2:0] _GEN_30; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@27244.6]
  wire  _T_770; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@27244.6]
  wire [2:0] _GEN_37; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@27246.6]
  wire [2:0] _GEN_38; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@27246.6]
  wire  _T_772; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@27246.6]
  wire  _T_773; // @[Monitor.scala 667:71:chipyard.TestHarness.RocketConfig.fir@27247.6]
  wire [2:0] _GEN_41; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@27248.6]
  wire [2:0] _GEN_42; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@27248.6]
  wire [2:0] _GEN_43; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@27248.6]
  wire [2:0] _GEN_44; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@27248.6]
  wire [2:0] _GEN_45; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@27248.6]
  wire [2:0] _GEN_46; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@27248.6]
  wire  _T_774; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@27248.6]
  wire [2:0] _GEN_53; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@27249.6]
  wire [2:0] _GEN_54; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@27249.6]
  wire  _T_775; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@27249.6]
  wire  _T_776; // @[Monitor.scala 668:99:chipyard.TestHarness.RocketConfig.fir@27250.6]
  wire  _T_777; // @[Monitor.scala 668:34:chipyard.TestHarness.RocketConfig.fir@27251.6]
  wire  _T_778; // @[Monitor.scala 668:15:chipyard.TestHarness.RocketConfig.fir@27252.6]
  wire  _T_780; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@27254.6]
  wire  _T_781; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@27255.6]
  wire [3:0] a_size_lookup; // @[:chipyard.TestHarness.RocketConfig.fir@27131.4 :chipyard.TestHarness.RocketConfig.fir@27132.4 Monitor.scala 633:19:chipyard.TestHarness.RocketConfig.fir@27141.4]
  wire [3:0] _GEN_71; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@27260.6]
  wire  _T_782; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@27260.6]
  wire  _T_784; // @[Monitor.scala 670:72:chipyard.TestHarness.RocketConfig.fir@27262.6]
  wire  _T_785; // @[Monitor.scala 670:53:chipyard.TestHarness.RocketConfig.fir@27263.6]
  wire  _T_787; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@27265.6]
  wire  _T_788; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@27266.6]
  wire  _T_790; // @[Monitor.scala 672:36:chipyard.TestHarness.RocketConfig.fir@27273.4]
  wire  _T_791; // @[Monitor.scala 672:47:chipyard.TestHarness.RocketConfig.fir@27274.4]
  wire  _T_793; // @[Monitor.scala 672:65:chipyard.TestHarness.RocketConfig.fir@27276.4]
  wire  _T_795; // @[Monitor.scala 672:116:chipyard.TestHarness.RocketConfig.fir@27278.4]
  wire  _T_796; // @[Monitor.scala 673:15:chipyard.TestHarness.RocketConfig.fir@27280.6]
  wire  _T_797; // @[Monitor.scala 673:32:chipyard.TestHarness.RocketConfig.fir@27281.6]
  wire  _T_799; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@27283.6]
  wire  _T_800; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@27284.6]
  wire [4:0] a_set; // @[:chipyard.TestHarness.RocketConfig.fir@27114.4 :chipyard.TestHarness.RocketConfig.fir@27115.4 Monitor.scala 644:13:chipyard.TestHarness.RocketConfig.fir@27169.6]
  wire [4:0] d_clr; // @[:chipyard.TestHarness.RocketConfig.fir@27193.4 :chipyard.TestHarness.RocketConfig.fir@27194.4 Monitor.scala 661:13:chipyard.TestHarness.RocketConfig.fir@27207.6]
  wire  _T_801; // @[Monitor.scala 677:20:chipyard.TestHarness.RocketConfig.fir@27290.4]
  wire  _T_802; // @[Monitor.scala 677:40:chipyard.TestHarness.RocketConfig.fir@27291.4]
  wire  _T_803; // @[Monitor.scala 677:33:chipyard.TestHarness.RocketConfig.fir@27292.4]
  wire  _T_804; // @[Monitor.scala 677:30:chipyard.TestHarness.RocketConfig.fir@27293.4]
  wire  _T_806; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@27295.4]
  wire  _T_807; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@27296.4]
  wire [4:0] _T_808; // @[Monitor.scala 680:27:chipyard.TestHarness.RocketConfig.fir@27301.4]
  wire [4:0] _T_809; // @[Monitor.scala 680:38:chipyard.TestHarness.RocketConfig.fir@27302.4]
  wire [4:0] _T_810; // @[Monitor.scala 680:36:chipyard.TestHarness.RocketConfig.fir@27303.4]
  wire [19:0] a_opcodes_set; // @[:chipyard.TestHarness.RocketConfig.fir@27116.4 :chipyard.TestHarness.RocketConfig.fir@27117.4 Monitor.scala 647:21:chipyard.TestHarness.RocketConfig.fir@27178.6]
  wire [19:0] _T_811; // @[Monitor.scala 681:43:chipyard.TestHarness.RocketConfig.fir@27305.4]
  wire [19:0] d_opcodes_clr; // @[:chipyard.TestHarness.RocketConfig.fir@27195.4 :chipyard.TestHarness.RocketConfig.fir@27196.4 Monitor.scala 662:21:chipyard.TestHarness.RocketConfig.fir@27214.6]
  wire [19:0] _T_812; // @[Monitor.scala 681:62:chipyard.TestHarness.RocketConfig.fir@27306.4]
  wire [19:0] _T_813; // @[Monitor.scala 681:60:chipyard.TestHarness.RocketConfig.fir@27307.4]
  wire [19:0] a_sizes_set; // @[:chipyard.TestHarness.RocketConfig.fir@27118.4 :chipyard.TestHarness.RocketConfig.fir@27119.4 Monitor.scala 648:19:chipyard.TestHarness.RocketConfig.fir@27181.6]
  wire [19:0] _T_814; // @[Monitor.scala 682:39:chipyard.TestHarness.RocketConfig.fir@27309.4]
  wire [19:0] _T_816; // @[Monitor.scala 682:54:chipyard.TestHarness.RocketConfig.fir@27311.4]
  reg [31:0] _T_817; // @[Monitor.scala 684:27:chipyard.TestHarness.RocketConfig.fir@27313.4]
  reg [31:0] _RAND_18;
  wire  _T_818; // @[Monitor.scala 687:26:chipyard.TestHarness.RocketConfig.fir@27316.4]
  wire  _T_819; // @[Monitor.scala 687:16:chipyard.TestHarness.RocketConfig.fir@27317.4]
  wire  _T_820; // @[Monitor.scala 687:39:chipyard.TestHarness.RocketConfig.fir@27318.4]
  wire  _T_821; // @[Monitor.scala 687:30:chipyard.TestHarness.RocketConfig.fir@27319.4]
  wire  _T_822; // @[Monitor.scala 687:59:chipyard.TestHarness.RocketConfig.fir@27320.4]
  wire  _T_823; // @[Monitor.scala 687:47:chipyard.TestHarness.RocketConfig.fir@27321.4]
  wire  _T_825; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@27323.4]
  wire  _T_826; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@27324.4]
  wire [31:0] _T_828; // @[Monitor.scala 689:26:chipyard.TestHarness.RocketConfig.fir@27330.4]
  wire  _T_831; // @[Monitor.scala 690:27:chipyard.TestHarness.RocketConfig.fir@27334.4]
  wire  _GEN_72; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26082.10]
  wire  _GEN_88; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26174.10]
  wire  _GEN_106; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26277.10]
  wire  _GEN_118; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26336.10]
  wire  _GEN_128; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26387.10]
  wire  _GEN_138; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26437.10]
  wire  _GEN_148; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26485.10]
  wire  _GEN_158; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26533.10]
  wire  _GEN_170; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26605.10]
  wire  _GEN_180; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26647.10]
  wire  _GEN_194; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26705.10]
  wire  _GEN_208; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26764.10]
  wire  _GEN_216; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26799.10]
  wire  _GEN_224; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26835.10]
  plusarg_reader #(.FORMAT("tilelink_timeout=%d"), .DEFAULT(0), .WIDTH(32)) plusarg_reader ( // @[PlusArg.scala 44:11:chipyard.TestHarness.RocketConfig.fir@27314.4]
    .out(plusarg_reader_out)
  );
  assign _T_4 = io_in_a_bits_source == 3'h4; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@25943.6]
  assign _T_5 = io_in_a_bits_source == 3'h0; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@25944.6]
  assign _T_6 = io_in_a_bits_source == 3'h1; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@25945.6]
  assign _T_7 = io_in_a_bits_source == 3'h2; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@25946.6]
  assign _T_9 = _T_4 | _T_5; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@25953.6]
  assign _T_10 = _T_9 | _T_6; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@25954.6]
  assign _T_11 = _T_10 | _T_7; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@25955.6]
  assign _T_13 = 13'h3f << io_in_a_bits_size; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@25957.6]
  assign _T_15 = ~_T_13[5:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@25959.6]
  assign _GEN_56 = {{25'd0}, _T_15}; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@25960.6]
  assign _T_16 = io_in_a_bits_address & _GEN_56; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@25960.6]
  assign _T_17 = _T_16 == 31'h0; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@25961.6]
  assign _T_20 = 4'h1 << io_in_a_bits_size[1:0]; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@25964.6]
  assign _T_22 = _T_20[2:0] | 3'h1; // @[Misc.scala 201:81:chipyard.TestHarness.RocketConfig.fir@25966.6]
  assign _T_23 = io_in_a_bits_size >= 3'h3; // @[Misc.scala 205:21:chipyard.TestHarness.RocketConfig.fir@25967.6]
  assign _T_26 = ~io_in_a_bits_address[2]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@25970.6]
  assign _T_28 = _T_22[2] & _T_26; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@25972.6]
  assign _T_29 = _T_23 | _T_28; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@25973.6]
  assign _T_31 = _T_22[2] & io_in_a_bits_address[2]; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@25975.6]
  assign _T_32 = _T_23 | _T_31; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@25976.6]
  assign _T_35 = ~io_in_a_bits_address[1]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@25979.6]
  assign _T_36 = _T_26 & _T_35; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@25980.6]
  assign _T_37 = _T_22[1] & _T_36; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@25981.6]
  assign _T_38 = _T_29 | _T_37; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@25982.6]
  assign _T_39 = _T_26 & io_in_a_bits_address[1]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@25983.6]
  assign _T_40 = _T_22[1] & _T_39; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@25984.6]
  assign _T_41 = _T_29 | _T_40; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@25985.6]
  assign _T_42 = io_in_a_bits_address[2] & _T_35; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@25986.6]
  assign _T_43 = _T_22[1] & _T_42; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@25987.6]
  assign _T_44 = _T_32 | _T_43; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@25988.6]
  assign _T_45 = io_in_a_bits_address[2] & io_in_a_bits_address[1]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@25989.6]
  assign _T_46 = _T_22[1] & _T_45; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@25990.6]
  assign _T_47 = _T_32 | _T_46; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@25991.6]
  assign _T_50 = ~io_in_a_bits_address[0]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@25994.6]
  assign _T_51 = _T_36 & _T_50; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@25995.6]
  assign _T_52 = _T_22[0] & _T_51; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@25996.6]
  assign _T_53 = _T_38 | _T_52; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@25997.6]
  assign _T_54 = _T_36 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@25998.6]
  assign _T_55 = _T_22[0] & _T_54; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@25999.6]
  assign _T_56 = _T_38 | _T_55; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@26000.6]
  assign _T_57 = _T_39 & _T_50; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@26001.6]
  assign _T_58 = _T_22[0] & _T_57; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@26002.6]
  assign _T_59 = _T_41 | _T_58; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@26003.6]
  assign _T_60 = _T_39 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@26004.6]
  assign _T_61 = _T_22[0] & _T_60; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@26005.6]
  assign _T_62 = _T_41 | _T_61; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@26006.6]
  assign _T_63 = _T_42 & _T_50; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@26007.6]
  assign _T_64 = _T_22[0] & _T_63; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@26008.6]
  assign _T_65 = _T_44 | _T_64; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@26009.6]
  assign _T_66 = _T_42 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@26010.6]
  assign _T_67 = _T_22[0] & _T_66; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@26011.6]
  assign _T_68 = _T_44 | _T_67; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@26012.6]
  assign _T_69 = _T_45 & _T_50; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@26013.6]
  assign _T_70 = _T_22[0] & _T_69; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@26014.6]
  assign _T_71 = _T_47 | _T_70; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@26015.6]
  assign _T_72 = _T_45 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@26016.6]
  assign _T_73 = _T_22[0] & _T_72; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@26017.6]
  assign _T_74 = _T_47 | _T_73; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@26018.6]
  assign _T_81 = {_T_74,_T_71,_T_68,_T_65,_T_62,_T_59,_T_56,_T_53}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@26025.6]
  assign _T_120 = io_in_a_bits_opcode == 3'h6; // @[Monitor.scala 79:25:chipyard.TestHarness.RocketConfig.fir@26068.6]
  assign _T_122 = io_in_a_bits_address ^ 31'h54000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@26071.8]
  assign _T_123 = {1'b0,$signed(_T_122)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@26072.8]
  assign _T_125 = $signed(_T_123) & -32'sh1000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@26074.8]
  assign _T_126 = $signed(_T_125) == 32'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@26075.8]
  assign _T_131 = ~reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26080.8]
  assign _T_137 = 3'h6 == io_in_a_bits_size; // @[Parameters.scala 92:48:chipyard.TestHarness.RocketConfig.fir@26095.8]
  assign _T_139 = _T_5 & _T_137; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@26097.8]
  assign _T_147 = _T_139 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26106.8]
  assign _T_148 = ~_T_147; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26107.8]
  assign _T_150 = _T_11 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26113.8]
  assign _T_151 = ~_T_150; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26114.8]
  assign _T_154 = _T_23 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26121.8]
  assign _T_155 = ~_T_154; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26122.8]
  assign _T_157 = _T_17 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26128.8]
  assign _T_158 = ~_T_157; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26129.8]
  assign _T_159 = io_in_a_bits_param <= 3'h2; // @[Bundles.scala 110:27:chipyard.TestHarness.RocketConfig.fir@26134.8]
  assign _T_161 = _T_159 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26136.8]
  assign _T_162 = ~_T_161; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26137.8]
  assign _T_163 = ~io_in_a_bits_mask; // @[Monitor.scala 86:18:chipyard.TestHarness.RocketConfig.fir@26142.8]
  assign _T_164 = _T_163 == 8'h0; // @[Monitor.scala 86:31:chipyard.TestHarness.RocketConfig.fir@26143.8]
  assign _T_166 = _T_164 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26145.8]
  assign _T_167 = ~_T_166; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26146.8]
  assign _T_168 = ~io_in_a_bits_corrupt; // @[Monitor.scala 87:18:chipyard.TestHarness.RocketConfig.fir@26151.8]
  assign _T_170 = _T_168 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26153.8]
  assign _T_171 = ~_T_170; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26154.8]
  assign _T_172 = io_in_a_bits_opcode == 3'h7; // @[Monitor.scala 90:25:chipyard.TestHarness.RocketConfig.fir@26160.6]
  assign _T_215 = io_in_a_bits_param != 3'h0; // @[Monitor.scala 97:31:chipyard.TestHarness.RocketConfig.fir@26234.8]
  assign _T_217 = _T_215 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26236.8]
  assign _T_218 = ~_T_217; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26237.8]
  assign _T_228 = io_in_a_bits_opcode == 3'h4; // @[Monitor.scala 102:25:chipyard.TestHarness.RocketConfig.fir@26260.6]
  assign _T_230 = io_in_a_bits_size <= 3'h6; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@26263.8]
  assign _T_238 = _T_230 & _T_126; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@26271.8]
  assign _T_241 = _T_238 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26274.8]
  assign _T_242 = ~_T_241; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26275.8]
  assign _T_249 = io_in_a_bits_param == 3'h0; // @[Monitor.scala 106:31:chipyard.TestHarness.RocketConfig.fir@26294.8]
  assign _T_251 = _T_249 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26296.8]
  assign _T_252 = ~_T_251; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26297.8]
  assign _T_253 = io_in_a_bits_mask == _T_81; // @[Monitor.scala 107:30:chipyard.TestHarness.RocketConfig.fir@26302.8]
  assign _T_255 = _T_253 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26304.8]
  assign _T_256 = ~_T_255; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26305.8]
  assign _T_261 = io_in_a_bits_opcode == 3'h0; // @[Monitor.scala 111:25:chipyard.TestHarness.RocketConfig.fir@26319.6]
  assign _T_290 = io_in_a_bits_opcode == 3'h1; // @[Monitor.scala 119:25:chipyard.TestHarness.RocketConfig.fir@26370.6]
  assign _T_315 = ~_T_81; // @[Monitor.scala 124:33:chipyard.TestHarness.RocketConfig.fir@26412.8]
  assign _T_316 = io_in_a_bits_mask & _T_315; // @[Monitor.scala 124:31:chipyard.TestHarness.RocketConfig.fir@26413.8]
  assign _T_317 = _T_316 == 8'h0; // @[Monitor.scala 124:40:chipyard.TestHarness.RocketConfig.fir@26414.8]
  assign _T_319 = _T_317 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26416.8]
  assign _T_320 = ~_T_319; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26417.8]
  assign _T_321 = io_in_a_bits_opcode == 3'h2; // @[Monitor.scala 127:25:chipyard.TestHarness.RocketConfig.fir@26423.6]
  assign _T_339 = io_in_a_bits_param <= 3'h4; // @[Bundles.scala 140:33:chipyard.TestHarness.RocketConfig.fir@26454.8]
  assign _T_341 = _T_339 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26456.8]
  assign _T_342 = ~_T_341; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26457.8]
  assign _T_347 = io_in_a_bits_opcode == 3'h3; // @[Monitor.scala 135:25:chipyard.TestHarness.RocketConfig.fir@26471.6]
  assign _T_365 = io_in_a_bits_param <= 3'h3; // @[Bundles.scala 147:30:chipyard.TestHarness.RocketConfig.fir@26502.8]
  assign _T_367 = _T_365 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26504.8]
  assign _T_368 = ~_T_367; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26505.8]
  assign _T_373 = io_in_a_bits_opcode == 3'h5; // @[Monitor.scala 143:25:chipyard.TestHarness.RocketConfig.fir@26519.6]
  assign _T_391 = io_in_a_bits_param <= 3'h1; // @[Bundles.scala 160:28:chipyard.TestHarness.RocketConfig.fir@26550.8]
  assign _T_393 = _T_391 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26552.8]
  assign _T_394 = ~_T_393; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26553.8]
  assign _T_403 = io_in_d_bits_opcode <= 3'h6; // @[Bundles.scala 44:24:chipyard.TestHarness.RocketConfig.fir@26577.6]
  assign _T_405 = _T_403 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26579.6]
  assign _T_406 = ~_T_405; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26580.6]
  assign _T_407 = io_in_d_bits_source == 3'h4; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@26585.6]
  assign _T_408 = io_in_d_bits_source == 3'h0; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@26586.6]
  assign _T_409 = io_in_d_bits_source == 3'h1; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@26587.6]
  assign _T_410 = io_in_d_bits_source == 3'h2; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@26588.6]
  assign _T_412 = _T_407 | _T_408; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@26595.6]
  assign _T_413 = _T_412 | _T_409; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@26596.6]
  assign _T_414 = _T_413 | _T_410; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@26597.6]
  assign _T_416 = io_in_d_bits_opcode == 3'h6; // @[Monitor.scala 307:25:chipyard.TestHarness.RocketConfig.fir@26599.6]
  assign _T_418 = _T_414 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26602.8]
  assign _T_419 = ~_T_418; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26603.8]
  assign _T_420 = io_in_d_bits_size >= 3'h3; // @[Monitor.scala 309:27:chipyard.TestHarness.RocketConfig.fir@26608.8]
  assign _T_422 = _T_420 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26610.8]
  assign _T_423 = ~_T_422; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26611.8]
  assign _T_424 = io_in_d_bits_param == 2'h0; // @[Monitor.scala 310:28:chipyard.TestHarness.RocketConfig.fir@26616.8]
  assign _T_426 = _T_424 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26618.8]
  assign _T_427 = ~_T_426; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26619.8]
  assign _T_428 = ~io_in_d_bits_corrupt; // @[Monitor.scala 311:15:chipyard.TestHarness.RocketConfig.fir@26624.8]
  assign _T_430 = _T_428 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26626.8]
  assign _T_431 = ~_T_430; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26627.8]
  assign _T_432 = ~io_in_d_bits_denied; // @[Monitor.scala 312:15:chipyard.TestHarness.RocketConfig.fir@26632.8]
  assign _T_434 = _T_432 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26634.8]
  assign _T_435 = ~_T_434; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26635.8]
  assign _T_436 = io_in_d_bits_opcode == 3'h4; // @[Monitor.scala 315:25:chipyard.TestHarness.RocketConfig.fir@26641.6]
  assign _T_447 = io_in_d_bits_param <= 2'h2; // @[Bundles.scala 104:26:chipyard.TestHarness.RocketConfig.fir@26665.8]
  assign _T_449 = _T_447 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26667.8]
  assign _T_450 = ~_T_449; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26668.8]
  assign _T_451 = io_in_d_bits_param != 2'h2; // @[Monitor.scala 320:28:chipyard.TestHarness.RocketConfig.fir@26673.8]
  assign _T_453 = _T_451 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26675.8]
  assign _T_454 = ~_T_453; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26676.8]
  assign _T_464 = io_in_d_bits_opcode == 3'h5; // @[Monitor.scala 325:25:chipyard.TestHarness.RocketConfig.fir@26699.6]
  assign _T_484 = _T_432 | io_in_d_bits_corrupt; // @[Monitor.scala 331:30:chipyard.TestHarness.RocketConfig.fir@26740.8]
  assign _T_486 = _T_484 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26742.8]
  assign _T_487 = ~_T_486; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26743.8]
  assign _T_493 = io_in_d_bits_opcode == 3'h0; // @[Monitor.scala 335:25:chipyard.TestHarness.RocketConfig.fir@26758.6]
  assign _T_510 = io_in_d_bits_opcode == 3'h1; // @[Monitor.scala 343:25:chipyard.TestHarness.RocketConfig.fir@26793.6]
  assign _T_528 = io_in_d_bits_opcode == 3'h2; // @[Monitor.scala 351:25:chipyard.TestHarness.RocketConfig.fir@26829.6]
  assign _T_560 = io_in_a_ready & io_in_a_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@26895.4]
  assign _T_567 = ~io_in_a_bits_opcode[2]; // @[Edges.scala 93:28:chipyard.TestHarness.RocketConfig.fir@26902.4]
  assign _T_571 = _T_569 - 3'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@26906.4]
  assign _T_572 = _T_569 == 3'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@26907.4]
  assign _T_585 = ~_T_572; // @[Monitor.scala 386:22:chipyard.TestHarness.RocketConfig.fir@26923.4]
  assign _T_586 = io_in_a_valid & _T_585; // @[Monitor.scala 386:19:chipyard.TestHarness.RocketConfig.fir@26924.4]
  assign _T_587 = io_in_a_bits_opcode == _T_580; // @[Monitor.scala 387:32:chipyard.TestHarness.RocketConfig.fir@26926.6]
  assign _T_589 = _T_587 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26928.6]
  assign _T_590 = ~_T_589; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26929.6]
  assign _T_591 = io_in_a_bits_param == _T_581; // @[Monitor.scala 388:32:chipyard.TestHarness.RocketConfig.fir@26934.6]
  assign _T_593 = _T_591 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26936.6]
  assign _T_594 = ~_T_593; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26937.6]
  assign _T_595 = io_in_a_bits_size == _T_582; // @[Monitor.scala 389:32:chipyard.TestHarness.RocketConfig.fir@26942.6]
  assign _T_597 = _T_595 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26944.6]
  assign _T_598 = ~_T_597; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26945.6]
  assign _T_599 = io_in_a_bits_source == _T_583; // @[Monitor.scala 390:32:chipyard.TestHarness.RocketConfig.fir@26950.6]
  assign _T_601 = _T_599 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26952.6]
  assign _T_602 = ~_T_601; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26953.6]
  assign _T_603 = io_in_a_bits_address == _T_584; // @[Monitor.scala 391:32:chipyard.TestHarness.RocketConfig.fir@26958.6]
  assign _T_605 = _T_603 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26960.6]
  assign _T_606 = ~_T_605; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26961.6]
  assign _T_608 = _T_560 & _T_572; // @[Monitor.scala 393:20:chipyard.TestHarness.RocketConfig.fir@26968.4]
  assign _T_609 = io_in_d_ready & io_in_d_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@26976.4]
  assign _T_611 = 13'h3f << io_in_d_bits_size; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@26978.4]
  assign _T_613 = ~_T_611[5:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@26980.4]
  assign _T_619 = _T_617 - 3'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@26986.4]
  assign _T_620 = _T_617 == 3'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@26987.4]
  assign _T_634 = ~_T_620; // @[Monitor.scala 538:22:chipyard.TestHarness.RocketConfig.fir@27004.4]
  assign _T_635 = io_in_d_valid & _T_634; // @[Monitor.scala 538:19:chipyard.TestHarness.RocketConfig.fir@27005.4]
  assign _T_636 = io_in_d_bits_opcode == _T_628; // @[Monitor.scala 539:29:chipyard.TestHarness.RocketConfig.fir@27007.6]
  assign _T_638 = _T_636 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@27009.6]
  assign _T_639 = ~_T_638; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@27010.6]
  assign _T_640 = io_in_d_bits_param == _T_629; // @[Monitor.scala 540:29:chipyard.TestHarness.RocketConfig.fir@27015.6]
  assign _T_642 = _T_640 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@27017.6]
  assign _T_643 = ~_T_642; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@27018.6]
  assign _T_644 = io_in_d_bits_size == _T_630; // @[Monitor.scala 541:29:chipyard.TestHarness.RocketConfig.fir@27023.6]
  assign _T_646 = _T_644 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@27025.6]
  assign _T_647 = ~_T_646; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@27026.6]
  assign _T_648 = io_in_d_bits_source == _T_631; // @[Monitor.scala 542:29:chipyard.TestHarness.RocketConfig.fir@27031.6]
  assign _T_650 = _T_648 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@27033.6]
  assign _T_651 = ~_T_650; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@27034.6]
  assign _T_652 = io_in_d_bits_sink == _T_632; // @[Monitor.scala 543:29:chipyard.TestHarness.RocketConfig.fir@27039.6]
  assign _T_654 = _T_652 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@27041.6]
  assign _T_655 = ~_T_654; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@27042.6]
  assign _T_656 = io_in_d_bits_denied == _T_633; // @[Monitor.scala 544:29:chipyard.TestHarness.RocketConfig.fir@27047.6]
  assign _T_658 = _T_656 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@27049.6]
  assign _T_659 = ~_T_658; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@27050.6]
  assign _T_661 = _T_609 & _T_620; // @[Monitor.scala 546:20:chipyard.TestHarness.RocketConfig.fir@27057.4]
  assign _T_673 = _T_671 - 3'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@27080.4]
  assign a_first = _T_671 == 3'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@27081.4]
  assign _T_691 = _T_689 - 3'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@27102.4]
  assign d_first = _T_689 == 3'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@27103.4]
  assign _GEN_57 = {io_in_d_bits_source, 2'h0}; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@27122.4]
  assign _T_699 = {{1'd0}, _GEN_57}; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@27122.4]
  assign _T_700 = inflight_opcodes >> _T_699; // @[Monitor.scala 629:44:chipyard.TestHarness.RocketConfig.fir@27123.4]
  assign _T_704 = 16'h10 - 16'h1; // @[Monitor.scala 606:57:chipyard.TestHarness.RocketConfig.fir@27127.4]
  assign _GEN_58 = {{4'd0}, _T_704}; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@27128.4]
  assign _T_705 = _T_700 & _GEN_58; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@27128.4]
  assign _T_706 = {{1'd0}, _T_705[19:1]}; // @[Monitor.scala 629:152:chipyard.TestHarness.RocketConfig.fir@27129.4]
  assign _T_708 = inflight_sizes >> _T_699; // @[Monitor.scala 633:40:chipyard.TestHarness.RocketConfig.fir@27134.4]
  assign _T_713 = _T_708 & _GEN_58; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@27139.4]
  assign _T_714 = {{1'd0}, _T_713[19:1]}; // @[Monitor.scala 633:144:chipyard.TestHarness.RocketConfig.fir@27140.4]
  assign _T_718 = _T_560 & a_first; // @[Monitor.scala 643:27:chipyard.TestHarness.RocketConfig.fir@27165.4]
  assign _T_720 = 8'h1 << io_in_a_bits_source; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@27168.6]
  assign _T_721 = {io_in_a_bits_opcode, 1'h0}; // @[Monitor.scala 645:53:chipyard.TestHarness.RocketConfig.fir@27170.6]
  assign _T_722 = _T_721 | 4'h1; // @[Monitor.scala 645:61:chipyard.TestHarness.RocketConfig.fir@27171.6]
  assign _T_723 = {io_in_a_bits_size, 1'h0}; // @[Monitor.scala 646:49:chipyard.TestHarness.RocketConfig.fir@27173.6]
  assign _T_724 = _T_723 | 4'h1; // @[Monitor.scala 646:57:chipyard.TestHarness.RocketConfig.fir@27174.6]
  assign _GEN_63 = {io_in_a_bits_source, 2'h0}; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@27176.6]
  assign _T_725 = {{1'd0}, _GEN_63}; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@27176.6]
  assign a_opcodes_set_interm = _T_718 ? _T_722 : 4'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@27167.4]
  assign _GEN_64 = {{63'd0}, a_opcodes_set_interm}; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@27177.6]
  assign _T_726 = _GEN_64 << _T_725; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@27177.6]
  assign a_sizes_set_interm = _T_718 ? _T_724 : 4'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@27167.4]
  assign _GEN_66 = {{63'd0}, a_sizes_set_interm}; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@27180.6]
  assign _T_728 = _GEN_66 << _T_725; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@27180.6]
  assign _T_729 = inflight >> io_in_a_bits_source; // @[Monitor.scala 649:26:chipyard.TestHarness.RocketConfig.fir@27182.6]
  assign _T_731 = ~_T_729[0]; // @[Monitor.scala 649:17:chipyard.TestHarness.RocketConfig.fir@27184.6]
  assign _T_733 = _T_731 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@27186.6]
  assign _T_734 = ~_T_733; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@27187.6]
  assign _GEN_15 = _T_718 ? _T_720 : 8'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@27167.4]
  assign _GEN_18 = _T_718 ? _T_726 : 67'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@27167.4]
  assign _GEN_19 = _T_718 ? _T_728 : 67'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@27167.4]
  assign _T_737 = _T_609 & d_first; // @[Monitor.scala 660:27:chipyard.TestHarness.RocketConfig.fir@27201.4]
  assign _T_739 = ~_T_416; // @[Monitor.scala 660:75:chipyard.TestHarness.RocketConfig.fir@27203.4]
  assign _T_740 = _T_737 & _T_739; // @[Monitor.scala 660:72:chipyard.TestHarness.RocketConfig.fir@27204.4]
  assign _T_741 = 8'h1 << io_in_d_bits_source; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@27206.6]
  assign _GEN_68 = {{63'd0}, _T_704}; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@27213.6]
  assign _T_747 = _GEN_68 << _T_699; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@27213.6]
  assign _GEN_20 = _T_740 ? _T_741 : 8'h0; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@27205.4]
  assign _GEN_21 = _T_740 ? _T_747 : 79'h0; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@27205.4]
  assign _T_754 = io_in_d_valid & d_first; // @[Monitor.scala 665:26:chipyard.TestHarness.RocketConfig.fir@27223.4]
  assign _T_757 = _T_754 & _T_739; // @[Monitor.scala 665:71:chipyard.TestHarness.RocketConfig.fir@27226.4]
  assign _T_758 = inflight >> io_in_d_bits_source; // @[Monitor.scala 666:25:chipyard.TestHarness.RocketConfig.fir@27228.6]
  assign _T_760 = io_in_a_bits_source == io_in_d_bits_source; // @[Monitor.scala 666:93:chipyard.TestHarness.RocketConfig.fir@27230.6]
  assign _T_761 = io_in_a_valid & _T_760; // @[Monitor.scala 666:68:chipyard.TestHarness.RocketConfig.fir@27231.6]
  assign _T_762 = io_in_a_bits_size == io_in_d_bits_size; // @[Monitor.scala 666:142:chipyard.TestHarness.RocketConfig.fir@27232.6]
  assign _T_763 = _T_761 & _T_762; // @[Monitor.scala 666:119:chipyard.TestHarness.RocketConfig.fir@27233.6]
  assign _T_764 = _T_763 & a_first; // @[Monitor.scala 666:166:chipyard.TestHarness.RocketConfig.fir@27234.6]
  assign _T_765 = _T_758[0] | _T_764; // @[Monitor.scala 666:49:chipyard.TestHarness.RocketConfig.fir@27235.6]
  assign _T_767 = _T_765 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@27237.6]
  assign _T_768 = ~_T_767; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@27238.6]
  assign a_opcode_lookup = _T_706[3:0]; // @[:chipyard.TestHarness.RocketConfig.fir@27120.4 :chipyard.TestHarness.RocketConfig.fir@27121.4 Monitor.scala 629:21:chipyard.TestHarness.RocketConfig.fir@27130.4]
  assign _GEN_25 = 3'h2 == a_opcode_lookup[2:0] ? 3'h1 : 3'h0; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@27244.6]
  assign _GEN_26 = 3'h3 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_25; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@27244.6]
  assign _GEN_27 = 3'h4 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_26; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@27244.6]
  assign _GEN_28 = 3'h5 == a_opcode_lookup[2:0] ? 3'h2 : _GEN_27; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@27244.6]
  assign _GEN_29 = 3'h6 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_28; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@27244.6]
  assign _GEN_30 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_29; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@27244.6]
  assign _T_770 = io_in_d_bits_opcode == _GEN_30; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@27244.6]
  assign _GEN_37 = 3'h6 == a_opcode_lookup[2:0] ? 3'h5 : _GEN_28; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@27246.6]
  assign _GEN_38 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_37; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@27246.6]
  assign _T_772 = io_in_d_bits_opcode == _GEN_38; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@27246.6]
  assign _T_773 = _T_770 | _T_772; // @[Monitor.scala 667:71:chipyard.TestHarness.RocketConfig.fir@27247.6]
  assign _GEN_41 = 3'h2 == io_in_a_bits_opcode ? 3'h1 : 3'h0; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@27248.6]
  assign _GEN_42 = 3'h3 == io_in_a_bits_opcode ? 3'h1 : _GEN_41; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@27248.6]
  assign _GEN_43 = 3'h4 == io_in_a_bits_opcode ? 3'h1 : _GEN_42; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@27248.6]
  assign _GEN_44 = 3'h5 == io_in_a_bits_opcode ? 3'h2 : _GEN_43; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@27248.6]
  assign _GEN_45 = 3'h6 == io_in_a_bits_opcode ? 3'h4 : _GEN_44; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@27248.6]
  assign _GEN_46 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_45; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@27248.6]
  assign _T_774 = io_in_d_bits_opcode == _GEN_46; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@27248.6]
  assign _GEN_53 = 3'h6 == io_in_a_bits_opcode ? 3'h5 : _GEN_44; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@27249.6]
  assign _GEN_54 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_53; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@27249.6]
  assign _T_775 = io_in_d_bits_opcode == _GEN_54; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@27249.6]
  assign _T_776 = _T_774 | _T_775; // @[Monitor.scala 668:99:chipyard.TestHarness.RocketConfig.fir@27250.6]
  assign _T_777 = io_in_a_valid & _T_776; // @[Monitor.scala 668:34:chipyard.TestHarness.RocketConfig.fir@27251.6]
  assign _T_778 = _T_773 | _T_777; // @[Monitor.scala 668:15:chipyard.TestHarness.RocketConfig.fir@27252.6]
  assign _T_780 = _T_778 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@27254.6]
  assign _T_781 = ~_T_780; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@27255.6]
  assign a_size_lookup = _T_714[3:0]; // @[:chipyard.TestHarness.RocketConfig.fir@27131.4 :chipyard.TestHarness.RocketConfig.fir@27132.4 Monitor.scala 633:19:chipyard.TestHarness.RocketConfig.fir@27141.4]
  assign _GEN_71 = {{1'd0}, io_in_d_bits_size}; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@27260.6]
  assign _T_782 = _GEN_71 == a_size_lookup; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@27260.6]
  assign _T_784 = io_in_a_valid & _T_762; // @[Monitor.scala 670:72:chipyard.TestHarness.RocketConfig.fir@27262.6]
  assign _T_785 = _T_782 | _T_784; // @[Monitor.scala 670:53:chipyard.TestHarness.RocketConfig.fir@27263.6]
  assign _T_787 = _T_785 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@27265.6]
  assign _T_788 = ~_T_787; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@27266.6]
  assign _T_790 = _T_754 & a_first; // @[Monitor.scala 672:36:chipyard.TestHarness.RocketConfig.fir@27273.4]
  assign _T_791 = _T_790 & io_in_a_valid; // @[Monitor.scala 672:47:chipyard.TestHarness.RocketConfig.fir@27274.4]
  assign _T_793 = _T_791 & _T_760; // @[Monitor.scala 672:65:chipyard.TestHarness.RocketConfig.fir@27276.4]
  assign _T_795 = _T_793 & _T_739; // @[Monitor.scala 672:116:chipyard.TestHarness.RocketConfig.fir@27278.4]
  assign _T_796 = ~io_in_d_ready; // @[Monitor.scala 673:15:chipyard.TestHarness.RocketConfig.fir@27280.6]
  assign _T_797 = _T_796 | io_in_a_ready; // @[Monitor.scala 673:32:chipyard.TestHarness.RocketConfig.fir@27281.6]
  assign _T_799 = _T_797 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@27283.6]
  assign _T_800 = ~_T_799; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@27284.6]
  assign a_set = _GEN_15[4:0]; // @[:chipyard.TestHarness.RocketConfig.fir@27114.4 :chipyard.TestHarness.RocketConfig.fir@27115.4 Monitor.scala 644:13:chipyard.TestHarness.RocketConfig.fir@27169.6]
  assign d_clr = _GEN_20[4:0]; // @[:chipyard.TestHarness.RocketConfig.fir@27193.4 :chipyard.TestHarness.RocketConfig.fir@27194.4 Monitor.scala 661:13:chipyard.TestHarness.RocketConfig.fir@27207.6]
  assign _T_801 = a_set != d_clr; // @[Monitor.scala 677:20:chipyard.TestHarness.RocketConfig.fir@27290.4]
  assign _T_802 = |a_set; // @[Monitor.scala 677:40:chipyard.TestHarness.RocketConfig.fir@27291.4]
  assign _T_803 = ~_T_802; // @[Monitor.scala 677:33:chipyard.TestHarness.RocketConfig.fir@27292.4]
  assign _T_804 = _T_801 | _T_803; // @[Monitor.scala 677:30:chipyard.TestHarness.RocketConfig.fir@27293.4]
  assign _T_806 = _T_804 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@27295.4]
  assign _T_807 = ~_T_806; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@27296.4]
  assign _T_808 = inflight | a_set; // @[Monitor.scala 680:27:chipyard.TestHarness.RocketConfig.fir@27301.4]
  assign _T_809 = ~d_clr; // @[Monitor.scala 680:38:chipyard.TestHarness.RocketConfig.fir@27302.4]
  assign _T_810 = _T_808 & _T_809; // @[Monitor.scala 680:36:chipyard.TestHarness.RocketConfig.fir@27303.4]
  assign a_opcodes_set = _GEN_18[19:0]; // @[:chipyard.TestHarness.RocketConfig.fir@27116.4 :chipyard.TestHarness.RocketConfig.fir@27117.4 Monitor.scala 647:21:chipyard.TestHarness.RocketConfig.fir@27178.6]
  assign _T_811 = inflight_opcodes | a_opcodes_set; // @[Monitor.scala 681:43:chipyard.TestHarness.RocketConfig.fir@27305.4]
  assign d_opcodes_clr = _GEN_21[19:0]; // @[:chipyard.TestHarness.RocketConfig.fir@27195.4 :chipyard.TestHarness.RocketConfig.fir@27196.4 Monitor.scala 662:21:chipyard.TestHarness.RocketConfig.fir@27214.6]
  assign _T_812 = ~d_opcodes_clr; // @[Monitor.scala 681:62:chipyard.TestHarness.RocketConfig.fir@27306.4]
  assign _T_813 = _T_811 & _T_812; // @[Monitor.scala 681:60:chipyard.TestHarness.RocketConfig.fir@27307.4]
  assign a_sizes_set = _GEN_19[19:0]; // @[:chipyard.TestHarness.RocketConfig.fir@27118.4 :chipyard.TestHarness.RocketConfig.fir@27119.4 Monitor.scala 648:19:chipyard.TestHarness.RocketConfig.fir@27181.6]
  assign _T_814 = inflight_sizes | a_sizes_set; // @[Monitor.scala 682:39:chipyard.TestHarness.RocketConfig.fir@27309.4]
  assign _T_816 = _T_814 & _T_812; // @[Monitor.scala 682:54:chipyard.TestHarness.RocketConfig.fir@27311.4]
  assign _T_818 = |inflight; // @[Monitor.scala 687:26:chipyard.TestHarness.RocketConfig.fir@27316.4]
  assign _T_819 = ~_T_818; // @[Monitor.scala 687:16:chipyard.TestHarness.RocketConfig.fir@27317.4]
  assign _T_820 = plusarg_reader_out == 32'h0; // @[Monitor.scala 687:39:chipyard.TestHarness.RocketConfig.fir@27318.4]
  assign _T_821 = _T_819 | _T_820; // @[Monitor.scala 687:30:chipyard.TestHarness.RocketConfig.fir@27319.4]
  assign _T_822 = _T_817 < plusarg_reader_out; // @[Monitor.scala 687:59:chipyard.TestHarness.RocketConfig.fir@27320.4]
  assign _T_823 = _T_821 | _T_822; // @[Monitor.scala 687:47:chipyard.TestHarness.RocketConfig.fir@27321.4]
  assign _T_825 = _T_823 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@27323.4]
  assign _T_826 = ~_T_825; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@27324.4]
  assign _T_828 = _T_817 + 32'h1; // @[Monitor.scala 689:26:chipyard.TestHarness.RocketConfig.fir@27330.4]
  assign _T_831 = _T_560 | _T_609; // @[Monitor.scala 690:27:chipyard.TestHarness.RocketConfig.fir@27334.4]
  assign _GEN_72 = io_in_a_valid & _T_120; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26082.10]
  assign _GEN_88 = io_in_a_valid & _T_172; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26174.10]
  assign _GEN_106 = io_in_a_valid & _T_228; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26277.10]
  assign _GEN_118 = io_in_a_valid & _T_261; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26336.10]
  assign _GEN_128 = io_in_a_valid & _T_290; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26387.10]
  assign _GEN_138 = io_in_a_valid & _T_321; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26437.10]
  assign _GEN_148 = io_in_a_valid & _T_347; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26485.10]
  assign _GEN_158 = io_in_a_valid & _T_373; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26533.10]
  assign _GEN_170 = io_in_d_valid & _T_416; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26605.10]
  assign _GEN_180 = io_in_d_valid & _T_436; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26647.10]
  assign _GEN_194 = io_in_d_valid & _T_464; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26705.10]
  assign _GEN_208 = io_in_d_valid & _T_493; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26764.10]
  assign _GEN_216 = io_in_d_valid & _T_510; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26799.10]
  assign _GEN_224 = io_in_d_valid & _T_528; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26835.10]
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
  _T_569 = _RAND_0[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_580 = _RAND_1[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_581 = _RAND_2[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_582 = _RAND_3[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_583 = _RAND_4[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_584 = _RAND_5[30:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  _T_617 = _RAND_6[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  _T_628 = _RAND_7[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  _T_629 = _RAND_8[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  _T_630 = _RAND_9[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  _T_631 = _RAND_10[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  _T_632 = _RAND_11[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  _T_633 = _RAND_12[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  inflight = _RAND_13[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  inflight_opcodes = _RAND_14[19:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  inflight_sizes = _RAND_15[19:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  _T_671 = _RAND_16[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  _T_689 = _RAND_17[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  _T_817 = _RAND_18[31:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      _T_569 <= 3'h0;
    end else if (_T_560) begin
      if (_T_572) begin
        if (_T_567) begin
          _T_569 <= _T_15[5:3];
        end else begin
          _T_569 <= 3'h0;
        end
      end else begin
        _T_569 <= _T_571;
      end
    end
    if (_T_608) begin
      _T_580 <= io_in_a_bits_opcode;
    end
    if (_T_608) begin
      _T_581 <= io_in_a_bits_param;
    end
    if (_T_608) begin
      _T_582 <= io_in_a_bits_size;
    end
    if (_T_608) begin
      _T_583 <= io_in_a_bits_source;
    end
    if (_T_608) begin
      _T_584 <= io_in_a_bits_address;
    end
    if (reset) begin
      _T_617 <= 3'h0;
    end else if (_T_609) begin
      if (_T_620) begin
        if (io_in_d_bits_opcode[0]) begin
          _T_617 <= _T_613[5:3];
        end else begin
          _T_617 <= 3'h0;
        end
      end else begin
        _T_617 <= _T_619;
      end
    end
    if (_T_661) begin
      _T_628 <= io_in_d_bits_opcode;
    end
    if (_T_661) begin
      _T_629 <= io_in_d_bits_param;
    end
    if (_T_661) begin
      _T_630 <= io_in_d_bits_size;
    end
    if (_T_661) begin
      _T_631 <= io_in_d_bits_source;
    end
    if (_T_661) begin
      _T_632 <= io_in_d_bits_sink;
    end
    if (_T_661) begin
      _T_633 <= io_in_d_bits_denied;
    end
    if (reset) begin
      inflight <= 5'h0;
    end else begin
      inflight <= _T_810;
    end
    if (reset) begin
      inflight_opcodes <= 20'h0;
    end else begin
      inflight_opcodes <= _T_813;
    end
    if (reset) begin
      inflight_sizes <= 20'h0;
    end else begin
      inflight_sizes <= _T_816;
    end
    if (reset) begin
      _T_671 <= 3'h0;
    end else if (_T_560) begin
      if (a_first) begin
        if (_T_567) begin
          _T_671 <= _T_15[5:3];
        end else begin
          _T_671 <= 3'h0;
        end
      end else begin
        _T_671 <= _T_673;
      end
    end
    if (reset) begin
      _T_689 <= 3'h0;
    end else if (_T_609) begin
      if (d_first) begin
        if (io_in_d_bits_opcode[0]) begin
          _T_689 <= _T_613[5:3];
        end else begin
          _T_689 <= 3'h0;
        end
      end else begin
        _T_689 <= _T_691;
      end
    end
    if (reset) begin
      _T_817 <= 32'h0;
    end else if (_T_831) begin
      _T_817 <= 32'h0;
    end else begin
      _T_817 <= _T_828;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_72 & _T_131) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock type unsupported by manager (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26082.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_72 & _T_131) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26083.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_72 & _T_148) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock from a client which does not support Probe (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26109.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_72 & _T_148) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26110.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_72 & _T_151) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock carries invalid source ID (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26116.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_72 & _T_151) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26117.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_72 & _T_155) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock smaller than a beat (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26124.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_72 & _T_155) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26125.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_72 & _T_158) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock address not aligned to size (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26131.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_72 & _T_158) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26132.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_72 & _T_162) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock carries invalid grow param (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26139.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_72 & _T_162) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26140.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_72 & _T_167) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock contains invalid mask (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26148.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_72 & _T_167) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26149.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_72 & _T_171) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock is corrupt (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26156.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_72 & _T_171) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26157.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_88 & _T_131) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm type unsupported by manager (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26174.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_88 & _T_131) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26175.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_88 & _T_148) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm from a client which does not support Probe (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26201.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_88 & _T_148) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26202.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_88 & _T_151) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm carries invalid source ID (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26208.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_88 & _T_151) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26209.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_88 & _T_155) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm smaller than a beat (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26216.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_88 & _T_155) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26217.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_88 & _T_158) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm address not aligned to size (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26223.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_88 & _T_158) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26224.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_88 & _T_162) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm carries invalid grow param (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26231.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_88 & _T_162) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26232.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_88 & _T_218) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm requests NtoB (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26239.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_88 & _T_218) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26240.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_88 & _T_167) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm contains invalid mask (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26248.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_88 & _T_167) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26249.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm is corrupt (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26256.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26257.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_106 & _T_242) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Get type unsupported by manager (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26277.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_106 & _T_242) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26278.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_106 & _T_151) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get carries invalid source ID (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26284.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_106 & _T_151) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26285.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_106 & _T_158) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get address not aligned to size (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26291.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_106 & _T_158) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26292.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_106 & _T_252) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get carries invalid param (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26299.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_106 & _T_252) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26300.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_106 & _T_256) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get contains invalid mask (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26307.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_106 & _T_256) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26308.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_106 & _T_171) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get is corrupt (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26315.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_106 & _T_171) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26316.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_118 & _T_242) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutFull type unsupported by manager (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26336.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_118 & _T_242) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26337.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_118 & _T_151) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull carries invalid source ID (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26343.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_118 & _T_151) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26344.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_118 & _T_158) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull address not aligned to size (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26350.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_118 & _T_158) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26351.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_118 & _T_252) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull carries invalid param (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26358.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_118 & _T_252) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26359.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_118 & _T_256) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull contains invalid mask (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26366.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_118 & _T_256) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26367.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_128 & _T_242) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutPartial type unsupported by manager (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26387.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_128 & _T_242) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26388.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_128 & _T_151) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial carries invalid source ID (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26394.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_128 & _T_151) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26395.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_128 & _T_158) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial address not aligned to size (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26401.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_128 & _T_158) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26402.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_128 & _T_252) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial carries invalid param (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26409.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_128 & _T_252) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26410.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_128 & _T_320) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial contains invalid mask (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26419.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_128 & _T_320) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26420.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_138 & _T_131) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Arithmetic type unsupported by manager (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26437.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_138 & _T_131) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26438.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_138 & _T_151) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic carries invalid source ID (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26444.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_138 & _T_151) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26445.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_138 & _T_158) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic address not aligned to size (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26451.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_138 & _T_158) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26452.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_138 & _T_342) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic carries invalid opcode param (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26459.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_138 & _T_342) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26460.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_138 & _T_256) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic contains invalid mask (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26467.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_138 & _T_256) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26468.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_148 & _T_131) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Logical type unsupported by manager (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26485.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_148 & _T_131) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26486.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_148 & _T_151) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical carries invalid source ID (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26492.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_148 & _T_151) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26493.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_148 & _T_158) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical address not aligned to size (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26499.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_148 & _T_158) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26500.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_148 & _T_368) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical carries invalid opcode param (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26507.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_148 & _T_368) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26508.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_148 & _T_256) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical contains invalid mask (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26515.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_148 & _T_256) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26516.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_158 & _T_131) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Hint type unsupported by manager (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26533.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_158 & _T_131) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26534.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_158 & _T_151) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint carries invalid source ID (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26540.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_158 & _T_151) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26541.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_158 & _T_158) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint address not aligned to size (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26547.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_158 & _T_158) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26548.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_158 & _T_394) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint carries invalid opcode param (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26555.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_158 & _T_394) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26556.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_158 & _T_256) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint contains invalid mask (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26563.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_158 & _T_256) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26564.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_158 & _T_171) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint is corrupt (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26571.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_158 & _T_171) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26572.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_in_d_valid & _T_406) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel has invalid opcode (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26582.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (io_in_d_valid & _T_406) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26583.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_170 & _T_419) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck carries invalid source ID (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26605.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_170 & _T_419) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26606.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_170 & _T_423) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck smaller than a beat (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26613.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_170 & _T_423) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26614.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_170 & _T_427) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseeAck carries invalid param (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26621.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_170 & _T_427) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26622.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_170 & _T_431) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck is corrupt (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26629.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_170 & _T_431) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26630.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_170 & _T_435) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck is denied (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26637.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_170 & _T_435) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26638.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_180 & _T_419) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid source ID (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26647.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_180 & _T_419) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26648.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_180 & _T_131) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid sink ID (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26654.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_180 & _T_131) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26655.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_180 & _T_423) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant smaller than a beat (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26662.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_180 & _T_423) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26663.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_180 & _T_450) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid cap param (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26670.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_180 & _T_450) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26671.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_180 & _T_454) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries toN param (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26678.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_180 & _T_454) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26679.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_180 & _T_431) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant is corrupt (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26686.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_180 & _T_431) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26687.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_180 & _T_435) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant is denied (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26695.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_180 & _T_435) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26696.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_194 & _T_419) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid source ID (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26705.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_194 & _T_419) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26706.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_194 & _T_131) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid sink ID (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26712.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_194 & _T_131) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26713.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_194 & _T_423) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData smaller than a beat (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26720.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_194 & _T_423) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26721.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_194 & _T_450) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid cap param (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26728.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_194 & _T_450) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26729.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_194 & _T_454) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries toN param (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26736.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_194 & _T_454) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26737.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_194 & _T_487) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData is denied but not corrupt (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26745.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_194 & _T_487) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26746.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_194 & _T_435) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData is denied (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26754.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_194 & _T_435) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26755.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_208 & _T_419) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck carries invalid source ID (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26764.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_208 & _T_419) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26765.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_208 & _T_427) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck carries invalid param (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26772.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_208 & _T_427) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26773.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_208 & _T_431) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck is corrupt (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26780.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_208 & _T_431) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26781.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_208 & _T_435) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck is denied (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26789.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_208 & _T_435) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26790.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_216 & _T_419) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData carries invalid source ID (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26799.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_216 & _T_419) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26800.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_216 & _T_427) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData carries invalid param (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26807.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_216 & _T_427) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26808.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_216 & _T_487) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData is denied but not corrupt (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26816.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_216 & _T_487) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26817.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_216 & _T_435) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData is denied (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26825.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_216 & _T_435) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26826.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_224 & _T_419) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck carries invalid source ID (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26835.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_224 & _T_419) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26836.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_224 & _T_427) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck carries invalid param (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26843.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_224 & _T_427) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26844.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_224 & _T_431) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck is corrupt (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26851.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_224 & _T_431) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26852.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_224 & _T_435) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck is denied (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26860.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_224 & _T_435) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@26861.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_586 & _T_590) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel opcode changed within multibeat operation (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26931.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_586 & _T_590) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26932.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_586 & _T_594) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel param changed within multibeat operation (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26939.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_586 & _T_594) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26940.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_586 & _T_598) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel size changed within multibeat operation (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26947.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_586 & _T_598) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26948.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_586 & _T_602) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel source changed within multibeat operation (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26955.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_586 & _T_602) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26956.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_586 & _T_606) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel address changed with multibeat operation (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26963.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_586 & _T_606) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@26964.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_635 & _T_639) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel opcode changed within multibeat operation (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@27012.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_635 & _T_639) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@27013.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_635 & _T_643) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel param changed within multibeat operation (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@27020.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_635 & _T_643) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@27021.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_635 & _T_647) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel size changed within multibeat operation (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@27028.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_635 & _T_647) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@27029.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_635 & _T_651) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel source changed within multibeat operation (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@27036.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_635 & _T_651) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@27037.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_635 & _T_655) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel sink changed with multibeat operation (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@27044.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_635 & _T_655) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@27045.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_635 & _T_659) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel denied changed with multibeat operation (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@27052.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_635 & _T_659) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@27053.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_718 & _T_734) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel re-used a source ID (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@27189.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_718 & _T_734) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@27190.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_757 & _T_768) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel acknowledged for nothing inflight (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@27240.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_757 & _T_768) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@27241.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_757 & _T_781) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper opcode response (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@27257.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_757 & _T_781) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@27258.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_757 & _T_788) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper response size (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@27268.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_757 & _T_788) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@27269.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_795 & _T_800) begin
          $fwrite(32'h80000002,"Assertion failed: ready check\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@27286.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_795 & _T_800) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@27287.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_807) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' and 'D' concurrent, despite minlatency 2 (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@27298.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_807) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@27299.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_826) begin
          $fwrite(32'h80000002,"Assertion failed: TileLink timeout expired (connected at PeripheryBus.scala:53:7)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@27326.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_826) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@27327.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
