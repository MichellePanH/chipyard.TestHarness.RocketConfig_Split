module TLMonitor_43( // @[:chipyard.TestHarness.RocketConfig.fir@107880.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@107881.4]
  input         reset, // @[:chipyard.TestHarness.RocketConfig.fir@107882.4]
  input         io_in_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@107883.4]
  input         io_in_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@107883.4]
  input  [2:0]  io_in_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@107883.4]
  input  [2:0]  io_in_a_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@107883.4]
  input  [2:0]  io_in_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@107883.4]
  input  [2:0]  io_in_a_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@107883.4]
  input  [31:0] io_in_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@107883.4]
  input  [7:0]  io_in_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@107883.4]
  input         io_in_a_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@107883.4]
  input         io_in_c_ready, // @[:chipyard.TestHarness.RocketConfig.fir@107883.4]
  input         io_in_c_valid, // @[:chipyard.TestHarness.RocketConfig.fir@107883.4]
  input  [2:0]  io_in_c_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@107883.4]
  input  [2:0]  io_in_c_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@107883.4]
  input  [2:0]  io_in_c_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@107883.4]
  input  [2:0]  io_in_c_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@107883.4]
  input  [31:0] io_in_c_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@107883.4]
  input         io_in_c_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@107883.4]
  input         io_in_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@107883.4]
  input         io_in_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@107883.4]
  input  [2:0]  io_in_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@107883.4]
  input  [1:0]  io_in_d_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@107883.4]
  input  [2:0]  io_in_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@107883.4]
  input  [2:0]  io_in_d_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@107883.4]
  input  [2:0]  io_in_d_bits_sink, // @[:chipyard.TestHarness.RocketConfig.fir@107883.4]
  input         io_in_d_bits_denied, // @[:chipyard.TestHarness.RocketConfig.fir@107883.4]
  input         io_in_d_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@107883.4]
  input         io_in_e_valid, // @[:chipyard.TestHarness.RocketConfig.fir@107883.4]
  input  [2:0]  io_in_e_bits_sink // @[:chipyard.TestHarness.RocketConfig.fir@107883.4]
);
  wire [31:0] plusarg_reader_out; // @[PlusArg.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110203.4]
  wire  _T_10; // @[Parameters.scala 58:20:chipyard.TestHarness.RocketConfig.fir@107900.6]
  wire [12:0] _T_14; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@107906.6]
  wire [5:0] _T_16; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@107908.6]
  wire [31:0] _GEN_71; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@107909.6]
  wire [31:0] _T_17; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@107909.6]
  wire  _T_18; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@107910.6]
  wire [3:0] _T_21; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@107913.6]
  wire [2:0] _T_23; // @[Misc.scala 201:81:chipyard.TestHarness.RocketConfig.fir@107915.6]
  wire  _T_24; // @[Misc.scala 205:21:chipyard.TestHarness.RocketConfig.fir@107916.6]
  wire  _T_27; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@107919.6]
  wire  _T_29; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@107921.6]
  wire  _T_30; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@107922.6]
  wire  _T_32; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@107924.6]
  wire  _T_33; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@107925.6]
  wire  _T_36; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@107928.6]
  wire  _T_37; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@107929.6]
  wire  _T_38; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@107930.6]
  wire  _T_39; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@107931.6]
  wire  _T_40; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@107932.6]
  wire  _T_41; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@107933.6]
  wire  _T_42; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@107934.6]
  wire  _T_43; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@107935.6]
  wire  _T_44; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@107936.6]
  wire  _T_45; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@107937.6]
  wire  _T_46; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@107938.6]
  wire  _T_47; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@107939.6]
  wire  _T_48; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@107940.6]
  wire  _T_51; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@107943.6]
  wire  _T_52; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@107944.6]
  wire  _T_53; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@107945.6]
  wire  _T_54; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@107946.6]
  wire  _T_55; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@107947.6]
  wire  _T_56; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@107948.6]
  wire  _T_57; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@107949.6]
  wire  _T_58; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@107950.6]
  wire  _T_59; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@107951.6]
  wire  _T_60; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@107952.6]
  wire  _T_61; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@107953.6]
  wire  _T_62; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@107954.6]
  wire  _T_63; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@107955.6]
  wire  _T_64; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@107956.6]
  wire  _T_65; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@107957.6]
  wire  _T_66; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@107958.6]
  wire  _T_67; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@107959.6]
  wire  _T_68; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@107960.6]
  wire  _T_69; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@107961.6]
  wire  _T_70; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@107962.6]
  wire  _T_71; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@107963.6]
  wire  _T_72; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@107964.6]
  wire  _T_73; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@107965.6]
  wire  _T_74; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@107966.6]
  wire  _T_75; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@107967.6]
  wire [7:0] _T_82; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@107974.6]
  wire  _T_101; // @[Monitor.scala 79:25:chipyard.TestHarness.RocketConfig.fir@107997.6]
  wire  _T_103; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@108000.8]
  wire [31:0] _T_106; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@108003.8]
  wire [32:0] _T_107; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@108004.8]
  wire [32:0] _T_109; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@108006.8]
  wire  _T_110; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@108007.8]
  wire  _T_111; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@108008.8]
  wire  _T_114; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108011.8]
  wire  _T_115; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108012.8]
  wire  _T_116; // @[Parameters.scala 92:48:chipyard.TestHarness.RocketConfig.fir@108017.8]
  wire  _T_118; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108019.8]
  wire  _T_119; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108020.8]
  wire  _T_121; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108026.8]
  wire  _T_122; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108027.8]
  wire  _T_125; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108034.8]
  wire  _T_126; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108035.8]
  wire  _T_128; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108041.8]
  wire  _T_129; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108042.8]
  wire  _T_130; // @[Bundles.scala 110:27:chipyard.TestHarness.RocketConfig.fir@108047.8]
  wire  _T_132; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108049.8]
  wire  _T_133; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108050.8]
  wire [7:0] _T_134; // @[Monitor.scala 86:18:chipyard.TestHarness.RocketConfig.fir@108055.8]
  wire  _T_135; // @[Monitor.scala 86:31:chipyard.TestHarness.RocketConfig.fir@108056.8]
  wire  _T_137; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108058.8]
  wire  _T_138; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108059.8]
  wire  _T_139; // @[Monitor.scala 87:18:chipyard.TestHarness.RocketConfig.fir@108064.8]
  wire  _T_141; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108066.8]
  wire  _T_142; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108067.8]
  wire  _T_143; // @[Monitor.scala 90:25:chipyard.TestHarness.RocketConfig.fir@108073.6]
  wire  _T_176; // @[Monitor.scala 97:31:chipyard.TestHarness.RocketConfig.fir@108131.8]
  wire  _T_178; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108133.8]
  wire  _T_179; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108134.8]
  wire  _T_189; // @[Monitor.scala 102:25:chipyard.TestHarness.RocketConfig.fir@108157.6]
  wire  _T_210; // @[Monitor.scala 106:31:chipyard.TestHarness.RocketConfig.fir@108191.8]
  wire  _T_212; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108193.8]
  wire  _T_213; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108194.8]
  wire  _T_214; // @[Monitor.scala 107:30:chipyard.TestHarness.RocketConfig.fir@108199.8]
  wire  _T_216; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108201.8]
  wire  _T_217; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108202.8]
  wire  _T_222; // @[Monitor.scala 111:25:chipyard.TestHarness.RocketConfig.fir@108216.6]
  wire  _T_251; // @[Monitor.scala 119:25:chipyard.TestHarness.RocketConfig.fir@108267.6]
  wire [7:0] _T_276; // @[Monitor.scala 124:33:chipyard.TestHarness.RocketConfig.fir@108309.8]
  wire [7:0] _T_277; // @[Monitor.scala 124:31:chipyard.TestHarness.RocketConfig.fir@108310.8]
  wire  _T_278; // @[Monitor.scala 124:40:chipyard.TestHarness.RocketConfig.fir@108311.8]
  wire  _T_280; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108313.8]
  wire  _T_281; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108314.8]
  wire  _T_282; // @[Monitor.scala 127:25:chipyard.TestHarness.RocketConfig.fir@108320.6]
  wire  _T_293; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108332.8]
  wire  _T_300; // @[Bundles.scala 140:33:chipyard.TestHarness.RocketConfig.fir@108351.8]
  wire  _T_302; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108353.8]
  wire  _T_303; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108354.8]
  wire  _T_308; // @[Monitor.scala 135:25:chipyard.TestHarness.RocketConfig.fir@108368.6]
  wire  _T_326; // @[Bundles.scala 147:30:chipyard.TestHarness.RocketConfig.fir@108399.8]
  wire  _T_328; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108401.8]
  wire  _T_329; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108402.8]
  wire  _T_334; // @[Monitor.scala 143:25:chipyard.TestHarness.RocketConfig.fir@108416.6]
  wire  _T_352; // @[Bundles.scala 160:28:chipyard.TestHarness.RocketConfig.fir@108447.8]
  wire  _T_354; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108449.8]
  wire  _T_355; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108450.8]
  wire  _T_364; // @[Bundles.scala 44:24:chipyard.TestHarness.RocketConfig.fir@108474.6]
  wire  _T_366; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108476.6]
  wire  _T_367; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108477.6]
  wire  _T_374; // @[Parameters.scala 58:20:chipyard.TestHarness.RocketConfig.fir@108488.6]
  wire  _T_378; // @[Monitor.scala 307:25:chipyard.TestHarness.RocketConfig.fir@108494.6]
  wire  _T_380; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108497.8]
  wire  _T_381; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108498.8]
  wire  _T_382; // @[Monitor.scala 309:27:chipyard.TestHarness.RocketConfig.fir@108503.8]
  wire  _T_384; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108505.8]
  wire  _T_385; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108506.8]
  wire  _T_386; // @[Monitor.scala 310:28:chipyard.TestHarness.RocketConfig.fir@108511.8]
  wire  _T_388; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108513.8]
  wire  _T_389; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108514.8]
  wire  _T_390; // @[Monitor.scala 311:15:chipyard.TestHarness.RocketConfig.fir@108519.8]
  wire  _T_392; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108521.8]
  wire  _T_393; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108522.8]
  wire  _T_394; // @[Monitor.scala 312:15:chipyard.TestHarness.RocketConfig.fir@108527.8]
  wire  _T_396; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108529.8]
  wire  _T_397; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108530.8]
  wire  _T_398; // @[Monitor.scala 315:25:chipyard.TestHarness.RocketConfig.fir@108536.6]
  wire  _T_409; // @[Bundles.scala 104:26:chipyard.TestHarness.RocketConfig.fir@108560.8]
  wire  _T_411; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108562.8]
  wire  _T_412; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108563.8]
  wire  _T_413; // @[Monitor.scala 320:28:chipyard.TestHarness.RocketConfig.fir@108568.8]
  wire  _T_415; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108570.8]
  wire  _T_416; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108571.8]
  wire  _T_426; // @[Monitor.scala 325:25:chipyard.TestHarness.RocketConfig.fir@108594.6]
  wire  _T_446; // @[Monitor.scala 331:30:chipyard.TestHarness.RocketConfig.fir@108635.8]
  wire  _T_448; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108637.8]
  wire  _T_449; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108638.8]
  wire  _T_455; // @[Monitor.scala 335:25:chipyard.TestHarness.RocketConfig.fir@108653.6]
  wire  _T_472; // @[Monitor.scala 343:25:chipyard.TestHarness.RocketConfig.fir@108688.6]
  wire  _T_490; // @[Monitor.scala 351:25:chipyard.TestHarness.RocketConfig.fir@108724.6]
  wire  _T_783; // @[Parameters.scala 58:20:chipyard.TestHarness.RocketConfig.fir@109245.6]
  wire [12:0] _T_787; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@109251.6]
  wire [5:0] _T_789; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@109253.6]
  wire [31:0] _GEN_72; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@109254.6]
  wire [31:0] _T_790; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@109254.6]
  wire  _T_791; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@109255.6]
  wire [31:0] _T_792; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@109256.6]
  wire [32:0] _T_793; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@109257.6]
  wire [32:0] _T_795; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@109259.6]
  wire  _T_796; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@109260.6]
  wire  _T_816; // @[Monitor.scala 239:25:chipyard.TestHarness.RocketConfig.fir@109286.6]
  wire  _T_818; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109289.8]
  wire  _T_819; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109290.8]
  wire  _T_821; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109296.8]
  wire  _T_822; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109297.8]
  wire  _T_823; // @[Monitor.scala 242:30:chipyard.TestHarness.RocketConfig.fir@109302.8]
  wire  _T_825; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109304.8]
  wire  _T_826; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109305.8]
  wire  _T_828; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109311.8]
  wire  _T_829; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109312.8]
  wire  _T_830; // @[Bundles.scala 122:29:chipyard.TestHarness.RocketConfig.fir@109317.8]
  wire  _T_832; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109319.8]
  wire  _T_833; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109320.8]
  wire  _T_834; // @[Monitor.scala 245:18:chipyard.TestHarness.RocketConfig.fir@109325.8]
  wire  _T_836; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109327.8]
  wire  _T_837; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109328.8]
  wire  _T_838; // @[Monitor.scala 248:25:chipyard.TestHarness.RocketConfig.fir@109334.6]
  wire  _T_856; // @[Monitor.scala 256:25:chipyard.TestHarness.RocketConfig.fir@109374.6]
  wire  _T_858; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@109377.8]
  wire  _T_866; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@109385.8]
  wire  _T_869; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109388.8]
  wire  _T_870; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109389.8]
  wire  _T_871; // @[Parameters.scala 92:48:chipyard.TestHarness.RocketConfig.fir@109394.8]
  wire  _T_873; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109396.8]
  wire  _T_874; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109397.8]
  wire  _T_885; // @[Bundles.scala 116:29:chipyard.TestHarness.RocketConfig.fir@109424.8]
  wire  _T_887; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109426.8]
  wire  _T_888; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109427.8]
  wire  _T_893; // @[Monitor.scala 266:25:chipyard.TestHarness.RocketConfig.fir@109441.6]
  wire  _T_926; // @[Monitor.scala 275:25:chipyard.TestHarness.RocketConfig.fir@109500.6]
  wire  _T_936; // @[Monitor.scala 279:31:chipyard.TestHarness.RocketConfig.fir@109523.8]
  wire  _T_938; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109525.8]
  wire  _T_939; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109526.8]
  wire  _T_944; // @[Monitor.scala 283:25:chipyard.TestHarness.RocketConfig.fir@109540.6]
  wire  _T_958; // @[Monitor.scala 290:25:chipyard.TestHarness.RocketConfig.fir@109572.6]
  wire  _T_980; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@109623.4]
  wire  _T_987; // @[Edges.scala 93:28:chipyard.TestHarness.RocketConfig.fir@109630.4]
  reg [2:0] _T_989; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@109632.4]
  reg [31:0] _RAND_0;
  wire [2:0] _T_991; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@109634.4]
  wire  _T_992; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@109635.4]
  reg [2:0] _T_1000; // @[Monitor.scala 381:22:chipyard.TestHarness.RocketConfig.fir@109646.4]
  reg [31:0] _RAND_1;
  reg [2:0] _T_1001; // @[Monitor.scala 382:22:chipyard.TestHarness.RocketConfig.fir@109647.4]
  reg [31:0] _RAND_2;
  reg [2:0] _T_1002; // @[Monitor.scala 383:22:chipyard.TestHarness.RocketConfig.fir@109648.4]
  reg [31:0] _RAND_3;
  reg [2:0] _T_1003; // @[Monitor.scala 384:22:chipyard.TestHarness.RocketConfig.fir@109649.4]
  reg [31:0] _RAND_4;
  reg [31:0] _T_1004; // @[Monitor.scala 385:22:chipyard.TestHarness.RocketConfig.fir@109650.4]
  reg [31:0] _RAND_5;
  wire  _T_1005; // @[Monitor.scala 386:22:chipyard.TestHarness.RocketConfig.fir@109651.4]
  wire  _T_1006; // @[Monitor.scala 386:19:chipyard.TestHarness.RocketConfig.fir@109652.4]
  wire  _T_1007; // @[Monitor.scala 387:32:chipyard.TestHarness.RocketConfig.fir@109654.6]
  wire  _T_1009; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109656.6]
  wire  _T_1010; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109657.6]
  wire  _T_1011; // @[Monitor.scala 388:32:chipyard.TestHarness.RocketConfig.fir@109662.6]
  wire  _T_1013; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109664.6]
  wire  _T_1014; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109665.6]
  wire  _T_1015; // @[Monitor.scala 389:32:chipyard.TestHarness.RocketConfig.fir@109670.6]
  wire  _T_1017; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109672.6]
  wire  _T_1018; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109673.6]
  wire  _T_1019; // @[Monitor.scala 390:32:chipyard.TestHarness.RocketConfig.fir@109678.6]
  wire  _T_1021; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109680.6]
  wire  _T_1022; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109681.6]
  wire  _T_1023; // @[Monitor.scala 391:32:chipyard.TestHarness.RocketConfig.fir@109686.6]
  wire  _T_1025; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109688.6]
  wire  _T_1026; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109689.6]
  wire  _T_1028; // @[Monitor.scala 393:20:chipyard.TestHarness.RocketConfig.fir@109696.4]
  wire  _T_1029; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@109704.4]
  wire [12:0] _T_1031; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@109706.4]
  wire [5:0] _T_1033; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@109708.4]
  reg [2:0] _T_1037; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@109712.4]
  reg [31:0] _RAND_6;
  wire [2:0] _T_1039; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@109714.4]
  wire  _T_1040; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@109715.4]
  reg [2:0] _T_1048; // @[Monitor.scala 532:22:chipyard.TestHarness.RocketConfig.fir@109726.4]
  reg [31:0] _RAND_7;
  reg [1:0] _T_1049; // @[Monitor.scala 533:22:chipyard.TestHarness.RocketConfig.fir@109727.4]
  reg [31:0] _RAND_8;
  reg [2:0] _T_1050; // @[Monitor.scala 534:22:chipyard.TestHarness.RocketConfig.fir@109728.4]
  reg [31:0] _RAND_9;
  reg [2:0] _T_1051; // @[Monitor.scala 535:22:chipyard.TestHarness.RocketConfig.fir@109729.4]
  reg [31:0] _RAND_10;
  reg [2:0] _T_1052; // @[Monitor.scala 536:22:chipyard.TestHarness.RocketConfig.fir@109730.4]
  reg [31:0] _RAND_11;
  reg  _T_1053; // @[Monitor.scala 537:22:chipyard.TestHarness.RocketConfig.fir@109731.4]
  reg [31:0] _RAND_12;
  wire  _T_1054; // @[Monitor.scala 538:22:chipyard.TestHarness.RocketConfig.fir@109732.4]
  wire  _T_1055; // @[Monitor.scala 538:19:chipyard.TestHarness.RocketConfig.fir@109733.4]
  wire  _T_1056; // @[Monitor.scala 539:29:chipyard.TestHarness.RocketConfig.fir@109735.6]
  wire  _T_1058; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@109737.6]
  wire  _T_1059; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@109738.6]
  wire  _T_1060; // @[Monitor.scala 540:29:chipyard.TestHarness.RocketConfig.fir@109743.6]
  wire  _T_1062; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@109745.6]
  wire  _T_1063; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@109746.6]
  wire  _T_1064; // @[Monitor.scala 541:29:chipyard.TestHarness.RocketConfig.fir@109751.6]
  wire  _T_1066; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@109753.6]
  wire  _T_1067; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@109754.6]
  wire  _T_1068; // @[Monitor.scala 542:29:chipyard.TestHarness.RocketConfig.fir@109759.6]
  wire  _T_1070; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@109761.6]
  wire  _T_1071; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@109762.6]
  wire  _T_1072; // @[Monitor.scala 543:29:chipyard.TestHarness.RocketConfig.fir@109767.6]
  wire  _T_1074; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@109769.6]
  wire  _T_1075; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@109770.6]
  wire  _T_1076; // @[Monitor.scala 544:29:chipyard.TestHarness.RocketConfig.fir@109775.6]
  wire  _T_1078; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@109777.6]
  wire  _T_1079; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@109778.6]
  wire  _T_1081; // @[Monitor.scala 546:20:chipyard.TestHarness.RocketConfig.fir@109785.4]
  wire  _T_1131; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@109875.4]
  reg [2:0] _T_1139; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@109883.4]
  reg [31:0] _RAND_13;
  wire [2:0] _T_1141; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@109885.4]
  wire  _T_1142; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@109886.4]
  reg [2:0] _T_1150; // @[Monitor.scala 509:22:chipyard.TestHarness.RocketConfig.fir@109897.4]
  reg [31:0] _RAND_14;
  reg [2:0] _T_1151; // @[Monitor.scala 510:22:chipyard.TestHarness.RocketConfig.fir@109898.4]
  reg [31:0] _RAND_15;
  reg [2:0] _T_1152; // @[Monitor.scala 511:22:chipyard.TestHarness.RocketConfig.fir@109899.4]
  reg [31:0] _RAND_16;
  reg [2:0] _T_1153; // @[Monitor.scala 512:22:chipyard.TestHarness.RocketConfig.fir@109900.4]
  reg [31:0] _RAND_17;
  reg [31:0] _T_1154; // @[Monitor.scala 513:22:chipyard.TestHarness.RocketConfig.fir@109901.4]
  reg [31:0] _RAND_18;
  wire  _T_1155; // @[Monitor.scala 514:22:chipyard.TestHarness.RocketConfig.fir@109902.4]
  wire  _T_1156; // @[Monitor.scala 514:19:chipyard.TestHarness.RocketConfig.fir@109903.4]
  wire  _T_1157; // @[Monitor.scala 515:32:chipyard.TestHarness.RocketConfig.fir@109905.6]
  wire  _T_1159; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109907.6]
  wire  _T_1160; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109908.6]
  wire  _T_1161; // @[Monitor.scala 516:32:chipyard.TestHarness.RocketConfig.fir@109913.6]
  wire  _T_1163; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109915.6]
  wire  _T_1164; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109916.6]
  wire  _T_1165; // @[Monitor.scala 517:32:chipyard.TestHarness.RocketConfig.fir@109921.6]
  wire  _T_1167; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109923.6]
  wire  _T_1168; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109924.6]
  wire  _T_1169; // @[Monitor.scala 518:32:chipyard.TestHarness.RocketConfig.fir@109929.6]
  wire  _T_1171; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109931.6]
  wire  _T_1172; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109932.6]
  wire  _T_1173; // @[Monitor.scala 519:32:chipyard.TestHarness.RocketConfig.fir@109937.6]
  wire  _T_1175; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109939.6]
  wire  _T_1176; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109940.6]
  wire  _T_1178; // @[Monitor.scala 521:20:chipyard.TestHarness.RocketConfig.fir@109947.4]
  reg [4:0] inflight; // @[Monitor.scala 608:27:chipyard.TestHarness.RocketConfig.fir@109955.4]
  reg [31:0] _RAND_19;
  reg [19:0] inflight_opcodes; // @[Monitor.scala 610:35:chipyard.TestHarness.RocketConfig.fir@109956.4]
  reg [31:0] _RAND_20;
  reg [19:0] inflight_sizes; // @[Monitor.scala 612:33:chipyard.TestHarness.RocketConfig.fir@109957.4]
  reg [31:0] _RAND_21;
  reg [2:0] _T_1188; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@109967.4]
  reg [31:0] _RAND_22;
  wire [2:0] _T_1190; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@109969.4]
  wire  a_first; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@109970.4]
  reg [2:0] _T_1206; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@109989.4]
  reg [31:0] _RAND_23;
  wire [2:0] _T_1208; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@109991.4]
  wire  d_first; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@109992.4]
  wire [4:0] _GEN_73; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@110011.4]
  wire [5:0] _T_1216; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@110011.4]
  wire [19:0] _T_1217; // @[Monitor.scala 629:44:chipyard.TestHarness.RocketConfig.fir@110012.4]
  wire [15:0] _T_1221; // @[Monitor.scala 606:57:chipyard.TestHarness.RocketConfig.fir@110016.4]
  wire [19:0] _GEN_74; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@110017.4]
  wire [19:0] _T_1222; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@110017.4]
  wire [19:0] _T_1223; // @[Monitor.scala 629:152:chipyard.TestHarness.RocketConfig.fir@110018.4]
  wire [19:0] _T_1225; // @[Monitor.scala 633:40:chipyard.TestHarness.RocketConfig.fir@110023.4]
  wire [19:0] _T_1230; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@110028.4]
  wire [19:0] _T_1231; // @[Monitor.scala 633:144:chipyard.TestHarness.RocketConfig.fir@110029.4]
  wire  _T_1235; // @[Monitor.scala 643:27:chipyard.TestHarness.RocketConfig.fir@110054.4]
  wire [7:0] _T_1237; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@110057.6]
  wire [3:0] _T_1238; // @[Monitor.scala 645:53:chipyard.TestHarness.RocketConfig.fir@110059.6]
  wire [3:0] _T_1239; // @[Monitor.scala 645:61:chipyard.TestHarness.RocketConfig.fir@110060.6]
  wire [3:0] _T_1240; // @[Monitor.scala 646:49:chipyard.TestHarness.RocketConfig.fir@110062.6]
  wire [3:0] _T_1241; // @[Monitor.scala 646:57:chipyard.TestHarness.RocketConfig.fir@110063.6]
  wire [4:0] _GEN_79; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@110065.6]
  wire [5:0] _T_1242; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@110065.6]
  wire [3:0] a_opcodes_set_interm; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@110056.4]
  wire [66:0] _GEN_80; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@110066.6]
  wire [66:0] _T_1243; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@110066.6]
  wire [3:0] a_sizes_set_interm; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@110056.4]
  wire [66:0] _GEN_82; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@110069.6]
  wire [66:0] _T_1245; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@110069.6]
  wire [4:0] _T_1246; // @[Monitor.scala 649:26:chipyard.TestHarness.RocketConfig.fir@110071.6]
  wire  _T_1248; // @[Monitor.scala 649:17:chipyard.TestHarness.RocketConfig.fir@110073.6]
  wire  _T_1250; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110075.6]
  wire  _T_1251; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110076.6]
  wire [7:0] _GEN_27; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@110056.4]
  wire [66:0] _GEN_30; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@110056.4]
  wire [66:0] _GEN_31; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@110056.4]
  wire  _T_1254; // @[Monitor.scala 660:27:chipyard.TestHarness.RocketConfig.fir@110090.4]
  wire  _T_1256; // @[Monitor.scala 660:75:chipyard.TestHarness.RocketConfig.fir@110092.4]
  wire  _T_1257; // @[Monitor.scala 660:72:chipyard.TestHarness.RocketConfig.fir@110093.4]
  wire [7:0] _T_1258; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@110095.6]
  wire [78:0] _GEN_84; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@110102.6]
  wire [78:0] _T_1264; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@110102.6]
  wire [7:0] _GEN_32; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@110094.4]
  wire [78:0] _GEN_33; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@110094.4]
  wire  _T_1271; // @[Monitor.scala 665:26:chipyard.TestHarness.RocketConfig.fir@110112.4]
  wire  _T_1274; // @[Monitor.scala 665:71:chipyard.TestHarness.RocketConfig.fir@110115.4]
  wire [4:0] _T_1275; // @[Monitor.scala 666:25:chipyard.TestHarness.RocketConfig.fir@110117.6]
  wire  _T_1277; // @[Monitor.scala 666:93:chipyard.TestHarness.RocketConfig.fir@110119.6]
  wire  _T_1278; // @[Monitor.scala 666:68:chipyard.TestHarness.RocketConfig.fir@110120.6]
  wire  _T_1279; // @[Monitor.scala 666:142:chipyard.TestHarness.RocketConfig.fir@110121.6]
  wire  _T_1280; // @[Monitor.scala 666:119:chipyard.TestHarness.RocketConfig.fir@110122.6]
  wire  _T_1281; // @[Monitor.scala 666:166:chipyard.TestHarness.RocketConfig.fir@110123.6]
  wire  _T_1282; // @[Monitor.scala 666:49:chipyard.TestHarness.RocketConfig.fir@110124.6]
  wire  _T_1284; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@110126.6]
  wire  _T_1285; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@110127.6]
  wire [3:0] a_opcode_lookup; // @[:chipyard.TestHarness.RocketConfig.fir@110009.4 :chipyard.TestHarness.RocketConfig.fir@110010.4 Monitor.scala 629:21:chipyard.TestHarness.RocketConfig.fir@110019.4]
  wire [2:0] _GEN_37; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@110133.6]
  wire [2:0] _GEN_38; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@110133.6]
  wire [2:0] _GEN_39; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@110133.6]
  wire [2:0] _GEN_40; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@110133.6]
  wire [2:0] _GEN_41; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@110133.6]
  wire [2:0] _GEN_42; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@110133.6]
  wire  _T_1287; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@110133.6]
  wire [2:0] _GEN_49; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@110135.6]
  wire [2:0] _GEN_50; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@110135.6]
  wire  _T_1289; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@110135.6]
  wire  _T_1290; // @[Monitor.scala 667:71:chipyard.TestHarness.RocketConfig.fir@110136.6]
  wire [2:0] _GEN_53; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@110137.6]
  wire [2:0] _GEN_54; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@110137.6]
  wire [2:0] _GEN_55; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@110137.6]
  wire [2:0] _GEN_56; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@110137.6]
  wire [2:0] _GEN_57; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@110137.6]
  wire [2:0] _GEN_58; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@110137.6]
  wire  _T_1291; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@110137.6]
  wire [2:0] _GEN_65; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@110138.6]
  wire [2:0] _GEN_66; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@110138.6]
  wire  _T_1292; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@110138.6]
  wire  _T_1293; // @[Monitor.scala 668:99:chipyard.TestHarness.RocketConfig.fir@110139.6]
  wire  _T_1294; // @[Monitor.scala 668:34:chipyard.TestHarness.RocketConfig.fir@110140.6]
  wire  _T_1295; // @[Monitor.scala 668:15:chipyard.TestHarness.RocketConfig.fir@110141.6]
  wire  _T_1297; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@110143.6]
  wire  _T_1298; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@110144.6]
  wire [3:0] a_size_lookup; // @[:chipyard.TestHarness.RocketConfig.fir@110020.4 :chipyard.TestHarness.RocketConfig.fir@110021.4 Monitor.scala 633:19:chipyard.TestHarness.RocketConfig.fir@110030.4]
  wire [3:0] _GEN_87; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@110149.6]
  wire  _T_1299; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@110149.6]
  wire  _T_1301; // @[Monitor.scala 670:72:chipyard.TestHarness.RocketConfig.fir@110151.6]
  wire  _T_1302; // @[Monitor.scala 670:53:chipyard.TestHarness.RocketConfig.fir@110152.6]
  wire  _T_1304; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@110154.6]
  wire  _T_1305; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@110155.6]
  wire  _T_1307; // @[Monitor.scala 672:36:chipyard.TestHarness.RocketConfig.fir@110162.4]
  wire  _T_1308; // @[Monitor.scala 672:47:chipyard.TestHarness.RocketConfig.fir@110163.4]
  wire  _T_1310; // @[Monitor.scala 672:65:chipyard.TestHarness.RocketConfig.fir@110165.4]
  wire  _T_1312; // @[Monitor.scala 672:116:chipyard.TestHarness.RocketConfig.fir@110167.4]
  wire  _T_1313; // @[Monitor.scala 673:15:chipyard.TestHarness.RocketConfig.fir@110169.6]
  wire  _T_1314; // @[Monitor.scala 673:32:chipyard.TestHarness.RocketConfig.fir@110170.6]
  wire  _T_1316; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@110172.6]
  wire  _T_1317; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@110173.6]
  wire [4:0] a_set; // @[:chipyard.TestHarness.RocketConfig.fir@110003.4 :chipyard.TestHarness.RocketConfig.fir@110004.4 Monitor.scala 644:13:chipyard.TestHarness.RocketConfig.fir@110058.6]
  wire [4:0] d_clr; // @[:chipyard.TestHarness.RocketConfig.fir@110082.4 :chipyard.TestHarness.RocketConfig.fir@110083.4 Monitor.scala 661:13:chipyard.TestHarness.RocketConfig.fir@110096.6]
  wire  _T_1318; // @[Monitor.scala 677:20:chipyard.TestHarness.RocketConfig.fir@110179.4]
  wire  _T_1319; // @[Monitor.scala 677:40:chipyard.TestHarness.RocketConfig.fir@110180.4]
  wire  _T_1320; // @[Monitor.scala 677:33:chipyard.TestHarness.RocketConfig.fir@110181.4]
  wire  _T_1321; // @[Monitor.scala 677:30:chipyard.TestHarness.RocketConfig.fir@110182.4]
  wire  _T_1323; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@110184.4]
  wire  _T_1324; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@110185.4]
  wire [4:0] _T_1325; // @[Monitor.scala 680:27:chipyard.TestHarness.RocketConfig.fir@110190.4]
  wire [4:0] _T_1326; // @[Monitor.scala 680:38:chipyard.TestHarness.RocketConfig.fir@110191.4]
  wire [4:0] _T_1327; // @[Monitor.scala 680:36:chipyard.TestHarness.RocketConfig.fir@110192.4]
  wire [19:0] a_opcodes_set; // @[:chipyard.TestHarness.RocketConfig.fir@110005.4 :chipyard.TestHarness.RocketConfig.fir@110006.4 Monitor.scala 647:21:chipyard.TestHarness.RocketConfig.fir@110067.6]
  wire [19:0] _T_1328; // @[Monitor.scala 681:43:chipyard.TestHarness.RocketConfig.fir@110194.4]
  wire [19:0] d_opcodes_clr; // @[:chipyard.TestHarness.RocketConfig.fir@110084.4 :chipyard.TestHarness.RocketConfig.fir@110085.4 Monitor.scala 662:21:chipyard.TestHarness.RocketConfig.fir@110103.6]
  wire [19:0] _T_1329; // @[Monitor.scala 681:62:chipyard.TestHarness.RocketConfig.fir@110195.4]
  wire [19:0] _T_1330; // @[Monitor.scala 681:60:chipyard.TestHarness.RocketConfig.fir@110196.4]
  wire [19:0] a_sizes_set; // @[:chipyard.TestHarness.RocketConfig.fir@110007.4 :chipyard.TestHarness.RocketConfig.fir@110008.4 Monitor.scala 648:19:chipyard.TestHarness.RocketConfig.fir@110070.6]
  wire [19:0] _T_1331; // @[Monitor.scala 682:39:chipyard.TestHarness.RocketConfig.fir@110198.4]
  wire [19:0] _T_1333; // @[Monitor.scala 682:54:chipyard.TestHarness.RocketConfig.fir@110200.4]
  reg [31:0] _T_1334; // @[Monitor.scala 684:27:chipyard.TestHarness.RocketConfig.fir@110202.4]
  reg [31:0] _RAND_24;
  wire  _T_1335; // @[Monitor.scala 687:26:chipyard.TestHarness.RocketConfig.fir@110205.4]
  wire  _T_1336; // @[Monitor.scala 687:16:chipyard.TestHarness.RocketConfig.fir@110206.4]
  wire  _T_1337; // @[Monitor.scala 687:39:chipyard.TestHarness.RocketConfig.fir@110207.4]
  wire  _T_1338; // @[Monitor.scala 687:30:chipyard.TestHarness.RocketConfig.fir@110208.4]
  wire  _T_1339; // @[Monitor.scala 687:59:chipyard.TestHarness.RocketConfig.fir@110209.4]
  wire  _T_1340; // @[Monitor.scala 687:47:chipyard.TestHarness.RocketConfig.fir@110210.4]
  wire  _T_1342; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110212.4]
  wire  _T_1343; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110213.4]
  wire [31:0] _T_1345; // @[Monitor.scala 689:26:chipyard.TestHarness.RocketConfig.fir@110219.4]
  wire  _T_1348; // @[Monitor.scala 690:27:chipyard.TestHarness.RocketConfig.fir@110223.4]
  reg [7:0] _T_1349; // @[Monitor.scala 694:27:chipyard.TestHarness.RocketConfig.fir@110227.4]
  reg [31:0] _RAND_25;
  reg [2:0] _T_1358; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@110236.4]
  reg [31:0] _RAND_26;
  wire [2:0] _T_1360; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@110238.4]
  wire  _T_1361; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@110239.4]
  wire  _T_1371; // @[Monitor.scala 700:27:chipyard.TestHarness.RocketConfig.fir@110253.4]
  wire  _T_1374; // @[Edges.scala 72:43:chipyard.TestHarness.RocketConfig.fir@110256.4]
  wire  _T_1375; // @[Edges.scala 72:40:chipyard.TestHarness.RocketConfig.fir@110257.4]
  wire  _T_1376; // @[Monitor.scala 700:38:chipyard.TestHarness.RocketConfig.fir@110258.4]
  wire [7:0] _T_1377; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@110260.6]
  wire [7:0] _T_1378; // @[Monitor.scala 702:23:chipyard.TestHarness.RocketConfig.fir@110262.6]
  wire  _T_1380; // @[Monitor.scala 702:14:chipyard.TestHarness.RocketConfig.fir@110264.6]
  wire  _T_1382; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@110266.6]
  wire  _T_1383; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@110267.6]
  wire [7:0] _GEN_69; // @[Monitor.scala 700:72:chipyard.TestHarness.RocketConfig.fir@110259.4]
  wire [7:0] _T_1388; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@110279.6]
  wire [7:0] _T_1389; // @[Monitor.scala 708:24:chipyard.TestHarness.RocketConfig.fir@110281.6]
  wire [7:0] _T_1390; // @[Monitor.scala 708:35:chipyard.TestHarness.RocketConfig.fir@110282.6]
  wire  _T_1393; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110285.6]
  wire  _T_1394; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110286.6]
  wire [7:0] _GEN_70; // @[Monitor.scala 706:73:chipyard.TestHarness.RocketConfig.fir@110278.4]
  wire [7:0] _T_1395; // @[Monitor.scala 713:27:chipyard.TestHarness.RocketConfig.fir@110292.4]
  wire [7:0] _T_1396; // @[Monitor.scala 713:38:chipyard.TestHarness.RocketConfig.fir@110293.4]
  wire [7:0] _T_1397; // @[Monitor.scala 713:36:chipyard.TestHarness.RocketConfig.fir@110294.4]
  wire  _GEN_88; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108014.10]
  wire  _GEN_104; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108090.10]
  wire  _GEN_122; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108174.10]
  wire  _GEN_134; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108233.10]
  wire  _GEN_144; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108284.10]
  wire  _GEN_154; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108334.10]
  wire  _GEN_164; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108382.10]
  wire  _GEN_174; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108430.10]
  wire  _GEN_186; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108500.10]
  wire  _GEN_196; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108542.10]
  wire  _GEN_206; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108600.10]
  wire  _GEN_216; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108659.10]
  wire  _GEN_222; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108694.10]
  wire  _GEN_228; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108730.10]
  wire  _GEN_234; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109292.10]
  wire  _GEN_246; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109340.10]
  wire  _GEN_256; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109391.10]
  wire  _GEN_270; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109458.10]
  wire  _GEN_282; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109506.10]
  wire  _GEN_292; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109546.10]
  wire  _GEN_300; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109578.10]
  plusarg_reader #(.FORMAT("tilelink_timeout=%d"), .DEFAULT(0), .WIDTH(32)) plusarg_reader ( // @[PlusArg.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110203.4]
    .out(plusarg_reader_out)
  );
  assign _T_10 = io_in_a_bits_source <= 3'h4; // @[Parameters.scala 58:20:chipyard.TestHarness.RocketConfig.fir@107900.6]
  assign _T_14 = 13'h3f << io_in_a_bits_size; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@107906.6]
  assign _T_16 = ~_T_14[5:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@107908.6]
  assign _GEN_71 = {{26'd0}, _T_16}; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@107909.6]
  assign _T_17 = io_in_a_bits_address & _GEN_71; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@107909.6]
  assign _T_18 = _T_17 == 32'h0; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@107910.6]
  assign _T_21 = 4'h1 << io_in_a_bits_size[1:0]; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@107913.6]
  assign _T_23 = _T_21[2:0] | 3'h1; // @[Misc.scala 201:81:chipyard.TestHarness.RocketConfig.fir@107915.6]
  assign _T_24 = io_in_a_bits_size >= 3'h3; // @[Misc.scala 205:21:chipyard.TestHarness.RocketConfig.fir@107916.6]
  assign _T_27 = ~io_in_a_bits_address[2]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@107919.6]
  assign _T_29 = _T_23[2] & _T_27; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@107921.6]
  assign _T_30 = _T_24 | _T_29; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@107922.6]
  assign _T_32 = _T_23[2] & io_in_a_bits_address[2]; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@107924.6]
  assign _T_33 = _T_24 | _T_32; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@107925.6]
  assign _T_36 = ~io_in_a_bits_address[1]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@107928.6]
  assign _T_37 = _T_27 & _T_36; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@107929.6]
  assign _T_38 = _T_23[1] & _T_37; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@107930.6]
  assign _T_39 = _T_30 | _T_38; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@107931.6]
  assign _T_40 = _T_27 & io_in_a_bits_address[1]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@107932.6]
  assign _T_41 = _T_23[1] & _T_40; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@107933.6]
  assign _T_42 = _T_30 | _T_41; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@107934.6]
  assign _T_43 = io_in_a_bits_address[2] & _T_36; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@107935.6]
  assign _T_44 = _T_23[1] & _T_43; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@107936.6]
  assign _T_45 = _T_33 | _T_44; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@107937.6]
  assign _T_46 = io_in_a_bits_address[2] & io_in_a_bits_address[1]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@107938.6]
  assign _T_47 = _T_23[1] & _T_46; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@107939.6]
  assign _T_48 = _T_33 | _T_47; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@107940.6]
  assign _T_51 = ~io_in_a_bits_address[0]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@107943.6]
  assign _T_52 = _T_37 & _T_51; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@107944.6]
  assign _T_53 = _T_23[0] & _T_52; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@107945.6]
  assign _T_54 = _T_39 | _T_53; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@107946.6]
  assign _T_55 = _T_37 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@107947.6]
  assign _T_56 = _T_23[0] & _T_55; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@107948.6]
  assign _T_57 = _T_39 | _T_56; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@107949.6]
  assign _T_58 = _T_40 & _T_51; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@107950.6]
  assign _T_59 = _T_23[0] & _T_58; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@107951.6]
  assign _T_60 = _T_42 | _T_59; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@107952.6]
  assign _T_61 = _T_40 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@107953.6]
  assign _T_62 = _T_23[0] & _T_61; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@107954.6]
  assign _T_63 = _T_42 | _T_62; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@107955.6]
  assign _T_64 = _T_43 & _T_51; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@107956.6]
  assign _T_65 = _T_23[0] & _T_64; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@107957.6]
  assign _T_66 = _T_45 | _T_65; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@107958.6]
  assign _T_67 = _T_43 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@107959.6]
  assign _T_68 = _T_23[0] & _T_67; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@107960.6]
  assign _T_69 = _T_45 | _T_68; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@107961.6]
  assign _T_70 = _T_46 & _T_51; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@107962.6]
  assign _T_71 = _T_23[0] & _T_70; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@107963.6]
  assign _T_72 = _T_48 | _T_71; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@107964.6]
  assign _T_73 = _T_46 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@107965.6]
  assign _T_74 = _T_23[0] & _T_73; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@107966.6]
  assign _T_75 = _T_48 | _T_74; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@107967.6]
  assign _T_82 = {_T_75,_T_72,_T_69,_T_66,_T_63,_T_60,_T_57,_T_54}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@107974.6]
  assign _T_101 = io_in_a_bits_opcode == 3'h6; // @[Monitor.scala 79:25:chipyard.TestHarness.RocketConfig.fir@107997.6]
  assign _T_103 = io_in_a_bits_size <= 3'h6; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@108000.8]
  assign _T_106 = io_in_a_bits_address ^ 32'h80000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@108003.8]
  assign _T_107 = {1'b0,$signed(_T_106)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@108004.8]
  assign _T_109 = $signed(_T_107) & -33'sh10000000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@108006.8]
  assign _T_110 = $signed(_T_109) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@108007.8]
  assign _T_111 = _T_103 & _T_110; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@108008.8]
  assign _T_114 = _T_111 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108011.8]
  assign _T_115 = ~_T_114; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108012.8]
  assign _T_116 = 3'h6 == io_in_a_bits_size; // @[Parameters.scala 92:48:chipyard.TestHarness.RocketConfig.fir@108017.8]
  assign _T_118 = _T_116 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108019.8]
  assign _T_119 = ~_T_118; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108020.8]
  assign _T_121 = _T_10 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108026.8]
  assign _T_122 = ~_T_121; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108027.8]
  assign _T_125 = _T_24 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108034.8]
  assign _T_126 = ~_T_125; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108035.8]
  assign _T_128 = _T_18 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108041.8]
  assign _T_129 = ~_T_128; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108042.8]
  assign _T_130 = io_in_a_bits_param <= 3'h2; // @[Bundles.scala 110:27:chipyard.TestHarness.RocketConfig.fir@108047.8]
  assign _T_132 = _T_130 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108049.8]
  assign _T_133 = ~_T_132; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108050.8]
  assign _T_134 = ~io_in_a_bits_mask; // @[Monitor.scala 86:18:chipyard.TestHarness.RocketConfig.fir@108055.8]
  assign _T_135 = _T_134 == 8'h0; // @[Monitor.scala 86:31:chipyard.TestHarness.RocketConfig.fir@108056.8]
  assign _T_137 = _T_135 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108058.8]
  assign _T_138 = ~_T_137; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108059.8]
  assign _T_139 = ~io_in_a_bits_corrupt; // @[Monitor.scala 87:18:chipyard.TestHarness.RocketConfig.fir@108064.8]
  assign _T_141 = _T_139 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108066.8]
  assign _T_142 = ~_T_141; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108067.8]
  assign _T_143 = io_in_a_bits_opcode == 3'h7; // @[Monitor.scala 90:25:chipyard.TestHarness.RocketConfig.fir@108073.6]
  assign _T_176 = io_in_a_bits_param != 3'h0; // @[Monitor.scala 97:31:chipyard.TestHarness.RocketConfig.fir@108131.8]
  assign _T_178 = _T_176 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108133.8]
  assign _T_179 = ~_T_178; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108134.8]
  assign _T_189 = io_in_a_bits_opcode == 3'h4; // @[Monitor.scala 102:25:chipyard.TestHarness.RocketConfig.fir@108157.6]
  assign _T_210 = io_in_a_bits_param == 3'h0; // @[Monitor.scala 106:31:chipyard.TestHarness.RocketConfig.fir@108191.8]
  assign _T_212 = _T_210 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108193.8]
  assign _T_213 = ~_T_212; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108194.8]
  assign _T_214 = io_in_a_bits_mask == _T_82; // @[Monitor.scala 107:30:chipyard.TestHarness.RocketConfig.fir@108199.8]
  assign _T_216 = _T_214 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108201.8]
  assign _T_217 = ~_T_216; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108202.8]
  assign _T_222 = io_in_a_bits_opcode == 3'h0; // @[Monitor.scala 111:25:chipyard.TestHarness.RocketConfig.fir@108216.6]
  assign _T_251 = io_in_a_bits_opcode == 3'h1; // @[Monitor.scala 119:25:chipyard.TestHarness.RocketConfig.fir@108267.6]
  assign _T_276 = ~_T_82; // @[Monitor.scala 124:33:chipyard.TestHarness.RocketConfig.fir@108309.8]
  assign _T_277 = io_in_a_bits_mask & _T_276; // @[Monitor.scala 124:31:chipyard.TestHarness.RocketConfig.fir@108310.8]
  assign _T_278 = _T_277 == 8'h0; // @[Monitor.scala 124:40:chipyard.TestHarness.RocketConfig.fir@108311.8]
  assign _T_280 = _T_278 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108313.8]
  assign _T_281 = ~_T_280; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108314.8]
  assign _T_282 = io_in_a_bits_opcode == 3'h2; // @[Monitor.scala 127:25:chipyard.TestHarness.RocketConfig.fir@108320.6]
  assign _T_293 = ~reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108332.8]
  assign _T_300 = io_in_a_bits_param <= 3'h4; // @[Bundles.scala 140:33:chipyard.TestHarness.RocketConfig.fir@108351.8]
  assign _T_302 = _T_300 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108353.8]
  assign _T_303 = ~_T_302; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108354.8]
  assign _T_308 = io_in_a_bits_opcode == 3'h3; // @[Monitor.scala 135:25:chipyard.TestHarness.RocketConfig.fir@108368.6]
  assign _T_326 = io_in_a_bits_param <= 3'h3; // @[Bundles.scala 147:30:chipyard.TestHarness.RocketConfig.fir@108399.8]
  assign _T_328 = _T_326 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108401.8]
  assign _T_329 = ~_T_328; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108402.8]
  assign _T_334 = io_in_a_bits_opcode == 3'h5; // @[Monitor.scala 143:25:chipyard.TestHarness.RocketConfig.fir@108416.6]
  assign _T_352 = io_in_a_bits_param <= 3'h1; // @[Bundles.scala 160:28:chipyard.TestHarness.RocketConfig.fir@108447.8]
  assign _T_354 = _T_352 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108449.8]
  assign _T_355 = ~_T_354; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108450.8]
  assign _T_364 = io_in_d_bits_opcode <= 3'h6; // @[Bundles.scala 44:24:chipyard.TestHarness.RocketConfig.fir@108474.6]
  assign _T_366 = _T_364 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108476.6]
  assign _T_367 = ~_T_366; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108477.6]
  assign _T_374 = io_in_d_bits_source <= 3'h4; // @[Parameters.scala 58:20:chipyard.TestHarness.RocketConfig.fir@108488.6]
  assign _T_378 = io_in_d_bits_opcode == 3'h6; // @[Monitor.scala 307:25:chipyard.TestHarness.RocketConfig.fir@108494.6]
  assign _T_380 = _T_374 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108497.8]
  assign _T_381 = ~_T_380; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108498.8]
  assign _T_382 = io_in_d_bits_size >= 3'h3; // @[Monitor.scala 309:27:chipyard.TestHarness.RocketConfig.fir@108503.8]
  assign _T_384 = _T_382 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108505.8]
  assign _T_385 = ~_T_384; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108506.8]
  assign _T_386 = io_in_d_bits_param == 2'h0; // @[Monitor.scala 310:28:chipyard.TestHarness.RocketConfig.fir@108511.8]
  assign _T_388 = _T_386 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108513.8]
  assign _T_389 = ~_T_388; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108514.8]
  assign _T_390 = ~io_in_d_bits_corrupt; // @[Monitor.scala 311:15:chipyard.TestHarness.RocketConfig.fir@108519.8]
  assign _T_392 = _T_390 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108521.8]
  assign _T_393 = ~_T_392; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108522.8]
  assign _T_394 = ~io_in_d_bits_denied; // @[Monitor.scala 312:15:chipyard.TestHarness.RocketConfig.fir@108527.8]
  assign _T_396 = _T_394 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108529.8]
  assign _T_397 = ~_T_396; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108530.8]
  assign _T_398 = io_in_d_bits_opcode == 3'h4; // @[Monitor.scala 315:25:chipyard.TestHarness.RocketConfig.fir@108536.6]
  assign _T_409 = io_in_d_bits_param <= 2'h2; // @[Bundles.scala 104:26:chipyard.TestHarness.RocketConfig.fir@108560.8]
  assign _T_411 = _T_409 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108562.8]
  assign _T_412 = ~_T_411; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108563.8]
  assign _T_413 = io_in_d_bits_param != 2'h2; // @[Monitor.scala 320:28:chipyard.TestHarness.RocketConfig.fir@108568.8]
  assign _T_415 = _T_413 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108570.8]
  assign _T_416 = ~_T_415; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108571.8]
  assign _T_426 = io_in_d_bits_opcode == 3'h5; // @[Monitor.scala 325:25:chipyard.TestHarness.RocketConfig.fir@108594.6]
  assign _T_446 = _T_394 | io_in_d_bits_corrupt; // @[Monitor.scala 331:30:chipyard.TestHarness.RocketConfig.fir@108635.8]
  assign _T_448 = _T_446 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108637.8]
  assign _T_449 = ~_T_448; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108638.8]
  assign _T_455 = io_in_d_bits_opcode == 3'h0; // @[Monitor.scala 335:25:chipyard.TestHarness.RocketConfig.fir@108653.6]
  assign _T_472 = io_in_d_bits_opcode == 3'h1; // @[Monitor.scala 343:25:chipyard.TestHarness.RocketConfig.fir@108688.6]
  assign _T_490 = io_in_d_bits_opcode == 3'h2; // @[Monitor.scala 351:25:chipyard.TestHarness.RocketConfig.fir@108724.6]
  assign _T_783 = io_in_c_bits_source <= 3'h4; // @[Parameters.scala 58:20:chipyard.TestHarness.RocketConfig.fir@109245.6]
  assign _T_787 = 13'h3f << io_in_c_bits_size; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@109251.6]
  assign _T_789 = ~_T_787[5:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@109253.6]
  assign _GEN_72 = {{26'd0}, _T_789}; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@109254.6]
  assign _T_790 = io_in_c_bits_address & _GEN_72; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@109254.6]
  assign _T_791 = _T_790 == 32'h0; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@109255.6]
  assign _T_792 = io_in_c_bits_address ^ 32'h80000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@109256.6]
  assign _T_793 = {1'b0,$signed(_T_792)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@109257.6]
  assign _T_795 = $signed(_T_793) & -33'sh10000000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@109259.6]
  assign _T_796 = $signed(_T_795) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@109260.6]
  assign _T_816 = io_in_c_bits_opcode == 3'h4; // @[Monitor.scala 239:25:chipyard.TestHarness.RocketConfig.fir@109286.6]
  assign _T_818 = _T_796 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109289.8]
  assign _T_819 = ~_T_818; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109290.8]
  assign _T_821 = _T_783 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109296.8]
  assign _T_822 = ~_T_821; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109297.8]
  assign _T_823 = io_in_c_bits_size >= 3'h3; // @[Monitor.scala 242:30:chipyard.TestHarness.RocketConfig.fir@109302.8]
  assign _T_825 = _T_823 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109304.8]
  assign _T_826 = ~_T_825; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109305.8]
  assign _T_828 = _T_791 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109311.8]
  assign _T_829 = ~_T_828; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109312.8]
  assign _T_830 = io_in_c_bits_param <= 3'h5; // @[Bundles.scala 122:29:chipyard.TestHarness.RocketConfig.fir@109317.8]
  assign _T_832 = _T_830 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109319.8]
  assign _T_833 = ~_T_832; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109320.8]
  assign _T_834 = ~io_in_c_bits_corrupt; // @[Monitor.scala 245:18:chipyard.TestHarness.RocketConfig.fir@109325.8]
  assign _T_836 = _T_834 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109327.8]
  assign _T_837 = ~_T_836; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109328.8]
  assign _T_838 = io_in_c_bits_opcode == 3'h5; // @[Monitor.scala 248:25:chipyard.TestHarness.RocketConfig.fir@109334.6]
  assign _T_856 = io_in_c_bits_opcode == 3'h6; // @[Monitor.scala 256:25:chipyard.TestHarness.RocketConfig.fir@109374.6]
  assign _T_858 = io_in_c_bits_size <= 3'h6; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@109377.8]
  assign _T_866 = _T_858 & _T_796; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@109385.8]
  assign _T_869 = _T_866 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109388.8]
  assign _T_870 = ~_T_869; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109389.8]
  assign _T_871 = 3'h6 == io_in_c_bits_size; // @[Parameters.scala 92:48:chipyard.TestHarness.RocketConfig.fir@109394.8]
  assign _T_873 = _T_871 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109396.8]
  assign _T_874 = ~_T_873; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109397.8]
  assign _T_885 = io_in_c_bits_param <= 3'h2; // @[Bundles.scala 116:29:chipyard.TestHarness.RocketConfig.fir@109424.8]
  assign _T_887 = _T_885 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109426.8]
  assign _T_888 = ~_T_887; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109427.8]
  assign _T_893 = io_in_c_bits_opcode == 3'h7; // @[Monitor.scala 266:25:chipyard.TestHarness.RocketConfig.fir@109441.6]
  assign _T_926 = io_in_c_bits_opcode == 3'h0; // @[Monitor.scala 275:25:chipyard.TestHarness.RocketConfig.fir@109500.6]
  assign _T_936 = io_in_c_bits_param == 3'h0; // @[Monitor.scala 279:31:chipyard.TestHarness.RocketConfig.fir@109523.8]
  assign _T_938 = _T_936 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109525.8]
  assign _T_939 = ~_T_938; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109526.8]
  assign _T_944 = io_in_c_bits_opcode == 3'h1; // @[Monitor.scala 283:25:chipyard.TestHarness.RocketConfig.fir@109540.6]
  assign _T_958 = io_in_c_bits_opcode == 3'h2; // @[Monitor.scala 290:25:chipyard.TestHarness.RocketConfig.fir@109572.6]
  assign _T_980 = io_in_a_ready & io_in_a_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@109623.4]
  assign _T_987 = ~io_in_a_bits_opcode[2]; // @[Edges.scala 93:28:chipyard.TestHarness.RocketConfig.fir@109630.4]
  assign _T_991 = _T_989 - 3'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@109634.4]
  assign _T_992 = _T_989 == 3'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@109635.4]
  assign _T_1005 = ~_T_992; // @[Monitor.scala 386:22:chipyard.TestHarness.RocketConfig.fir@109651.4]
  assign _T_1006 = io_in_a_valid & _T_1005; // @[Monitor.scala 386:19:chipyard.TestHarness.RocketConfig.fir@109652.4]
  assign _T_1007 = io_in_a_bits_opcode == _T_1000; // @[Monitor.scala 387:32:chipyard.TestHarness.RocketConfig.fir@109654.6]
  assign _T_1009 = _T_1007 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109656.6]
  assign _T_1010 = ~_T_1009; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109657.6]
  assign _T_1011 = io_in_a_bits_param == _T_1001; // @[Monitor.scala 388:32:chipyard.TestHarness.RocketConfig.fir@109662.6]
  assign _T_1013 = _T_1011 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109664.6]
  assign _T_1014 = ~_T_1013; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109665.6]
  assign _T_1015 = io_in_a_bits_size == _T_1002; // @[Monitor.scala 389:32:chipyard.TestHarness.RocketConfig.fir@109670.6]
  assign _T_1017 = _T_1015 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109672.6]
  assign _T_1018 = ~_T_1017; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109673.6]
  assign _T_1019 = io_in_a_bits_source == _T_1003; // @[Monitor.scala 390:32:chipyard.TestHarness.RocketConfig.fir@109678.6]
  assign _T_1021 = _T_1019 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109680.6]
  assign _T_1022 = ~_T_1021; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109681.6]
  assign _T_1023 = io_in_a_bits_address == _T_1004; // @[Monitor.scala 391:32:chipyard.TestHarness.RocketConfig.fir@109686.6]
  assign _T_1025 = _T_1023 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109688.6]
  assign _T_1026 = ~_T_1025; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109689.6]
  assign _T_1028 = _T_980 & _T_992; // @[Monitor.scala 393:20:chipyard.TestHarness.RocketConfig.fir@109696.4]
  assign _T_1029 = io_in_d_ready & io_in_d_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@109704.4]
  assign _T_1031 = 13'h3f << io_in_d_bits_size; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@109706.4]
  assign _T_1033 = ~_T_1031[5:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@109708.4]
  assign _T_1039 = _T_1037 - 3'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@109714.4]
  assign _T_1040 = _T_1037 == 3'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@109715.4]
  assign _T_1054 = ~_T_1040; // @[Monitor.scala 538:22:chipyard.TestHarness.RocketConfig.fir@109732.4]
  assign _T_1055 = io_in_d_valid & _T_1054; // @[Monitor.scala 538:19:chipyard.TestHarness.RocketConfig.fir@109733.4]
  assign _T_1056 = io_in_d_bits_opcode == _T_1048; // @[Monitor.scala 539:29:chipyard.TestHarness.RocketConfig.fir@109735.6]
  assign _T_1058 = _T_1056 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@109737.6]
  assign _T_1059 = ~_T_1058; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@109738.6]
  assign _T_1060 = io_in_d_bits_param == _T_1049; // @[Monitor.scala 540:29:chipyard.TestHarness.RocketConfig.fir@109743.6]
  assign _T_1062 = _T_1060 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@109745.6]
  assign _T_1063 = ~_T_1062; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@109746.6]
  assign _T_1064 = io_in_d_bits_size == _T_1050; // @[Monitor.scala 541:29:chipyard.TestHarness.RocketConfig.fir@109751.6]
  assign _T_1066 = _T_1064 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@109753.6]
  assign _T_1067 = ~_T_1066; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@109754.6]
  assign _T_1068 = io_in_d_bits_source == _T_1051; // @[Monitor.scala 542:29:chipyard.TestHarness.RocketConfig.fir@109759.6]
  assign _T_1070 = _T_1068 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@109761.6]
  assign _T_1071 = ~_T_1070; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@109762.6]
  assign _T_1072 = io_in_d_bits_sink == _T_1052; // @[Monitor.scala 543:29:chipyard.TestHarness.RocketConfig.fir@109767.6]
  assign _T_1074 = _T_1072 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@109769.6]
  assign _T_1075 = ~_T_1074; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@109770.6]
  assign _T_1076 = io_in_d_bits_denied == _T_1053; // @[Monitor.scala 544:29:chipyard.TestHarness.RocketConfig.fir@109775.6]
  assign _T_1078 = _T_1076 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@109777.6]
  assign _T_1079 = ~_T_1078; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@109778.6]
  assign _T_1081 = _T_1029 & _T_1040; // @[Monitor.scala 546:20:chipyard.TestHarness.RocketConfig.fir@109785.4]
  assign _T_1131 = io_in_c_ready & io_in_c_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@109875.4]
  assign _T_1141 = _T_1139 - 3'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@109885.4]
  assign _T_1142 = _T_1139 == 3'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@109886.4]
  assign _T_1155 = ~_T_1142; // @[Monitor.scala 514:22:chipyard.TestHarness.RocketConfig.fir@109902.4]
  assign _T_1156 = io_in_c_valid & _T_1155; // @[Monitor.scala 514:19:chipyard.TestHarness.RocketConfig.fir@109903.4]
  assign _T_1157 = io_in_c_bits_opcode == _T_1150; // @[Monitor.scala 515:32:chipyard.TestHarness.RocketConfig.fir@109905.6]
  assign _T_1159 = _T_1157 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109907.6]
  assign _T_1160 = ~_T_1159; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109908.6]
  assign _T_1161 = io_in_c_bits_param == _T_1151; // @[Monitor.scala 516:32:chipyard.TestHarness.RocketConfig.fir@109913.6]
  assign _T_1163 = _T_1161 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109915.6]
  assign _T_1164 = ~_T_1163; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109916.6]
  assign _T_1165 = io_in_c_bits_size == _T_1152; // @[Monitor.scala 517:32:chipyard.TestHarness.RocketConfig.fir@109921.6]
  assign _T_1167 = _T_1165 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109923.6]
  assign _T_1168 = ~_T_1167; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109924.6]
  assign _T_1169 = io_in_c_bits_source == _T_1153; // @[Monitor.scala 518:32:chipyard.TestHarness.RocketConfig.fir@109929.6]
  assign _T_1171 = _T_1169 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109931.6]
  assign _T_1172 = ~_T_1171; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109932.6]
  assign _T_1173 = io_in_c_bits_address == _T_1154; // @[Monitor.scala 519:32:chipyard.TestHarness.RocketConfig.fir@109937.6]
  assign _T_1175 = _T_1173 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109939.6]
  assign _T_1176 = ~_T_1175; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109940.6]
  assign _T_1178 = _T_1131 & _T_1142; // @[Monitor.scala 521:20:chipyard.TestHarness.RocketConfig.fir@109947.4]
  assign _T_1190 = _T_1188 - 3'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@109969.4]
  assign a_first = _T_1188 == 3'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@109970.4]
  assign _T_1208 = _T_1206 - 3'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@109991.4]
  assign d_first = _T_1206 == 3'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@109992.4]
  assign _GEN_73 = {io_in_d_bits_source, 2'h0}; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@110011.4]
  assign _T_1216 = {{1'd0}, _GEN_73}; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@110011.4]
  assign _T_1217 = inflight_opcodes >> _T_1216; // @[Monitor.scala 629:44:chipyard.TestHarness.RocketConfig.fir@110012.4]
  assign _T_1221 = 16'h10 - 16'h1; // @[Monitor.scala 606:57:chipyard.TestHarness.RocketConfig.fir@110016.4]
  assign _GEN_74 = {{4'd0}, _T_1221}; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@110017.4]
  assign _T_1222 = _T_1217 & _GEN_74; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@110017.4]
  assign _T_1223 = {{1'd0}, _T_1222[19:1]}; // @[Monitor.scala 629:152:chipyard.TestHarness.RocketConfig.fir@110018.4]
  assign _T_1225 = inflight_sizes >> _T_1216; // @[Monitor.scala 633:40:chipyard.TestHarness.RocketConfig.fir@110023.4]
  assign _T_1230 = _T_1225 & _GEN_74; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@110028.4]
  assign _T_1231 = {{1'd0}, _T_1230[19:1]}; // @[Monitor.scala 633:144:chipyard.TestHarness.RocketConfig.fir@110029.4]
  assign _T_1235 = _T_980 & a_first; // @[Monitor.scala 643:27:chipyard.TestHarness.RocketConfig.fir@110054.4]
  assign _T_1237 = 8'h1 << io_in_a_bits_source; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@110057.6]
  assign _T_1238 = {io_in_a_bits_opcode, 1'h0}; // @[Monitor.scala 645:53:chipyard.TestHarness.RocketConfig.fir@110059.6]
  assign _T_1239 = _T_1238 | 4'h1; // @[Monitor.scala 645:61:chipyard.TestHarness.RocketConfig.fir@110060.6]
  assign _T_1240 = {io_in_a_bits_size, 1'h0}; // @[Monitor.scala 646:49:chipyard.TestHarness.RocketConfig.fir@110062.6]
  assign _T_1241 = _T_1240 | 4'h1; // @[Monitor.scala 646:57:chipyard.TestHarness.RocketConfig.fir@110063.6]
  assign _GEN_79 = {io_in_a_bits_source, 2'h0}; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@110065.6]
  assign _T_1242 = {{1'd0}, _GEN_79}; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@110065.6]
  assign a_opcodes_set_interm = _T_1235 ? _T_1239 : 4'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@110056.4]
  assign _GEN_80 = {{63'd0}, a_opcodes_set_interm}; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@110066.6]
  assign _T_1243 = _GEN_80 << _T_1242; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@110066.6]
  assign a_sizes_set_interm = _T_1235 ? _T_1241 : 4'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@110056.4]
  assign _GEN_82 = {{63'd0}, a_sizes_set_interm}; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@110069.6]
  assign _T_1245 = _GEN_82 << _T_1242; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@110069.6]
  assign _T_1246 = inflight >> io_in_a_bits_source; // @[Monitor.scala 649:26:chipyard.TestHarness.RocketConfig.fir@110071.6]
  assign _T_1248 = ~_T_1246[0]; // @[Monitor.scala 649:17:chipyard.TestHarness.RocketConfig.fir@110073.6]
  assign _T_1250 = _T_1248 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110075.6]
  assign _T_1251 = ~_T_1250; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110076.6]
  assign _GEN_27 = _T_1235 ? _T_1237 : 8'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@110056.4]
  assign _GEN_30 = _T_1235 ? _T_1243 : 67'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@110056.4]
  assign _GEN_31 = _T_1235 ? _T_1245 : 67'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@110056.4]
  assign _T_1254 = _T_1029 & d_first; // @[Monitor.scala 660:27:chipyard.TestHarness.RocketConfig.fir@110090.4]
  assign _T_1256 = ~_T_378; // @[Monitor.scala 660:75:chipyard.TestHarness.RocketConfig.fir@110092.4]
  assign _T_1257 = _T_1254 & _T_1256; // @[Monitor.scala 660:72:chipyard.TestHarness.RocketConfig.fir@110093.4]
  assign _T_1258 = 8'h1 << io_in_d_bits_source; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@110095.6]
  assign _GEN_84 = {{63'd0}, _T_1221}; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@110102.6]
  assign _T_1264 = _GEN_84 << _T_1216; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@110102.6]
  assign _GEN_32 = _T_1257 ? _T_1258 : 8'h0; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@110094.4]
  assign _GEN_33 = _T_1257 ? _T_1264 : 79'h0; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@110094.4]
  assign _T_1271 = io_in_d_valid & d_first; // @[Monitor.scala 665:26:chipyard.TestHarness.RocketConfig.fir@110112.4]
  assign _T_1274 = _T_1271 & _T_1256; // @[Monitor.scala 665:71:chipyard.TestHarness.RocketConfig.fir@110115.4]
  assign _T_1275 = inflight >> io_in_d_bits_source; // @[Monitor.scala 666:25:chipyard.TestHarness.RocketConfig.fir@110117.6]
  assign _T_1277 = io_in_a_bits_source == io_in_d_bits_source; // @[Monitor.scala 666:93:chipyard.TestHarness.RocketConfig.fir@110119.6]
  assign _T_1278 = io_in_a_valid & _T_1277; // @[Monitor.scala 666:68:chipyard.TestHarness.RocketConfig.fir@110120.6]
  assign _T_1279 = io_in_a_bits_size == io_in_d_bits_size; // @[Monitor.scala 666:142:chipyard.TestHarness.RocketConfig.fir@110121.6]
  assign _T_1280 = _T_1278 & _T_1279; // @[Monitor.scala 666:119:chipyard.TestHarness.RocketConfig.fir@110122.6]
  assign _T_1281 = _T_1280 & a_first; // @[Monitor.scala 666:166:chipyard.TestHarness.RocketConfig.fir@110123.6]
  assign _T_1282 = _T_1275[0] | _T_1281; // @[Monitor.scala 666:49:chipyard.TestHarness.RocketConfig.fir@110124.6]
  assign _T_1284 = _T_1282 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@110126.6]
  assign _T_1285 = ~_T_1284; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@110127.6]
  assign a_opcode_lookup = _T_1223[3:0]; // @[:chipyard.TestHarness.RocketConfig.fir@110009.4 :chipyard.TestHarness.RocketConfig.fir@110010.4 Monitor.scala 629:21:chipyard.TestHarness.RocketConfig.fir@110019.4]
  assign _GEN_37 = 3'h2 == a_opcode_lookup[2:0] ? 3'h1 : 3'h0; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@110133.6]
  assign _GEN_38 = 3'h3 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_37; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@110133.6]
  assign _GEN_39 = 3'h4 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_38; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@110133.6]
  assign _GEN_40 = 3'h5 == a_opcode_lookup[2:0] ? 3'h2 : _GEN_39; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@110133.6]
  assign _GEN_41 = 3'h6 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_40; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@110133.6]
  assign _GEN_42 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_41; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@110133.6]
  assign _T_1287 = io_in_d_bits_opcode == _GEN_42; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@110133.6]
  assign _GEN_49 = 3'h6 == a_opcode_lookup[2:0] ? 3'h5 : _GEN_40; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@110135.6]
  assign _GEN_50 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_49; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@110135.6]
  assign _T_1289 = io_in_d_bits_opcode == _GEN_50; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@110135.6]
  assign _T_1290 = _T_1287 | _T_1289; // @[Monitor.scala 667:71:chipyard.TestHarness.RocketConfig.fir@110136.6]
  assign _GEN_53 = 3'h2 == io_in_a_bits_opcode ? 3'h1 : 3'h0; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@110137.6]
  assign _GEN_54 = 3'h3 == io_in_a_bits_opcode ? 3'h1 : _GEN_53; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@110137.6]
  assign _GEN_55 = 3'h4 == io_in_a_bits_opcode ? 3'h1 : _GEN_54; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@110137.6]
  assign _GEN_56 = 3'h5 == io_in_a_bits_opcode ? 3'h2 : _GEN_55; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@110137.6]
  assign _GEN_57 = 3'h6 == io_in_a_bits_opcode ? 3'h4 : _GEN_56; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@110137.6]
  assign _GEN_58 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_57; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@110137.6]
  assign _T_1291 = io_in_d_bits_opcode == _GEN_58; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@110137.6]
  assign _GEN_65 = 3'h6 == io_in_a_bits_opcode ? 3'h5 : _GEN_56; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@110138.6]
  assign _GEN_66 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_65; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@110138.6]
  assign _T_1292 = io_in_d_bits_opcode == _GEN_66; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@110138.6]
  assign _T_1293 = _T_1291 | _T_1292; // @[Monitor.scala 668:99:chipyard.TestHarness.RocketConfig.fir@110139.6]
  assign _T_1294 = io_in_a_valid & _T_1293; // @[Monitor.scala 668:34:chipyard.TestHarness.RocketConfig.fir@110140.6]
  assign _T_1295 = _T_1290 | _T_1294; // @[Monitor.scala 668:15:chipyard.TestHarness.RocketConfig.fir@110141.6]
  assign _T_1297 = _T_1295 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@110143.6]
  assign _T_1298 = ~_T_1297; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@110144.6]
  assign a_size_lookup = _T_1231[3:0]; // @[:chipyard.TestHarness.RocketConfig.fir@110020.4 :chipyard.TestHarness.RocketConfig.fir@110021.4 Monitor.scala 633:19:chipyard.TestHarness.RocketConfig.fir@110030.4]
  assign _GEN_87 = {{1'd0}, io_in_d_bits_size}; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@110149.6]
  assign _T_1299 = _GEN_87 == a_size_lookup; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@110149.6]
  assign _T_1301 = io_in_a_valid & _T_1279; // @[Monitor.scala 670:72:chipyard.TestHarness.RocketConfig.fir@110151.6]
  assign _T_1302 = _T_1299 | _T_1301; // @[Monitor.scala 670:53:chipyard.TestHarness.RocketConfig.fir@110152.6]
  assign _T_1304 = _T_1302 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@110154.6]
  assign _T_1305 = ~_T_1304; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@110155.6]
  assign _T_1307 = _T_1271 & a_first; // @[Monitor.scala 672:36:chipyard.TestHarness.RocketConfig.fir@110162.4]
  assign _T_1308 = _T_1307 & io_in_a_valid; // @[Monitor.scala 672:47:chipyard.TestHarness.RocketConfig.fir@110163.4]
  assign _T_1310 = _T_1308 & _T_1277; // @[Monitor.scala 672:65:chipyard.TestHarness.RocketConfig.fir@110165.4]
  assign _T_1312 = _T_1310 & _T_1256; // @[Monitor.scala 672:116:chipyard.TestHarness.RocketConfig.fir@110167.4]
  assign _T_1313 = ~io_in_d_ready; // @[Monitor.scala 673:15:chipyard.TestHarness.RocketConfig.fir@110169.6]
  assign _T_1314 = _T_1313 | io_in_a_ready; // @[Monitor.scala 673:32:chipyard.TestHarness.RocketConfig.fir@110170.6]
  assign _T_1316 = _T_1314 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@110172.6]
  assign _T_1317 = ~_T_1316; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@110173.6]
  assign a_set = _GEN_27[4:0]; // @[:chipyard.TestHarness.RocketConfig.fir@110003.4 :chipyard.TestHarness.RocketConfig.fir@110004.4 Monitor.scala 644:13:chipyard.TestHarness.RocketConfig.fir@110058.6]
  assign d_clr = _GEN_32[4:0]; // @[:chipyard.TestHarness.RocketConfig.fir@110082.4 :chipyard.TestHarness.RocketConfig.fir@110083.4 Monitor.scala 661:13:chipyard.TestHarness.RocketConfig.fir@110096.6]
  assign _T_1318 = a_set != d_clr; // @[Monitor.scala 677:20:chipyard.TestHarness.RocketConfig.fir@110179.4]
  assign _T_1319 = |a_set; // @[Monitor.scala 677:40:chipyard.TestHarness.RocketConfig.fir@110180.4]
  assign _T_1320 = ~_T_1319; // @[Monitor.scala 677:33:chipyard.TestHarness.RocketConfig.fir@110181.4]
  assign _T_1321 = _T_1318 | _T_1320; // @[Monitor.scala 677:30:chipyard.TestHarness.RocketConfig.fir@110182.4]
  assign _T_1323 = _T_1321 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@110184.4]
  assign _T_1324 = ~_T_1323; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@110185.4]
  assign _T_1325 = inflight | a_set; // @[Monitor.scala 680:27:chipyard.TestHarness.RocketConfig.fir@110190.4]
  assign _T_1326 = ~d_clr; // @[Monitor.scala 680:38:chipyard.TestHarness.RocketConfig.fir@110191.4]
  assign _T_1327 = _T_1325 & _T_1326; // @[Monitor.scala 680:36:chipyard.TestHarness.RocketConfig.fir@110192.4]
  assign a_opcodes_set = _GEN_30[19:0]; // @[:chipyard.TestHarness.RocketConfig.fir@110005.4 :chipyard.TestHarness.RocketConfig.fir@110006.4 Monitor.scala 647:21:chipyard.TestHarness.RocketConfig.fir@110067.6]
  assign _T_1328 = inflight_opcodes | a_opcodes_set; // @[Monitor.scala 681:43:chipyard.TestHarness.RocketConfig.fir@110194.4]
  assign d_opcodes_clr = _GEN_33[19:0]; // @[:chipyard.TestHarness.RocketConfig.fir@110084.4 :chipyard.TestHarness.RocketConfig.fir@110085.4 Monitor.scala 662:21:chipyard.TestHarness.RocketConfig.fir@110103.6]
  assign _T_1329 = ~d_opcodes_clr; // @[Monitor.scala 681:62:chipyard.TestHarness.RocketConfig.fir@110195.4]
  assign _T_1330 = _T_1328 & _T_1329; // @[Monitor.scala 681:60:chipyard.TestHarness.RocketConfig.fir@110196.4]
  assign a_sizes_set = _GEN_31[19:0]; // @[:chipyard.TestHarness.RocketConfig.fir@110007.4 :chipyard.TestHarness.RocketConfig.fir@110008.4 Monitor.scala 648:19:chipyard.TestHarness.RocketConfig.fir@110070.6]
  assign _T_1331 = inflight_sizes | a_sizes_set; // @[Monitor.scala 682:39:chipyard.TestHarness.RocketConfig.fir@110198.4]
  assign _T_1333 = _T_1331 & _T_1329; // @[Monitor.scala 682:54:chipyard.TestHarness.RocketConfig.fir@110200.4]
  assign _T_1335 = |inflight; // @[Monitor.scala 687:26:chipyard.TestHarness.RocketConfig.fir@110205.4]
  assign _T_1336 = ~_T_1335; // @[Monitor.scala 687:16:chipyard.TestHarness.RocketConfig.fir@110206.4]
  assign _T_1337 = plusarg_reader_out == 32'h0; // @[Monitor.scala 687:39:chipyard.TestHarness.RocketConfig.fir@110207.4]
  assign _T_1338 = _T_1336 | _T_1337; // @[Monitor.scala 687:30:chipyard.TestHarness.RocketConfig.fir@110208.4]
  assign _T_1339 = _T_1334 < plusarg_reader_out; // @[Monitor.scala 687:59:chipyard.TestHarness.RocketConfig.fir@110209.4]
  assign _T_1340 = _T_1338 | _T_1339; // @[Monitor.scala 687:47:chipyard.TestHarness.RocketConfig.fir@110210.4]
  assign _T_1342 = _T_1340 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110212.4]
  assign _T_1343 = ~_T_1342; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110213.4]
  assign _T_1345 = _T_1334 + 32'h1; // @[Monitor.scala 689:26:chipyard.TestHarness.RocketConfig.fir@110219.4]
  assign _T_1348 = _T_980 | _T_1029; // @[Monitor.scala 690:27:chipyard.TestHarness.RocketConfig.fir@110223.4]
  assign _T_1360 = _T_1358 - 3'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@110238.4]
  assign _T_1361 = _T_1358 == 3'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@110239.4]
  assign _T_1371 = _T_1029 & _T_1361; // @[Monitor.scala 700:27:chipyard.TestHarness.RocketConfig.fir@110253.4]
  assign _T_1374 = ~io_in_d_bits_opcode[1]; // @[Edges.scala 72:43:chipyard.TestHarness.RocketConfig.fir@110256.4]
  assign _T_1375 = io_in_d_bits_opcode[2] & _T_1374; // @[Edges.scala 72:40:chipyard.TestHarness.RocketConfig.fir@110257.4]
  assign _T_1376 = _T_1371 & _T_1375; // @[Monitor.scala 700:38:chipyard.TestHarness.RocketConfig.fir@110258.4]
  assign _T_1377 = 8'h1 << io_in_d_bits_sink; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@110260.6]
  assign _T_1378 = _T_1349 >> io_in_d_bits_sink; // @[Monitor.scala 702:23:chipyard.TestHarness.RocketConfig.fir@110262.6]
  assign _T_1380 = ~_T_1378[0]; // @[Monitor.scala 702:14:chipyard.TestHarness.RocketConfig.fir@110264.6]
  assign _T_1382 = _T_1380 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@110266.6]
  assign _T_1383 = ~_T_1382; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@110267.6]
  assign _GEN_69 = _T_1376 ? _T_1377 : 8'h0; // @[Monitor.scala 700:72:chipyard.TestHarness.RocketConfig.fir@110259.4]
  assign _T_1388 = 8'h1 << io_in_e_bits_sink; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@110279.6]
  assign _T_1389 = _GEN_69 | _T_1349; // @[Monitor.scala 708:24:chipyard.TestHarness.RocketConfig.fir@110281.6]
  assign _T_1390 = _T_1389 >> io_in_e_bits_sink; // @[Monitor.scala 708:35:chipyard.TestHarness.RocketConfig.fir@110282.6]
  assign _T_1393 = _T_1390[0] | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110285.6]
  assign _T_1394 = ~_T_1393; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110286.6]
  assign _GEN_70 = io_in_e_valid ? _T_1388 : 8'h0; // @[Monitor.scala 706:73:chipyard.TestHarness.RocketConfig.fir@110278.4]
  assign _T_1395 = _T_1349 | _GEN_69; // @[Monitor.scala 713:27:chipyard.TestHarness.RocketConfig.fir@110292.4]
  assign _T_1396 = ~_GEN_70; // @[Monitor.scala 713:38:chipyard.TestHarness.RocketConfig.fir@110293.4]
  assign _T_1397 = _T_1395 & _T_1396; // @[Monitor.scala 713:36:chipyard.TestHarness.RocketConfig.fir@110294.4]
  assign _GEN_88 = io_in_a_valid & _T_101; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108014.10]
  assign _GEN_104 = io_in_a_valid & _T_143; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108090.10]
  assign _GEN_122 = io_in_a_valid & _T_189; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108174.10]
  assign _GEN_134 = io_in_a_valid & _T_222; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108233.10]
  assign _GEN_144 = io_in_a_valid & _T_251; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108284.10]
  assign _GEN_154 = io_in_a_valid & _T_282; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108334.10]
  assign _GEN_164 = io_in_a_valid & _T_308; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108382.10]
  assign _GEN_174 = io_in_a_valid & _T_334; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108430.10]
  assign _GEN_186 = io_in_d_valid & _T_378; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108500.10]
  assign _GEN_196 = io_in_d_valid & _T_398; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108542.10]
  assign _GEN_206 = io_in_d_valid & _T_426; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108600.10]
  assign _GEN_216 = io_in_d_valid & _T_455; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108659.10]
  assign _GEN_222 = io_in_d_valid & _T_472; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108694.10]
  assign _GEN_228 = io_in_d_valid & _T_490; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108730.10]
  assign _GEN_234 = io_in_c_valid & _T_816; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109292.10]
  assign _GEN_246 = io_in_c_valid & _T_838; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109340.10]
  assign _GEN_256 = io_in_c_valid & _T_856; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109391.10]
  assign _GEN_270 = io_in_c_valid & _T_893; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109458.10]
  assign _GEN_282 = io_in_c_valid & _T_926; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109506.10]
  assign _GEN_292 = io_in_c_valid & _T_944; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109546.10]
  assign _GEN_300 = io_in_c_valid & _T_958; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109578.10]
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
  _T_989 = _RAND_0[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_1000 = _RAND_1[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_1001 = _RAND_2[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_1002 = _RAND_3[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_1003 = _RAND_4[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_1004 = _RAND_5[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  _T_1037 = _RAND_6[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  _T_1048 = _RAND_7[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  _T_1049 = _RAND_8[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  _T_1050 = _RAND_9[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  _T_1051 = _RAND_10[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  _T_1052 = _RAND_11[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  _T_1053 = _RAND_12[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  _T_1139 = _RAND_13[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  _T_1150 = _RAND_14[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  _T_1151 = _RAND_15[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  _T_1152 = _RAND_16[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  _T_1153 = _RAND_17[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  _T_1154 = _RAND_18[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  inflight = _RAND_19[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  inflight_opcodes = _RAND_20[19:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  inflight_sizes = _RAND_21[19:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{`RANDOM}};
  _T_1188 = _RAND_22[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{`RANDOM}};
  _T_1206 = _RAND_23[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{`RANDOM}};
  _T_1334 = _RAND_24[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{`RANDOM}};
  _T_1349 = _RAND_25[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{`RANDOM}};
  _T_1358 = _RAND_26[2:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      _T_989 <= 3'h0;
    end else if (_T_980) begin
      if (_T_992) begin
        if (_T_987) begin
          _T_989 <= _T_16[5:3];
        end else begin
          _T_989 <= 3'h0;
        end
      end else begin
        _T_989 <= _T_991;
      end
    end
    if (_T_1028) begin
      _T_1000 <= io_in_a_bits_opcode;
    end
    if (_T_1028) begin
      _T_1001 <= io_in_a_bits_param;
    end
    if (_T_1028) begin
      _T_1002 <= io_in_a_bits_size;
    end
    if (_T_1028) begin
      _T_1003 <= io_in_a_bits_source;
    end
    if (_T_1028) begin
      _T_1004 <= io_in_a_bits_address;
    end
    if (reset) begin
      _T_1037 <= 3'h0;
    end else if (_T_1029) begin
      if (_T_1040) begin
        if (io_in_d_bits_opcode[0]) begin
          _T_1037 <= _T_1033[5:3];
        end else begin
          _T_1037 <= 3'h0;
        end
      end else begin
        _T_1037 <= _T_1039;
      end
    end
    if (_T_1081) begin
      _T_1048 <= io_in_d_bits_opcode;
    end
    if (_T_1081) begin
      _T_1049 <= io_in_d_bits_param;
    end
    if (_T_1081) begin
      _T_1050 <= io_in_d_bits_size;
    end
    if (_T_1081) begin
      _T_1051 <= io_in_d_bits_source;
    end
    if (_T_1081) begin
      _T_1052 <= io_in_d_bits_sink;
    end
    if (_T_1081) begin
      _T_1053 <= io_in_d_bits_denied;
    end
    if (reset) begin
      _T_1139 <= 3'h0;
    end else if (_T_1131) begin
      if (_T_1142) begin
        if (io_in_c_bits_opcode[0]) begin
          _T_1139 <= _T_789[5:3];
        end else begin
          _T_1139 <= 3'h0;
        end
      end else begin
        _T_1139 <= _T_1141;
      end
    end
    if (_T_1178) begin
      _T_1150 <= io_in_c_bits_opcode;
    end
    if (_T_1178) begin
      _T_1151 <= io_in_c_bits_param;
    end
    if (_T_1178) begin
      _T_1152 <= io_in_c_bits_size;
    end
    if (_T_1178) begin
      _T_1153 <= io_in_c_bits_source;
    end
    if (_T_1178) begin
      _T_1154 <= io_in_c_bits_address;
    end
    if (reset) begin
      inflight <= 5'h0;
    end else begin
      inflight <= _T_1327;
    end
    if (reset) begin
      inflight_opcodes <= 20'h0;
    end else begin
      inflight_opcodes <= _T_1330;
    end
    if (reset) begin
      inflight_sizes <= 20'h0;
    end else begin
      inflight_sizes <= _T_1333;
    end
    if (reset) begin
      _T_1188 <= 3'h0;
    end else if (_T_980) begin
      if (a_first) begin
        if (_T_987) begin
          _T_1188 <= _T_16[5:3];
        end else begin
          _T_1188 <= 3'h0;
        end
      end else begin
        _T_1188 <= _T_1190;
      end
    end
    if (reset) begin
      _T_1206 <= 3'h0;
    end else if (_T_1029) begin
      if (d_first) begin
        if (io_in_d_bits_opcode[0]) begin
          _T_1206 <= _T_1033[5:3];
        end else begin
          _T_1206 <= 3'h0;
        end
      end else begin
        _T_1206 <= _T_1208;
      end
    end
    if (reset) begin
      _T_1334 <= 32'h0;
    end else if (_T_1348) begin
      _T_1334 <= 32'h0;
    end else begin
      _T_1334 <= _T_1345;
    end
    if (reset) begin
      _T_1349 <= 8'h0;
    end else begin
      _T_1349 <= _T_1397;
    end
    if (reset) begin
      _T_1358 <= 3'h0;
    end else if (_T_1029) begin
      if (_T_1361) begin
        if (io_in_d_bits_opcode[0]) begin
          _T_1358 <= _T_1033[5:3];
        end else begin
          _T_1358 <= 3'h0;
        end
      end else begin
        _T_1358 <= _T_1360;
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_88 & _T_115) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock type unsupported by manager (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108014.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_88 & _T_115) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108015.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_88 & _T_119) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock from a client which does not support Probe (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108022.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_88 & _T_119) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108023.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock carries invalid source ID (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108029.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108030.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_88 & _T_126) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock smaller than a beat (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108037.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_88 & _T_126) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108038.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock address not aligned to size (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108044.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108045.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_88 & _T_133) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock carries invalid grow param (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108052.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_88 & _T_133) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108053.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock contains invalid mask (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108061.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108062.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock is corrupt (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108069.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108070.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_104 & _T_115) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm type unsupported by manager (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108090.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_104 & _T_115) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108091.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_104 & _T_119) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm from a client which does not support Probe (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108098.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_104 & _T_119) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108099.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_104 & _T_122) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm carries invalid source ID (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108105.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_104 & _T_122) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108106.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_104 & _T_126) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm smaller than a beat (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108113.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_104 & _T_126) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108114.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_104 & _T_129) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm address not aligned to size (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108120.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_104 & _T_129) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108121.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_104 & _T_133) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm carries invalid grow param (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108128.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_104 & _T_133) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108129.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_104 & _T_179) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm requests NtoB (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108136.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_104 & _T_179) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108137.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm contains invalid mask (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108145.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108146.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm is corrupt (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108153.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108154.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_122 & _T_115) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Get type unsupported by manager (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108174.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_122 & _T_115) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108175.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_122 & _T_122) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get carries invalid source ID (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108181.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_122 & _T_122) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108182.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_122 & _T_129) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get address not aligned to size (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108188.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_122 & _T_129) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108189.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_122 & _T_213) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get carries invalid param (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108196.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_122 & _T_213) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108197.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_122 & _T_217) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get contains invalid mask (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108204.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_122 & _T_217) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108205.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_122 & _T_142) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get is corrupt (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108212.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_122 & _T_142) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108213.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_134 & _T_115) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutFull type unsupported by manager (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108233.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_134 & _T_115) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108234.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_134 & _T_122) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull carries invalid source ID (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108240.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_134 & _T_122) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108241.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_134 & _T_129) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull address not aligned to size (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108247.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_134 & _T_129) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108248.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_134 & _T_213) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull carries invalid param (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108255.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_134 & _T_213) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108256.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_134 & _T_217) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull contains invalid mask (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108263.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_134 & _T_217) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108264.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_144 & _T_115) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutPartial type unsupported by manager (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108284.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_144 & _T_115) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108285.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_144 & _T_122) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial carries invalid source ID (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108291.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_144 & _T_122) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108292.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_144 & _T_129) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial address not aligned to size (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108298.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_144 & _T_129) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108299.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_144 & _T_213) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial carries invalid param (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108306.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_144 & _T_213) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108307.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_144 & _T_281) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial contains invalid mask (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108316.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_144 & _T_281) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108317.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_154 & _T_293) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Arithmetic type unsupported by manager (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108334.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_154 & _T_293) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108335.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_154 & _T_122) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic carries invalid source ID (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108341.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_154 & _T_122) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108342.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_154 & _T_129) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic address not aligned to size (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108348.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_154 & _T_129) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108349.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_154 & _T_303) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic carries invalid opcode param (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108356.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_154 & _T_303) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108357.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_154 & _T_217) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic contains invalid mask (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108364.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_154 & _T_217) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108365.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_164 & _T_293) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Logical type unsupported by manager (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108382.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_164 & _T_293) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108383.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_164 & _T_122) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical carries invalid source ID (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108389.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_164 & _T_122) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108390.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_164 & _T_129) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical address not aligned to size (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108396.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_164 & _T_129) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108397.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_164 & _T_329) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical carries invalid opcode param (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108404.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_164 & _T_329) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108405.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_164 & _T_217) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical contains invalid mask (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108412.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_164 & _T_217) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108413.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_174 & _T_293) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Hint type unsupported by manager (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108430.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_174 & _T_293) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108431.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_174 & _T_122) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint carries invalid source ID (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108437.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_174 & _T_122) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108438.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_174 & _T_129) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint address not aligned to size (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108444.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_174 & _T_129) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108445.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_174 & _T_355) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint carries invalid opcode param (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108452.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_174 & _T_355) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108453.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_174 & _T_217) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint contains invalid mask (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108460.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_174 & _T_217) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108461.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_174 & _T_142) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint is corrupt (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108468.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_174 & _T_142) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@108469.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_in_d_valid & _T_367) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel has invalid opcode (connected at Configs.scala:113:26)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108479.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (io_in_d_valid & _T_367) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108480.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_186 & _T_381) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck carries invalid source ID (connected at Configs.scala:113:26)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108500.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_186 & _T_381) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108501.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_186 & _T_385) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck smaller than a beat (connected at Configs.scala:113:26)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108508.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_186 & _T_385) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108509.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_186 & _T_389) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseeAck carries invalid param (connected at Configs.scala:113:26)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108516.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_186 & _T_389) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108517.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_186 & _T_393) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck is corrupt (connected at Configs.scala:113:26)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108524.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_186 & _T_393) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108525.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_186 & _T_397) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck is denied (connected at Configs.scala:113:26)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108532.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_186 & _T_397) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108533.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_196 & _T_381) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid source ID (connected at Configs.scala:113:26)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108542.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_196 & _T_381) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108543.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_196 & _T_385) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant smaller than a beat (connected at Configs.scala:113:26)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108557.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_196 & _T_385) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108558.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_196 & _T_412) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid cap param (connected at Configs.scala:113:26)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108565.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_196 & _T_412) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108566.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_196 & _T_416) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries toN param (connected at Configs.scala:113:26)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108573.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_196 & _T_416) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108574.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_196 & _T_393) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant is corrupt (connected at Configs.scala:113:26)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108581.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_196 & _T_393) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108582.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_206 & _T_381) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid source ID (connected at Configs.scala:113:26)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108600.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_206 & _T_381) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108601.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_206 & _T_385) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData smaller than a beat (connected at Configs.scala:113:26)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108615.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_206 & _T_385) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108616.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_206 & _T_412) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid cap param (connected at Configs.scala:113:26)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108623.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_206 & _T_412) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108624.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_206 & _T_416) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries toN param (connected at Configs.scala:113:26)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108631.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_206 & _T_416) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108632.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_206 & _T_449) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData is denied but not corrupt (connected at Configs.scala:113:26)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108640.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_206 & _T_449) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108641.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_216 & _T_381) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck carries invalid source ID (connected at Configs.scala:113:26)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108659.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_216 & _T_381) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108660.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_216 & _T_389) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck carries invalid param (connected at Configs.scala:113:26)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108667.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_216 & _T_389) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108668.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_216 & _T_393) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck is corrupt (connected at Configs.scala:113:26)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108675.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_216 & _T_393) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108676.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_222 & _T_381) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData carries invalid source ID (connected at Configs.scala:113:26)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108694.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_222 & _T_381) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108695.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_222 & _T_389) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData carries invalid param (connected at Configs.scala:113:26)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108702.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_222 & _T_389) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108703.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_222 & _T_449) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData is denied but not corrupt (connected at Configs.scala:113:26)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108711.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_222 & _T_449) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108712.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_228 & _T_381) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck carries invalid source ID (connected at Configs.scala:113:26)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108730.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_228 & _T_381) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108731.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_228 & _T_389) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck carries invalid param (connected at Configs.scala:113:26)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108738.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_228 & _T_389) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108739.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_228 & _T_393) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck is corrupt (connected at Configs.scala:113:26)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108746.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_228 & _T_393) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@108747.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_234 & _T_819) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAck carries unmanaged address (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109292.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_234 & _T_819) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109293.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_234 & _T_822) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAck carries invalid source ID (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109299.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_234 & _T_822) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109300.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_234 & _T_826) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAck smaller than a beat (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109307.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_234 & _T_826) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109308.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_234 & _T_829) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAck address not aligned to size (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109314.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_234 & _T_829) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109315.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_234 & _T_833) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAck carries invalid report param (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109322.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_234 & _T_833) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109323.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_234 & _T_837) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAck is corrupt (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109330.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_234 & _T_837) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109331.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_246 & _T_819) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAckData carries unmanaged address (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109340.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_246 & _T_819) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109341.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_246 & _T_822) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAckData carries invalid source ID (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109347.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_246 & _T_822) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109348.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_246 & _T_826) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAckData smaller than a beat (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109355.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_246 & _T_826) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109356.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_246 & _T_829) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAckData address not aligned to size (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109362.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_246 & _T_829) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109363.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_246 & _T_833) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAckData carries invalid report param (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109370.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_246 & _T_833) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109371.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_256 & _T_870) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel carries Release type unsupported by manager (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109391.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_256 & _T_870) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109392.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_256 & _T_874) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel carries Release from a client which does not support Probe (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109399.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_256 & _T_874) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109400.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_256 & _T_822) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel Release carries invalid source ID (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109406.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_256 & _T_822) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109407.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_256 & _T_826) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel Release smaller than a beat (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109414.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_256 & _T_826) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109415.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_256 & _T_829) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel Release address not aligned to size (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109421.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_256 & _T_829) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109422.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_256 & _T_888) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel Release carries invalid shrink param (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109429.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_256 & _T_888) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109430.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_256 & _T_837) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel Release is corrupt (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109437.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_256 & _T_837) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109438.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_270 & _T_870) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel carries ReleaseData type unsupported by manager (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109458.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_270 & _T_870) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109459.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_270 & _T_874) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel carries Release from a client which does not support Probe (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109466.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_270 & _T_874) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109467.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_270 & _T_822) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ReleaseData carries invalid source ID (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109473.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_270 & _T_822) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109474.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_270 & _T_826) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ReleaseData smaller than a beat (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109481.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_270 & _T_826) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109482.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_270 & _T_829) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ReleaseData address not aligned to size (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109488.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_270 & _T_829) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109489.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_270 & _T_888) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ReleaseData carries invalid shrink param (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109496.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_270 & _T_888) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109497.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_282 & _T_819) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAck carries unmanaged address (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109506.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_282 & _T_819) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109507.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_282 & _T_822) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAck carries invalid source ID (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109513.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_282 & _T_822) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109514.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_282 & _T_829) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAck address not aligned to size (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109520.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_282 & _T_829) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109521.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_282 & _T_939) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAck carries invalid param (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109528.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_282 & _T_939) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109529.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_282 & _T_837) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAck is corrupt (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109536.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_282 & _T_837) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109537.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_292 & _T_819) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAckData carries unmanaged address (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109546.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_292 & _T_819) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109547.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_292 & _T_822) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAckData carries invalid source ID (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109553.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_292 & _T_822) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109554.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_292 & _T_829) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAckData address not aligned to size (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109560.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_292 & _T_829) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109561.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_292 & _T_939) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAckData carries invalid param (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109568.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_292 & _T_939) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109569.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_300 & _T_819) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel HintAck carries unmanaged address (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109578.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_300 & _T_819) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109579.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_300 & _T_822) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel HintAck carries invalid source ID (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109585.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_300 & _T_822) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109586.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_300 & _T_829) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel HintAck address not aligned to size (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109592.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_300 & _T_829) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109593.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_300 & _T_939) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel HintAck carries invalid param (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109600.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_300 & _T_939) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109601.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_300 & _T_837) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel HintAck is corrupt (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109608.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_300 & _T_837) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109609.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1006 & _T_1010) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel opcode changed within multibeat operation (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109659.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1006 & _T_1010) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109660.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1006 & _T_1014) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel param changed within multibeat operation (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109667.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1006 & _T_1014) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109668.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1006 & _T_1018) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel size changed within multibeat operation (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109675.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1006 & _T_1018) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109676.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1006 & _T_1022) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel source changed within multibeat operation (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109683.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1006 & _T_1022) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109684.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1006 & _T_1026) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel address changed with multibeat operation (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109691.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1006 & _T_1026) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109692.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1055 & _T_1059) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel opcode changed within multibeat operation (connected at Configs.scala:113:26)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@109740.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1055 & _T_1059) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@109741.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1055 & _T_1063) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel param changed within multibeat operation (connected at Configs.scala:113:26)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@109748.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1055 & _T_1063) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@109749.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1055 & _T_1067) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel size changed within multibeat operation (connected at Configs.scala:113:26)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@109756.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1055 & _T_1067) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@109757.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1055 & _T_1071) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel source changed within multibeat operation (connected at Configs.scala:113:26)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@109764.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1055 & _T_1071) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@109765.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1055 & _T_1075) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel sink changed with multibeat operation (connected at Configs.scala:113:26)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@109772.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1055 & _T_1075) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@109773.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1055 & _T_1079) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel denied changed with multibeat operation (connected at Configs.scala:113:26)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@109780.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1055 & _T_1079) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@109781.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1156 & _T_1160) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel opcode changed within multibeat operation (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109910.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1156 & _T_1160) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109911.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1156 & _T_1164) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel param changed within multibeat operation (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109918.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1156 & _T_1164) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109919.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1156 & _T_1168) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel size changed within multibeat operation (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109926.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1156 & _T_1168) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109927.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1156 & _T_1172) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel source changed within multibeat operation (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109934.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1156 & _T_1172) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109935.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1156 & _T_1176) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel address changed with multibeat operation (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109942.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1156 & _T_1176) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@109943.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1235 & _T_1251) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel re-used a source ID (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110078.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1235 & _T_1251) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110079.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1274 & _T_1285) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel acknowledged for nothing inflight (connected at Configs.scala:113:26)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@110129.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1274 & _T_1285) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@110130.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1274 & _T_1298) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper opcode response (connected at Configs.scala:113:26)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@110146.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1274 & _T_1298) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@110147.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1274 & _T_1305) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper response size (connected at Configs.scala:113:26)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@110157.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1274 & _T_1305) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@110158.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1312 & _T_1317) begin
          $fwrite(32'h80000002,"Assertion failed: ready check\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@110175.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1312 & _T_1317) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@110176.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1324) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' and 'D' concurrent, despite minlatency 1 (connected at Configs.scala:113:26)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@110187.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1324) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@110188.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1343) begin
          $fwrite(32'h80000002,"Assertion failed: TileLink timeout expired (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110215.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1343) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110216.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1376 & _T_1383) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel re-used a sink ID (connected at Configs.scala:113:26)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@110269.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1376 & _T_1383) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@110270.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_in_e_valid & _T_1394) begin
          $fwrite(32'h80000002,"Assertion failed: 'E' channel acknowledged for nothing inflight (connected at Configs.scala:113:26)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110288.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (io_in_e_valid & _T_1394) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110289.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
