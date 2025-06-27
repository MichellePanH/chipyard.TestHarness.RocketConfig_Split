module TLMonitor_42( // @[:chipyard.TestHarness.RocketConfig.fir@105112.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@105113.4]
  input         reset, // @[:chipyard.TestHarness.RocketConfig.fir@105114.4]
  input         io_in_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@105115.4]
  input         io_in_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@105115.4]
  input  [2:0]  io_in_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@105115.4]
  input  [2:0]  io_in_a_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@105115.4]
  input  [2:0]  io_in_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@105115.4]
  input  [2:0]  io_in_a_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@105115.4]
  input  [31:0] io_in_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@105115.4]
  input  [7:0]  io_in_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@105115.4]
  input         io_in_a_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@105115.4]
  input         io_in_b_ready, // @[:chipyard.TestHarness.RocketConfig.fir@105115.4]
  input         io_in_b_valid, // @[:chipyard.TestHarness.RocketConfig.fir@105115.4]
  input  [1:0]  io_in_b_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@105115.4]
  input  [31:0] io_in_b_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@105115.4]
  input         io_in_c_ready, // @[:chipyard.TestHarness.RocketConfig.fir@105115.4]
  input         io_in_c_valid, // @[:chipyard.TestHarness.RocketConfig.fir@105115.4]
  input  [2:0]  io_in_c_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@105115.4]
  input  [2:0]  io_in_c_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@105115.4]
  input  [2:0]  io_in_c_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@105115.4]
  input  [2:0]  io_in_c_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@105115.4]
  input  [31:0] io_in_c_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@105115.4]
  input         io_in_c_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@105115.4]
  input         io_in_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@105115.4]
  input         io_in_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@105115.4]
  input  [2:0]  io_in_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@105115.4]
  input  [1:0]  io_in_d_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@105115.4]
  input  [2:0]  io_in_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@105115.4]
  input  [2:0]  io_in_d_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@105115.4]
  input  [2:0]  io_in_d_bits_sink, // @[:chipyard.TestHarness.RocketConfig.fir@105115.4]
  input         io_in_d_bits_denied, // @[:chipyard.TestHarness.RocketConfig.fir@105115.4]
  input         io_in_d_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@105115.4]
  input         io_in_e_valid, // @[:chipyard.TestHarness.RocketConfig.fir@105115.4]
  input  [2:0]  io_in_e_bits_sink // @[:chipyard.TestHarness.RocketConfig.fir@105115.4]
);
  wire [31:0] plusarg_reader_out; // @[PlusArg.scala 44:11:chipyard.TestHarness.RocketConfig.fir@107545.4]
  wire  _T_4; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@105126.6]
  wire  _T_5; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@105127.6]
  wire  _T_6; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@105128.6]
  wire  _T_8; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@105134.6]
  wire  _T_9; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@105135.6]
  wire [12:0] _T_11; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@105137.6]
  wire [5:0] _T_13; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@105139.6]
  wire [31:0] _GEN_71; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@105140.6]
  wire [31:0] _T_14; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@105140.6]
  wire  _T_15; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@105141.6]
  wire [3:0] _T_18; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@105144.6]
  wire [2:0] _T_20; // @[Misc.scala 201:81:chipyard.TestHarness.RocketConfig.fir@105146.6]
  wire  _T_21; // @[Misc.scala 205:21:chipyard.TestHarness.RocketConfig.fir@105147.6]
  wire  _T_24; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@105150.6]
  wire  _T_26; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@105152.6]
  wire  _T_27; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@105153.6]
  wire  _T_29; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@105155.6]
  wire  _T_30; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@105156.6]
  wire  _T_33; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@105159.6]
  wire  _T_34; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@105160.6]
  wire  _T_35; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@105161.6]
  wire  _T_36; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@105162.6]
  wire  _T_37; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@105163.6]
  wire  _T_38; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@105164.6]
  wire  _T_39; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@105165.6]
  wire  _T_40; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@105166.6]
  wire  _T_41; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@105167.6]
  wire  _T_42; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@105168.6]
  wire  _T_43; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@105169.6]
  wire  _T_44; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@105170.6]
  wire  _T_45; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@105171.6]
  wire  _T_48; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@105174.6]
  wire  _T_49; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@105175.6]
  wire  _T_50; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@105176.6]
  wire  _T_51; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@105177.6]
  wire  _T_52; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@105178.6]
  wire  _T_53; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@105179.6]
  wire  _T_54; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@105180.6]
  wire  _T_55; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@105181.6]
  wire  _T_56; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@105182.6]
  wire  _T_57; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@105183.6]
  wire  _T_58; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@105184.6]
  wire  _T_59; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@105185.6]
  wire  _T_60; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@105186.6]
  wire  _T_61; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@105187.6]
  wire  _T_62; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@105188.6]
  wire  _T_63; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@105189.6]
  wire  _T_64; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@105190.6]
  wire  _T_65; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@105191.6]
  wire  _T_66; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@105192.6]
  wire  _T_67; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@105193.6]
  wire  _T_68; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@105194.6]
  wire  _T_69; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@105195.6]
  wire  _T_70; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@105196.6]
  wire  _T_71; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@105197.6]
  wire  _T_72; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@105198.6]
  wire [7:0] _T_79; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@105205.6]
  wire  _T_109; // @[Monitor.scala 79:25:chipyard.TestHarness.RocketConfig.fir@105239.6]
  wire  _T_110; // @[Parameters.scala 92:48:chipyard.TestHarness.RocketConfig.fir@105241.8]
  wire [31:0] _T_112; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@105243.8]
  wire [32:0] _T_113; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@105244.8]
  wire [32:0] _T_115; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@105246.8]
  wire  _T_116; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@105247.8]
  wire  _T_117; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@105248.8]
  wire  _T_120; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105251.8]
  wire  _T_121; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105252.8]
  wire  _T_128; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@105267.8]
  wire  _T_134; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105274.8]
  wire  _T_135; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105275.8]
  wire  _T_137; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105281.8]
  wire  _T_138; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105282.8]
  wire  _T_141; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105289.8]
  wire  _T_142; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105290.8]
  wire  _T_144; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105296.8]
  wire  _T_145; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105297.8]
  wire  _T_146; // @[Bundles.scala 110:27:chipyard.TestHarness.RocketConfig.fir@105302.8]
  wire  _T_148; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105304.8]
  wire  _T_149; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105305.8]
  wire [7:0] _T_150; // @[Monitor.scala 86:18:chipyard.TestHarness.RocketConfig.fir@105310.8]
  wire  _T_151; // @[Monitor.scala 86:31:chipyard.TestHarness.RocketConfig.fir@105311.8]
  wire  _T_153; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105313.8]
  wire  _T_154; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105314.8]
  wire  _T_155; // @[Monitor.scala 87:18:chipyard.TestHarness.RocketConfig.fir@105319.8]
  wire  _T_157; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105321.8]
  wire  _T_158; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105322.8]
  wire  _T_159; // @[Monitor.scala 90:25:chipyard.TestHarness.RocketConfig.fir@105328.6]
  wire  _T_200; // @[Monitor.scala 97:31:chipyard.TestHarness.RocketConfig.fir@105399.8]
  wire  _T_202; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105401.8]
  wire  _T_203; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105402.8]
  wire  _T_213; // @[Monitor.scala 102:25:chipyard.TestHarness.RocketConfig.fir@105425.6]
  wire  _T_215; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@105428.8]
  wire  _T_223; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@105436.8]
  wire  _T_226; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105439.8]
  wire  _T_227; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105440.8]
  wire  _T_234; // @[Monitor.scala 106:31:chipyard.TestHarness.RocketConfig.fir@105459.8]
  wire  _T_236; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105461.8]
  wire  _T_237; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105462.8]
  wire  _T_238; // @[Monitor.scala 107:30:chipyard.TestHarness.RocketConfig.fir@105467.8]
  wire  _T_240; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105469.8]
  wire  _T_241; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105470.8]
  wire  _T_246; // @[Monitor.scala 111:25:chipyard.TestHarness.RocketConfig.fir@105484.6]
  wire  _T_275; // @[Monitor.scala 119:25:chipyard.TestHarness.RocketConfig.fir@105535.6]
  wire [7:0] _T_300; // @[Monitor.scala 124:33:chipyard.TestHarness.RocketConfig.fir@105577.8]
  wire [7:0] _T_301; // @[Monitor.scala 124:31:chipyard.TestHarness.RocketConfig.fir@105578.8]
  wire  _T_302; // @[Monitor.scala 124:40:chipyard.TestHarness.RocketConfig.fir@105579.8]
  wire  _T_304; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105581.8]
  wire  _T_305; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105582.8]
  wire  _T_306; // @[Monitor.scala 127:25:chipyard.TestHarness.RocketConfig.fir@105588.6]
  wire  _T_308; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@105591.8]
  wire  _T_316; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@105599.8]
  wire  _T_319; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105602.8]
  wire  _T_320; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105603.8]
  wire  _T_327; // @[Bundles.scala 140:33:chipyard.TestHarness.RocketConfig.fir@105622.8]
  wire  _T_329; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105624.8]
  wire  _T_330; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105625.8]
  wire  _T_335; // @[Monitor.scala 135:25:chipyard.TestHarness.RocketConfig.fir@105639.6]
  wire  _T_356; // @[Bundles.scala 147:30:chipyard.TestHarness.RocketConfig.fir@105673.8]
  wire  _T_358; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105675.8]
  wire  _T_359; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105676.8]
  wire  _T_364; // @[Monitor.scala 143:25:chipyard.TestHarness.RocketConfig.fir@105690.6]
  wire  _T_385; // @[Bundles.scala 160:28:chipyard.TestHarness.RocketConfig.fir@105724.8]
  wire  _T_387; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105726.8]
  wire  _T_388; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105727.8]
  wire  _T_397; // @[Bundles.scala 44:24:chipyard.TestHarness.RocketConfig.fir@105751.6]
  wire  _T_399; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105753.6]
  wire  _T_400; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105754.6]
  wire  _T_401; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@105759.6]
  wire  _T_402; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@105760.6]
  wire  _T_403; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@105761.6]
  wire  _T_405; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@105767.6]
  wire  _T_406; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@105768.6]
  wire  _T_407; // @[Monitor.scala 303:31:chipyard.TestHarness.RocketConfig.fir@105769.6]
  wire  _T_408; // @[Monitor.scala 307:25:chipyard.TestHarness.RocketConfig.fir@105770.6]
  wire  _T_410; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105773.8]
  wire  _T_411; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105774.8]
  wire  _T_412; // @[Monitor.scala 309:27:chipyard.TestHarness.RocketConfig.fir@105779.8]
  wire  _T_414; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105781.8]
  wire  _T_415; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105782.8]
  wire  _T_416; // @[Monitor.scala 310:28:chipyard.TestHarness.RocketConfig.fir@105787.8]
  wire  _T_418; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105789.8]
  wire  _T_419; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105790.8]
  wire  _T_420; // @[Monitor.scala 311:15:chipyard.TestHarness.RocketConfig.fir@105795.8]
  wire  _T_422; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105797.8]
  wire  _T_423; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105798.8]
  wire  _T_424; // @[Monitor.scala 312:15:chipyard.TestHarness.RocketConfig.fir@105803.8]
  wire  _T_426; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105805.8]
  wire  _T_427; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105806.8]
  wire  _T_428; // @[Monitor.scala 315:25:chipyard.TestHarness.RocketConfig.fir@105812.6]
  wire  _T_433; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105822.8]
  wire  _T_434; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105823.8]
  wire  _T_439; // @[Bundles.scala 104:26:chipyard.TestHarness.RocketConfig.fir@105836.8]
  wire  _T_441; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105838.8]
  wire  _T_442; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105839.8]
  wire  _T_443; // @[Monitor.scala 320:28:chipyard.TestHarness.RocketConfig.fir@105844.8]
  wire  _T_445; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105846.8]
  wire  _T_446; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105847.8]
  wire  _T_456; // @[Monitor.scala 325:25:chipyard.TestHarness.RocketConfig.fir@105870.6]
  wire  _T_476; // @[Monitor.scala 331:30:chipyard.TestHarness.RocketConfig.fir@105911.8]
  wire  _T_478; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105913.8]
  wire  _T_479; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105914.8]
  wire  _T_485; // @[Monitor.scala 335:25:chipyard.TestHarness.RocketConfig.fir@105929.6]
  wire  _T_502; // @[Monitor.scala 343:25:chipyard.TestHarness.RocketConfig.fir@105964.6]
  wire  _T_520; // @[Monitor.scala 351:25:chipyard.TestHarness.RocketConfig.fir@106000.6]
  wire [31:0] _T_570; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@106078.6]
  wire [32:0] _T_571; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@106079.6]
  wire [32:0] _T_573; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@106081.6]
  wire  _T_574; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@106082.6]
  wire [31:0] _T_580; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@106090.6]
  wire  _T_581; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@106091.6]
  wire  _T_673; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106198.8]
  wire  _T_674; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106199.8]
  wire  _T_679; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106212.8]
  wire  _T_680; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106213.8]
  wire  _T_681; // @[Bundles.scala 104:26:chipyard.TestHarness.RocketConfig.fir@106218.8]
  wire  _T_683; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106220.8]
  wire  _T_684; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106221.8]
  wire  _T_829; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@106545.6]
  wire  _T_830; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@106546.6]
  wire  _T_831; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@106547.6]
  wire  _T_833; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@106553.6]
  wire  _T_834; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@106554.6]
  wire [12:0] _T_836; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@106556.6]
  wire [5:0] _T_838; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@106558.6]
  wire [31:0] _GEN_72; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@106559.6]
  wire [31:0] _T_839; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@106559.6]
  wire  _T_840; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@106560.6]
  wire [31:0] _T_841; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@106561.6]
  wire [32:0] _T_842; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@106562.6]
  wire [32:0] _T_844; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@106564.6]
  wire  _T_845; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@106565.6]
  wire  _T_876; // @[Monitor.scala 239:25:chipyard.TestHarness.RocketConfig.fir@106602.6]
  wire  _T_878; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106605.8]
  wire  _T_879; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106606.8]
  wire  _T_881; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106612.8]
  wire  _T_882; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106613.8]
  wire  _T_883; // @[Monitor.scala 242:30:chipyard.TestHarness.RocketConfig.fir@106618.8]
  wire  _T_885; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106620.8]
  wire  _T_886; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106621.8]
  wire  _T_888; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106627.8]
  wire  _T_889; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106628.8]
  wire  _T_890; // @[Bundles.scala 122:29:chipyard.TestHarness.RocketConfig.fir@106633.8]
  wire  _T_892; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106635.8]
  wire  _T_893; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106636.8]
  wire  _T_894; // @[Monitor.scala 245:18:chipyard.TestHarness.RocketConfig.fir@106641.8]
  wire  _T_896; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106643.8]
  wire  _T_897; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106644.8]
  wire  _T_898; // @[Monitor.scala 248:25:chipyard.TestHarness.RocketConfig.fir@106650.6]
  wire  _T_916; // @[Monitor.scala 256:25:chipyard.TestHarness.RocketConfig.fir@106690.6]
  wire  _T_917; // @[Parameters.scala 92:48:chipyard.TestHarness.RocketConfig.fir@106692.8]
  wire  _T_924; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@106699.8]
  wire  _T_927; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106702.8]
  wire  _T_928; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106703.8]
  wire  _T_935; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@106718.8]
  wire  _T_941; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106725.8]
  wire  _T_942; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106726.8]
  wire  _T_953; // @[Bundles.scala 116:29:chipyard.TestHarness.RocketConfig.fir@106753.8]
  wire  _T_955; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106755.8]
  wire  _T_956; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106756.8]
  wire  _T_961; // @[Monitor.scala 266:25:chipyard.TestHarness.RocketConfig.fir@106770.6]
  wire  _T_1002; // @[Monitor.scala 275:25:chipyard.TestHarness.RocketConfig.fir@106842.6]
  wire  _T_1012; // @[Monitor.scala 279:31:chipyard.TestHarness.RocketConfig.fir@106865.8]
  wire  _T_1014; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106867.8]
  wire  _T_1015; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106868.8]
  wire  _T_1020; // @[Monitor.scala 283:25:chipyard.TestHarness.RocketConfig.fir@106882.6]
  wire  _T_1034; // @[Monitor.scala 290:25:chipyard.TestHarness.RocketConfig.fir@106914.6]
  wire  _T_1052; // @[Monitor.scala 361:31:chipyard.TestHarness.RocketConfig.fir@106956.6]
  wire  _T_1054; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106958.6]
  wire  _T_1055; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106959.6]
  wire  _T_1056; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@106965.4]
  wire  _T_1063; // @[Edges.scala 93:28:chipyard.TestHarness.RocketConfig.fir@106972.4]
  reg [2:0] _T_1065; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@106974.4]
  reg [31:0] _RAND_0;
  wire [2:0] _T_1067; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@106976.4]
  wire  _T_1068; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@106977.4]
  reg [2:0] _T_1076; // @[Monitor.scala 381:22:chipyard.TestHarness.RocketConfig.fir@106988.4]
  reg [31:0] _RAND_1;
  reg [2:0] _T_1077; // @[Monitor.scala 382:22:chipyard.TestHarness.RocketConfig.fir@106989.4]
  reg [31:0] _RAND_2;
  reg [2:0] _T_1078; // @[Monitor.scala 383:22:chipyard.TestHarness.RocketConfig.fir@106990.4]
  reg [31:0] _RAND_3;
  reg [2:0] _T_1079; // @[Monitor.scala 384:22:chipyard.TestHarness.RocketConfig.fir@106991.4]
  reg [31:0] _RAND_4;
  reg [31:0] _T_1080; // @[Monitor.scala 385:22:chipyard.TestHarness.RocketConfig.fir@106992.4]
  reg [31:0] _RAND_5;
  wire  _T_1081; // @[Monitor.scala 386:22:chipyard.TestHarness.RocketConfig.fir@106993.4]
  wire  _T_1082; // @[Monitor.scala 386:19:chipyard.TestHarness.RocketConfig.fir@106994.4]
  wire  _T_1083; // @[Monitor.scala 387:32:chipyard.TestHarness.RocketConfig.fir@106996.6]
  wire  _T_1085; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106998.6]
  wire  _T_1086; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106999.6]
  wire  _T_1087; // @[Monitor.scala 388:32:chipyard.TestHarness.RocketConfig.fir@107004.6]
  wire  _T_1089; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@107006.6]
  wire  _T_1090; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@107007.6]
  wire  _T_1091; // @[Monitor.scala 389:32:chipyard.TestHarness.RocketConfig.fir@107012.6]
  wire  _T_1093; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@107014.6]
  wire  _T_1094; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@107015.6]
  wire  _T_1095; // @[Monitor.scala 390:32:chipyard.TestHarness.RocketConfig.fir@107020.6]
  wire  _T_1097; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@107022.6]
  wire  _T_1098; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@107023.6]
  wire  _T_1099; // @[Monitor.scala 391:32:chipyard.TestHarness.RocketConfig.fir@107028.6]
  wire  _T_1101; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@107030.6]
  wire  _T_1102; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@107031.6]
  wire  _T_1104; // @[Monitor.scala 393:20:chipyard.TestHarness.RocketConfig.fir@107038.4]
  wire  _T_1105; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@107046.4]
  wire [12:0] _T_1107; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@107048.4]
  wire [5:0] _T_1109; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@107050.4]
  reg [2:0] _T_1113; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@107054.4]
  reg [31:0] _RAND_6;
  wire [2:0] _T_1115; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@107056.4]
  wire  _T_1116; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@107057.4]
  reg [2:0] _T_1124; // @[Monitor.scala 532:22:chipyard.TestHarness.RocketConfig.fir@107068.4]
  reg [31:0] _RAND_7;
  reg [1:0] _T_1125; // @[Monitor.scala 533:22:chipyard.TestHarness.RocketConfig.fir@107069.4]
  reg [31:0] _RAND_8;
  reg [2:0] _T_1126; // @[Monitor.scala 534:22:chipyard.TestHarness.RocketConfig.fir@107070.4]
  reg [31:0] _RAND_9;
  reg [2:0] _T_1127; // @[Monitor.scala 535:22:chipyard.TestHarness.RocketConfig.fir@107071.4]
  reg [31:0] _RAND_10;
  reg [2:0] _T_1128; // @[Monitor.scala 536:22:chipyard.TestHarness.RocketConfig.fir@107072.4]
  reg [31:0] _RAND_11;
  reg  _T_1129; // @[Monitor.scala 537:22:chipyard.TestHarness.RocketConfig.fir@107073.4]
  reg [31:0] _RAND_12;
  wire  _T_1130; // @[Monitor.scala 538:22:chipyard.TestHarness.RocketConfig.fir@107074.4]
  wire  _T_1131; // @[Monitor.scala 538:19:chipyard.TestHarness.RocketConfig.fir@107075.4]
  wire  _T_1132; // @[Monitor.scala 539:29:chipyard.TestHarness.RocketConfig.fir@107077.6]
  wire  _T_1134; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@107079.6]
  wire  _T_1135; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@107080.6]
  wire  _T_1136; // @[Monitor.scala 540:29:chipyard.TestHarness.RocketConfig.fir@107085.6]
  wire  _T_1138; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@107087.6]
  wire  _T_1139; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@107088.6]
  wire  _T_1140; // @[Monitor.scala 541:29:chipyard.TestHarness.RocketConfig.fir@107093.6]
  wire  _T_1142; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@107095.6]
  wire  _T_1143; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@107096.6]
  wire  _T_1144; // @[Monitor.scala 542:29:chipyard.TestHarness.RocketConfig.fir@107101.6]
  wire  _T_1146; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@107103.6]
  wire  _T_1147; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@107104.6]
  wire  _T_1148; // @[Monitor.scala 543:29:chipyard.TestHarness.RocketConfig.fir@107109.6]
  wire  _T_1150; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@107111.6]
  wire  _T_1151; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@107112.6]
  wire  _T_1152; // @[Monitor.scala 544:29:chipyard.TestHarness.RocketConfig.fir@107117.6]
  wire  _T_1154; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@107119.6]
  wire  _T_1155; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@107120.6]
  wire  _T_1157; // @[Monitor.scala 546:20:chipyard.TestHarness.RocketConfig.fir@107127.4]
  wire  _T_1158; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@107136.4]
  reg [2:0] _T_1167; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@107145.4]
  reg [31:0] _RAND_13;
  wire [2:0] _T_1169; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@107147.4]
  wire  _T_1170; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@107148.4]
  reg [1:0] _T_1179; // @[Monitor.scala 405:22:chipyard.TestHarness.RocketConfig.fir@107160.4]
  reg [31:0] _RAND_14;
  reg [31:0] _T_1182; // @[Monitor.scala 408:22:chipyard.TestHarness.RocketConfig.fir@107163.4]
  reg [31:0] _RAND_15;
  wire  _T_1183; // @[Monitor.scala 409:22:chipyard.TestHarness.RocketConfig.fir@107164.4]
  wire  _T_1184; // @[Monitor.scala 409:19:chipyard.TestHarness.RocketConfig.fir@107165.4]
  wire  _T_1189; // @[Monitor.scala 411:32:chipyard.TestHarness.RocketConfig.fir@107175.6]
  wire  _T_1191; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@107177.6]
  wire  _T_1192; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@107178.6]
  wire  _T_1201; // @[Monitor.scala 414:32:chipyard.TestHarness.RocketConfig.fir@107199.6]
  wire  _T_1203; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@107201.6]
  wire  _T_1204; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@107202.6]
  wire  _T_1206; // @[Monitor.scala 416:20:chipyard.TestHarness.RocketConfig.fir@107209.4]
  wire  _T_1207; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@107217.4]
  reg [2:0] _T_1215; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@107225.4]
  reg [31:0] _RAND_16;
  wire [2:0] _T_1217; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@107227.4]
  wire  _T_1218; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@107228.4]
  reg [2:0] _T_1226; // @[Monitor.scala 509:22:chipyard.TestHarness.RocketConfig.fir@107239.4]
  reg [31:0] _RAND_17;
  reg [2:0] _T_1227; // @[Monitor.scala 510:22:chipyard.TestHarness.RocketConfig.fir@107240.4]
  reg [31:0] _RAND_18;
  reg [2:0] _T_1228; // @[Monitor.scala 511:22:chipyard.TestHarness.RocketConfig.fir@107241.4]
  reg [31:0] _RAND_19;
  reg [2:0] _T_1229; // @[Monitor.scala 512:22:chipyard.TestHarness.RocketConfig.fir@107242.4]
  reg [31:0] _RAND_20;
  reg [31:0] _T_1230; // @[Monitor.scala 513:22:chipyard.TestHarness.RocketConfig.fir@107243.4]
  reg [31:0] _RAND_21;
  wire  _T_1231; // @[Monitor.scala 514:22:chipyard.TestHarness.RocketConfig.fir@107244.4]
  wire  _T_1232; // @[Monitor.scala 514:19:chipyard.TestHarness.RocketConfig.fir@107245.4]
  wire  _T_1233; // @[Monitor.scala 515:32:chipyard.TestHarness.RocketConfig.fir@107247.6]
  wire  _T_1235; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@107249.6]
  wire  _T_1236; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@107250.6]
  wire  _T_1237; // @[Monitor.scala 516:32:chipyard.TestHarness.RocketConfig.fir@107255.6]
  wire  _T_1239; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@107257.6]
  wire  _T_1240; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@107258.6]
  wire  _T_1241; // @[Monitor.scala 517:32:chipyard.TestHarness.RocketConfig.fir@107263.6]
  wire  _T_1243; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@107265.6]
  wire  _T_1244; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@107266.6]
  wire  _T_1245; // @[Monitor.scala 518:32:chipyard.TestHarness.RocketConfig.fir@107271.6]
  wire  _T_1247; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@107273.6]
  wire  _T_1248; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@107274.6]
  wire  _T_1249; // @[Monitor.scala 519:32:chipyard.TestHarness.RocketConfig.fir@107279.6]
  wire  _T_1251; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@107281.6]
  wire  _T_1252; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@107282.6]
  wire  _T_1254; // @[Monitor.scala 521:20:chipyard.TestHarness.RocketConfig.fir@107289.4]
  reg [4:0] inflight; // @[Monitor.scala 608:27:chipyard.TestHarness.RocketConfig.fir@107297.4]
  reg [31:0] _RAND_22;
  reg [19:0] inflight_opcodes; // @[Monitor.scala 610:35:chipyard.TestHarness.RocketConfig.fir@107298.4]
  reg [31:0] _RAND_23;
  reg [19:0] inflight_sizes; // @[Monitor.scala 612:33:chipyard.TestHarness.RocketConfig.fir@107299.4]
  reg [31:0] _RAND_24;
  reg [2:0] _T_1264; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@107309.4]
  reg [31:0] _RAND_25;
  wire [2:0] _T_1266; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@107311.4]
  wire  a_first; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@107312.4]
  reg [2:0] _T_1282; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@107331.4]
  reg [31:0] _RAND_26;
  wire [2:0] _T_1284; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@107333.4]
  wire  d_first; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@107334.4]
  wire [4:0] _GEN_73; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@107353.4]
  wire [5:0] _T_1292; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@107353.4]
  wire [19:0] _T_1293; // @[Monitor.scala 629:44:chipyard.TestHarness.RocketConfig.fir@107354.4]
  wire [15:0] _T_1297; // @[Monitor.scala 606:57:chipyard.TestHarness.RocketConfig.fir@107358.4]
  wire [19:0] _GEN_74; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@107359.4]
  wire [19:0] _T_1298; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@107359.4]
  wire [19:0] _T_1299; // @[Monitor.scala 629:152:chipyard.TestHarness.RocketConfig.fir@107360.4]
  wire [19:0] _T_1301; // @[Monitor.scala 633:40:chipyard.TestHarness.RocketConfig.fir@107365.4]
  wire [19:0] _T_1306; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@107370.4]
  wire [19:0] _T_1307; // @[Monitor.scala 633:144:chipyard.TestHarness.RocketConfig.fir@107371.4]
  wire  _T_1311; // @[Monitor.scala 643:27:chipyard.TestHarness.RocketConfig.fir@107396.4]
  wire [7:0] _T_1313; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@107399.6]
  wire [3:0] _T_1314; // @[Monitor.scala 645:53:chipyard.TestHarness.RocketConfig.fir@107401.6]
  wire [3:0] _T_1315; // @[Monitor.scala 645:61:chipyard.TestHarness.RocketConfig.fir@107402.6]
  wire [3:0] _T_1316; // @[Monitor.scala 646:49:chipyard.TestHarness.RocketConfig.fir@107404.6]
  wire [3:0] _T_1317; // @[Monitor.scala 646:57:chipyard.TestHarness.RocketConfig.fir@107405.6]
  wire [4:0] _GEN_79; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@107407.6]
  wire [5:0] _T_1318; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@107407.6]
  wire [3:0] a_opcodes_set_interm; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@107398.4]
  wire [66:0] _GEN_80; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@107408.6]
  wire [66:0] _T_1319; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@107408.6]
  wire [3:0] a_sizes_set_interm; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@107398.4]
  wire [66:0] _GEN_82; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@107411.6]
  wire [66:0] _T_1321; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@107411.6]
  wire [4:0] _T_1322; // @[Monitor.scala 649:26:chipyard.TestHarness.RocketConfig.fir@107413.6]
  wire  _T_1324; // @[Monitor.scala 649:17:chipyard.TestHarness.RocketConfig.fir@107415.6]
  wire  _T_1326; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@107417.6]
  wire  _T_1327; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@107418.6]
  wire [7:0] _GEN_27; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@107398.4]
  wire [66:0] _GEN_30; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@107398.4]
  wire [66:0] _GEN_31; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@107398.4]
  wire  _T_1330; // @[Monitor.scala 660:27:chipyard.TestHarness.RocketConfig.fir@107432.4]
  wire  _T_1332; // @[Monitor.scala 660:75:chipyard.TestHarness.RocketConfig.fir@107434.4]
  wire  _T_1333; // @[Monitor.scala 660:72:chipyard.TestHarness.RocketConfig.fir@107435.4]
  wire [7:0] _T_1334; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@107437.6]
  wire [78:0] _GEN_84; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@107444.6]
  wire [78:0] _T_1340; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@107444.6]
  wire [7:0] _GEN_32; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@107436.4]
  wire [78:0] _GEN_33; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@107436.4]
  wire  _T_1347; // @[Monitor.scala 665:26:chipyard.TestHarness.RocketConfig.fir@107454.4]
  wire  _T_1350; // @[Monitor.scala 665:71:chipyard.TestHarness.RocketConfig.fir@107457.4]
  wire [4:0] _T_1351; // @[Monitor.scala 666:25:chipyard.TestHarness.RocketConfig.fir@107459.6]
  wire  _T_1353; // @[Monitor.scala 666:93:chipyard.TestHarness.RocketConfig.fir@107461.6]
  wire  _T_1354; // @[Monitor.scala 666:68:chipyard.TestHarness.RocketConfig.fir@107462.6]
  wire  _T_1355; // @[Monitor.scala 666:142:chipyard.TestHarness.RocketConfig.fir@107463.6]
  wire  _T_1356; // @[Monitor.scala 666:119:chipyard.TestHarness.RocketConfig.fir@107464.6]
  wire  _T_1357; // @[Monitor.scala 666:166:chipyard.TestHarness.RocketConfig.fir@107465.6]
  wire  _T_1358; // @[Monitor.scala 666:49:chipyard.TestHarness.RocketConfig.fir@107466.6]
  wire  _T_1360; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@107468.6]
  wire  _T_1361; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@107469.6]
  wire [3:0] a_opcode_lookup; // @[:chipyard.TestHarness.RocketConfig.fir@107351.4 :chipyard.TestHarness.RocketConfig.fir@107352.4 Monitor.scala 629:21:chipyard.TestHarness.RocketConfig.fir@107361.4]
  wire [2:0] _GEN_37; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@107475.6]
  wire [2:0] _GEN_38; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@107475.6]
  wire [2:0] _GEN_39; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@107475.6]
  wire [2:0] _GEN_40; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@107475.6]
  wire [2:0] _GEN_41; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@107475.6]
  wire [2:0] _GEN_42; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@107475.6]
  wire  _T_1363; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@107475.6]
  wire [2:0] _GEN_49; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@107477.6]
  wire [2:0] _GEN_50; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@107477.6]
  wire  _T_1365; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@107477.6]
  wire  _T_1366; // @[Monitor.scala 667:71:chipyard.TestHarness.RocketConfig.fir@107478.6]
  wire [2:0] _GEN_53; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@107479.6]
  wire [2:0] _GEN_54; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@107479.6]
  wire [2:0] _GEN_55; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@107479.6]
  wire [2:0] _GEN_56; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@107479.6]
  wire [2:0] _GEN_57; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@107479.6]
  wire [2:0] _GEN_58; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@107479.6]
  wire  _T_1367; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@107479.6]
  wire [2:0] _GEN_65; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@107480.6]
  wire [2:0] _GEN_66; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@107480.6]
  wire  _T_1368; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@107480.6]
  wire  _T_1369; // @[Monitor.scala 668:99:chipyard.TestHarness.RocketConfig.fir@107481.6]
  wire  _T_1370; // @[Monitor.scala 668:34:chipyard.TestHarness.RocketConfig.fir@107482.6]
  wire  _T_1371; // @[Monitor.scala 668:15:chipyard.TestHarness.RocketConfig.fir@107483.6]
  wire  _T_1373; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@107485.6]
  wire  _T_1374; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@107486.6]
  wire [3:0] a_size_lookup; // @[:chipyard.TestHarness.RocketConfig.fir@107362.4 :chipyard.TestHarness.RocketConfig.fir@107363.4 Monitor.scala 633:19:chipyard.TestHarness.RocketConfig.fir@107372.4]
  wire [3:0] _GEN_87; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@107491.6]
  wire  _T_1375; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@107491.6]
  wire  _T_1377; // @[Monitor.scala 670:72:chipyard.TestHarness.RocketConfig.fir@107493.6]
  wire  _T_1378; // @[Monitor.scala 670:53:chipyard.TestHarness.RocketConfig.fir@107494.6]
  wire  _T_1380; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@107496.6]
  wire  _T_1381; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@107497.6]
  wire  _T_1383; // @[Monitor.scala 672:36:chipyard.TestHarness.RocketConfig.fir@107504.4]
  wire  _T_1384; // @[Monitor.scala 672:47:chipyard.TestHarness.RocketConfig.fir@107505.4]
  wire  _T_1386; // @[Monitor.scala 672:65:chipyard.TestHarness.RocketConfig.fir@107507.4]
  wire  _T_1388; // @[Monitor.scala 672:116:chipyard.TestHarness.RocketConfig.fir@107509.4]
  wire  _T_1389; // @[Monitor.scala 673:15:chipyard.TestHarness.RocketConfig.fir@107511.6]
  wire  _T_1390; // @[Monitor.scala 673:32:chipyard.TestHarness.RocketConfig.fir@107512.6]
  wire  _T_1392; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@107514.6]
  wire  _T_1393; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@107515.6]
  wire [4:0] a_set; // @[:chipyard.TestHarness.RocketConfig.fir@107345.4 :chipyard.TestHarness.RocketConfig.fir@107346.4 Monitor.scala 644:13:chipyard.TestHarness.RocketConfig.fir@107400.6]
  wire [4:0] d_clr; // @[:chipyard.TestHarness.RocketConfig.fir@107424.4 :chipyard.TestHarness.RocketConfig.fir@107425.4 Monitor.scala 661:13:chipyard.TestHarness.RocketConfig.fir@107438.6]
  wire  _T_1394; // @[Monitor.scala 677:20:chipyard.TestHarness.RocketConfig.fir@107521.4]
  wire  _T_1395; // @[Monitor.scala 677:40:chipyard.TestHarness.RocketConfig.fir@107522.4]
  wire  _T_1396; // @[Monitor.scala 677:33:chipyard.TestHarness.RocketConfig.fir@107523.4]
  wire  _T_1397; // @[Monitor.scala 677:30:chipyard.TestHarness.RocketConfig.fir@107524.4]
  wire  _T_1399; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@107526.4]
  wire  _T_1400; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@107527.4]
  wire [4:0] _T_1401; // @[Monitor.scala 680:27:chipyard.TestHarness.RocketConfig.fir@107532.4]
  wire [4:0] _T_1402; // @[Monitor.scala 680:38:chipyard.TestHarness.RocketConfig.fir@107533.4]
  wire [4:0] _T_1403; // @[Monitor.scala 680:36:chipyard.TestHarness.RocketConfig.fir@107534.4]
  wire [19:0] a_opcodes_set; // @[:chipyard.TestHarness.RocketConfig.fir@107347.4 :chipyard.TestHarness.RocketConfig.fir@107348.4 Monitor.scala 647:21:chipyard.TestHarness.RocketConfig.fir@107409.6]
  wire [19:0] _T_1404; // @[Monitor.scala 681:43:chipyard.TestHarness.RocketConfig.fir@107536.4]
  wire [19:0] d_opcodes_clr; // @[:chipyard.TestHarness.RocketConfig.fir@107426.4 :chipyard.TestHarness.RocketConfig.fir@107427.4 Monitor.scala 662:21:chipyard.TestHarness.RocketConfig.fir@107445.6]
  wire [19:0] _T_1405; // @[Monitor.scala 681:62:chipyard.TestHarness.RocketConfig.fir@107537.4]
  wire [19:0] _T_1406; // @[Monitor.scala 681:60:chipyard.TestHarness.RocketConfig.fir@107538.4]
  wire [19:0] a_sizes_set; // @[:chipyard.TestHarness.RocketConfig.fir@107349.4 :chipyard.TestHarness.RocketConfig.fir@107350.4 Monitor.scala 648:19:chipyard.TestHarness.RocketConfig.fir@107412.6]
  wire [19:0] _T_1407; // @[Monitor.scala 682:39:chipyard.TestHarness.RocketConfig.fir@107540.4]
  wire [19:0] _T_1409; // @[Monitor.scala 682:54:chipyard.TestHarness.RocketConfig.fir@107542.4]
  reg [31:0] _T_1410; // @[Monitor.scala 684:27:chipyard.TestHarness.RocketConfig.fir@107544.4]
  reg [31:0] _RAND_27;
  wire  _T_1411; // @[Monitor.scala 687:26:chipyard.TestHarness.RocketConfig.fir@107547.4]
  wire  _T_1412; // @[Monitor.scala 687:16:chipyard.TestHarness.RocketConfig.fir@107548.4]
  wire  _T_1413; // @[Monitor.scala 687:39:chipyard.TestHarness.RocketConfig.fir@107549.4]
  wire  _T_1414; // @[Monitor.scala 687:30:chipyard.TestHarness.RocketConfig.fir@107550.4]
  wire  _T_1415; // @[Monitor.scala 687:59:chipyard.TestHarness.RocketConfig.fir@107551.4]
  wire  _T_1416; // @[Monitor.scala 687:47:chipyard.TestHarness.RocketConfig.fir@107552.4]
  wire  _T_1418; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@107554.4]
  wire  _T_1419; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@107555.4]
  wire [31:0] _T_1421; // @[Monitor.scala 689:26:chipyard.TestHarness.RocketConfig.fir@107561.4]
  wire  _T_1424; // @[Monitor.scala 690:27:chipyard.TestHarness.RocketConfig.fir@107565.4]
  reg [6:0] _T_1425; // @[Monitor.scala 694:27:chipyard.TestHarness.RocketConfig.fir@107569.4]
  reg [31:0] _RAND_28;
  reg [2:0] _T_1434; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@107578.4]
  reg [31:0] _RAND_29;
  wire [2:0] _T_1436; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@107580.4]
  wire  _T_1437; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@107581.4]
  wire  _T_1447; // @[Monitor.scala 700:27:chipyard.TestHarness.RocketConfig.fir@107595.4]
  wire  _T_1450; // @[Edges.scala 72:43:chipyard.TestHarness.RocketConfig.fir@107598.4]
  wire  _T_1451; // @[Edges.scala 72:40:chipyard.TestHarness.RocketConfig.fir@107599.4]
  wire  _T_1452; // @[Monitor.scala 700:38:chipyard.TestHarness.RocketConfig.fir@107600.4]
  wire [7:0] _T_1453; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@107602.6]
  wire [6:0] _T_1454; // @[Monitor.scala 702:23:chipyard.TestHarness.RocketConfig.fir@107604.6]
  wire  _T_1456; // @[Monitor.scala 702:14:chipyard.TestHarness.RocketConfig.fir@107606.6]
  wire  _T_1458; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@107608.6]
  wire  _T_1459; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@107609.6]
  wire [7:0] _GEN_69; // @[Monitor.scala 700:72:chipyard.TestHarness.RocketConfig.fir@107601.4]
  wire [7:0] _T_1464; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@107621.6]
  wire [6:0] _T_1465; // @[Monitor.scala 708:24:chipyard.TestHarness.RocketConfig.fir@107623.6]
  wire [6:0] _T_1466; // @[Monitor.scala 708:35:chipyard.TestHarness.RocketConfig.fir@107624.6]
  wire  _T_1469; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@107627.6]
  wire  _T_1470; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@107628.6]
  wire [7:0] _GEN_70; // @[Monitor.scala 706:73:chipyard.TestHarness.RocketConfig.fir@107620.4]
  wire [6:0] _T_1471; // @[Monitor.scala 713:27:chipyard.TestHarness.RocketConfig.fir@107634.4]
  wire [6:0] _T_1472; // @[Monitor.scala 713:38:chipyard.TestHarness.RocketConfig.fir@107635.4]
  wire [6:0] _T_1473; // @[Monitor.scala 713:36:chipyard.TestHarness.RocketConfig.fir@107636.4]
  wire  _GEN_88; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105254.10]
  wire  _GEN_104; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105343.10]
  wire  _GEN_122; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105442.10]
  wire  _GEN_134; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105501.10]
  wire  _GEN_144; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105552.10]
  wire  _GEN_154; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105605.10]
  wire  _GEN_164; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105656.10]
  wire  _GEN_174; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105707.10]
  wire  _GEN_186; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105776.10]
  wire  _GEN_196; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105818.10]
  wire  _GEN_208; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105876.10]
  wire  _GEN_220; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105935.10]
  wire  _GEN_226; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105970.10]
  wire  _GEN_232; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@106006.10]
  wire  _GEN_238; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106608.10]
  wire  _GEN_250; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106656.10]
  wire  _GEN_260; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106705.10]
  wire  _GEN_274; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106785.10]
  wire  _GEN_286; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106848.10]
  wire  _GEN_296; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106888.10]
  wire  _GEN_304; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106920.10]
  plusarg_reader #(.FORMAT("tilelink_timeout=%d"), .DEFAULT(0), .WIDTH(32)) plusarg_reader ( // @[PlusArg.scala 44:11:chipyard.TestHarness.RocketConfig.fir@107545.4]
    .out(plusarg_reader_out)
  );
  assign _T_4 = io_in_a_bits_source == 3'h4; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@105126.6]
  assign _T_5 = io_in_a_bits_source == 3'h0; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@105127.6]
  assign _T_6 = io_in_a_bits_source == 3'h2; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@105128.6]
  assign _T_8 = _T_4 | _T_5; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@105134.6]
  assign _T_9 = _T_8 | _T_6; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@105135.6]
  assign _T_11 = 13'h3f << io_in_a_bits_size; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@105137.6]
  assign _T_13 = ~_T_11[5:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@105139.6]
  assign _GEN_71 = {{26'd0}, _T_13}; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@105140.6]
  assign _T_14 = io_in_a_bits_address & _GEN_71; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@105140.6]
  assign _T_15 = _T_14 == 32'h0; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@105141.6]
  assign _T_18 = 4'h1 << io_in_a_bits_size[1:0]; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@105144.6]
  assign _T_20 = _T_18[2:0] | 3'h1; // @[Misc.scala 201:81:chipyard.TestHarness.RocketConfig.fir@105146.6]
  assign _T_21 = io_in_a_bits_size >= 3'h3; // @[Misc.scala 205:21:chipyard.TestHarness.RocketConfig.fir@105147.6]
  assign _T_24 = ~io_in_a_bits_address[2]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@105150.6]
  assign _T_26 = _T_20[2] & _T_24; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@105152.6]
  assign _T_27 = _T_21 | _T_26; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@105153.6]
  assign _T_29 = _T_20[2] & io_in_a_bits_address[2]; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@105155.6]
  assign _T_30 = _T_21 | _T_29; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@105156.6]
  assign _T_33 = ~io_in_a_bits_address[1]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@105159.6]
  assign _T_34 = _T_24 & _T_33; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@105160.6]
  assign _T_35 = _T_20[1] & _T_34; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@105161.6]
  assign _T_36 = _T_27 | _T_35; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@105162.6]
  assign _T_37 = _T_24 & io_in_a_bits_address[1]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@105163.6]
  assign _T_38 = _T_20[1] & _T_37; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@105164.6]
  assign _T_39 = _T_27 | _T_38; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@105165.6]
  assign _T_40 = io_in_a_bits_address[2] & _T_33; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@105166.6]
  assign _T_41 = _T_20[1] & _T_40; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@105167.6]
  assign _T_42 = _T_30 | _T_41; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@105168.6]
  assign _T_43 = io_in_a_bits_address[2] & io_in_a_bits_address[1]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@105169.6]
  assign _T_44 = _T_20[1] & _T_43; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@105170.6]
  assign _T_45 = _T_30 | _T_44; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@105171.6]
  assign _T_48 = ~io_in_a_bits_address[0]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@105174.6]
  assign _T_49 = _T_34 & _T_48; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@105175.6]
  assign _T_50 = _T_20[0] & _T_49; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@105176.6]
  assign _T_51 = _T_36 | _T_50; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@105177.6]
  assign _T_52 = _T_34 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@105178.6]
  assign _T_53 = _T_20[0] & _T_52; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@105179.6]
  assign _T_54 = _T_36 | _T_53; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@105180.6]
  assign _T_55 = _T_37 & _T_48; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@105181.6]
  assign _T_56 = _T_20[0] & _T_55; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@105182.6]
  assign _T_57 = _T_39 | _T_56; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@105183.6]
  assign _T_58 = _T_37 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@105184.6]
  assign _T_59 = _T_20[0] & _T_58; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@105185.6]
  assign _T_60 = _T_39 | _T_59; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@105186.6]
  assign _T_61 = _T_40 & _T_48; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@105187.6]
  assign _T_62 = _T_20[0] & _T_61; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@105188.6]
  assign _T_63 = _T_42 | _T_62; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@105189.6]
  assign _T_64 = _T_40 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@105190.6]
  assign _T_65 = _T_20[0] & _T_64; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@105191.6]
  assign _T_66 = _T_42 | _T_65; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@105192.6]
  assign _T_67 = _T_43 & _T_48; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@105193.6]
  assign _T_68 = _T_20[0] & _T_67; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@105194.6]
  assign _T_69 = _T_45 | _T_68; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@105195.6]
  assign _T_70 = _T_43 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@105196.6]
  assign _T_71 = _T_20[0] & _T_70; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@105197.6]
  assign _T_72 = _T_45 | _T_71; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@105198.6]
  assign _T_79 = {_T_72,_T_69,_T_66,_T_63,_T_60,_T_57,_T_54,_T_51}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@105205.6]
  assign _T_109 = io_in_a_bits_opcode == 3'h6; // @[Monitor.scala 79:25:chipyard.TestHarness.RocketConfig.fir@105239.6]
  assign _T_110 = 3'h6 == io_in_a_bits_size; // @[Parameters.scala 92:48:chipyard.TestHarness.RocketConfig.fir@105241.8]
  assign _T_112 = io_in_a_bits_address ^ 32'h80000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@105243.8]
  assign _T_113 = {1'b0,$signed(_T_112)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@105244.8]
  assign _T_115 = $signed(_T_113) & -33'sh10000000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@105246.8]
  assign _T_116 = $signed(_T_115) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@105247.8]
  assign _T_117 = _T_110 & _T_116; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@105248.8]
  assign _T_120 = _T_117 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105251.8]
  assign _T_121 = ~_T_120; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105252.8]
  assign _T_128 = _T_5 & _T_110; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@105267.8]
  assign _T_134 = _T_128 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105274.8]
  assign _T_135 = ~_T_134; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105275.8]
  assign _T_137 = _T_9 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105281.8]
  assign _T_138 = ~_T_137; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105282.8]
  assign _T_141 = _T_21 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105289.8]
  assign _T_142 = ~_T_141; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105290.8]
  assign _T_144 = _T_15 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105296.8]
  assign _T_145 = ~_T_144; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105297.8]
  assign _T_146 = io_in_a_bits_param <= 3'h2; // @[Bundles.scala 110:27:chipyard.TestHarness.RocketConfig.fir@105302.8]
  assign _T_148 = _T_146 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105304.8]
  assign _T_149 = ~_T_148; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105305.8]
  assign _T_150 = ~io_in_a_bits_mask; // @[Monitor.scala 86:18:chipyard.TestHarness.RocketConfig.fir@105310.8]
  assign _T_151 = _T_150 == 8'h0; // @[Monitor.scala 86:31:chipyard.TestHarness.RocketConfig.fir@105311.8]
  assign _T_153 = _T_151 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105313.8]
  assign _T_154 = ~_T_153; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105314.8]
  assign _T_155 = ~io_in_a_bits_corrupt; // @[Monitor.scala 87:18:chipyard.TestHarness.RocketConfig.fir@105319.8]
  assign _T_157 = _T_155 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105321.8]
  assign _T_158 = ~_T_157; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105322.8]
  assign _T_159 = io_in_a_bits_opcode == 3'h7; // @[Monitor.scala 90:25:chipyard.TestHarness.RocketConfig.fir@105328.6]
  assign _T_200 = io_in_a_bits_param != 3'h0; // @[Monitor.scala 97:31:chipyard.TestHarness.RocketConfig.fir@105399.8]
  assign _T_202 = _T_200 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105401.8]
  assign _T_203 = ~_T_202; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105402.8]
  assign _T_213 = io_in_a_bits_opcode == 3'h4; // @[Monitor.scala 102:25:chipyard.TestHarness.RocketConfig.fir@105425.6]
  assign _T_215 = io_in_a_bits_size <= 3'h6; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@105428.8]
  assign _T_223 = _T_215 & _T_116; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@105436.8]
  assign _T_226 = _T_223 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105439.8]
  assign _T_227 = ~_T_226; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105440.8]
  assign _T_234 = io_in_a_bits_param == 3'h0; // @[Monitor.scala 106:31:chipyard.TestHarness.RocketConfig.fir@105459.8]
  assign _T_236 = _T_234 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105461.8]
  assign _T_237 = ~_T_236; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105462.8]
  assign _T_238 = io_in_a_bits_mask == _T_79; // @[Monitor.scala 107:30:chipyard.TestHarness.RocketConfig.fir@105467.8]
  assign _T_240 = _T_238 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105469.8]
  assign _T_241 = ~_T_240; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105470.8]
  assign _T_246 = io_in_a_bits_opcode == 3'h0; // @[Monitor.scala 111:25:chipyard.TestHarness.RocketConfig.fir@105484.6]
  assign _T_275 = io_in_a_bits_opcode == 3'h1; // @[Monitor.scala 119:25:chipyard.TestHarness.RocketConfig.fir@105535.6]
  assign _T_300 = ~_T_79; // @[Monitor.scala 124:33:chipyard.TestHarness.RocketConfig.fir@105577.8]
  assign _T_301 = io_in_a_bits_mask & _T_300; // @[Monitor.scala 124:31:chipyard.TestHarness.RocketConfig.fir@105578.8]
  assign _T_302 = _T_301 == 8'h0; // @[Monitor.scala 124:40:chipyard.TestHarness.RocketConfig.fir@105579.8]
  assign _T_304 = _T_302 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105581.8]
  assign _T_305 = ~_T_304; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105582.8]
  assign _T_306 = io_in_a_bits_opcode == 3'h2; // @[Monitor.scala 127:25:chipyard.TestHarness.RocketConfig.fir@105588.6]
  assign _T_308 = io_in_a_bits_size <= 3'h3; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@105591.8]
  assign _T_316 = _T_308 & _T_116; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@105599.8]
  assign _T_319 = _T_316 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105602.8]
  assign _T_320 = ~_T_319; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105603.8]
  assign _T_327 = io_in_a_bits_param <= 3'h4; // @[Bundles.scala 140:33:chipyard.TestHarness.RocketConfig.fir@105622.8]
  assign _T_329 = _T_327 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105624.8]
  assign _T_330 = ~_T_329; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105625.8]
  assign _T_335 = io_in_a_bits_opcode == 3'h3; // @[Monitor.scala 135:25:chipyard.TestHarness.RocketConfig.fir@105639.6]
  assign _T_356 = io_in_a_bits_param <= 3'h3; // @[Bundles.scala 147:30:chipyard.TestHarness.RocketConfig.fir@105673.8]
  assign _T_358 = _T_356 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105675.8]
  assign _T_359 = ~_T_358; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105676.8]
  assign _T_364 = io_in_a_bits_opcode == 3'h5; // @[Monitor.scala 143:25:chipyard.TestHarness.RocketConfig.fir@105690.6]
  assign _T_385 = io_in_a_bits_param <= 3'h1; // @[Bundles.scala 160:28:chipyard.TestHarness.RocketConfig.fir@105724.8]
  assign _T_387 = _T_385 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105726.8]
  assign _T_388 = ~_T_387; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105727.8]
  assign _T_397 = io_in_d_bits_opcode <= 3'h6; // @[Bundles.scala 44:24:chipyard.TestHarness.RocketConfig.fir@105751.6]
  assign _T_399 = _T_397 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105753.6]
  assign _T_400 = ~_T_399; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105754.6]
  assign _T_401 = io_in_d_bits_source == 3'h4; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@105759.6]
  assign _T_402 = io_in_d_bits_source == 3'h0; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@105760.6]
  assign _T_403 = io_in_d_bits_source == 3'h2; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@105761.6]
  assign _T_405 = _T_401 | _T_402; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@105767.6]
  assign _T_406 = _T_405 | _T_403; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@105768.6]
  assign _T_407 = io_in_d_bits_sink < 3'h7; // @[Monitor.scala 303:31:chipyard.TestHarness.RocketConfig.fir@105769.6]
  assign _T_408 = io_in_d_bits_opcode == 3'h6; // @[Monitor.scala 307:25:chipyard.TestHarness.RocketConfig.fir@105770.6]
  assign _T_410 = _T_406 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105773.8]
  assign _T_411 = ~_T_410; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105774.8]
  assign _T_412 = io_in_d_bits_size >= 3'h3; // @[Monitor.scala 309:27:chipyard.TestHarness.RocketConfig.fir@105779.8]
  assign _T_414 = _T_412 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105781.8]
  assign _T_415 = ~_T_414; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105782.8]
  assign _T_416 = io_in_d_bits_param == 2'h0; // @[Monitor.scala 310:28:chipyard.TestHarness.RocketConfig.fir@105787.8]
  assign _T_418 = _T_416 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105789.8]
  assign _T_419 = ~_T_418; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105790.8]
  assign _T_420 = ~io_in_d_bits_corrupt; // @[Monitor.scala 311:15:chipyard.TestHarness.RocketConfig.fir@105795.8]
  assign _T_422 = _T_420 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105797.8]
  assign _T_423 = ~_T_422; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105798.8]
  assign _T_424 = ~io_in_d_bits_denied; // @[Monitor.scala 312:15:chipyard.TestHarness.RocketConfig.fir@105803.8]
  assign _T_426 = _T_424 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105805.8]
  assign _T_427 = ~_T_426; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105806.8]
  assign _T_428 = io_in_d_bits_opcode == 3'h4; // @[Monitor.scala 315:25:chipyard.TestHarness.RocketConfig.fir@105812.6]
  assign _T_433 = _T_407 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105822.8]
  assign _T_434 = ~_T_433; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105823.8]
  assign _T_439 = io_in_d_bits_param <= 2'h2; // @[Bundles.scala 104:26:chipyard.TestHarness.RocketConfig.fir@105836.8]
  assign _T_441 = _T_439 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105838.8]
  assign _T_442 = ~_T_441; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105839.8]
  assign _T_443 = io_in_d_bits_param != 2'h2; // @[Monitor.scala 320:28:chipyard.TestHarness.RocketConfig.fir@105844.8]
  assign _T_445 = _T_443 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105846.8]
  assign _T_446 = ~_T_445; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105847.8]
  assign _T_456 = io_in_d_bits_opcode == 3'h5; // @[Monitor.scala 325:25:chipyard.TestHarness.RocketConfig.fir@105870.6]
  assign _T_476 = _T_424 | io_in_d_bits_corrupt; // @[Monitor.scala 331:30:chipyard.TestHarness.RocketConfig.fir@105911.8]
  assign _T_478 = _T_476 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105913.8]
  assign _T_479 = ~_T_478; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105914.8]
  assign _T_485 = io_in_d_bits_opcode == 3'h0; // @[Monitor.scala 335:25:chipyard.TestHarness.RocketConfig.fir@105929.6]
  assign _T_502 = io_in_d_bits_opcode == 3'h1; // @[Monitor.scala 343:25:chipyard.TestHarness.RocketConfig.fir@105964.6]
  assign _T_520 = io_in_d_bits_opcode == 3'h2; // @[Monitor.scala 351:25:chipyard.TestHarness.RocketConfig.fir@106000.6]
  assign _T_570 = io_in_b_bits_address ^ 32'h80000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@106078.6]
  assign _T_571 = {1'b0,$signed(_T_570)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@106079.6]
  assign _T_573 = $signed(_T_571) & -33'sh10000000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@106081.6]
  assign _T_574 = $signed(_T_573) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@106082.6]
  assign _T_580 = io_in_b_bits_address & 32'h3f; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@106090.6]
  assign _T_581 = _T_580 == 32'h0; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@106091.6]
  assign _T_673 = _T_574 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106198.8]
  assign _T_674 = ~_T_673; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106199.8]
  assign _T_679 = _T_581 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106212.8]
  assign _T_680 = ~_T_679; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106213.8]
  assign _T_681 = io_in_b_bits_param <= 2'h2; // @[Bundles.scala 104:26:chipyard.TestHarness.RocketConfig.fir@106218.8]
  assign _T_683 = _T_681 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106220.8]
  assign _T_684 = ~_T_683; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106221.8]
  assign _T_829 = io_in_c_bits_source == 3'h4; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@106545.6]
  assign _T_830 = io_in_c_bits_source == 3'h0; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@106546.6]
  assign _T_831 = io_in_c_bits_source == 3'h2; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@106547.6]
  assign _T_833 = _T_829 | _T_830; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@106553.6]
  assign _T_834 = _T_833 | _T_831; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@106554.6]
  assign _T_836 = 13'h3f << io_in_c_bits_size; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@106556.6]
  assign _T_838 = ~_T_836[5:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@106558.6]
  assign _GEN_72 = {{26'd0}, _T_838}; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@106559.6]
  assign _T_839 = io_in_c_bits_address & _GEN_72; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@106559.6]
  assign _T_840 = _T_839 == 32'h0; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@106560.6]
  assign _T_841 = io_in_c_bits_address ^ 32'h80000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@106561.6]
  assign _T_842 = {1'b0,$signed(_T_841)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@106562.6]
  assign _T_844 = $signed(_T_842) & -33'sh10000000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@106564.6]
  assign _T_845 = $signed(_T_844) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@106565.6]
  assign _T_876 = io_in_c_bits_opcode == 3'h4; // @[Monitor.scala 239:25:chipyard.TestHarness.RocketConfig.fir@106602.6]
  assign _T_878 = _T_845 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106605.8]
  assign _T_879 = ~_T_878; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106606.8]
  assign _T_881 = _T_834 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106612.8]
  assign _T_882 = ~_T_881; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106613.8]
  assign _T_883 = io_in_c_bits_size >= 3'h3; // @[Monitor.scala 242:30:chipyard.TestHarness.RocketConfig.fir@106618.8]
  assign _T_885 = _T_883 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106620.8]
  assign _T_886 = ~_T_885; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106621.8]
  assign _T_888 = _T_840 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106627.8]
  assign _T_889 = ~_T_888; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106628.8]
  assign _T_890 = io_in_c_bits_param <= 3'h5; // @[Bundles.scala 122:29:chipyard.TestHarness.RocketConfig.fir@106633.8]
  assign _T_892 = _T_890 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106635.8]
  assign _T_893 = ~_T_892; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106636.8]
  assign _T_894 = ~io_in_c_bits_corrupt; // @[Monitor.scala 245:18:chipyard.TestHarness.RocketConfig.fir@106641.8]
  assign _T_896 = _T_894 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106643.8]
  assign _T_897 = ~_T_896; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106644.8]
  assign _T_898 = io_in_c_bits_opcode == 3'h5; // @[Monitor.scala 248:25:chipyard.TestHarness.RocketConfig.fir@106650.6]
  assign _T_916 = io_in_c_bits_opcode == 3'h6; // @[Monitor.scala 256:25:chipyard.TestHarness.RocketConfig.fir@106690.6]
  assign _T_917 = 3'h6 == io_in_c_bits_size; // @[Parameters.scala 92:48:chipyard.TestHarness.RocketConfig.fir@106692.8]
  assign _T_924 = _T_917 & _T_845; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@106699.8]
  assign _T_927 = _T_924 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106702.8]
  assign _T_928 = ~_T_927; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106703.8]
  assign _T_935 = _T_830 & _T_917; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@106718.8]
  assign _T_941 = _T_935 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106725.8]
  assign _T_942 = ~_T_941; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106726.8]
  assign _T_953 = io_in_c_bits_param <= 3'h2; // @[Bundles.scala 116:29:chipyard.TestHarness.RocketConfig.fir@106753.8]
  assign _T_955 = _T_953 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106755.8]
  assign _T_956 = ~_T_955; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106756.8]
  assign _T_961 = io_in_c_bits_opcode == 3'h7; // @[Monitor.scala 266:25:chipyard.TestHarness.RocketConfig.fir@106770.6]
  assign _T_1002 = io_in_c_bits_opcode == 3'h0; // @[Monitor.scala 275:25:chipyard.TestHarness.RocketConfig.fir@106842.6]
  assign _T_1012 = io_in_c_bits_param == 3'h0; // @[Monitor.scala 279:31:chipyard.TestHarness.RocketConfig.fir@106865.8]
  assign _T_1014 = _T_1012 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106867.8]
  assign _T_1015 = ~_T_1014; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106868.8]
  assign _T_1020 = io_in_c_bits_opcode == 3'h1; // @[Monitor.scala 283:25:chipyard.TestHarness.RocketConfig.fir@106882.6]
  assign _T_1034 = io_in_c_bits_opcode == 3'h2; // @[Monitor.scala 290:25:chipyard.TestHarness.RocketConfig.fir@106914.6]
  assign _T_1052 = io_in_e_bits_sink < 3'h7; // @[Monitor.scala 361:31:chipyard.TestHarness.RocketConfig.fir@106956.6]
  assign _T_1054 = _T_1052 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106958.6]
  assign _T_1055 = ~_T_1054; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106959.6]
  assign _T_1056 = io_in_a_ready & io_in_a_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@106965.4]
  assign _T_1063 = ~io_in_a_bits_opcode[2]; // @[Edges.scala 93:28:chipyard.TestHarness.RocketConfig.fir@106972.4]
  assign _T_1067 = _T_1065 - 3'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@106976.4]
  assign _T_1068 = _T_1065 == 3'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@106977.4]
  assign _T_1081 = ~_T_1068; // @[Monitor.scala 386:22:chipyard.TestHarness.RocketConfig.fir@106993.4]
  assign _T_1082 = io_in_a_valid & _T_1081; // @[Monitor.scala 386:19:chipyard.TestHarness.RocketConfig.fir@106994.4]
  assign _T_1083 = io_in_a_bits_opcode == _T_1076; // @[Monitor.scala 387:32:chipyard.TestHarness.RocketConfig.fir@106996.6]
  assign _T_1085 = _T_1083 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106998.6]
  assign _T_1086 = ~_T_1085; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106999.6]
  assign _T_1087 = io_in_a_bits_param == _T_1077; // @[Monitor.scala 388:32:chipyard.TestHarness.RocketConfig.fir@107004.6]
  assign _T_1089 = _T_1087 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@107006.6]
  assign _T_1090 = ~_T_1089; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@107007.6]
  assign _T_1091 = io_in_a_bits_size == _T_1078; // @[Monitor.scala 389:32:chipyard.TestHarness.RocketConfig.fir@107012.6]
  assign _T_1093 = _T_1091 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@107014.6]
  assign _T_1094 = ~_T_1093; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@107015.6]
  assign _T_1095 = io_in_a_bits_source == _T_1079; // @[Monitor.scala 390:32:chipyard.TestHarness.RocketConfig.fir@107020.6]
  assign _T_1097 = _T_1095 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@107022.6]
  assign _T_1098 = ~_T_1097; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@107023.6]
  assign _T_1099 = io_in_a_bits_address == _T_1080; // @[Monitor.scala 391:32:chipyard.TestHarness.RocketConfig.fir@107028.6]
  assign _T_1101 = _T_1099 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@107030.6]
  assign _T_1102 = ~_T_1101; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@107031.6]
  assign _T_1104 = _T_1056 & _T_1068; // @[Monitor.scala 393:20:chipyard.TestHarness.RocketConfig.fir@107038.4]
  assign _T_1105 = io_in_d_ready & io_in_d_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@107046.4]
  assign _T_1107 = 13'h3f << io_in_d_bits_size; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@107048.4]
  assign _T_1109 = ~_T_1107[5:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@107050.4]
  assign _T_1115 = _T_1113 - 3'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@107056.4]
  assign _T_1116 = _T_1113 == 3'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@107057.4]
  assign _T_1130 = ~_T_1116; // @[Monitor.scala 538:22:chipyard.TestHarness.RocketConfig.fir@107074.4]
  assign _T_1131 = io_in_d_valid & _T_1130; // @[Monitor.scala 538:19:chipyard.TestHarness.RocketConfig.fir@107075.4]
  assign _T_1132 = io_in_d_bits_opcode == _T_1124; // @[Monitor.scala 539:29:chipyard.TestHarness.RocketConfig.fir@107077.6]
  assign _T_1134 = _T_1132 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@107079.6]
  assign _T_1135 = ~_T_1134; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@107080.6]
  assign _T_1136 = io_in_d_bits_param == _T_1125; // @[Monitor.scala 540:29:chipyard.TestHarness.RocketConfig.fir@107085.6]
  assign _T_1138 = _T_1136 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@107087.6]
  assign _T_1139 = ~_T_1138; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@107088.6]
  assign _T_1140 = io_in_d_bits_size == _T_1126; // @[Monitor.scala 541:29:chipyard.TestHarness.RocketConfig.fir@107093.6]
  assign _T_1142 = _T_1140 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@107095.6]
  assign _T_1143 = ~_T_1142; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@107096.6]
  assign _T_1144 = io_in_d_bits_source == _T_1127; // @[Monitor.scala 542:29:chipyard.TestHarness.RocketConfig.fir@107101.6]
  assign _T_1146 = _T_1144 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@107103.6]
  assign _T_1147 = ~_T_1146; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@107104.6]
  assign _T_1148 = io_in_d_bits_sink == _T_1128; // @[Monitor.scala 543:29:chipyard.TestHarness.RocketConfig.fir@107109.6]
  assign _T_1150 = _T_1148 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@107111.6]
  assign _T_1151 = ~_T_1150; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@107112.6]
  assign _T_1152 = io_in_d_bits_denied == _T_1129; // @[Monitor.scala 544:29:chipyard.TestHarness.RocketConfig.fir@107117.6]
  assign _T_1154 = _T_1152 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@107119.6]
  assign _T_1155 = ~_T_1154; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@107120.6]
  assign _T_1157 = _T_1105 & _T_1116; // @[Monitor.scala 546:20:chipyard.TestHarness.RocketConfig.fir@107127.4]
  assign _T_1158 = io_in_b_ready & io_in_b_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@107136.4]
  assign _T_1169 = _T_1167 - 3'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@107147.4]
  assign _T_1170 = _T_1167 == 3'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@107148.4]
  assign _T_1183 = ~_T_1170; // @[Monitor.scala 409:22:chipyard.TestHarness.RocketConfig.fir@107164.4]
  assign _T_1184 = io_in_b_valid & _T_1183; // @[Monitor.scala 409:19:chipyard.TestHarness.RocketConfig.fir@107165.4]
  assign _T_1189 = io_in_b_bits_param == _T_1179; // @[Monitor.scala 411:32:chipyard.TestHarness.RocketConfig.fir@107175.6]
  assign _T_1191 = _T_1189 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@107177.6]
  assign _T_1192 = ~_T_1191; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@107178.6]
  assign _T_1201 = io_in_b_bits_address == _T_1182; // @[Monitor.scala 414:32:chipyard.TestHarness.RocketConfig.fir@107199.6]
  assign _T_1203 = _T_1201 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@107201.6]
  assign _T_1204 = ~_T_1203; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@107202.6]
  assign _T_1206 = _T_1158 & _T_1170; // @[Monitor.scala 416:20:chipyard.TestHarness.RocketConfig.fir@107209.4]
  assign _T_1207 = io_in_c_ready & io_in_c_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@107217.4]
  assign _T_1217 = _T_1215 - 3'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@107227.4]
  assign _T_1218 = _T_1215 == 3'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@107228.4]
  assign _T_1231 = ~_T_1218; // @[Monitor.scala 514:22:chipyard.TestHarness.RocketConfig.fir@107244.4]
  assign _T_1232 = io_in_c_valid & _T_1231; // @[Monitor.scala 514:19:chipyard.TestHarness.RocketConfig.fir@107245.4]
  assign _T_1233 = io_in_c_bits_opcode == _T_1226; // @[Monitor.scala 515:32:chipyard.TestHarness.RocketConfig.fir@107247.6]
  assign _T_1235 = _T_1233 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@107249.6]
  assign _T_1236 = ~_T_1235; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@107250.6]
  assign _T_1237 = io_in_c_bits_param == _T_1227; // @[Monitor.scala 516:32:chipyard.TestHarness.RocketConfig.fir@107255.6]
  assign _T_1239 = _T_1237 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@107257.6]
  assign _T_1240 = ~_T_1239; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@107258.6]
  assign _T_1241 = io_in_c_bits_size == _T_1228; // @[Monitor.scala 517:32:chipyard.TestHarness.RocketConfig.fir@107263.6]
  assign _T_1243 = _T_1241 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@107265.6]
  assign _T_1244 = ~_T_1243; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@107266.6]
  assign _T_1245 = io_in_c_bits_source == _T_1229; // @[Monitor.scala 518:32:chipyard.TestHarness.RocketConfig.fir@107271.6]
  assign _T_1247 = _T_1245 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@107273.6]
  assign _T_1248 = ~_T_1247; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@107274.6]
  assign _T_1249 = io_in_c_bits_address == _T_1230; // @[Monitor.scala 519:32:chipyard.TestHarness.RocketConfig.fir@107279.6]
  assign _T_1251 = _T_1249 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@107281.6]
  assign _T_1252 = ~_T_1251; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@107282.6]
  assign _T_1254 = _T_1207 & _T_1218; // @[Monitor.scala 521:20:chipyard.TestHarness.RocketConfig.fir@107289.4]
  assign _T_1266 = _T_1264 - 3'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@107311.4]
  assign a_first = _T_1264 == 3'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@107312.4]
  assign _T_1284 = _T_1282 - 3'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@107333.4]
  assign d_first = _T_1282 == 3'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@107334.4]
  assign _GEN_73 = {io_in_d_bits_source, 2'h0}; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@107353.4]
  assign _T_1292 = {{1'd0}, _GEN_73}; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@107353.4]
  assign _T_1293 = inflight_opcodes >> _T_1292; // @[Monitor.scala 629:44:chipyard.TestHarness.RocketConfig.fir@107354.4]
  assign _T_1297 = 16'h10 - 16'h1; // @[Monitor.scala 606:57:chipyard.TestHarness.RocketConfig.fir@107358.4]
  assign _GEN_74 = {{4'd0}, _T_1297}; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@107359.4]
  assign _T_1298 = _T_1293 & _GEN_74; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@107359.4]
  assign _T_1299 = {{1'd0}, _T_1298[19:1]}; // @[Monitor.scala 629:152:chipyard.TestHarness.RocketConfig.fir@107360.4]
  assign _T_1301 = inflight_sizes >> _T_1292; // @[Monitor.scala 633:40:chipyard.TestHarness.RocketConfig.fir@107365.4]
  assign _T_1306 = _T_1301 & _GEN_74; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@107370.4]
  assign _T_1307 = {{1'd0}, _T_1306[19:1]}; // @[Monitor.scala 633:144:chipyard.TestHarness.RocketConfig.fir@107371.4]
  assign _T_1311 = _T_1056 & a_first; // @[Monitor.scala 643:27:chipyard.TestHarness.RocketConfig.fir@107396.4]
  assign _T_1313 = 8'h1 << io_in_a_bits_source; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@107399.6]
  assign _T_1314 = {io_in_a_bits_opcode, 1'h0}; // @[Monitor.scala 645:53:chipyard.TestHarness.RocketConfig.fir@107401.6]
  assign _T_1315 = _T_1314 | 4'h1; // @[Monitor.scala 645:61:chipyard.TestHarness.RocketConfig.fir@107402.6]
  assign _T_1316 = {io_in_a_bits_size, 1'h0}; // @[Monitor.scala 646:49:chipyard.TestHarness.RocketConfig.fir@107404.6]
  assign _T_1317 = _T_1316 | 4'h1; // @[Monitor.scala 646:57:chipyard.TestHarness.RocketConfig.fir@107405.6]
  assign _GEN_79 = {io_in_a_bits_source, 2'h0}; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@107407.6]
  assign _T_1318 = {{1'd0}, _GEN_79}; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@107407.6]
  assign a_opcodes_set_interm = _T_1311 ? _T_1315 : 4'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@107398.4]
  assign _GEN_80 = {{63'd0}, a_opcodes_set_interm}; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@107408.6]
  assign _T_1319 = _GEN_80 << _T_1318; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@107408.6]
  assign a_sizes_set_interm = _T_1311 ? _T_1317 : 4'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@107398.4]
  assign _GEN_82 = {{63'd0}, a_sizes_set_interm}; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@107411.6]
  assign _T_1321 = _GEN_82 << _T_1318; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@107411.6]
  assign _T_1322 = inflight >> io_in_a_bits_source; // @[Monitor.scala 649:26:chipyard.TestHarness.RocketConfig.fir@107413.6]
  assign _T_1324 = ~_T_1322[0]; // @[Monitor.scala 649:17:chipyard.TestHarness.RocketConfig.fir@107415.6]
  assign _T_1326 = _T_1324 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@107417.6]
  assign _T_1327 = ~_T_1326; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@107418.6]
  assign _GEN_27 = _T_1311 ? _T_1313 : 8'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@107398.4]
  assign _GEN_30 = _T_1311 ? _T_1319 : 67'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@107398.4]
  assign _GEN_31 = _T_1311 ? _T_1321 : 67'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@107398.4]
  assign _T_1330 = _T_1105 & d_first; // @[Monitor.scala 660:27:chipyard.TestHarness.RocketConfig.fir@107432.4]
  assign _T_1332 = ~_T_408; // @[Monitor.scala 660:75:chipyard.TestHarness.RocketConfig.fir@107434.4]
  assign _T_1333 = _T_1330 & _T_1332; // @[Monitor.scala 660:72:chipyard.TestHarness.RocketConfig.fir@107435.4]
  assign _T_1334 = 8'h1 << io_in_d_bits_source; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@107437.6]
  assign _GEN_84 = {{63'd0}, _T_1297}; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@107444.6]
  assign _T_1340 = _GEN_84 << _T_1292; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@107444.6]
  assign _GEN_32 = _T_1333 ? _T_1334 : 8'h0; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@107436.4]
  assign _GEN_33 = _T_1333 ? _T_1340 : 79'h0; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@107436.4]
  assign _T_1347 = io_in_d_valid & d_first; // @[Monitor.scala 665:26:chipyard.TestHarness.RocketConfig.fir@107454.4]
  assign _T_1350 = _T_1347 & _T_1332; // @[Monitor.scala 665:71:chipyard.TestHarness.RocketConfig.fir@107457.4]
  assign _T_1351 = inflight >> io_in_d_bits_source; // @[Monitor.scala 666:25:chipyard.TestHarness.RocketConfig.fir@107459.6]
  assign _T_1353 = io_in_a_bits_source == io_in_d_bits_source; // @[Monitor.scala 666:93:chipyard.TestHarness.RocketConfig.fir@107461.6]
  assign _T_1354 = io_in_a_valid & _T_1353; // @[Monitor.scala 666:68:chipyard.TestHarness.RocketConfig.fir@107462.6]
  assign _T_1355 = io_in_a_bits_size == io_in_d_bits_size; // @[Monitor.scala 666:142:chipyard.TestHarness.RocketConfig.fir@107463.6]
  assign _T_1356 = _T_1354 & _T_1355; // @[Monitor.scala 666:119:chipyard.TestHarness.RocketConfig.fir@107464.6]
  assign _T_1357 = _T_1356 & a_first; // @[Monitor.scala 666:166:chipyard.TestHarness.RocketConfig.fir@107465.6]
  assign _T_1358 = _T_1351[0] | _T_1357; // @[Monitor.scala 666:49:chipyard.TestHarness.RocketConfig.fir@107466.6]
  assign _T_1360 = _T_1358 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@107468.6]
  assign _T_1361 = ~_T_1360; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@107469.6]
  assign a_opcode_lookup = _T_1299[3:0]; // @[:chipyard.TestHarness.RocketConfig.fir@107351.4 :chipyard.TestHarness.RocketConfig.fir@107352.4 Monitor.scala 629:21:chipyard.TestHarness.RocketConfig.fir@107361.4]
  assign _GEN_37 = 3'h2 == a_opcode_lookup[2:0] ? 3'h1 : 3'h0; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@107475.6]
  assign _GEN_38 = 3'h3 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_37; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@107475.6]
  assign _GEN_39 = 3'h4 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_38; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@107475.6]
  assign _GEN_40 = 3'h5 == a_opcode_lookup[2:0] ? 3'h2 : _GEN_39; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@107475.6]
  assign _GEN_41 = 3'h6 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_40; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@107475.6]
  assign _GEN_42 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_41; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@107475.6]
  assign _T_1363 = io_in_d_bits_opcode == _GEN_42; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@107475.6]
  assign _GEN_49 = 3'h6 == a_opcode_lookup[2:0] ? 3'h5 : _GEN_40; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@107477.6]
  assign _GEN_50 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_49; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@107477.6]
  assign _T_1365 = io_in_d_bits_opcode == _GEN_50; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@107477.6]
  assign _T_1366 = _T_1363 | _T_1365; // @[Monitor.scala 667:71:chipyard.TestHarness.RocketConfig.fir@107478.6]
  assign _GEN_53 = 3'h2 == io_in_a_bits_opcode ? 3'h1 : 3'h0; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@107479.6]
  assign _GEN_54 = 3'h3 == io_in_a_bits_opcode ? 3'h1 : _GEN_53; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@107479.6]
  assign _GEN_55 = 3'h4 == io_in_a_bits_opcode ? 3'h1 : _GEN_54; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@107479.6]
  assign _GEN_56 = 3'h5 == io_in_a_bits_opcode ? 3'h2 : _GEN_55; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@107479.6]
  assign _GEN_57 = 3'h6 == io_in_a_bits_opcode ? 3'h4 : _GEN_56; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@107479.6]
  assign _GEN_58 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_57; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@107479.6]
  assign _T_1367 = io_in_d_bits_opcode == _GEN_58; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@107479.6]
  assign _GEN_65 = 3'h6 == io_in_a_bits_opcode ? 3'h5 : _GEN_56; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@107480.6]
  assign _GEN_66 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_65; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@107480.6]
  assign _T_1368 = io_in_d_bits_opcode == _GEN_66; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@107480.6]
  assign _T_1369 = _T_1367 | _T_1368; // @[Monitor.scala 668:99:chipyard.TestHarness.RocketConfig.fir@107481.6]
  assign _T_1370 = io_in_a_valid & _T_1369; // @[Monitor.scala 668:34:chipyard.TestHarness.RocketConfig.fir@107482.6]
  assign _T_1371 = _T_1366 | _T_1370; // @[Monitor.scala 668:15:chipyard.TestHarness.RocketConfig.fir@107483.6]
  assign _T_1373 = _T_1371 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@107485.6]
  assign _T_1374 = ~_T_1373; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@107486.6]
  assign a_size_lookup = _T_1307[3:0]; // @[:chipyard.TestHarness.RocketConfig.fir@107362.4 :chipyard.TestHarness.RocketConfig.fir@107363.4 Monitor.scala 633:19:chipyard.TestHarness.RocketConfig.fir@107372.4]
  assign _GEN_87 = {{1'd0}, io_in_d_bits_size}; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@107491.6]
  assign _T_1375 = _GEN_87 == a_size_lookup; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@107491.6]
  assign _T_1377 = io_in_a_valid & _T_1355; // @[Monitor.scala 670:72:chipyard.TestHarness.RocketConfig.fir@107493.6]
  assign _T_1378 = _T_1375 | _T_1377; // @[Monitor.scala 670:53:chipyard.TestHarness.RocketConfig.fir@107494.6]
  assign _T_1380 = _T_1378 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@107496.6]
  assign _T_1381 = ~_T_1380; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@107497.6]
  assign _T_1383 = _T_1347 & a_first; // @[Monitor.scala 672:36:chipyard.TestHarness.RocketConfig.fir@107504.4]
  assign _T_1384 = _T_1383 & io_in_a_valid; // @[Monitor.scala 672:47:chipyard.TestHarness.RocketConfig.fir@107505.4]
  assign _T_1386 = _T_1384 & _T_1353; // @[Monitor.scala 672:65:chipyard.TestHarness.RocketConfig.fir@107507.4]
  assign _T_1388 = _T_1386 & _T_1332; // @[Monitor.scala 672:116:chipyard.TestHarness.RocketConfig.fir@107509.4]
  assign _T_1389 = ~io_in_d_ready; // @[Monitor.scala 673:15:chipyard.TestHarness.RocketConfig.fir@107511.6]
  assign _T_1390 = _T_1389 | io_in_a_ready; // @[Monitor.scala 673:32:chipyard.TestHarness.RocketConfig.fir@107512.6]
  assign _T_1392 = _T_1390 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@107514.6]
  assign _T_1393 = ~_T_1392; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@107515.6]
  assign a_set = _GEN_27[4:0]; // @[:chipyard.TestHarness.RocketConfig.fir@107345.4 :chipyard.TestHarness.RocketConfig.fir@107346.4 Monitor.scala 644:13:chipyard.TestHarness.RocketConfig.fir@107400.6]
  assign d_clr = _GEN_32[4:0]; // @[:chipyard.TestHarness.RocketConfig.fir@107424.4 :chipyard.TestHarness.RocketConfig.fir@107425.4 Monitor.scala 661:13:chipyard.TestHarness.RocketConfig.fir@107438.6]
  assign _T_1394 = a_set != d_clr; // @[Monitor.scala 677:20:chipyard.TestHarness.RocketConfig.fir@107521.4]
  assign _T_1395 = |a_set; // @[Monitor.scala 677:40:chipyard.TestHarness.RocketConfig.fir@107522.4]
  assign _T_1396 = ~_T_1395; // @[Monitor.scala 677:33:chipyard.TestHarness.RocketConfig.fir@107523.4]
  assign _T_1397 = _T_1394 | _T_1396; // @[Monitor.scala 677:30:chipyard.TestHarness.RocketConfig.fir@107524.4]
  assign _T_1399 = _T_1397 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@107526.4]
  assign _T_1400 = ~_T_1399; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@107527.4]
  assign _T_1401 = inflight | a_set; // @[Monitor.scala 680:27:chipyard.TestHarness.RocketConfig.fir@107532.4]
  assign _T_1402 = ~d_clr; // @[Monitor.scala 680:38:chipyard.TestHarness.RocketConfig.fir@107533.4]
  assign _T_1403 = _T_1401 & _T_1402; // @[Monitor.scala 680:36:chipyard.TestHarness.RocketConfig.fir@107534.4]
  assign a_opcodes_set = _GEN_30[19:0]; // @[:chipyard.TestHarness.RocketConfig.fir@107347.4 :chipyard.TestHarness.RocketConfig.fir@107348.4 Monitor.scala 647:21:chipyard.TestHarness.RocketConfig.fir@107409.6]
  assign _T_1404 = inflight_opcodes | a_opcodes_set; // @[Monitor.scala 681:43:chipyard.TestHarness.RocketConfig.fir@107536.4]
  assign d_opcodes_clr = _GEN_33[19:0]; // @[:chipyard.TestHarness.RocketConfig.fir@107426.4 :chipyard.TestHarness.RocketConfig.fir@107427.4 Monitor.scala 662:21:chipyard.TestHarness.RocketConfig.fir@107445.6]
  assign _T_1405 = ~d_opcodes_clr; // @[Monitor.scala 681:62:chipyard.TestHarness.RocketConfig.fir@107537.4]
  assign _T_1406 = _T_1404 & _T_1405; // @[Monitor.scala 681:60:chipyard.TestHarness.RocketConfig.fir@107538.4]
  assign a_sizes_set = _GEN_31[19:0]; // @[:chipyard.TestHarness.RocketConfig.fir@107349.4 :chipyard.TestHarness.RocketConfig.fir@107350.4 Monitor.scala 648:19:chipyard.TestHarness.RocketConfig.fir@107412.6]
  assign _T_1407 = inflight_sizes | a_sizes_set; // @[Monitor.scala 682:39:chipyard.TestHarness.RocketConfig.fir@107540.4]
  assign _T_1409 = _T_1407 & _T_1405; // @[Monitor.scala 682:54:chipyard.TestHarness.RocketConfig.fir@107542.4]
  assign _T_1411 = |inflight; // @[Monitor.scala 687:26:chipyard.TestHarness.RocketConfig.fir@107547.4]
  assign _T_1412 = ~_T_1411; // @[Monitor.scala 687:16:chipyard.TestHarness.RocketConfig.fir@107548.4]
  assign _T_1413 = plusarg_reader_out == 32'h0; // @[Monitor.scala 687:39:chipyard.TestHarness.RocketConfig.fir@107549.4]
  assign _T_1414 = _T_1412 | _T_1413; // @[Monitor.scala 687:30:chipyard.TestHarness.RocketConfig.fir@107550.4]
  assign _T_1415 = _T_1410 < plusarg_reader_out; // @[Monitor.scala 687:59:chipyard.TestHarness.RocketConfig.fir@107551.4]
  assign _T_1416 = _T_1414 | _T_1415; // @[Monitor.scala 687:47:chipyard.TestHarness.RocketConfig.fir@107552.4]
  assign _T_1418 = _T_1416 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@107554.4]
  assign _T_1419 = ~_T_1418; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@107555.4]
  assign _T_1421 = _T_1410 + 32'h1; // @[Monitor.scala 689:26:chipyard.TestHarness.RocketConfig.fir@107561.4]
  assign _T_1424 = _T_1056 | _T_1105; // @[Monitor.scala 690:27:chipyard.TestHarness.RocketConfig.fir@107565.4]
  assign _T_1436 = _T_1434 - 3'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@107580.4]
  assign _T_1437 = _T_1434 == 3'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@107581.4]
  assign _T_1447 = _T_1105 & _T_1437; // @[Monitor.scala 700:27:chipyard.TestHarness.RocketConfig.fir@107595.4]
  assign _T_1450 = ~io_in_d_bits_opcode[1]; // @[Edges.scala 72:43:chipyard.TestHarness.RocketConfig.fir@107598.4]
  assign _T_1451 = io_in_d_bits_opcode[2] & _T_1450; // @[Edges.scala 72:40:chipyard.TestHarness.RocketConfig.fir@107599.4]
  assign _T_1452 = _T_1447 & _T_1451; // @[Monitor.scala 700:38:chipyard.TestHarness.RocketConfig.fir@107600.4]
  assign _T_1453 = 8'h1 << io_in_d_bits_sink; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@107602.6]
  assign _T_1454 = _T_1425 >> io_in_d_bits_sink; // @[Monitor.scala 702:23:chipyard.TestHarness.RocketConfig.fir@107604.6]
  assign _T_1456 = ~_T_1454[0]; // @[Monitor.scala 702:14:chipyard.TestHarness.RocketConfig.fir@107606.6]
  assign _T_1458 = _T_1456 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@107608.6]
  assign _T_1459 = ~_T_1458; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@107609.6]
  assign _GEN_69 = _T_1452 ? _T_1453 : 8'h0; // @[Monitor.scala 700:72:chipyard.TestHarness.RocketConfig.fir@107601.4]
  assign _T_1464 = 8'h1 << io_in_e_bits_sink; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@107621.6]
  assign _T_1465 = _GEN_69[6:0] | _T_1425; // @[Monitor.scala 708:24:chipyard.TestHarness.RocketConfig.fir@107623.6]
  assign _T_1466 = _T_1465 >> io_in_e_bits_sink; // @[Monitor.scala 708:35:chipyard.TestHarness.RocketConfig.fir@107624.6]
  assign _T_1469 = _T_1466[0] | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@107627.6]
  assign _T_1470 = ~_T_1469; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@107628.6]
  assign _GEN_70 = io_in_e_valid ? _T_1464 : 8'h0; // @[Monitor.scala 706:73:chipyard.TestHarness.RocketConfig.fir@107620.4]
  assign _T_1471 = _T_1425 | _GEN_69[6:0]; // @[Monitor.scala 713:27:chipyard.TestHarness.RocketConfig.fir@107634.4]
  assign _T_1472 = ~_GEN_70[6:0]; // @[Monitor.scala 713:38:chipyard.TestHarness.RocketConfig.fir@107635.4]
  assign _T_1473 = _T_1471 & _T_1472; // @[Monitor.scala 713:36:chipyard.TestHarness.RocketConfig.fir@107636.4]
  assign _GEN_88 = io_in_a_valid & _T_109; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105254.10]
  assign _GEN_104 = io_in_a_valid & _T_159; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105343.10]
  assign _GEN_122 = io_in_a_valid & _T_213; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105442.10]
  assign _GEN_134 = io_in_a_valid & _T_246; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105501.10]
  assign _GEN_144 = io_in_a_valid & _T_275; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105552.10]
  assign _GEN_154 = io_in_a_valid & _T_306; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105605.10]
  assign _GEN_164 = io_in_a_valid & _T_335; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105656.10]
  assign _GEN_174 = io_in_a_valid & _T_364; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105707.10]
  assign _GEN_186 = io_in_d_valid & _T_408; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105776.10]
  assign _GEN_196 = io_in_d_valid & _T_428; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105818.10]
  assign _GEN_208 = io_in_d_valid & _T_456; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105876.10]
  assign _GEN_220 = io_in_d_valid & _T_485; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105935.10]
  assign _GEN_226 = io_in_d_valid & _T_502; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105970.10]
  assign _GEN_232 = io_in_d_valid & _T_520; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@106006.10]
  assign _GEN_238 = io_in_c_valid & _T_876; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106608.10]
  assign _GEN_250 = io_in_c_valid & _T_898; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106656.10]
  assign _GEN_260 = io_in_c_valid & _T_916; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106705.10]
  assign _GEN_274 = io_in_c_valid & _T_961; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106785.10]
  assign _GEN_286 = io_in_c_valid & _T_1002; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106848.10]
  assign _GEN_296 = io_in_c_valid & _T_1020; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106888.10]
  assign _GEN_304 = io_in_c_valid & _T_1034; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106920.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock type unsupported by manager (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105254.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105255.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock from a client which does not support Probe (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105277.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105278.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock carries invalid source ID (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105284.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105285.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock smaller than a beat (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105292.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105293.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock address not aligned to size (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105299.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105300.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock carries invalid grow param (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105307.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105308.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock contains invalid mask (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105316.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105317.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock is corrupt (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105324.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105325.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm type unsupported by manager (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105343.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105344.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm from a client which does not support Probe (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105366.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105367.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm carries invalid source ID (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105373.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105374.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm smaller than a beat (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105381.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105382.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm address not aligned to size (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105388.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105389.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm carries invalid grow param (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105396.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105397.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm requests NtoB (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105404.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105405.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm contains invalid mask (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105413.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105414.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm is corrupt (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105421.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105422.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Get type unsupported by manager (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105442.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105443.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get carries invalid source ID (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105449.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105450.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get address not aligned to size (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105456.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105457.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get carries invalid param (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105464.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105465.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get contains invalid mask (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105472.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105473.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get is corrupt (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105480.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105481.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutFull type unsupported by manager (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105501.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105502.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull carries invalid source ID (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105508.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105509.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull address not aligned to size (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105515.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105516.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull carries invalid param (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105523.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105524.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull contains invalid mask (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105531.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105532.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutPartial type unsupported by manager (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105552.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105553.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial carries invalid source ID (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105559.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105560.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial address not aligned to size (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105566.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105567.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial carries invalid param (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105574.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105575.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial contains invalid mask (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105584.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105585.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Arithmetic type unsupported by manager (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105605.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105606.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic carries invalid source ID (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105612.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105613.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic address not aligned to size (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105619.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105620.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic carries invalid opcode param (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105627.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105628.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic contains invalid mask (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105635.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105636.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Logical type unsupported by manager (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105656.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105657.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical carries invalid source ID (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105663.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105664.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical address not aligned to size (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105670.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105671.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical carries invalid opcode param (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105678.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105679.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical contains invalid mask (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105686.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105687.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Hint type unsupported by manager (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105707.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105708.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint carries invalid source ID (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105714.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105715.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint address not aligned to size (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105721.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105722.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint carries invalid opcode param (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105729.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105730.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint contains invalid mask (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105737.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105738.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint is corrupt (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105745.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@105746.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel has invalid opcode (connected at Configs.scala:111:26)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105756.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105757.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck carries invalid source ID (connected at Configs.scala:111:26)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105776.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105777.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck smaller than a beat (connected at Configs.scala:111:26)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105784.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105785.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseeAck carries invalid param (connected at Configs.scala:111:26)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105792.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105793.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck is corrupt (connected at Configs.scala:111:26)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105800.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105801.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck is denied (connected at Configs.scala:111:26)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105808.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105809.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid source ID (connected at Configs.scala:111:26)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105818.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105819.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid sink ID (connected at Configs.scala:111:26)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105825.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105826.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant smaller than a beat (connected at Configs.scala:111:26)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105833.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105834.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid cap param (connected at Configs.scala:111:26)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105841.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105842.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries toN param (connected at Configs.scala:111:26)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105849.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105850.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant is corrupt (connected at Configs.scala:111:26)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105857.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105858.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid source ID (connected at Configs.scala:111:26)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105876.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105877.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid sink ID (connected at Configs.scala:111:26)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105883.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105884.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData smaller than a beat (connected at Configs.scala:111:26)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105891.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105892.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid cap param (connected at Configs.scala:111:26)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105899.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105900.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries toN param (connected at Configs.scala:111:26)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105907.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105908.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData is denied but not corrupt (connected at Configs.scala:111:26)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105916.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105917.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck carries invalid source ID (connected at Configs.scala:111:26)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105935.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105936.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck carries invalid param (connected at Configs.scala:111:26)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105943.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105944.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck is corrupt (connected at Configs.scala:111:26)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105951.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105952.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData carries invalid source ID (connected at Configs.scala:111:26)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105970.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105971.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData carries invalid param (connected at Configs.scala:111:26)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105978.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105979.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData is denied but not corrupt (connected at Configs.scala:111:26)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105987.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@105988.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck carries invalid source ID (connected at Configs.scala:111:26)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@106006.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@106007.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck carries invalid param (connected at Configs.scala:111:26)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@106014.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@106015.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck is corrupt (connected at Configs.scala:111:26)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@106022.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@106023.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'B' channel Probe carries unmanaged address (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106201.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106202.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'B' channel Probe address not aligned to size (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106215.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106216.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'B' channel Probe carries invalid cap param (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106223.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106224.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAck carries unmanaged address (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106608.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106609.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAck carries invalid source ID (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106615.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106616.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAck smaller than a beat (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106623.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106624.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAck address not aligned to size (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106630.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106631.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAck carries invalid report param (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106638.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106639.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAck is corrupt (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106646.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106647.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAckData carries unmanaged address (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106656.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106657.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAckData carries invalid source ID (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106663.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106664.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAckData smaller than a beat (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106671.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106672.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAckData address not aligned to size (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106678.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106679.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAckData carries invalid report param (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106686.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106687.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel carries Release type unsupported by manager (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106705.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106706.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel carries Release from a client which does not support Probe (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106728.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106729.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel Release carries invalid source ID (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106735.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106736.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel Release smaller than a beat (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106743.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106744.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel Release address not aligned to size (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106750.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106751.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel Release carries invalid shrink param (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106758.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106759.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel Release is corrupt (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106766.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106767.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel carries ReleaseData type unsupported by manager (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106785.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106786.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel carries Release from a client which does not support Probe (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106808.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106809.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ReleaseData carries invalid source ID (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106815.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106816.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ReleaseData smaller than a beat (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106823.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106824.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ReleaseData address not aligned to size (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106830.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106831.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ReleaseData carries invalid shrink param (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106838.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106839.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAck carries unmanaged address (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106848.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106849.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAck carries invalid source ID (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106855.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106856.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAck address not aligned to size (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106862.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106863.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAck carries invalid param (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106870.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106871.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAck is corrupt (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106878.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106879.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAckData carries unmanaged address (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106888.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106889.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAckData carries invalid source ID (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106895.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106896.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAckData address not aligned to size (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106902.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106903.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAckData carries invalid param (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106910.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106911.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel HintAck carries unmanaged address (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106920.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106921.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel HintAck carries invalid source ID (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106927.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106928.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel HintAck address not aligned to size (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106934.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106935.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel HintAck carries invalid param (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106942.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106943.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel HintAck is corrupt (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106950.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106951.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'E' channels carries invalid sink ID (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106961.8]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@106962.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel opcode changed within multibeat operation (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@107001.8]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@107002.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel param changed within multibeat operation (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@107009.8]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@107010.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel size changed within multibeat operation (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@107017.8]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@107018.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel source changed within multibeat operation (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@107025.8]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@107026.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel address changed with multibeat operation (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@107033.8]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@107034.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel opcode changed within multibeat operation (connected at Configs.scala:111:26)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@107082.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@107083.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel param changed within multibeat operation (connected at Configs.scala:111:26)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@107090.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@107091.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel size changed within multibeat operation (connected at Configs.scala:111:26)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@107098.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@107099.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel source changed within multibeat operation (connected at Configs.scala:111:26)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@107106.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@107107.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel sink changed with multibeat operation (connected at Configs.scala:111:26)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@107114.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@107115.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel denied changed with multibeat operation (connected at Configs.scala:111:26)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@107122.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@107123.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'B' channel param changed within multibeat operation (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@107180.8]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@107181.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'B' channel addresss changed with multibeat operation (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@107204.8]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@107205.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel opcode changed within multibeat operation (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@107252.8]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@107253.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel param changed within multibeat operation (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@107260.8]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@107261.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel size changed within multibeat operation (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@107268.8]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@107269.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel source changed within multibeat operation (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@107276.8]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@107277.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel address changed with multibeat operation (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@107284.8]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@107285.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel re-used a source ID (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@107420.8]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@107421.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel acknowledged for nothing inflight (connected at Configs.scala:111:26)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@107471.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@107472.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper opcode response (connected at Configs.scala:111:26)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@107488.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@107489.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper response size (connected at Configs.scala:111:26)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@107499.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@107500.8]
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
          $fwrite(32'h80000002,"Assertion failed: ready check\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@107517.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@107518.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' and 'D' concurrent, despite minlatency 2 (connected at Configs.scala:111:26)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@107529.6]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@107530.6]
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
          $fwrite(32'h80000002,"Assertion failed: TileLink timeout expired (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@107557.6]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@107558.6]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel re-used a sink ID (connected at Configs.scala:111:26)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@107611.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@107612.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'E' channel acknowledged for nothing inflight (connected at Configs.scala:111:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@107630.8]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@107631.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
