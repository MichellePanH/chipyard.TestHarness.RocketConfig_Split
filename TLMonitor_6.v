module TLMonitor_6( // @[:chipyard.TestHarness.RocketConfig.fir@14948.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@14949.4]
  input         reset, // @[:chipyard.TestHarness.RocketConfig.fir@14950.4]
  input         io_in_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@14951.4]
  input         io_in_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@14951.4]
  input  [2:0]  io_in_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@14951.4]
  input  [2:0]  io_in_a_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@14951.4]
  input  [2:0]  io_in_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@14951.4]
  input  [2:0]  io_in_a_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@14951.4]
  input  [31:0] io_in_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@14951.4]
  input  [7:0]  io_in_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@14951.4]
  input         io_in_a_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@14951.4]
  input         io_in_b_ready, // @[:chipyard.TestHarness.RocketConfig.fir@14951.4]
  input         io_in_b_valid, // @[:chipyard.TestHarness.RocketConfig.fir@14951.4]
  input  [1:0]  io_in_b_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@14951.4]
  input  [31:0] io_in_b_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@14951.4]
  input         io_in_c_ready, // @[:chipyard.TestHarness.RocketConfig.fir@14951.4]
  input         io_in_c_valid, // @[:chipyard.TestHarness.RocketConfig.fir@14951.4]
  input  [2:0]  io_in_c_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@14951.4]
  input  [2:0]  io_in_c_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@14951.4]
  input  [2:0]  io_in_c_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@14951.4]
  input  [2:0]  io_in_c_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@14951.4]
  input  [31:0] io_in_c_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@14951.4]
  input         io_in_c_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@14951.4]
  input         io_in_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@14951.4]
  input         io_in_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@14951.4]
  input  [2:0]  io_in_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@14951.4]
  input  [1:0]  io_in_d_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@14951.4]
  input  [2:0]  io_in_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@14951.4]
  input  [2:0]  io_in_d_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@14951.4]
  input  [2:0]  io_in_d_bits_sink, // @[:chipyard.TestHarness.RocketConfig.fir@14951.4]
  input         io_in_d_bits_denied, // @[:chipyard.TestHarness.RocketConfig.fir@14951.4]
  input         io_in_d_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@14951.4]
  input         io_in_e_valid, // @[:chipyard.TestHarness.RocketConfig.fir@14951.4]
  input  [2:0]  io_in_e_bits_sink // @[:chipyard.TestHarness.RocketConfig.fir@14951.4]
);
  wire [31:0] plusarg_reader_out; // @[PlusArg.scala 44:11:chipyard.TestHarness.RocketConfig.fir@17441.4]
  wire  _T_4; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@14962.6]
  wire  _T_5; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@14963.6]
  wire  _T_6; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@14964.6]
  wire  _T_7; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@14965.6]
  wire  _T_9; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@14972.6]
  wire  _T_10; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@14973.6]
  wire  _T_11; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@14974.6]
  wire [12:0] _T_13; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@14976.6]
  wire [5:0] _T_15; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@14978.6]
  wire [31:0] _GEN_71; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@14979.6]
  wire [31:0] _T_16; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@14979.6]
  wire  _T_17; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@14980.6]
  wire [3:0] _T_20; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@14983.6]
  wire [2:0] _T_22; // @[Misc.scala 201:81:chipyard.TestHarness.RocketConfig.fir@14985.6]
  wire  _T_23; // @[Misc.scala 205:21:chipyard.TestHarness.RocketConfig.fir@14986.6]
  wire  _T_26; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@14989.6]
  wire  _T_28; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@14991.6]
  wire  _T_29; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@14992.6]
  wire  _T_31; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@14994.6]
  wire  _T_32; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@14995.6]
  wire  _T_35; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@14998.6]
  wire  _T_36; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@14999.6]
  wire  _T_37; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@15000.6]
  wire  _T_38; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@15001.6]
  wire  _T_39; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@15002.6]
  wire  _T_40; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@15003.6]
  wire  _T_41; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@15004.6]
  wire  _T_42; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@15005.6]
  wire  _T_43; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@15006.6]
  wire  _T_44; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@15007.6]
  wire  _T_45; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@15008.6]
  wire  _T_46; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@15009.6]
  wire  _T_47; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@15010.6]
  wire  _T_50; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@15013.6]
  wire  _T_51; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@15014.6]
  wire  _T_52; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@15015.6]
  wire  _T_53; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@15016.6]
  wire  _T_54; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@15017.6]
  wire  _T_55; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@15018.6]
  wire  _T_56; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@15019.6]
  wire  _T_57; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@15020.6]
  wire  _T_58; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@15021.6]
  wire  _T_59; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@15022.6]
  wire  _T_60; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@15023.6]
  wire  _T_61; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@15024.6]
  wire  _T_62; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@15025.6]
  wire  _T_63; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@15026.6]
  wire  _T_64; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@15027.6]
  wire  _T_65; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@15028.6]
  wire  _T_66; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@15029.6]
  wire  _T_67; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@15030.6]
  wire  _T_68; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@15031.6]
  wire  _T_69; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@15032.6]
  wire  _T_70; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@15033.6]
  wire  _T_71; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@15034.6]
  wire  _T_72; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@15035.6]
  wire  _T_73; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@15036.6]
  wire  _T_74; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@15037.6]
  wire [7:0] _T_81; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@15044.6]
  wire  _T_120; // @[Monitor.scala 79:25:chipyard.TestHarness.RocketConfig.fir@15087.6]
  wire  _T_121; // @[Parameters.scala 92:48:chipyard.TestHarness.RocketConfig.fir@15089.8]
  wire [31:0] _T_123; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@15091.8]
  wire [32:0] _T_124; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@15092.8]
  wire [32:0] _T_126; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@15094.8]
  wire  _T_127; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@15095.8]
  wire  _T_128; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@15096.8]
  wire  _T_131; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15099.8]
  wire  _T_132; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15100.8]
  wire  _T_140; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@15117.8]
  wire  _T_148; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15126.8]
  wire  _T_149; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15127.8]
  wire  _T_151; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15133.8]
  wire  _T_152; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15134.8]
  wire  _T_155; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15141.8]
  wire  _T_156; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15142.8]
  wire  _T_158; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15148.8]
  wire  _T_159; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15149.8]
  wire  _T_160; // @[Bundles.scala 110:27:chipyard.TestHarness.RocketConfig.fir@15154.8]
  wire  _T_162; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15156.8]
  wire  _T_163; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15157.8]
  wire [7:0] _T_164; // @[Monitor.scala 86:18:chipyard.TestHarness.RocketConfig.fir@15162.8]
  wire  _T_165; // @[Monitor.scala 86:31:chipyard.TestHarness.RocketConfig.fir@15163.8]
  wire  _T_167; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15165.8]
  wire  _T_168; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15166.8]
  wire  _T_169; // @[Monitor.scala 87:18:chipyard.TestHarness.RocketConfig.fir@15171.8]
  wire  _T_171; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15173.8]
  wire  _T_172; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15174.8]
  wire  _T_173; // @[Monitor.scala 90:25:chipyard.TestHarness.RocketConfig.fir@15180.6]
  wire  _T_217; // @[Monitor.scala 97:31:chipyard.TestHarness.RocketConfig.fir@15255.8]
  wire  _T_219; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15257.8]
  wire  _T_220; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15258.8]
  wire  _T_230; // @[Monitor.scala 102:25:chipyard.TestHarness.RocketConfig.fir@15281.6]
  wire  _T_232; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@15284.8]
  wire  _T_240; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@15292.8]
  wire  _T_243; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15295.8]
  wire  _T_244; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15296.8]
  wire  _T_251; // @[Monitor.scala 106:31:chipyard.TestHarness.RocketConfig.fir@15315.8]
  wire  _T_253; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15317.8]
  wire  _T_254; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15318.8]
  wire  _T_255; // @[Monitor.scala 107:30:chipyard.TestHarness.RocketConfig.fir@15323.8]
  wire  _T_257; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15325.8]
  wire  _T_258; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15326.8]
  wire  _T_263; // @[Monitor.scala 111:25:chipyard.TestHarness.RocketConfig.fir@15340.6]
  wire  _T_292; // @[Monitor.scala 119:25:chipyard.TestHarness.RocketConfig.fir@15391.6]
  wire [7:0] _T_317; // @[Monitor.scala 124:33:chipyard.TestHarness.RocketConfig.fir@15433.8]
  wire [7:0] _T_318; // @[Monitor.scala 124:31:chipyard.TestHarness.RocketConfig.fir@15434.8]
  wire  _T_319; // @[Monitor.scala 124:40:chipyard.TestHarness.RocketConfig.fir@15435.8]
  wire  _T_321; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15437.8]
  wire  _T_322; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15438.8]
  wire  _T_323; // @[Monitor.scala 127:25:chipyard.TestHarness.RocketConfig.fir@15444.6]
  wire  _T_325; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@15447.8]
  wire  _T_333; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@15455.8]
  wire  _T_336; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15458.8]
  wire  _T_337; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15459.8]
  wire  _T_344; // @[Bundles.scala 140:33:chipyard.TestHarness.RocketConfig.fir@15478.8]
  wire  _T_346; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15480.8]
  wire  _T_347; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15481.8]
  wire  _T_352; // @[Monitor.scala 135:25:chipyard.TestHarness.RocketConfig.fir@15495.6]
  wire  _T_373; // @[Bundles.scala 147:30:chipyard.TestHarness.RocketConfig.fir@15529.8]
  wire  _T_375; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15531.8]
  wire  _T_376; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15532.8]
  wire  _T_381; // @[Monitor.scala 143:25:chipyard.TestHarness.RocketConfig.fir@15546.6]
  wire  _T_402; // @[Bundles.scala 160:28:chipyard.TestHarness.RocketConfig.fir@15580.8]
  wire  _T_404; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15582.8]
  wire  _T_405; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15583.8]
  wire  _T_414; // @[Bundles.scala 44:24:chipyard.TestHarness.RocketConfig.fir@15607.6]
  wire  _T_416; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15609.6]
  wire  _T_417; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15610.6]
  wire  _T_418; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@15615.6]
  wire  _T_419; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@15616.6]
  wire  _T_420; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@15617.6]
  wire  _T_421; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@15618.6]
  wire  _T_423; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@15625.6]
  wire  _T_424; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@15626.6]
  wire  _T_425; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@15627.6]
  wire  _T_427; // @[Monitor.scala 307:25:chipyard.TestHarness.RocketConfig.fir@15629.6]
  wire  _T_429; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15632.8]
  wire  _T_430; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15633.8]
  wire  _T_431; // @[Monitor.scala 309:27:chipyard.TestHarness.RocketConfig.fir@15638.8]
  wire  _T_433; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15640.8]
  wire  _T_434; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15641.8]
  wire  _T_435; // @[Monitor.scala 310:28:chipyard.TestHarness.RocketConfig.fir@15646.8]
  wire  _T_437; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15648.8]
  wire  _T_438; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15649.8]
  wire  _T_439; // @[Monitor.scala 311:15:chipyard.TestHarness.RocketConfig.fir@15654.8]
  wire  _T_441; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15656.8]
  wire  _T_442; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15657.8]
  wire  _T_443; // @[Monitor.scala 312:15:chipyard.TestHarness.RocketConfig.fir@15662.8]
  wire  _T_445; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15664.8]
  wire  _T_446; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15665.8]
  wire  _T_447; // @[Monitor.scala 315:25:chipyard.TestHarness.RocketConfig.fir@15671.6]
  wire  _T_458; // @[Bundles.scala 104:26:chipyard.TestHarness.RocketConfig.fir@15695.8]
  wire  _T_460; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15697.8]
  wire  _T_461; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15698.8]
  wire  _T_462; // @[Monitor.scala 320:28:chipyard.TestHarness.RocketConfig.fir@15703.8]
  wire  _T_464; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15705.8]
  wire  _T_465; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15706.8]
  wire  _T_475; // @[Monitor.scala 325:25:chipyard.TestHarness.RocketConfig.fir@15729.6]
  wire  _T_495; // @[Monitor.scala 331:30:chipyard.TestHarness.RocketConfig.fir@15770.8]
  wire  _T_497; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15772.8]
  wire  _T_498; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15773.8]
  wire  _T_504; // @[Monitor.scala 335:25:chipyard.TestHarness.RocketConfig.fir@15788.6]
  wire  _T_521; // @[Monitor.scala 343:25:chipyard.TestHarness.RocketConfig.fir@15823.6]
  wire  _T_539; // @[Monitor.scala 351:25:chipyard.TestHarness.RocketConfig.fir@15859.6]
  wire [31:0] _T_598; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@15946.6]
  wire [32:0] _T_599; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@15947.6]
  wire [32:0] _T_601; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@15949.6]
  wire  _T_602; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@15950.6]
  wire [31:0] _T_608; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@15958.6]
  wire  _T_609; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@15959.6]
  wire  _T_707; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16074.8]
  wire  _T_708; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16075.8]
  wire  _T_713; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16088.8]
  wire  _T_714; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16089.8]
  wire  _T_715; // @[Bundles.scala 104:26:chipyard.TestHarness.RocketConfig.fir@16094.8]
  wire  _T_717; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16096.8]
  wire  _T_718; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16097.8]
  wire  _T_863; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@16421.6]
  wire  _T_864; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@16422.6]
  wire  _T_865; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@16423.6]
  wire  _T_866; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@16424.6]
  wire  _T_868; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@16431.6]
  wire  _T_869; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@16432.6]
  wire  _T_870; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@16433.6]
  wire [12:0] _T_872; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@16435.6]
  wire [5:0] _T_874; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@16437.6]
  wire [31:0] _GEN_72; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@16438.6]
  wire [31:0] _T_875; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@16438.6]
  wire  _T_876; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@16439.6]
  wire [31:0] _T_877; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@16440.6]
  wire [32:0] _T_878; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@16441.6]
  wire [32:0] _T_880; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@16443.6]
  wire  _T_881; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@16444.6]
  wire  _T_921; // @[Monitor.scala 239:25:chipyard.TestHarness.RocketConfig.fir@16490.6]
  wire  _T_923; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16493.8]
  wire  _T_924; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16494.8]
  wire  _T_926; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16500.8]
  wire  _T_927; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16501.8]
  wire  _T_928; // @[Monitor.scala 242:30:chipyard.TestHarness.RocketConfig.fir@16506.8]
  wire  _T_930; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16508.8]
  wire  _T_931; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16509.8]
  wire  _T_933; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16515.8]
  wire  _T_934; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16516.8]
  wire  _T_935; // @[Bundles.scala 122:29:chipyard.TestHarness.RocketConfig.fir@16521.8]
  wire  _T_937; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16523.8]
  wire  _T_938; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16524.8]
  wire  _T_939; // @[Monitor.scala 245:18:chipyard.TestHarness.RocketConfig.fir@16529.8]
  wire  _T_941; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16531.8]
  wire  _T_942; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16532.8]
  wire  _T_943; // @[Monitor.scala 248:25:chipyard.TestHarness.RocketConfig.fir@16538.6]
  wire  _T_961; // @[Monitor.scala 256:25:chipyard.TestHarness.RocketConfig.fir@16578.6]
  wire  _T_962; // @[Parameters.scala 92:48:chipyard.TestHarness.RocketConfig.fir@16580.8]
  wire  _T_969; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@16587.8]
  wire  _T_972; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16590.8]
  wire  _T_973; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16591.8]
  wire  _T_981; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@16608.8]
  wire  _T_989; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16617.8]
  wire  _T_990; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16618.8]
  wire  _T_1001; // @[Bundles.scala 116:29:chipyard.TestHarness.RocketConfig.fir@16645.8]
  wire  _T_1003; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16647.8]
  wire  _T_1004; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16648.8]
  wire  _T_1009; // @[Monitor.scala 266:25:chipyard.TestHarness.RocketConfig.fir@16662.6]
  wire  _T_1053; // @[Monitor.scala 275:25:chipyard.TestHarness.RocketConfig.fir@16738.6]
  wire  _T_1063; // @[Monitor.scala 279:31:chipyard.TestHarness.RocketConfig.fir@16761.8]
  wire  _T_1065; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16763.8]
  wire  _T_1066; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16764.8]
  wire  _T_1071; // @[Monitor.scala 283:25:chipyard.TestHarness.RocketConfig.fir@16778.6]
  wire  _T_1085; // @[Monitor.scala 290:25:chipyard.TestHarness.RocketConfig.fir@16810.6]
  wire  _T_1107; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@16861.4]
  wire  _T_1114; // @[Edges.scala 93:28:chipyard.TestHarness.RocketConfig.fir@16868.4]
  reg [2:0] _T_1116; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@16870.4]
  reg [31:0] _RAND_0;
  wire [2:0] _T_1118; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@16872.4]
  wire  _T_1119; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@16873.4]
  reg [2:0] _T_1127; // @[Monitor.scala 381:22:chipyard.TestHarness.RocketConfig.fir@16884.4]
  reg [31:0] _RAND_1;
  reg [2:0] _T_1128; // @[Monitor.scala 382:22:chipyard.TestHarness.RocketConfig.fir@16885.4]
  reg [31:0] _RAND_2;
  reg [2:0] _T_1129; // @[Monitor.scala 383:22:chipyard.TestHarness.RocketConfig.fir@16886.4]
  reg [31:0] _RAND_3;
  reg [2:0] _T_1130; // @[Monitor.scala 384:22:chipyard.TestHarness.RocketConfig.fir@16887.4]
  reg [31:0] _RAND_4;
  reg [31:0] _T_1131; // @[Monitor.scala 385:22:chipyard.TestHarness.RocketConfig.fir@16888.4]
  reg [31:0] _RAND_5;
  wire  _T_1132; // @[Monitor.scala 386:22:chipyard.TestHarness.RocketConfig.fir@16889.4]
  wire  _T_1133; // @[Monitor.scala 386:19:chipyard.TestHarness.RocketConfig.fir@16890.4]
  wire  _T_1134; // @[Monitor.scala 387:32:chipyard.TestHarness.RocketConfig.fir@16892.6]
  wire  _T_1136; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16894.6]
  wire  _T_1137; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16895.6]
  wire  _T_1138; // @[Monitor.scala 388:32:chipyard.TestHarness.RocketConfig.fir@16900.6]
  wire  _T_1140; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16902.6]
  wire  _T_1141; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16903.6]
  wire  _T_1142; // @[Monitor.scala 389:32:chipyard.TestHarness.RocketConfig.fir@16908.6]
  wire  _T_1144; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16910.6]
  wire  _T_1145; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16911.6]
  wire  _T_1146; // @[Monitor.scala 390:32:chipyard.TestHarness.RocketConfig.fir@16916.6]
  wire  _T_1148; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16918.6]
  wire  _T_1149; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16919.6]
  wire  _T_1150; // @[Monitor.scala 391:32:chipyard.TestHarness.RocketConfig.fir@16924.6]
  wire  _T_1152; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16926.6]
  wire  _T_1153; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16927.6]
  wire  _T_1155; // @[Monitor.scala 393:20:chipyard.TestHarness.RocketConfig.fir@16934.4]
  wire  _T_1156; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@16942.4]
  wire [12:0] _T_1158; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@16944.4]
  wire [5:0] _T_1160; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@16946.4]
  reg [2:0] _T_1164; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@16950.4]
  reg [31:0] _RAND_6;
  wire [2:0] _T_1166; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@16952.4]
  wire  _T_1167; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@16953.4]
  reg [2:0] _T_1175; // @[Monitor.scala 532:22:chipyard.TestHarness.RocketConfig.fir@16964.4]
  reg [31:0] _RAND_7;
  reg [1:0] _T_1176; // @[Monitor.scala 533:22:chipyard.TestHarness.RocketConfig.fir@16965.4]
  reg [31:0] _RAND_8;
  reg [2:0] _T_1177; // @[Monitor.scala 534:22:chipyard.TestHarness.RocketConfig.fir@16966.4]
  reg [31:0] _RAND_9;
  reg [2:0] _T_1178; // @[Monitor.scala 535:22:chipyard.TestHarness.RocketConfig.fir@16967.4]
  reg [31:0] _RAND_10;
  reg [2:0] _T_1179; // @[Monitor.scala 536:22:chipyard.TestHarness.RocketConfig.fir@16968.4]
  reg [31:0] _RAND_11;
  reg  _T_1180; // @[Monitor.scala 537:22:chipyard.TestHarness.RocketConfig.fir@16969.4]
  reg [31:0] _RAND_12;
  wire  _T_1181; // @[Monitor.scala 538:22:chipyard.TestHarness.RocketConfig.fir@16970.4]
  wire  _T_1182; // @[Monitor.scala 538:19:chipyard.TestHarness.RocketConfig.fir@16971.4]
  wire  _T_1183; // @[Monitor.scala 539:29:chipyard.TestHarness.RocketConfig.fir@16973.6]
  wire  _T_1185; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@16975.6]
  wire  _T_1186; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@16976.6]
  wire  _T_1187; // @[Monitor.scala 540:29:chipyard.TestHarness.RocketConfig.fir@16981.6]
  wire  _T_1189; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@16983.6]
  wire  _T_1190; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@16984.6]
  wire  _T_1191; // @[Monitor.scala 541:29:chipyard.TestHarness.RocketConfig.fir@16989.6]
  wire  _T_1193; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@16991.6]
  wire  _T_1194; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@16992.6]
  wire  _T_1195; // @[Monitor.scala 542:29:chipyard.TestHarness.RocketConfig.fir@16997.6]
  wire  _T_1197; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@16999.6]
  wire  _T_1198; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@17000.6]
  wire  _T_1199; // @[Monitor.scala 543:29:chipyard.TestHarness.RocketConfig.fir@17005.6]
  wire  _T_1201; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@17007.6]
  wire  _T_1202; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@17008.6]
  wire  _T_1203; // @[Monitor.scala 544:29:chipyard.TestHarness.RocketConfig.fir@17013.6]
  wire  _T_1205; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@17015.6]
  wire  _T_1206; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@17016.6]
  wire  _T_1208; // @[Monitor.scala 546:20:chipyard.TestHarness.RocketConfig.fir@17023.4]
  wire  _T_1209; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@17032.4]
  reg [2:0] _T_1218; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@17041.4]
  reg [31:0] _RAND_13;
  wire [2:0] _T_1220; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@17043.4]
  wire  _T_1221; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@17044.4]
  reg [1:0] _T_1230; // @[Monitor.scala 405:22:chipyard.TestHarness.RocketConfig.fir@17056.4]
  reg [31:0] _RAND_14;
  reg [31:0] _T_1233; // @[Monitor.scala 408:22:chipyard.TestHarness.RocketConfig.fir@17059.4]
  reg [31:0] _RAND_15;
  wire  _T_1234; // @[Monitor.scala 409:22:chipyard.TestHarness.RocketConfig.fir@17060.4]
  wire  _T_1235; // @[Monitor.scala 409:19:chipyard.TestHarness.RocketConfig.fir@17061.4]
  wire  _T_1240; // @[Monitor.scala 411:32:chipyard.TestHarness.RocketConfig.fir@17071.6]
  wire  _T_1242; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@17073.6]
  wire  _T_1243; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@17074.6]
  wire  _T_1252; // @[Monitor.scala 414:32:chipyard.TestHarness.RocketConfig.fir@17095.6]
  wire  _T_1254; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@17097.6]
  wire  _T_1255; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@17098.6]
  wire  _T_1257; // @[Monitor.scala 416:20:chipyard.TestHarness.RocketConfig.fir@17105.4]
  wire  _T_1258; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@17113.4]
  reg [2:0] _T_1266; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@17121.4]
  reg [31:0] _RAND_16;
  wire [2:0] _T_1268; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@17123.4]
  wire  _T_1269; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@17124.4]
  reg [2:0] _T_1277; // @[Monitor.scala 509:22:chipyard.TestHarness.RocketConfig.fir@17135.4]
  reg [31:0] _RAND_17;
  reg [2:0] _T_1278; // @[Monitor.scala 510:22:chipyard.TestHarness.RocketConfig.fir@17136.4]
  reg [31:0] _RAND_18;
  reg [2:0] _T_1279; // @[Monitor.scala 511:22:chipyard.TestHarness.RocketConfig.fir@17137.4]
  reg [31:0] _RAND_19;
  reg [2:0] _T_1280; // @[Monitor.scala 512:22:chipyard.TestHarness.RocketConfig.fir@17138.4]
  reg [31:0] _RAND_20;
  reg [31:0] _T_1281; // @[Monitor.scala 513:22:chipyard.TestHarness.RocketConfig.fir@17139.4]
  reg [31:0] _RAND_21;
  wire  _T_1282; // @[Monitor.scala 514:22:chipyard.TestHarness.RocketConfig.fir@17140.4]
  wire  _T_1283; // @[Monitor.scala 514:19:chipyard.TestHarness.RocketConfig.fir@17141.4]
  wire  _T_1284; // @[Monitor.scala 515:32:chipyard.TestHarness.RocketConfig.fir@17143.6]
  wire  _T_1286; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@17145.6]
  wire  _T_1287; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@17146.6]
  wire  _T_1288; // @[Monitor.scala 516:32:chipyard.TestHarness.RocketConfig.fir@17151.6]
  wire  _T_1290; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@17153.6]
  wire  _T_1291; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@17154.6]
  wire  _T_1292; // @[Monitor.scala 517:32:chipyard.TestHarness.RocketConfig.fir@17159.6]
  wire  _T_1294; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@17161.6]
  wire  _T_1295; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@17162.6]
  wire  _T_1296; // @[Monitor.scala 518:32:chipyard.TestHarness.RocketConfig.fir@17167.6]
  wire  _T_1298; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@17169.6]
  wire  _T_1299; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@17170.6]
  wire  _T_1300; // @[Monitor.scala 519:32:chipyard.TestHarness.RocketConfig.fir@17175.6]
  wire  _T_1302; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@17177.6]
  wire  _T_1303; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@17178.6]
  wire  _T_1305; // @[Monitor.scala 521:20:chipyard.TestHarness.RocketConfig.fir@17185.4]
  reg [4:0] inflight; // @[Monitor.scala 608:27:chipyard.TestHarness.RocketConfig.fir@17193.4]
  reg [31:0] _RAND_22;
  reg [19:0] inflight_opcodes; // @[Monitor.scala 610:35:chipyard.TestHarness.RocketConfig.fir@17194.4]
  reg [31:0] _RAND_23;
  reg [19:0] inflight_sizes; // @[Monitor.scala 612:33:chipyard.TestHarness.RocketConfig.fir@17195.4]
  reg [31:0] _RAND_24;
  reg [2:0] _T_1315; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@17205.4]
  reg [31:0] _RAND_25;
  wire [2:0] _T_1317; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@17207.4]
  wire  a_first; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@17208.4]
  reg [2:0] _T_1333; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@17227.4]
  reg [31:0] _RAND_26;
  wire [2:0] _T_1335; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@17229.4]
  wire  d_first; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@17230.4]
  wire [4:0] _GEN_73; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@17249.4]
  wire [5:0] _T_1343; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@17249.4]
  wire [19:0] _T_1344; // @[Monitor.scala 629:44:chipyard.TestHarness.RocketConfig.fir@17250.4]
  wire [15:0] _T_1348; // @[Monitor.scala 606:57:chipyard.TestHarness.RocketConfig.fir@17254.4]
  wire [19:0] _GEN_74; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@17255.4]
  wire [19:0] _T_1349; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@17255.4]
  wire [19:0] _T_1350; // @[Monitor.scala 629:152:chipyard.TestHarness.RocketConfig.fir@17256.4]
  wire [19:0] _T_1352; // @[Monitor.scala 633:40:chipyard.TestHarness.RocketConfig.fir@17261.4]
  wire [19:0] _T_1357; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@17266.4]
  wire [19:0] _T_1358; // @[Monitor.scala 633:144:chipyard.TestHarness.RocketConfig.fir@17267.4]
  wire  _T_1362; // @[Monitor.scala 643:27:chipyard.TestHarness.RocketConfig.fir@17292.4]
  wire [7:0] _T_1364; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@17295.6]
  wire [3:0] _T_1365; // @[Monitor.scala 645:53:chipyard.TestHarness.RocketConfig.fir@17297.6]
  wire [3:0] _T_1366; // @[Monitor.scala 645:61:chipyard.TestHarness.RocketConfig.fir@17298.6]
  wire [3:0] _T_1367; // @[Monitor.scala 646:49:chipyard.TestHarness.RocketConfig.fir@17300.6]
  wire [3:0] _T_1368; // @[Monitor.scala 646:57:chipyard.TestHarness.RocketConfig.fir@17301.6]
  wire [4:0] _GEN_79; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@17303.6]
  wire [5:0] _T_1369; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@17303.6]
  wire [3:0] a_opcodes_set_interm; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@17294.4]
  wire [66:0] _GEN_80; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@17304.6]
  wire [66:0] _T_1370; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@17304.6]
  wire [3:0] a_sizes_set_interm; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@17294.4]
  wire [66:0] _GEN_82; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@17307.6]
  wire [66:0] _T_1372; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@17307.6]
  wire [4:0] _T_1373; // @[Monitor.scala 649:26:chipyard.TestHarness.RocketConfig.fir@17309.6]
  wire  _T_1375; // @[Monitor.scala 649:17:chipyard.TestHarness.RocketConfig.fir@17311.6]
  wire  _T_1377; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@17313.6]
  wire  _T_1378; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@17314.6]
  wire [7:0] _GEN_27; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@17294.4]
  wire [66:0] _GEN_30; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@17294.4]
  wire [66:0] _GEN_31; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@17294.4]
  wire  _T_1381; // @[Monitor.scala 660:27:chipyard.TestHarness.RocketConfig.fir@17328.4]
  wire  _T_1383; // @[Monitor.scala 660:75:chipyard.TestHarness.RocketConfig.fir@17330.4]
  wire  _T_1384; // @[Monitor.scala 660:72:chipyard.TestHarness.RocketConfig.fir@17331.4]
  wire [7:0] _T_1385; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@17333.6]
  wire [78:0] _GEN_84; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@17340.6]
  wire [78:0] _T_1391; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@17340.6]
  wire [7:0] _GEN_32; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@17332.4]
  wire [78:0] _GEN_33; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@17332.4]
  wire  _T_1398; // @[Monitor.scala 665:26:chipyard.TestHarness.RocketConfig.fir@17350.4]
  wire  _T_1401; // @[Monitor.scala 665:71:chipyard.TestHarness.RocketConfig.fir@17353.4]
  wire [4:0] _T_1402; // @[Monitor.scala 666:25:chipyard.TestHarness.RocketConfig.fir@17355.6]
  wire  _T_1404; // @[Monitor.scala 666:93:chipyard.TestHarness.RocketConfig.fir@17357.6]
  wire  _T_1405; // @[Monitor.scala 666:68:chipyard.TestHarness.RocketConfig.fir@17358.6]
  wire  _T_1406; // @[Monitor.scala 666:142:chipyard.TestHarness.RocketConfig.fir@17359.6]
  wire  _T_1407; // @[Monitor.scala 666:119:chipyard.TestHarness.RocketConfig.fir@17360.6]
  wire  _T_1408; // @[Monitor.scala 666:166:chipyard.TestHarness.RocketConfig.fir@17361.6]
  wire  _T_1409; // @[Monitor.scala 666:49:chipyard.TestHarness.RocketConfig.fir@17362.6]
  wire  _T_1411; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@17364.6]
  wire  _T_1412; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@17365.6]
  wire [3:0] a_opcode_lookup; // @[:chipyard.TestHarness.RocketConfig.fir@17247.4 :chipyard.TestHarness.RocketConfig.fir@17248.4 Monitor.scala 629:21:chipyard.TestHarness.RocketConfig.fir@17257.4]
  wire [2:0] _GEN_37; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@17371.6]
  wire [2:0] _GEN_38; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@17371.6]
  wire [2:0] _GEN_39; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@17371.6]
  wire [2:0] _GEN_40; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@17371.6]
  wire [2:0] _GEN_41; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@17371.6]
  wire [2:0] _GEN_42; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@17371.6]
  wire  _T_1414; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@17371.6]
  wire [2:0] _GEN_49; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@17373.6]
  wire [2:0] _GEN_50; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@17373.6]
  wire  _T_1416; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@17373.6]
  wire  _T_1417; // @[Monitor.scala 667:71:chipyard.TestHarness.RocketConfig.fir@17374.6]
  wire [2:0] _GEN_53; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@17375.6]
  wire [2:0] _GEN_54; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@17375.6]
  wire [2:0] _GEN_55; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@17375.6]
  wire [2:0] _GEN_56; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@17375.6]
  wire [2:0] _GEN_57; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@17375.6]
  wire [2:0] _GEN_58; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@17375.6]
  wire  _T_1418; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@17375.6]
  wire [2:0] _GEN_65; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@17376.6]
  wire [2:0] _GEN_66; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@17376.6]
  wire  _T_1419; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@17376.6]
  wire  _T_1420; // @[Monitor.scala 668:99:chipyard.TestHarness.RocketConfig.fir@17377.6]
  wire  _T_1421; // @[Monitor.scala 668:34:chipyard.TestHarness.RocketConfig.fir@17378.6]
  wire  _T_1422; // @[Monitor.scala 668:15:chipyard.TestHarness.RocketConfig.fir@17379.6]
  wire  _T_1424; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@17381.6]
  wire  _T_1425; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@17382.6]
  wire [3:0] a_size_lookup; // @[:chipyard.TestHarness.RocketConfig.fir@17258.4 :chipyard.TestHarness.RocketConfig.fir@17259.4 Monitor.scala 633:19:chipyard.TestHarness.RocketConfig.fir@17268.4]
  wire [3:0] _GEN_87; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@17387.6]
  wire  _T_1426; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@17387.6]
  wire  _T_1428; // @[Monitor.scala 670:72:chipyard.TestHarness.RocketConfig.fir@17389.6]
  wire  _T_1429; // @[Monitor.scala 670:53:chipyard.TestHarness.RocketConfig.fir@17390.6]
  wire  _T_1431; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@17392.6]
  wire  _T_1432; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@17393.6]
  wire  _T_1434; // @[Monitor.scala 672:36:chipyard.TestHarness.RocketConfig.fir@17400.4]
  wire  _T_1435; // @[Monitor.scala 672:47:chipyard.TestHarness.RocketConfig.fir@17401.4]
  wire  _T_1437; // @[Monitor.scala 672:65:chipyard.TestHarness.RocketConfig.fir@17403.4]
  wire  _T_1439; // @[Monitor.scala 672:116:chipyard.TestHarness.RocketConfig.fir@17405.4]
  wire  _T_1440; // @[Monitor.scala 673:15:chipyard.TestHarness.RocketConfig.fir@17407.6]
  wire  _T_1441; // @[Monitor.scala 673:32:chipyard.TestHarness.RocketConfig.fir@17408.6]
  wire  _T_1443; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@17410.6]
  wire  _T_1444; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@17411.6]
  wire [4:0] a_set; // @[:chipyard.TestHarness.RocketConfig.fir@17241.4 :chipyard.TestHarness.RocketConfig.fir@17242.4 Monitor.scala 644:13:chipyard.TestHarness.RocketConfig.fir@17296.6]
  wire [4:0] d_clr; // @[:chipyard.TestHarness.RocketConfig.fir@17320.4 :chipyard.TestHarness.RocketConfig.fir@17321.4 Monitor.scala 661:13:chipyard.TestHarness.RocketConfig.fir@17334.6]
  wire  _T_1445; // @[Monitor.scala 677:20:chipyard.TestHarness.RocketConfig.fir@17417.4]
  wire  _T_1446; // @[Monitor.scala 677:40:chipyard.TestHarness.RocketConfig.fir@17418.4]
  wire  _T_1447; // @[Monitor.scala 677:33:chipyard.TestHarness.RocketConfig.fir@17419.4]
  wire  _T_1448; // @[Monitor.scala 677:30:chipyard.TestHarness.RocketConfig.fir@17420.4]
  wire  _T_1450; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@17422.4]
  wire  _T_1451; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@17423.4]
  wire [4:0] _T_1452; // @[Monitor.scala 680:27:chipyard.TestHarness.RocketConfig.fir@17428.4]
  wire [4:0] _T_1453; // @[Monitor.scala 680:38:chipyard.TestHarness.RocketConfig.fir@17429.4]
  wire [4:0] _T_1454; // @[Monitor.scala 680:36:chipyard.TestHarness.RocketConfig.fir@17430.4]
  wire [19:0] a_opcodes_set; // @[:chipyard.TestHarness.RocketConfig.fir@17243.4 :chipyard.TestHarness.RocketConfig.fir@17244.4 Monitor.scala 647:21:chipyard.TestHarness.RocketConfig.fir@17305.6]
  wire [19:0] _T_1455; // @[Monitor.scala 681:43:chipyard.TestHarness.RocketConfig.fir@17432.4]
  wire [19:0] d_opcodes_clr; // @[:chipyard.TestHarness.RocketConfig.fir@17322.4 :chipyard.TestHarness.RocketConfig.fir@17323.4 Monitor.scala 662:21:chipyard.TestHarness.RocketConfig.fir@17341.6]
  wire [19:0] _T_1456; // @[Monitor.scala 681:62:chipyard.TestHarness.RocketConfig.fir@17433.4]
  wire [19:0] _T_1457; // @[Monitor.scala 681:60:chipyard.TestHarness.RocketConfig.fir@17434.4]
  wire [19:0] a_sizes_set; // @[:chipyard.TestHarness.RocketConfig.fir@17245.4 :chipyard.TestHarness.RocketConfig.fir@17246.4 Monitor.scala 648:19:chipyard.TestHarness.RocketConfig.fir@17308.6]
  wire [19:0] _T_1458; // @[Monitor.scala 682:39:chipyard.TestHarness.RocketConfig.fir@17436.4]
  wire [19:0] _T_1460; // @[Monitor.scala 682:54:chipyard.TestHarness.RocketConfig.fir@17438.4]
  reg [31:0] _T_1461; // @[Monitor.scala 684:27:chipyard.TestHarness.RocketConfig.fir@17440.4]
  reg [31:0] _RAND_27;
  wire  _T_1462; // @[Monitor.scala 687:26:chipyard.TestHarness.RocketConfig.fir@17443.4]
  wire  _T_1463; // @[Monitor.scala 687:16:chipyard.TestHarness.RocketConfig.fir@17444.4]
  wire  _T_1464; // @[Monitor.scala 687:39:chipyard.TestHarness.RocketConfig.fir@17445.4]
  wire  _T_1465; // @[Monitor.scala 687:30:chipyard.TestHarness.RocketConfig.fir@17446.4]
  wire  _T_1466; // @[Monitor.scala 687:59:chipyard.TestHarness.RocketConfig.fir@17447.4]
  wire  _T_1467; // @[Monitor.scala 687:47:chipyard.TestHarness.RocketConfig.fir@17448.4]
  wire  _T_1469; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@17450.4]
  wire  _T_1470; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@17451.4]
  wire [31:0] _T_1472; // @[Monitor.scala 689:26:chipyard.TestHarness.RocketConfig.fir@17457.4]
  wire  _T_1475; // @[Monitor.scala 690:27:chipyard.TestHarness.RocketConfig.fir@17461.4]
  reg [7:0] _T_1476; // @[Monitor.scala 694:27:chipyard.TestHarness.RocketConfig.fir@17465.4]
  reg [31:0] _RAND_28;
  reg [2:0] _T_1485; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@17474.4]
  reg [31:0] _RAND_29;
  wire [2:0] _T_1487; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@17476.4]
  wire  _T_1488; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@17477.4]
  wire  _T_1498; // @[Monitor.scala 700:27:chipyard.TestHarness.RocketConfig.fir@17491.4]
  wire  _T_1501; // @[Edges.scala 72:43:chipyard.TestHarness.RocketConfig.fir@17494.4]
  wire  _T_1502; // @[Edges.scala 72:40:chipyard.TestHarness.RocketConfig.fir@17495.4]
  wire  _T_1503; // @[Monitor.scala 700:38:chipyard.TestHarness.RocketConfig.fir@17496.4]
  wire [7:0] _T_1504; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@17498.6]
  wire [7:0] _T_1505; // @[Monitor.scala 702:23:chipyard.TestHarness.RocketConfig.fir@17500.6]
  wire  _T_1507; // @[Monitor.scala 702:14:chipyard.TestHarness.RocketConfig.fir@17502.6]
  wire  _T_1509; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@17504.6]
  wire  _T_1510; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@17505.6]
  wire [7:0] _GEN_69; // @[Monitor.scala 700:72:chipyard.TestHarness.RocketConfig.fir@17497.4]
  wire [7:0] _T_1515; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@17517.6]
  wire [7:0] _T_1516; // @[Monitor.scala 708:24:chipyard.TestHarness.RocketConfig.fir@17519.6]
  wire [7:0] _T_1517; // @[Monitor.scala 708:35:chipyard.TestHarness.RocketConfig.fir@17520.6]
  wire  _T_1520; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@17523.6]
  wire  _T_1521; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@17524.6]
  wire [7:0] _GEN_70; // @[Monitor.scala 706:73:chipyard.TestHarness.RocketConfig.fir@17516.4]
  wire [7:0] _T_1522; // @[Monitor.scala 713:27:chipyard.TestHarness.RocketConfig.fir@17530.4]
  wire [7:0] _T_1523; // @[Monitor.scala 713:38:chipyard.TestHarness.RocketConfig.fir@17531.4]
  wire [7:0] _T_1524; // @[Monitor.scala 713:36:chipyard.TestHarness.RocketConfig.fir@17532.4]
  wire  _GEN_88; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15102.10]
  wire  _GEN_104; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15195.10]
  wire  _GEN_122; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15298.10]
  wire  _GEN_134; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15357.10]
  wire  _GEN_144; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15408.10]
  wire  _GEN_154; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15461.10]
  wire  _GEN_164; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15512.10]
  wire  _GEN_174; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15563.10]
  wire  _GEN_186; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15635.10]
  wire  _GEN_196; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15677.10]
  wire  _GEN_206; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15735.10]
  wire  _GEN_216; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15794.10]
  wire  _GEN_222; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15829.10]
  wire  _GEN_228; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15865.10]
  wire  _GEN_234; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16496.10]
  wire  _GEN_246; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16544.10]
  wire  _GEN_256; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16593.10]
  wire  _GEN_270; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16677.10]
  wire  _GEN_282; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16744.10]
  wire  _GEN_292; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16784.10]
  wire  _GEN_300; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16816.10]
  plusarg_reader #(.FORMAT("tilelink_timeout=%d"), .DEFAULT(0), .WIDTH(32)) plusarg_reader ( // @[PlusArg.scala 44:11:chipyard.TestHarness.RocketConfig.fir@17441.4]
    .out(plusarg_reader_out)
  );
  assign _T_4 = io_in_a_bits_source == 3'h4; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@14962.6]
  assign _T_5 = io_in_a_bits_source == 3'h0; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@14963.6]
  assign _T_6 = io_in_a_bits_source == 3'h1; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@14964.6]
  assign _T_7 = io_in_a_bits_source == 3'h2; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@14965.6]
  assign _T_9 = _T_4 | _T_5; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@14972.6]
  assign _T_10 = _T_9 | _T_6; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@14973.6]
  assign _T_11 = _T_10 | _T_7; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@14974.6]
  assign _T_13 = 13'h3f << io_in_a_bits_size; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@14976.6]
  assign _T_15 = ~_T_13[5:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@14978.6]
  assign _GEN_71 = {{26'd0}, _T_15}; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@14979.6]
  assign _T_16 = io_in_a_bits_address & _GEN_71; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@14979.6]
  assign _T_17 = _T_16 == 32'h0; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@14980.6]
  assign _T_20 = 4'h1 << io_in_a_bits_size[1:0]; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@14983.6]
  assign _T_22 = _T_20[2:0] | 3'h1; // @[Misc.scala 201:81:chipyard.TestHarness.RocketConfig.fir@14985.6]
  assign _T_23 = io_in_a_bits_size >= 3'h3; // @[Misc.scala 205:21:chipyard.TestHarness.RocketConfig.fir@14986.6]
  assign _T_26 = ~io_in_a_bits_address[2]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@14989.6]
  assign _T_28 = _T_22[2] & _T_26; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@14991.6]
  assign _T_29 = _T_23 | _T_28; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@14992.6]
  assign _T_31 = _T_22[2] & io_in_a_bits_address[2]; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@14994.6]
  assign _T_32 = _T_23 | _T_31; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@14995.6]
  assign _T_35 = ~io_in_a_bits_address[1]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@14998.6]
  assign _T_36 = _T_26 & _T_35; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@14999.6]
  assign _T_37 = _T_22[1] & _T_36; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@15000.6]
  assign _T_38 = _T_29 | _T_37; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@15001.6]
  assign _T_39 = _T_26 & io_in_a_bits_address[1]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@15002.6]
  assign _T_40 = _T_22[1] & _T_39; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@15003.6]
  assign _T_41 = _T_29 | _T_40; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@15004.6]
  assign _T_42 = io_in_a_bits_address[2] & _T_35; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@15005.6]
  assign _T_43 = _T_22[1] & _T_42; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@15006.6]
  assign _T_44 = _T_32 | _T_43; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@15007.6]
  assign _T_45 = io_in_a_bits_address[2] & io_in_a_bits_address[1]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@15008.6]
  assign _T_46 = _T_22[1] & _T_45; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@15009.6]
  assign _T_47 = _T_32 | _T_46; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@15010.6]
  assign _T_50 = ~io_in_a_bits_address[0]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@15013.6]
  assign _T_51 = _T_36 & _T_50; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@15014.6]
  assign _T_52 = _T_22[0] & _T_51; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@15015.6]
  assign _T_53 = _T_38 | _T_52; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@15016.6]
  assign _T_54 = _T_36 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@15017.6]
  assign _T_55 = _T_22[0] & _T_54; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@15018.6]
  assign _T_56 = _T_38 | _T_55; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@15019.6]
  assign _T_57 = _T_39 & _T_50; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@15020.6]
  assign _T_58 = _T_22[0] & _T_57; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@15021.6]
  assign _T_59 = _T_41 | _T_58; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@15022.6]
  assign _T_60 = _T_39 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@15023.6]
  assign _T_61 = _T_22[0] & _T_60; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@15024.6]
  assign _T_62 = _T_41 | _T_61; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@15025.6]
  assign _T_63 = _T_42 & _T_50; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@15026.6]
  assign _T_64 = _T_22[0] & _T_63; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@15027.6]
  assign _T_65 = _T_44 | _T_64; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@15028.6]
  assign _T_66 = _T_42 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@15029.6]
  assign _T_67 = _T_22[0] & _T_66; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@15030.6]
  assign _T_68 = _T_44 | _T_67; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@15031.6]
  assign _T_69 = _T_45 & _T_50; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@15032.6]
  assign _T_70 = _T_22[0] & _T_69; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@15033.6]
  assign _T_71 = _T_47 | _T_70; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@15034.6]
  assign _T_72 = _T_45 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@15035.6]
  assign _T_73 = _T_22[0] & _T_72; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@15036.6]
  assign _T_74 = _T_47 | _T_73; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@15037.6]
  assign _T_81 = {_T_74,_T_71,_T_68,_T_65,_T_62,_T_59,_T_56,_T_53}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@15044.6]
  assign _T_120 = io_in_a_bits_opcode == 3'h6; // @[Monitor.scala 79:25:chipyard.TestHarness.RocketConfig.fir@15087.6]
  assign _T_121 = 3'h6 == io_in_a_bits_size; // @[Parameters.scala 92:48:chipyard.TestHarness.RocketConfig.fir@15089.8]
  assign _T_123 = io_in_a_bits_address ^ 32'h80000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@15091.8]
  assign _T_124 = {1'b0,$signed(_T_123)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@15092.8]
  assign _T_126 = $signed(_T_124) & -33'sh10000000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@15094.8]
  assign _T_127 = $signed(_T_126) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@15095.8]
  assign _T_128 = _T_121 & _T_127; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@15096.8]
  assign _T_131 = _T_128 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15099.8]
  assign _T_132 = ~_T_131; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15100.8]
  assign _T_140 = _T_5 & _T_121; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@15117.8]
  assign _T_148 = _T_140 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15126.8]
  assign _T_149 = ~_T_148; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15127.8]
  assign _T_151 = _T_11 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15133.8]
  assign _T_152 = ~_T_151; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15134.8]
  assign _T_155 = _T_23 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15141.8]
  assign _T_156 = ~_T_155; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15142.8]
  assign _T_158 = _T_17 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15148.8]
  assign _T_159 = ~_T_158; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15149.8]
  assign _T_160 = io_in_a_bits_param <= 3'h2; // @[Bundles.scala 110:27:chipyard.TestHarness.RocketConfig.fir@15154.8]
  assign _T_162 = _T_160 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15156.8]
  assign _T_163 = ~_T_162; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15157.8]
  assign _T_164 = ~io_in_a_bits_mask; // @[Monitor.scala 86:18:chipyard.TestHarness.RocketConfig.fir@15162.8]
  assign _T_165 = _T_164 == 8'h0; // @[Monitor.scala 86:31:chipyard.TestHarness.RocketConfig.fir@15163.8]
  assign _T_167 = _T_165 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15165.8]
  assign _T_168 = ~_T_167; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15166.8]
  assign _T_169 = ~io_in_a_bits_corrupt; // @[Monitor.scala 87:18:chipyard.TestHarness.RocketConfig.fir@15171.8]
  assign _T_171 = _T_169 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15173.8]
  assign _T_172 = ~_T_171; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15174.8]
  assign _T_173 = io_in_a_bits_opcode == 3'h7; // @[Monitor.scala 90:25:chipyard.TestHarness.RocketConfig.fir@15180.6]
  assign _T_217 = io_in_a_bits_param != 3'h0; // @[Monitor.scala 97:31:chipyard.TestHarness.RocketConfig.fir@15255.8]
  assign _T_219 = _T_217 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15257.8]
  assign _T_220 = ~_T_219; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15258.8]
  assign _T_230 = io_in_a_bits_opcode == 3'h4; // @[Monitor.scala 102:25:chipyard.TestHarness.RocketConfig.fir@15281.6]
  assign _T_232 = io_in_a_bits_size <= 3'h6; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@15284.8]
  assign _T_240 = _T_232 & _T_127; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@15292.8]
  assign _T_243 = _T_240 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15295.8]
  assign _T_244 = ~_T_243; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15296.8]
  assign _T_251 = io_in_a_bits_param == 3'h0; // @[Monitor.scala 106:31:chipyard.TestHarness.RocketConfig.fir@15315.8]
  assign _T_253 = _T_251 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15317.8]
  assign _T_254 = ~_T_253; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15318.8]
  assign _T_255 = io_in_a_bits_mask == _T_81; // @[Monitor.scala 107:30:chipyard.TestHarness.RocketConfig.fir@15323.8]
  assign _T_257 = _T_255 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15325.8]
  assign _T_258 = ~_T_257; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15326.8]
  assign _T_263 = io_in_a_bits_opcode == 3'h0; // @[Monitor.scala 111:25:chipyard.TestHarness.RocketConfig.fir@15340.6]
  assign _T_292 = io_in_a_bits_opcode == 3'h1; // @[Monitor.scala 119:25:chipyard.TestHarness.RocketConfig.fir@15391.6]
  assign _T_317 = ~_T_81; // @[Monitor.scala 124:33:chipyard.TestHarness.RocketConfig.fir@15433.8]
  assign _T_318 = io_in_a_bits_mask & _T_317; // @[Monitor.scala 124:31:chipyard.TestHarness.RocketConfig.fir@15434.8]
  assign _T_319 = _T_318 == 8'h0; // @[Monitor.scala 124:40:chipyard.TestHarness.RocketConfig.fir@15435.8]
  assign _T_321 = _T_319 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15437.8]
  assign _T_322 = ~_T_321; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15438.8]
  assign _T_323 = io_in_a_bits_opcode == 3'h2; // @[Monitor.scala 127:25:chipyard.TestHarness.RocketConfig.fir@15444.6]
  assign _T_325 = io_in_a_bits_size <= 3'h3; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@15447.8]
  assign _T_333 = _T_325 & _T_127; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@15455.8]
  assign _T_336 = _T_333 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15458.8]
  assign _T_337 = ~_T_336; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15459.8]
  assign _T_344 = io_in_a_bits_param <= 3'h4; // @[Bundles.scala 140:33:chipyard.TestHarness.RocketConfig.fir@15478.8]
  assign _T_346 = _T_344 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15480.8]
  assign _T_347 = ~_T_346; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15481.8]
  assign _T_352 = io_in_a_bits_opcode == 3'h3; // @[Monitor.scala 135:25:chipyard.TestHarness.RocketConfig.fir@15495.6]
  assign _T_373 = io_in_a_bits_param <= 3'h3; // @[Bundles.scala 147:30:chipyard.TestHarness.RocketConfig.fir@15529.8]
  assign _T_375 = _T_373 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15531.8]
  assign _T_376 = ~_T_375; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15532.8]
  assign _T_381 = io_in_a_bits_opcode == 3'h5; // @[Monitor.scala 143:25:chipyard.TestHarness.RocketConfig.fir@15546.6]
  assign _T_402 = io_in_a_bits_param <= 3'h1; // @[Bundles.scala 160:28:chipyard.TestHarness.RocketConfig.fir@15580.8]
  assign _T_404 = _T_402 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15582.8]
  assign _T_405 = ~_T_404; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15583.8]
  assign _T_414 = io_in_d_bits_opcode <= 3'h6; // @[Bundles.scala 44:24:chipyard.TestHarness.RocketConfig.fir@15607.6]
  assign _T_416 = _T_414 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15609.6]
  assign _T_417 = ~_T_416; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15610.6]
  assign _T_418 = io_in_d_bits_source == 3'h4; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@15615.6]
  assign _T_419 = io_in_d_bits_source == 3'h0; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@15616.6]
  assign _T_420 = io_in_d_bits_source == 3'h1; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@15617.6]
  assign _T_421 = io_in_d_bits_source == 3'h2; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@15618.6]
  assign _T_423 = _T_418 | _T_419; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@15625.6]
  assign _T_424 = _T_423 | _T_420; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@15626.6]
  assign _T_425 = _T_424 | _T_421; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@15627.6]
  assign _T_427 = io_in_d_bits_opcode == 3'h6; // @[Monitor.scala 307:25:chipyard.TestHarness.RocketConfig.fir@15629.6]
  assign _T_429 = _T_425 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15632.8]
  assign _T_430 = ~_T_429; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15633.8]
  assign _T_431 = io_in_d_bits_size >= 3'h3; // @[Monitor.scala 309:27:chipyard.TestHarness.RocketConfig.fir@15638.8]
  assign _T_433 = _T_431 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15640.8]
  assign _T_434 = ~_T_433; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15641.8]
  assign _T_435 = io_in_d_bits_param == 2'h0; // @[Monitor.scala 310:28:chipyard.TestHarness.RocketConfig.fir@15646.8]
  assign _T_437 = _T_435 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15648.8]
  assign _T_438 = ~_T_437; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15649.8]
  assign _T_439 = ~io_in_d_bits_corrupt; // @[Monitor.scala 311:15:chipyard.TestHarness.RocketConfig.fir@15654.8]
  assign _T_441 = _T_439 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15656.8]
  assign _T_442 = ~_T_441; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15657.8]
  assign _T_443 = ~io_in_d_bits_denied; // @[Monitor.scala 312:15:chipyard.TestHarness.RocketConfig.fir@15662.8]
  assign _T_445 = _T_443 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15664.8]
  assign _T_446 = ~_T_445; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15665.8]
  assign _T_447 = io_in_d_bits_opcode == 3'h4; // @[Monitor.scala 315:25:chipyard.TestHarness.RocketConfig.fir@15671.6]
  assign _T_458 = io_in_d_bits_param <= 2'h2; // @[Bundles.scala 104:26:chipyard.TestHarness.RocketConfig.fir@15695.8]
  assign _T_460 = _T_458 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15697.8]
  assign _T_461 = ~_T_460; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15698.8]
  assign _T_462 = io_in_d_bits_param != 2'h2; // @[Monitor.scala 320:28:chipyard.TestHarness.RocketConfig.fir@15703.8]
  assign _T_464 = _T_462 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15705.8]
  assign _T_465 = ~_T_464; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15706.8]
  assign _T_475 = io_in_d_bits_opcode == 3'h5; // @[Monitor.scala 325:25:chipyard.TestHarness.RocketConfig.fir@15729.6]
  assign _T_495 = _T_443 | io_in_d_bits_corrupt; // @[Monitor.scala 331:30:chipyard.TestHarness.RocketConfig.fir@15770.8]
  assign _T_497 = _T_495 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15772.8]
  assign _T_498 = ~_T_497; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15773.8]
  assign _T_504 = io_in_d_bits_opcode == 3'h0; // @[Monitor.scala 335:25:chipyard.TestHarness.RocketConfig.fir@15788.6]
  assign _T_521 = io_in_d_bits_opcode == 3'h1; // @[Monitor.scala 343:25:chipyard.TestHarness.RocketConfig.fir@15823.6]
  assign _T_539 = io_in_d_bits_opcode == 3'h2; // @[Monitor.scala 351:25:chipyard.TestHarness.RocketConfig.fir@15859.6]
  assign _T_598 = io_in_b_bits_address ^ 32'h80000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@15946.6]
  assign _T_599 = {1'b0,$signed(_T_598)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@15947.6]
  assign _T_601 = $signed(_T_599) & -33'sh10000000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@15949.6]
  assign _T_602 = $signed(_T_601) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@15950.6]
  assign _T_608 = io_in_b_bits_address & 32'h3f; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@15958.6]
  assign _T_609 = _T_608 == 32'h0; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@15959.6]
  assign _T_707 = _T_602 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16074.8]
  assign _T_708 = ~_T_707; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16075.8]
  assign _T_713 = _T_609 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16088.8]
  assign _T_714 = ~_T_713; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16089.8]
  assign _T_715 = io_in_b_bits_param <= 2'h2; // @[Bundles.scala 104:26:chipyard.TestHarness.RocketConfig.fir@16094.8]
  assign _T_717 = _T_715 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16096.8]
  assign _T_718 = ~_T_717; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16097.8]
  assign _T_863 = io_in_c_bits_source == 3'h4; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@16421.6]
  assign _T_864 = io_in_c_bits_source == 3'h0; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@16422.6]
  assign _T_865 = io_in_c_bits_source == 3'h1; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@16423.6]
  assign _T_866 = io_in_c_bits_source == 3'h2; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@16424.6]
  assign _T_868 = _T_863 | _T_864; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@16431.6]
  assign _T_869 = _T_868 | _T_865; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@16432.6]
  assign _T_870 = _T_869 | _T_866; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@16433.6]
  assign _T_872 = 13'h3f << io_in_c_bits_size; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@16435.6]
  assign _T_874 = ~_T_872[5:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@16437.6]
  assign _GEN_72 = {{26'd0}, _T_874}; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@16438.6]
  assign _T_875 = io_in_c_bits_address & _GEN_72; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@16438.6]
  assign _T_876 = _T_875 == 32'h0; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@16439.6]
  assign _T_877 = io_in_c_bits_address ^ 32'h80000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@16440.6]
  assign _T_878 = {1'b0,$signed(_T_877)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@16441.6]
  assign _T_880 = $signed(_T_878) & -33'sh10000000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@16443.6]
  assign _T_881 = $signed(_T_880) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@16444.6]
  assign _T_921 = io_in_c_bits_opcode == 3'h4; // @[Monitor.scala 239:25:chipyard.TestHarness.RocketConfig.fir@16490.6]
  assign _T_923 = _T_881 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16493.8]
  assign _T_924 = ~_T_923; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16494.8]
  assign _T_926 = _T_870 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16500.8]
  assign _T_927 = ~_T_926; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16501.8]
  assign _T_928 = io_in_c_bits_size >= 3'h3; // @[Monitor.scala 242:30:chipyard.TestHarness.RocketConfig.fir@16506.8]
  assign _T_930 = _T_928 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16508.8]
  assign _T_931 = ~_T_930; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16509.8]
  assign _T_933 = _T_876 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16515.8]
  assign _T_934 = ~_T_933; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16516.8]
  assign _T_935 = io_in_c_bits_param <= 3'h5; // @[Bundles.scala 122:29:chipyard.TestHarness.RocketConfig.fir@16521.8]
  assign _T_937 = _T_935 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16523.8]
  assign _T_938 = ~_T_937; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16524.8]
  assign _T_939 = ~io_in_c_bits_corrupt; // @[Monitor.scala 245:18:chipyard.TestHarness.RocketConfig.fir@16529.8]
  assign _T_941 = _T_939 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16531.8]
  assign _T_942 = ~_T_941; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16532.8]
  assign _T_943 = io_in_c_bits_opcode == 3'h5; // @[Monitor.scala 248:25:chipyard.TestHarness.RocketConfig.fir@16538.6]
  assign _T_961 = io_in_c_bits_opcode == 3'h6; // @[Monitor.scala 256:25:chipyard.TestHarness.RocketConfig.fir@16578.6]
  assign _T_962 = 3'h6 == io_in_c_bits_size; // @[Parameters.scala 92:48:chipyard.TestHarness.RocketConfig.fir@16580.8]
  assign _T_969 = _T_962 & _T_881; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@16587.8]
  assign _T_972 = _T_969 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16590.8]
  assign _T_973 = ~_T_972; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16591.8]
  assign _T_981 = _T_864 & _T_962; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@16608.8]
  assign _T_989 = _T_981 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16617.8]
  assign _T_990 = ~_T_989; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16618.8]
  assign _T_1001 = io_in_c_bits_param <= 3'h2; // @[Bundles.scala 116:29:chipyard.TestHarness.RocketConfig.fir@16645.8]
  assign _T_1003 = _T_1001 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16647.8]
  assign _T_1004 = ~_T_1003; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16648.8]
  assign _T_1009 = io_in_c_bits_opcode == 3'h7; // @[Monitor.scala 266:25:chipyard.TestHarness.RocketConfig.fir@16662.6]
  assign _T_1053 = io_in_c_bits_opcode == 3'h0; // @[Monitor.scala 275:25:chipyard.TestHarness.RocketConfig.fir@16738.6]
  assign _T_1063 = io_in_c_bits_param == 3'h0; // @[Monitor.scala 279:31:chipyard.TestHarness.RocketConfig.fir@16761.8]
  assign _T_1065 = _T_1063 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16763.8]
  assign _T_1066 = ~_T_1065; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16764.8]
  assign _T_1071 = io_in_c_bits_opcode == 3'h1; // @[Monitor.scala 283:25:chipyard.TestHarness.RocketConfig.fir@16778.6]
  assign _T_1085 = io_in_c_bits_opcode == 3'h2; // @[Monitor.scala 290:25:chipyard.TestHarness.RocketConfig.fir@16810.6]
  assign _T_1107 = io_in_a_ready & io_in_a_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@16861.4]
  assign _T_1114 = ~io_in_a_bits_opcode[2]; // @[Edges.scala 93:28:chipyard.TestHarness.RocketConfig.fir@16868.4]
  assign _T_1118 = _T_1116 - 3'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@16872.4]
  assign _T_1119 = _T_1116 == 3'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@16873.4]
  assign _T_1132 = ~_T_1119; // @[Monitor.scala 386:22:chipyard.TestHarness.RocketConfig.fir@16889.4]
  assign _T_1133 = io_in_a_valid & _T_1132; // @[Monitor.scala 386:19:chipyard.TestHarness.RocketConfig.fir@16890.4]
  assign _T_1134 = io_in_a_bits_opcode == _T_1127; // @[Monitor.scala 387:32:chipyard.TestHarness.RocketConfig.fir@16892.6]
  assign _T_1136 = _T_1134 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16894.6]
  assign _T_1137 = ~_T_1136; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16895.6]
  assign _T_1138 = io_in_a_bits_param == _T_1128; // @[Monitor.scala 388:32:chipyard.TestHarness.RocketConfig.fir@16900.6]
  assign _T_1140 = _T_1138 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16902.6]
  assign _T_1141 = ~_T_1140; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16903.6]
  assign _T_1142 = io_in_a_bits_size == _T_1129; // @[Monitor.scala 389:32:chipyard.TestHarness.RocketConfig.fir@16908.6]
  assign _T_1144 = _T_1142 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16910.6]
  assign _T_1145 = ~_T_1144; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16911.6]
  assign _T_1146 = io_in_a_bits_source == _T_1130; // @[Monitor.scala 390:32:chipyard.TestHarness.RocketConfig.fir@16916.6]
  assign _T_1148 = _T_1146 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16918.6]
  assign _T_1149 = ~_T_1148; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16919.6]
  assign _T_1150 = io_in_a_bits_address == _T_1131; // @[Monitor.scala 391:32:chipyard.TestHarness.RocketConfig.fir@16924.6]
  assign _T_1152 = _T_1150 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16926.6]
  assign _T_1153 = ~_T_1152; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16927.6]
  assign _T_1155 = _T_1107 & _T_1119; // @[Monitor.scala 393:20:chipyard.TestHarness.RocketConfig.fir@16934.4]
  assign _T_1156 = io_in_d_ready & io_in_d_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@16942.4]
  assign _T_1158 = 13'h3f << io_in_d_bits_size; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@16944.4]
  assign _T_1160 = ~_T_1158[5:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@16946.4]
  assign _T_1166 = _T_1164 - 3'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@16952.4]
  assign _T_1167 = _T_1164 == 3'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@16953.4]
  assign _T_1181 = ~_T_1167; // @[Monitor.scala 538:22:chipyard.TestHarness.RocketConfig.fir@16970.4]
  assign _T_1182 = io_in_d_valid & _T_1181; // @[Monitor.scala 538:19:chipyard.TestHarness.RocketConfig.fir@16971.4]
  assign _T_1183 = io_in_d_bits_opcode == _T_1175; // @[Monitor.scala 539:29:chipyard.TestHarness.RocketConfig.fir@16973.6]
  assign _T_1185 = _T_1183 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@16975.6]
  assign _T_1186 = ~_T_1185; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@16976.6]
  assign _T_1187 = io_in_d_bits_param == _T_1176; // @[Monitor.scala 540:29:chipyard.TestHarness.RocketConfig.fir@16981.6]
  assign _T_1189 = _T_1187 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@16983.6]
  assign _T_1190 = ~_T_1189; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@16984.6]
  assign _T_1191 = io_in_d_bits_size == _T_1177; // @[Monitor.scala 541:29:chipyard.TestHarness.RocketConfig.fir@16989.6]
  assign _T_1193 = _T_1191 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@16991.6]
  assign _T_1194 = ~_T_1193; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@16992.6]
  assign _T_1195 = io_in_d_bits_source == _T_1178; // @[Monitor.scala 542:29:chipyard.TestHarness.RocketConfig.fir@16997.6]
  assign _T_1197 = _T_1195 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@16999.6]
  assign _T_1198 = ~_T_1197; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@17000.6]
  assign _T_1199 = io_in_d_bits_sink == _T_1179; // @[Monitor.scala 543:29:chipyard.TestHarness.RocketConfig.fir@17005.6]
  assign _T_1201 = _T_1199 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@17007.6]
  assign _T_1202 = ~_T_1201; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@17008.6]
  assign _T_1203 = io_in_d_bits_denied == _T_1180; // @[Monitor.scala 544:29:chipyard.TestHarness.RocketConfig.fir@17013.6]
  assign _T_1205 = _T_1203 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@17015.6]
  assign _T_1206 = ~_T_1205; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@17016.6]
  assign _T_1208 = _T_1156 & _T_1167; // @[Monitor.scala 546:20:chipyard.TestHarness.RocketConfig.fir@17023.4]
  assign _T_1209 = io_in_b_ready & io_in_b_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@17032.4]
  assign _T_1220 = _T_1218 - 3'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@17043.4]
  assign _T_1221 = _T_1218 == 3'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@17044.4]
  assign _T_1234 = ~_T_1221; // @[Monitor.scala 409:22:chipyard.TestHarness.RocketConfig.fir@17060.4]
  assign _T_1235 = io_in_b_valid & _T_1234; // @[Monitor.scala 409:19:chipyard.TestHarness.RocketConfig.fir@17061.4]
  assign _T_1240 = io_in_b_bits_param == _T_1230; // @[Monitor.scala 411:32:chipyard.TestHarness.RocketConfig.fir@17071.6]
  assign _T_1242 = _T_1240 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@17073.6]
  assign _T_1243 = ~_T_1242; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@17074.6]
  assign _T_1252 = io_in_b_bits_address == _T_1233; // @[Monitor.scala 414:32:chipyard.TestHarness.RocketConfig.fir@17095.6]
  assign _T_1254 = _T_1252 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@17097.6]
  assign _T_1255 = ~_T_1254; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@17098.6]
  assign _T_1257 = _T_1209 & _T_1221; // @[Monitor.scala 416:20:chipyard.TestHarness.RocketConfig.fir@17105.4]
  assign _T_1258 = io_in_c_ready & io_in_c_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@17113.4]
  assign _T_1268 = _T_1266 - 3'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@17123.4]
  assign _T_1269 = _T_1266 == 3'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@17124.4]
  assign _T_1282 = ~_T_1269; // @[Monitor.scala 514:22:chipyard.TestHarness.RocketConfig.fir@17140.4]
  assign _T_1283 = io_in_c_valid & _T_1282; // @[Monitor.scala 514:19:chipyard.TestHarness.RocketConfig.fir@17141.4]
  assign _T_1284 = io_in_c_bits_opcode == _T_1277; // @[Monitor.scala 515:32:chipyard.TestHarness.RocketConfig.fir@17143.6]
  assign _T_1286 = _T_1284 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@17145.6]
  assign _T_1287 = ~_T_1286; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@17146.6]
  assign _T_1288 = io_in_c_bits_param == _T_1278; // @[Monitor.scala 516:32:chipyard.TestHarness.RocketConfig.fir@17151.6]
  assign _T_1290 = _T_1288 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@17153.6]
  assign _T_1291 = ~_T_1290; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@17154.6]
  assign _T_1292 = io_in_c_bits_size == _T_1279; // @[Monitor.scala 517:32:chipyard.TestHarness.RocketConfig.fir@17159.6]
  assign _T_1294 = _T_1292 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@17161.6]
  assign _T_1295 = ~_T_1294; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@17162.6]
  assign _T_1296 = io_in_c_bits_source == _T_1280; // @[Monitor.scala 518:32:chipyard.TestHarness.RocketConfig.fir@17167.6]
  assign _T_1298 = _T_1296 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@17169.6]
  assign _T_1299 = ~_T_1298; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@17170.6]
  assign _T_1300 = io_in_c_bits_address == _T_1281; // @[Monitor.scala 519:32:chipyard.TestHarness.RocketConfig.fir@17175.6]
  assign _T_1302 = _T_1300 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@17177.6]
  assign _T_1303 = ~_T_1302; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@17178.6]
  assign _T_1305 = _T_1258 & _T_1269; // @[Monitor.scala 521:20:chipyard.TestHarness.RocketConfig.fir@17185.4]
  assign _T_1317 = _T_1315 - 3'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@17207.4]
  assign a_first = _T_1315 == 3'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@17208.4]
  assign _T_1335 = _T_1333 - 3'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@17229.4]
  assign d_first = _T_1333 == 3'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@17230.4]
  assign _GEN_73 = {io_in_d_bits_source, 2'h0}; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@17249.4]
  assign _T_1343 = {{1'd0}, _GEN_73}; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@17249.4]
  assign _T_1344 = inflight_opcodes >> _T_1343; // @[Monitor.scala 629:44:chipyard.TestHarness.RocketConfig.fir@17250.4]
  assign _T_1348 = 16'h10 - 16'h1; // @[Monitor.scala 606:57:chipyard.TestHarness.RocketConfig.fir@17254.4]
  assign _GEN_74 = {{4'd0}, _T_1348}; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@17255.4]
  assign _T_1349 = _T_1344 & _GEN_74; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@17255.4]
  assign _T_1350 = {{1'd0}, _T_1349[19:1]}; // @[Monitor.scala 629:152:chipyard.TestHarness.RocketConfig.fir@17256.4]
  assign _T_1352 = inflight_sizes >> _T_1343; // @[Monitor.scala 633:40:chipyard.TestHarness.RocketConfig.fir@17261.4]
  assign _T_1357 = _T_1352 & _GEN_74; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@17266.4]
  assign _T_1358 = {{1'd0}, _T_1357[19:1]}; // @[Monitor.scala 633:144:chipyard.TestHarness.RocketConfig.fir@17267.4]
  assign _T_1362 = _T_1107 & a_first; // @[Monitor.scala 643:27:chipyard.TestHarness.RocketConfig.fir@17292.4]
  assign _T_1364 = 8'h1 << io_in_a_bits_source; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@17295.6]
  assign _T_1365 = {io_in_a_bits_opcode, 1'h0}; // @[Monitor.scala 645:53:chipyard.TestHarness.RocketConfig.fir@17297.6]
  assign _T_1366 = _T_1365 | 4'h1; // @[Monitor.scala 645:61:chipyard.TestHarness.RocketConfig.fir@17298.6]
  assign _T_1367 = {io_in_a_bits_size, 1'h0}; // @[Monitor.scala 646:49:chipyard.TestHarness.RocketConfig.fir@17300.6]
  assign _T_1368 = _T_1367 | 4'h1; // @[Monitor.scala 646:57:chipyard.TestHarness.RocketConfig.fir@17301.6]
  assign _GEN_79 = {io_in_a_bits_source, 2'h0}; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@17303.6]
  assign _T_1369 = {{1'd0}, _GEN_79}; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@17303.6]
  assign a_opcodes_set_interm = _T_1362 ? _T_1366 : 4'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@17294.4]
  assign _GEN_80 = {{63'd0}, a_opcodes_set_interm}; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@17304.6]
  assign _T_1370 = _GEN_80 << _T_1369; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@17304.6]
  assign a_sizes_set_interm = _T_1362 ? _T_1368 : 4'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@17294.4]
  assign _GEN_82 = {{63'd0}, a_sizes_set_interm}; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@17307.6]
  assign _T_1372 = _GEN_82 << _T_1369; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@17307.6]
  assign _T_1373 = inflight >> io_in_a_bits_source; // @[Monitor.scala 649:26:chipyard.TestHarness.RocketConfig.fir@17309.6]
  assign _T_1375 = ~_T_1373[0]; // @[Monitor.scala 649:17:chipyard.TestHarness.RocketConfig.fir@17311.6]
  assign _T_1377 = _T_1375 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@17313.6]
  assign _T_1378 = ~_T_1377; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@17314.6]
  assign _GEN_27 = _T_1362 ? _T_1364 : 8'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@17294.4]
  assign _GEN_30 = _T_1362 ? _T_1370 : 67'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@17294.4]
  assign _GEN_31 = _T_1362 ? _T_1372 : 67'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@17294.4]
  assign _T_1381 = _T_1156 & d_first; // @[Monitor.scala 660:27:chipyard.TestHarness.RocketConfig.fir@17328.4]
  assign _T_1383 = ~_T_427; // @[Monitor.scala 660:75:chipyard.TestHarness.RocketConfig.fir@17330.4]
  assign _T_1384 = _T_1381 & _T_1383; // @[Monitor.scala 660:72:chipyard.TestHarness.RocketConfig.fir@17331.4]
  assign _T_1385 = 8'h1 << io_in_d_bits_source; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@17333.6]
  assign _GEN_84 = {{63'd0}, _T_1348}; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@17340.6]
  assign _T_1391 = _GEN_84 << _T_1343; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@17340.6]
  assign _GEN_32 = _T_1384 ? _T_1385 : 8'h0; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@17332.4]
  assign _GEN_33 = _T_1384 ? _T_1391 : 79'h0; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@17332.4]
  assign _T_1398 = io_in_d_valid & d_first; // @[Monitor.scala 665:26:chipyard.TestHarness.RocketConfig.fir@17350.4]
  assign _T_1401 = _T_1398 & _T_1383; // @[Monitor.scala 665:71:chipyard.TestHarness.RocketConfig.fir@17353.4]
  assign _T_1402 = inflight >> io_in_d_bits_source; // @[Monitor.scala 666:25:chipyard.TestHarness.RocketConfig.fir@17355.6]
  assign _T_1404 = io_in_a_bits_source == io_in_d_bits_source; // @[Monitor.scala 666:93:chipyard.TestHarness.RocketConfig.fir@17357.6]
  assign _T_1405 = io_in_a_valid & _T_1404; // @[Monitor.scala 666:68:chipyard.TestHarness.RocketConfig.fir@17358.6]
  assign _T_1406 = io_in_a_bits_size == io_in_d_bits_size; // @[Monitor.scala 666:142:chipyard.TestHarness.RocketConfig.fir@17359.6]
  assign _T_1407 = _T_1405 & _T_1406; // @[Monitor.scala 666:119:chipyard.TestHarness.RocketConfig.fir@17360.6]
  assign _T_1408 = _T_1407 & a_first; // @[Monitor.scala 666:166:chipyard.TestHarness.RocketConfig.fir@17361.6]
  assign _T_1409 = _T_1402[0] | _T_1408; // @[Monitor.scala 666:49:chipyard.TestHarness.RocketConfig.fir@17362.6]
  assign _T_1411 = _T_1409 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@17364.6]
  assign _T_1412 = ~_T_1411; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@17365.6]
  assign a_opcode_lookup = _T_1350[3:0]; // @[:chipyard.TestHarness.RocketConfig.fir@17247.4 :chipyard.TestHarness.RocketConfig.fir@17248.4 Monitor.scala 629:21:chipyard.TestHarness.RocketConfig.fir@17257.4]
  assign _GEN_37 = 3'h2 == a_opcode_lookup[2:0] ? 3'h1 : 3'h0; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@17371.6]
  assign _GEN_38 = 3'h3 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_37; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@17371.6]
  assign _GEN_39 = 3'h4 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_38; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@17371.6]
  assign _GEN_40 = 3'h5 == a_opcode_lookup[2:0] ? 3'h2 : _GEN_39; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@17371.6]
  assign _GEN_41 = 3'h6 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_40; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@17371.6]
  assign _GEN_42 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_41; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@17371.6]
  assign _T_1414 = io_in_d_bits_opcode == _GEN_42; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@17371.6]
  assign _GEN_49 = 3'h6 == a_opcode_lookup[2:0] ? 3'h5 : _GEN_40; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@17373.6]
  assign _GEN_50 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_49; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@17373.6]
  assign _T_1416 = io_in_d_bits_opcode == _GEN_50; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@17373.6]
  assign _T_1417 = _T_1414 | _T_1416; // @[Monitor.scala 667:71:chipyard.TestHarness.RocketConfig.fir@17374.6]
  assign _GEN_53 = 3'h2 == io_in_a_bits_opcode ? 3'h1 : 3'h0; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@17375.6]
  assign _GEN_54 = 3'h3 == io_in_a_bits_opcode ? 3'h1 : _GEN_53; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@17375.6]
  assign _GEN_55 = 3'h4 == io_in_a_bits_opcode ? 3'h1 : _GEN_54; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@17375.6]
  assign _GEN_56 = 3'h5 == io_in_a_bits_opcode ? 3'h2 : _GEN_55; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@17375.6]
  assign _GEN_57 = 3'h6 == io_in_a_bits_opcode ? 3'h4 : _GEN_56; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@17375.6]
  assign _GEN_58 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_57; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@17375.6]
  assign _T_1418 = io_in_d_bits_opcode == _GEN_58; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@17375.6]
  assign _GEN_65 = 3'h6 == io_in_a_bits_opcode ? 3'h5 : _GEN_56; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@17376.6]
  assign _GEN_66 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_65; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@17376.6]
  assign _T_1419 = io_in_d_bits_opcode == _GEN_66; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@17376.6]
  assign _T_1420 = _T_1418 | _T_1419; // @[Monitor.scala 668:99:chipyard.TestHarness.RocketConfig.fir@17377.6]
  assign _T_1421 = io_in_a_valid & _T_1420; // @[Monitor.scala 668:34:chipyard.TestHarness.RocketConfig.fir@17378.6]
  assign _T_1422 = _T_1417 | _T_1421; // @[Monitor.scala 668:15:chipyard.TestHarness.RocketConfig.fir@17379.6]
  assign _T_1424 = _T_1422 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@17381.6]
  assign _T_1425 = ~_T_1424; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@17382.6]
  assign a_size_lookup = _T_1358[3:0]; // @[:chipyard.TestHarness.RocketConfig.fir@17258.4 :chipyard.TestHarness.RocketConfig.fir@17259.4 Monitor.scala 633:19:chipyard.TestHarness.RocketConfig.fir@17268.4]
  assign _GEN_87 = {{1'd0}, io_in_d_bits_size}; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@17387.6]
  assign _T_1426 = _GEN_87 == a_size_lookup; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@17387.6]
  assign _T_1428 = io_in_a_valid & _T_1406; // @[Monitor.scala 670:72:chipyard.TestHarness.RocketConfig.fir@17389.6]
  assign _T_1429 = _T_1426 | _T_1428; // @[Monitor.scala 670:53:chipyard.TestHarness.RocketConfig.fir@17390.6]
  assign _T_1431 = _T_1429 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@17392.6]
  assign _T_1432 = ~_T_1431; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@17393.6]
  assign _T_1434 = _T_1398 & a_first; // @[Monitor.scala 672:36:chipyard.TestHarness.RocketConfig.fir@17400.4]
  assign _T_1435 = _T_1434 & io_in_a_valid; // @[Monitor.scala 672:47:chipyard.TestHarness.RocketConfig.fir@17401.4]
  assign _T_1437 = _T_1435 & _T_1404; // @[Monitor.scala 672:65:chipyard.TestHarness.RocketConfig.fir@17403.4]
  assign _T_1439 = _T_1437 & _T_1383; // @[Monitor.scala 672:116:chipyard.TestHarness.RocketConfig.fir@17405.4]
  assign _T_1440 = ~io_in_d_ready; // @[Monitor.scala 673:15:chipyard.TestHarness.RocketConfig.fir@17407.6]
  assign _T_1441 = _T_1440 | io_in_a_ready; // @[Monitor.scala 673:32:chipyard.TestHarness.RocketConfig.fir@17408.6]
  assign _T_1443 = _T_1441 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@17410.6]
  assign _T_1444 = ~_T_1443; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@17411.6]
  assign a_set = _GEN_27[4:0]; // @[:chipyard.TestHarness.RocketConfig.fir@17241.4 :chipyard.TestHarness.RocketConfig.fir@17242.4 Monitor.scala 644:13:chipyard.TestHarness.RocketConfig.fir@17296.6]
  assign d_clr = _GEN_32[4:0]; // @[:chipyard.TestHarness.RocketConfig.fir@17320.4 :chipyard.TestHarness.RocketConfig.fir@17321.4 Monitor.scala 661:13:chipyard.TestHarness.RocketConfig.fir@17334.6]
  assign _T_1445 = a_set != d_clr; // @[Monitor.scala 677:20:chipyard.TestHarness.RocketConfig.fir@17417.4]
  assign _T_1446 = |a_set; // @[Monitor.scala 677:40:chipyard.TestHarness.RocketConfig.fir@17418.4]
  assign _T_1447 = ~_T_1446; // @[Monitor.scala 677:33:chipyard.TestHarness.RocketConfig.fir@17419.4]
  assign _T_1448 = _T_1445 | _T_1447; // @[Monitor.scala 677:30:chipyard.TestHarness.RocketConfig.fir@17420.4]
  assign _T_1450 = _T_1448 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@17422.4]
  assign _T_1451 = ~_T_1450; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@17423.4]
  assign _T_1452 = inflight | a_set; // @[Monitor.scala 680:27:chipyard.TestHarness.RocketConfig.fir@17428.4]
  assign _T_1453 = ~d_clr; // @[Monitor.scala 680:38:chipyard.TestHarness.RocketConfig.fir@17429.4]
  assign _T_1454 = _T_1452 & _T_1453; // @[Monitor.scala 680:36:chipyard.TestHarness.RocketConfig.fir@17430.4]
  assign a_opcodes_set = _GEN_30[19:0]; // @[:chipyard.TestHarness.RocketConfig.fir@17243.4 :chipyard.TestHarness.RocketConfig.fir@17244.4 Monitor.scala 647:21:chipyard.TestHarness.RocketConfig.fir@17305.6]
  assign _T_1455 = inflight_opcodes | a_opcodes_set; // @[Monitor.scala 681:43:chipyard.TestHarness.RocketConfig.fir@17432.4]
  assign d_opcodes_clr = _GEN_33[19:0]; // @[:chipyard.TestHarness.RocketConfig.fir@17322.4 :chipyard.TestHarness.RocketConfig.fir@17323.4 Monitor.scala 662:21:chipyard.TestHarness.RocketConfig.fir@17341.6]
  assign _T_1456 = ~d_opcodes_clr; // @[Monitor.scala 681:62:chipyard.TestHarness.RocketConfig.fir@17433.4]
  assign _T_1457 = _T_1455 & _T_1456; // @[Monitor.scala 681:60:chipyard.TestHarness.RocketConfig.fir@17434.4]
  assign a_sizes_set = _GEN_31[19:0]; // @[:chipyard.TestHarness.RocketConfig.fir@17245.4 :chipyard.TestHarness.RocketConfig.fir@17246.4 Monitor.scala 648:19:chipyard.TestHarness.RocketConfig.fir@17308.6]
  assign _T_1458 = inflight_sizes | a_sizes_set; // @[Monitor.scala 682:39:chipyard.TestHarness.RocketConfig.fir@17436.4]
  assign _T_1460 = _T_1458 & _T_1456; // @[Monitor.scala 682:54:chipyard.TestHarness.RocketConfig.fir@17438.4]
  assign _T_1462 = |inflight; // @[Monitor.scala 687:26:chipyard.TestHarness.RocketConfig.fir@17443.4]
  assign _T_1463 = ~_T_1462; // @[Monitor.scala 687:16:chipyard.TestHarness.RocketConfig.fir@17444.4]
  assign _T_1464 = plusarg_reader_out == 32'h0; // @[Monitor.scala 687:39:chipyard.TestHarness.RocketConfig.fir@17445.4]
  assign _T_1465 = _T_1463 | _T_1464; // @[Monitor.scala 687:30:chipyard.TestHarness.RocketConfig.fir@17446.4]
  assign _T_1466 = _T_1461 < plusarg_reader_out; // @[Monitor.scala 687:59:chipyard.TestHarness.RocketConfig.fir@17447.4]
  assign _T_1467 = _T_1465 | _T_1466; // @[Monitor.scala 687:47:chipyard.TestHarness.RocketConfig.fir@17448.4]
  assign _T_1469 = _T_1467 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@17450.4]
  assign _T_1470 = ~_T_1469; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@17451.4]
  assign _T_1472 = _T_1461 + 32'h1; // @[Monitor.scala 689:26:chipyard.TestHarness.RocketConfig.fir@17457.4]
  assign _T_1475 = _T_1107 | _T_1156; // @[Monitor.scala 690:27:chipyard.TestHarness.RocketConfig.fir@17461.4]
  assign _T_1487 = _T_1485 - 3'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@17476.4]
  assign _T_1488 = _T_1485 == 3'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@17477.4]
  assign _T_1498 = _T_1156 & _T_1488; // @[Monitor.scala 700:27:chipyard.TestHarness.RocketConfig.fir@17491.4]
  assign _T_1501 = ~io_in_d_bits_opcode[1]; // @[Edges.scala 72:43:chipyard.TestHarness.RocketConfig.fir@17494.4]
  assign _T_1502 = io_in_d_bits_opcode[2] & _T_1501; // @[Edges.scala 72:40:chipyard.TestHarness.RocketConfig.fir@17495.4]
  assign _T_1503 = _T_1498 & _T_1502; // @[Monitor.scala 700:38:chipyard.TestHarness.RocketConfig.fir@17496.4]
  assign _T_1504 = 8'h1 << io_in_d_bits_sink; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@17498.6]
  assign _T_1505 = _T_1476 >> io_in_d_bits_sink; // @[Monitor.scala 702:23:chipyard.TestHarness.RocketConfig.fir@17500.6]
  assign _T_1507 = ~_T_1505[0]; // @[Monitor.scala 702:14:chipyard.TestHarness.RocketConfig.fir@17502.6]
  assign _T_1509 = _T_1507 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@17504.6]
  assign _T_1510 = ~_T_1509; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@17505.6]
  assign _GEN_69 = _T_1503 ? _T_1504 : 8'h0; // @[Monitor.scala 700:72:chipyard.TestHarness.RocketConfig.fir@17497.4]
  assign _T_1515 = 8'h1 << io_in_e_bits_sink; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@17517.6]
  assign _T_1516 = _GEN_69 | _T_1476; // @[Monitor.scala 708:24:chipyard.TestHarness.RocketConfig.fir@17519.6]
  assign _T_1517 = _T_1516 >> io_in_e_bits_sink; // @[Monitor.scala 708:35:chipyard.TestHarness.RocketConfig.fir@17520.6]
  assign _T_1520 = _T_1517[0] | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@17523.6]
  assign _T_1521 = ~_T_1520; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@17524.6]
  assign _GEN_70 = io_in_e_valid ? _T_1515 : 8'h0; // @[Monitor.scala 706:73:chipyard.TestHarness.RocketConfig.fir@17516.4]
  assign _T_1522 = _T_1476 | _GEN_69; // @[Monitor.scala 713:27:chipyard.TestHarness.RocketConfig.fir@17530.4]
  assign _T_1523 = ~_GEN_70; // @[Monitor.scala 713:38:chipyard.TestHarness.RocketConfig.fir@17531.4]
  assign _T_1524 = _T_1522 & _T_1523; // @[Monitor.scala 713:36:chipyard.TestHarness.RocketConfig.fir@17532.4]
  assign _GEN_88 = io_in_a_valid & _T_120; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15102.10]
  assign _GEN_104 = io_in_a_valid & _T_173; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15195.10]
  assign _GEN_122 = io_in_a_valid & _T_230; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15298.10]
  assign _GEN_134 = io_in_a_valid & _T_263; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15357.10]
  assign _GEN_144 = io_in_a_valid & _T_292; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15408.10]
  assign _GEN_154 = io_in_a_valid & _T_323; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15461.10]
  assign _GEN_164 = io_in_a_valid & _T_352; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15512.10]
  assign _GEN_174 = io_in_a_valid & _T_381; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15563.10]
  assign _GEN_186 = io_in_d_valid & _T_427; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15635.10]
  assign _GEN_196 = io_in_d_valid & _T_447; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15677.10]
  assign _GEN_206 = io_in_d_valid & _T_475; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15735.10]
  assign _GEN_216 = io_in_d_valid & _T_504; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15794.10]
  assign _GEN_222 = io_in_d_valid & _T_521; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15829.10]
  assign _GEN_228 = io_in_d_valid & _T_539; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15865.10]
  assign _GEN_234 = io_in_c_valid & _T_921; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16496.10]
  assign _GEN_246 = io_in_c_valid & _T_943; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16544.10]
  assign _GEN_256 = io_in_c_valid & _T_961; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16593.10]
  assign _GEN_270 = io_in_c_valid & _T_1009; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16677.10]
  assign _GEN_282 = io_in_c_valid & _T_1053; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16744.10]
  assign _GEN_292 = io_in_c_valid & _T_1071; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16784.10]
  assign _GEN_300 = io_in_c_valid & _T_1085; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16816.10]
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
  _T_1116 = _RAND_0[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_1127 = _RAND_1[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_1128 = _RAND_2[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_1129 = _RAND_3[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_1130 = _RAND_4[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_1131 = _RAND_5[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  _T_1164 = _RAND_6[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  _T_1175 = _RAND_7[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  _T_1176 = _RAND_8[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  _T_1177 = _RAND_9[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  _T_1178 = _RAND_10[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  _T_1179 = _RAND_11[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  _T_1180 = _RAND_12[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  _T_1218 = _RAND_13[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  _T_1230 = _RAND_14[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  _T_1233 = _RAND_15[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  _T_1266 = _RAND_16[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  _T_1277 = _RAND_17[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  _T_1278 = _RAND_18[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  _T_1279 = _RAND_19[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  _T_1280 = _RAND_20[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  _T_1281 = _RAND_21[31:0];
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
  _T_1315 = _RAND_25[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{`RANDOM}};
  _T_1333 = _RAND_26[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {1{`RANDOM}};
  _T_1461 = _RAND_27[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {1{`RANDOM}};
  _T_1476 = _RAND_28[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {1{`RANDOM}};
  _T_1485 = _RAND_29[2:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      _T_1116 <= 3'h0;
    end else if (_T_1107) begin
      if (_T_1119) begin
        if (_T_1114) begin
          _T_1116 <= _T_15[5:3];
        end else begin
          _T_1116 <= 3'h0;
        end
      end else begin
        _T_1116 <= _T_1118;
      end
    end
    if (_T_1155) begin
      _T_1127 <= io_in_a_bits_opcode;
    end
    if (_T_1155) begin
      _T_1128 <= io_in_a_bits_param;
    end
    if (_T_1155) begin
      _T_1129 <= io_in_a_bits_size;
    end
    if (_T_1155) begin
      _T_1130 <= io_in_a_bits_source;
    end
    if (_T_1155) begin
      _T_1131 <= io_in_a_bits_address;
    end
    if (reset) begin
      _T_1164 <= 3'h0;
    end else if (_T_1156) begin
      if (_T_1167) begin
        if (io_in_d_bits_opcode[0]) begin
          _T_1164 <= _T_1160[5:3];
        end else begin
          _T_1164 <= 3'h0;
        end
      end else begin
        _T_1164 <= _T_1166;
      end
    end
    if (_T_1208) begin
      _T_1175 <= io_in_d_bits_opcode;
    end
    if (_T_1208) begin
      _T_1176 <= io_in_d_bits_param;
    end
    if (_T_1208) begin
      _T_1177 <= io_in_d_bits_size;
    end
    if (_T_1208) begin
      _T_1178 <= io_in_d_bits_source;
    end
    if (_T_1208) begin
      _T_1179 <= io_in_d_bits_sink;
    end
    if (_T_1208) begin
      _T_1180 <= io_in_d_bits_denied;
    end
    if (reset) begin
      _T_1218 <= 3'h0;
    end else if (_T_1209) begin
      if (_T_1221) begin
        _T_1218 <= 3'h0;
      end else begin
        _T_1218 <= _T_1220;
      end
    end
    if (_T_1257) begin
      _T_1230 <= io_in_b_bits_param;
    end
    if (_T_1257) begin
      _T_1233 <= io_in_b_bits_address;
    end
    if (reset) begin
      _T_1266 <= 3'h0;
    end else if (_T_1258) begin
      if (_T_1269) begin
        if (io_in_c_bits_opcode[0]) begin
          _T_1266 <= _T_874[5:3];
        end else begin
          _T_1266 <= 3'h0;
        end
      end else begin
        _T_1266 <= _T_1268;
      end
    end
    if (_T_1305) begin
      _T_1277 <= io_in_c_bits_opcode;
    end
    if (_T_1305) begin
      _T_1278 <= io_in_c_bits_param;
    end
    if (_T_1305) begin
      _T_1279 <= io_in_c_bits_size;
    end
    if (_T_1305) begin
      _T_1280 <= io_in_c_bits_source;
    end
    if (_T_1305) begin
      _T_1281 <= io_in_c_bits_address;
    end
    if (reset) begin
      inflight <= 5'h0;
    end else begin
      inflight <= _T_1454;
    end
    if (reset) begin
      inflight_opcodes <= 20'h0;
    end else begin
      inflight_opcodes <= _T_1457;
    end
    if (reset) begin
      inflight_sizes <= 20'h0;
    end else begin
      inflight_sizes <= _T_1460;
    end
    if (reset) begin
      _T_1315 <= 3'h0;
    end else if (_T_1107) begin
      if (a_first) begin
        if (_T_1114) begin
          _T_1315 <= _T_15[5:3];
        end else begin
          _T_1315 <= 3'h0;
        end
      end else begin
        _T_1315 <= _T_1317;
      end
    end
    if (reset) begin
      _T_1333 <= 3'h0;
    end else if (_T_1156) begin
      if (d_first) begin
        if (io_in_d_bits_opcode[0]) begin
          _T_1333 <= _T_1160[5:3];
        end else begin
          _T_1333 <= 3'h0;
        end
      end else begin
        _T_1333 <= _T_1335;
      end
    end
    if (reset) begin
      _T_1461 <= 32'h0;
    end else if (_T_1475) begin
      _T_1461 <= 32'h0;
    end else begin
      _T_1461 <= _T_1472;
    end
    if (reset) begin
      _T_1476 <= 8'h0;
    end else begin
      _T_1476 <= _T_1524;
    end
    if (reset) begin
      _T_1485 <= 3'h0;
    end else if (_T_1156) begin
      if (_T_1488) begin
        if (io_in_d_bits_opcode[0]) begin
          _T_1485 <= _T_1160[5:3];
        end else begin
          _T_1485 <= 3'h0;
        end
      end else begin
        _T_1485 <= _T_1487;
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_88 & _T_132) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock type unsupported by manager (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15102.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_88 & _T_132) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15103.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock from a client which does not support Probe (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15129.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15130.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_88 & _T_152) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock carries invalid source ID (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15136.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_88 & _T_152) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15137.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_88 & _T_156) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock smaller than a beat (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15144.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_88 & _T_156) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15145.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_88 & _T_159) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock address not aligned to size (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15151.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_88 & _T_159) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15152.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_88 & _T_163) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock carries invalid grow param (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15159.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_88 & _T_163) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15160.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_88 & _T_168) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock contains invalid mask (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15168.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_88 & _T_168) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15169.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_88 & _T_172) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock is corrupt (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15176.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_88 & _T_172) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15177.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_104 & _T_132) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm type unsupported by manager (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15195.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_104 & _T_132) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15196.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm from a client which does not support Probe (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15222.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15223.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_104 & _T_152) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm carries invalid source ID (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15229.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_104 & _T_152) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15230.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_104 & _T_156) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm smaller than a beat (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15237.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_104 & _T_156) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15238.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_104 & _T_159) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm address not aligned to size (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15244.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_104 & _T_159) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15245.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_104 & _T_163) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm carries invalid grow param (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15252.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_104 & _T_163) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15253.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_104 & _T_220) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm requests NtoB (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15260.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_104 & _T_220) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15261.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_104 & _T_168) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm contains invalid mask (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15269.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_104 & _T_168) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15270.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_104 & _T_172) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm is corrupt (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15277.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_104 & _T_172) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15278.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_122 & _T_244) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Get type unsupported by manager (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15298.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_122 & _T_244) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15299.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_122 & _T_152) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get carries invalid source ID (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15305.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_122 & _T_152) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15306.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_122 & _T_159) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get address not aligned to size (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15312.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_122 & _T_159) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15313.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_122 & _T_254) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get carries invalid param (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15320.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_122 & _T_254) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15321.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_122 & _T_258) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get contains invalid mask (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15328.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_122 & _T_258) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15329.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_122 & _T_172) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get is corrupt (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15336.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_122 & _T_172) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15337.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_134 & _T_244) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutFull type unsupported by manager (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15357.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_134 & _T_244) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15358.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_134 & _T_152) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull carries invalid source ID (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15364.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_134 & _T_152) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15365.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_134 & _T_159) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull address not aligned to size (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15371.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_134 & _T_159) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15372.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_134 & _T_254) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull carries invalid param (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15379.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_134 & _T_254) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15380.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_134 & _T_258) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull contains invalid mask (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15387.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_134 & _T_258) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15388.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_144 & _T_244) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutPartial type unsupported by manager (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15408.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_144 & _T_244) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15409.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_144 & _T_152) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial carries invalid source ID (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15415.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_144 & _T_152) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15416.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_144 & _T_159) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial address not aligned to size (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15422.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_144 & _T_159) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15423.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_144 & _T_254) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial carries invalid param (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15430.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_144 & _T_254) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15431.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_144 & _T_322) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial contains invalid mask (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15440.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_144 & _T_322) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15441.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_154 & _T_337) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Arithmetic type unsupported by manager (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15461.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_154 & _T_337) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15462.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_154 & _T_152) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic carries invalid source ID (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15468.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_154 & _T_152) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15469.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_154 & _T_159) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic address not aligned to size (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15475.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_154 & _T_159) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15476.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_154 & _T_347) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic carries invalid opcode param (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15483.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_154 & _T_347) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15484.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_154 & _T_258) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic contains invalid mask (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15491.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_154 & _T_258) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15492.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_164 & _T_337) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Logical type unsupported by manager (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15512.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_164 & _T_337) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15513.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_164 & _T_152) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical carries invalid source ID (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15519.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_164 & _T_152) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15520.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_164 & _T_159) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical address not aligned to size (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15526.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_164 & _T_159) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15527.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_164 & _T_376) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical carries invalid opcode param (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15534.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_164 & _T_376) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15535.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_164 & _T_258) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical contains invalid mask (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15542.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_164 & _T_258) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15543.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_174 & _T_244) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Hint type unsupported by manager (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15563.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_174 & _T_244) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15564.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_174 & _T_152) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint carries invalid source ID (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15570.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_174 & _T_152) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15571.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_174 & _T_159) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint address not aligned to size (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15577.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_174 & _T_159) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15578.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_174 & _T_405) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint carries invalid opcode param (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15585.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_174 & _T_405) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15586.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_174 & _T_258) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint contains invalid mask (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15593.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_174 & _T_258) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15594.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_174 & _T_172) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint is corrupt (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15601.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_174 & _T_172) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@15602.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_in_d_valid & _T_417) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel has invalid opcode (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15612.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (io_in_d_valid & _T_417) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15613.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_186 & _T_430) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck carries invalid source ID (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15635.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_186 & _T_430) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15636.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_186 & _T_434) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck smaller than a beat (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15643.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_186 & _T_434) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15644.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_186 & _T_438) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseeAck carries invalid param (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15651.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_186 & _T_438) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15652.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_186 & _T_442) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck is corrupt (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15659.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_186 & _T_442) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15660.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_186 & _T_446) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck is denied (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15667.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_186 & _T_446) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15668.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_196 & _T_430) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid source ID (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15677.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_196 & _T_430) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15678.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant smaller than a beat (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15692.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15693.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_196 & _T_461) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid cap param (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15700.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_196 & _T_461) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15701.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_196 & _T_465) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries toN param (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15708.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_196 & _T_465) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15709.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant is corrupt (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15716.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15717.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_206 & _T_430) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid source ID (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15735.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_206 & _T_430) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15736.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_206 & _T_434) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData smaller than a beat (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15750.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_206 & _T_434) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15751.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_206 & _T_461) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid cap param (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15758.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_206 & _T_461) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15759.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_206 & _T_465) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries toN param (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15766.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_206 & _T_465) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15767.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_206 & _T_498) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData is denied but not corrupt (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15775.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_206 & _T_498) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15776.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_216 & _T_430) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck carries invalid source ID (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15794.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_216 & _T_430) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15795.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_216 & _T_438) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck carries invalid param (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15802.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_216 & _T_438) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15803.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_216 & _T_442) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck is corrupt (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15810.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_216 & _T_442) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15811.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_222 & _T_430) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData carries invalid source ID (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15829.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_222 & _T_430) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15830.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_222 & _T_438) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData carries invalid param (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15837.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_222 & _T_438) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15838.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_222 & _T_498) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData is denied but not corrupt (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15846.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_222 & _T_498) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15847.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_228 & _T_430) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck carries invalid source ID (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15865.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_228 & _T_430) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15866.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_228 & _T_438) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck carries invalid param (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15873.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_228 & _T_438) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15874.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_228 & _T_442) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck is corrupt (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15881.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_228 & _T_442) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@15882.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_in_b_valid & _T_708) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel Probe carries unmanaged address (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16077.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (io_in_b_valid & _T_708) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16078.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_in_b_valid & _T_714) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel Probe address not aligned to size (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16091.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (io_in_b_valid & _T_714) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16092.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_in_b_valid & _T_718) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel Probe carries invalid cap param (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16099.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (io_in_b_valid & _T_718) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16100.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_234 & _T_924) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAck carries unmanaged address (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16496.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_234 & _T_924) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16497.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_234 & _T_927) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAck carries invalid source ID (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16503.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_234 & _T_927) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16504.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_234 & _T_931) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAck smaller than a beat (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16511.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_234 & _T_931) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16512.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_234 & _T_934) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAck address not aligned to size (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16518.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_234 & _T_934) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16519.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_234 & _T_938) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAck carries invalid report param (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16526.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_234 & _T_938) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16527.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_234 & _T_942) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAck is corrupt (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16534.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_234 & _T_942) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16535.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_246 & _T_924) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAckData carries unmanaged address (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16544.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_246 & _T_924) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16545.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_246 & _T_927) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAckData carries invalid source ID (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16551.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_246 & _T_927) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16552.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_246 & _T_931) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAckData smaller than a beat (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16559.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_246 & _T_931) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16560.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_246 & _T_934) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAckData address not aligned to size (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16566.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_246 & _T_934) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16567.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_246 & _T_938) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAckData carries invalid report param (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16574.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_246 & _T_938) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16575.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_256 & _T_973) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel carries Release type unsupported by manager (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16593.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_256 & _T_973) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16594.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_256 & _T_990) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel carries Release from a client which does not support Probe (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16620.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_256 & _T_990) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16621.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_256 & _T_927) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel Release carries invalid source ID (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16627.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_256 & _T_927) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16628.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_256 & _T_931) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel Release smaller than a beat (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16635.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_256 & _T_931) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16636.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_256 & _T_934) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel Release address not aligned to size (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16642.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_256 & _T_934) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16643.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_256 & _T_1004) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel Release carries invalid shrink param (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16650.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_256 & _T_1004) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16651.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_256 & _T_942) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel Release is corrupt (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16658.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_256 & _T_942) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16659.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_270 & _T_973) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel carries ReleaseData type unsupported by manager (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16677.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_270 & _T_973) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16678.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_270 & _T_990) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel carries Release from a client which does not support Probe (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16704.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_270 & _T_990) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16705.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_270 & _T_927) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ReleaseData carries invalid source ID (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16711.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_270 & _T_927) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16712.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_270 & _T_931) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ReleaseData smaller than a beat (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16719.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_270 & _T_931) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16720.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_270 & _T_934) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ReleaseData address not aligned to size (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16726.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_270 & _T_934) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16727.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_270 & _T_1004) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ReleaseData carries invalid shrink param (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16734.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_270 & _T_1004) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16735.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_282 & _T_924) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAck carries unmanaged address (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16744.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_282 & _T_924) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16745.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_282 & _T_927) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAck carries invalid source ID (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16751.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_282 & _T_927) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16752.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_282 & _T_934) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAck address not aligned to size (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16758.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_282 & _T_934) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16759.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_282 & _T_1066) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAck carries invalid param (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16766.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_282 & _T_1066) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16767.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_282 & _T_942) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAck is corrupt (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16774.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_282 & _T_942) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16775.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_292 & _T_924) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAckData carries unmanaged address (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16784.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_292 & _T_924) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16785.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_292 & _T_927) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAckData carries invalid source ID (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16791.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_292 & _T_927) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16792.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_292 & _T_934) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAckData address not aligned to size (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16798.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_292 & _T_934) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16799.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_292 & _T_1066) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAckData carries invalid param (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16806.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_292 & _T_1066) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16807.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_300 & _T_924) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel HintAck carries unmanaged address (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16816.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_300 & _T_924) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16817.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_300 & _T_927) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel HintAck carries invalid source ID (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16823.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_300 & _T_927) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16824.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_300 & _T_934) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel HintAck address not aligned to size (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16830.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_300 & _T_934) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16831.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_300 & _T_1066) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel HintAck carries invalid param (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16838.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_300 & _T_1066) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16839.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_300 & _T_942) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel HintAck is corrupt (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16846.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_300 & _T_942) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16847.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1133 & _T_1137) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel opcode changed within multibeat operation (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16897.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1133 & _T_1137) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16898.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1133 & _T_1141) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel param changed within multibeat operation (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16905.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1133 & _T_1141) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16906.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1133 & _T_1145) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel size changed within multibeat operation (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16913.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1133 & _T_1145) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16914.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1133 & _T_1149) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel source changed within multibeat operation (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16921.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1133 & _T_1149) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16922.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1133 & _T_1153) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel address changed with multibeat operation (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16929.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1133 & _T_1153) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@16930.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1182 & _T_1186) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel opcode changed within multibeat operation (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@16978.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1182 & _T_1186) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@16979.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1182 & _T_1190) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel param changed within multibeat operation (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@16986.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1182 & _T_1190) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@16987.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1182 & _T_1194) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel size changed within multibeat operation (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@16994.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1182 & _T_1194) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@16995.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1182 & _T_1198) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel source changed within multibeat operation (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@17002.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1182 & _T_1198) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@17003.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1182 & _T_1202) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel sink changed with multibeat operation (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@17010.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1182 & _T_1202) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@17011.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1182 & _T_1206) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel denied changed with multibeat operation (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@17018.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1182 & _T_1206) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@17019.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1235 & _T_1243) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel param changed within multibeat operation (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@17076.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1235 & _T_1243) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@17077.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1235 & _T_1255) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel addresss changed with multibeat operation (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@17100.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1235 & _T_1255) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@17101.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1283 & _T_1287) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel opcode changed within multibeat operation (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@17148.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1283 & _T_1287) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@17149.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1283 & _T_1291) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel param changed within multibeat operation (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@17156.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1283 & _T_1291) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@17157.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1283 & _T_1295) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel size changed within multibeat operation (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@17164.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1283 & _T_1295) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@17165.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1283 & _T_1299) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel source changed within multibeat operation (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@17172.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1283 & _T_1299) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@17173.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1283 & _T_1303) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel address changed with multibeat operation (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@17180.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1283 & _T_1303) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@17181.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1362 & _T_1378) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel re-used a source ID (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@17316.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1362 & _T_1378) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@17317.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1401 & _T_1412) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel acknowledged for nothing inflight (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@17367.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1401 & _T_1412) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@17368.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1401 & _T_1425) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper opcode response (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@17384.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1401 & _T_1425) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@17385.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1401 & _T_1432) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper response size (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@17395.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1401 & _T_1432) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@17396.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1439 & _T_1444) begin
          $fwrite(32'h80000002,"Assertion failed: ready check\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@17413.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1439 & _T_1444) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@17414.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1451) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' and 'D' concurrent, despite minlatency 2 (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@17425.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1451) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@17426.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1470) begin
          $fwrite(32'h80000002,"Assertion failed: TileLink timeout expired (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@17453.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1470) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@17454.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1503 & _T_1510) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel re-used a sink ID (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@17507.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1503 & _T_1510) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@17508.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_in_e_valid & _T_1521) begin
          $fwrite(32'h80000002,"Assertion failed: 'E' channel acknowledged for nothing inflight (connected at BusWrapper.scala:180:97)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@17526.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (io_in_e_valid & _T_1521) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@17527.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
