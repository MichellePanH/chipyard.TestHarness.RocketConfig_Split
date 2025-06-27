module TLMonitor_45( // @[:chipyard.TestHarness.RocketConfig.fir@113662.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@113663.4]
  input         reset, // @[:chipyard.TestHarness.RocketConfig.fir@113664.4]
  input         io_in_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@113665.4]
  input         io_in_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@113665.4]
  input  [2:0]  io_in_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@113665.4]
  input  [2:0]  io_in_a_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@113665.4]
  input  [2:0]  io_in_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@113665.4]
  input  [2:0]  io_in_a_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@113665.4]
  input  [31:0] io_in_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@113665.4]
  input  [7:0]  io_in_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@113665.4]
  input         io_in_a_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@113665.4]
  input         io_in_b_ready, // @[:chipyard.TestHarness.RocketConfig.fir@113665.4]
  input         io_in_b_valid, // @[:chipyard.TestHarness.RocketConfig.fir@113665.4]
  input  [1:0]  io_in_b_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@113665.4]
  input  [31:0] io_in_b_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@113665.4]
  input         io_in_c_ready, // @[:chipyard.TestHarness.RocketConfig.fir@113665.4]
  input         io_in_c_valid, // @[:chipyard.TestHarness.RocketConfig.fir@113665.4]
  input  [2:0]  io_in_c_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@113665.4]
  input  [2:0]  io_in_c_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@113665.4]
  input  [2:0]  io_in_c_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@113665.4]
  input  [2:0]  io_in_c_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@113665.4]
  input  [31:0] io_in_c_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@113665.4]
  input         io_in_c_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@113665.4]
  input         io_in_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@113665.4]
  input         io_in_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@113665.4]
  input  [2:0]  io_in_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@113665.4]
  input  [1:0]  io_in_d_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@113665.4]
  input  [2:0]  io_in_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@113665.4]
  input  [2:0]  io_in_d_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@113665.4]
  input  [2:0]  io_in_d_bits_sink, // @[:chipyard.TestHarness.RocketConfig.fir@113665.4]
  input         io_in_d_bits_denied, // @[:chipyard.TestHarness.RocketConfig.fir@113665.4]
  input         io_in_d_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@113665.4]
  input         io_in_e_valid, // @[:chipyard.TestHarness.RocketConfig.fir@113665.4]
  input  [2:0]  io_in_e_bits_sink // @[:chipyard.TestHarness.RocketConfig.fir@113665.4]
);
  wire [31:0] plusarg_reader_out; // @[PlusArg.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116155.4]
  wire  _T_4; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@113676.6]
  wire  _T_5; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@113677.6]
  wire  _T_6; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@113678.6]
  wire  _T_7; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@113679.6]
  wire  _T_9; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@113686.6]
  wire  _T_10; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@113687.6]
  wire  _T_11; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@113688.6]
  wire [12:0] _T_13; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@113690.6]
  wire [5:0] _T_15; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@113692.6]
  wire [31:0] _GEN_71; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@113693.6]
  wire [31:0] _T_16; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@113693.6]
  wire  _T_17; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@113694.6]
  wire [3:0] _T_20; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@113697.6]
  wire [2:0] _T_22; // @[Misc.scala 201:81:chipyard.TestHarness.RocketConfig.fir@113699.6]
  wire  _T_23; // @[Misc.scala 205:21:chipyard.TestHarness.RocketConfig.fir@113700.6]
  wire  _T_26; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@113703.6]
  wire  _T_28; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@113705.6]
  wire  _T_29; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@113706.6]
  wire  _T_31; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@113708.6]
  wire  _T_32; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@113709.6]
  wire  _T_35; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@113712.6]
  wire  _T_36; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@113713.6]
  wire  _T_37; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@113714.6]
  wire  _T_38; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@113715.6]
  wire  _T_39; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@113716.6]
  wire  _T_40; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@113717.6]
  wire  _T_41; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@113718.6]
  wire  _T_42; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@113719.6]
  wire  _T_43; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@113720.6]
  wire  _T_44; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@113721.6]
  wire  _T_45; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@113722.6]
  wire  _T_46; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@113723.6]
  wire  _T_47; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@113724.6]
  wire  _T_50; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@113727.6]
  wire  _T_51; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@113728.6]
  wire  _T_52; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@113729.6]
  wire  _T_53; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@113730.6]
  wire  _T_54; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@113731.6]
  wire  _T_55; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@113732.6]
  wire  _T_56; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@113733.6]
  wire  _T_57; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@113734.6]
  wire  _T_58; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@113735.6]
  wire  _T_59; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@113736.6]
  wire  _T_60; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@113737.6]
  wire  _T_61; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@113738.6]
  wire  _T_62; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@113739.6]
  wire  _T_63; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@113740.6]
  wire  _T_64; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@113741.6]
  wire  _T_65; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@113742.6]
  wire  _T_66; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@113743.6]
  wire  _T_67; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@113744.6]
  wire  _T_68; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@113745.6]
  wire  _T_69; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@113746.6]
  wire  _T_70; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@113747.6]
  wire  _T_71; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@113748.6]
  wire  _T_72; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@113749.6]
  wire  _T_73; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@113750.6]
  wire  _T_74; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@113751.6]
  wire [7:0] _T_81; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@113758.6]
  wire  _T_120; // @[Monitor.scala 79:25:chipyard.TestHarness.RocketConfig.fir@113801.6]
  wire  _T_121; // @[Parameters.scala 92:48:chipyard.TestHarness.RocketConfig.fir@113803.8]
  wire [31:0] _T_123; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@113805.8]
  wire [32:0] _T_124; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@113806.8]
  wire [32:0] _T_126; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@113808.8]
  wire  _T_127; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@113809.8]
  wire  _T_128; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@113810.8]
  wire  _T_131; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@113813.8]
  wire  _T_132; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@113814.8]
  wire  _T_140; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@113831.8]
  wire  _T_148; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@113840.8]
  wire  _T_149; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@113841.8]
  wire  _T_151; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@113847.8]
  wire  _T_152; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@113848.8]
  wire  _T_155; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@113855.8]
  wire  _T_156; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@113856.8]
  wire  _T_158; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@113862.8]
  wire  _T_159; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@113863.8]
  wire  _T_160; // @[Bundles.scala 110:27:chipyard.TestHarness.RocketConfig.fir@113868.8]
  wire  _T_162; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@113870.8]
  wire  _T_163; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@113871.8]
  wire [7:0] _T_164; // @[Monitor.scala 86:18:chipyard.TestHarness.RocketConfig.fir@113876.8]
  wire  _T_165; // @[Monitor.scala 86:31:chipyard.TestHarness.RocketConfig.fir@113877.8]
  wire  _T_167; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@113879.8]
  wire  _T_168; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@113880.8]
  wire  _T_169; // @[Monitor.scala 87:18:chipyard.TestHarness.RocketConfig.fir@113885.8]
  wire  _T_171; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@113887.8]
  wire  _T_172; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@113888.8]
  wire  _T_173; // @[Monitor.scala 90:25:chipyard.TestHarness.RocketConfig.fir@113894.6]
  wire  _T_217; // @[Monitor.scala 97:31:chipyard.TestHarness.RocketConfig.fir@113969.8]
  wire  _T_219; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@113971.8]
  wire  _T_220; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@113972.8]
  wire  _T_230; // @[Monitor.scala 102:25:chipyard.TestHarness.RocketConfig.fir@113995.6]
  wire  _T_232; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@113998.8]
  wire  _T_240; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@114006.8]
  wire  _T_243; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114009.8]
  wire  _T_244; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114010.8]
  wire  _T_251; // @[Monitor.scala 106:31:chipyard.TestHarness.RocketConfig.fir@114029.8]
  wire  _T_253; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114031.8]
  wire  _T_254; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114032.8]
  wire  _T_255; // @[Monitor.scala 107:30:chipyard.TestHarness.RocketConfig.fir@114037.8]
  wire  _T_257; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114039.8]
  wire  _T_258; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114040.8]
  wire  _T_263; // @[Monitor.scala 111:25:chipyard.TestHarness.RocketConfig.fir@114054.6]
  wire  _T_292; // @[Monitor.scala 119:25:chipyard.TestHarness.RocketConfig.fir@114105.6]
  wire [7:0] _T_317; // @[Monitor.scala 124:33:chipyard.TestHarness.RocketConfig.fir@114147.8]
  wire [7:0] _T_318; // @[Monitor.scala 124:31:chipyard.TestHarness.RocketConfig.fir@114148.8]
  wire  _T_319; // @[Monitor.scala 124:40:chipyard.TestHarness.RocketConfig.fir@114149.8]
  wire  _T_321; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114151.8]
  wire  _T_322; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114152.8]
  wire  _T_323; // @[Monitor.scala 127:25:chipyard.TestHarness.RocketConfig.fir@114158.6]
  wire  _T_325; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@114161.8]
  wire  _T_333; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@114169.8]
  wire  _T_336; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114172.8]
  wire  _T_337; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114173.8]
  wire  _T_344; // @[Bundles.scala 140:33:chipyard.TestHarness.RocketConfig.fir@114192.8]
  wire  _T_346; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114194.8]
  wire  _T_347; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114195.8]
  wire  _T_352; // @[Monitor.scala 135:25:chipyard.TestHarness.RocketConfig.fir@114209.6]
  wire  _T_373; // @[Bundles.scala 147:30:chipyard.TestHarness.RocketConfig.fir@114243.8]
  wire  _T_375; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114245.8]
  wire  _T_376; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114246.8]
  wire  _T_381; // @[Monitor.scala 143:25:chipyard.TestHarness.RocketConfig.fir@114260.6]
  wire  _T_402; // @[Bundles.scala 160:28:chipyard.TestHarness.RocketConfig.fir@114294.8]
  wire  _T_404; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114296.8]
  wire  _T_405; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114297.8]
  wire  _T_414; // @[Bundles.scala 44:24:chipyard.TestHarness.RocketConfig.fir@114321.6]
  wire  _T_416; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114323.6]
  wire  _T_417; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114324.6]
  wire  _T_418; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@114329.6]
  wire  _T_419; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@114330.6]
  wire  _T_420; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@114331.6]
  wire  _T_421; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@114332.6]
  wire  _T_423; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@114339.6]
  wire  _T_424; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@114340.6]
  wire  _T_425; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@114341.6]
  wire  _T_427; // @[Monitor.scala 307:25:chipyard.TestHarness.RocketConfig.fir@114343.6]
  wire  _T_429; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114346.8]
  wire  _T_430; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114347.8]
  wire  _T_431; // @[Monitor.scala 309:27:chipyard.TestHarness.RocketConfig.fir@114352.8]
  wire  _T_433; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114354.8]
  wire  _T_434; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114355.8]
  wire  _T_435; // @[Monitor.scala 310:28:chipyard.TestHarness.RocketConfig.fir@114360.8]
  wire  _T_437; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114362.8]
  wire  _T_438; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114363.8]
  wire  _T_439; // @[Monitor.scala 311:15:chipyard.TestHarness.RocketConfig.fir@114368.8]
  wire  _T_441; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114370.8]
  wire  _T_442; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114371.8]
  wire  _T_443; // @[Monitor.scala 312:15:chipyard.TestHarness.RocketConfig.fir@114376.8]
  wire  _T_445; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114378.8]
  wire  _T_446; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114379.8]
  wire  _T_447; // @[Monitor.scala 315:25:chipyard.TestHarness.RocketConfig.fir@114385.6]
  wire  _T_458; // @[Bundles.scala 104:26:chipyard.TestHarness.RocketConfig.fir@114409.8]
  wire  _T_460; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114411.8]
  wire  _T_461; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114412.8]
  wire  _T_462; // @[Monitor.scala 320:28:chipyard.TestHarness.RocketConfig.fir@114417.8]
  wire  _T_464; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114419.8]
  wire  _T_465; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114420.8]
  wire  _T_475; // @[Monitor.scala 325:25:chipyard.TestHarness.RocketConfig.fir@114443.6]
  wire  _T_495; // @[Monitor.scala 331:30:chipyard.TestHarness.RocketConfig.fir@114484.8]
  wire  _T_497; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114486.8]
  wire  _T_498; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114487.8]
  wire  _T_504; // @[Monitor.scala 335:25:chipyard.TestHarness.RocketConfig.fir@114502.6]
  wire  _T_521; // @[Monitor.scala 343:25:chipyard.TestHarness.RocketConfig.fir@114537.6]
  wire  _T_539; // @[Monitor.scala 351:25:chipyard.TestHarness.RocketConfig.fir@114573.6]
  wire [31:0] _T_598; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@114660.6]
  wire [32:0] _T_599; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@114661.6]
  wire [32:0] _T_601; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@114663.6]
  wire  _T_602; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@114664.6]
  wire [31:0] _T_608; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@114672.6]
  wire  _T_609; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@114673.6]
  wire  _T_707; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114788.8]
  wire  _T_708; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114789.8]
  wire  _T_713; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114802.8]
  wire  _T_714; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114803.8]
  wire  _T_715; // @[Bundles.scala 104:26:chipyard.TestHarness.RocketConfig.fir@114808.8]
  wire  _T_717; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114810.8]
  wire  _T_718; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114811.8]
  wire  _T_863; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@115135.6]
  wire  _T_864; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@115136.6]
  wire  _T_865; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@115137.6]
  wire  _T_866; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@115138.6]
  wire  _T_868; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@115145.6]
  wire  _T_869; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@115146.6]
  wire  _T_870; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@115147.6]
  wire [12:0] _T_872; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@115149.6]
  wire [5:0] _T_874; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@115151.6]
  wire [31:0] _GEN_72; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@115152.6]
  wire [31:0] _T_875; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@115152.6]
  wire  _T_876; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@115153.6]
  wire [31:0] _T_877; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@115154.6]
  wire [32:0] _T_878; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@115155.6]
  wire [32:0] _T_880; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@115157.6]
  wire  _T_881; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@115158.6]
  wire  _T_921; // @[Monitor.scala 239:25:chipyard.TestHarness.RocketConfig.fir@115204.6]
  wire  _T_923; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115207.8]
  wire  _T_924; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115208.8]
  wire  _T_926; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115214.8]
  wire  _T_927; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115215.8]
  wire  _T_928; // @[Monitor.scala 242:30:chipyard.TestHarness.RocketConfig.fir@115220.8]
  wire  _T_930; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115222.8]
  wire  _T_931; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115223.8]
  wire  _T_933; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115229.8]
  wire  _T_934; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115230.8]
  wire  _T_935; // @[Bundles.scala 122:29:chipyard.TestHarness.RocketConfig.fir@115235.8]
  wire  _T_937; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115237.8]
  wire  _T_938; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115238.8]
  wire  _T_939; // @[Monitor.scala 245:18:chipyard.TestHarness.RocketConfig.fir@115243.8]
  wire  _T_941; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115245.8]
  wire  _T_942; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115246.8]
  wire  _T_943; // @[Monitor.scala 248:25:chipyard.TestHarness.RocketConfig.fir@115252.6]
  wire  _T_961; // @[Monitor.scala 256:25:chipyard.TestHarness.RocketConfig.fir@115292.6]
  wire  _T_962; // @[Parameters.scala 92:48:chipyard.TestHarness.RocketConfig.fir@115294.8]
  wire  _T_969; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@115301.8]
  wire  _T_972; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115304.8]
  wire  _T_973; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115305.8]
  wire  _T_981; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@115322.8]
  wire  _T_989; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115331.8]
  wire  _T_990; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115332.8]
  wire  _T_1001; // @[Bundles.scala 116:29:chipyard.TestHarness.RocketConfig.fir@115359.8]
  wire  _T_1003; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115361.8]
  wire  _T_1004; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115362.8]
  wire  _T_1009; // @[Monitor.scala 266:25:chipyard.TestHarness.RocketConfig.fir@115376.6]
  wire  _T_1053; // @[Monitor.scala 275:25:chipyard.TestHarness.RocketConfig.fir@115452.6]
  wire  _T_1063; // @[Monitor.scala 279:31:chipyard.TestHarness.RocketConfig.fir@115475.8]
  wire  _T_1065; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115477.8]
  wire  _T_1066; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115478.8]
  wire  _T_1071; // @[Monitor.scala 283:25:chipyard.TestHarness.RocketConfig.fir@115492.6]
  wire  _T_1085; // @[Monitor.scala 290:25:chipyard.TestHarness.RocketConfig.fir@115524.6]
  wire  _T_1107; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@115575.4]
  wire  _T_1114; // @[Edges.scala 93:28:chipyard.TestHarness.RocketConfig.fir@115582.4]
  reg [2:0] _T_1116; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@115584.4]
  reg [31:0] _RAND_0;
  wire [2:0] _T_1118; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@115586.4]
  wire  _T_1119; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@115587.4]
  reg [2:0] _T_1127; // @[Monitor.scala 381:22:chipyard.TestHarness.RocketConfig.fir@115598.4]
  reg [31:0] _RAND_1;
  reg [2:0] _T_1128; // @[Monitor.scala 382:22:chipyard.TestHarness.RocketConfig.fir@115599.4]
  reg [31:0] _RAND_2;
  reg [2:0] _T_1129; // @[Monitor.scala 383:22:chipyard.TestHarness.RocketConfig.fir@115600.4]
  reg [31:0] _RAND_3;
  reg [2:0] _T_1130; // @[Monitor.scala 384:22:chipyard.TestHarness.RocketConfig.fir@115601.4]
  reg [31:0] _RAND_4;
  reg [31:0] _T_1131; // @[Monitor.scala 385:22:chipyard.TestHarness.RocketConfig.fir@115602.4]
  reg [31:0] _RAND_5;
  wire  _T_1132; // @[Monitor.scala 386:22:chipyard.TestHarness.RocketConfig.fir@115603.4]
  wire  _T_1133; // @[Monitor.scala 386:19:chipyard.TestHarness.RocketConfig.fir@115604.4]
  wire  _T_1134; // @[Monitor.scala 387:32:chipyard.TestHarness.RocketConfig.fir@115606.6]
  wire  _T_1136; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115608.6]
  wire  _T_1137; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115609.6]
  wire  _T_1138; // @[Monitor.scala 388:32:chipyard.TestHarness.RocketConfig.fir@115614.6]
  wire  _T_1140; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115616.6]
  wire  _T_1141; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115617.6]
  wire  _T_1142; // @[Monitor.scala 389:32:chipyard.TestHarness.RocketConfig.fir@115622.6]
  wire  _T_1144; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115624.6]
  wire  _T_1145; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115625.6]
  wire  _T_1146; // @[Monitor.scala 390:32:chipyard.TestHarness.RocketConfig.fir@115630.6]
  wire  _T_1148; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115632.6]
  wire  _T_1149; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115633.6]
  wire  _T_1150; // @[Monitor.scala 391:32:chipyard.TestHarness.RocketConfig.fir@115638.6]
  wire  _T_1152; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115640.6]
  wire  _T_1153; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115641.6]
  wire  _T_1155; // @[Monitor.scala 393:20:chipyard.TestHarness.RocketConfig.fir@115648.4]
  wire  _T_1156; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@115656.4]
  wire [12:0] _T_1158; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@115658.4]
  wire [5:0] _T_1160; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@115660.4]
  reg [2:0] _T_1164; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@115664.4]
  reg [31:0] _RAND_6;
  wire [2:0] _T_1166; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@115666.4]
  wire  _T_1167; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@115667.4]
  reg [2:0] _T_1175; // @[Monitor.scala 532:22:chipyard.TestHarness.RocketConfig.fir@115678.4]
  reg [31:0] _RAND_7;
  reg [1:0] _T_1176; // @[Monitor.scala 533:22:chipyard.TestHarness.RocketConfig.fir@115679.4]
  reg [31:0] _RAND_8;
  reg [2:0] _T_1177; // @[Monitor.scala 534:22:chipyard.TestHarness.RocketConfig.fir@115680.4]
  reg [31:0] _RAND_9;
  reg [2:0] _T_1178; // @[Monitor.scala 535:22:chipyard.TestHarness.RocketConfig.fir@115681.4]
  reg [31:0] _RAND_10;
  reg [2:0] _T_1179; // @[Monitor.scala 536:22:chipyard.TestHarness.RocketConfig.fir@115682.4]
  reg [31:0] _RAND_11;
  reg  _T_1180; // @[Monitor.scala 537:22:chipyard.TestHarness.RocketConfig.fir@115683.4]
  reg [31:0] _RAND_12;
  wire  _T_1181; // @[Monitor.scala 538:22:chipyard.TestHarness.RocketConfig.fir@115684.4]
  wire  _T_1182; // @[Monitor.scala 538:19:chipyard.TestHarness.RocketConfig.fir@115685.4]
  wire  _T_1183; // @[Monitor.scala 539:29:chipyard.TestHarness.RocketConfig.fir@115687.6]
  wire  _T_1185; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@115689.6]
  wire  _T_1186; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@115690.6]
  wire  _T_1187; // @[Monitor.scala 540:29:chipyard.TestHarness.RocketConfig.fir@115695.6]
  wire  _T_1189; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@115697.6]
  wire  _T_1190; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@115698.6]
  wire  _T_1191; // @[Monitor.scala 541:29:chipyard.TestHarness.RocketConfig.fir@115703.6]
  wire  _T_1193; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@115705.6]
  wire  _T_1194; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@115706.6]
  wire  _T_1195; // @[Monitor.scala 542:29:chipyard.TestHarness.RocketConfig.fir@115711.6]
  wire  _T_1197; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@115713.6]
  wire  _T_1198; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@115714.6]
  wire  _T_1199; // @[Monitor.scala 543:29:chipyard.TestHarness.RocketConfig.fir@115719.6]
  wire  _T_1201; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@115721.6]
  wire  _T_1202; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@115722.6]
  wire  _T_1203; // @[Monitor.scala 544:29:chipyard.TestHarness.RocketConfig.fir@115727.6]
  wire  _T_1205; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@115729.6]
  wire  _T_1206; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@115730.6]
  wire  _T_1208; // @[Monitor.scala 546:20:chipyard.TestHarness.RocketConfig.fir@115737.4]
  wire  _T_1209; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@115746.4]
  reg [2:0] _T_1218; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@115755.4]
  reg [31:0] _RAND_13;
  wire [2:0] _T_1220; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@115757.4]
  wire  _T_1221; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@115758.4]
  reg [1:0] _T_1230; // @[Monitor.scala 405:22:chipyard.TestHarness.RocketConfig.fir@115770.4]
  reg [31:0] _RAND_14;
  reg [31:0] _T_1233; // @[Monitor.scala 408:22:chipyard.TestHarness.RocketConfig.fir@115773.4]
  reg [31:0] _RAND_15;
  wire  _T_1234; // @[Monitor.scala 409:22:chipyard.TestHarness.RocketConfig.fir@115774.4]
  wire  _T_1235; // @[Monitor.scala 409:19:chipyard.TestHarness.RocketConfig.fir@115775.4]
  wire  _T_1240; // @[Monitor.scala 411:32:chipyard.TestHarness.RocketConfig.fir@115785.6]
  wire  _T_1242; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115787.6]
  wire  _T_1243; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115788.6]
  wire  _T_1252; // @[Monitor.scala 414:32:chipyard.TestHarness.RocketConfig.fir@115809.6]
  wire  _T_1254; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115811.6]
  wire  _T_1255; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115812.6]
  wire  _T_1257; // @[Monitor.scala 416:20:chipyard.TestHarness.RocketConfig.fir@115819.4]
  wire  _T_1258; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@115827.4]
  reg [2:0] _T_1266; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@115835.4]
  reg [31:0] _RAND_16;
  wire [2:0] _T_1268; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@115837.4]
  wire  _T_1269; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@115838.4]
  reg [2:0] _T_1277; // @[Monitor.scala 509:22:chipyard.TestHarness.RocketConfig.fir@115849.4]
  reg [31:0] _RAND_17;
  reg [2:0] _T_1278; // @[Monitor.scala 510:22:chipyard.TestHarness.RocketConfig.fir@115850.4]
  reg [31:0] _RAND_18;
  reg [2:0] _T_1279; // @[Monitor.scala 511:22:chipyard.TestHarness.RocketConfig.fir@115851.4]
  reg [31:0] _RAND_19;
  reg [2:0] _T_1280; // @[Monitor.scala 512:22:chipyard.TestHarness.RocketConfig.fir@115852.4]
  reg [31:0] _RAND_20;
  reg [31:0] _T_1281; // @[Monitor.scala 513:22:chipyard.TestHarness.RocketConfig.fir@115853.4]
  reg [31:0] _RAND_21;
  wire  _T_1282; // @[Monitor.scala 514:22:chipyard.TestHarness.RocketConfig.fir@115854.4]
  wire  _T_1283; // @[Monitor.scala 514:19:chipyard.TestHarness.RocketConfig.fir@115855.4]
  wire  _T_1284; // @[Monitor.scala 515:32:chipyard.TestHarness.RocketConfig.fir@115857.6]
  wire  _T_1286; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115859.6]
  wire  _T_1287; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115860.6]
  wire  _T_1288; // @[Monitor.scala 516:32:chipyard.TestHarness.RocketConfig.fir@115865.6]
  wire  _T_1290; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115867.6]
  wire  _T_1291; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115868.6]
  wire  _T_1292; // @[Monitor.scala 517:32:chipyard.TestHarness.RocketConfig.fir@115873.6]
  wire  _T_1294; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115875.6]
  wire  _T_1295; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115876.6]
  wire  _T_1296; // @[Monitor.scala 518:32:chipyard.TestHarness.RocketConfig.fir@115881.6]
  wire  _T_1298; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115883.6]
  wire  _T_1299; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115884.6]
  wire  _T_1300; // @[Monitor.scala 519:32:chipyard.TestHarness.RocketConfig.fir@115889.6]
  wire  _T_1302; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115891.6]
  wire  _T_1303; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115892.6]
  wire  _T_1305; // @[Monitor.scala 521:20:chipyard.TestHarness.RocketConfig.fir@115899.4]
  reg [4:0] inflight; // @[Monitor.scala 608:27:chipyard.TestHarness.RocketConfig.fir@115907.4]
  reg [31:0] _RAND_22;
  reg [19:0] inflight_opcodes; // @[Monitor.scala 610:35:chipyard.TestHarness.RocketConfig.fir@115908.4]
  reg [31:0] _RAND_23;
  reg [19:0] inflight_sizes; // @[Monitor.scala 612:33:chipyard.TestHarness.RocketConfig.fir@115909.4]
  reg [31:0] _RAND_24;
  reg [2:0] _T_1315; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@115919.4]
  reg [31:0] _RAND_25;
  wire [2:0] _T_1317; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@115921.4]
  wire  a_first; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@115922.4]
  reg [2:0] _T_1333; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@115941.4]
  reg [31:0] _RAND_26;
  wire [2:0] _T_1335; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@115943.4]
  wire  d_first; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@115944.4]
  wire [4:0] _GEN_73; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@115963.4]
  wire [5:0] _T_1343; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@115963.4]
  wire [19:0] _T_1344; // @[Monitor.scala 629:44:chipyard.TestHarness.RocketConfig.fir@115964.4]
  wire [15:0] _T_1348; // @[Monitor.scala 606:57:chipyard.TestHarness.RocketConfig.fir@115968.4]
  wire [19:0] _GEN_74; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@115969.4]
  wire [19:0] _T_1349; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@115969.4]
  wire [19:0] _T_1350; // @[Monitor.scala 629:152:chipyard.TestHarness.RocketConfig.fir@115970.4]
  wire [19:0] _T_1352; // @[Monitor.scala 633:40:chipyard.TestHarness.RocketConfig.fir@115975.4]
  wire [19:0] _T_1357; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@115980.4]
  wire [19:0] _T_1358; // @[Monitor.scala 633:144:chipyard.TestHarness.RocketConfig.fir@115981.4]
  wire  _T_1362; // @[Monitor.scala 643:27:chipyard.TestHarness.RocketConfig.fir@116006.4]
  wire [7:0] _T_1364; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@116009.6]
  wire [3:0] _T_1365; // @[Monitor.scala 645:53:chipyard.TestHarness.RocketConfig.fir@116011.6]
  wire [3:0] _T_1366; // @[Monitor.scala 645:61:chipyard.TestHarness.RocketConfig.fir@116012.6]
  wire [3:0] _T_1367; // @[Monitor.scala 646:49:chipyard.TestHarness.RocketConfig.fir@116014.6]
  wire [3:0] _T_1368; // @[Monitor.scala 646:57:chipyard.TestHarness.RocketConfig.fir@116015.6]
  wire [4:0] _GEN_79; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@116017.6]
  wire [5:0] _T_1369; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@116017.6]
  wire [3:0] a_opcodes_set_interm; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@116008.4]
  wire [66:0] _GEN_80; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@116018.6]
  wire [66:0] _T_1370; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@116018.6]
  wire [3:0] a_sizes_set_interm; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@116008.4]
  wire [66:0] _GEN_82; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@116021.6]
  wire [66:0] _T_1372; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@116021.6]
  wire [4:0] _T_1373; // @[Monitor.scala 649:26:chipyard.TestHarness.RocketConfig.fir@116023.6]
  wire  _T_1375; // @[Monitor.scala 649:17:chipyard.TestHarness.RocketConfig.fir@116025.6]
  wire  _T_1377; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116027.6]
  wire  _T_1378; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116028.6]
  wire [7:0] _GEN_27; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@116008.4]
  wire [66:0] _GEN_30; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@116008.4]
  wire [66:0] _GEN_31; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@116008.4]
  wire  _T_1381; // @[Monitor.scala 660:27:chipyard.TestHarness.RocketConfig.fir@116042.4]
  wire  _T_1383; // @[Monitor.scala 660:75:chipyard.TestHarness.RocketConfig.fir@116044.4]
  wire  _T_1384; // @[Monitor.scala 660:72:chipyard.TestHarness.RocketConfig.fir@116045.4]
  wire [7:0] _T_1385; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@116047.6]
  wire [78:0] _GEN_84; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@116054.6]
  wire [78:0] _T_1391; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@116054.6]
  wire [7:0] _GEN_32; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@116046.4]
  wire [78:0] _GEN_33; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@116046.4]
  wire  _T_1398; // @[Monitor.scala 665:26:chipyard.TestHarness.RocketConfig.fir@116064.4]
  wire  _T_1401; // @[Monitor.scala 665:71:chipyard.TestHarness.RocketConfig.fir@116067.4]
  wire [4:0] _T_1402; // @[Monitor.scala 666:25:chipyard.TestHarness.RocketConfig.fir@116069.6]
  wire  _T_1404; // @[Monitor.scala 666:93:chipyard.TestHarness.RocketConfig.fir@116071.6]
  wire  _T_1405; // @[Monitor.scala 666:68:chipyard.TestHarness.RocketConfig.fir@116072.6]
  wire  _T_1406; // @[Monitor.scala 666:142:chipyard.TestHarness.RocketConfig.fir@116073.6]
  wire  _T_1407; // @[Monitor.scala 666:119:chipyard.TestHarness.RocketConfig.fir@116074.6]
  wire  _T_1408; // @[Monitor.scala 666:166:chipyard.TestHarness.RocketConfig.fir@116075.6]
  wire  _T_1409; // @[Monitor.scala 666:49:chipyard.TestHarness.RocketConfig.fir@116076.6]
  wire  _T_1411; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@116078.6]
  wire  _T_1412; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@116079.6]
  wire [3:0] a_opcode_lookup; // @[:chipyard.TestHarness.RocketConfig.fir@115961.4 :chipyard.TestHarness.RocketConfig.fir@115962.4 Monitor.scala 629:21:chipyard.TestHarness.RocketConfig.fir@115971.4]
  wire [2:0] _GEN_37; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@116085.6]
  wire [2:0] _GEN_38; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@116085.6]
  wire [2:0] _GEN_39; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@116085.6]
  wire [2:0] _GEN_40; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@116085.6]
  wire [2:0] _GEN_41; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@116085.6]
  wire [2:0] _GEN_42; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@116085.6]
  wire  _T_1414; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@116085.6]
  wire [2:0] _GEN_49; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@116087.6]
  wire [2:0] _GEN_50; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@116087.6]
  wire  _T_1416; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@116087.6]
  wire  _T_1417; // @[Monitor.scala 667:71:chipyard.TestHarness.RocketConfig.fir@116088.6]
  wire [2:0] _GEN_53; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@116089.6]
  wire [2:0] _GEN_54; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@116089.6]
  wire [2:0] _GEN_55; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@116089.6]
  wire [2:0] _GEN_56; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@116089.6]
  wire [2:0] _GEN_57; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@116089.6]
  wire [2:0] _GEN_58; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@116089.6]
  wire  _T_1418; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@116089.6]
  wire [2:0] _GEN_65; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@116090.6]
  wire [2:0] _GEN_66; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@116090.6]
  wire  _T_1419; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@116090.6]
  wire  _T_1420; // @[Monitor.scala 668:99:chipyard.TestHarness.RocketConfig.fir@116091.6]
  wire  _T_1421; // @[Monitor.scala 668:34:chipyard.TestHarness.RocketConfig.fir@116092.6]
  wire  _T_1422; // @[Monitor.scala 668:15:chipyard.TestHarness.RocketConfig.fir@116093.6]
  wire  _T_1424; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@116095.6]
  wire  _T_1425; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@116096.6]
  wire [3:0] a_size_lookup; // @[:chipyard.TestHarness.RocketConfig.fir@115972.4 :chipyard.TestHarness.RocketConfig.fir@115973.4 Monitor.scala 633:19:chipyard.TestHarness.RocketConfig.fir@115982.4]
  wire [3:0] _GEN_87; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@116101.6]
  wire  _T_1426; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@116101.6]
  wire  _T_1428; // @[Monitor.scala 670:72:chipyard.TestHarness.RocketConfig.fir@116103.6]
  wire  _T_1429; // @[Monitor.scala 670:53:chipyard.TestHarness.RocketConfig.fir@116104.6]
  wire  _T_1431; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@116106.6]
  wire  _T_1432; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@116107.6]
  wire  _T_1434; // @[Monitor.scala 672:36:chipyard.TestHarness.RocketConfig.fir@116114.4]
  wire  _T_1435; // @[Monitor.scala 672:47:chipyard.TestHarness.RocketConfig.fir@116115.4]
  wire  _T_1437; // @[Monitor.scala 672:65:chipyard.TestHarness.RocketConfig.fir@116117.4]
  wire  _T_1439; // @[Monitor.scala 672:116:chipyard.TestHarness.RocketConfig.fir@116119.4]
  wire  _T_1440; // @[Monitor.scala 673:15:chipyard.TestHarness.RocketConfig.fir@116121.6]
  wire  _T_1441; // @[Monitor.scala 673:32:chipyard.TestHarness.RocketConfig.fir@116122.6]
  wire  _T_1443; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@116124.6]
  wire  _T_1444; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@116125.6]
  wire [4:0] a_set; // @[:chipyard.TestHarness.RocketConfig.fir@115955.4 :chipyard.TestHarness.RocketConfig.fir@115956.4 Monitor.scala 644:13:chipyard.TestHarness.RocketConfig.fir@116010.6]
  wire [4:0] d_clr; // @[:chipyard.TestHarness.RocketConfig.fir@116034.4 :chipyard.TestHarness.RocketConfig.fir@116035.4 Monitor.scala 661:13:chipyard.TestHarness.RocketConfig.fir@116048.6]
  wire  _T_1445; // @[Monitor.scala 677:20:chipyard.TestHarness.RocketConfig.fir@116131.4]
  wire  _T_1446; // @[Monitor.scala 677:40:chipyard.TestHarness.RocketConfig.fir@116132.4]
  wire  _T_1447; // @[Monitor.scala 677:33:chipyard.TestHarness.RocketConfig.fir@116133.4]
  wire  _T_1448; // @[Monitor.scala 677:30:chipyard.TestHarness.RocketConfig.fir@116134.4]
  wire  _T_1450; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@116136.4]
  wire  _T_1451; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@116137.4]
  wire [4:0] _T_1452; // @[Monitor.scala 680:27:chipyard.TestHarness.RocketConfig.fir@116142.4]
  wire [4:0] _T_1453; // @[Monitor.scala 680:38:chipyard.TestHarness.RocketConfig.fir@116143.4]
  wire [4:0] _T_1454; // @[Monitor.scala 680:36:chipyard.TestHarness.RocketConfig.fir@116144.4]
  wire [19:0] a_opcodes_set; // @[:chipyard.TestHarness.RocketConfig.fir@115957.4 :chipyard.TestHarness.RocketConfig.fir@115958.4 Monitor.scala 647:21:chipyard.TestHarness.RocketConfig.fir@116019.6]
  wire [19:0] _T_1455; // @[Monitor.scala 681:43:chipyard.TestHarness.RocketConfig.fir@116146.4]
  wire [19:0] d_opcodes_clr; // @[:chipyard.TestHarness.RocketConfig.fir@116036.4 :chipyard.TestHarness.RocketConfig.fir@116037.4 Monitor.scala 662:21:chipyard.TestHarness.RocketConfig.fir@116055.6]
  wire [19:0] _T_1456; // @[Monitor.scala 681:62:chipyard.TestHarness.RocketConfig.fir@116147.4]
  wire [19:0] _T_1457; // @[Monitor.scala 681:60:chipyard.TestHarness.RocketConfig.fir@116148.4]
  wire [19:0] a_sizes_set; // @[:chipyard.TestHarness.RocketConfig.fir@115959.4 :chipyard.TestHarness.RocketConfig.fir@115960.4 Monitor.scala 648:19:chipyard.TestHarness.RocketConfig.fir@116022.6]
  wire [19:0] _T_1458; // @[Monitor.scala 682:39:chipyard.TestHarness.RocketConfig.fir@116150.4]
  wire [19:0] _T_1460; // @[Monitor.scala 682:54:chipyard.TestHarness.RocketConfig.fir@116152.4]
  reg [31:0] _T_1461; // @[Monitor.scala 684:27:chipyard.TestHarness.RocketConfig.fir@116154.4]
  reg [31:0] _RAND_27;
  wire  _T_1462; // @[Monitor.scala 687:26:chipyard.TestHarness.RocketConfig.fir@116157.4]
  wire  _T_1463; // @[Monitor.scala 687:16:chipyard.TestHarness.RocketConfig.fir@116158.4]
  wire  _T_1464; // @[Monitor.scala 687:39:chipyard.TestHarness.RocketConfig.fir@116159.4]
  wire  _T_1465; // @[Monitor.scala 687:30:chipyard.TestHarness.RocketConfig.fir@116160.4]
  wire  _T_1466; // @[Monitor.scala 687:59:chipyard.TestHarness.RocketConfig.fir@116161.4]
  wire  _T_1467; // @[Monitor.scala 687:47:chipyard.TestHarness.RocketConfig.fir@116162.4]
  wire  _T_1469; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116164.4]
  wire  _T_1470; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116165.4]
  wire [31:0] _T_1472; // @[Monitor.scala 689:26:chipyard.TestHarness.RocketConfig.fir@116171.4]
  wire  _T_1475; // @[Monitor.scala 690:27:chipyard.TestHarness.RocketConfig.fir@116175.4]
  reg [7:0] _T_1476; // @[Monitor.scala 694:27:chipyard.TestHarness.RocketConfig.fir@116179.4]
  reg [31:0] _RAND_28;
  reg [2:0] _T_1485; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@116188.4]
  reg [31:0] _RAND_29;
  wire [2:0] _T_1487; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@116190.4]
  wire  _T_1488; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@116191.4]
  wire  _T_1498; // @[Monitor.scala 700:27:chipyard.TestHarness.RocketConfig.fir@116205.4]
  wire  _T_1501; // @[Edges.scala 72:43:chipyard.TestHarness.RocketConfig.fir@116208.4]
  wire  _T_1502; // @[Edges.scala 72:40:chipyard.TestHarness.RocketConfig.fir@116209.4]
  wire  _T_1503; // @[Monitor.scala 700:38:chipyard.TestHarness.RocketConfig.fir@116210.4]
  wire [7:0] _T_1504; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@116212.6]
  wire [7:0] _T_1505; // @[Monitor.scala 702:23:chipyard.TestHarness.RocketConfig.fir@116214.6]
  wire  _T_1507; // @[Monitor.scala 702:14:chipyard.TestHarness.RocketConfig.fir@116216.6]
  wire  _T_1509; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@116218.6]
  wire  _T_1510; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@116219.6]
  wire [7:0] _GEN_69; // @[Monitor.scala 700:72:chipyard.TestHarness.RocketConfig.fir@116211.4]
  wire [7:0] _T_1515; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@116231.6]
  wire [7:0] _T_1516; // @[Monitor.scala 708:24:chipyard.TestHarness.RocketConfig.fir@116233.6]
  wire [7:0] _T_1517; // @[Monitor.scala 708:35:chipyard.TestHarness.RocketConfig.fir@116234.6]
  wire  _T_1520; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116237.6]
  wire  _T_1521; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116238.6]
  wire [7:0] _GEN_70; // @[Monitor.scala 706:73:chipyard.TestHarness.RocketConfig.fir@116230.4]
  wire [7:0] _T_1522; // @[Monitor.scala 713:27:chipyard.TestHarness.RocketConfig.fir@116244.4]
  wire [7:0] _T_1523; // @[Monitor.scala 713:38:chipyard.TestHarness.RocketConfig.fir@116245.4]
  wire [7:0] _T_1524; // @[Monitor.scala 713:36:chipyard.TestHarness.RocketConfig.fir@116246.4]
  wire  _GEN_88; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@113816.10]
  wire  _GEN_104; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@113909.10]
  wire  _GEN_122; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114012.10]
  wire  _GEN_134; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114071.10]
  wire  _GEN_144; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114122.10]
  wire  _GEN_154; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114175.10]
  wire  _GEN_164; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114226.10]
  wire  _GEN_174; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114277.10]
  wire  _GEN_186; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114349.10]
  wire  _GEN_196; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114391.10]
  wire  _GEN_206; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114449.10]
  wire  _GEN_216; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114508.10]
  wire  _GEN_222; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114543.10]
  wire  _GEN_228; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114579.10]
  wire  _GEN_234; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115210.10]
  wire  _GEN_246; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115258.10]
  wire  _GEN_256; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115307.10]
  wire  _GEN_270; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115391.10]
  wire  _GEN_282; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115458.10]
  wire  _GEN_292; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115498.10]
  wire  _GEN_300; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115530.10]
  plusarg_reader #(.FORMAT("tilelink_timeout=%d"), .DEFAULT(0), .WIDTH(32)) plusarg_reader ( // @[PlusArg.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116155.4]
    .out(plusarg_reader_out)
  );
  assign _T_4 = io_in_a_bits_source == 3'h4; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@113676.6]
  assign _T_5 = io_in_a_bits_source == 3'h0; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@113677.6]
  assign _T_6 = io_in_a_bits_source == 3'h1; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@113678.6]
  assign _T_7 = io_in_a_bits_source == 3'h2; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@113679.6]
  assign _T_9 = _T_4 | _T_5; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@113686.6]
  assign _T_10 = _T_9 | _T_6; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@113687.6]
  assign _T_11 = _T_10 | _T_7; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@113688.6]
  assign _T_13 = 13'h3f << io_in_a_bits_size; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@113690.6]
  assign _T_15 = ~_T_13[5:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@113692.6]
  assign _GEN_71 = {{26'd0}, _T_15}; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@113693.6]
  assign _T_16 = io_in_a_bits_address & _GEN_71; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@113693.6]
  assign _T_17 = _T_16 == 32'h0; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@113694.6]
  assign _T_20 = 4'h1 << io_in_a_bits_size[1:0]; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@113697.6]
  assign _T_22 = _T_20[2:0] | 3'h1; // @[Misc.scala 201:81:chipyard.TestHarness.RocketConfig.fir@113699.6]
  assign _T_23 = io_in_a_bits_size >= 3'h3; // @[Misc.scala 205:21:chipyard.TestHarness.RocketConfig.fir@113700.6]
  assign _T_26 = ~io_in_a_bits_address[2]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@113703.6]
  assign _T_28 = _T_22[2] & _T_26; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@113705.6]
  assign _T_29 = _T_23 | _T_28; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@113706.6]
  assign _T_31 = _T_22[2] & io_in_a_bits_address[2]; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@113708.6]
  assign _T_32 = _T_23 | _T_31; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@113709.6]
  assign _T_35 = ~io_in_a_bits_address[1]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@113712.6]
  assign _T_36 = _T_26 & _T_35; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@113713.6]
  assign _T_37 = _T_22[1] & _T_36; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@113714.6]
  assign _T_38 = _T_29 | _T_37; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@113715.6]
  assign _T_39 = _T_26 & io_in_a_bits_address[1]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@113716.6]
  assign _T_40 = _T_22[1] & _T_39; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@113717.6]
  assign _T_41 = _T_29 | _T_40; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@113718.6]
  assign _T_42 = io_in_a_bits_address[2] & _T_35; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@113719.6]
  assign _T_43 = _T_22[1] & _T_42; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@113720.6]
  assign _T_44 = _T_32 | _T_43; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@113721.6]
  assign _T_45 = io_in_a_bits_address[2] & io_in_a_bits_address[1]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@113722.6]
  assign _T_46 = _T_22[1] & _T_45; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@113723.6]
  assign _T_47 = _T_32 | _T_46; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@113724.6]
  assign _T_50 = ~io_in_a_bits_address[0]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@113727.6]
  assign _T_51 = _T_36 & _T_50; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@113728.6]
  assign _T_52 = _T_22[0] & _T_51; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@113729.6]
  assign _T_53 = _T_38 | _T_52; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@113730.6]
  assign _T_54 = _T_36 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@113731.6]
  assign _T_55 = _T_22[0] & _T_54; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@113732.6]
  assign _T_56 = _T_38 | _T_55; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@113733.6]
  assign _T_57 = _T_39 & _T_50; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@113734.6]
  assign _T_58 = _T_22[0] & _T_57; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@113735.6]
  assign _T_59 = _T_41 | _T_58; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@113736.6]
  assign _T_60 = _T_39 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@113737.6]
  assign _T_61 = _T_22[0] & _T_60; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@113738.6]
  assign _T_62 = _T_41 | _T_61; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@113739.6]
  assign _T_63 = _T_42 & _T_50; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@113740.6]
  assign _T_64 = _T_22[0] & _T_63; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@113741.6]
  assign _T_65 = _T_44 | _T_64; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@113742.6]
  assign _T_66 = _T_42 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@113743.6]
  assign _T_67 = _T_22[0] & _T_66; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@113744.6]
  assign _T_68 = _T_44 | _T_67; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@113745.6]
  assign _T_69 = _T_45 & _T_50; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@113746.6]
  assign _T_70 = _T_22[0] & _T_69; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@113747.6]
  assign _T_71 = _T_47 | _T_70; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@113748.6]
  assign _T_72 = _T_45 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@113749.6]
  assign _T_73 = _T_22[0] & _T_72; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@113750.6]
  assign _T_74 = _T_47 | _T_73; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@113751.6]
  assign _T_81 = {_T_74,_T_71,_T_68,_T_65,_T_62,_T_59,_T_56,_T_53}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@113758.6]
  assign _T_120 = io_in_a_bits_opcode == 3'h6; // @[Monitor.scala 79:25:chipyard.TestHarness.RocketConfig.fir@113801.6]
  assign _T_121 = 3'h6 == io_in_a_bits_size; // @[Parameters.scala 92:48:chipyard.TestHarness.RocketConfig.fir@113803.8]
  assign _T_123 = io_in_a_bits_address ^ 32'h80000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@113805.8]
  assign _T_124 = {1'b0,$signed(_T_123)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@113806.8]
  assign _T_126 = $signed(_T_124) & -33'sh10000000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@113808.8]
  assign _T_127 = $signed(_T_126) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@113809.8]
  assign _T_128 = _T_121 & _T_127; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@113810.8]
  assign _T_131 = _T_128 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@113813.8]
  assign _T_132 = ~_T_131; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@113814.8]
  assign _T_140 = _T_5 & _T_121; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@113831.8]
  assign _T_148 = _T_140 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@113840.8]
  assign _T_149 = ~_T_148; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@113841.8]
  assign _T_151 = _T_11 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@113847.8]
  assign _T_152 = ~_T_151; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@113848.8]
  assign _T_155 = _T_23 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@113855.8]
  assign _T_156 = ~_T_155; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@113856.8]
  assign _T_158 = _T_17 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@113862.8]
  assign _T_159 = ~_T_158; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@113863.8]
  assign _T_160 = io_in_a_bits_param <= 3'h2; // @[Bundles.scala 110:27:chipyard.TestHarness.RocketConfig.fir@113868.8]
  assign _T_162 = _T_160 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@113870.8]
  assign _T_163 = ~_T_162; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@113871.8]
  assign _T_164 = ~io_in_a_bits_mask; // @[Monitor.scala 86:18:chipyard.TestHarness.RocketConfig.fir@113876.8]
  assign _T_165 = _T_164 == 8'h0; // @[Monitor.scala 86:31:chipyard.TestHarness.RocketConfig.fir@113877.8]
  assign _T_167 = _T_165 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@113879.8]
  assign _T_168 = ~_T_167; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@113880.8]
  assign _T_169 = ~io_in_a_bits_corrupt; // @[Monitor.scala 87:18:chipyard.TestHarness.RocketConfig.fir@113885.8]
  assign _T_171 = _T_169 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@113887.8]
  assign _T_172 = ~_T_171; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@113888.8]
  assign _T_173 = io_in_a_bits_opcode == 3'h7; // @[Monitor.scala 90:25:chipyard.TestHarness.RocketConfig.fir@113894.6]
  assign _T_217 = io_in_a_bits_param != 3'h0; // @[Monitor.scala 97:31:chipyard.TestHarness.RocketConfig.fir@113969.8]
  assign _T_219 = _T_217 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@113971.8]
  assign _T_220 = ~_T_219; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@113972.8]
  assign _T_230 = io_in_a_bits_opcode == 3'h4; // @[Monitor.scala 102:25:chipyard.TestHarness.RocketConfig.fir@113995.6]
  assign _T_232 = io_in_a_bits_size <= 3'h6; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@113998.8]
  assign _T_240 = _T_232 & _T_127; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@114006.8]
  assign _T_243 = _T_240 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114009.8]
  assign _T_244 = ~_T_243; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114010.8]
  assign _T_251 = io_in_a_bits_param == 3'h0; // @[Monitor.scala 106:31:chipyard.TestHarness.RocketConfig.fir@114029.8]
  assign _T_253 = _T_251 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114031.8]
  assign _T_254 = ~_T_253; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114032.8]
  assign _T_255 = io_in_a_bits_mask == _T_81; // @[Monitor.scala 107:30:chipyard.TestHarness.RocketConfig.fir@114037.8]
  assign _T_257 = _T_255 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114039.8]
  assign _T_258 = ~_T_257; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114040.8]
  assign _T_263 = io_in_a_bits_opcode == 3'h0; // @[Monitor.scala 111:25:chipyard.TestHarness.RocketConfig.fir@114054.6]
  assign _T_292 = io_in_a_bits_opcode == 3'h1; // @[Monitor.scala 119:25:chipyard.TestHarness.RocketConfig.fir@114105.6]
  assign _T_317 = ~_T_81; // @[Monitor.scala 124:33:chipyard.TestHarness.RocketConfig.fir@114147.8]
  assign _T_318 = io_in_a_bits_mask & _T_317; // @[Monitor.scala 124:31:chipyard.TestHarness.RocketConfig.fir@114148.8]
  assign _T_319 = _T_318 == 8'h0; // @[Monitor.scala 124:40:chipyard.TestHarness.RocketConfig.fir@114149.8]
  assign _T_321 = _T_319 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114151.8]
  assign _T_322 = ~_T_321; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114152.8]
  assign _T_323 = io_in_a_bits_opcode == 3'h2; // @[Monitor.scala 127:25:chipyard.TestHarness.RocketConfig.fir@114158.6]
  assign _T_325 = io_in_a_bits_size <= 3'h3; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@114161.8]
  assign _T_333 = _T_325 & _T_127; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@114169.8]
  assign _T_336 = _T_333 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114172.8]
  assign _T_337 = ~_T_336; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114173.8]
  assign _T_344 = io_in_a_bits_param <= 3'h4; // @[Bundles.scala 140:33:chipyard.TestHarness.RocketConfig.fir@114192.8]
  assign _T_346 = _T_344 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114194.8]
  assign _T_347 = ~_T_346; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114195.8]
  assign _T_352 = io_in_a_bits_opcode == 3'h3; // @[Monitor.scala 135:25:chipyard.TestHarness.RocketConfig.fir@114209.6]
  assign _T_373 = io_in_a_bits_param <= 3'h3; // @[Bundles.scala 147:30:chipyard.TestHarness.RocketConfig.fir@114243.8]
  assign _T_375 = _T_373 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114245.8]
  assign _T_376 = ~_T_375; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114246.8]
  assign _T_381 = io_in_a_bits_opcode == 3'h5; // @[Monitor.scala 143:25:chipyard.TestHarness.RocketConfig.fir@114260.6]
  assign _T_402 = io_in_a_bits_param <= 3'h1; // @[Bundles.scala 160:28:chipyard.TestHarness.RocketConfig.fir@114294.8]
  assign _T_404 = _T_402 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114296.8]
  assign _T_405 = ~_T_404; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114297.8]
  assign _T_414 = io_in_d_bits_opcode <= 3'h6; // @[Bundles.scala 44:24:chipyard.TestHarness.RocketConfig.fir@114321.6]
  assign _T_416 = _T_414 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114323.6]
  assign _T_417 = ~_T_416; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114324.6]
  assign _T_418 = io_in_d_bits_source == 3'h4; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@114329.6]
  assign _T_419 = io_in_d_bits_source == 3'h0; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@114330.6]
  assign _T_420 = io_in_d_bits_source == 3'h1; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@114331.6]
  assign _T_421 = io_in_d_bits_source == 3'h2; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@114332.6]
  assign _T_423 = _T_418 | _T_419; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@114339.6]
  assign _T_424 = _T_423 | _T_420; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@114340.6]
  assign _T_425 = _T_424 | _T_421; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@114341.6]
  assign _T_427 = io_in_d_bits_opcode == 3'h6; // @[Monitor.scala 307:25:chipyard.TestHarness.RocketConfig.fir@114343.6]
  assign _T_429 = _T_425 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114346.8]
  assign _T_430 = ~_T_429; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114347.8]
  assign _T_431 = io_in_d_bits_size >= 3'h3; // @[Monitor.scala 309:27:chipyard.TestHarness.RocketConfig.fir@114352.8]
  assign _T_433 = _T_431 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114354.8]
  assign _T_434 = ~_T_433; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114355.8]
  assign _T_435 = io_in_d_bits_param == 2'h0; // @[Monitor.scala 310:28:chipyard.TestHarness.RocketConfig.fir@114360.8]
  assign _T_437 = _T_435 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114362.8]
  assign _T_438 = ~_T_437; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114363.8]
  assign _T_439 = ~io_in_d_bits_corrupt; // @[Monitor.scala 311:15:chipyard.TestHarness.RocketConfig.fir@114368.8]
  assign _T_441 = _T_439 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114370.8]
  assign _T_442 = ~_T_441; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114371.8]
  assign _T_443 = ~io_in_d_bits_denied; // @[Monitor.scala 312:15:chipyard.TestHarness.RocketConfig.fir@114376.8]
  assign _T_445 = _T_443 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114378.8]
  assign _T_446 = ~_T_445; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114379.8]
  assign _T_447 = io_in_d_bits_opcode == 3'h4; // @[Monitor.scala 315:25:chipyard.TestHarness.RocketConfig.fir@114385.6]
  assign _T_458 = io_in_d_bits_param <= 2'h2; // @[Bundles.scala 104:26:chipyard.TestHarness.RocketConfig.fir@114409.8]
  assign _T_460 = _T_458 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114411.8]
  assign _T_461 = ~_T_460; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114412.8]
  assign _T_462 = io_in_d_bits_param != 2'h2; // @[Monitor.scala 320:28:chipyard.TestHarness.RocketConfig.fir@114417.8]
  assign _T_464 = _T_462 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114419.8]
  assign _T_465 = ~_T_464; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114420.8]
  assign _T_475 = io_in_d_bits_opcode == 3'h5; // @[Monitor.scala 325:25:chipyard.TestHarness.RocketConfig.fir@114443.6]
  assign _T_495 = _T_443 | io_in_d_bits_corrupt; // @[Monitor.scala 331:30:chipyard.TestHarness.RocketConfig.fir@114484.8]
  assign _T_497 = _T_495 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114486.8]
  assign _T_498 = ~_T_497; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114487.8]
  assign _T_504 = io_in_d_bits_opcode == 3'h0; // @[Monitor.scala 335:25:chipyard.TestHarness.RocketConfig.fir@114502.6]
  assign _T_521 = io_in_d_bits_opcode == 3'h1; // @[Monitor.scala 343:25:chipyard.TestHarness.RocketConfig.fir@114537.6]
  assign _T_539 = io_in_d_bits_opcode == 3'h2; // @[Monitor.scala 351:25:chipyard.TestHarness.RocketConfig.fir@114573.6]
  assign _T_598 = io_in_b_bits_address ^ 32'h80000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@114660.6]
  assign _T_599 = {1'b0,$signed(_T_598)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@114661.6]
  assign _T_601 = $signed(_T_599) & -33'sh10000000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@114663.6]
  assign _T_602 = $signed(_T_601) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@114664.6]
  assign _T_608 = io_in_b_bits_address & 32'h3f; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@114672.6]
  assign _T_609 = _T_608 == 32'h0; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@114673.6]
  assign _T_707 = _T_602 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114788.8]
  assign _T_708 = ~_T_707; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114789.8]
  assign _T_713 = _T_609 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114802.8]
  assign _T_714 = ~_T_713; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114803.8]
  assign _T_715 = io_in_b_bits_param <= 2'h2; // @[Bundles.scala 104:26:chipyard.TestHarness.RocketConfig.fir@114808.8]
  assign _T_717 = _T_715 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114810.8]
  assign _T_718 = ~_T_717; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114811.8]
  assign _T_863 = io_in_c_bits_source == 3'h4; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@115135.6]
  assign _T_864 = io_in_c_bits_source == 3'h0; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@115136.6]
  assign _T_865 = io_in_c_bits_source == 3'h1; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@115137.6]
  assign _T_866 = io_in_c_bits_source == 3'h2; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@115138.6]
  assign _T_868 = _T_863 | _T_864; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@115145.6]
  assign _T_869 = _T_868 | _T_865; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@115146.6]
  assign _T_870 = _T_869 | _T_866; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@115147.6]
  assign _T_872 = 13'h3f << io_in_c_bits_size; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@115149.6]
  assign _T_874 = ~_T_872[5:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@115151.6]
  assign _GEN_72 = {{26'd0}, _T_874}; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@115152.6]
  assign _T_875 = io_in_c_bits_address & _GEN_72; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@115152.6]
  assign _T_876 = _T_875 == 32'h0; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@115153.6]
  assign _T_877 = io_in_c_bits_address ^ 32'h80000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@115154.6]
  assign _T_878 = {1'b0,$signed(_T_877)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@115155.6]
  assign _T_880 = $signed(_T_878) & -33'sh10000000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@115157.6]
  assign _T_881 = $signed(_T_880) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@115158.6]
  assign _T_921 = io_in_c_bits_opcode == 3'h4; // @[Monitor.scala 239:25:chipyard.TestHarness.RocketConfig.fir@115204.6]
  assign _T_923 = _T_881 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115207.8]
  assign _T_924 = ~_T_923; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115208.8]
  assign _T_926 = _T_870 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115214.8]
  assign _T_927 = ~_T_926; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115215.8]
  assign _T_928 = io_in_c_bits_size >= 3'h3; // @[Monitor.scala 242:30:chipyard.TestHarness.RocketConfig.fir@115220.8]
  assign _T_930 = _T_928 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115222.8]
  assign _T_931 = ~_T_930; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115223.8]
  assign _T_933 = _T_876 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115229.8]
  assign _T_934 = ~_T_933; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115230.8]
  assign _T_935 = io_in_c_bits_param <= 3'h5; // @[Bundles.scala 122:29:chipyard.TestHarness.RocketConfig.fir@115235.8]
  assign _T_937 = _T_935 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115237.8]
  assign _T_938 = ~_T_937; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115238.8]
  assign _T_939 = ~io_in_c_bits_corrupt; // @[Monitor.scala 245:18:chipyard.TestHarness.RocketConfig.fir@115243.8]
  assign _T_941 = _T_939 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115245.8]
  assign _T_942 = ~_T_941; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115246.8]
  assign _T_943 = io_in_c_bits_opcode == 3'h5; // @[Monitor.scala 248:25:chipyard.TestHarness.RocketConfig.fir@115252.6]
  assign _T_961 = io_in_c_bits_opcode == 3'h6; // @[Monitor.scala 256:25:chipyard.TestHarness.RocketConfig.fir@115292.6]
  assign _T_962 = 3'h6 == io_in_c_bits_size; // @[Parameters.scala 92:48:chipyard.TestHarness.RocketConfig.fir@115294.8]
  assign _T_969 = _T_962 & _T_881; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@115301.8]
  assign _T_972 = _T_969 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115304.8]
  assign _T_973 = ~_T_972; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115305.8]
  assign _T_981 = _T_864 & _T_962; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@115322.8]
  assign _T_989 = _T_981 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115331.8]
  assign _T_990 = ~_T_989; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115332.8]
  assign _T_1001 = io_in_c_bits_param <= 3'h2; // @[Bundles.scala 116:29:chipyard.TestHarness.RocketConfig.fir@115359.8]
  assign _T_1003 = _T_1001 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115361.8]
  assign _T_1004 = ~_T_1003; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115362.8]
  assign _T_1009 = io_in_c_bits_opcode == 3'h7; // @[Monitor.scala 266:25:chipyard.TestHarness.RocketConfig.fir@115376.6]
  assign _T_1053 = io_in_c_bits_opcode == 3'h0; // @[Monitor.scala 275:25:chipyard.TestHarness.RocketConfig.fir@115452.6]
  assign _T_1063 = io_in_c_bits_param == 3'h0; // @[Monitor.scala 279:31:chipyard.TestHarness.RocketConfig.fir@115475.8]
  assign _T_1065 = _T_1063 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115477.8]
  assign _T_1066 = ~_T_1065; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115478.8]
  assign _T_1071 = io_in_c_bits_opcode == 3'h1; // @[Monitor.scala 283:25:chipyard.TestHarness.RocketConfig.fir@115492.6]
  assign _T_1085 = io_in_c_bits_opcode == 3'h2; // @[Monitor.scala 290:25:chipyard.TestHarness.RocketConfig.fir@115524.6]
  assign _T_1107 = io_in_a_ready & io_in_a_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@115575.4]
  assign _T_1114 = ~io_in_a_bits_opcode[2]; // @[Edges.scala 93:28:chipyard.TestHarness.RocketConfig.fir@115582.4]
  assign _T_1118 = _T_1116 - 3'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@115586.4]
  assign _T_1119 = _T_1116 == 3'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@115587.4]
  assign _T_1132 = ~_T_1119; // @[Monitor.scala 386:22:chipyard.TestHarness.RocketConfig.fir@115603.4]
  assign _T_1133 = io_in_a_valid & _T_1132; // @[Monitor.scala 386:19:chipyard.TestHarness.RocketConfig.fir@115604.4]
  assign _T_1134 = io_in_a_bits_opcode == _T_1127; // @[Monitor.scala 387:32:chipyard.TestHarness.RocketConfig.fir@115606.6]
  assign _T_1136 = _T_1134 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115608.6]
  assign _T_1137 = ~_T_1136; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115609.6]
  assign _T_1138 = io_in_a_bits_param == _T_1128; // @[Monitor.scala 388:32:chipyard.TestHarness.RocketConfig.fir@115614.6]
  assign _T_1140 = _T_1138 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115616.6]
  assign _T_1141 = ~_T_1140; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115617.6]
  assign _T_1142 = io_in_a_bits_size == _T_1129; // @[Monitor.scala 389:32:chipyard.TestHarness.RocketConfig.fir@115622.6]
  assign _T_1144 = _T_1142 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115624.6]
  assign _T_1145 = ~_T_1144; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115625.6]
  assign _T_1146 = io_in_a_bits_source == _T_1130; // @[Monitor.scala 390:32:chipyard.TestHarness.RocketConfig.fir@115630.6]
  assign _T_1148 = _T_1146 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115632.6]
  assign _T_1149 = ~_T_1148; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115633.6]
  assign _T_1150 = io_in_a_bits_address == _T_1131; // @[Monitor.scala 391:32:chipyard.TestHarness.RocketConfig.fir@115638.6]
  assign _T_1152 = _T_1150 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115640.6]
  assign _T_1153 = ~_T_1152; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115641.6]
  assign _T_1155 = _T_1107 & _T_1119; // @[Monitor.scala 393:20:chipyard.TestHarness.RocketConfig.fir@115648.4]
  assign _T_1156 = io_in_d_ready & io_in_d_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@115656.4]
  assign _T_1158 = 13'h3f << io_in_d_bits_size; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@115658.4]
  assign _T_1160 = ~_T_1158[5:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@115660.4]
  assign _T_1166 = _T_1164 - 3'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@115666.4]
  assign _T_1167 = _T_1164 == 3'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@115667.4]
  assign _T_1181 = ~_T_1167; // @[Monitor.scala 538:22:chipyard.TestHarness.RocketConfig.fir@115684.4]
  assign _T_1182 = io_in_d_valid & _T_1181; // @[Monitor.scala 538:19:chipyard.TestHarness.RocketConfig.fir@115685.4]
  assign _T_1183 = io_in_d_bits_opcode == _T_1175; // @[Monitor.scala 539:29:chipyard.TestHarness.RocketConfig.fir@115687.6]
  assign _T_1185 = _T_1183 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@115689.6]
  assign _T_1186 = ~_T_1185; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@115690.6]
  assign _T_1187 = io_in_d_bits_param == _T_1176; // @[Monitor.scala 540:29:chipyard.TestHarness.RocketConfig.fir@115695.6]
  assign _T_1189 = _T_1187 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@115697.6]
  assign _T_1190 = ~_T_1189; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@115698.6]
  assign _T_1191 = io_in_d_bits_size == _T_1177; // @[Monitor.scala 541:29:chipyard.TestHarness.RocketConfig.fir@115703.6]
  assign _T_1193 = _T_1191 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@115705.6]
  assign _T_1194 = ~_T_1193; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@115706.6]
  assign _T_1195 = io_in_d_bits_source == _T_1178; // @[Monitor.scala 542:29:chipyard.TestHarness.RocketConfig.fir@115711.6]
  assign _T_1197 = _T_1195 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@115713.6]
  assign _T_1198 = ~_T_1197; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@115714.6]
  assign _T_1199 = io_in_d_bits_sink == _T_1179; // @[Monitor.scala 543:29:chipyard.TestHarness.RocketConfig.fir@115719.6]
  assign _T_1201 = _T_1199 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@115721.6]
  assign _T_1202 = ~_T_1201; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@115722.6]
  assign _T_1203 = io_in_d_bits_denied == _T_1180; // @[Monitor.scala 544:29:chipyard.TestHarness.RocketConfig.fir@115727.6]
  assign _T_1205 = _T_1203 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@115729.6]
  assign _T_1206 = ~_T_1205; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@115730.6]
  assign _T_1208 = _T_1156 & _T_1167; // @[Monitor.scala 546:20:chipyard.TestHarness.RocketConfig.fir@115737.4]
  assign _T_1209 = io_in_b_ready & io_in_b_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@115746.4]
  assign _T_1220 = _T_1218 - 3'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@115757.4]
  assign _T_1221 = _T_1218 == 3'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@115758.4]
  assign _T_1234 = ~_T_1221; // @[Monitor.scala 409:22:chipyard.TestHarness.RocketConfig.fir@115774.4]
  assign _T_1235 = io_in_b_valid & _T_1234; // @[Monitor.scala 409:19:chipyard.TestHarness.RocketConfig.fir@115775.4]
  assign _T_1240 = io_in_b_bits_param == _T_1230; // @[Monitor.scala 411:32:chipyard.TestHarness.RocketConfig.fir@115785.6]
  assign _T_1242 = _T_1240 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115787.6]
  assign _T_1243 = ~_T_1242; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115788.6]
  assign _T_1252 = io_in_b_bits_address == _T_1233; // @[Monitor.scala 414:32:chipyard.TestHarness.RocketConfig.fir@115809.6]
  assign _T_1254 = _T_1252 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115811.6]
  assign _T_1255 = ~_T_1254; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115812.6]
  assign _T_1257 = _T_1209 & _T_1221; // @[Monitor.scala 416:20:chipyard.TestHarness.RocketConfig.fir@115819.4]
  assign _T_1258 = io_in_c_ready & io_in_c_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@115827.4]
  assign _T_1268 = _T_1266 - 3'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@115837.4]
  assign _T_1269 = _T_1266 == 3'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@115838.4]
  assign _T_1282 = ~_T_1269; // @[Monitor.scala 514:22:chipyard.TestHarness.RocketConfig.fir@115854.4]
  assign _T_1283 = io_in_c_valid & _T_1282; // @[Monitor.scala 514:19:chipyard.TestHarness.RocketConfig.fir@115855.4]
  assign _T_1284 = io_in_c_bits_opcode == _T_1277; // @[Monitor.scala 515:32:chipyard.TestHarness.RocketConfig.fir@115857.6]
  assign _T_1286 = _T_1284 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115859.6]
  assign _T_1287 = ~_T_1286; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115860.6]
  assign _T_1288 = io_in_c_bits_param == _T_1278; // @[Monitor.scala 516:32:chipyard.TestHarness.RocketConfig.fir@115865.6]
  assign _T_1290 = _T_1288 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115867.6]
  assign _T_1291 = ~_T_1290; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115868.6]
  assign _T_1292 = io_in_c_bits_size == _T_1279; // @[Monitor.scala 517:32:chipyard.TestHarness.RocketConfig.fir@115873.6]
  assign _T_1294 = _T_1292 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115875.6]
  assign _T_1295 = ~_T_1294; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115876.6]
  assign _T_1296 = io_in_c_bits_source == _T_1280; // @[Monitor.scala 518:32:chipyard.TestHarness.RocketConfig.fir@115881.6]
  assign _T_1298 = _T_1296 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115883.6]
  assign _T_1299 = ~_T_1298; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115884.6]
  assign _T_1300 = io_in_c_bits_address == _T_1281; // @[Monitor.scala 519:32:chipyard.TestHarness.RocketConfig.fir@115889.6]
  assign _T_1302 = _T_1300 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115891.6]
  assign _T_1303 = ~_T_1302; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115892.6]
  assign _T_1305 = _T_1258 & _T_1269; // @[Monitor.scala 521:20:chipyard.TestHarness.RocketConfig.fir@115899.4]
  assign _T_1317 = _T_1315 - 3'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@115921.4]
  assign a_first = _T_1315 == 3'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@115922.4]
  assign _T_1335 = _T_1333 - 3'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@115943.4]
  assign d_first = _T_1333 == 3'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@115944.4]
  assign _GEN_73 = {io_in_d_bits_source, 2'h0}; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@115963.4]
  assign _T_1343 = {{1'd0}, _GEN_73}; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@115963.4]
  assign _T_1344 = inflight_opcodes >> _T_1343; // @[Monitor.scala 629:44:chipyard.TestHarness.RocketConfig.fir@115964.4]
  assign _T_1348 = 16'h10 - 16'h1; // @[Monitor.scala 606:57:chipyard.TestHarness.RocketConfig.fir@115968.4]
  assign _GEN_74 = {{4'd0}, _T_1348}; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@115969.4]
  assign _T_1349 = _T_1344 & _GEN_74; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@115969.4]
  assign _T_1350 = {{1'd0}, _T_1349[19:1]}; // @[Monitor.scala 629:152:chipyard.TestHarness.RocketConfig.fir@115970.4]
  assign _T_1352 = inflight_sizes >> _T_1343; // @[Monitor.scala 633:40:chipyard.TestHarness.RocketConfig.fir@115975.4]
  assign _T_1357 = _T_1352 & _GEN_74; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@115980.4]
  assign _T_1358 = {{1'd0}, _T_1357[19:1]}; // @[Monitor.scala 633:144:chipyard.TestHarness.RocketConfig.fir@115981.4]
  assign _T_1362 = _T_1107 & a_first; // @[Monitor.scala 643:27:chipyard.TestHarness.RocketConfig.fir@116006.4]
  assign _T_1364 = 8'h1 << io_in_a_bits_source; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@116009.6]
  assign _T_1365 = {io_in_a_bits_opcode, 1'h0}; // @[Monitor.scala 645:53:chipyard.TestHarness.RocketConfig.fir@116011.6]
  assign _T_1366 = _T_1365 | 4'h1; // @[Monitor.scala 645:61:chipyard.TestHarness.RocketConfig.fir@116012.6]
  assign _T_1367 = {io_in_a_bits_size, 1'h0}; // @[Monitor.scala 646:49:chipyard.TestHarness.RocketConfig.fir@116014.6]
  assign _T_1368 = _T_1367 | 4'h1; // @[Monitor.scala 646:57:chipyard.TestHarness.RocketConfig.fir@116015.6]
  assign _GEN_79 = {io_in_a_bits_source, 2'h0}; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@116017.6]
  assign _T_1369 = {{1'd0}, _GEN_79}; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@116017.6]
  assign a_opcodes_set_interm = _T_1362 ? _T_1366 : 4'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@116008.4]
  assign _GEN_80 = {{63'd0}, a_opcodes_set_interm}; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@116018.6]
  assign _T_1370 = _GEN_80 << _T_1369; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@116018.6]
  assign a_sizes_set_interm = _T_1362 ? _T_1368 : 4'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@116008.4]
  assign _GEN_82 = {{63'd0}, a_sizes_set_interm}; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@116021.6]
  assign _T_1372 = _GEN_82 << _T_1369; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@116021.6]
  assign _T_1373 = inflight >> io_in_a_bits_source; // @[Monitor.scala 649:26:chipyard.TestHarness.RocketConfig.fir@116023.6]
  assign _T_1375 = ~_T_1373[0]; // @[Monitor.scala 649:17:chipyard.TestHarness.RocketConfig.fir@116025.6]
  assign _T_1377 = _T_1375 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116027.6]
  assign _T_1378 = ~_T_1377; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116028.6]
  assign _GEN_27 = _T_1362 ? _T_1364 : 8'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@116008.4]
  assign _GEN_30 = _T_1362 ? _T_1370 : 67'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@116008.4]
  assign _GEN_31 = _T_1362 ? _T_1372 : 67'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@116008.4]
  assign _T_1381 = _T_1156 & d_first; // @[Monitor.scala 660:27:chipyard.TestHarness.RocketConfig.fir@116042.4]
  assign _T_1383 = ~_T_427; // @[Monitor.scala 660:75:chipyard.TestHarness.RocketConfig.fir@116044.4]
  assign _T_1384 = _T_1381 & _T_1383; // @[Monitor.scala 660:72:chipyard.TestHarness.RocketConfig.fir@116045.4]
  assign _T_1385 = 8'h1 << io_in_d_bits_source; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@116047.6]
  assign _GEN_84 = {{63'd0}, _T_1348}; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@116054.6]
  assign _T_1391 = _GEN_84 << _T_1343; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@116054.6]
  assign _GEN_32 = _T_1384 ? _T_1385 : 8'h0; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@116046.4]
  assign _GEN_33 = _T_1384 ? _T_1391 : 79'h0; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@116046.4]
  assign _T_1398 = io_in_d_valid & d_first; // @[Monitor.scala 665:26:chipyard.TestHarness.RocketConfig.fir@116064.4]
  assign _T_1401 = _T_1398 & _T_1383; // @[Monitor.scala 665:71:chipyard.TestHarness.RocketConfig.fir@116067.4]
  assign _T_1402 = inflight >> io_in_d_bits_source; // @[Monitor.scala 666:25:chipyard.TestHarness.RocketConfig.fir@116069.6]
  assign _T_1404 = io_in_a_bits_source == io_in_d_bits_source; // @[Monitor.scala 666:93:chipyard.TestHarness.RocketConfig.fir@116071.6]
  assign _T_1405 = io_in_a_valid & _T_1404; // @[Monitor.scala 666:68:chipyard.TestHarness.RocketConfig.fir@116072.6]
  assign _T_1406 = io_in_a_bits_size == io_in_d_bits_size; // @[Monitor.scala 666:142:chipyard.TestHarness.RocketConfig.fir@116073.6]
  assign _T_1407 = _T_1405 & _T_1406; // @[Monitor.scala 666:119:chipyard.TestHarness.RocketConfig.fir@116074.6]
  assign _T_1408 = _T_1407 & a_first; // @[Monitor.scala 666:166:chipyard.TestHarness.RocketConfig.fir@116075.6]
  assign _T_1409 = _T_1402[0] | _T_1408; // @[Monitor.scala 666:49:chipyard.TestHarness.RocketConfig.fir@116076.6]
  assign _T_1411 = _T_1409 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@116078.6]
  assign _T_1412 = ~_T_1411; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@116079.6]
  assign a_opcode_lookup = _T_1350[3:0]; // @[:chipyard.TestHarness.RocketConfig.fir@115961.4 :chipyard.TestHarness.RocketConfig.fir@115962.4 Monitor.scala 629:21:chipyard.TestHarness.RocketConfig.fir@115971.4]
  assign _GEN_37 = 3'h2 == a_opcode_lookup[2:0] ? 3'h1 : 3'h0; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@116085.6]
  assign _GEN_38 = 3'h3 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_37; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@116085.6]
  assign _GEN_39 = 3'h4 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_38; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@116085.6]
  assign _GEN_40 = 3'h5 == a_opcode_lookup[2:0] ? 3'h2 : _GEN_39; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@116085.6]
  assign _GEN_41 = 3'h6 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_40; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@116085.6]
  assign _GEN_42 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_41; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@116085.6]
  assign _T_1414 = io_in_d_bits_opcode == _GEN_42; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@116085.6]
  assign _GEN_49 = 3'h6 == a_opcode_lookup[2:0] ? 3'h5 : _GEN_40; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@116087.6]
  assign _GEN_50 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_49; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@116087.6]
  assign _T_1416 = io_in_d_bits_opcode == _GEN_50; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@116087.6]
  assign _T_1417 = _T_1414 | _T_1416; // @[Monitor.scala 667:71:chipyard.TestHarness.RocketConfig.fir@116088.6]
  assign _GEN_53 = 3'h2 == io_in_a_bits_opcode ? 3'h1 : 3'h0; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@116089.6]
  assign _GEN_54 = 3'h3 == io_in_a_bits_opcode ? 3'h1 : _GEN_53; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@116089.6]
  assign _GEN_55 = 3'h4 == io_in_a_bits_opcode ? 3'h1 : _GEN_54; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@116089.6]
  assign _GEN_56 = 3'h5 == io_in_a_bits_opcode ? 3'h2 : _GEN_55; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@116089.6]
  assign _GEN_57 = 3'h6 == io_in_a_bits_opcode ? 3'h4 : _GEN_56; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@116089.6]
  assign _GEN_58 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_57; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@116089.6]
  assign _T_1418 = io_in_d_bits_opcode == _GEN_58; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@116089.6]
  assign _GEN_65 = 3'h6 == io_in_a_bits_opcode ? 3'h5 : _GEN_56; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@116090.6]
  assign _GEN_66 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_65; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@116090.6]
  assign _T_1419 = io_in_d_bits_opcode == _GEN_66; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@116090.6]
  assign _T_1420 = _T_1418 | _T_1419; // @[Monitor.scala 668:99:chipyard.TestHarness.RocketConfig.fir@116091.6]
  assign _T_1421 = io_in_a_valid & _T_1420; // @[Monitor.scala 668:34:chipyard.TestHarness.RocketConfig.fir@116092.6]
  assign _T_1422 = _T_1417 | _T_1421; // @[Monitor.scala 668:15:chipyard.TestHarness.RocketConfig.fir@116093.6]
  assign _T_1424 = _T_1422 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@116095.6]
  assign _T_1425 = ~_T_1424; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@116096.6]
  assign a_size_lookup = _T_1358[3:0]; // @[:chipyard.TestHarness.RocketConfig.fir@115972.4 :chipyard.TestHarness.RocketConfig.fir@115973.4 Monitor.scala 633:19:chipyard.TestHarness.RocketConfig.fir@115982.4]
  assign _GEN_87 = {{1'd0}, io_in_d_bits_size}; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@116101.6]
  assign _T_1426 = _GEN_87 == a_size_lookup; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@116101.6]
  assign _T_1428 = io_in_a_valid & _T_1406; // @[Monitor.scala 670:72:chipyard.TestHarness.RocketConfig.fir@116103.6]
  assign _T_1429 = _T_1426 | _T_1428; // @[Monitor.scala 670:53:chipyard.TestHarness.RocketConfig.fir@116104.6]
  assign _T_1431 = _T_1429 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@116106.6]
  assign _T_1432 = ~_T_1431; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@116107.6]
  assign _T_1434 = _T_1398 & a_first; // @[Monitor.scala 672:36:chipyard.TestHarness.RocketConfig.fir@116114.4]
  assign _T_1435 = _T_1434 & io_in_a_valid; // @[Monitor.scala 672:47:chipyard.TestHarness.RocketConfig.fir@116115.4]
  assign _T_1437 = _T_1435 & _T_1404; // @[Monitor.scala 672:65:chipyard.TestHarness.RocketConfig.fir@116117.4]
  assign _T_1439 = _T_1437 & _T_1383; // @[Monitor.scala 672:116:chipyard.TestHarness.RocketConfig.fir@116119.4]
  assign _T_1440 = ~io_in_d_ready; // @[Monitor.scala 673:15:chipyard.TestHarness.RocketConfig.fir@116121.6]
  assign _T_1441 = _T_1440 | io_in_a_ready; // @[Monitor.scala 673:32:chipyard.TestHarness.RocketConfig.fir@116122.6]
  assign _T_1443 = _T_1441 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@116124.6]
  assign _T_1444 = ~_T_1443; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@116125.6]
  assign a_set = _GEN_27[4:0]; // @[:chipyard.TestHarness.RocketConfig.fir@115955.4 :chipyard.TestHarness.RocketConfig.fir@115956.4 Monitor.scala 644:13:chipyard.TestHarness.RocketConfig.fir@116010.6]
  assign d_clr = _GEN_32[4:0]; // @[:chipyard.TestHarness.RocketConfig.fir@116034.4 :chipyard.TestHarness.RocketConfig.fir@116035.4 Monitor.scala 661:13:chipyard.TestHarness.RocketConfig.fir@116048.6]
  assign _T_1445 = a_set != d_clr; // @[Monitor.scala 677:20:chipyard.TestHarness.RocketConfig.fir@116131.4]
  assign _T_1446 = |a_set; // @[Monitor.scala 677:40:chipyard.TestHarness.RocketConfig.fir@116132.4]
  assign _T_1447 = ~_T_1446; // @[Monitor.scala 677:33:chipyard.TestHarness.RocketConfig.fir@116133.4]
  assign _T_1448 = _T_1445 | _T_1447; // @[Monitor.scala 677:30:chipyard.TestHarness.RocketConfig.fir@116134.4]
  assign _T_1450 = _T_1448 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@116136.4]
  assign _T_1451 = ~_T_1450; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@116137.4]
  assign _T_1452 = inflight | a_set; // @[Monitor.scala 680:27:chipyard.TestHarness.RocketConfig.fir@116142.4]
  assign _T_1453 = ~d_clr; // @[Monitor.scala 680:38:chipyard.TestHarness.RocketConfig.fir@116143.4]
  assign _T_1454 = _T_1452 & _T_1453; // @[Monitor.scala 680:36:chipyard.TestHarness.RocketConfig.fir@116144.4]
  assign a_opcodes_set = _GEN_30[19:0]; // @[:chipyard.TestHarness.RocketConfig.fir@115957.4 :chipyard.TestHarness.RocketConfig.fir@115958.4 Monitor.scala 647:21:chipyard.TestHarness.RocketConfig.fir@116019.6]
  assign _T_1455 = inflight_opcodes | a_opcodes_set; // @[Monitor.scala 681:43:chipyard.TestHarness.RocketConfig.fir@116146.4]
  assign d_opcodes_clr = _GEN_33[19:0]; // @[:chipyard.TestHarness.RocketConfig.fir@116036.4 :chipyard.TestHarness.RocketConfig.fir@116037.4 Monitor.scala 662:21:chipyard.TestHarness.RocketConfig.fir@116055.6]
  assign _T_1456 = ~d_opcodes_clr; // @[Monitor.scala 681:62:chipyard.TestHarness.RocketConfig.fir@116147.4]
  assign _T_1457 = _T_1455 & _T_1456; // @[Monitor.scala 681:60:chipyard.TestHarness.RocketConfig.fir@116148.4]
  assign a_sizes_set = _GEN_31[19:0]; // @[:chipyard.TestHarness.RocketConfig.fir@115959.4 :chipyard.TestHarness.RocketConfig.fir@115960.4 Monitor.scala 648:19:chipyard.TestHarness.RocketConfig.fir@116022.6]
  assign _T_1458 = inflight_sizes | a_sizes_set; // @[Monitor.scala 682:39:chipyard.TestHarness.RocketConfig.fir@116150.4]
  assign _T_1460 = _T_1458 & _T_1456; // @[Monitor.scala 682:54:chipyard.TestHarness.RocketConfig.fir@116152.4]
  assign _T_1462 = |inflight; // @[Monitor.scala 687:26:chipyard.TestHarness.RocketConfig.fir@116157.4]
  assign _T_1463 = ~_T_1462; // @[Monitor.scala 687:16:chipyard.TestHarness.RocketConfig.fir@116158.4]
  assign _T_1464 = plusarg_reader_out == 32'h0; // @[Monitor.scala 687:39:chipyard.TestHarness.RocketConfig.fir@116159.4]
  assign _T_1465 = _T_1463 | _T_1464; // @[Monitor.scala 687:30:chipyard.TestHarness.RocketConfig.fir@116160.4]
  assign _T_1466 = _T_1461 < plusarg_reader_out; // @[Monitor.scala 687:59:chipyard.TestHarness.RocketConfig.fir@116161.4]
  assign _T_1467 = _T_1465 | _T_1466; // @[Monitor.scala 687:47:chipyard.TestHarness.RocketConfig.fir@116162.4]
  assign _T_1469 = _T_1467 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116164.4]
  assign _T_1470 = ~_T_1469; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116165.4]
  assign _T_1472 = _T_1461 + 32'h1; // @[Monitor.scala 689:26:chipyard.TestHarness.RocketConfig.fir@116171.4]
  assign _T_1475 = _T_1107 | _T_1156; // @[Monitor.scala 690:27:chipyard.TestHarness.RocketConfig.fir@116175.4]
  assign _T_1487 = _T_1485 - 3'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@116190.4]
  assign _T_1488 = _T_1485 == 3'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@116191.4]
  assign _T_1498 = _T_1156 & _T_1488; // @[Monitor.scala 700:27:chipyard.TestHarness.RocketConfig.fir@116205.4]
  assign _T_1501 = ~io_in_d_bits_opcode[1]; // @[Edges.scala 72:43:chipyard.TestHarness.RocketConfig.fir@116208.4]
  assign _T_1502 = io_in_d_bits_opcode[2] & _T_1501; // @[Edges.scala 72:40:chipyard.TestHarness.RocketConfig.fir@116209.4]
  assign _T_1503 = _T_1498 & _T_1502; // @[Monitor.scala 700:38:chipyard.TestHarness.RocketConfig.fir@116210.4]
  assign _T_1504 = 8'h1 << io_in_d_bits_sink; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@116212.6]
  assign _T_1505 = _T_1476 >> io_in_d_bits_sink; // @[Monitor.scala 702:23:chipyard.TestHarness.RocketConfig.fir@116214.6]
  assign _T_1507 = ~_T_1505[0]; // @[Monitor.scala 702:14:chipyard.TestHarness.RocketConfig.fir@116216.6]
  assign _T_1509 = _T_1507 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@116218.6]
  assign _T_1510 = ~_T_1509; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@116219.6]
  assign _GEN_69 = _T_1503 ? _T_1504 : 8'h0; // @[Monitor.scala 700:72:chipyard.TestHarness.RocketConfig.fir@116211.4]
  assign _T_1515 = 8'h1 << io_in_e_bits_sink; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@116231.6]
  assign _T_1516 = _GEN_69 | _T_1476; // @[Monitor.scala 708:24:chipyard.TestHarness.RocketConfig.fir@116233.6]
  assign _T_1517 = _T_1516 >> io_in_e_bits_sink; // @[Monitor.scala 708:35:chipyard.TestHarness.RocketConfig.fir@116234.6]
  assign _T_1520 = _T_1517[0] | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116237.6]
  assign _T_1521 = ~_T_1520; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116238.6]
  assign _GEN_70 = io_in_e_valid ? _T_1515 : 8'h0; // @[Monitor.scala 706:73:chipyard.TestHarness.RocketConfig.fir@116230.4]
  assign _T_1522 = _T_1476 | _GEN_69; // @[Monitor.scala 713:27:chipyard.TestHarness.RocketConfig.fir@116244.4]
  assign _T_1523 = ~_GEN_70; // @[Monitor.scala 713:38:chipyard.TestHarness.RocketConfig.fir@116245.4]
  assign _T_1524 = _T_1522 & _T_1523; // @[Monitor.scala 713:36:chipyard.TestHarness.RocketConfig.fir@116246.4]
  assign _GEN_88 = io_in_a_valid & _T_120; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@113816.10]
  assign _GEN_104 = io_in_a_valid & _T_173; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@113909.10]
  assign _GEN_122 = io_in_a_valid & _T_230; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114012.10]
  assign _GEN_134 = io_in_a_valid & _T_263; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114071.10]
  assign _GEN_144 = io_in_a_valid & _T_292; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114122.10]
  assign _GEN_154 = io_in_a_valid & _T_323; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114175.10]
  assign _GEN_164 = io_in_a_valid & _T_352; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114226.10]
  assign _GEN_174 = io_in_a_valid & _T_381; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114277.10]
  assign _GEN_186 = io_in_d_valid & _T_427; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114349.10]
  assign _GEN_196 = io_in_d_valid & _T_447; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114391.10]
  assign _GEN_206 = io_in_d_valid & _T_475; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114449.10]
  assign _GEN_216 = io_in_d_valid & _T_504; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114508.10]
  assign _GEN_222 = io_in_d_valid & _T_521; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114543.10]
  assign _GEN_228 = io_in_d_valid & _T_539; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114579.10]
  assign _GEN_234 = io_in_c_valid & _T_921; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115210.10]
  assign _GEN_246 = io_in_c_valid & _T_943; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115258.10]
  assign _GEN_256 = io_in_c_valid & _T_961; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115307.10]
  assign _GEN_270 = io_in_c_valid & _T_1009; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115391.10]
  assign _GEN_282 = io_in_c_valid & _T_1053; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115458.10]
  assign _GEN_292 = io_in_c_valid & _T_1071; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115498.10]
  assign _GEN_300 = io_in_c_valid & _T_1085; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115530.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock type unsupported by manager (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@113816.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@113817.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock from a client which does not support Probe (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@113843.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@113844.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock carries invalid source ID (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@113850.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@113851.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock smaller than a beat (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@113858.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@113859.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock address not aligned to size (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@113865.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@113866.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock carries invalid grow param (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@113873.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@113874.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock contains invalid mask (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@113882.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@113883.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock is corrupt (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@113890.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@113891.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm type unsupported by manager (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@113909.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@113910.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm from a client which does not support Probe (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@113936.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@113937.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm carries invalid source ID (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@113943.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@113944.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm smaller than a beat (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@113951.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@113952.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm address not aligned to size (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@113958.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@113959.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm carries invalid grow param (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@113966.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@113967.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm requests NtoB (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@113974.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@113975.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm contains invalid mask (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@113983.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@113984.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm is corrupt (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@113991.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@113992.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Get type unsupported by manager (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114012.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114013.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get carries invalid source ID (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114019.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114020.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get address not aligned to size (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114026.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114027.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get carries invalid param (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114034.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114035.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get contains invalid mask (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114042.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114043.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get is corrupt (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114050.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114051.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutFull type unsupported by manager (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114071.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114072.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull carries invalid source ID (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114078.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114079.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull address not aligned to size (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114085.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114086.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull carries invalid param (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114093.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114094.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull contains invalid mask (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114101.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114102.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutPartial type unsupported by manager (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114122.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114123.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial carries invalid source ID (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114129.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114130.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial address not aligned to size (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114136.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114137.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial carries invalid param (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114144.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114145.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial contains invalid mask (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114154.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114155.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Arithmetic type unsupported by manager (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114175.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114176.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic carries invalid source ID (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114182.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114183.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic address not aligned to size (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114189.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114190.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic carries invalid opcode param (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114197.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114198.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic contains invalid mask (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114205.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114206.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Logical type unsupported by manager (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114226.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114227.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical carries invalid source ID (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114233.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114234.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical address not aligned to size (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114240.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114241.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical carries invalid opcode param (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114248.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114249.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical contains invalid mask (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114256.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114257.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Hint type unsupported by manager (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114277.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114278.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint carries invalid source ID (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114284.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114285.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint address not aligned to size (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114291.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114292.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint carries invalid opcode param (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114299.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114300.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint contains invalid mask (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114307.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114308.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint is corrupt (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114315.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114316.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel has invalid opcode (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114326.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114327.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck carries invalid source ID (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114349.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114350.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck smaller than a beat (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114357.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114358.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseeAck carries invalid param (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114365.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114366.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck is corrupt (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114373.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114374.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck is denied (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114381.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114382.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid source ID (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114391.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114392.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant smaller than a beat (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114406.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114407.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid cap param (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114414.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114415.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries toN param (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114422.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114423.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant is corrupt (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114430.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114431.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid source ID (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114449.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114450.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData smaller than a beat (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114464.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114465.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid cap param (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114472.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114473.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries toN param (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114480.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114481.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData is denied but not corrupt (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114489.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114490.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck carries invalid source ID (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114508.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114509.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck carries invalid param (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114516.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114517.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck is corrupt (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114524.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114525.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData carries invalid source ID (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114543.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114544.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData carries invalid param (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114551.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114552.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData is denied but not corrupt (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114560.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114561.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck carries invalid source ID (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114579.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114580.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck carries invalid param (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114587.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114588.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck is corrupt (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114595.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@114596.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'B' channel Probe carries unmanaged address (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114791.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114792.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'B' channel Probe address not aligned to size (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114805.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114806.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'B' channel Probe carries invalid cap param (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114813.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@114814.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAck carries unmanaged address (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115210.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115211.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAck carries invalid source ID (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115217.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115218.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAck smaller than a beat (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115225.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115226.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAck address not aligned to size (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115232.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115233.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAck carries invalid report param (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115240.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115241.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAck is corrupt (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115248.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115249.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAckData carries unmanaged address (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115258.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115259.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAckData carries invalid source ID (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115265.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115266.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAckData smaller than a beat (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115273.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115274.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAckData address not aligned to size (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115280.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115281.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAckData carries invalid report param (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115288.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115289.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel carries Release type unsupported by manager (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115307.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115308.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel carries Release from a client which does not support Probe (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115334.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115335.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel Release carries invalid source ID (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115341.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115342.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel Release smaller than a beat (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115349.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115350.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel Release address not aligned to size (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115356.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115357.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel Release carries invalid shrink param (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115364.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115365.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel Release is corrupt (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115372.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115373.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel carries ReleaseData type unsupported by manager (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115391.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115392.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel carries Release from a client which does not support Probe (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115418.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115419.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ReleaseData carries invalid source ID (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115425.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115426.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ReleaseData smaller than a beat (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115433.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115434.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ReleaseData address not aligned to size (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115440.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115441.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ReleaseData carries invalid shrink param (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115448.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115449.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAck carries unmanaged address (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115458.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115459.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAck carries invalid source ID (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115465.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115466.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAck address not aligned to size (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115472.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115473.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAck carries invalid param (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115480.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115481.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAck is corrupt (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115488.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115489.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAckData carries unmanaged address (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115498.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115499.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAckData carries invalid source ID (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115505.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115506.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAckData address not aligned to size (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115512.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115513.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAckData carries invalid param (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115520.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115521.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel HintAck carries unmanaged address (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115530.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115531.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel HintAck carries invalid source ID (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115537.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115538.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel HintAck address not aligned to size (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115544.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115545.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel HintAck carries invalid param (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115552.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115553.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel HintAck is corrupt (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115560.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115561.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel opcode changed within multibeat operation (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115611.8]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115612.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel param changed within multibeat operation (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115619.8]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115620.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel size changed within multibeat operation (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115627.8]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115628.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel source changed within multibeat operation (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115635.8]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115636.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel address changed with multibeat operation (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115643.8]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115644.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel opcode changed within multibeat operation (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@115692.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@115693.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel param changed within multibeat operation (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@115700.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@115701.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel size changed within multibeat operation (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@115708.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@115709.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel source changed within multibeat operation (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@115716.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@115717.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel sink changed with multibeat operation (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@115724.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@115725.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel denied changed with multibeat operation (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@115732.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@115733.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'B' channel param changed within multibeat operation (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115790.8]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115791.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'B' channel addresss changed with multibeat operation (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115814.8]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115815.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel opcode changed within multibeat operation (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115862.8]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115863.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel param changed within multibeat operation (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115870.8]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115871.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel size changed within multibeat operation (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115878.8]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115879.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel source changed within multibeat operation (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115886.8]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115887.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel address changed with multibeat operation (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115894.8]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@115895.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel re-used a source ID (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116030.8]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116031.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel acknowledged for nothing inflight (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@116081.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@116082.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper opcode response (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@116098.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@116099.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper response size (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@116109.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@116110.8]
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
          $fwrite(32'h80000002,"Assertion failed: ready check\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@116127.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@116128.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' and 'D' concurrent, despite minlatency 2 (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@116139.6]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@116140.6]
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
          $fwrite(32'h80000002,"Assertion failed: TileLink timeout expired (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116167.6]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116168.6]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel re-used a sink ID (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@116221.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@116222.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'E' channel acknowledged for nothing inflight (connected at BusWrapper.scala:180:55)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116240.8]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@116241.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
