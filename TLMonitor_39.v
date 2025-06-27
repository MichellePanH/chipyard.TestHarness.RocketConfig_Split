module TLMonitor_39( // @[:chipyard.TestHarness.RocketConfig.fir@79923.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@79924.4]
  input         reset, // @[:chipyard.TestHarness.RocketConfig.fir@79925.4]
  input         io_in_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@79926.4]
  input         io_in_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@79926.4]
  input  [2:0]  io_in_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@79926.4]
  input  [2:0]  io_in_a_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@79926.4]
  input  [2:0]  io_in_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@79926.4]
  input  [2:0]  io_in_a_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@79926.4]
  input  [31:0] io_in_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@79926.4]
  input  [7:0]  io_in_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@79926.4]
  input         io_in_a_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@79926.4]
  input         io_in_b_ready, // @[:chipyard.TestHarness.RocketConfig.fir@79926.4]
  input         io_in_b_valid, // @[:chipyard.TestHarness.RocketConfig.fir@79926.4]
  input  [1:0]  io_in_b_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@79926.4]
  input  [31:0] io_in_b_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@79926.4]
  input         io_in_c_ready, // @[:chipyard.TestHarness.RocketConfig.fir@79926.4]
  input         io_in_c_valid, // @[:chipyard.TestHarness.RocketConfig.fir@79926.4]
  input  [2:0]  io_in_c_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@79926.4]
  input  [2:0]  io_in_c_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@79926.4]
  input  [2:0]  io_in_c_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@79926.4]
  input  [2:0]  io_in_c_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@79926.4]
  input  [31:0] io_in_c_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@79926.4]
  input         io_in_c_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@79926.4]
  input         io_in_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@79926.4]
  input         io_in_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@79926.4]
  input  [2:0]  io_in_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@79926.4]
  input  [1:0]  io_in_d_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@79926.4]
  input  [2:0]  io_in_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@79926.4]
  input  [2:0]  io_in_d_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@79926.4]
  input  [2:0]  io_in_d_bits_sink, // @[:chipyard.TestHarness.RocketConfig.fir@79926.4]
  input         io_in_d_bits_denied, // @[:chipyard.TestHarness.RocketConfig.fir@79926.4]
  input         io_in_d_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@79926.4]
  input         io_in_e_valid, // @[:chipyard.TestHarness.RocketConfig.fir@79926.4]
  input  [2:0]  io_in_e_bits_sink // @[:chipyard.TestHarness.RocketConfig.fir@79926.4]
);
  wire [31:0] plusarg_reader_out; // @[PlusArg.scala 44:11:chipyard.TestHarness.RocketConfig.fir@82356.4]
  wire  _T_4; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@79937.6]
  wire  _T_5; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@79938.6]
  wire  _T_6; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@79939.6]
  wire  _T_8; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@79945.6]
  wire  _T_9; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@79946.6]
  wire [12:0] _T_11; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@79948.6]
  wire [5:0] _T_13; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@79950.6]
  wire [31:0] _GEN_71; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@79951.6]
  wire [31:0] _T_14; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@79951.6]
  wire  _T_15; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@79952.6]
  wire [3:0] _T_18; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@79955.6]
  wire [2:0] _T_20; // @[Misc.scala 201:81:chipyard.TestHarness.RocketConfig.fir@79957.6]
  wire  _T_21; // @[Misc.scala 205:21:chipyard.TestHarness.RocketConfig.fir@79958.6]
  wire  _T_24; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@79961.6]
  wire  _T_26; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@79963.6]
  wire  _T_27; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@79964.6]
  wire  _T_29; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@79966.6]
  wire  _T_30; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@79967.6]
  wire  _T_33; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@79970.6]
  wire  _T_34; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@79971.6]
  wire  _T_35; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@79972.6]
  wire  _T_36; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@79973.6]
  wire  _T_37; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@79974.6]
  wire  _T_38; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@79975.6]
  wire  _T_39; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@79976.6]
  wire  _T_40; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@79977.6]
  wire  _T_41; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@79978.6]
  wire  _T_42; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@79979.6]
  wire  _T_43; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@79980.6]
  wire  _T_44; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@79981.6]
  wire  _T_45; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@79982.6]
  wire  _T_48; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@79985.6]
  wire  _T_49; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@79986.6]
  wire  _T_50; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@79987.6]
  wire  _T_51; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@79988.6]
  wire  _T_52; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@79989.6]
  wire  _T_53; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@79990.6]
  wire  _T_54; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@79991.6]
  wire  _T_55; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@79992.6]
  wire  _T_56; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@79993.6]
  wire  _T_57; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@79994.6]
  wire  _T_58; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@79995.6]
  wire  _T_59; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@79996.6]
  wire  _T_60; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@79997.6]
  wire  _T_61; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@79998.6]
  wire  _T_62; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@79999.6]
  wire  _T_63; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@80000.6]
  wire  _T_64; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@80001.6]
  wire  _T_65; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@80002.6]
  wire  _T_66; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@80003.6]
  wire  _T_67; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@80004.6]
  wire  _T_68; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@80005.6]
  wire  _T_69; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@80006.6]
  wire  _T_70; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@80007.6]
  wire  _T_71; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@80008.6]
  wire  _T_72; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@80009.6]
  wire [7:0] _T_79; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@80016.6]
  wire  _T_109; // @[Monitor.scala 79:25:chipyard.TestHarness.RocketConfig.fir@80050.6]
  wire  _T_110; // @[Parameters.scala 92:48:chipyard.TestHarness.RocketConfig.fir@80052.8]
  wire [31:0] _T_112; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@80054.8]
  wire [32:0] _T_113; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@80055.8]
  wire [32:0] _T_115; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@80057.8]
  wire  _T_116; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@80058.8]
  wire  _T_117; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@80059.8]
  wire  _T_120; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80062.8]
  wire  _T_121; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80063.8]
  wire  _T_128; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@80078.8]
  wire  _T_134; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80085.8]
  wire  _T_135; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80086.8]
  wire  _T_137; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80092.8]
  wire  _T_138; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80093.8]
  wire  _T_141; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80100.8]
  wire  _T_142; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80101.8]
  wire  _T_144; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80107.8]
  wire  _T_145; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80108.8]
  wire  _T_146; // @[Bundles.scala 110:27:chipyard.TestHarness.RocketConfig.fir@80113.8]
  wire  _T_148; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80115.8]
  wire  _T_149; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80116.8]
  wire [7:0] _T_150; // @[Monitor.scala 86:18:chipyard.TestHarness.RocketConfig.fir@80121.8]
  wire  _T_151; // @[Monitor.scala 86:31:chipyard.TestHarness.RocketConfig.fir@80122.8]
  wire  _T_153; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80124.8]
  wire  _T_154; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80125.8]
  wire  _T_155; // @[Monitor.scala 87:18:chipyard.TestHarness.RocketConfig.fir@80130.8]
  wire  _T_157; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80132.8]
  wire  _T_158; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80133.8]
  wire  _T_159; // @[Monitor.scala 90:25:chipyard.TestHarness.RocketConfig.fir@80139.6]
  wire  _T_200; // @[Monitor.scala 97:31:chipyard.TestHarness.RocketConfig.fir@80210.8]
  wire  _T_202; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80212.8]
  wire  _T_203; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80213.8]
  wire  _T_213; // @[Monitor.scala 102:25:chipyard.TestHarness.RocketConfig.fir@80236.6]
  wire  _T_215; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@80239.8]
  wire  _T_223; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@80247.8]
  wire  _T_226; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80250.8]
  wire  _T_227; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80251.8]
  wire  _T_234; // @[Monitor.scala 106:31:chipyard.TestHarness.RocketConfig.fir@80270.8]
  wire  _T_236; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80272.8]
  wire  _T_237; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80273.8]
  wire  _T_238; // @[Monitor.scala 107:30:chipyard.TestHarness.RocketConfig.fir@80278.8]
  wire  _T_240; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80280.8]
  wire  _T_241; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80281.8]
  wire  _T_246; // @[Monitor.scala 111:25:chipyard.TestHarness.RocketConfig.fir@80295.6]
  wire  _T_275; // @[Monitor.scala 119:25:chipyard.TestHarness.RocketConfig.fir@80346.6]
  wire [7:0] _T_300; // @[Monitor.scala 124:33:chipyard.TestHarness.RocketConfig.fir@80388.8]
  wire [7:0] _T_301; // @[Monitor.scala 124:31:chipyard.TestHarness.RocketConfig.fir@80389.8]
  wire  _T_302; // @[Monitor.scala 124:40:chipyard.TestHarness.RocketConfig.fir@80390.8]
  wire  _T_304; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80392.8]
  wire  _T_305; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80393.8]
  wire  _T_306; // @[Monitor.scala 127:25:chipyard.TestHarness.RocketConfig.fir@80399.6]
  wire  _T_308; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@80402.8]
  wire  _T_316; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@80410.8]
  wire  _T_319; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80413.8]
  wire  _T_320; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80414.8]
  wire  _T_327; // @[Bundles.scala 140:33:chipyard.TestHarness.RocketConfig.fir@80433.8]
  wire  _T_329; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80435.8]
  wire  _T_330; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80436.8]
  wire  _T_335; // @[Monitor.scala 135:25:chipyard.TestHarness.RocketConfig.fir@80450.6]
  wire  _T_356; // @[Bundles.scala 147:30:chipyard.TestHarness.RocketConfig.fir@80484.8]
  wire  _T_358; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80486.8]
  wire  _T_359; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80487.8]
  wire  _T_364; // @[Monitor.scala 143:25:chipyard.TestHarness.RocketConfig.fir@80501.6]
  wire  _T_385; // @[Bundles.scala 160:28:chipyard.TestHarness.RocketConfig.fir@80535.8]
  wire  _T_387; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80537.8]
  wire  _T_388; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80538.8]
  wire  _T_397; // @[Bundles.scala 44:24:chipyard.TestHarness.RocketConfig.fir@80562.6]
  wire  _T_399; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80564.6]
  wire  _T_400; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80565.6]
  wire  _T_401; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@80570.6]
  wire  _T_402; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@80571.6]
  wire  _T_403; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@80572.6]
  wire  _T_405; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@80578.6]
  wire  _T_406; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@80579.6]
  wire  _T_407; // @[Monitor.scala 303:31:chipyard.TestHarness.RocketConfig.fir@80580.6]
  wire  _T_408; // @[Monitor.scala 307:25:chipyard.TestHarness.RocketConfig.fir@80581.6]
  wire  _T_410; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80584.8]
  wire  _T_411; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80585.8]
  wire  _T_412; // @[Monitor.scala 309:27:chipyard.TestHarness.RocketConfig.fir@80590.8]
  wire  _T_414; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80592.8]
  wire  _T_415; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80593.8]
  wire  _T_416; // @[Monitor.scala 310:28:chipyard.TestHarness.RocketConfig.fir@80598.8]
  wire  _T_418; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80600.8]
  wire  _T_419; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80601.8]
  wire  _T_420; // @[Monitor.scala 311:15:chipyard.TestHarness.RocketConfig.fir@80606.8]
  wire  _T_422; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80608.8]
  wire  _T_423; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80609.8]
  wire  _T_424; // @[Monitor.scala 312:15:chipyard.TestHarness.RocketConfig.fir@80614.8]
  wire  _T_426; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80616.8]
  wire  _T_427; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80617.8]
  wire  _T_428; // @[Monitor.scala 315:25:chipyard.TestHarness.RocketConfig.fir@80623.6]
  wire  _T_433; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80633.8]
  wire  _T_434; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80634.8]
  wire  _T_439; // @[Bundles.scala 104:26:chipyard.TestHarness.RocketConfig.fir@80647.8]
  wire  _T_441; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80649.8]
  wire  _T_442; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80650.8]
  wire  _T_443; // @[Monitor.scala 320:28:chipyard.TestHarness.RocketConfig.fir@80655.8]
  wire  _T_445; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80657.8]
  wire  _T_446; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80658.8]
  wire  _T_456; // @[Monitor.scala 325:25:chipyard.TestHarness.RocketConfig.fir@80681.6]
  wire  _T_476; // @[Monitor.scala 331:30:chipyard.TestHarness.RocketConfig.fir@80722.8]
  wire  _T_478; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80724.8]
  wire  _T_479; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80725.8]
  wire  _T_485; // @[Monitor.scala 335:25:chipyard.TestHarness.RocketConfig.fir@80740.6]
  wire  _T_502; // @[Monitor.scala 343:25:chipyard.TestHarness.RocketConfig.fir@80775.6]
  wire  _T_520; // @[Monitor.scala 351:25:chipyard.TestHarness.RocketConfig.fir@80811.6]
  wire [31:0] _T_570; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@80889.6]
  wire [32:0] _T_571; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@80890.6]
  wire [32:0] _T_573; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@80892.6]
  wire  _T_574; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@80893.6]
  wire [31:0] _T_580; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@80901.6]
  wire  _T_581; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@80902.6]
  wire  _T_673; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81009.8]
  wire  _T_674; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81010.8]
  wire  _T_679; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81023.8]
  wire  _T_680; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81024.8]
  wire  _T_681; // @[Bundles.scala 104:26:chipyard.TestHarness.RocketConfig.fir@81029.8]
  wire  _T_683; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81031.8]
  wire  _T_684; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81032.8]
  wire  _T_829; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@81356.6]
  wire  _T_830; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@81357.6]
  wire  _T_831; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@81358.6]
  wire  _T_833; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@81364.6]
  wire  _T_834; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@81365.6]
  wire [12:0] _T_836; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@81367.6]
  wire [5:0] _T_838; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@81369.6]
  wire [31:0] _GEN_72; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@81370.6]
  wire [31:0] _T_839; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@81370.6]
  wire  _T_840; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@81371.6]
  wire [31:0] _T_841; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@81372.6]
  wire [32:0] _T_842; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@81373.6]
  wire [32:0] _T_844; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@81375.6]
  wire  _T_845; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@81376.6]
  wire  _T_876; // @[Monitor.scala 239:25:chipyard.TestHarness.RocketConfig.fir@81413.6]
  wire  _T_878; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81416.8]
  wire  _T_879; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81417.8]
  wire  _T_881; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81423.8]
  wire  _T_882; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81424.8]
  wire  _T_883; // @[Monitor.scala 242:30:chipyard.TestHarness.RocketConfig.fir@81429.8]
  wire  _T_885; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81431.8]
  wire  _T_886; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81432.8]
  wire  _T_888; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81438.8]
  wire  _T_889; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81439.8]
  wire  _T_890; // @[Bundles.scala 122:29:chipyard.TestHarness.RocketConfig.fir@81444.8]
  wire  _T_892; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81446.8]
  wire  _T_893; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81447.8]
  wire  _T_894; // @[Monitor.scala 245:18:chipyard.TestHarness.RocketConfig.fir@81452.8]
  wire  _T_896; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81454.8]
  wire  _T_897; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81455.8]
  wire  _T_898; // @[Monitor.scala 248:25:chipyard.TestHarness.RocketConfig.fir@81461.6]
  wire  _T_916; // @[Monitor.scala 256:25:chipyard.TestHarness.RocketConfig.fir@81501.6]
  wire  _T_917; // @[Parameters.scala 92:48:chipyard.TestHarness.RocketConfig.fir@81503.8]
  wire  _T_924; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@81510.8]
  wire  _T_927; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81513.8]
  wire  _T_928; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81514.8]
  wire  _T_935; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@81529.8]
  wire  _T_941; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81536.8]
  wire  _T_942; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81537.8]
  wire  _T_953; // @[Bundles.scala 116:29:chipyard.TestHarness.RocketConfig.fir@81564.8]
  wire  _T_955; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81566.8]
  wire  _T_956; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81567.8]
  wire  _T_961; // @[Monitor.scala 266:25:chipyard.TestHarness.RocketConfig.fir@81581.6]
  wire  _T_1002; // @[Monitor.scala 275:25:chipyard.TestHarness.RocketConfig.fir@81653.6]
  wire  _T_1012; // @[Monitor.scala 279:31:chipyard.TestHarness.RocketConfig.fir@81676.8]
  wire  _T_1014; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81678.8]
  wire  _T_1015; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81679.8]
  wire  _T_1020; // @[Monitor.scala 283:25:chipyard.TestHarness.RocketConfig.fir@81693.6]
  wire  _T_1034; // @[Monitor.scala 290:25:chipyard.TestHarness.RocketConfig.fir@81725.6]
  wire  _T_1052; // @[Monitor.scala 361:31:chipyard.TestHarness.RocketConfig.fir@81767.6]
  wire  _T_1054; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81769.6]
  wire  _T_1055; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81770.6]
  wire  _T_1056; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@81776.4]
  wire  _T_1063; // @[Edges.scala 93:28:chipyard.TestHarness.RocketConfig.fir@81783.4]
  reg [2:0] _T_1065; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@81785.4]
  reg [31:0] _RAND_0;
  wire [2:0] _T_1067; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@81787.4]
  wire  _T_1068; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@81788.4]
  reg [2:0] _T_1076; // @[Monitor.scala 381:22:chipyard.TestHarness.RocketConfig.fir@81799.4]
  reg [31:0] _RAND_1;
  reg [2:0] _T_1077; // @[Monitor.scala 382:22:chipyard.TestHarness.RocketConfig.fir@81800.4]
  reg [31:0] _RAND_2;
  reg [2:0] _T_1078; // @[Monitor.scala 383:22:chipyard.TestHarness.RocketConfig.fir@81801.4]
  reg [31:0] _RAND_3;
  reg [2:0] _T_1079; // @[Monitor.scala 384:22:chipyard.TestHarness.RocketConfig.fir@81802.4]
  reg [31:0] _RAND_4;
  reg [31:0] _T_1080; // @[Monitor.scala 385:22:chipyard.TestHarness.RocketConfig.fir@81803.4]
  reg [31:0] _RAND_5;
  wire  _T_1081; // @[Monitor.scala 386:22:chipyard.TestHarness.RocketConfig.fir@81804.4]
  wire  _T_1082; // @[Monitor.scala 386:19:chipyard.TestHarness.RocketConfig.fir@81805.4]
  wire  _T_1083; // @[Monitor.scala 387:32:chipyard.TestHarness.RocketConfig.fir@81807.6]
  wire  _T_1085; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81809.6]
  wire  _T_1086; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81810.6]
  wire  _T_1087; // @[Monitor.scala 388:32:chipyard.TestHarness.RocketConfig.fir@81815.6]
  wire  _T_1089; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81817.6]
  wire  _T_1090; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81818.6]
  wire  _T_1091; // @[Monitor.scala 389:32:chipyard.TestHarness.RocketConfig.fir@81823.6]
  wire  _T_1093; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81825.6]
  wire  _T_1094; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81826.6]
  wire  _T_1095; // @[Monitor.scala 390:32:chipyard.TestHarness.RocketConfig.fir@81831.6]
  wire  _T_1097; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81833.6]
  wire  _T_1098; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81834.6]
  wire  _T_1099; // @[Monitor.scala 391:32:chipyard.TestHarness.RocketConfig.fir@81839.6]
  wire  _T_1101; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81841.6]
  wire  _T_1102; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81842.6]
  wire  _T_1104; // @[Monitor.scala 393:20:chipyard.TestHarness.RocketConfig.fir@81849.4]
  wire  _T_1105; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@81857.4]
  wire [12:0] _T_1107; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@81859.4]
  wire [5:0] _T_1109; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@81861.4]
  reg [2:0] _T_1113; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@81865.4]
  reg [31:0] _RAND_6;
  wire [2:0] _T_1115; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@81867.4]
  wire  _T_1116; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@81868.4]
  reg [2:0] _T_1124; // @[Monitor.scala 532:22:chipyard.TestHarness.RocketConfig.fir@81879.4]
  reg [31:0] _RAND_7;
  reg [1:0] _T_1125; // @[Monitor.scala 533:22:chipyard.TestHarness.RocketConfig.fir@81880.4]
  reg [31:0] _RAND_8;
  reg [2:0] _T_1126; // @[Monitor.scala 534:22:chipyard.TestHarness.RocketConfig.fir@81881.4]
  reg [31:0] _RAND_9;
  reg [2:0] _T_1127; // @[Monitor.scala 535:22:chipyard.TestHarness.RocketConfig.fir@81882.4]
  reg [31:0] _RAND_10;
  reg [2:0] _T_1128; // @[Monitor.scala 536:22:chipyard.TestHarness.RocketConfig.fir@81883.4]
  reg [31:0] _RAND_11;
  reg  _T_1129; // @[Monitor.scala 537:22:chipyard.TestHarness.RocketConfig.fir@81884.4]
  reg [31:0] _RAND_12;
  wire  _T_1130; // @[Monitor.scala 538:22:chipyard.TestHarness.RocketConfig.fir@81885.4]
  wire  _T_1131; // @[Monitor.scala 538:19:chipyard.TestHarness.RocketConfig.fir@81886.4]
  wire  _T_1132; // @[Monitor.scala 539:29:chipyard.TestHarness.RocketConfig.fir@81888.6]
  wire  _T_1134; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@81890.6]
  wire  _T_1135; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@81891.6]
  wire  _T_1136; // @[Monitor.scala 540:29:chipyard.TestHarness.RocketConfig.fir@81896.6]
  wire  _T_1138; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@81898.6]
  wire  _T_1139; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@81899.6]
  wire  _T_1140; // @[Monitor.scala 541:29:chipyard.TestHarness.RocketConfig.fir@81904.6]
  wire  _T_1142; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@81906.6]
  wire  _T_1143; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@81907.6]
  wire  _T_1144; // @[Monitor.scala 542:29:chipyard.TestHarness.RocketConfig.fir@81912.6]
  wire  _T_1146; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@81914.6]
  wire  _T_1147; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@81915.6]
  wire  _T_1148; // @[Monitor.scala 543:29:chipyard.TestHarness.RocketConfig.fir@81920.6]
  wire  _T_1150; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@81922.6]
  wire  _T_1151; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@81923.6]
  wire  _T_1152; // @[Monitor.scala 544:29:chipyard.TestHarness.RocketConfig.fir@81928.6]
  wire  _T_1154; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@81930.6]
  wire  _T_1155; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@81931.6]
  wire  _T_1157; // @[Monitor.scala 546:20:chipyard.TestHarness.RocketConfig.fir@81938.4]
  wire  _T_1158; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@81947.4]
  reg [2:0] _T_1167; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@81956.4]
  reg [31:0] _RAND_13;
  wire [2:0] _T_1169; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@81958.4]
  wire  _T_1170; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@81959.4]
  reg [1:0] _T_1179; // @[Monitor.scala 405:22:chipyard.TestHarness.RocketConfig.fir@81971.4]
  reg [31:0] _RAND_14;
  reg [31:0] _T_1182; // @[Monitor.scala 408:22:chipyard.TestHarness.RocketConfig.fir@81974.4]
  reg [31:0] _RAND_15;
  wire  _T_1183; // @[Monitor.scala 409:22:chipyard.TestHarness.RocketConfig.fir@81975.4]
  wire  _T_1184; // @[Monitor.scala 409:19:chipyard.TestHarness.RocketConfig.fir@81976.4]
  wire  _T_1189; // @[Monitor.scala 411:32:chipyard.TestHarness.RocketConfig.fir@81986.6]
  wire  _T_1191; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81988.6]
  wire  _T_1192; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81989.6]
  wire  _T_1201; // @[Monitor.scala 414:32:chipyard.TestHarness.RocketConfig.fir@82010.6]
  wire  _T_1203; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@82012.6]
  wire  _T_1204; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@82013.6]
  wire  _T_1206; // @[Monitor.scala 416:20:chipyard.TestHarness.RocketConfig.fir@82020.4]
  wire  _T_1207; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@82028.4]
  reg [2:0] _T_1215; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@82036.4]
  reg [31:0] _RAND_16;
  wire [2:0] _T_1217; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@82038.4]
  wire  _T_1218; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@82039.4]
  reg [2:0] _T_1226; // @[Monitor.scala 509:22:chipyard.TestHarness.RocketConfig.fir@82050.4]
  reg [31:0] _RAND_17;
  reg [2:0] _T_1227; // @[Monitor.scala 510:22:chipyard.TestHarness.RocketConfig.fir@82051.4]
  reg [31:0] _RAND_18;
  reg [2:0] _T_1228; // @[Monitor.scala 511:22:chipyard.TestHarness.RocketConfig.fir@82052.4]
  reg [31:0] _RAND_19;
  reg [2:0] _T_1229; // @[Monitor.scala 512:22:chipyard.TestHarness.RocketConfig.fir@82053.4]
  reg [31:0] _RAND_20;
  reg [31:0] _T_1230; // @[Monitor.scala 513:22:chipyard.TestHarness.RocketConfig.fir@82054.4]
  reg [31:0] _RAND_21;
  wire  _T_1231; // @[Monitor.scala 514:22:chipyard.TestHarness.RocketConfig.fir@82055.4]
  wire  _T_1232; // @[Monitor.scala 514:19:chipyard.TestHarness.RocketConfig.fir@82056.4]
  wire  _T_1233; // @[Monitor.scala 515:32:chipyard.TestHarness.RocketConfig.fir@82058.6]
  wire  _T_1235; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@82060.6]
  wire  _T_1236; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@82061.6]
  wire  _T_1237; // @[Monitor.scala 516:32:chipyard.TestHarness.RocketConfig.fir@82066.6]
  wire  _T_1239; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@82068.6]
  wire  _T_1240; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@82069.6]
  wire  _T_1241; // @[Monitor.scala 517:32:chipyard.TestHarness.RocketConfig.fir@82074.6]
  wire  _T_1243; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@82076.6]
  wire  _T_1244; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@82077.6]
  wire  _T_1245; // @[Monitor.scala 518:32:chipyard.TestHarness.RocketConfig.fir@82082.6]
  wire  _T_1247; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@82084.6]
  wire  _T_1248; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@82085.6]
  wire  _T_1249; // @[Monitor.scala 519:32:chipyard.TestHarness.RocketConfig.fir@82090.6]
  wire  _T_1251; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@82092.6]
  wire  _T_1252; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@82093.6]
  wire  _T_1254; // @[Monitor.scala 521:20:chipyard.TestHarness.RocketConfig.fir@82100.4]
  reg [4:0] inflight; // @[Monitor.scala 608:27:chipyard.TestHarness.RocketConfig.fir@82108.4]
  reg [31:0] _RAND_22;
  reg [19:0] inflight_opcodes; // @[Monitor.scala 610:35:chipyard.TestHarness.RocketConfig.fir@82109.4]
  reg [31:0] _RAND_23;
  reg [19:0] inflight_sizes; // @[Monitor.scala 612:33:chipyard.TestHarness.RocketConfig.fir@82110.4]
  reg [31:0] _RAND_24;
  reg [2:0] _T_1264; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@82120.4]
  reg [31:0] _RAND_25;
  wire [2:0] _T_1266; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@82122.4]
  wire  a_first; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@82123.4]
  reg [2:0] _T_1282; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@82142.4]
  reg [31:0] _RAND_26;
  wire [2:0] _T_1284; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@82144.4]
  wire  d_first; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@82145.4]
  wire [4:0] _GEN_73; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@82164.4]
  wire [5:0] _T_1292; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@82164.4]
  wire [19:0] _T_1293; // @[Monitor.scala 629:44:chipyard.TestHarness.RocketConfig.fir@82165.4]
  wire [15:0] _T_1297; // @[Monitor.scala 606:57:chipyard.TestHarness.RocketConfig.fir@82169.4]
  wire [19:0] _GEN_74; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@82170.4]
  wire [19:0] _T_1298; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@82170.4]
  wire [19:0] _T_1299; // @[Monitor.scala 629:152:chipyard.TestHarness.RocketConfig.fir@82171.4]
  wire [19:0] _T_1301; // @[Monitor.scala 633:40:chipyard.TestHarness.RocketConfig.fir@82176.4]
  wire [19:0] _T_1306; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@82181.4]
  wire [19:0] _T_1307; // @[Monitor.scala 633:144:chipyard.TestHarness.RocketConfig.fir@82182.4]
  wire  _T_1311; // @[Monitor.scala 643:27:chipyard.TestHarness.RocketConfig.fir@82207.4]
  wire [7:0] _T_1313; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@82210.6]
  wire [3:0] _T_1314; // @[Monitor.scala 645:53:chipyard.TestHarness.RocketConfig.fir@82212.6]
  wire [3:0] _T_1315; // @[Monitor.scala 645:61:chipyard.TestHarness.RocketConfig.fir@82213.6]
  wire [3:0] _T_1316; // @[Monitor.scala 646:49:chipyard.TestHarness.RocketConfig.fir@82215.6]
  wire [3:0] _T_1317; // @[Monitor.scala 646:57:chipyard.TestHarness.RocketConfig.fir@82216.6]
  wire [4:0] _GEN_79; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@82218.6]
  wire [5:0] _T_1318; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@82218.6]
  wire [3:0] a_opcodes_set_interm; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@82209.4]
  wire [66:0] _GEN_80; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@82219.6]
  wire [66:0] _T_1319; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@82219.6]
  wire [3:0] a_sizes_set_interm; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@82209.4]
  wire [66:0] _GEN_82; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@82222.6]
  wire [66:0] _T_1321; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@82222.6]
  wire [4:0] _T_1322; // @[Monitor.scala 649:26:chipyard.TestHarness.RocketConfig.fir@82224.6]
  wire  _T_1324; // @[Monitor.scala 649:17:chipyard.TestHarness.RocketConfig.fir@82226.6]
  wire  _T_1326; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@82228.6]
  wire  _T_1327; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@82229.6]
  wire [7:0] _GEN_27; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@82209.4]
  wire [66:0] _GEN_30; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@82209.4]
  wire [66:0] _GEN_31; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@82209.4]
  wire  _T_1330; // @[Monitor.scala 660:27:chipyard.TestHarness.RocketConfig.fir@82243.4]
  wire  _T_1332; // @[Monitor.scala 660:75:chipyard.TestHarness.RocketConfig.fir@82245.4]
  wire  _T_1333; // @[Monitor.scala 660:72:chipyard.TestHarness.RocketConfig.fir@82246.4]
  wire [7:0] _T_1334; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@82248.6]
  wire [78:0] _GEN_84; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@82255.6]
  wire [78:0] _T_1340; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@82255.6]
  wire [7:0] _GEN_32; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@82247.4]
  wire [78:0] _GEN_33; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@82247.4]
  wire  _T_1347; // @[Monitor.scala 665:26:chipyard.TestHarness.RocketConfig.fir@82265.4]
  wire  _T_1350; // @[Monitor.scala 665:71:chipyard.TestHarness.RocketConfig.fir@82268.4]
  wire [4:0] _T_1351; // @[Monitor.scala 666:25:chipyard.TestHarness.RocketConfig.fir@82270.6]
  wire  _T_1353; // @[Monitor.scala 666:93:chipyard.TestHarness.RocketConfig.fir@82272.6]
  wire  _T_1354; // @[Monitor.scala 666:68:chipyard.TestHarness.RocketConfig.fir@82273.6]
  wire  _T_1355; // @[Monitor.scala 666:142:chipyard.TestHarness.RocketConfig.fir@82274.6]
  wire  _T_1356; // @[Monitor.scala 666:119:chipyard.TestHarness.RocketConfig.fir@82275.6]
  wire  _T_1357; // @[Monitor.scala 666:166:chipyard.TestHarness.RocketConfig.fir@82276.6]
  wire  _T_1358; // @[Monitor.scala 666:49:chipyard.TestHarness.RocketConfig.fir@82277.6]
  wire  _T_1360; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@82279.6]
  wire  _T_1361; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@82280.6]
  wire [3:0] a_opcode_lookup; // @[:chipyard.TestHarness.RocketConfig.fir@82162.4 :chipyard.TestHarness.RocketConfig.fir@82163.4 Monitor.scala 629:21:chipyard.TestHarness.RocketConfig.fir@82172.4]
  wire [2:0] _GEN_37; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@82286.6]
  wire [2:0] _GEN_38; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@82286.6]
  wire [2:0] _GEN_39; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@82286.6]
  wire [2:0] _GEN_40; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@82286.6]
  wire [2:0] _GEN_41; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@82286.6]
  wire [2:0] _GEN_42; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@82286.6]
  wire  _T_1363; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@82286.6]
  wire [2:0] _GEN_49; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@82288.6]
  wire [2:0] _GEN_50; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@82288.6]
  wire  _T_1365; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@82288.6]
  wire  _T_1366; // @[Monitor.scala 667:71:chipyard.TestHarness.RocketConfig.fir@82289.6]
  wire [2:0] _GEN_53; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@82290.6]
  wire [2:0] _GEN_54; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@82290.6]
  wire [2:0] _GEN_55; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@82290.6]
  wire [2:0] _GEN_56; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@82290.6]
  wire [2:0] _GEN_57; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@82290.6]
  wire [2:0] _GEN_58; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@82290.6]
  wire  _T_1367; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@82290.6]
  wire [2:0] _GEN_65; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@82291.6]
  wire [2:0] _GEN_66; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@82291.6]
  wire  _T_1368; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@82291.6]
  wire  _T_1369; // @[Monitor.scala 668:99:chipyard.TestHarness.RocketConfig.fir@82292.6]
  wire  _T_1370; // @[Monitor.scala 668:34:chipyard.TestHarness.RocketConfig.fir@82293.6]
  wire  _T_1371; // @[Monitor.scala 668:15:chipyard.TestHarness.RocketConfig.fir@82294.6]
  wire  _T_1373; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@82296.6]
  wire  _T_1374; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@82297.6]
  wire [3:0] a_size_lookup; // @[:chipyard.TestHarness.RocketConfig.fir@82173.4 :chipyard.TestHarness.RocketConfig.fir@82174.4 Monitor.scala 633:19:chipyard.TestHarness.RocketConfig.fir@82183.4]
  wire [3:0] _GEN_87; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@82302.6]
  wire  _T_1375; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@82302.6]
  wire  _T_1377; // @[Monitor.scala 670:72:chipyard.TestHarness.RocketConfig.fir@82304.6]
  wire  _T_1378; // @[Monitor.scala 670:53:chipyard.TestHarness.RocketConfig.fir@82305.6]
  wire  _T_1380; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@82307.6]
  wire  _T_1381; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@82308.6]
  wire  _T_1383; // @[Monitor.scala 672:36:chipyard.TestHarness.RocketConfig.fir@82315.4]
  wire  _T_1384; // @[Monitor.scala 672:47:chipyard.TestHarness.RocketConfig.fir@82316.4]
  wire  _T_1386; // @[Monitor.scala 672:65:chipyard.TestHarness.RocketConfig.fir@82318.4]
  wire  _T_1388; // @[Monitor.scala 672:116:chipyard.TestHarness.RocketConfig.fir@82320.4]
  wire  _T_1389; // @[Monitor.scala 673:15:chipyard.TestHarness.RocketConfig.fir@82322.6]
  wire  _T_1390; // @[Monitor.scala 673:32:chipyard.TestHarness.RocketConfig.fir@82323.6]
  wire  _T_1392; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@82325.6]
  wire  _T_1393; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@82326.6]
  wire [4:0] a_set; // @[:chipyard.TestHarness.RocketConfig.fir@82156.4 :chipyard.TestHarness.RocketConfig.fir@82157.4 Monitor.scala 644:13:chipyard.TestHarness.RocketConfig.fir@82211.6]
  wire [4:0] d_clr; // @[:chipyard.TestHarness.RocketConfig.fir@82235.4 :chipyard.TestHarness.RocketConfig.fir@82236.4 Monitor.scala 661:13:chipyard.TestHarness.RocketConfig.fir@82249.6]
  wire  _T_1394; // @[Monitor.scala 677:20:chipyard.TestHarness.RocketConfig.fir@82332.4]
  wire  _T_1395; // @[Monitor.scala 677:40:chipyard.TestHarness.RocketConfig.fir@82333.4]
  wire  _T_1396; // @[Monitor.scala 677:33:chipyard.TestHarness.RocketConfig.fir@82334.4]
  wire  _T_1397; // @[Monitor.scala 677:30:chipyard.TestHarness.RocketConfig.fir@82335.4]
  wire  _T_1399; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@82337.4]
  wire  _T_1400; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@82338.4]
  wire [4:0] _T_1401; // @[Monitor.scala 680:27:chipyard.TestHarness.RocketConfig.fir@82343.4]
  wire [4:0] _T_1402; // @[Monitor.scala 680:38:chipyard.TestHarness.RocketConfig.fir@82344.4]
  wire [4:0] _T_1403; // @[Monitor.scala 680:36:chipyard.TestHarness.RocketConfig.fir@82345.4]
  wire [19:0] a_opcodes_set; // @[:chipyard.TestHarness.RocketConfig.fir@82158.4 :chipyard.TestHarness.RocketConfig.fir@82159.4 Monitor.scala 647:21:chipyard.TestHarness.RocketConfig.fir@82220.6]
  wire [19:0] _T_1404; // @[Monitor.scala 681:43:chipyard.TestHarness.RocketConfig.fir@82347.4]
  wire [19:0] d_opcodes_clr; // @[:chipyard.TestHarness.RocketConfig.fir@82237.4 :chipyard.TestHarness.RocketConfig.fir@82238.4 Monitor.scala 662:21:chipyard.TestHarness.RocketConfig.fir@82256.6]
  wire [19:0] _T_1405; // @[Monitor.scala 681:62:chipyard.TestHarness.RocketConfig.fir@82348.4]
  wire [19:0] _T_1406; // @[Monitor.scala 681:60:chipyard.TestHarness.RocketConfig.fir@82349.4]
  wire [19:0] a_sizes_set; // @[:chipyard.TestHarness.RocketConfig.fir@82160.4 :chipyard.TestHarness.RocketConfig.fir@82161.4 Monitor.scala 648:19:chipyard.TestHarness.RocketConfig.fir@82223.6]
  wire [19:0] _T_1407; // @[Monitor.scala 682:39:chipyard.TestHarness.RocketConfig.fir@82351.4]
  wire [19:0] _T_1409; // @[Monitor.scala 682:54:chipyard.TestHarness.RocketConfig.fir@82353.4]
  reg [31:0] _T_1410; // @[Monitor.scala 684:27:chipyard.TestHarness.RocketConfig.fir@82355.4]
  reg [31:0] _RAND_27;
  wire  _T_1411; // @[Monitor.scala 687:26:chipyard.TestHarness.RocketConfig.fir@82358.4]
  wire  _T_1412; // @[Monitor.scala 687:16:chipyard.TestHarness.RocketConfig.fir@82359.4]
  wire  _T_1413; // @[Monitor.scala 687:39:chipyard.TestHarness.RocketConfig.fir@82360.4]
  wire  _T_1414; // @[Monitor.scala 687:30:chipyard.TestHarness.RocketConfig.fir@82361.4]
  wire  _T_1415; // @[Monitor.scala 687:59:chipyard.TestHarness.RocketConfig.fir@82362.4]
  wire  _T_1416; // @[Monitor.scala 687:47:chipyard.TestHarness.RocketConfig.fir@82363.4]
  wire  _T_1418; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@82365.4]
  wire  _T_1419; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@82366.4]
  wire [31:0] _T_1421; // @[Monitor.scala 689:26:chipyard.TestHarness.RocketConfig.fir@82372.4]
  wire  _T_1424; // @[Monitor.scala 690:27:chipyard.TestHarness.RocketConfig.fir@82376.4]
  reg [6:0] _T_1425; // @[Monitor.scala 694:27:chipyard.TestHarness.RocketConfig.fir@82380.4]
  reg [31:0] _RAND_28;
  reg [2:0] _T_1434; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@82389.4]
  reg [31:0] _RAND_29;
  wire [2:0] _T_1436; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@82391.4]
  wire  _T_1437; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@82392.4]
  wire  _T_1447; // @[Monitor.scala 700:27:chipyard.TestHarness.RocketConfig.fir@82406.4]
  wire  _T_1450; // @[Edges.scala 72:43:chipyard.TestHarness.RocketConfig.fir@82409.4]
  wire  _T_1451; // @[Edges.scala 72:40:chipyard.TestHarness.RocketConfig.fir@82410.4]
  wire  _T_1452; // @[Monitor.scala 700:38:chipyard.TestHarness.RocketConfig.fir@82411.4]
  wire [7:0] _T_1453; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@82413.6]
  wire [6:0] _T_1454; // @[Monitor.scala 702:23:chipyard.TestHarness.RocketConfig.fir@82415.6]
  wire  _T_1456; // @[Monitor.scala 702:14:chipyard.TestHarness.RocketConfig.fir@82417.6]
  wire  _T_1458; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@82419.6]
  wire  _T_1459; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@82420.6]
  wire [7:0] _GEN_69; // @[Monitor.scala 700:72:chipyard.TestHarness.RocketConfig.fir@82412.4]
  wire [7:0] _T_1464; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@82432.6]
  wire [6:0] _T_1465; // @[Monitor.scala 708:24:chipyard.TestHarness.RocketConfig.fir@82434.6]
  wire [6:0] _T_1466; // @[Monitor.scala 708:35:chipyard.TestHarness.RocketConfig.fir@82435.6]
  wire  _T_1469; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@82438.6]
  wire  _T_1470; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@82439.6]
  wire [7:0] _GEN_70; // @[Monitor.scala 706:73:chipyard.TestHarness.RocketConfig.fir@82431.4]
  wire [6:0] _T_1471; // @[Monitor.scala 713:27:chipyard.TestHarness.RocketConfig.fir@82445.4]
  wire [6:0] _T_1472; // @[Monitor.scala 713:38:chipyard.TestHarness.RocketConfig.fir@82446.4]
  wire [6:0] _T_1473; // @[Monitor.scala 713:36:chipyard.TestHarness.RocketConfig.fir@82447.4]
  wire  _GEN_88; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80065.10]
  wire  _GEN_104; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80154.10]
  wire  _GEN_122; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80253.10]
  wire  _GEN_134; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80312.10]
  wire  _GEN_144; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80363.10]
  wire  _GEN_154; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80416.10]
  wire  _GEN_164; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80467.10]
  wire  _GEN_174; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80518.10]
  wire  _GEN_186; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80587.10]
  wire  _GEN_196; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80629.10]
  wire  _GEN_208; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80687.10]
  wire  _GEN_220; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80746.10]
  wire  _GEN_226; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80781.10]
  wire  _GEN_232; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80817.10]
  wire  _GEN_238; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81419.10]
  wire  _GEN_250; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81467.10]
  wire  _GEN_260; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81516.10]
  wire  _GEN_274; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81596.10]
  wire  _GEN_286; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81659.10]
  wire  _GEN_296; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81699.10]
  wire  _GEN_304; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81731.10]
  plusarg_reader #(.FORMAT("tilelink_timeout=%d"), .DEFAULT(0), .WIDTH(32)) plusarg_reader ( // @[PlusArg.scala 44:11:chipyard.TestHarness.RocketConfig.fir@82356.4]
    .out(plusarg_reader_out)
  );
  assign _T_4 = io_in_a_bits_source == 3'h4; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@79937.6]
  assign _T_5 = io_in_a_bits_source == 3'h0; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@79938.6]
  assign _T_6 = io_in_a_bits_source == 3'h2; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@79939.6]
  assign _T_8 = _T_4 | _T_5; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@79945.6]
  assign _T_9 = _T_8 | _T_6; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@79946.6]
  assign _T_11 = 13'h3f << io_in_a_bits_size; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@79948.6]
  assign _T_13 = ~_T_11[5:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@79950.6]
  assign _GEN_71 = {{26'd0}, _T_13}; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@79951.6]
  assign _T_14 = io_in_a_bits_address & _GEN_71; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@79951.6]
  assign _T_15 = _T_14 == 32'h0; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@79952.6]
  assign _T_18 = 4'h1 << io_in_a_bits_size[1:0]; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@79955.6]
  assign _T_20 = _T_18[2:0] | 3'h1; // @[Misc.scala 201:81:chipyard.TestHarness.RocketConfig.fir@79957.6]
  assign _T_21 = io_in_a_bits_size >= 3'h3; // @[Misc.scala 205:21:chipyard.TestHarness.RocketConfig.fir@79958.6]
  assign _T_24 = ~io_in_a_bits_address[2]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@79961.6]
  assign _T_26 = _T_20[2] & _T_24; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@79963.6]
  assign _T_27 = _T_21 | _T_26; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@79964.6]
  assign _T_29 = _T_20[2] & io_in_a_bits_address[2]; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@79966.6]
  assign _T_30 = _T_21 | _T_29; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@79967.6]
  assign _T_33 = ~io_in_a_bits_address[1]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@79970.6]
  assign _T_34 = _T_24 & _T_33; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@79971.6]
  assign _T_35 = _T_20[1] & _T_34; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@79972.6]
  assign _T_36 = _T_27 | _T_35; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@79973.6]
  assign _T_37 = _T_24 & io_in_a_bits_address[1]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@79974.6]
  assign _T_38 = _T_20[1] & _T_37; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@79975.6]
  assign _T_39 = _T_27 | _T_38; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@79976.6]
  assign _T_40 = io_in_a_bits_address[2] & _T_33; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@79977.6]
  assign _T_41 = _T_20[1] & _T_40; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@79978.6]
  assign _T_42 = _T_30 | _T_41; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@79979.6]
  assign _T_43 = io_in_a_bits_address[2] & io_in_a_bits_address[1]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@79980.6]
  assign _T_44 = _T_20[1] & _T_43; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@79981.6]
  assign _T_45 = _T_30 | _T_44; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@79982.6]
  assign _T_48 = ~io_in_a_bits_address[0]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@79985.6]
  assign _T_49 = _T_34 & _T_48; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@79986.6]
  assign _T_50 = _T_20[0] & _T_49; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@79987.6]
  assign _T_51 = _T_36 | _T_50; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@79988.6]
  assign _T_52 = _T_34 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@79989.6]
  assign _T_53 = _T_20[0] & _T_52; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@79990.6]
  assign _T_54 = _T_36 | _T_53; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@79991.6]
  assign _T_55 = _T_37 & _T_48; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@79992.6]
  assign _T_56 = _T_20[0] & _T_55; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@79993.6]
  assign _T_57 = _T_39 | _T_56; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@79994.6]
  assign _T_58 = _T_37 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@79995.6]
  assign _T_59 = _T_20[0] & _T_58; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@79996.6]
  assign _T_60 = _T_39 | _T_59; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@79997.6]
  assign _T_61 = _T_40 & _T_48; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@79998.6]
  assign _T_62 = _T_20[0] & _T_61; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@79999.6]
  assign _T_63 = _T_42 | _T_62; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@80000.6]
  assign _T_64 = _T_40 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@80001.6]
  assign _T_65 = _T_20[0] & _T_64; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@80002.6]
  assign _T_66 = _T_42 | _T_65; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@80003.6]
  assign _T_67 = _T_43 & _T_48; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@80004.6]
  assign _T_68 = _T_20[0] & _T_67; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@80005.6]
  assign _T_69 = _T_45 | _T_68; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@80006.6]
  assign _T_70 = _T_43 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@80007.6]
  assign _T_71 = _T_20[0] & _T_70; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@80008.6]
  assign _T_72 = _T_45 | _T_71; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@80009.6]
  assign _T_79 = {_T_72,_T_69,_T_66,_T_63,_T_60,_T_57,_T_54,_T_51}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@80016.6]
  assign _T_109 = io_in_a_bits_opcode == 3'h6; // @[Monitor.scala 79:25:chipyard.TestHarness.RocketConfig.fir@80050.6]
  assign _T_110 = 3'h6 == io_in_a_bits_size; // @[Parameters.scala 92:48:chipyard.TestHarness.RocketConfig.fir@80052.8]
  assign _T_112 = io_in_a_bits_address ^ 32'h80000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@80054.8]
  assign _T_113 = {1'b0,$signed(_T_112)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@80055.8]
  assign _T_115 = $signed(_T_113) & -33'sh10000000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@80057.8]
  assign _T_116 = $signed(_T_115) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@80058.8]
  assign _T_117 = _T_110 & _T_116; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@80059.8]
  assign _T_120 = _T_117 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80062.8]
  assign _T_121 = ~_T_120; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80063.8]
  assign _T_128 = _T_5 & _T_110; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@80078.8]
  assign _T_134 = _T_128 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80085.8]
  assign _T_135 = ~_T_134; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80086.8]
  assign _T_137 = _T_9 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80092.8]
  assign _T_138 = ~_T_137; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80093.8]
  assign _T_141 = _T_21 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80100.8]
  assign _T_142 = ~_T_141; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80101.8]
  assign _T_144 = _T_15 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80107.8]
  assign _T_145 = ~_T_144; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80108.8]
  assign _T_146 = io_in_a_bits_param <= 3'h2; // @[Bundles.scala 110:27:chipyard.TestHarness.RocketConfig.fir@80113.8]
  assign _T_148 = _T_146 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80115.8]
  assign _T_149 = ~_T_148; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80116.8]
  assign _T_150 = ~io_in_a_bits_mask; // @[Monitor.scala 86:18:chipyard.TestHarness.RocketConfig.fir@80121.8]
  assign _T_151 = _T_150 == 8'h0; // @[Monitor.scala 86:31:chipyard.TestHarness.RocketConfig.fir@80122.8]
  assign _T_153 = _T_151 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80124.8]
  assign _T_154 = ~_T_153; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80125.8]
  assign _T_155 = ~io_in_a_bits_corrupt; // @[Monitor.scala 87:18:chipyard.TestHarness.RocketConfig.fir@80130.8]
  assign _T_157 = _T_155 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80132.8]
  assign _T_158 = ~_T_157; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80133.8]
  assign _T_159 = io_in_a_bits_opcode == 3'h7; // @[Monitor.scala 90:25:chipyard.TestHarness.RocketConfig.fir@80139.6]
  assign _T_200 = io_in_a_bits_param != 3'h0; // @[Monitor.scala 97:31:chipyard.TestHarness.RocketConfig.fir@80210.8]
  assign _T_202 = _T_200 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80212.8]
  assign _T_203 = ~_T_202; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80213.8]
  assign _T_213 = io_in_a_bits_opcode == 3'h4; // @[Monitor.scala 102:25:chipyard.TestHarness.RocketConfig.fir@80236.6]
  assign _T_215 = io_in_a_bits_size <= 3'h6; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@80239.8]
  assign _T_223 = _T_215 & _T_116; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@80247.8]
  assign _T_226 = _T_223 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80250.8]
  assign _T_227 = ~_T_226; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80251.8]
  assign _T_234 = io_in_a_bits_param == 3'h0; // @[Monitor.scala 106:31:chipyard.TestHarness.RocketConfig.fir@80270.8]
  assign _T_236 = _T_234 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80272.8]
  assign _T_237 = ~_T_236; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80273.8]
  assign _T_238 = io_in_a_bits_mask == _T_79; // @[Monitor.scala 107:30:chipyard.TestHarness.RocketConfig.fir@80278.8]
  assign _T_240 = _T_238 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80280.8]
  assign _T_241 = ~_T_240; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80281.8]
  assign _T_246 = io_in_a_bits_opcode == 3'h0; // @[Monitor.scala 111:25:chipyard.TestHarness.RocketConfig.fir@80295.6]
  assign _T_275 = io_in_a_bits_opcode == 3'h1; // @[Monitor.scala 119:25:chipyard.TestHarness.RocketConfig.fir@80346.6]
  assign _T_300 = ~_T_79; // @[Monitor.scala 124:33:chipyard.TestHarness.RocketConfig.fir@80388.8]
  assign _T_301 = io_in_a_bits_mask & _T_300; // @[Monitor.scala 124:31:chipyard.TestHarness.RocketConfig.fir@80389.8]
  assign _T_302 = _T_301 == 8'h0; // @[Monitor.scala 124:40:chipyard.TestHarness.RocketConfig.fir@80390.8]
  assign _T_304 = _T_302 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80392.8]
  assign _T_305 = ~_T_304; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80393.8]
  assign _T_306 = io_in_a_bits_opcode == 3'h2; // @[Monitor.scala 127:25:chipyard.TestHarness.RocketConfig.fir@80399.6]
  assign _T_308 = io_in_a_bits_size <= 3'h3; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@80402.8]
  assign _T_316 = _T_308 & _T_116; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@80410.8]
  assign _T_319 = _T_316 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80413.8]
  assign _T_320 = ~_T_319; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80414.8]
  assign _T_327 = io_in_a_bits_param <= 3'h4; // @[Bundles.scala 140:33:chipyard.TestHarness.RocketConfig.fir@80433.8]
  assign _T_329 = _T_327 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80435.8]
  assign _T_330 = ~_T_329; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80436.8]
  assign _T_335 = io_in_a_bits_opcode == 3'h3; // @[Monitor.scala 135:25:chipyard.TestHarness.RocketConfig.fir@80450.6]
  assign _T_356 = io_in_a_bits_param <= 3'h3; // @[Bundles.scala 147:30:chipyard.TestHarness.RocketConfig.fir@80484.8]
  assign _T_358 = _T_356 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80486.8]
  assign _T_359 = ~_T_358; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80487.8]
  assign _T_364 = io_in_a_bits_opcode == 3'h5; // @[Monitor.scala 143:25:chipyard.TestHarness.RocketConfig.fir@80501.6]
  assign _T_385 = io_in_a_bits_param <= 3'h1; // @[Bundles.scala 160:28:chipyard.TestHarness.RocketConfig.fir@80535.8]
  assign _T_387 = _T_385 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80537.8]
  assign _T_388 = ~_T_387; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80538.8]
  assign _T_397 = io_in_d_bits_opcode <= 3'h6; // @[Bundles.scala 44:24:chipyard.TestHarness.RocketConfig.fir@80562.6]
  assign _T_399 = _T_397 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80564.6]
  assign _T_400 = ~_T_399; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80565.6]
  assign _T_401 = io_in_d_bits_source == 3'h4; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@80570.6]
  assign _T_402 = io_in_d_bits_source == 3'h0; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@80571.6]
  assign _T_403 = io_in_d_bits_source == 3'h2; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@80572.6]
  assign _T_405 = _T_401 | _T_402; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@80578.6]
  assign _T_406 = _T_405 | _T_403; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@80579.6]
  assign _T_407 = io_in_d_bits_sink < 3'h7; // @[Monitor.scala 303:31:chipyard.TestHarness.RocketConfig.fir@80580.6]
  assign _T_408 = io_in_d_bits_opcode == 3'h6; // @[Monitor.scala 307:25:chipyard.TestHarness.RocketConfig.fir@80581.6]
  assign _T_410 = _T_406 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80584.8]
  assign _T_411 = ~_T_410; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80585.8]
  assign _T_412 = io_in_d_bits_size >= 3'h3; // @[Monitor.scala 309:27:chipyard.TestHarness.RocketConfig.fir@80590.8]
  assign _T_414 = _T_412 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80592.8]
  assign _T_415 = ~_T_414; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80593.8]
  assign _T_416 = io_in_d_bits_param == 2'h0; // @[Monitor.scala 310:28:chipyard.TestHarness.RocketConfig.fir@80598.8]
  assign _T_418 = _T_416 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80600.8]
  assign _T_419 = ~_T_418; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80601.8]
  assign _T_420 = ~io_in_d_bits_corrupt; // @[Monitor.scala 311:15:chipyard.TestHarness.RocketConfig.fir@80606.8]
  assign _T_422 = _T_420 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80608.8]
  assign _T_423 = ~_T_422; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80609.8]
  assign _T_424 = ~io_in_d_bits_denied; // @[Monitor.scala 312:15:chipyard.TestHarness.RocketConfig.fir@80614.8]
  assign _T_426 = _T_424 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80616.8]
  assign _T_427 = ~_T_426; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80617.8]
  assign _T_428 = io_in_d_bits_opcode == 3'h4; // @[Monitor.scala 315:25:chipyard.TestHarness.RocketConfig.fir@80623.6]
  assign _T_433 = _T_407 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80633.8]
  assign _T_434 = ~_T_433; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80634.8]
  assign _T_439 = io_in_d_bits_param <= 2'h2; // @[Bundles.scala 104:26:chipyard.TestHarness.RocketConfig.fir@80647.8]
  assign _T_441 = _T_439 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80649.8]
  assign _T_442 = ~_T_441; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80650.8]
  assign _T_443 = io_in_d_bits_param != 2'h2; // @[Monitor.scala 320:28:chipyard.TestHarness.RocketConfig.fir@80655.8]
  assign _T_445 = _T_443 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80657.8]
  assign _T_446 = ~_T_445; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80658.8]
  assign _T_456 = io_in_d_bits_opcode == 3'h5; // @[Monitor.scala 325:25:chipyard.TestHarness.RocketConfig.fir@80681.6]
  assign _T_476 = _T_424 | io_in_d_bits_corrupt; // @[Monitor.scala 331:30:chipyard.TestHarness.RocketConfig.fir@80722.8]
  assign _T_478 = _T_476 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80724.8]
  assign _T_479 = ~_T_478; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80725.8]
  assign _T_485 = io_in_d_bits_opcode == 3'h0; // @[Monitor.scala 335:25:chipyard.TestHarness.RocketConfig.fir@80740.6]
  assign _T_502 = io_in_d_bits_opcode == 3'h1; // @[Monitor.scala 343:25:chipyard.TestHarness.RocketConfig.fir@80775.6]
  assign _T_520 = io_in_d_bits_opcode == 3'h2; // @[Monitor.scala 351:25:chipyard.TestHarness.RocketConfig.fir@80811.6]
  assign _T_570 = io_in_b_bits_address ^ 32'h80000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@80889.6]
  assign _T_571 = {1'b0,$signed(_T_570)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@80890.6]
  assign _T_573 = $signed(_T_571) & -33'sh10000000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@80892.6]
  assign _T_574 = $signed(_T_573) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@80893.6]
  assign _T_580 = io_in_b_bits_address & 32'h3f; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@80901.6]
  assign _T_581 = _T_580 == 32'h0; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@80902.6]
  assign _T_673 = _T_574 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81009.8]
  assign _T_674 = ~_T_673; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81010.8]
  assign _T_679 = _T_581 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81023.8]
  assign _T_680 = ~_T_679; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81024.8]
  assign _T_681 = io_in_b_bits_param <= 2'h2; // @[Bundles.scala 104:26:chipyard.TestHarness.RocketConfig.fir@81029.8]
  assign _T_683 = _T_681 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81031.8]
  assign _T_684 = ~_T_683; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81032.8]
  assign _T_829 = io_in_c_bits_source == 3'h4; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@81356.6]
  assign _T_830 = io_in_c_bits_source == 3'h0; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@81357.6]
  assign _T_831 = io_in_c_bits_source == 3'h2; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@81358.6]
  assign _T_833 = _T_829 | _T_830; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@81364.6]
  assign _T_834 = _T_833 | _T_831; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@81365.6]
  assign _T_836 = 13'h3f << io_in_c_bits_size; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@81367.6]
  assign _T_838 = ~_T_836[5:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@81369.6]
  assign _GEN_72 = {{26'd0}, _T_838}; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@81370.6]
  assign _T_839 = io_in_c_bits_address & _GEN_72; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@81370.6]
  assign _T_840 = _T_839 == 32'h0; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@81371.6]
  assign _T_841 = io_in_c_bits_address ^ 32'h80000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@81372.6]
  assign _T_842 = {1'b0,$signed(_T_841)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@81373.6]
  assign _T_844 = $signed(_T_842) & -33'sh10000000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@81375.6]
  assign _T_845 = $signed(_T_844) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@81376.6]
  assign _T_876 = io_in_c_bits_opcode == 3'h4; // @[Monitor.scala 239:25:chipyard.TestHarness.RocketConfig.fir@81413.6]
  assign _T_878 = _T_845 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81416.8]
  assign _T_879 = ~_T_878; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81417.8]
  assign _T_881 = _T_834 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81423.8]
  assign _T_882 = ~_T_881; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81424.8]
  assign _T_883 = io_in_c_bits_size >= 3'h3; // @[Monitor.scala 242:30:chipyard.TestHarness.RocketConfig.fir@81429.8]
  assign _T_885 = _T_883 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81431.8]
  assign _T_886 = ~_T_885; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81432.8]
  assign _T_888 = _T_840 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81438.8]
  assign _T_889 = ~_T_888; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81439.8]
  assign _T_890 = io_in_c_bits_param <= 3'h5; // @[Bundles.scala 122:29:chipyard.TestHarness.RocketConfig.fir@81444.8]
  assign _T_892 = _T_890 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81446.8]
  assign _T_893 = ~_T_892; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81447.8]
  assign _T_894 = ~io_in_c_bits_corrupt; // @[Monitor.scala 245:18:chipyard.TestHarness.RocketConfig.fir@81452.8]
  assign _T_896 = _T_894 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81454.8]
  assign _T_897 = ~_T_896; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81455.8]
  assign _T_898 = io_in_c_bits_opcode == 3'h5; // @[Monitor.scala 248:25:chipyard.TestHarness.RocketConfig.fir@81461.6]
  assign _T_916 = io_in_c_bits_opcode == 3'h6; // @[Monitor.scala 256:25:chipyard.TestHarness.RocketConfig.fir@81501.6]
  assign _T_917 = 3'h6 == io_in_c_bits_size; // @[Parameters.scala 92:48:chipyard.TestHarness.RocketConfig.fir@81503.8]
  assign _T_924 = _T_917 & _T_845; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@81510.8]
  assign _T_927 = _T_924 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81513.8]
  assign _T_928 = ~_T_927; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81514.8]
  assign _T_935 = _T_830 & _T_917; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@81529.8]
  assign _T_941 = _T_935 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81536.8]
  assign _T_942 = ~_T_941; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81537.8]
  assign _T_953 = io_in_c_bits_param <= 3'h2; // @[Bundles.scala 116:29:chipyard.TestHarness.RocketConfig.fir@81564.8]
  assign _T_955 = _T_953 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81566.8]
  assign _T_956 = ~_T_955; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81567.8]
  assign _T_961 = io_in_c_bits_opcode == 3'h7; // @[Monitor.scala 266:25:chipyard.TestHarness.RocketConfig.fir@81581.6]
  assign _T_1002 = io_in_c_bits_opcode == 3'h0; // @[Monitor.scala 275:25:chipyard.TestHarness.RocketConfig.fir@81653.6]
  assign _T_1012 = io_in_c_bits_param == 3'h0; // @[Monitor.scala 279:31:chipyard.TestHarness.RocketConfig.fir@81676.8]
  assign _T_1014 = _T_1012 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81678.8]
  assign _T_1015 = ~_T_1014; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81679.8]
  assign _T_1020 = io_in_c_bits_opcode == 3'h1; // @[Monitor.scala 283:25:chipyard.TestHarness.RocketConfig.fir@81693.6]
  assign _T_1034 = io_in_c_bits_opcode == 3'h2; // @[Monitor.scala 290:25:chipyard.TestHarness.RocketConfig.fir@81725.6]
  assign _T_1052 = io_in_e_bits_sink < 3'h7; // @[Monitor.scala 361:31:chipyard.TestHarness.RocketConfig.fir@81767.6]
  assign _T_1054 = _T_1052 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81769.6]
  assign _T_1055 = ~_T_1054; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81770.6]
  assign _T_1056 = io_in_a_ready & io_in_a_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@81776.4]
  assign _T_1063 = ~io_in_a_bits_opcode[2]; // @[Edges.scala 93:28:chipyard.TestHarness.RocketConfig.fir@81783.4]
  assign _T_1067 = _T_1065 - 3'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@81787.4]
  assign _T_1068 = _T_1065 == 3'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@81788.4]
  assign _T_1081 = ~_T_1068; // @[Monitor.scala 386:22:chipyard.TestHarness.RocketConfig.fir@81804.4]
  assign _T_1082 = io_in_a_valid & _T_1081; // @[Monitor.scala 386:19:chipyard.TestHarness.RocketConfig.fir@81805.4]
  assign _T_1083 = io_in_a_bits_opcode == _T_1076; // @[Monitor.scala 387:32:chipyard.TestHarness.RocketConfig.fir@81807.6]
  assign _T_1085 = _T_1083 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81809.6]
  assign _T_1086 = ~_T_1085; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81810.6]
  assign _T_1087 = io_in_a_bits_param == _T_1077; // @[Monitor.scala 388:32:chipyard.TestHarness.RocketConfig.fir@81815.6]
  assign _T_1089 = _T_1087 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81817.6]
  assign _T_1090 = ~_T_1089; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81818.6]
  assign _T_1091 = io_in_a_bits_size == _T_1078; // @[Monitor.scala 389:32:chipyard.TestHarness.RocketConfig.fir@81823.6]
  assign _T_1093 = _T_1091 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81825.6]
  assign _T_1094 = ~_T_1093; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81826.6]
  assign _T_1095 = io_in_a_bits_source == _T_1079; // @[Monitor.scala 390:32:chipyard.TestHarness.RocketConfig.fir@81831.6]
  assign _T_1097 = _T_1095 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81833.6]
  assign _T_1098 = ~_T_1097; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81834.6]
  assign _T_1099 = io_in_a_bits_address == _T_1080; // @[Monitor.scala 391:32:chipyard.TestHarness.RocketConfig.fir@81839.6]
  assign _T_1101 = _T_1099 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81841.6]
  assign _T_1102 = ~_T_1101; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81842.6]
  assign _T_1104 = _T_1056 & _T_1068; // @[Monitor.scala 393:20:chipyard.TestHarness.RocketConfig.fir@81849.4]
  assign _T_1105 = io_in_d_ready & io_in_d_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@81857.4]
  assign _T_1107 = 13'h3f << io_in_d_bits_size; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@81859.4]
  assign _T_1109 = ~_T_1107[5:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@81861.4]
  assign _T_1115 = _T_1113 - 3'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@81867.4]
  assign _T_1116 = _T_1113 == 3'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@81868.4]
  assign _T_1130 = ~_T_1116; // @[Monitor.scala 538:22:chipyard.TestHarness.RocketConfig.fir@81885.4]
  assign _T_1131 = io_in_d_valid & _T_1130; // @[Monitor.scala 538:19:chipyard.TestHarness.RocketConfig.fir@81886.4]
  assign _T_1132 = io_in_d_bits_opcode == _T_1124; // @[Monitor.scala 539:29:chipyard.TestHarness.RocketConfig.fir@81888.6]
  assign _T_1134 = _T_1132 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@81890.6]
  assign _T_1135 = ~_T_1134; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@81891.6]
  assign _T_1136 = io_in_d_bits_param == _T_1125; // @[Monitor.scala 540:29:chipyard.TestHarness.RocketConfig.fir@81896.6]
  assign _T_1138 = _T_1136 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@81898.6]
  assign _T_1139 = ~_T_1138; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@81899.6]
  assign _T_1140 = io_in_d_bits_size == _T_1126; // @[Monitor.scala 541:29:chipyard.TestHarness.RocketConfig.fir@81904.6]
  assign _T_1142 = _T_1140 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@81906.6]
  assign _T_1143 = ~_T_1142; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@81907.6]
  assign _T_1144 = io_in_d_bits_source == _T_1127; // @[Monitor.scala 542:29:chipyard.TestHarness.RocketConfig.fir@81912.6]
  assign _T_1146 = _T_1144 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@81914.6]
  assign _T_1147 = ~_T_1146; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@81915.6]
  assign _T_1148 = io_in_d_bits_sink == _T_1128; // @[Monitor.scala 543:29:chipyard.TestHarness.RocketConfig.fir@81920.6]
  assign _T_1150 = _T_1148 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@81922.6]
  assign _T_1151 = ~_T_1150; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@81923.6]
  assign _T_1152 = io_in_d_bits_denied == _T_1129; // @[Monitor.scala 544:29:chipyard.TestHarness.RocketConfig.fir@81928.6]
  assign _T_1154 = _T_1152 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@81930.6]
  assign _T_1155 = ~_T_1154; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@81931.6]
  assign _T_1157 = _T_1105 & _T_1116; // @[Monitor.scala 546:20:chipyard.TestHarness.RocketConfig.fir@81938.4]
  assign _T_1158 = io_in_b_ready & io_in_b_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@81947.4]
  assign _T_1169 = _T_1167 - 3'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@81958.4]
  assign _T_1170 = _T_1167 == 3'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@81959.4]
  assign _T_1183 = ~_T_1170; // @[Monitor.scala 409:22:chipyard.TestHarness.RocketConfig.fir@81975.4]
  assign _T_1184 = io_in_b_valid & _T_1183; // @[Monitor.scala 409:19:chipyard.TestHarness.RocketConfig.fir@81976.4]
  assign _T_1189 = io_in_b_bits_param == _T_1179; // @[Monitor.scala 411:32:chipyard.TestHarness.RocketConfig.fir@81986.6]
  assign _T_1191 = _T_1189 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81988.6]
  assign _T_1192 = ~_T_1191; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81989.6]
  assign _T_1201 = io_in_b_bits_address == _T_1182; // @[Monitor.scala 414:32:chipyard.TestHarness.RocketConfig.fir@82010.6]
  assign _T_1203 = _T_1201 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@82012.6]
  assign _T_1204 = ~_T_1203; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@82013.6]
  assign _T_1206 = _T_1158 & _T_1170; // @[Monitor.scala 416:20:chipyard.TestHarness.RocketConfig.fir@82020.4]
  assign _T_1207 = io_in_c_ready & io_in_c_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@82028.4]
  assign _T_1217 = _T_1215 - 3'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@82038.4]
  assign _T_1218 = _T_1215 == 3'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@82039.4]
  assign _T_1231 = ~_T_1218; // @[Monitor.scala 514:22:chipyard.TestHarness.RocketConfig.fir@82055.4]
  assign _T_1232 = io_in_c_valid & _T_1231; // @[Monitor.scala 514:19:chipyard.TestHarness.RocketConfig.fir@82056.4]
  assign _T_1233 = io_in_c_bits_opcode == _T_1226; // @[Monitor.scala 515:32:chipyard.TestHarness.RocketConfig.fir@82058.6]
  assign _T_1235 = _T_1233 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@82060.6]
  assign _T_1236 = ~_T_1235; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@82061.6]
  assign _T_1237 = io_in_c_bits_param == _T_1227; // @[Monitor.scala 516:32:chipyard.TestHarness.RocketConfig.fir@82066.6]
  assign _T_1239 = _T_1237 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@82068.6]
  assign _T_1240 = ~_T_1239; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@82069.6]
  assign _T_1241 = io_in_c_bits_size == _T_1228; // @[Monitor.scala 517:32:chipyard.TestHarness.RocketConfig.fir@82074.6]
  assign _T_1243 = _T_1241 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@82076.6]
  assign _T_1244 = ~_T_1243; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@82077.6]
  assign _T_1245 = io_in_c_bits_source == _T_1229; // @[Monitor.scala 518:32:chipyard.TestHarness.RocketConfig.fir@82082.6]
  assign _T_1247 = _T_1245 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@82084.6]
  assign _T_1248 = ~_T_1247; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@82085.6]
  assign _T_1249 = io_in_c_bits_address == _T_1230; // @[Monitor.scala 519:32:chipyard.TestHarness.RocketConfig.fir@82090.6]
  assign _T_1251 = _T_1249 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@82092.6]
  assign _T_1252 = ~_T_1251; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@82093.6]
  assign _T_1254 = _T_1207 & _T_1218; // @[Monitor.scala 521:20:chipyard.TestHarness.RocketConfig.fir@82100.4]
  assign _T_1266 = _T_1264 - 3'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@82122.4]
  assign a_first = _T_1264 == 3'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@82123.4]
  assign _T_1284 = _T_1282 - 3'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@82144.4]
  assign d_first = _T_1282 == 3'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@82145.4]
  assign _GEN_73 = {io_in_d_bits_source, 2'h0}; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@82164.4]
  assign _T_1292 = {{1'd0}, _GEN_73}; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@82164.4]
  assign _T_1293 = inflight_opcodes >> _T_1292; // @[Monitor.scala 629:44:chipyard.TestHarness.RocketConfig.fir@82165.4]
  assign _T_1297 = 16'h10 - 16'h1; // @[Monitor.scala 606:57:chipyard.TestHarness.RocketConfig.fir@82169.4]
  assign _GEN_74 = {{4'd0}, _T_1297}; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@82170.4]
  assign _T_1298 = _T_1293 & _GEN_74; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@82170.4]
  assign _T_1299 = {{1'd0}, _T_1298[19:1]}; // @[Monitor.scala 629:152:chipyard.TestHarness.RocketConfig.fir@82171.4]
  assign _T_1301 = inflight_sizes >> _T_1292; // @[Monitor.scala 633:40:chipyard.TestHarness.RocketConfig.fir@82176.4]
  assign _T_1306 = _T_1301 & _GEN_74; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@82181.4]
  assign _T_1307 = {{1'd0}, _T_1306[19:1]}; // @[Monitor.scala 633:144:chipyard.TestHarness.RocketConfig.fir@82182.4]
  assign _T_1311 = _T_1056 & a_first; // @[Monitor.scala 643:27:chipyard.TestHarness.RocketConfig.fir@82207.4]
  assign _T_1313 = 8'h1 << io_in_a_bits_source; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@82210.6]
  assign _T_1314 = {io_in_a_bits_opcode, 1'h0}; // @[Monitor.scala 645:53:chipyard.TestHarness.RocketConfig.fir@82212.6]
  assign _T_1315 = _T_1314 | 4'h1; // @[Monitor.scala 645:61:chipyard.TestHarness.RocketConfig.fir@82213.6]
  assign _T_1316 = {io_in_a_bits_size, 1'h0}; // @[Monitor.scala 646:49:chipyard.TestHarness.RocketConfig.fir@82215.6]
  assign _T_1317 = _T_1316 | 4'h1; // @[Monitor.scala 646:57:chipyard.TestHarness.RocketConfig.fir@82216.6]
  assign _GEN_79 = {io_in_a_bits_source, 2'h0}; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@82218.6]
  assign _T_1318 = {{1'd0}, _GEN_79}; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@82218.6]
  assign a_opcodes_set_interm = _T_1311 ? _T_1315 : 4'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@82209.4]
  assign _GEN_80 = {{63'd0}, a_opcodes_set_interm}; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@82219.6]
  assign _T_1319 = _GEN_80 << _T_1318; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@82219.6]
  assign a_sizes_set_interm = _T_1311 ? _T_1317 : 4'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@82209.4]
  assign _GEN_82 = {{63'd0}, a_sizes_set_interm}; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@82222.6]
  assign _T_1321 = _GEN_82 << _T_1318; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@82222.6]
  assign _T_1322 = inflight >> io_in_a_bits_source; // @[Monitor.scala 649:26:chipyard.TestHarness.RocketConfig.fir@82224.6]
  assign _T_1324 = ~_T_1322[0]; // @[Monitor.scala 649:17:chipyard.TestHarness.RocketConfig.fir@82226.6]
  assign _T_1326 = _T_1324 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@82228.6]
  assign _T_1327 = ~_T_1326; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@82229.6]
  assign _GEN_27 = _T_1311 ? _T_1313 : 8'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@82209.4]
  assign _GEN_30 = _T_1311 ? _T_1319 : 67'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@82209.4]
  assign _GEN_31 = _T_1311 ? _T_1321 : 67'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@82209.4]
  assign _T_1330 = _T_1105 & d_first; // @[Monitor.scala 660:27:chipyard.TestHarness.RocketConfig.fir@82243.4]
  assign _T_1332 = ~_T_408; // @[Monitor.scala 660:75:chipyard.TestHarness.RocketConfig.fir@82245.4]
  assign _T_1333 = _T_1330 & _T_1332; // @[Monitor.scala 660:72:chipyard.TestHarness.RocketConfig.fir@82246.4]
  assign _T_1334 = 8'h1 << io_in_d_bits_source; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@82248.6]
  assign _GEN_84 = {{63'd0}, _T_1297}; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@82255.6]
  assign _T_1340 = _GEN_84 << _T_1292; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@82255.6]
  assign _GEN_32 = _T_1333 ? _T_1334 : 8'h0; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@82247.4]
  assign _GEN_33 = _T_1333 ? _T_1340 : 79'h0; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@82247.4]
  assign _T_1347 = io_in_d_valid & d_first; // @[Monitor.scala 665:26:chipyard.TestHarness.RocketConfig.fir@82265.4]
  assign _T_1350 = _T_1347 & _T_1332; // @[Monitor.scala 665:71:chipyard.TestHarness.RocketConfig.fir@82268.4]
  assign _T_1351 = inflight >> io_in_d_bits_source; // @[Monitor.scala 666:25:chipyard.TestHarness.RocketConfig.fir@82270.6]
  assign _T_1353 = io_in_a_bits_source == io_in_d_bits_source; // @[Monitor.scala 666:93:chipyard.TestHarness.RocketConfig.fir@82272.6]
  assign _T_1354 = io_in_a_valid & _T_1353; // @[Monitor.scala 666:68:chipyard.TestHarness.RocketConfig.fir@82273.6]
  assign _T_1355 = io_in_a_bits_size == io_in_d_bits_size; // @[Monitor.scala 666:142:chipyard.TestHarness.RocketConfig.fir@82274.6]
  assign _T_1356 = _T_1354 & _T_1355; // @[Monitor.scala 666:119:chipyard.TestHarness.RocketConfig.fir@82275.6]
  assign _T_1357 = _T_1356 & a_first; // @[Monitor.scala 666:166:chipyard.TestHarness.RocketConfig.fir@82276.6]
  assign _T_1358 = _T_1351[0] | _T_1357; // @[Monitor.scala 666:49:chipyard.TestHarness.RocketConfig.fir@82277.6]
  assign _T_1360 = _T_1358 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@82279.6]
  assign _T_1361 = ~_T_1360; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@82280.6]
  assign a_opcode_lookup = _T_1299[3:0]; // @[:chipyard.TestHarness.RocketConfig.fir@82162.4 :chipyard.TestHarness.RocketConfig.fir@82163.4 Monitor.scala 629:21:chipyard.TestHarness.RocketConfig.fir@82172.4]
  assign _GEN_37 = 3'h2 == a_opcode_lookup[2:0] ? 3'h1 : 3'h0; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@82286.6]
  assign _GEN_38 = 3'h3 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_37; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@82286.6]
  assign _GEN_39 = 3'h4 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_38; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@82286.6]
  assign _GEN_40 = 3'h5 == a_opcode_lookup[2:0] ? 3'h2 : _GEN_39; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@82286.6]
  assign _GEN_41 = 3'h6 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_40; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@82286.6]
  assign _GEN_42 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_41; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@82286.6]
  assign _T_1363 = io_in_d_bits_opcode == _GEN_42; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@82286.6]
  assign _GEN_49 = 3'h6 == a_opcode_lookup[2:0] ? 3'h5 : _GEN_40; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@82288.6]
  assign _GEN_50 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_49; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@82288.6]
  assign _T_1365 = io_in_d_bits_opcode == _GEN_50; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@82288.6]
  assign _T_1366 = _T_1363 | _T_1365; // @[Monitor.scala 667:71:chipyard.TestHarness.RocketConfig.fir@82289.6]
  assign _GEN_53 = 3'h2 == io_in_a_bits_opcode ? 3'h1 : 3'h0; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@82290.6]
  assign _GEN_54 = 3'h3 == io_in_a_bits_opcode ? 3'h1 : _GEN_53; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@82290.6]
  assign _GEN_55 = 3'h4 == io_in_a_bits_opcode ? 3'h1 : _GEN_54; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@82290.6]
  assign _GEN_56 = 3'h5 == io_in_a_bits_opcode ? 3'h2 : _GEN_55; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@82290.6]
  assign _GEN_57 = 3'h6 == io_in_a_bits_opcode ? 3'h4 : _GEN_56; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@82290.6]
  assign _GEN_58 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_57; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@82290.6]
  assign _T_1367 = io_in_d_bits_opcode == _GEN_58; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@82290.6]
  assign _GEN_65 = 3'h6 == io_in_a_bits_opcode ? 3'h5 : _GEN_56; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@82291.6]
  assign _GEN_66 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_65; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@82291.6]
  assign _T_1368 = io_in_d_bits_opcode == _GEN_66; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@82291.6]
  assign _T_1369 = _T_1367 | _T_1368; // @[Monitor.scala 668:99:chipyard.TestHarness.RocketConfig.fir@82292.6]
  assign _T_1370 = io_in_a_valid & _T_1369; // @[Monitor.scala 668:34:chipyard.TestHarness.RocketConfig.fir@82293.6]
  assign _T_1371 = _T_1366 | _T_1370; // @[Monitor.scala 668:15:chipyard.TestHarness.RocketConfig.fir@82294.6]
  assign _T_1373 = _T_1371 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@82296.6]
  assign _T_1374 = ~_T_1373; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@82297.6]
  assign a_size_lookup = _T_1307[3:0]; // @[:chipyard.TestHarness.RocketConfig.fir@82173.4 :chipyard.TestHarness.RocketConfig.fir@82174.4 Monitor.scala 633:19:chipyard.TestHarness.RocketConfig.fir@82183.4]
  assign _GEN_87 = {{1'd0}, io_in_d_bits_size}; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@82302.6]
  assign _T_1375 = _GEN_87 == a_size_lookup; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@82302.6]
  assign _T_1377 = io_in_a_valid & _T_1355; // @[Monitor.scala 670:72:chipyard.TestHarness.RocketConfig.fir@82304.6]
  assign _T_1378 = _T_1375 | _T_1377; // @[Monitor.scala 670:53:chipyard.TestHarness.RocketConfig.fir@82305.6]
  assign _T_1380 = _T_1378 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@82307.6]
  assign _T_1381 = ~_T_1380; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@82308.6]
  assign _T_1383 = _T_1347 & a_first; // @[Monitor.scala 672:36:chipyard.TestHarness.RocketConfig.fir@82315.4]
  assign _T_1384 = _T_1383 & io_in_a_valid; // @[Monitor.scala 672:47:chipyard.TestHarness.RocketConfig.fir@82316.4]
  assign _T_1386 = _T_1384 & _T_1353; // @[Monitor.scala 672:65:chipyard.TestHarness.RocketConfig.fir@82318.4]
  assign _T_1388 = _T_1386 & _T_1332; // @[Monitor.scala 672:116:chipyard.TestHarness.RocketConfig.fir@82320.4]
  assign _T_1389 = ~io_in_d_ready; // @[Monitor.scala 673:15:chipyard.TestHarness.RocketConfig.fir@82322.6]
  assign _T_1390 = _T_1389 | io_in_a_ready; // @[Monitor.scala 673:32:chipyard.TestHarness.RocketConfig.fir@82323.6]
  assign _T_1392 = _T_1390 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@82325.6]
  assign _T_1393 = ~_T_1392; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@82326.6]
  assign a_set = _GEN_27[4:0]; // @[:chipyard.TestHarness.RocketConfig.fir@82156.4 :chipyard.TestHarness.RocketConfig.fir@82157.4 Monitor.scala 644:13:chipyard.TestHarness.RocketConfig.fir@82211.6]
  assign d_clr = _GEN_32[4:0]; // @[:chipyard.TestHarness.RocketConfig.fir@82235.4 :chipyard.TestHarness.RocketConfig.fir@82236.4 Monitor.scala 661:13:chipyard.TestHarness.RocketConfig.fir@82249.6]
  assign _T_1394 = a_set != d_clr; // @[Monitor.scala 677:20:chipyard.TestHarness.RocketConfig.fir@82332.4]
  assign _T_1395 = |a_set; // @[Monitor.scala 677:40:chipyard.TestHarness.RocketConfig.fir@82333.4]
  assign _T_1396 = ~_T_1395; // @[Monitor.scala 677:33:chipyard.TestHarness.RocketConfig.fir@82334.4]
  assign _T_1397 = _T_1394 | _T_1396; // @[Monitor.scala 677:30:chipyard.TestHarness.RocketConfig.fir@82335.4]
  assign _T_1399 = _T_1397 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@82337.4]
  assign _T_1400 = ~_T_1399; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@82338.4]
  assign _T_1401 = inflight | a_set; // @[Monitor.scala 680:27:chipyard.TestHarness.RocketConfig.fir@82343.4]
  assign _T_1402 = ~d_clr; // @[Monitor.scala 680:38:chipyard.TestHarness.RocketConfig.fir@82344.4]
  assign _T_1403 = _T_1401 & _T_1402; // @[Monitor.scala 680:36:chipyard.TestHarness.RocketConfig.fir@82345.4]
  assign a_opcodes_set = _GEN_30[19:0]; // @[:chipyard.TestHarness.RocketConfig.fir@82158.4 :chipyard.TestHarness.RocketConfig.fir@82159.4 Monitor.scala 647:21:chipyard.TestHarness.RocketConfig.fir@82220.6]
  assign _T_1404 = inflight_opcodes | a_opcodes_set; // @[Monitor.scala 681:43:chipyard.TestHarness.RocketConfig.fir@82347.4]
  assign d_opcodes_clr = _GEN_33[19:0]; // @[:chipyard.TestHarness.RocketConfig.fir@82237.4 :chipyard.TestHarness.RocketConfig.fir@82238.4 Monitor.scala 662:21:chipyard.TestHarness.RocketConfig.fir@82256.6]
  assign _T_1405 = ~d_opcodes_clr; // @[Monitor.scala 681:62:chipyard.TestHarness.RocketConfig.fir@82348.4]
  assign _T_1406 = _T_1404 & _T_1405; // @[Monitor.scala 681:60:chipyard.TestHarness.RocketConfig.fir@82349.4]
  assign a_sizes_set = _GEN_31[19:0]; // @[:chipyard.TestHarness.RocketConfig.fir@82160.4 :chipyard.TestHarness.RocketConfig.fir@82161.4 Monitor.scala 648:19:chipyard.TestHarness.RocketConfig.fir@82223.6]
  assign _T_1407 = inflight_sizes | a_sizes_set; // @[Monitor.scala 682:39:chipyard.TestHarness.RocketConfig.fir@82351.4]
  assign _T_1409 = _T_1407 & _T_1405; // @[Monitor.scala 682:54:chipyard.TestHarness.RocketConfig.fir@82353.4]
  assign _T_1411 = |inflight; // @[Monitor.scala 687:26:chipyard.TestHarness.RocketConfig.fir@82358.4]
  assign _T_1412 = ~_T_1411; // @[Monitor.scala 687:16:chipyard.TestHarness.RocketConfig.fir@82359.4]
  assign _T_1413 = plusarg_reader_out == 32'h0; // @[Monitor.scala 687:39:chipyard.TestHarness.RocketConfig.fir@82360.4]
  assign _T_1414 = _T_1412 | _T_1413; // @[Monitor.scala 687:30:chipyard.TestHarness.RocketConfig.fir@82361.4]
  assign _T_1415 = _T_1410 < plusarg_reader_out; // @[Monitor.scala 687:59:chipyard.TestHarness.RocketConfig.fir@82362.4]
  assign _T_1416 = _T_1414 | _T_1415; // @[Monitor.scala 687:47:chipyard.TestHarness.RocketConfig.fir@82363.4]
  assign _T_1418 = _T_1416 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@82365.4]
  assign _T_1419 = ~_T_1418; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@82366.4]
  assign _T_1421 = _T_1410 + 32'h1; // @[Monitor.scala 689:26:chipyard.TestHarness.RocketConfig.fir@82372.4]
  assign _T_1424 = _T_1056 | _T_1105; // @[Monitor.scala 690:27:chipyard.TestHarness.RocketConfig.fir@82376.4]
  assign _T_1436 = _T_1434 - 3'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@82391.4]
  assign _T_1437 = _T_1434 == 3'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@82392.4]
  assign _T_1447 = _T_1105 & _T_1437; // @[Monitor.scala 700:27:chipyard.TestHarness.RocketConfig.fir@82406.4]
  assign _T_1450 = ~io_in_d_bits_opcode[1]; // @[Edges.scala 72:43:chipyard.TestHarness.RocketConfig.fir@82409.4]
  assign _T_1451 = io_in_d_bits_opcode[2] & _T_1450; // @[Edges.scala 72:40:chipyard.TestHarness.RocketConfig.fir@82410.4]
  assign _T_1452 = _T_1447 & _T_1451; // @[Monitor.scala 700:38:chipyard.TestHarness.RocketConfig.fir@82411.4]
  assign _T_1453 = 8'h1 << io_in_d_bits_sink; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@82413.6]
  assign _T_1454 = _T_1425 >> io_in_d_bits_sink; // @[Monitor.scala 702:23:chipyard.TestHarness.RocketConfig.fir@82415.6]
  assign _T_1456 = ~_T_1454[0]; // @[Monitor.scala 702:14:chipyard.TestHarness.RocketConfig.fir@82417.6]
  assign _T_1458 = _T_1456 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@82419.6]
  assign _T_1459 = ~_T_1458; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@82420.6]
  assign _GEN_69 = _T_1452 ? _T_1453 : 8'h0; // @[Monitor.scala 700:72:chipyard.TestHarness.RocketConfig.fir@82412.4]
  assign _T_1464 = 8'h1 << io_in_e_bits_sink; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@82432.6]
  assign _T_1465 = _GEN_69[6:0] | _T_1425; // @[Monitor.scala 708:24:chipyard.TestHarness.RocketConfig.fir@82434.6]
  assign _T_1466 = _T_1465 >> io_in_e_bits_sink; // @[Monitor.scala 708:35:chipyard.TestHarness.RocketConfig.fir@82435.6]
  assign _T_1469 = _T_1466[0] | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@82438.6]
  assign _T_1470 = ~_T_1469; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@82439.6]
  assign _GEN_70 = io_in_e_valid ? _T_1464 : 8'h0; // @[Monitor.scala 706:73:chipyard.TestHarness.RocketConfig.fir@82431.4]
  assign _T_1471 = _T_1425 | _GEN_69[6:0]; // @[Monitor.scala 713:27:chipyard.TestHarness.RocketConfig.fir@82445.4]
  assign _T_1472 = ~_GEN_70[6:0]; // @[Monitor.scala 713:38:chipyard.TestHarness.RocketConfig.fir@82446.4]
  assign _T_1473 = _T_1471 & _T_1472; // @[Monitor.scala 713:36:chipyard.TestHarness.RocketConfig.fir@82447.4]
  assign _GEN_88 = io_in_a_valid & _T_109; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80065.10]
  assign _GEN_104 = io_in_a_valid & _T_159; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80154.10]
  assign _GEN_122 = io_in_a_valid & _T_213; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80253.10]
  assign _GEN_134 = io_in_a_valid & _T_246; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80312.10]
  assign _GEN_144 = io_in_a_valid & _T_275; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80363.10]
  assign _GEN_154 = io_in_a_valid & _T_306; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80416.10]
  assign _GEN_164 = io_in_a_valid & _T_335; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80467.10]
  assign _GEN_174 = io_in_a_valid & _T_364; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80518.10]
  assign _GEN_186 = io_in_d_valid & _T_408; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80587.10]
  assign _GEN_196 = io_in_d_valid & _T_428; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80629.10]
  assign _GEN_208 = io_in_d_valid & _T_456; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80687.10]
  assign _GEN_220 = io_in_d_valid & _T_485; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80746.10]
  assign _GEN_226 = io_in_d_valid & _T_502; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80781.10]
  assign _GEN_232 = io_in_d_valid & _T_520; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80817.10]
  assign _GEN_238 = io_in_c_valid & _T_876; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81419.10]
  assign _GEN_250 = io_in_c_valid & _T_898; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81467.10]
  assign _GEN_260 = io_in_c_valid & _T_916; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81516.10]
  assign _GEN_274 = io_in_c_valid & _T_961; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81596.10]
  assign _GEN_286 = io_in_c_valid & _T_1002; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81659.10]
  assign _GEN_296 = io_in_c_valid & _T_1020; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81699.10]
  assign _GEN_304 = io_in_c_valid & _T_1034; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81731.10]
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
  _T_1065 = _RAND_0[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_1076 = _RAND_1[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_1077 = _RAND_2[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_1078 = _RAND_3[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_1079 = _RAND_4[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_1080 = _RAND_5[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  _T_1113 = _RAND_6[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  _T_1124 = _RAND_7[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  _T_1125 = _RAND_8[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  _T_1126 = _RAND_9[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  _T_1127 = _RAND_10[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  _T_1128 = _RAND_11[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  _T_1129 = _RAND_12[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  _T_1167 = _RAND_13[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  _T_1179 = _RAND_14[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  _T_1182 = _RAND_15[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  _T_1215 = _RAND_16[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  _T_1226 = _RAND_17[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  _T_1227 = _RAND_18[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  _T_1228 = _RAND_19[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  _T_1229 = _RAND_20[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  _T_1230 = _RAND_21[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{`RANDOM}};
  inflight = _RAND_22[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{`RANDOM}};
  inflight_opcodes = _RAND_23[19:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{`RANDOM}};
  inflight_sizes = _RAND_24[19:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{`RANDOM}};
  _T_1264 = _RAND_25[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{`RANDOM}};
  _T_1282 = _RAND_26[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {1{`RANDOM}};
  _T_1410 = _RAND_27[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {1{`RANDOM}};
  _T_1425 = _RAND_28[6:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {1{`RANDOM}};
  _T_1434 = _RAND_29[2:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      _T_1065 <= 3'h0;
    end else if (_T_1056) begin
      if (_T_1068) begin
        if (_T_1063) begin
          _T_1065 <= _T_13[5:3];
        end else begin
          _T_1065 <= 3'h0;
        end
      end else begin
        _T_1065 <= _T_1067;
      end
    end
    if (_T_1104) begin
      _T_1076 <= io_in_a_bits_opcode;
    end
    if (_T_1104) begin
      _T_1077 <= io_in_a_bits_param;
    end
    if (_T_1104) begin
      _T_1078 <= io_in_a_bits_size;
    end
    if (_T_1104) begin
      _T_1079 <= io_in_a_bits_source;
    end
    if (_T_1104) begin
      _T_1080 <= io_in_a_bits_address;
    end
    if (reset) begin
      _T_1113 <= 3'h0;
    end else if (_T_1105) begin
      if (_T_1116) begin
        if (io_in_d_bits_opcode[0]) begin
          _T_1113 <= _T_1109[5:3];
        end else begin
          _T_1113 <= 3'h0;
        end
      end else begin
        _T_1113 <= _T_1115;
      end
    end
    if (_T_1157) begin
      _T_1124 <= io_in_d_bits_opcode;
    end
    if (_T_1157) begin
      _T_1125 <= io_in_d_bits_param;
    end
    if (_T_1157) begin
      _T_1126 <= io_in_d_bits_size;
    end
    if (_T_1157) begin
      _T_1127 <= io_in_d_bits_source;
    end
    if (_T_1157) begin
      _T_1128 <= io_in_d_bits_sink;
    end
    if (_T_1157) begin
      _T_1129 <= io_in_d_bits_denied;
    end
    if (reset) begin
      _T_1167 <= 3'h0;
    end else if (_T_1158) begin
      if (_T_1170) begin
        _T_1167 <= 3'h0;
      end else begin
        _T_1167 <= _T_1169;
      end
    end
    if (_T_1206) begin
      _T_1179 <= io_in_b_bits_param;
    end
    if (_T_1206) begin
      _T_1182 <= io_in_b_bits_address;
    end
    if (reset) begin
      _T_1215 <= 3'h0;
    end else if (_T_1207) begin
      if (_T_1218) begin
        if (io_in_c_bits_opcode[0]) begin
          _T_1215 <= _T_838[5:3];
        end else begin
          _T_1215 <= 3'h0;
        end
      end else begin
        _T_1215 <= _T_1217;
      end
    end
    if (_T_1254) begin
      _T_1226 <= io_in_c_bits_opcode;
    end
    if (_T_1254) begin
      _T_1227 <= io_in_c_bits_param;
    end
    if (_T_1254) begin
      _T_1228 <= io_in_c_bits_size;
    end
    if (_T_1254) begin
      _T_1229 <= io_in_c_bits_source;
    end
    if (_T_1254) begin
      _T_1230 <= io_in_c_bits_address;
    end
    if (reset) begin
      inflight <= 5'h0;
    end else begin
      inflight <= _T_1403;
    end
    if (reset) begin
      inflight_opcodes <= 20'h0;
    end else begin
      inflight_opcodes <= _T_1406;
    end
    if (reset) begin
      inflight_sizes <= 20'h0;
    end else begin
      inflight_sizes <= _T_1409;
    end
    if (reset) begin
      _T_1264 <= 3'h0;
    end else if (_T_1056) begin
      if (a_first) begin
        if (_T_1063) begin
          _T_1264 <= _T_13[5:3];
        end else begin
          _T_1264 <= 3'h0;
        end
      end else begin
        _T_1264 <= _T_1266;
      end
    end
    if (reset) begin
      _T_1282 <= 3'h0;
    end else if (_T_1105) begin
      if (d_first) begin
        if (io_in_d_bits_opcode[0]) begin
          _T_1282 <= _T_1109[5:3];
        end else begin
          _T_1282 <= 3'h0;
        end
      end else begin
        _T_1282 <= _T_1284;
      end
    end
    if (reset) begin
      _T_1410 <= 32'h0;
    end else if (_T_1424) begin
      _T_1410 <= 32'h0;
    end else begin
      _T_1410 <= _T_1421;
    end
    if (reset) begin
      _T_1425 <= 7'h0;
    end else begin
      _T_1425 <= _T_1473;
    end
    if (reset) begin
      _T_1434 <= 3'h0;
    end else if (_T_1105) begin
      if (_T_1437) begin
        if (io_in_d_bits_opcode[0]) begin
          _T_1434 <= _T_1109[5:3];
        end else begin
          _T_1434 <= 3'h0;
        end
      end else begin
        _T_1434 <= _T_1436;
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_88 & _T_121) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock type unsupported by manager (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80065.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_88 & _T_121) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80066.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_88 & _T_135) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock from a client which does not support Probe (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80088.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_88 & _T_135) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80089.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock carries invalid source ID (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80095.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80096.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_88 & _T_142) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock smaller than a beat (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80103.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_88 & _T_142) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80104.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_88 & _T_145) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock address not aligned to size (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80110.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_88 & _T_145) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80111.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_88 & _T_149) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock carries invalid grow param (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80118.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_88 & _T_149) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80119.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_88 & _T_154) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock contains invalid mask (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80127.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_88 & _T_154) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80128.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock is corrupt (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80135.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80136.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_104 & _T_121) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm type unsupported by manager (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80154.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_104 & _T_121) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80155.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_104 & _T_135) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm from a client which does not support Probe (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80177.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_104 & _T_135) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80178.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_104 & _T_138) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm carries invalid source ID (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80184.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_104 & _T_138) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80185.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_104 & _T_142) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm smaller than a beat (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80192.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_104 & _T_142) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80193.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_104 & _T_145) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm address not aligned to size (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80199.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_104 & _T_145) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80200.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_104 & _T_149) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm carries invalid grow param (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80207.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_104 & _T_149) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80208.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_104 & _T_203) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm requests NtoB (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80215.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_104 & _T_203) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80216.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_104 & _T_154) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm contains invalid mask (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80224.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_104 & _T_154) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80225.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_104 & _T_158) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm is corrupt (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80232.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_104 & _T_158) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80233.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_122 & _T_227) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Get type unsupported by manager (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80253.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_122 & _T_227) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80254.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_122 & _T_138) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get carries invalid source ID (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80260.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_122 & _T_138) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80261.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_122 & _T_145) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get address not aligned to size (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80267.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_122 & _T_145) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80268.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_122 & _T_237) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get carries invalid param (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80275.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_122 & _T_237) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80276.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_122 & _T_241) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get contains invalid mask (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80283.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_122 & _T_241) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80284.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_122 & _T_158) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get is corrupt (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80291.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_122 & _T_158) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80292.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_134 & _T_227) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutFull type unsupported by manager (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80312.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_134 & _T_227) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80313.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_134 & _T_138) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull carries invalid source ID (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80319.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_134 & _T_138) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80320.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_134 & _T_145) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull address not aligned to size (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80326.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_134 & _T_145) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80327.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_134 & _T_237) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull carries invalid param (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80334.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_134 & _T_237) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80335.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_134 & _T_241) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull contains invalid mask (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80342.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_134 & _T_241) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80343.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_144 & _T_227) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutPartial type unsupported by manager (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80363.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_144 & _T_227) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80364.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_144 & _T_138) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial carries invalid source ID (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80370.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_144 & _T_138) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80371.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_144 & _T_145) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial address not aligned to size (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80377.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_144 & _T_145) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80378.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_144 & _T_237) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial carries invalid param (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80385.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_144 & _T_237) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80386.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_144 & _T_305) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial contains invalid mask (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80395.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_144 & _T_305) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80396.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_154 & _T_320) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Arithmetic type unsupported by manager (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80416.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_154 & _T_320) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80417.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_154 & _T_138) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic carries invalid source ID (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80423.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_154 & _T_138) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80424.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_154 & _T_145) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic address not aligned to size (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80430.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_154 & _T_145) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80431.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_154 & _T_330) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic carries invalid opcode param (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80438.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_154 & _T_330) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80439.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_154 & _T_241) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic contains invalid mask (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80446.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_154 & _T_241) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80447.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_164 & _T_320) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Logical type unsupported by manager (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80467.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_164 & _T_320) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80468.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_164 & _T_138) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical carries invalid source ID (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80474.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_164 & _T_138) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80475.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_164 & _T_145) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical address not aligned to size (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80481.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_164 & _T_145) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80482.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_164 & _T_359) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical carries invalid opcode param (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80489.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_164 & _T_359) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80490.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_164 & _T_241) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical contains invalid mask (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80497.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_164 & _T_241) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80498.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_174 & _T_227) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Hint type unsupported by manager (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80518.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_174 & _T_227) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80519.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_174 & _T_138) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint carries invalid source ID (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80525.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_174 & _T_138) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80526.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_174 & _T_145) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint address not aligned to size (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80532.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_174 & _T_145) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80533.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_174 & _T_388) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint carries invalid opcode param (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80540.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_174 & _T_388) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80541.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_174 & _T_241) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint contains invalid mask (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80548.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_174 & _T_241) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80549.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_174 & _T_158) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint is corrupt (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80556.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_174 & _T_158) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@80557.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_in_d_valid & _T_400) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel has invalid opcode (connected at Configs.scala:112:13)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80567.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (io_in_d_valid & _T_400) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80568.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_186 & _T_411) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck carries invalid source ID (connected at Configs.scala:112:13)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80587.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_186 & _T_411) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80588.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_186 & _T_415) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck smaller than a beat (connected at Configs.scala:112:13)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80595.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_186 & _T_415) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80596.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_186 & _T_419) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseeAck carries invalid param (connected at Configs.scala:112:13)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80603.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_186 & _T_419) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80604.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_186 & _T_423) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck is corrupt (connected at Configs.scala:112:13)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80611.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_186 & _T_423) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80612.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_186 & _T_427) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck is denied (connected at Configs.scala:112:13)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80619.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_186 & _T_427) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80620.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_196 & _T_411) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid source ID (connected at Configs.scala:112:13)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80629.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_196 & _T_411) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80630.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_196 & _T_434) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid sink ID (connected at Configs.scala:112:13)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80636.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_196 & _T_434) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80637.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_196 & _T_415) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant smaller than a beat (connected at Configs.scala:112:13)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80644.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_196 & _T_415) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80645.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_196 & _T_442) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid cap param (connected at Configs.scala:112:13)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80652.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_196 & _T_442) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80653.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_196 & _T_446) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries toN param (connected at Configs.scala:112:13)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80660.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_196 & _T_446) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80661.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_196 & _T_423) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant is corrupt (connected at Configs.scala:112:13)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80668.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_196 & _T_423) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80669.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_208 & _T_411) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid source ID (connected at Configs.scala:112:13)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80687.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_208 & _T_411) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80688.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_208 & _T_434) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid sink ID (connected at Configs.scala:112:13)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80694.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_208 & _T_434) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80695.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_208 & _T_415) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData smaller than a beat (connected at Configs.scala:112:13)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80702.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_208 & _T_415) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80703.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_208 & _T_442) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid cap param (connected at Configs.scala:112:13)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80710.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_208 & _T_442) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80711.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_208 & _T_446) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries toN param (connected at Configs.scala:112:13)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80718.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_208 & _T_446) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80719.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_208 & _T_479) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData is denied but not corrupt (connected at Configs.scala:112:13)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80727.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_208 & _T_479) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80728.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_220 & _T_411) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck carries invalid source ID (connected at Configs.scala:112:13)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80746.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_220 & _T_411) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80747.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_220 & _T_419) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck carries invalid param (connected at Configs.scala:112:13)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80754.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_220 & _T_419) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80755.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_220 & _T_423) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck is corrupt (connected at Configs.scala:112:13)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80762.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_220 & _T_423) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80763.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_226 & _T_411) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData carries invalid source ID (connected at Configs.scala:112:13)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80781.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_226 & _T_411) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80782.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_226 & _T_419) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData carries invalid param (connected at Configs.scala:112:13)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80789.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_226 & _T_419) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80790.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_226 & _T_479) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData is denied but not corrupt (connected at Configs.scala:112:13)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80798.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_226 & _T_479) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80799.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_232 & _T_411) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck carries invalid source ID (connected at Configs.scala:112:13)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80817.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_232 & _T_411) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80818.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_232 & _T_419) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck carries invalid param (connected at Configs.scala:112:13)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80825.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_232 & _T_419) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80826.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_232 & _T_423) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck is corrupt (connected at Configs.scala:112:13)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80833.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_232 & _T_423) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@80834.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_in_b_valid & _T_674) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel Probe carries unmanaged address (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81012.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (io_in_b_valid & _T_674) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81013.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_in_b_valid & _T_680) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel Probe address not aligned to size (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81026.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (io_in_b_valid & _T_680) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81027.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_in_b_valid & _T_684) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel Probe carries invalid cap param (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81034.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (io_in_b_valid & _T_684) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81035.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_238 & _T_879) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAck carries unmanaged address (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81419.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_238 & _T_879) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81420.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_238 & _T_882) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAck carries invalid source ID (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81426.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_238 & _T_882) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81427.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_238 & _T_886) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAck smaller than a beat (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81434.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_238 & _T_886) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81435.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_238 & _T_889) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAck address not aligned to size (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81441.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_238 & _T_889) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81442.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_238 & _T_893) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAck carries invalid report param (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81449.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_238 & _T_893) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81450.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_238 & _T_897) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAck is corrupt (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81457.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_238 & _T_897) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81458.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_250 & _T_879) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAckData carries unmanaged address (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81467.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_250 & _T_879) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81468.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_250 & _T_882) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAckData carries invalid source ID (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81474.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_250 & _T_882) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81475.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_250 & _T_886) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAckData smaller than a beat (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81482.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_250 & _T_886) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81483.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_250 & _T_889) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAckData address not aligned to size (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81489.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_250 & _T_889) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81490.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_250 & _T_893) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAckData carries invalid report param (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81497.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_250 & _T_893) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81498.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_260 & _T_928) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel carries Release type unsupported by manager (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81516.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_260 & _T_928) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81517.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_260 & _T_942) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel carries Release from a client which does not support Probe (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81539.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_260 & _T_942) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81540.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_260 & _T_882) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel Release carries invalid source ID (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81546.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_260 & _T_882) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81547.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_260 & _T_886) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel Release smaller than a beat (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81554.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_260 & _T_886) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81555.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_260 & _T_889) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel Release address not aligned to size (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81561.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_260 & _T_889) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81562.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_260 & _T_956) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel Release carries invalid shrink param (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81569.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_260 & _T_956) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81570.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_260 & _T_897) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel Release is corrupt (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81577.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_260 & _T_897) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81578.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_274 & _T_928) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel carries ReleaseData type unsupported by manager (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81596.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_274 & _T_928) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81597.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_274 & _T_942) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel carries Release from a client which does not support Probe (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81619.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_274 & _T_942) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81620.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_274 & _T_882) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ReleaseData carries invalid source ID (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81626.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_274 & _T_882) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81627.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_274 & _T_886) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ReleaseData smaller than a beat (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81634.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_274 & _T_886) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81635.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_274 & _T_889) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ReleaseData address not aligned to size (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81641.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_274 & _T_889) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81642.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_274 & _T_956) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ReleaseData carries invalid shrink param (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81649.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_274 & _T_956) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81650.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_286 & _T_879) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAck carries unmanaged address (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81659.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_286 & _T_879) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81660.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_286 & _T_882) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAck carries invalid source ID (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81666.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_286 & _T_882) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81667.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_286 & _T_889) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAck address not aligned to size (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81673.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_286 & _T_889) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81674.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_286 & _T_1015) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAck carries invalid param (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81681.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_286 & _T_1015) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81682.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_286 & _T_897) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAck is corrupt (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81689.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_286 & _T_897) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81690.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_296 & _T_879) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAckData carries unmanaged address (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81699.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_296 & _T_879) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81700.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_296 & _T_882) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAckData carries invalid source ID (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81706.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_296 & _T_882) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81707.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_296 & _T_889) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAckData address not aligned to size (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81713.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_296 & _T_889) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81714.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_296 & _T_1015) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAckData carries invalid param (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81721.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_296 & _T_1015) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81722.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_304 & _T_879) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel HintAck carries unmanaged address (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81731.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_304 & _T_879) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81732.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_304 & _T_882) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel HintAck carries invalid source ID (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81738.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_304 & _T_882) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81739.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_304 & _T_889) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel HintAck address not aligned to size (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81745.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_304 & _T_889) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81746.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_304 & _T_1015) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel HintAck carries invalid param (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81753.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_304 & _T_1015) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81754.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_304 & _T_897) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel HintAck is corrupt (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81761.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_304 & _T_897) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81762.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_in_e_valid & _T_1055) begin
          $fwrite(32'h80000002,"Assertion failed: 'E' channels carries invalid sink ID (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81772.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (io_in_e_valid & _T_1055) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81773.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1082 & _T_1086) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel opcode changed within multibeat operation (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81812.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1082 & _T_1086) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81813.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1082 & _T_1090) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel param changed within multibeat operation (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81820.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1082 & _T_1090) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81821.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1082 & _T_1094) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel size changed within multibeat operation (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81828.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1082 & _T_1094) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81829.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1082 & _T_1098) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel source changed within multibeat operation (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81836.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1082 & _T_1098) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81837.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1082 & _T_1102) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel address changed with multibeat operation (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81844.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1082 & _T_1102) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81845.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1131 & _T_1135) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel opcode changed within multibeat operation (connected at Configs.scala:112:13)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@81893.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1131 & _T_1135) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@81894.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1131 & _T_1139) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel param changed within multibeat operation (connected at Configs.scala:112:13)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@81901.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1131 & _T_1139) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@81902.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1131 & _T_1143) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel size changed within multibeat operation (connected at Configs.scala:112:13)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@81909.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1131 & _T_1143) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@81910.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1131 & _T_1147) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel source changed within multibeat operation (connected at Configs.scala:112:13)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@81917.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1131 & _T_1147) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@81918.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1131 & _T_1151) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel sink changed with multibeat operation (connected at Configs.scala:112:13)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@81925.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1131 & _T_1151) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@81926.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1131 & _T_1155) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel denied changed with multibeat operation (connected at Configs.scala:112:13)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@81933.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1131 & _T_1155) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@81934.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1184 & _T_1192) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel param changed within multibeat operation (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81991.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1184 & _T_1192) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@81992.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1184 & _T_1204) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel addresss changed with multibeat operation (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@82015.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1184 & _T_1204) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@82016.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1232 & _T_1236) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel opcode changed within multibeat operation (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@82063.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1232 & _T_1236) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@82064.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1232 & _T_1240) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel param changed within multibeat operation (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@82071.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1232 & _T_1240) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@82072.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1232 & _T_1244) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel size changed within multibeat operation (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@82079.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1232 & _T_1244) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@82080.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1232 & _T_1248) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel source changed within multibeat operation (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@82087.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1232 & _T_1248) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@82088.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1232 & _T_1252) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel address changed with multibeat operation (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@82095.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1232 & _T_1252) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@82096.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1311 & _T_1327) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel re-used a source ID (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@82231.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1311 & _T_1327) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@82232.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1350 & _T_1361) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel acknowledged for nothing inflight (connected at Configs.scala:112:13)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@82282.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1350 & _T_1361) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@82283.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1350 & _T_1374) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper opcode response (connected at Configs.scala:112:13)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@82299.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1350 & _T_1374) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@82300.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1350 & _T_1381) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper response size (connected at Configs.scala:112:13)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@82310.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1350 & _T_1381) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@82311.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1388 & _T_1393) begin
          $fwrite(32'h80000002,"Assertion failed: ready check\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@82328.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1388 & _T_1393) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@82329.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1400) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' and 'D' concurrent, despite minlatency 2 (connected at Configs.scala:112:13)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@82340.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1400) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@82341.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1419) begin
          $fwrite(32'h80000002,"Assertion failed: TileLink timeout expired (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@82368.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1419) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@82369.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1452 & _T_1459) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel re-used a sink ID (connected at Configs.scala:112:13)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@82422.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1452 & _T_1459) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@82423.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_in_e_valid & _T_1470) begin
          $fwrite(32'h80000002,"Assertion failed: 'E' channel acknowledged for nothing inflight (connected at Configs.scala:112:13)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@82441.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (io_in_e_valid & _T_1470) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@82442.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
