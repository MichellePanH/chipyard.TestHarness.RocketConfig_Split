module TLMonitor_57( // @[:chipyard.TestHarness.RocketConfig.fir@190397.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@190398.4]
  input         reset, // @[:chipyard.TestHarness.RocketConfig.fir@190399.4]
  input         io_in_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@190400.4]
  input         io_in_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@190400.4]
  input  [2:0]  io_in_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@190400.4]
  input  [2:0]  io_in_a_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@190400.4]
  input  [3:0]  io_in_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@190400.4]
  input         io_in_a_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@190400.4]
  input  [31:0] io_in_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@190400.4]
  input  [7:0]  io_in_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@190400.4]
  input         io_in_b_ready, // @[:chipyard.TestHarness.RocketConfig.fir@190400.4]
  input         io_in_b_valid, // @[:chipyard.TestHarness.RocketConfig.fir@190400.4]
  input  [2:0]  io_in_b_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@190400.4]
  input  [1:0]  io_in_b_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@190400.4]
  input  [3:0]  io_in_b_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@190400.4]
  input         io_in_b_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@190400.4]
  input  [31:0] io_in_b_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@190400.4]
  input  [7:0]  io_in_b_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@190400.4]
  input         io_in_b_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@190400.4]
  input         io_in_c_ready, // @[:chipyard.TestHarness.RocketConfig.fir@190400.4]
  input         io_in_c_valid, // @[:chipyard.TestHarness.RocketConfig.fir@190400.4]
  input  [2:0]  io_in_c_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@190400.4]
  input  [2:0]  io_in_c_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@190400.4]
  input  [3:0]  io_in_c_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@190400.4]
  input         io_in_c_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@190400.4]
  input  [31:0] io_in_c_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@190400.4]
  input         io_in_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@190400.4]
  input         io_in_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@190400.4]
  input  [2:0]  io_in_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@190400.4]
  input  [1:0]  io_in_d_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@190400.4]
  input  [3:0]  io_in_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@190400.4]
  input         io_in_d_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@190400.4]
  input  [2:0]  io_in_d_bits_sink, // @[:chipyard.TestHarness.RocketConfig.fir@190400.4]
  input         io_in_d_bits_denied, // @[:chipyard.TestHarness.RocketConfig.fir@190400.4]
  input         io_in_d_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@190400.4]
  input         io_in_e_ready, // @[:chipyard.TestHarness.RocketConfig.fir@190400.4]
  input         io_in_e_valid, // @[:chipyard.TestHarness.RocketConfig.fir@190400.4]
  input  [2:0]  io_in_e_bits_sink // @[:chipyard.TestHarness.RocketConfig.fir@190400.4]
);
  wire [31:0] plusarg_reader_out; // @[PlusArg.scala 44:11:chipyard.TestHarness.RocketConfig.fir@193326.4]
  wire  _T_4; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@190411.6]
  wire  _T_7; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@190417.6]
  wire [26:0] _T_9; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@190419.6]
  wire [11:0] _T_11; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@190421.6]
  wire [31:0] _GEN_71; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@190422.6]
  wire [31:0] _T_12; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@190422.6]
  wire  _T_13; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@190423.6]
  wire [3:0] _T_16; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@190426.6]
  wire [2:0] _T_18; // @[Misc.scala 201:81:chipyard.TestHarness.RocketConfig.fir@190428.6]
  wire  _T_19; // @[Misc.scala 205:21:chipyard.TestHarness.RocketConfig.fir@190429.6]
  wire  _T_22; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@190432.6]
  wire  _T_24; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@190434.6]
  wire  _T_25; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@190435.6]
  wire  _T_27; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@190437.6]
  wire  _T_28; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@190438.6]
  wire  _T_31; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@190441.6]
  wire  _T_32; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@190442.6]
  wire  _T_33; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@190443.6]
  wire  _T_34; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@190444.6]
  wire  _T_35; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@190445.6]
  wire  _T_36; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@190446.6]
  wire  _T_37; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@190447.6]
  wire  _T_38; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@190448.6]
  wire  _T_39; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@190449.6]
  wire  _T_40; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@190450.6]
  wire  _T_41; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@190451.6]
  wire  _T_42; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@190452.6]
  wire  _T_43; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@190453.6]
  wire  _T_46; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@190456.6]
  wire  _T_47; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@190457.6]
  wire  _T_48; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@190458.6]
  wire  _T_49; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@190459.6]
  wire  _T_50; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@190460.6]
  wire  _T_51; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@190461.6]
  wire  _T_52; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@190462.6]
  wire  _T_53; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@190463.6]
  wire  _T_54; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@190464.6]
  wire  _T_55; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@190465.6]
  wire  _T_56; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@190466.6]
  wire  _T_57; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@190467.6]
  wire  _T_58; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@190468.6]
  wire  _T_59; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@190469.6]
  wire  _T_60; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@190470.6]
  wire  _T_61; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@190471.6]
  wire  _T_62; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@190472.6]
  wire  _T_63; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@190473.6]
  wire  _T_64; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@190474.6]
  wire  _T_65; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@190475.6]
  wire  _T_66; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@190476.6]
  wire  _T_67; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@190477.6]
  wire  _T_68; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@190478.6]
  wire  _T_69; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@190479.6]
  wire  _T_70; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@190480.6]
  wire [7:0] _T_77; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@190487.6]
  wire [32:0] _T_81; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@190491.6]
  wire  _T_98; // @[Monitor.scala 79:25:chipyard.TestHarness.RocketConfig.fir@190512.6]
  wire [31:0] _T_100; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@190515.8]
  wire [32:0] _T_101; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@190516.8]
  wire [32:0] _T_103; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@190518.8]
  wire  _T_104; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@190519.8]
  wire [31:0] _T_105; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@190520.8]
  wire [32:0] _T_106; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@190521.8]
  wire [32:0] _T_108; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@190523.8]
  wire  _T_109; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@190524.8]
  wire [31:0] _T_110; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@190525.8]
  wire [32:0] _T_111; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@190526.8]
  wire [32:0] _T_113; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@190528.8]
  wire  _T_114; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@190529.8]
  wire [31:0] _T_115; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@190530.8]
  wire [32:0] _T_116; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@190531.8]
  wire [32:0] _T_118; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@190533.8]
  wire  _T_119; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@190534.8]
  wire [31:0] _T_120; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@190535.8]
  wire [32:0] _T_121; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@190536.8]
  wire [32:0] _T_123; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@190538.8]
  wire  _T_124; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@190539.8]
  wire [32:0] _T_128; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@190543.8]
  wire  _T_129; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@190544.8]
  wire [31:0] _T_130; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@190545.8]
  wire [32:0] _T_131; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@190546.8]
  wire [32:0] _T_133; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@190548.8]
  wire  _T_134; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@190549.8]
  wire  _T_135; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@190550.8]
  wire  _T_136; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@190551.8]
  wire  _T_137; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@190552.8]
  wire  _T_138; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@190553.8]
  wire  _T_139; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@190554.8]
  wire  _T_142; // @[Parameters.scala 92:48:chipyard.TestHarness.RocketConfig.fir@190557.8]
  wire [31:0] _T_144; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@190559.8]
  wire [32:0] _T_145; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@190560.8]
  wire [32:0] _T_147; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@190562.8]
  wire  _T_148; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@190563.8]
  wire  _T_149; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@190564.8]
  wire  _T_153; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190568.8]
  wire  _T_154; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190569.8]
  wire  _T_159; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@190581.8]
  wire  _T_164; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190587.8]
  wire  _T_165; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190588.8]
  wire  _T_167; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190594.8]
  wire  _T_168; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190595.8]
  wire  _T_171; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190602.8]
  wire  _T_172; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190603.8]
  wire  _T_174; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190609.8]
  wire  _T_175; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190610.8]
  wire  _T_176; // @[Bundles.scala 110:27:chipyard.TestHarness.RocketConfig.fir@190615.8]
  wire  _T_178; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190617.8]
  wire  _T_179; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190618.8]
  wire [7:0] _T_180; // @[Monitor.scala 86:18:chipyard.TestHarness.RocketConfig.fir@190623.8]
  wire  _T_181; // @[Monitor.scala 86:31:chipyard.TestHarness.RocketConfig.fir@190624.8]
  wire  _T_183; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190626.8]
  wire  _T_184; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190627.8]
  wire  _T_189; // @[Monitor.scala 90:25:chipyard.TestHarness.RocketConfig.fir@190641.6]
  wire  _T_271; // @[Monitor.scala 97:31:chipyard.TestHarness.RocketConfig.fir@190752.8]
  wire  _T_273; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190754.8]
  wire  _T_274; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190755.8]
  wire  _T_284; // @[Monitor.scala 102:25:chipyard.TestHarness.RocketConfig.fir@190778.6]
  wire  _T_286; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@190781.8]
  wire  _T_294; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@190789.8]
  wire  _T_296; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@190791.8]
  wire  _T_334; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@190829.8]
  wire  _T_335; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@190830.8]
  wire  _T_336; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@190831.8]
  wire  _T_337; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@190832.8]
  wire  _T_338; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@190833.8]
  wire  _T_339; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@190834.8]
  wire  _T_340; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@190835.8]
  wire  _T_342; // @[Parameters.scala 553:30:chipyard.TestHarness.RocketConfig.fir@190837.8]
  wire  _T_344; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190839.8]
  wire  _T_345; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190840.8]
  wire  _T_352; // @[Monitor.scala 106:31:chipyard.TestHarness.RocketConfig.fir@190859.8]
  wire  _T_354; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190861.8]
  wire  _T_355; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190862.8]
  wire  _T_356; // @[Monitor.scala 107:30:chipyard.TestHarness.RocketConfig.fir@190867.8]
  wire  _T_358; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190869.8]
  wire  _T_359; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190870.8]
  wire  _T_364; // @[Monitor.scala 111:25:chipyard.TestHarness.RocketConfig.fir@190884.6]
  wire  _T_413; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@190934.8]
  wire  _T_414; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@190935.8]
  wire  _T_423; // @[Parameters.scala 553:30:chipyard.TestHarness.RocketConfig.fir@190944.8]
  wire  _T_426; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190947.8]
  wire  _T_427; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190948.8]
  wire  _T_442; // @[Monitor.scala 119:25:chipyard.TestHarness.RocketConfig.fir@190984.6]
  wire [7:0] _T_516; // @[Monitor.scala 124:33:chipyard.TestHarness.RocketConfig.fir@191075.8]
  wire [7:0] _T_517; // @[Monitor.scala 124:31:chipyard.TestHarness.RocketConfig.fir@191076.8]
  wire  _T_518; // @[Monitor.scala 124:40:chipyard.TestHarness.RocketConfig.fir@191077.8]
  wire  _T_520; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191079.8]
  wire  _T_521; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191080.8]
  wire  _T_522; // @[Monitor.scala 127:25:chipyard.TestHarness.RocketConfig.fir@191086.6]
  wire  _T_524; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@191089.8]
  wire  _T_567; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@191132.8]
  wire  _T_568; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@191133.8]
  wire  _T_579; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191144.8]
  wire  _T_580; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191145.8]
  wire  _T_587; // @[Bundles.scala 140:33:chipyard.TestHarness.RocketConfig.fir@191164.8]
  wire  _T_589; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191166.8]
  wire  _T_590; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191167.8]
  wire  _T_595; // @[Monitor.scala 135:25:chipyard.TestHarness.RocketConfig.fir@191181.6]
  wire  _T_660; // @[Bundles.scala 147:30:chipyard.TestHarness.RocketConfig.fir@191259.8]
  wire  _T_662; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191261.8]
  wire  _T_663; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191262.8]
  wire  _T_668; // @[Monitor.scala 143:25:chipyard.TestHarness.RocketConfig.fir@191276.6]
  wire  _T_725; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@191334.8]
  wire  _T_728; // @[Parameters.scala 553:30:chipyard.TestHarness.RocketConfig.fir@191337.8]
  wire  _T_730; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191339.8]
  wire  _T_731; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191340.8]
  wire  _T_738; // @[Bundles.scala 160:28:chipyard.TestHarness.RocketConfig.fir@191359.8]
  wire  _T_740; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191361.8]
  wire  _T_741; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191362.8]
  wire  _T_750; // @[Bundles.scala 44:24:chipyard.TestHarness.RocketConfig.fir@191386.6]
  wire  _T_752; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191388.6]
  wire  _T_753; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191389.6]
  wire  _T_754; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@191394.6]
  wire  _T_757; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@191400.6]
  wire  _T_759; // @[Monitor.scala 307:25:chipyard.TestHarness.RocketConfig.fir@191402.6]
  wire  _T_761; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191405.8]
  wire  _T_762; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191406.8]
  wire  _T_763; // @[Monitor.scala 309:27:chipyard.TestHarness.RocketConfig.fir@191411.8]
  wire  _T_765; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191413.8]
  wire  _T_766; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191414.8]
  wire  _T_767; // @[Monitor.scala 310:28:chipyard.TestHarness.RocketConfig.fir@191419.8]
  wire  _T_769; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191421.8]
  wire  _T_770; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191422.8]
  wire  _T_771; // @[Monitor.scala 311:15:chipyard.TestHarness.RocketConfig.fir@191427.8]
  wire  _T_773; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191429.8]
  wire  _T_774; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191430.8]
  wire  _T_775; // @[Monitor.scala 312:15:chipyard.TestHarness.RocketConfig.fir@191435.8]
  wire  _T_777; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191437.8]
  wire  _T_778; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191438.8]
  wire  _T_779; // @[Monitor.scala 315:25:chipyard.TestHarness.RocketConfig.fir@191444.6]
  wire  _T_790; // @[Bundles.scala 104:26:chipyard.TestHarness.RocketConfig.fir@191468.8]
  wire  _T_792; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191470.8]
  wire  _T_793; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191471.8]
  wire  _T_794; // @[Monitor.scala 320:28:chipyard.TestHarness.RocketConfig.fir@191476.8]
  wire  _T_796; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191478.8]
  wire  _T_797; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191479.8]
  wire  _T_807; // @[Monitor.scala 325:25:chipyard.TestHarness.RocketConfig.fir@191502.6]
  wire  _T_827; // @[Monitor.scala 331:30:chipyard.TestHarness.RocketConfig.fir@191543.8]
  wire  _T_829; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191545.8]
  wire  _T_830; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191546.8]
  wire  _T_836; // @[Monitor.scala 335:25:chipyard.TestHarness.RocketConfig.fir@191561.6]
  wire  _T_853; // @[Monitor.scala 343:25:chipyard.TestHarness.RocketConfig.fir@191596.6]
  wire  _T_871; // @[Monitor.scala 351:25:chipyard.TestHarness.RocketConfig.fir@191632.6]
  wire  _T_888; // @[Bundles.scala 42:24:chipyard.TestHarness.RocketConfig.fir@191669.6]
  wire  _T_890; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191671.6]
  wire  _T_891; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191672.6]
  wire  _T_892; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@191677.6]
  wire [32:0] _T_895; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@191680.6]
  wire [31:0] _T_912; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@191701.6]
  wire [32:0] _T_913; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@191702.6]
  wire [32:0] _T_915; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@191704.6]
  wire  _T_916; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@191705.6]
  wire [31:0] _T_917; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@191706.6]
  wire [32:0] _T_918; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@191707.6]
  wire [32:0] _T_920; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@191709.6]
  wire  _T_921; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@191710.6]
  wire [31:0] _T_922; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@191711.6]
  wire [32:0] _T_923; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@191712.6]
  wire [32:0] _T_925; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@191714.6]
  wire  _T_926; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@191715.6]
  wire [31:0] _T_927; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@191716.6]
  wire [32:0] _T_928; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@191717.6]
  wire [32:0] _T_930; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@191719.6]
  wire  _T_931; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@191720.6]
  wire [31:0] _T_932; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@191721.6]
  wire [32:0] _T_933; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@191722.6]
  wire [32:0] _T_935; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@191724.6]
  wire  _T_936; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@191725.6]
  wire [32:0] _T_940; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@191729.6]
  wire  _T_941; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@191730.6]
  wire [31:0] _T_942; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@191731.6]
  wire [32:0] _T_943; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@191732.6]
  wire [32:0] _T_945; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@191734.6]
  wire  _T_946; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@191735.6]
  wire [31:0] _T_947; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@191736.6]
  wire [32:0] _T_948; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@191737.6]
  wire [32:0] _T_950; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@191739.6]
  wire  _T_951; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@191740.6]
  wire  _T_953; // @[Parameters.scala 535:64:chipyard.TestHarness.RocketConfig.fir@191751.6]
  wire  _T_954; // @[Parameters.scala 535:64:chipyard.TestHarness.RocketConfig.fir@191752.6]
  wire  _T_955; // @[Parameters.scala 535:64:chipyard.TestHarness.RocketConfig.fir@191753.6]
  wire  _T_956; // @[Parameters.scala 535:64:chipyard.TestHarness.RocketConfig.fir@191754.6]
  wire  _T_957; // @[Parameters.scala 535:64:chipyard.TestHarness.RocketConfig.fir@191755.6]
  wire  _T_958; // @[Parameters.scala 535:64:chipyard.TestHarness.RocketConfig.fir@191756.6]
  wire  _T_959; // @[Parameters.scala 535:64:chipyard.TestHarness.RocketConfig.fir@191757.6]
  wire [26:0] _T_961; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@191759.6]
  wire [11:0] _T_963; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@191761.6]
  wire [31:0] _GEN_72; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@191762.6]
  wire [31:0] _T_964; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@191762.6]
  wire  _T_965; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@191763.6]
  wire [3:0] _T_968; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@191766.6]
  wire [2:0] _T_970; // @[Misc.scala 201:81:chipyard.TestHarness.RocketConfig.fir@191768.6]
  wire  _T_971; // @[Misc.scala 205:21:chipyard.TestHarness.RocketConfig.fir@191769.6]
  wire  _T_974; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@191772.6]
  wire  _T_976; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@191774.6]
  wire  _T_977; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@191775.6]
  wire  _T_979; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@191777.6]
  wire  _T_980; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@191778.6]
  wire  _T_983; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@191781.6]
  wire  _T_984; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@191782.6]
  wire  _T_985; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@191783.6]
  wire  _T_986; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@191784.6]
  wire  _T_987; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@191785.6]
  wire  _T_988; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@191786.6]
  wire  _T_989; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@191787.6]
  wire  _T_990; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@191788.6]
  wire  _T_991; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@191789.6]
  wire  _T_992; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@191790.6]
  wire  _T_993; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@191791.6]
  wire  _T_994; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@191792.6]
  wire  _T_995; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@191793.6]
  wire  _T_998; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@191796.6]
  wire  _T_999; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@191797.6]
  wire  _T_1000; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@191798.6]
  wire  _T_1001; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@191799.6]
  wire  _T_1002; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@191800.6]
  wire  _T_1003; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@191801.6]
  wire  _T_1004; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@191802.6]
  wire  _T_1005; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@191803.6]
  wire  _T_1006; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@191804.6]
  wire  _T_1007; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@191805.6]
  wire  _T_1008; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@191806.6]
  wire  _T_1009; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@191807.6]
  wire  _T_1010; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@191808.6]
  wire  _T_1011; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@191809.6]
  wire  _T_1012; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@191810.6]
  wire  _T_1013; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@191811.6]
  wire  _T_1014; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@191812.6]
  wire  _T_1015; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@191813.6]
  wire  _T_1016; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@191814.6]
  wire  _T_1017; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@191815.6]
  wire  _T_1018; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@191816.6]
  wire  _T_1019; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@191817.6]
  wire  _T_1020; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@191818.6]
  wire  _T_1021; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@191819.6]
  wire  _T_1022; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@191820.6]
  wire [7:0] _T_1029; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@191827.6]
  wire  _T_1038; // @[Monitor.scala 164:25:chipyard.TestHarness.RocketConfig.fir@191840.6]
  wire  _T_1042; // @[Parameters.scala 92:48:chipyard.TestHarness.RocketConfig.fir@191848.8]
  wire  _T_1043; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@191849.8]
  wire  _T_1048; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191855.8]
  wire  _T_1049; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191856.8]
  wire  _T_1051; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191862.8]
  wire  _T_1052; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191863.8]
  wire  _T_1057; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191876.8]
  wire  _T_1058; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191877.8]
  wire  _T_1059; // @[Bundles.scala 104:26:chipyard.TestHarness.RocketConfig.fir@191882.8]
  wire  _T_1061; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191884.8]
  wire  _T_1062; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191885.8]
  wire  _T_1063; // @[Monitor.scala 170:30:chipyard.TestHarness.RocketConfig.fir@191890.8]
  wire  _T_1065; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191892.8]
  wire  _T_1066; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191893.8]
  wire  _T_1067; // @[Monitor.scala 171:18:chipyard.TestHarness.RocketConfig.fir@191898.8]
  wire  _T_1069; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191900.8]
  wire  _T_1070; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191901.8]
  wire  _T_1071; // @[Monitor.scala 174:25:chipyard.TestHarness.RocketConfig.fir@191907.6]
  wire  _T_1074; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191911.8]
  wire  _T_1084; // @[Monitor.scala 179:31:chipyard.TestHarness.RocketConfig.fir@191937.8]
  wire  _T_1086; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191939.8]
  wire  _T_1087; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191940.8]
  wire  _T_1096; // @[Monitor.scala 184:25:chipyard.TestHarness.RocketConfig.fir@191962.6]
  wire  _T_1117; // @[Monitor.scala 193:25:chipyard.TestHarness.RocketConfig.fir@192009.6]
  wire [7:0] _T_1134; // @[Monitor.scala 199:33:chipyard.TestHarness.RocketConfig.fir@192047.8]
  wire [7:0] _T_1135; // @[Monitor.scala 199:31:chipyard.TestHarness.RocketConfig.fir@192048.8]
  wire  _T_1136; // @[Monitor.scala 199:40:chipyard.TestHarness.RocketConfig.fir@192049.8]
  wire  _T_1138; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192051.8]
  wire  _T_1139; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192052.8]
  wire  _T_1140; // @[Monitor.scala 202:25:chipyard.TestHarness.RocketConfig.fir@192058.6]
  wire  _T_1161; // @[Monitor.scala 211:25:chipyard.TestHarness.RocketConfig.fir@192105.6]
  wire  _T_1182; // @[Monitor.scala 220:25:chipyard.TestHarness.RocketConfig.fir@192152.6]
  wire  _T_1207; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@192209.6]
  wire  _T_1210; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@192215.6]
  wire [26:0] _T_1212; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@192217.6]
  wire [11:0] _T_1214; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@192219.6]
  wire [31:0] _GEN_73; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@192220.6]
  wire [31:0] _T_1215; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@192220.6]
  wire  _T_1216; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@192221.6]
  wire [31:0] _T_1217; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@192222.6]
  wire [32:0] _T_1218; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@192223.6]
  wire [32:0] _T_1220; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@192225.6]
  wire  _T_1221; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@192226.6]
  wire [31:0] _T_1222; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@192227.6]
  wire [32:0] _T_1223; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@192228.6]
  wire [32:0] _T_1225; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@192230.6]
  wire  _T_1226; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@192231.6]
  wire [31:0] _T_1227; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@192232.6]
  wire [32:0] _T_1228; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@192233.6]
  wire [32:0] _T_1230; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@192235.6]
  wire  _T_1231; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@192236.6]
  wire [31:0] _T_1232; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@192237.6]
  wire [32:0] _T_1233; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@192238.6]
  wire [32:0] _T_1235; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@192240.6]
  wire  _T_1236; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@192241.6]
  wire [31:0] _T_1237; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@192242.6]
  wire [32:0] _T_1238; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@192243.6]
  wire [32:0] _T_1240; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@192245.6]
  wire  _T_1241; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@192246.6]
  wire [32:0] _T_1243; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@192248.6]
  wire [32:0] _T_1245; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@192250.6]
  wire  _T_1246; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@192251.6]
  wire [31:0] _T_1247; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@192252.6]
  wire [32:0] _T_1248; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@192253.6]
  wire [32:0] _T_1250; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@192255.6]
  wire  _T_1251; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@192256.6]
  wire [31:0] _T_1252; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@192257.6]
  wire [32:0] _T_1253; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@192258.6]
  wire [32:0] _T_1255; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@192260.6]
  wire  _T_1256; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@192261.6]
  wire  _T_1258; // @[Parameters.scala 535:64:chipyard.TestHarness.RocketConfig.fir@192272.6]
  wire  _T_1259; // @[Parameters.scala 535:64:chipyard.TestHarness.RocketConfig.fir@192273.6]
  wire  _T_1260; // @[Parameters.scala 535:64:chipyard.TestHarness.RocketConfig.fir@192274.6]
  wire  _T_1261; // @[Parameters.scala 535:64:chipyard.TestHarness.RocketConfig.fir@192275.6]
  wire  _T_1262; // @[Parameters.scala 535:64:chipyard.TestHarness.RocketConfig.fir@192276.6]
  wire  _T_1263; // @[Parameters.scala 535:64:chipyard.TestHarness.RocketConfig.fir@192277.6]
  wire  _T_1264; // @[Parameters.scala 535:64:chipyard.TestHarness.RocketConfig.fir@192278.6]
  wire  _T_1285; // @[Monitor.scala 239:25:chipyard.TestHarness.RocketConfig.fir@192303.6]
  wire  _T_1287; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192306.8]
  wire  _T_1288; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192307.8]
  wire  _T_1290; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192313.8]
  wire  _T_1291; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192314.8]
  wire  _T_1292; // @[Monitor.scala 242:30:chipyard.TestHarness.RocketConfig.fir@192319.8]
  wire  _T_1294; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192321.8]
  wire  _T_1295; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192322.8]
  wire  _T_1297; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192328.8]
  wire  _T_1298; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192329.8]
  wire  _T_1299; // @[Bundles.scala 122:29:chipyard.TestHarness.RocketConfig.fir@192334.8]
  wire  _T_1301; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192336.8]
  wire  _T_1302; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192337.8]
  wire  _T_1307; // @[Monitor.scala 248:25:chipyard.TestHarness.RocketConfig.fir@192351.6]
  wire  _T_1325; // @[Monitor.scala 256:25:chipyard.TestHarness.RocketConfig.fir@192391.6]
  wire  _T_1369; // @[Parameters.scala 92:48:chipyard.TestHarness.RocketConfig.fir@192436.8]
  wire  _T_1376; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@192443.8]
  wire  _T_1380; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192447.8]
  wire  _T_1381; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192448.8]
  wire  _T_1386; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@192460.8]
  wire  _T_1391; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192466.8]
  wire  _T_1392; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192467.8]
  wire  _T_1403; // @[Bundles.scala 116:29:chipyard.TestHarness.RocketConfig.fir@192494.8]
  wire  _T_1405; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192496.8]
  wire  _T_1406; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192497.8]
  wire  _T_1411; // @[Monitor.scala 266:25:chipyard.TestHarness.RocketConfig.fir@192511.6]
  wire  _T_1493; // @[Monitor.scala 275:25:chipyard.TestHarness.RocketConfig.fir@192623.6]
  wire  _T_1503; // @[Monitor.scala 279:31:chipyard.TestHarness.RocketConfig.fir@192646.8]
  wire  _T_1505; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192648.8]
  wire  _T_1506; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192649.8]
  wire  _T_1511; // @[Monitor.scala 283:25:chipyard.TestHarness.RocketConfig.fir@192663.6]
  wire  _T_1525; // @[Monitor.scala 290:25:chipyard.TestHarness.RocketConfig.fir@192695.6]
  wire  _T_1547; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@192746.4]
  wire  _T_1554; // @[Edges.scala 93:28:chipyard.TestHarness.RocketConfig.fir@192753.4]
  reg [8:0] _T_1556; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@192755.4]
  reg [31:0] _RAND_0;
  wire [8:0] _T_1558; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@192757.4]
  wire  _T_1559; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@192758.4]
  reg [2:0] _T_1567; // @[Monitor.scala 381:22:chipyard.TestHarness.RocketConfig.fir@192769.4]
  reg [31:0] _RAND_1;
  reg [2:0] _T_1568; // @[Monitor.scala 382:22:chipyard.TestHarness.RocketConfig.fir@192770.4]
  reg [31:0] _RAND_2;
  reg [3:0] _T_1569; // @[Monitor.scala 383:22:chipyard.TestHarness.RocketConfig.fir@192771.4]
  reg [31:0] _RAND_3;
  reg  _T_1570; // @[Monitor.scala 384:22:chipyard.TestHarness.RocketConfig.fir@192772.4]
  reg [31:0] _RAND_4;
  reg [31:0] _T_1571; // @[Monitor.scala 385:22:chipyard.TestHarness.RocketConfig.fir@192773.4]
  reg [31:0] _RAND_5;
  wire  _T_1572; // @[Monitor.scala 386:22:chipyard.TestHarness.RocketConfig.fir@192774.4]
  wire  _T_1573; // @[Monitor.scala 386:19:chipyard.TestHarness.RocketConfig.fir@192775.4]
  wire  _T_1574; // @[Monitor.scala 387:32:chipyard.TestHarness.RocketConfig.fir@192777.6]
  wire  _T_1576; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192779.6]
  wire  _T_1577; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192780.6]
  wire  _T_1578; // @[Monitor.scala 388:32:chipyard.TestHarness.RocketConfig.fir@192785.6]
  wire  _T_1580; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192787.6]
  wire  _T_1581; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192788.6]
  wire  _T_1582; // @[Monitor.scala 389:32:chipyard.TestHarness.RocketConfig.fir@192793.6]
  wire  _T_1584; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192795.6]
  wire  _T_1585; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192796.6]
  wire  _T_1586; // @[Monitor.scala 390:32:chipyard.TestHarness.RocketConfig.fir@192801.6]
  wire  _T_1588; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192803.6]
  wire  _T_1589; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192804.6]
  wire  _T_1590; // @[Monitor.scala 391:32:chipyard.TestHarness.RocketConfig.fir@192809.6]
  wire  _T_1592; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192811.6]
  wire  _T_1593; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192812.6]
  wire  _T_1595; // @[Monitor.scala 393:20:chipyard.TestHarness.RocketConfig.fir@192819.4]
  wire  _T_1596; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@192827.4]
  wire [26:0] _T_1598; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@192829.4]
  wire [11:0] _T_1600; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@192831.4]
  reg [8:0] _T_1604; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@192835.4]
  reg [31:0] _RAND_6;
  wire [8:0] _T_1606; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@192837.4]
  wire  _T_1607; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@192838.4]
  reg [2:0] _T_1615; // @[Monitor.scala 532:22:chipyard.TestHarness.RocketConfig.fir@192849.4]
  reg [31:0] _RAND_7;
  reg [1:0] _T_1616; // @[Monitor.scala 533:22:chipyard.TestHarness.RocketConfig.fir@192850.4]
  reg [31:0] _RAND_8;
  reg [3:0] _T_1617; // @[Monitor.scala 534:22:chipyard.TestHarness.RocketConfig.fir@192851.4]
  reg [31:0] _RAND_9;
  reg  _T_1618; // @[Monitor.scala 535:22:chipyard.TestHarness.RocketConfig.fir@192852.4]
  reg [31:0] _RAND_10;
  reg [2:0] _T_1619; // @[Monitor.scala 536:22:chipyard.TestHarness.RocketConfig.fir@192853.4]
  reg [31:0] _RAND_11;
  reg  _T_1620; // @[Monitor.scala 537:22:chipyard.TestHarness.RocketConfig.fir@192854.4]
  reg [31:0] _RAND_12;
  wire  _T_1621; // @[Monitor.scala 538:22:chipyard.TestHarness.RocketConfig.fir@192855.4]
  wire  _T_1622; // @[Monitor.scala 538:19:chipyard.TestHarness.RocketConfig.fir@192856.4]
  wire  _T_1623; // @[Monitor.scala 539:29:chipyard.TestHarness.RocketConfig.fir@192858.6]
  wire  _T_1625; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@192860.6]
  wire  _T_1626; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@192861.6]
  wire  _T_1627; // @[Monitor.scala 540:29:chipyard.TestHarness.RocketConfig.fir@192866.6]
  wire  _T_1629; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@192868.6]
  wire  _T_1630; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@192869.6]
  wire  _T_1631; // @[Monitor.scala 541:29:chipyard.TestHarness.RocketConfig.fir@192874.6]
  wire  _T_1633; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@192876.6]
  wire  _T_1634; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@192877.6]
  wire  _T_1635; // @[Monitor.scala 542:29:chipyard.TestHarness.RocketConfig.fir@192882.6]
  wire  _T_1637; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@192884.6]
  wire  _T_1638; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@192885.6]
  wire  _T_1639; // @[Monitor.scala 543:29:chipyard.TestHarness.RocketConfig.fir@192890.6]
  wire  _T_1641; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@192892.6]
  wire  _T_1642; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@192893.6]
  wire  _T_1643; // @[Monitor.scala 544:29:chipyard.TestHarness.RocketConfig.fir@192898.6]
  wire  _T_1645; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@192900.6]
  wire  _T_1646; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@192901.6]
  wire  _T_1648; // @[Monitor.scala 546:20:chipyard.TestHarness.RocketConfig.fir@192908.4]
  wire  _T_1649; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@192917.4]
  reg [8:0] _T_1658; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@192926.4]
  reg [31:0] _RAND_13;
  wire [8:0] _T_1660; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@192928.4]
  wire  _T_1661; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@192929.4]
  reg [2:0] _T_1669; // @[Monitor.scala 404:22:chipyard.TestHarness.RocketConfig.fir@192940.4]
  reg [31:0] _RAND_14;
  reg [1:0] _T_1670; // @[Monitor.scala 405:22:chipyard.TestHarness.RocketConfig.fir@192941.4]
  reg [31:0] _RAND_15;
  reg [3:0] _T_1671; // @[Monitor.scala 406:22:chipyard.TestHarness.RocketConfig.fir@192942.4]
  reg [31:0] _RAND_16;
  reg  _T_1672; // @[Monitor.scala 407:22:chipyard.TestHarness.RocketConfig.fir@192943.4]
  reg [31:0] _RAND_17;
  reg [31:0] _T_1673; // @[Monitor.scala 408:22:chipyard.TestHarness.RocketConfig.fir@192944.4]
  reg [31:0] _RAND_18;
  wire  _T_1674; // @[Monitor.scala 409:22:chipyard.TestHarness.RocketConfig.fir@192945.4]
  wire  _T_1675; // @[Monitor.scala 409:19:chipyard.TestHarness.RocketConfig.fir@192946.4]
  wire  _T_1676; // @[Monitor.scala 410:32:chipyard.TestHarness.RocketConfig.fir@192948.6]
  wire  _T_1678; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192950.6]
  wire  _T_1679; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192951.6]
  wire  _T_1680; // @[Monitor.scala 411:32:chipyard.TestHarness.RocketConfig.fir@192956.6]
  wire  _T_1682; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192958.6]
  wire  _T_1683; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192959.6]
  wire  _T_1684; // @[Monitor.scala 412:32:chipyard.TestHarness.RocketConfig.fir@192964.6]
  wire  _T_1686; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192966.6]
  wire  _T_1687; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192967.6]
  wire  _T_1688; // @[Monitor.scala 413:32:chipyard.TestHarness.RocketConfig.fir@192972.6]
  wire  _T_1690; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192974.6]
  wire  _T_1691; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192975.6]
  wire  _T_1692; // @[Monitor.scala 414:32:chipyard.TestHarness.RocketConfig.fir@192980.6]
  wire  _T_1694; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192982.6]
  wire  _T_1695; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192983.6]
  wire  _T_1697; // @[Monitor.scala 416:20:chipyard.TestHarness.RocketConfig.fir@192990.4]
  wire  _T_1698; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@192998.4]
  reg [8:0] _T_1706; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@193006.4]
  reg [31:0] _RAND_19;
  wire [8:0] _T_1708; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@193008.4]
  wire  _T_1709; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@193009.4]
  reg [2:0] _T_1717; // @[Monitor.scala 509:22:chipyard.TestHarness.RocketConfig.fir@193020.4]
  reg [31:0] _RAND_20;
  reg [2:0] _T_1718; // @[Monitor.scala 510:22:chipyard.TestHarness.RocketConfig.fir@193021.4]
  reg [31:0] _RAND_21;
  reg [3:0] _T_1719; // @[Monitor.scala 511:22:chipyard.TestHarness.RocketConfig.fir@193022.4]
  reg [31:0] _RAND_22;
  reg  _T_1720; // @[Monitor.scala 512:22:chipyard.TestHarness.RocketConfig.fir@193023.4]
  reg [31:0] _RAND_23;
  reg [31:0] _T_1721; // @[Monitor.scala 513:22:chipyard.TestHarness.RocketConfig.fir@193024.4]
  reg [31:0] _RAND_24;
  wire  _T_1722; // @[Monitor.scala 514:22:chipyard.TestHarness.RocketConfig.fir@193025.4]
  wire  _T_1723; // @[Monitor.scala 514:19:chipyard.TestHarness.RocketConfig.fir@193026.4]
  wire  _T_1724; // @[Monitor.scala 515:32:chipyard.TestHarness.RocketConfig.fir@193028.6]
  wire  _T_1726; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@193030.6]
  wire  _T_1727; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@193031.6]
  wire  _T_1728; // @[Monitor.scala 516:32:chipyard.TestHarness.RocketConfig.fir@193036.6]
  wire  _T_1730; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@193038.6]
  wire  _T_1731; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@193039.6]
  wire  _T_1732; // @[Monitor.scala 517:32:chipyard.TestHarness.RocketConfig.fir@193044.6]
  wire  _T_1734; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@193046.6]
  wire  _T_1735; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@193047.6]
  wire  _T_1736; // @[Monitor.scala 518:32:chipyard.TestHarness.RocketConfig.fir@193052.6]
  wire  _T_1738; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@193054.6]
  wire  _T_1739; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@193055.6]
  wire  _T_1740; // @[Monitor.scala 519:32:chipyard.TestHarness.RocketConfig.fir@193060.6]
  wire  _T_1742; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@193062.6]
  wire  _T_1743; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@193063.6]
  wire  _T_1745; // @[Monitor.scala 521:20:chipyard.TestHarness.RocketConfig.fir@193070.4]
  reg [1:0] inflight; // @[Monitor.scala 608:27:chipyard.TestHarness.RocketConfig.fir@193078.4]
  reg [31:0] _RAND_25;
  reg [7:0] inflight_opcodes; // @[Monitor.scala 610:35:chipyard.TestHarness.RocketConfig.fir@193079.4]
  reg [31:0] _RAND_26;
  reg [15:0] inflight_sizes; // @[Monitor.scala 612:33:chipyard.TestHarness.RocketConfig.fir@193080.4]
  reg [31:0] _RAND_27;
  reg [8:0] _T_1755; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@193090.4]
  reg [31:0] _RAND_28;
  wire [8:0] _T_1757; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@193092.4]
  wire  a_first; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@193093.4]
  reg [8:0] _T_1773; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@193112.4]
  reg [31:0] _RAND_29;
  wire [8:0] _T_1775; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@193114.4]
  wire  d_first; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@193115.4]
  wire [2:0] _GEN_74; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@193134.4]
  wire [3:0] _T_1783; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@193134.4]
  wire [7:0] _T_1784; // @[Monitor.scala 629:44:chipyard.TestHarness.RocketConfig.fir@193135.4]
  wire [15:0] _T_1788; // @[Monitor.scala 606:57:chipyard.TestHarness.RocketConfig.fir@193139.4]
  wire [15:0] _GEN_75; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@193140.4]
  wire [15:0] _T_1789; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@193140.4]
  wire [15:0] _T_1790; // @[Monitor.scala 629:152:chipyard.TestHarness.RocketConfig.fir@193141.4]
  wire [3:0] _T_1791; // @[Monitor.scala 633:65:chipyard.TestHarness.RocketConfig.fir@193145.4]
  wire [15:0] _T_1792; // @[Monitor.scala 633:40:chipyard.TestHarness.RocketConfig.fir@193146.4]
  wire [15:0] _T_1796; // @[Monitor.scala 606:57:chipyard.TestHarness.RocketConfig.fir@193150.4]
  wire [15:0] _T_1797; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@193151.4]
  wire [15:0] _T_1798; // @[Monitor.scala 633:144:chipyard.TestHarness.RocketConfig.fir@193152.4]
  wire  _T_1802; // @[Monitor.scala 643:27:chipyard.TestHarness.RocketConfig.fir@193177.4]
  wire [1:0] _T_1804; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@193180.6]
  wire [3:0] _T_1805; // @[Monitor.scala 645:53:chipyard.TestHarness.RocketConfig.fir@193182.6]
  wire [3:0] _T_1806; // @[Monitor.scala 645:61:chipyard.TestHarness.RocketConfig.fir@193183.6]
  wire [4:0] _T_1807; // @[Monitor.scala 646:49:chipyard.TestHarness.RocketConfig.fir@193185.6]
  wire [4:0] _T_1808; // @[Monitor.scala 646:57:chipyard.TestHarness.RocketConfig.fir@193186.6]
  wire [2:0] _GEN_78; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@193188.6]
  wire [3:0] _T_1809; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@193188.6]
  wire [3:0] a_opcodes_set_interm; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@193179.4]
  wire [18:0] _GEN_79; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@193189.6]
  wire [18:0] _T_1810; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@193189.6]
  wire [3:0] _T_1811; // @[Monitor.scala 648:68:chipyard.TestHarness.RocketConfig.fir@193191.6]
  wire [4:0] a_sizes_set_interm; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@193179.4]
  wire [19:0] _GEN_80; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@193192.6]
  wire [19:0] _T_1812; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@193192.6]
  wire [1:0] _T_1813; // @[Monitor.scala 649:26:chipyard.TestHarness.RocketConfig.fir@193194.6]
  wire  _T_1815; // @[Monitor.scala 649:17:chipyard.TestHarness.RocketConfig.fir@193196.6]
  wire  _T_1817; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@193198.6]
  wire  _T_1818; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@193199.6]
  wire [1:0] a_set; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@193179.4]
  wire [18:0] _GEN_30; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@193179.4]
  wire [19:0] _GEN_31; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@193179.4]
  wire  _T_1821; // @[Monitor.scala 660:27:chipyard.TestHarness.RocketConfig.fir@193213.4]
  wire  _T_1823; // @[Monitor.scala 660:75:chipyard.TestHarness.RocketConfig.fir@193215.4]
  wire  _T_1824; // @[Monitor.scala 660:72:chipyard.TestHarness.RocketConfig.fir@193216.4]
  wire [1:0] _T_1825; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@193218.6]
  wire [30:0] _GEN_82; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@193225.6]
  wire [30:0] _T_1831; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@193225.6]
  wire [30:0] _GEN_83; // @[Monitor.scala 663:72:chipyard.TestHarness.RocketConfig.fir@193232.6]
  wire [30:0] _T_1837; // @[Monitor.scala 663:72:chipyard.TestHarness.RocketConfig.fir@193232.6]
  wire [1:0] d_clr; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@193217.4]
  wire [30:0] _GEN_33; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@193217.4]
  wire [30:0] _GEN_34; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@193217.4]
  wire  _T_1838; // @[Monitor.scala 665:26:chipyard.TestHarness.RocketConfig.fir@193235.4]
  wire  _T_1841; // @[Monitor.scala 665:71:chipyard.TestHarness.RocketConfig.fir@193238.4]
  wire [1:0] _T_1842; // @[Monitor.scala 666:25:chipyard.TestHarness.RocketConfig.fir@193240.6]
  wire  _T_1844; // @[Monitor.scala 666:93:chipyard.TestHarness.RocketConfig.fir@193242.6]
  wire  _T_1845; // @[Monitor.scala 666:68:chipyard.TestHarness.RocketConfig.fir@193243.6]
  wire  _T_1846; // @[Monitor.scala 666:142:chipyard.TestHarness.RocketConfig.fir@193244.6]
  wire  _T_1847; // @[Monitor.scala 666:119:chipyard.TestHarness.RocketConfig.fir@193245.6]
  wire  _T_1848; // @[Monitor.scala 666:166:chipyard.TestHarness.RocketConfig.fir@193246.6]
  wire  _T_1849; // @[Monitor.scala 666:49:chipyard.TestHarness.RocketConfig.fir@193247.6]
  wire  _T_1851; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@193249.6]
  wire  _T_1852; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@193250.6]
  wire [3:0] a_opcode_lookup; // @[:chipyard.TestHarness.RocketConfig.fir@193132.4 :chipyard.TestHarness.RocketConfig.fir@193133.4 Monitor.scala 629:21:chipyard.TestHarness.RocketConfig.fir@193142.4]
  wire [2:0] _GEN_37; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@193256.6]
  wire [2:0] _GEN_38; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@193256.6]
  wire [2:0] _GEN_39; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@193256.6]
  wire [2:0] _GEN_40; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@193256.6]
  wire [2:0] _GEN_41; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@193256.6]
  wire [2:0] _GEN_42; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@193256.6]
  wire  _T_1854; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@193256.6]
  wire [2:0] _GEN_49; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@193258.6]
  wire [2:0] _GEN_50; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@193258.6]
  wire  _T_1856; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@193258.6]
  wire  _T_1857; // @[Monitor.scala 667:71:chipyard.TestHarness.RocketConfig.fir@193259.6]
  wire [2:0] _GEN_53; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@193260.6]
  wire [2:0] _GEN_54; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@193260.6]
  wire [2:0] _GEN_55; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@193260.6]
  wire [2:0] _GEN_56; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@193260.6]
  wire [2:0] _GEN_57; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@193260.6]
  wire [2:0] _GEN_58; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@193260.6]
  wire  _T_1858; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@193260.6]
  wire [2:0] _GEN_65; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@193261.6]
  wire [2:0] _GEN_66; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@193261.6]
  wire  _T_1859; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@193261.6]
  wire  _T_1860; // @[Monitor.scala 668:99:chipyard.TestHarness.RocketConfig.fir@193262.6]
  wire  _T_1861; // @[Monitor.scala 668:34:chipyard.TestHarness.RocketConfig.fir@193263.6]
  wire  _T_1862; // @[Monitor.scala 668:15:chipyard.TestHarness.RocketConfig.fir@193264.6]
  wire  _T_1864; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@193266.6]
  wire  _T_1865; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@193267.6]
  wire [7:0] a_size_lookup; // @[:chipyard.TestHarness.RocketConfig.fir@193143.4 :chipyard.TestHarness.RocketConfig.fir@193144.4 Monitor.scala 633:19:chipyard.TestHarness.RocketConfig.fir@193153.4]
  wire [7:0] _GEN_84; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@193272.6]
  wire  _T_1866; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@193272.6]
  wire  _T_1868; // @[Monitor.scala 670:72:chipyard.TestHarness.RocketConfig.fir@193274.6]
  wire  _T_1869; // @[Monitor.scala 670:53:chipyard.TestHarness.RocketConfig.fir@193275.6]
  wire  _T_1871; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@193277.6]
  wire  _T_1872; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@193278.6]
  wire  _T_1874; // @[Monitor.scala 672:36:chipyard.TestHarness.RocketConfig.fir@193285.4]
  wire  _T_1875; // @[Monitor.scala 672:47:chipyard.TestHarness.RocketConfig.fir@193286.4]
  wire  _T_1877; // @[Monitor.scala 672:65:chipyard.TestHarness.RocketConfig.fir@193288.4]
  wire  _T_1879; // @[Monitor.scala 672:116:chipyard.TestHarness.RocketConfig.fir@193290.4]
  wire  _T_1880; // @[Monitor.scala 673:15:chipyard.TestHarness.RocketConfig.fir@193292.6]
  wire  _T_1881; // @[Monitor.scala 673:32:chipyard.TestHarness.RocketConfig.fir@193293.6]
  wire  _T_1883; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@193295.6]
  wire  _T_1884; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@193296.6]
  wire  _T_1885; // @[Monitor.scala 677:20:chipyard.TestHarness.RocketConfig.fir@193302.4]
  wire  _T_1886; // @[Monitor.scala 677:40:chipyard.TestHarness.RocketConfig.fir@193303.4]
  wire  _T_1887; // @[Monitor.scala 677:33:chipyard.TestHarness.RocketConfig.fir@193304.4]
  wire  _T_1888; // @[Monitor.scala 677:30:chipyard.TestHarness.RocketConfig.fir@193305.4]
  wire  _T_1890; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@193307.4]
  wire  _T_1891; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@193308.4]
  wire [1:0] _T_1892; // @[Monitor.scala 680:27:chipyard.TestHarness.RocketConfig.fir@193313.4]
  wire [1:0] _T_1893; // @[Monitor.scala 680:38:chipyard.TestHarness.RocketConfig.fir@193314.4]
  wire [1:0] _T_1894; // @[Monitor.scala 680:36:chipyard.TestHarness.RocketConfig.fir@193315.4]
  wire [7:0] a_opcodes_set; // @[:chipyard.TestHarness.RocketConfig.fir@193128.4 :chipyard.TestHarness.RocketConfig.fir@193129.4 Monitor.scala 647:21:chipyard.TestHarness.RocketConfig.fir@193190.6]
  wire [7:0] _T_1895; // @[Monitor.scala 681:43:chipyard.TestHarness.RocketConfig.fir@193317.4]
  wire [7:0] d_opcodes_clr; // @[:chipyard.TestHarness.RocketConfig.fir@193207.4 :chipyard.TestHarness.RocketConfig.fir@193208.4 Monitor.scala 662:21:chipyard.TestHarness.RocketConfig.fir@193226.6]
  wire [7:0] _T_1896; // @[Monitor.scala 681:62:chipyard.TestHarness.RocketConfig.fir@193318.4]
  wire [7:0] _T_1897; // @[Monitor.scala 681:60:chipyard.TestHarness.RocketConfig.fir@193319.4]
  wire [15:0] a_sizes_set; // @[:chipyard.TestHarness.RocketConfig.fir@193130.4 :chipyard.TestHarness.RocketConfig.fir@193131.4 Monitor.scala 648:19:chipyard.TestHarness.RocketConfig.fir@193193.6]
  wire [15:0] _T_1898; // @[Monitor.scala 682:39:chipyard.TestHarness.RocketConfig.fir@193321.4]
  wire [15:0] d_sizes_clr; // @[:chipyard.TestHarness.RocketConfig.fir@193209.4 :chipyard.TestHarness.RocketConfig.fir@193210.4 Monitor.scala 663:19:chipyard.TestHarness.RocketConfig.fir@193233.6]
  wire [15:0] _T_1899; // @[Monitor.scala 682:56:chipyard.TestHarness.RocketConfig.fir@193322.4]
  wire [15:0] _T_1900; // @[Monitor.scala 682:54:chipyard.TestHarness.RocketConfig.fir@193323.4]
  reg [31:0] _T_1901; // @[Monitor.scala 684:27:chipyard.TestHarness.RocketConfig.fir@193325.4]
  reg [31:0] _RAND_30;
  wire  _T_1902; // @[Monitor.scala 687:26:chipyard.TestHarness.RocketConfig.fir@193328.4]
  wire  _T_1903; // @[Monitor.scala 687:16:chipyard.TestHarness.RocketConfig.fir@193329.4]
  wire  _T_1904; // @[Monitor.scala 687:39:chipyard.TestHarness.RocketConfig.fir@193330.4]
  wire  _T_1905; // @[Monitor.scala 687:30:chipyard.TestHarness.RocketConfig.fir@193331.4]
  wire  _T_1906; // @[Monitor.scala 687:59:chipyard.TestHarness.RocketConfig.fir@193332.4]
  wire  _T_1907; // @[Monitor.scala 687:47:chipyard.TestHarness.RocketConfig.fir@193333.4]
  wire  _T_1909; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@193335.4]
  wire  _T_1910; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@193336.4]
  wire [31:0] _T_1912; // @[Monitor.scala 689:26:chipyard.TestHarness.RocketConfig.fir@193342.4]
  wire  _T_1915; // @[Monitor.scala 690:27:chipyard.TestHarness.RocketConfig.fir@193346.4]
  reg [7:0] _T_1916; // @[Monitor.scala 694:27:chipyard.TestHarness.RocketConfig.fir@193350.4]
  reg [31:0] _RAND_31;
  reg [8:0] _T_1925; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@193359.4]
  reg [31:0] _RAND_32;
  wire [8:0] _T_1927; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@193361.4]
  wire  _T_1928; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@193362.4]
  wire  _T_1938; // @[Monitor.scala 700:27:chipyard.TestHarness.RocketConfig.fir@193376.4]
  wire  _T_1941; // @[Edges.scala 72:43:chipyard.TestHarness.RocketConfig.fir@193379.4]
  wire  _T_1942; // @[Edges.scala 72:40:chipyard.TestHarness.RocketConfig.fir@193380.4]
  wire  _T_1943; // @[Monitor.scala 700:38:chipyard.TestHarness.RocketConfig.fir@193381.4]
  wire [7:0] _T_1944; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@193383.6]
  wire [7:0] _T_1945; // @[Monitor.scala 702:23:chipyard.TestHarness.RocketConfig.fir@193385.6]
  wire  _T_1947; // @[Monitor.scala 702:14:chipyard.TestHarness.RocketConfig.fir@193387.6]
  wire  _T_1949; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@193389.6]
  wire  _T_1950; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@193390.6]
  wire [7:0] _GEN_69; // @[Monitor.scala 700:72:chipyard.TestHarness.RocketConfig.fir@193382.4]
  wire  _T_1952; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@193398.4]
  wire [7:0] _T_1955; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@193402.6]
  wire [7:0] _T_1956; // @[Monitor.scala 708:24:chipyard.TestHarness.RocketConfig.fir@193404.6]
  wire [7:0] _T_1957; // @[Monitor.scala 708:35:chipyard.TestHarness.RocketConfig.fir@193405.6]
  wire  _T_1960; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@193408.6]
  wire  _T_1961; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@193409.6]
  wire [7:0] _GEN_70; // @[Monitor.scala 706:73:chipyard.TestHarness.RocketConfig.fir@193401.4]
  wire [7:0] _T_1962; // @[Monitor.scala 713:27:chipyard.TestHarness.RocketConfig.fir@193415.4]
  wire [7:0] _T_1963; // @[Monitor.scala 713:38:chipyard.TestHarness.RocketConfig.fir@193416.4]
  wire [7:0] _T_1964; // @[Monitor.scala 713:36:chipyard.TestHarness.RocketConfig.fir@193417.4]
  wire  _GEN_85; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190571.10]
  wire  _GEN_99; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190700.10]
  wire  _GEN_115; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190842.10]
  wire  _GEN_125; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190950.10]
  wire  _GEN_135; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191050.10]
  wire  _GEN_145; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191147.10]
  wire  _GEN_155; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191242.10]
  wire  _GEN_165; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191342.10]
  wire  _GEN_175; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191408.10]
  wire  _GEN_185; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191450.10]
  wire  _GEN_195; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191508.10]
  wire  _GEN_205; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191567.10]
  wire  _GEN_211; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191602.10]
  wire  _GEN_217; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191638.10]
  wire  _GEN_223; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191858.10]
  wire  _GEN_235; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191913.10]
  wire  _GEN_247; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191968.10]
  wire  _GEN_257; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192015.10]
  wire  _GEN_267; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192064.10]
  wire  _GEN_275; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192111.10]
  wire  _GEN_283; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192158.10]
  wire  _GEN_293; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192309.10]
  wire  _GEN_303; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192357.10]
  wire  _GEN_313; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192450.10]
  wire  _GEN_325; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192570.10]
  wire  _GEN_337; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192629.10]
  wire  _GEN_345; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192669.10]
  wire  _GEN_353; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192701.10]
  plusarg_reader #(.FORMAT("tilelink_timeout=%d"), .DEFAULT(0), .WIDTH(32)) plusarg_reader ( // @[PlusArg.scala 44:11:chipyard.TestHarness.RocketConfig.fir@193326.4]
    .out(plusarg_reader_out)
  );
  assign _T_4 = ~io_in_a_bits_source; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@190411.6]
  assign _T_7 = _T_4 | io_in_a_bits_source; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@190417.6]
  assign _T_9 = 27'hfff << io_in_a_bits_size; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@190419.6]
  assign _T_11 = ~_T_9[11:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@190421.6]
  assign _GEN_71 = {{20'd0}, _T_11}; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@190422.6]
  assign _T_12 = io_in_a_bits_address & _GEN_71; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@190422.6]
  assign _T_13 = _T_12 == 32'h0; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@190423.6]
  assign _T_16 = 4'h1 << io_in_a_bits_size[1:0]; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@190426.6]
  assign _T_18 = _T_16[2:0] | 3'h1; // @[Misc.scala 201:81:chipyard.TestHarness.RocketConfig.fir@190428.6]
  assign _T_19 = io_in_a_bits_size >= 4'h3; // @[Misc.scala 205:21:chipyard.TestHarness.RocketConfig.fir@190429.6]
  assign _T_22 = ~io_in_a_bits_address[2]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@190432.6]
  assign _T_24 = _T_18[2] & _T_22; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@190434.6]
  assign _T_25 = _T_19 | _T_24; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@190435.6]
  assign _T_27 = _T_18[2] & io_in_a_bits_address[2]; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@190437.6]
  assign _T_28 = _T_19 | _T_27; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@190438.6]
  assign _T_31 = ~io_in_a_bits_address[1]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@190441.6]
  assign _T_32 = _T_22 & _T_31; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@190442.6]
  assign _T_33 = _T_18[1] & _T_32; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@190443.6]
  assign _T_34 = _T_25 | _T_33; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@190444.6]
  assign _T_35 = _T_22 & io_in_a_bits_address[1]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@190445.6]
  assign _T_36 = _T_18[1] & _T_35; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@190446.6]
  assign _T_37 = _T_25 | _T_36; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@190447.6]
  assign _T_38 = io_in_a_bits_address[2] & _T_31; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@190448.6]
  assign _T_39 = _T_18[1] & _T_38; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@190449.6]
  assign _T_40 = _T_28 | _T_39; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@190450.6]
  assign _T_41 = io_in_a_bits_address[2] & io_in_a_bits_address[1]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@190451.6]
  assign _T_42 = _T_18[1] & _T_41; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@190452.6]
  assign _T_43 = _T_28 | _T_42; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@190453.6]
  assign _T_46 = ~io_in_a_bits_address[0]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@190456.6]
  assign _T_47 = _T_32 & _T_46; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@190457.6]
  assign _T_48 = _T_18[0] & _T_47; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@190458.6]
  assign _T_49 = _T_34 | _T_48; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@190459.6]
  assign _T_50 = _T_32 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@190460.6]
  assign _T_51 = _T_18[0] & _T_50; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@190461.6]
  assign _T_52 = _T_34 | _T_51; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@190462.6]
  assign _T_53 = _T_35 & _T_46; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@190463.6]
  assign _T_54 = _T_18[0] & _T_53; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@190464.6]
  assign _T_55 = _T_37 | _T_54; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@190465.6]
  assign _T_56 = _T_35 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@190466.6]
  assign _T_57 = _T_18[0] & _T_56; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@190467.6]
  assign _T_58 = _T_37 | _T_57; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@190468.6]
  assign _T_59 = _T_38 & _T_46; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@190469.6]
  assign _T_60 = _T_18[0] & _T_59; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@190470.6]
  assign _T_61 = _T_40 | _T_60; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@190471.6]
  assign _T_62 = _T_38 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@190472.6]
  assign _T_63 = _T_18[0] & _T_62; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@190473.6]
  assign _T_64 = _T_40 | _T_63; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@190474.6]
  assign _T_65 = _T_41 & _T_46; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@190475.6]
  assign _T_66 = _T_18[0] & _T_65; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@190476.6]
  assign _T_67 = _T_43 | _T_66; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@190477.6]
  assign _T_68 = _T_41 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@190478.6]
  assign _T_69 = _T_18[0] & _T_68; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@190479.6]
  assign _T_70 = _T_43 | _T_69; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@190480.6]
  assign _T_77 = {_T_70,_T_67,_T_64,_T_61,_T_58,_T_55,_T_52,_T_49}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@190487.6]
  assign _T_81 = {1'b0,$signed(io_in_a_bits_address)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@190491.6]
  assign _T_98 = io_in_a_bits_opcode == 3'h6; // @[Monitor.scala 79:25:chipyard.TestHarness.RocketConfig.fir@190512.6]
  assign _T_100 = io_in_a_bits_address ^ 32'h3000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@190515.8]
  assign _T_101 = {1'b0,$signed(_T_100)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@190516.8]
  assign _T_103 = $signed(_T_101) & -33'sh1000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@190518.8]
  assign _T_104 = $signed(_T_103) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@190519.8]
  assign _T_105 = io_in_a_bits_address ^ 32'h2010000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@190520.8]
  assign _T_106 = {1'b0,$signed(_T_105)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@190521.8]
  assign _T_108 = $signed(_T_106) & -33'sh1000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@190523.8]
  assign _T_109 = $signed(_T_108) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@190524.8]
  assign _T_110 = io_in_a_bits_address ^ 32'h54000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@190525.8]
  assign _T_111 = {1'b0,$signed(_T_110)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@190526.8]
  assign _T_113 = $signed(_T_111) & -33'sh1000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@190528.8]
  assign _T_114 = $signed(_T_113) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@190529.8]
  assign _T_115 = io_in_a_bits_address ^ 32'hc000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@190530.8]
  assign _T_116 = {1'b0,$signed(_T_115)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@190531.8]
  assign _T_118 = $signed(_T_116) & -33'sh4000000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@190533.8]
  assign _T_119 = $signed(_T_118) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@190534.8]
  assign _T_120 = io_in_a_bits_address ^ 32'h2000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@190535.8]
  assign _T_121 = {1'b0,$signed(_T_120)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@190536.8]
  assign _T_123 = $signed(_T_121) & -33'sh10000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@190538.8]
  assign _T_124 = $signed(_T_123) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@190539.8]
  assign _T_128 = $signed(_T_81) & -33'sh1000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@190543.8]
  assign _T_129 = $signed(_T_128) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@190544.8]
  assign _T_130 = io_in_a_bits_address ^ 32'h10000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@190545.8]
  assign _T_131 = {1'b0,$signed(_T_130)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@190546.8]
  assign _T_133 = $signed(_T_131) & -33'sh10000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@190548.8]
  assign _T_134 = $signed(_T_133) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@190549.8]
  assign _T_135 = _T_104 | _T_109; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@190550.8]
  assign _T_136 = _T_135 | _T_114; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@190551.8]
  assign _T_137 = _T_136 | _T_119; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@190552.8]
  assign _T_138 = _T_137 | _T_124; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@190553.8]
  assign _T_139 = _T_138 | _T_129; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@190554.8]
  assign _T_142 = 4'h6 == io_in_a_bits_size; // @[Parameters.scala 92:48:chipyard.TestHarness.RocketConfig.fir@190557.8]
  assign _T_144 = io_in_a_bits_address ^ 32'h80000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@190559.8]
  assign _T_145 = {1'b0,$signed(_T_144)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@190560.8]
  assign _T_147 = $signed(_T_145) & -33'sh10000000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@190562.8]
  assign _T_148 = $signed(_T_147) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@190563.8]
  assign _T_149 = _T_142 & _T_148; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@190564.8]
  assign _T_153 = _T_149 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190568.8]
  assign _T_154 = ~_T_153; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190569.8]
  assign _T_159 = _T_4 & _T_142; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@190581.8]
  assign _T_164 = _T_159 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190587.8]
  assign _T_165 = ~_T_164; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190588.8]
  assign _T_167 = _T_7 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190594.8]
  assign _T_168 = ~_T_167; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190595.8]
  assign _T_171 = _T_19 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190602.8]
  assign _T_172 = ~_T_171; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190603.8]
  assign _T_174 = _T_13 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190609.8]
  assign _T_175 = ~_T_174; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190610.8]
  assign _T_176 = io_in_a_bits_param <= 3'h2; // @[Bundles.scala 110:27:chipyard.TestHarness.RocketConfig.fir@190615.8]
  assign _T_178 = _T_176 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190617.8]
  assign _T_179 = ~_T_178; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190618.8]
  assign _T_180 = ~io_in_a_bits_mask; // @[Monitor.scala 86:18:chipyard.TestHarness.RocketConfig.fir@190623.8]
  assign _T_181 = _T_180 == 8'h0; // @[Monitor.scala 86:31:chipyard.TestHarness.RocketConfig.fir@190624.8]
  assign _T_183 = _T_181 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190626.8]
  assign _T_184 = ~_T_183; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190627.8]
  assign _T_189 = io_in_a_bits_opcode == 3'h7; // @[Monitor.scala 90:25:chipyard.TestHarness.RocketConfig.fir@190641.6]
  assign _T_271 = io_in_a_bits_param != 3'h0; // @[Monitor.scala 97:31:chipyard.TestHarness.RocketConfig.fir@190752.8]
  assign _T_273 = _T_271 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190754.8]
  assign _T_274 = ~_T_273; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190755.8]
  assign _T_284 = io_in_a_bits_opcode == 3'h4; // @[Monitor.scala 102:25:chipyard.TestHarness.RocketConfig.fir@190778.6]
  assign _T_286 = io_in_a_bits_size <= 4'hc; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@190781.8]
  assign _T_294 = _T_286 & _T_104; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@190789.8]
  assign _T_296 = io_in_a_bits_size <= 4'h6; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@190791.8]
  assign _T_334 = _T_109 | _T_114; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@190829.8]
  assign _T_335 = _T_334 | _T_119; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@190830.8]
  assign _T_336 = _T_335 | _T_124; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@190831.8]
  assign _T_337 = _T_336 | _T_129; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@190832.8]
  assign _T_338 = _T_337 | _T_134; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@190833.8]
  assign _T_339 = _T_338 | _T_148; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@190834.8]
  assign _T_340 = _T_296 & _T_339; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@190835.8]
  assign _T_342 = _T_294 | _T_340; // @[Parameters.scala 553:30:chipyard.TestHarness.RocketConfig.fir@190837.8]
  assign _T_344 = _T_342 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190839.8]
  assign _T_345 = ~_T_344; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190840.8]
  assign _T_352 = io_in_a_bits_param == 3'h0; // @[Monitor.scala 106:31:chipyard.TestHarness.RocketConfig.fir@190859.8]
  assign _T_354 = _T_352 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190861.8]
  assign _T_355 = ~_T_354; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190862.8]
  assign _T_356 = io_in_a_bits_mask == _T_77; // @[Monitor.scala 107:30:chipyard.TestHarness.RocketConfig.fir@190867.8]
  assign _T_358 = _T_356 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190869.8]
  assign _T_359 = ~_T_358; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190870.8]
  assign _T_364 = io_in_a_bits_opcode == 3'h0; // @[Monitor.scala 111:25:chipyard.TestHarness.RocketConfig.fir@190884.6]
  assign _T_413 = _T_337 | _T_148; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@190934.8]
  assign _T_414 = _T_296 & _T_413; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@190935.8]
  assign _T_423 = _T_294 | _T_414; // @[Parameters.scala 553:30:chipyard.TestHarness.RocketConfig.fir@190944.8]
  assign _T_426 = _T_423 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190947.8]
  assign _T_427 = ~_T_426; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190948.8]
  assign _T_442 = io_in_a_bits_opcode == 3'h1; // @[Monitor.scala 119:25:chipyard.TestHarness.RocketConfig.fir@190984.6]
  assign _T_516 = ~_T_77; // @[Monitor.scala 124:33:chipyard.TestHarness.RocketConfig.fir@191075.8]
  assign _T_517 = io_in_a_bits_mask & _T_516; // @[Monitor.scala 124:31:chipyard.TestHarness.RocketConfig.fir@191076.8]
  assign _T_518 = _T_517 == 8'h0; // @[Monitor.scala 124:40:chipyard.TestHarness.RocketConfig.fir@191077.8]
  assign _T_520 = _T_518 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191079.8]
  assign _T_521 = ~_T_520; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191080.8]
  assign _T_522 = io_in_a_bits_opcode == 3'h2; // @[Monitor.scala 127:25:chipyard.TestHarness.RocketConfig.fir@191086.6]
  assign _T_524 = io_in_a_bits_size <= 4'h3; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@191089.8]
  assign _T_567 = _T_139 | _T_148; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@191132.8]
  assign _T_568 = _T_524 & _T_567; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@191133.8]
  assign _T_579 = _T_568 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191144.8]
  assign _T_580 = ~_T_579; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191145.8]
  assign _T_587 = io_in_a_bits_param <= 3'h4; // @[Bundles.scala 140:33:chipyard.TestHarness.RocketConfig.fir@191164.8]
  assign _T_589 = _T_587 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191166.8]
  assign _T_590 = ~_T_589; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191167.8]
  assign _T_595 = io_in_a_bits_opcode == 3'h3; // @[Monitor.scala 135:25:chipyard.TestHarness.RocketConfig.fir@191181.6]
  assign _T_660 = io_in_a_bits_param <= 3'h3; // @[Bundles.scala 147:30:chipyard.TestHarness.RocketConfig.fir@191259.8]
  assign _T_662 = _T_660 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191261.8]
  assign _T_663 = ~_T_662; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191262.8]
  assign _T_668 = io_in_a_bits_opcode == 3'h5; // @[Monitor.scala 143:25:chipyard.TestHarness.RocketConfig.fir@191276.6]
  assign _T_725 = _T_296 & _T_148; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@191334.8]
  assign _T_728 = _T_294 | _T_725; // @[Parameters.scala 553:30:chipyard.TestHarness.RocketConfig.fir@191337.8]
  assign _T_730 = _T_728 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191339.8]
  assign _T_731 = ~_T_730; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191340.8]
  assign _T_738 = io_in_a_bits_param <= 3'h1; // @[Bundles.scala 160:28:chipyard.TestHarness.RocketConfig.fir@191359.8]
  assign _T_740 = _T_738 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191361.8]
  assign _T_741 = ~_T_740; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191362.8]
  assign _T_750 = io_in_d_bits_opcode <= 3'h6; // @[Bundles.scala 44:24:chipyard.TestHarness.RocketConfig.fir@191386.6]
  assign _T_752 = _T_750 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191388.6]
  assign _T_753 = ~_T_752; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191389.6]
  assign _T_754 = ~io_in_d_bits_source; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@191394.6]
  assign _T_757 = _T_754 | io_in_d_bits_source; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@191400.6]
  assign _T_759 = io_in_d_bits_opcode == 3'h6; // @[Monitor.scala 307:25:chipyard.TestHarness.RocketConfig.fir@191402.6]
  assign _T_761 = _T_757 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191405.8]
  assign _T_762 = ~_T_761; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191406.8]
  assign _T_763 = io_in_d_bits_size >= 4'h3; // @[Monitor.scala 309:27:chipyard.TestHarness.RocketConfig.fir@191411.8]
  assign _T_765 = _T_763 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191413.8]
  assign _T_766 = ~_T_765; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191414.8]
  assign _T_767 = io_in_d_bits_param == 2'h0; // @[Monitor.scala 310:28:chipyard.TestHarness.RocketConfig.fir@191419.8]
  assign _T_769 = _T_767 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191421.8]
  assign _T_770 = ~_T_769; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191422.8]
  assign _T_771 = ~io_in_d_bits_corrupt; // @[Monitor.scala 311:15:chipyard.TestHarness.RocketConfig.fir@191427.8]
  assign _T_773 = _T_771 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191429.8]
  assign _T_774 = ~_T_773; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191430.8]
  assign _T_775 = ~io_in_d_bits_denied; // @[Monitor.scala 312:15:chipyard.TestHarness.RocketConfig.fir@191435.8]
  assign _T_777 = _T_775 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191437.8]
  assign _T_778 = ~_T_777; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191438.8]
  assign _T_779 = io_in_d_bits_opcode == 3'h4; // @[Monitor.scala 315:25:chipyard.TestHarness.RocketConfig.fir@191444.6]
  assign _T_790 = io_in_d_bits_param <= 2'h2; // @[Bundles.scala 104:26:chipyard.TestHarness.RocketConfig.fir@191468.8]
  assign _T_792 = _T_790 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191470.8]
  assign _T_793 = ~_T_792; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191471.8]
  assign _T_794 = io_in_d_bits_param != 2'h2; // @[Monitor.scala 320:28:chipyard.TestHarness.RocketConfig.fir@191476.8]
  assign _T_796 = _T_794 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191478.8]
  assign _T_797 = ~_T_796; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191479.8]
  assign _T_807 = io_in_d_bits_opcode == 3'h5; // @[Monitor.scala 325:25:chipyard.TestHarness.RocketConfig.fir@191502.6]
  assign _T_827 = _T_775 | io_in_d_bits_corrupt; // @[Monitor.scala 331:30:chipyard.TestHarness.RocketConfig.fir@191543.8]
  assign _T_829 = _T_827 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191545.8]
  assign _T_830 = ~_T_829; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191546.8]
  assign _T_836 = io_in_d_bits_opcode == 3'h0; // @[Monitor.scala 335:25:chipyard.TestHarness.RocketConfig.fir@191561.6]
  assign _T_853 = io_in_d_bits_opcode == 3'h1; // @[Monitor.scala 343:25:chipyard.TestHarness.RocketConfig.fir@191596.6]
  assign _T_871 = io_in_d_bits_opcode == 3'h2; // @[Monitor.scala 351:25:chipyard.TestHarness.RocketConfig.fir@191632.6]
  assign _T_888 = io_in_b_bits_opcode <= 3'h6; // @[Bundles.scala 42:24:chipyard.TestHarness.RocketConfig.fir@191669.6]
  assign _T_890 = _T_888 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191671.6]
  assign _T_891 = ~_T_890; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191672.6]
  assign _T_892 = ~io_in_b_bits_source; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@191677.6]
  assign _T_895 = {1'b0,$signed(io_in_b_bits_address)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@191680.6]
  assign _T_912 = io_in_b_bits_address ^ 32'h3000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@191701.6]
  assign _T_913 = {1'b0,$signed(_T_912)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@191702.6]
  assign _T_915 = $signed(_T_913) & -33'sh1000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@191704.6]
  assign _T_916 = $signed(_T_915) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@191705.6]
  assign _T_917 = io_in_b_bits_address ^ 32'h2010000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@191706.6]
  assign _T_918 = {1'b0,$signed(_T_917)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@191707.6]
  assign _T_920 = $signed(_T_918) & -33'sh1000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@191709.6]
  assign _T_921 = $signed(_T_920) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@191710.6]
  assign _T_922 = io_in_b_bits_address ^ 32'h54000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@191711.6]
  assign _T_923 = {1'b0,$signed(_T_922)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@191712.6]
  assign _T_925 = $signed(_T_923) & -33'sh1000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@191714.6]
  assign _T_926 = $signed(_T_925) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@191715.6]
  assign _T_927 = io_in_b_bits_address ^ 32'hc000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@191716.6]
  assign _T_928 = {1'b0,$signed(_T_927)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@191717.6]
  assign _T_930 = $signed(_T_928) & -33'sh4000000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@191719.6]
  assign _T_931 = $signed(_T_930) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@191720.6]
  assign _T_932 = io_in_b_bits_address ^ 32'h2000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@191721.6]
  assign _T_933 = {1'b0,$signed(_T_932)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@191722.6]
  assign _T_935 = $signed(_T_933) & -33'sh10000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@191724.6]
  assign _T_936 = $signed(_T_935) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@191725.6]
  assign _T_940 = $signed(_T_895) & -33'sh1000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@191729.6]
  assign _T_941 = $signed(_T_940) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@191730.6]
  assign _T_942 = io_in_b_bits_address ^ 32'h10000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@191731.6]
  assign _T_943 = {1'b0,$signed(_T_942)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@191732.6]
  assign _T_945 = $signed(_T_943) & -33'sh10000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@191734.6]
  assign _T_946 = $signed(_T_945) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@191735.6]
  assign _T_947 = io_in_b_bits_address ^ 32'h80000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@191736.6]
  assign _T_948 = {1'b0,$signed(_T_947)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@191737.6]
  assign _T_950 = $signed(_T_948) & -33'sh10000000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@191739.6]
  assign _T_951 = $signed(_T_950) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@191740.6]
  assign _T_953 = _T_916 | _T_921; // @[Parameters.scala 535:64:chipyard.TestHarness.RocketConfig.fir@191751.6]
  assign _T_954 = _T_953 | _T_926; // @[Parameters.scala 535:64:chipyard.TestHarness.RocketConfig.fir@191752.6]
  assign _T_955 = _T_954 | _T_931; // @[Parameters.scala 535:64:chipyard.TestHarness.RocketConfig.fir@191753.6]
  assign _T_956 = _T_955 | _T_936; // @[Parameters.scala 535:64:chipyard.TestHarness.RocketConfig.fir@191754.6]
  assign _T_957 = _T_956 | _T_941; // @[Parameters.scala 535:64:chipyard.TestHarness.RocketConfig.fir@191755.6]
  assign _T_958 = _T_957 | _T_946; // @[Parameters.scala 535:64:chipyard.TestHarness.RocketConfig.fir@191756.6]
  assign _T_959 = _T_958 | _T_951; // @[Parameters.scala 535:64:chipyard.TestHarness.RocketConfig.fir@191757.6]
  assign _T_961 = 27'hfff << io_in_b_bits_size; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@191759.6]
  assign _T_963 = ~_T_961[11:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@191761.6]
  assign _GEN_72 = {{20'd0}, _T_963}; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@191762.6]
  assign _T_964 = io_in_b_bits_address & _GEN_72; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@191762.6]
  assign _T_965 = _T_964 == 32'h0; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@191763.6]
  assign _T_968 = 4'h1 << io_in_b_bits_size[1:0]; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@191766.6]
  assign _T_970 = _T_968[2:0] | 3'h1; // @[Misc.scala 201:81:chipyard.TestHarness.RocketConfig.fir@191768.6]
  assign _T_971 = io_in_b_bits_size >= 4'h3; // @[Misc.scala 205:21:chipyard.TestHarness.RocketConfig.fir@191769.6]
  assign _T_974 = ~io_in_b_bits_address[2]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@191772.6]
  assign _T_976 = _T_970[2] & _T_974; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@191774.6]
  assign _T_977 = _T_971 | _T_976; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@191775.6]
  assign _T_979 = _T_970[2] & io_in_b_bits_address[2]; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@191777.6]
  assign _T_980 = _T_971 | _T_979; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@191778.6]
  assign _T_983 = ~io_in_b_bits_address[1]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@191781.6]
  assign _T_984 = _T_974 & _T_983; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@191782.6]
  assign _T_985 = _T_970[1] & _T_984; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@191783.6]
  assign _T_986 = _T_977 | _T_985; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@191784.6]
  assign _T_987 = _T_974 & io_in_b_bits_address[1]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@191785.6]
  assign _T_988 = _T_970[1] & _T_987; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@191786.6]
  assign _T_989 = _T_977 | _T_988; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@191787.6]
  assign _T_990 = io_in_b_bits_address[2] & _T_983; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@191788.6]
  assign _T_991 = _T_970[1] & _T_990; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@191789.6]
  assign _T_992 = _T_980 | _T_991; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@191790.6]
  assign _T_993 = io_in_b_bits_address[2] & io_in_b_bits_address[1]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@191791.6]
  assign _T_994 = _T_970[1] & _T_993; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@191792.6]
  assign _T_995 = _T_980 | _T_994; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@191793.6]
  assign _T_998 = ~io_in_b_bits_address[0]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@191796.6]
  assign _T_999 = _T_984 & _T_998; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@191797.6]
  assign _T_1000 = _T_970[0] & _T_999; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@191798.6]
  assign _T_1001 = _T_986 | _T_1000; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@191799.6]
  assign _T_1002 = _T_984 & io_in_b_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@191800.6]
  assign _T_1003 = _T_970[0] & _T_1002; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@191801.6]
  assign _T_1004 = _T_986 | _T_1003; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@191802.6]
  assign _T_1005 = _T_987 & _T_998; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@191803.6]
  assign _T_1006 = _T_970[0] & _T_1005; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@191804.6]
  assign _T_1007 = _T_989 | _T_1006; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@191805.6]
  assign _T_1008 = _T_987 & io_in_b_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@191806.6]
  assign _T_1009 = _T_970[0] & _T_1008; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@191807.6]
  assign _T_1010 = _T_989 | _T_1009; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@191808.6]
  assign _T_1011 = _T_990 & _T_998; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@191809.6]
  assign _T_1012 = _T_970[0] & _T_1011; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@191810.6]
  assign _T_1013 = _T_992 | _T_1012; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@191811.6]
  assign _T_1014 = _T_990 & io_in_b_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@191812.6]
  assign _T_1015 = _T_970[0] & _T_1014; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@191813.6]
  assign _T_1016 = _T_992 | _T_1015; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@191814.6]
  assign _T_1017 = _T_993 & _T_998; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@191815.6]
  assign _T_1018 = _T_970[0] & _T_1017; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@191816.6]
  assign _T_1019 = _T_995 | _T_1018; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@191817.6]
  assign _T_1020 = _T_993 & io_in_b_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@191818.6]
  assign _T_1021 = _T_970[0] & _T_1020; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@191819.6]
  assign _T_1022 = _T_995 | _T_1021; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@191820.6]
  assign _T_1029 = {_T_1022,_T_1019,_T_1016,_T_1013,_T_1010,_T_1007,_T_1004,_T_1001}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@191827.6]
  assign _T_1038 = io_in_b_bits_opcode == 3'h6; // @[Monitor.scala 164:25:chipyard.TestHarness.RocketConfig.fir@191840.6]
  assign _T_1042 = 4'h6 == io_in_b_bits_size; // @[Parameters.scala 92:48:chipyard.TestHarness.RocketConfig.fir@191848.8]
  assign _T_1043 = _T_892 & _T_1042; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@191849.8]
  assign _T_1048 = _T_1043 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191855.8]
  assign _T_1049 = ~_T_1048; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191856.8]
  assign _T_1051 = _T_959 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191862.8]
  assign _T_1052 = ~_T_1051; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191863.8]
  assign _T_1057 = _T_965 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191876.8]
  assign _T_1058 = ~_T_1057; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191877.8]
  assign _T_1059 = io_in_b_bits_param <= 2'h2; // @[Bundles.scala 104:26:chipyard.TestHarness.RocketConfig.fir@191882.8]
  assign _T_1061 = _T_1059 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191884.8]
  assign _T_1062 = ~_T_1061; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191885.8]
  assign _T_1063 = io_in_b_bits_mask == _T_1029; // @[Monitor.scala 170:30:chipyard.TestHarness.RocketConfig.fir@191890.8]
  assign _T_1065 = _T_1063 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191892.8]
  assign _T_1066 = ~_T_1065; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191893.8]
  assign _T_1067 = ~io_in_b_bits_corrupt; // @[Monitor.scala 171:18:chipyard.TestHarness.RocketConfig.fir@191898.8]
  assign _T_1069 = _T_1067 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191900.8]
  assign _T_1070 = ~_T_1069; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191901.8]
  assign _T_1071 = io_in_b_bits_opcode == 3'h4; // @[Monitor.scala 174:25:chipyard.TestHarness.RocketConfig.fir@191907.6]
  assign _T_1074 = ~reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191911.8]
  assign _T_1084 = io_in_b_bits_param == 2'h0; // @[Monitor.scala 179:31:chipyard.TestHarness.RocketConfig.fir@191937.8]
  assign _T_1086 = _T_1084 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191939.8]
  assign _T_1087 = ~_T_1086; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191940.8]
  assign _T_1096 = io_in_b_bits_opcode == 3'h0; // @[Monitor.scala 184:25:chipyard.TestHarness.RocketConfig.fir@191962.6]
  assign _T_1117 = io_in_b_bits_opcode == 3'h1; // @[Monitor.scala 193:25:chipyard.TestHarness.RocketConfig.fir@192009.6]
  assign _T_1134 = ~_T_1029; // @[Monitor.scala 199:33:chipyard.TestHarness.RocketConfig.fir@192047.8]
  assign _T_1135 = io_in_b_bits_mask & _T_1134; // @[Monitor.scala 199:31:chipyard.TestHarness.RocketConfig.fir@192048.8]
  assign _T_1136 = _T_1135 == 8'h0; // @[Monitor.scala 199:40:chipyard.TestHarness.RocketConfig.fir@192049.8]
  assign _T_1138 = _T_1136 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192051.8]
  assign _T_1139 = ~_T_1138; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192052.8]
  assign _T_1140 = io_in_b_bits_opcode == 3'h2; // @[Monitor.scala 202:25:chipyard.TestHarness.RocketConfig.fir@192058.6]
  assign _T_1161 = io_in_b_bits_opcode == 3'h3; // @[Monitor.scala 211:25:chipyard.TestHarness.RocketConfig.fir@192105.6]
  assign _T_1182 = io_in_b_bits_opcode == 3'h5; // @[Monitor.scala 220:25:chipyard.TestHarness.RocketConfig.fir@192152.6]
  assign _T_1207 = ~io_in_c_bits_source; // @[Parameters.scala 47:9:chipyard.TestHarness.RocketConfig.fir@192209.6]
  assign _T_1210 = _T_1207 | io_in_c_bits_source; // @[Parameters.scala 924:46:chipyard.TestHarness.RocketConfig.fir@192215.6]
  assign _T_1212 = 27'hfff << io_in_c_bits_size; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@192217.6]
  assign _T_1214 = ~_T_1212[11:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@192219.6]
  assign _GEN_73 = {{20'd0}, _T_1214}; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@192220.6]
  assign _T_1215 = io_in_c_bits_address & _GEN_73; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@192220.6]
  assign _T_1216 = _T_1215 == 32'h0; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@192221.6]
  assign _T_1217 = io_in_c_bits_address ^ 32'h3000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@192222.6]
  assign _T_1218 = {1'b0,$signed(_T_1217)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@192223.6]
  assign _T_1220 = $signed(_T_1218) & -33'sh1000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@192225.6]
  assign _T_1221 = $signed(_T_1220) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@192226.6]
  assign _T_1222 = io_in_c_bits_address ^ 32'h2010000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@192227.6]
  assign _T_1223 = {1'b0,$signed(_T_1222)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@192228.6]
  assign _T_1225 = $signed(_T_1223) & -33'sh1000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@192230.6]
  assign _T_1226 = $signed(_T_1225) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@192231.6]
  assign _T_1227 = io_in_c_bits_address ^ 32'h54000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@192232.6]
  assign _T_1228 = {1'b0,$signed(_T_1227)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@192233.6]
  assign _T_1230 = $signed(_T_1228) & -33'sh1000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@192235.6]
  assign _T_1231 = $signed(_T_1230) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@192236.6]
  assign _T_1232 = io_in_c_bits_address ^ 32'hc000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@192237.6]
  assign _T_1233 = {1'b0,$signed(_T_1232)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@192238.6]
  assign _T_1235 = $signed(_T_1233) & -33'sh4000000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@192240.6]
  assign _T_1236 = $signed(_T_1235) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@192241.6]
  assign _T_1237 = io_in_c_bits_address ^ 32'h2000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@192242.6]
  assign _T_1238 = {1'b0,$signed(_T_1237)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@192243.6]
  assign _T_1240 = $signed(_T_1238) & -33'sh10000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@192245.6]
  assign _T_1241 = $signed(_T_1240) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@192246.6]
  assign _T_1243 = {1'b0,$signed(io_in_c_bits_address)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@192248.6]
  assign _T_1245 = $signed(_T_1243) & -33'sh1000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@192250.6]
  assign _T_1246 = $signed(_T_1245) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@192251.6]
  assign _T_1247 = io_in_c_bits_address ^ 32'h10000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@192252.6]
  assign _T_1248 = {1'b0,$signed(_T_1247)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@192253.6]
  assign _T_1250 = $signed(_T_1248) & -33'sh10000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@192255.6]
  assign _T_1251 = $signed(_T_1250) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@192256.6]
  assign _T_1252 = io_in_c_bits_address ^ 32'h80000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@192257.6]
  assign _T_1253 = {1'b0,$signed(_T_1252)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@192258.6]
  assign _T_1255 = $signed(_T_1253) & -33'sh10000000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@192260.6]
  assign _T_1256 = $signed(_T_1255) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@192261.6]
  assign _T_1258 = _T_1221 | _T_1226; // @[Parameters.scala 535:64:chipyard.TestHarness.RocketConfig.fir@192272.6]
  assign _T_1259 = _T_1258 | _T_1231; // @[Parameters.scala 535:64:chipyard.TestHarness.RocketConfig.fir@192273.6]
  assign _T_1260 = _T_1259 | _T_1236; // @[Parameters.scala 535:64:chipyard.TestHarness.RocketConfig.fir@192274.6]
  assign _T_1261 = _T_1260 | _T_1241; // @[Parameters.scala 535:64:chipyard.TestHarness.RocketConfig.fir@192275.6]
  assign _T_1262 = _T_1261 | _T_1246; // @[Parameters.scala 535:64:chipyard.TestHarness.RocketConfig.fir@192276.6]
  assign _T_1263 = _T_1262 | _T_1251; // @[Parameters.scala 535:64:chipyard.TestHarness.RocketConfig.fir@192277.6]
  assign _T_1264 = _T_1263 | _T_1256; // @[Parameters.scala 535:64:chipyard.TestHarness.RocketConfig.fir@192278.6]
  assign _T_1285 = io_in_c_bits_opcode == 3'h4; // @[Monitor.scala 239:25:chipyard.TestHarness.RocketConfig.fir@192303.6]
  assign _T_1287 = _T_1264 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192306.8]
  assign _T_1288 = ~_T_1287; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192307.8]
  assign _T_1290 = _T_1210 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192313.8]
  assign _T_1291 = ~_T_1290; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192314.8]
  assign _T_1292 = io_in_c_bits_size >= 4'h3; // @[Monitor.scala 242:30:chipyard.TestHarness.RocketConfig.fir@192319.8]
  assign _T_1294 = _T_1292 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192321.8]
  assign _T_1295 = ~_T_1294; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192322.8]
  assign _T_1297 = _T_1216 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192328.8]
  assign _T_1298 = ~_T_1297; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192329.8]
  assign _T_1299 = io_in_c_bits_param <= 3'h5; // @[Bundles.scala 122:29:chipyard.TestHarness.RocketConfig.fir@192334.8]
  assign _T_1301 = _T_1299 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192336.8]
  assign _T_1302 = ~_T_1301; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192337.8]
  assign _T_1307 = io_in_c_bits_opcode == 3'h5; // @[Monitor.scala 248:25:chipyard.TestHarness.RocketConfig.fir@192351.6]
  assign _T_1325 = io_in_c_bits_opcode == 3'h6; // @[Monitor.scala 256:25:chipyard.TestHarness.RocketConfig.fir@192391.6]
  assign _T_1369 = 4'h6 == io_in_c_bits_size; // @[Parameters.scala 92:48:chipyard.TestHarness.RocketConfig.fir@192436.8]
  assign _T_1376 = _T_1369 & _T_1256; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@192443.8]
  assign _T_1380 = _T_1376 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192447.8]
  assign _T_1381 = ~_T_1380; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192448.8]
  assign _T_1386 = _T_1207 & _T_1369; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@192460.8]
  assign _T_1391 = _T_1386 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192466.8]
  assign _T_1392 = ~_T_1391; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192467.8]
  assign _T_1403 = io_in_c_bits_param <= 3'h2; // @[Bundles.scala 116:29:chipyard.TestHarness.RocketConfig.fir@192494.8]
  assign _T_1405 = _T_1403 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192496.8]
  assign _T_1406 = ~_T_1405; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192497.8]
  assign _T_1411 = io_in_c_bits_opcode == 3'h7; // @[Monitor.scala 266:25:chipyard.TestHarness.RocketConfig.fir@192511.6]
  assign _T_1493 = io_in_c_bits_opcode == 3'h0; // @[Monitor.scala 275:25:chipyard.TestHarness.RocketConfig.fir@192623.6]
  assign _T_1503 = io_in_c_bits_param == 3'h0; // @[Monitor.scala 279:31:chipyard.TestHarness.RocketConfig.fir@192646.8]
  assign _T_1505 = _T_1503 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192648.8]
  assign _T_1506 = ~_T_1505; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192649.8]
  assign _T_1511 = io_in_c_bits_opcode == 3'h1; // @[Monitor.scala 283:25:chipyard.TestHarness.RocketConfig.fir@192663.6]
  assign _T_1525 = io_in_c_bits_opcode == 3'h2; // @[Monitor.scala 290:25:chipyard.TestHarness.RocketConfig.fir@192695.6]
  assign _T_1547 = io_in_a_ready & io_in_a_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@192746.4]
  assign _T_1554 = ~io_in_a_bits_opcode[2]; // @[Edges.scala 93:28:chipyard.TestHarness.RocketConfig.fir@192753.4]
  assign _T_1558 = _T_1556 - 9'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@192757.4]
  assign _T_1559 = _T_1556 == 9'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@192758.4]
  assign _T_1572 = ~_T_1559; // @[Monitor.scala 386:22:chipyard.TestHarness.RocketConfig.fir@192774.4]
  assign _T_1573 = io_in_a_valid & _T_1572; // @[Monitor.scala 386:19:chipyard.TestHarness.RocketConfig.fir@192775.4]
  assign _T_1574 = io_in_a_bits_opcode == _T_1567; // @[Monitor.scala 387:32:chipyard.TestHarness.RocketConfig.fir@192777.6]
  assign _T_1576 = _T_1574 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192779.6]
  assign _T_1577 = ~_T_1576; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192780.6]
  assign _T_1578 = io_in_a_bits_param == _T_1568; // @[Monitor.scala 388:32:chipyard.TestHarness.RocketConfig.fir@192785.6]
  assign _T_1580 = _T_1578 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192787.6]
  assign _T_1581 = ~_T_1580; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192788.6]
  assign _T_1582 = io_in_a_bits_size == _T_1569; // @[Monitor.scala 389:32:chipyard.TestHarness.RocketConfig.fir@192793.6]
  assign _T_1584 = _T_1582 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192795.6]
  assign _T_1585 = ~_T_1584; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192796.6]
  assign _T_1586 = io_in_a_bits_source == _T_1570; // @[Monitor.scala 390:32:chipyard.TestHarness.RocketConfig.fir@192801.6]
  assign _T_1588 = _T_1586 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192803.6]
  assign _T_1589 = ~_T_1588; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192804.6]
  assign _T_1590 = io_in_a_bits_address == _T_1571; // @[Monitor.scala 391:32:chipyard.TestHarness.RocketConfig.fir@192809.6]
  assign _T_1592 = _T_1590 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192811.6]
  assign _T_1593 = ~_T_1592; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192812.6]
  assign _T_1595 = _T_1547 & _T_1559; // @[Monitor.scala 393:20:chipyard.TestHarness.RocketConfig.fir@192819.4]
  assign _T_1596 = io_in_d_ready & io_in_d_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@192827.4]
  assign _T_1598 = 27'hfff << io_in_d_bits_size; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@192829.4]
  assign _T_1600 = ~_T_1598[11:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@192831.4]
  assign _T_1606 = _T_1604 - 9'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@192837.4]
  assign _T_1607 = _T_1604 == 9'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@192838.4]
  assign _T_1621 = ~_T_1607; // @[Monitor.scala 538:22:chipyard.TestHarness.RocketConfig.fir@192855.4]
  assign _T_1622 = io_in_d_valid & _T_1621; // @[Monitor.scala 538:19:chipyard.TestHarness.RocketConfig.fir@192856.4]
  assign _T_1623 = io_in_d_bits_opcode == _T_1615; // @[Monitor.scala 539:29:chipyard.TestHarness.RocketConfig.fir@192858.6]
  assign _T_1625 = _T_1623 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@192860.6]
  assign _T_1626 = ~_T_1625; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@192861.6]
  assign _T_1627 = io_in_d_bits_param == _T_1616; // @[Monitor.scala 540:29:chipyard.TestHarness.RocketConfig.fir@192866.6]
  assign _T_1629 = _T_1627 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@192868.6]
  assign _T_1630 = ~_T_1629; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@192869.6]
  assign _T_1631 = io_in_d_bits_size == _T_1617; // @[Monitor.scala 541:29:chipyard.TestHarness.RocketConfig.fir@192874.6]
  assign _T_1633 = _T_1631 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@192876.6]
  assign _T_1634 = ~_T_1633; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@192877.6]
  assign _T_1635 = io_in_d_bits_source == _T_1618; // @[Monitor.scala 542:29:chipyard.TestHarness.RocketConfig.fir@192882.6]
  assign _T_1637 = _T_1635 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@192884.6]
  assign _T_1638 = ~_T_1637; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@192885.6]
  assign _T_1639 = io_in_d_bits_sink == _T_1619; // @[Monitor.scala 543:29:chipyard.TestHarness.RocketConfig.fir@192890.6]
  assign _T_1641 = _T_1639 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@192892.6]
  assign _T_1642 = ~_T_1641; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@192893.6]
  assign _T_1643 = io_in_d_bits_denied == _T_1620; // @[Monitor.scala 544:29:chipyard.TestHarness.RocketConfig.fir@192898.6]
  assign _T_1645 = _T_1643 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@192900.6]
  assign _T_1646 = ~_T_1645; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@192901.6]
  assign _T_1648 = _T_1596 & _T_1607; // @[Monitor.scala 546:20:chipyard.TestHarness.RocketConfig.fir@192908.4]
  assign _T_1649 = io_in_b_ready & io_in_b_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@192917.4]
  assign _T_1660 = _T_1658 - 9'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@192928.4]
  assign _T_1661 = _T_1658 == 9'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@192929.4]
  assign _T_1674 = ~_T_1661; // @[Monitor.scala 409:22:chipyard.TestHarness.RocketConfig.fir@192945.4]
  assign _T_1675 = io_in_b_valid & _T_1674; // @[Monitor.scala 409:19:chipyard.TestHarness.RocketConfig.fir@192946.4]
  assign _T_1676 = io_in_b_bits_opcode == _T_1669; // @[Monitor.scala 410:32:chipyard.TestHarness.RocketConfig.fir@192948.6]
  assign _T_1678 = _T_1676 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192950.6]
  assign _T_1679 = ~_T_1678; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192951.6]
  assign _T_1680 = io_in_b_bits_param == _T_1670; // @[Monitor.scala 411:32:chipyard.TestHarness.RocketConfig.fir@192956.6]
  assign _T_1682 = _T_1680 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192958.6]
  assign _T_1683 = ~_T_1682; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192959.6]
  assign _T_1684 = io_in_b_bits_size == _T_1671; // @[Monitor.scala 412:32:chipyard.TestHarness.RocketConfig.fir@192964.6]
  assign _T_1686 = _T_1684 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192966.6]
  assign _T_1687 = ~_T_1686; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192967.6]
  assign _T_1688 = io_in_b_bits_source == _T_1672; // @[Monitor.scala 413:32:chipyard.TestHarness.RocketConfig.fir@192972.6]
  assign _T_1690 = _T_1688 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192974.6]
  assign _T_1691 = ~_T_1690; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192975.6]
  assign _T_1692 = io_in_b_bits_address == _T_1673; // @[Monitor.scala 414:32:chipyard.TestHarness.RocketConfig.fir@192980.6]
  assign _T_1694 = _T_1692 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192982.6]
  assign _T_1695 = ~_T_1694; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192983.6]
  assign _T_1697 = _T_1649 & _T_1661; // @[Monitor.scala 416:20:chipyard.TestHarness.RocketConfig.fir@192990.4]
  assign _T_1698 = io_in_c_ready & io_in_c_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@192998.4]
  assign _T_1708 = _T_1706 - 9'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@193008.4]
  assign _T_1709 = _T_1706 == 9'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@193009.4]
  assign _T_1722 = ~_T_1709; // @[Monitor.scala 514:22:chipyard.TestHarness.RocketConfig.fir@193025.4]
  assign _T_1723 = io_in_c_valid & _T_1722; // @[Monitor.scala 514:19:chipyard.TestHarness.RocketConfig.fir@193026.4]
  assign _T_1724 = io_in_c_bits_opcode == _T_1717; // @[Monitor.scala 515:32:chipyard.TestHarness.RocketConfig.fir@193028.6]
  assign _T_1726 = _T_1724 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@193030.6]
  assign _T_1727 = ~_T_1726; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@193031.6]
  assign _T_1728 = io_in_c_bits_param == _T_1718; // @[Monitor.scala 516:32:chipyard.TestHarness.RocketConfig.fir@193036.6]
  assign _T_1730 = _T_1728 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@193038.6]
  assign _T_1731 = ~_T_1730; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@193039.6]
  assign _T_1732 = io_in_c_bits_size == _T_1719; // @[Monitor.scala 517:32:chipyard.TestHarness.RocketConfig.fir@193044.6]
  assign _T_1734 = _T_1732 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@193046.6]
  assign _T_1735 = ~_T_1734; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@193047.6]
  assign _T_1736 = io_in_c_bits_source == _T_1720; // @[Monitor.scala 518:32:chipyard.TestHarness.RocketConfig.fir@193052.6]
  assign _T_1738 = _T_1736 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@193054.6]
  assign _T_1739 = ~_T_1738; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@193055.6]
  assign _T_1740 = io_in_c_bits_address == _T_1721; // @[Monitor.scala 519:32:chipyard.TestHarness.RocketConfig.fir@193060.6]
  assign _T_1742 = _T_1740 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@193062.6]
  assign _T_1743 = ~_T_1742; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@193063.6]
  assign _T_1745 = _T_1698 & _T_1709; // @[Monitor.scala 521:20:chipyard.TestHarness.RocketConfig.fir@193070.4]
  assign _T_1757 = _T_1755 - 9'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@193092.4]
  assign a_first = _T_1755 == 9'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@193093.4]
  assign _T_1775 = _T_1773 - 9'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@193114.4]
  assign d_first = _T_1773 == 9'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@193115.4]
  assign _GEN_74 = {io_in_d_bits_source, 2'h0}; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@193134.4]
  assign _T_1783 = {{1'd0}, _GEN_74}; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@193134.4]
  assign _T_1784 = inflight_opcodes >> _T_1783; // @[Monitor.scala 629:44:chipyard.TestHarness.RocketConfig.fir@193135.4]
  assign _T_1788 = 16'h10 - 16'h1; // @[Monitor.scala 606:57:chipyard.TestHarness.RocketConfig.fir@193139.4]
  assign _GEN_75 = {{8'd0}, _T_1784}; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@193140.4]
  assign _T_1789 = _GEN_75 & _T_1788; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@193140.4]
  assign _T_1790 = {{1'd0}, _T_1789[15:1]}; // @[Monitor.scala 629:152:chipyard.TestHarness.RocketConfig.fir@193141.4]
  assign _T_1791 = {io_in_d_bits_source, 3'h0}; // @[Monitor.scala 633:65:chipyard.TestHarness.RocketConfig.fir@193145.4]
  assign _T_1792 = inflight_sizes >> _T_1791; // @[Monitor.scala 633:40:chipyard.TestHarness.RocketConfig.fir@193146.4]
  assign _T_1796 = 16'h100 - 16'h1; // @[Monitor.scala 606:57:chipyard.TestHarness.RocketConfig.fir@193150.4]
  assign _T_1797 = _T_1792 & _T_1796; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@193151.4]
  assign _T_1798 = {{1'd0}, _T_1797[15:1]}; // @[Monitor.scala 633:144:chipyard.TestHarness.RocketConfig.fir@193152.4]
  assign _T_1802 = _T_1547 & a_first; // @[Monitor.scala 643:27:chipyard.TestHarness.RocketConfig.fir@193177.4]
  assign _T_1804 = 2'h1 << io_in_a_bits_source; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@193180.6]
  assign _T_1805 = {io_in_a_bits_opcode, 1'h0}; // @[Monitor.scala 645:53:chipyard.TestHarness.RocketConfig.fir@193182.6]
  assign _T_1806 = _T_1805 | 4'h1; // @[Monitor.scala 645:61:chipyard.TestHarness.RocketConfig.fir@193183.6]
  assign _T_1807 = {io_in_a_bits_size, 1'h0}; // @[Monitor.scala 646:49:chipyard.TestHarness.RocketConfig.fir@193185.6]
  assign _T_1808 = _T_1807 | 5'h1; // @[Monitor.scala 646:57:chipyard.TestHarness.RocketConfig.fir@193186.6]
  assign _GEN_78 = {io_in_a_bits_source, 2'h0}; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@193188.6]
  assign _T_1809 = {{1'd0}, _GEN_78}; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@193188.6]
  assign a_opcodes_set_interm = _T_1802 ? _T_1806 : 4'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@193179.4]
  assign _GEN_79 = {{15'd0}, a_opcodes_set_interm}; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@193189.6]
  assign _T_1810 = _GEN_79 << _T_1809; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@193189.6]
  assign _T_1811 = {io_in_a_bits_source, 3'h0}; // @[Monitor.scala 648:68:chipyard.TestHarness.RocketConfig.fir@193191.6]
  assign a_sizes_set_interm = _T_1802 ? _T_1808 : 5'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@193179.4]
  assign _GEN_80 = {{15'd0}, a_sizes_set_interm}; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@193192.6]
  assign _T_1812 = _GEN_80 << _T_1811; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@193192.6]
  assign _T_1813 = inflight >> io_in_a_bits_source; // @[Monitor.scala 649:26:chipyard.TestHarness.RocketConfig.fir@193194.6]
  assign _T_1815 = ~_T_1813[0]; // @[Monitor.scala 649:17:chipyard.TestHarness.RocketConfig.fir@193196.6]
  assign _T_1817 = _T_1815 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@193198.6]
  assign _T_1818 = ~_T_1817; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@193199.6]
  assign a_set = _T_1802 ? _T_1804 : 2'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@193179.4]
  assign _GEN_30 = _T_1802 ? _T_1810 : 19'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@193179.4]
  assign _GEN_31 = _T_1802 ? _T_1812 : 20'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@193179.4]
  assign _T_1821 = _T_1596 & d_first; // @[Monitor.scala 660:27:chipyard.TestHarness.RocketConfig.fir@193213.4]
  assign _T_1823 = ~_T_759; // @[Monitor.scala 660:75:chipyard.TestHarness.RocketConfig.fir@193215.4]
  assign _T_1824 = _T_1821 & _T_1823; // @[Monitor.scala 660:72:chipyard.TestHarness.RocketConfig.fir@193216.4]
  assign _T_1825 = 2'h1 << io_in_d_bits_source; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@193218.6]
  assign _GEN_82 = {{15'd0}, _T_1788}; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@193225.6]
  assign _T_1831 = _GEN_82 << _T_1783; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@193225.6]
  assign _GEN_83 = {{15'd0}, _T_1796}; // @[Monitor.scala 663:72:chipyard.TestHarness.RocketConfig.fir@193232.6]
  assign _T_1837 = _GEN_83 << _T_1791; // @[Monitor.scala 663:72:chipyard.TestHarness.RocketConfig.fir@193232.6]
  assign d_clr = _T_1824 ? _T_1825 : 2'h0; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@193217.4]
  assign _GEN_33 = _T_1824 ? _T_1831 : 31'h0; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@193217.4]
  assign _GEN_34 = _T_1824 ? _T_1837 : 31'h0; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@193217.4]
  assign _T_1838 = io_in_d_valid & d_first; // @[Monitor.scala 665:26:chipyard.TestHarness.RocketConfig.fir@193235.4]
  assign _T_1841 = _T_1838 & _T_1823; // @[Monitor.scala 665:71:chipyard.TestHarness.RocketConfig.fir@193238.4]
  assign _T_1842 = inflight >> io_in_d_bits_source; // @[Monitor.scala 666:25:chipyard.TestHarness.RocketConfig.fir@193240.6]
  assign _T_1844 = io_in_a_bits_source == io_in_d_bits_source; // @[Monitor.scala 666:93:chipyard.TestHarness.RocketConfig.fir@193242.6]
  assign _T_1845 = io_in_a_valid & _T_1844; // @[Monitor.scala 666:68:chipyard.TestHarness.RocketConfig.fir@193243.6]
  assign _T_1846 = io_in_a_bits_size == io_in_d_bits_size; // @[Monitor.scala 666:142:chipyard.TestHarness.RocketConfig.fir@193244.6]
  assign _T_1847 = _T_1845 & _T_1846; // @[Monitor.scala 666:119:chipyard.TestHarness.RocketConfig.fir@193245.6]
  assign _T_1848 = _T_1847 & a_first; // @[Monitor.scala 666:166:chipyard.TestHarness.RocketConfig.fir@193246.6]
  assign _T_1849 = _T_1842[0] | _T_1848; // @[Monitor.scala 666:49:chipyard.TestHarness.RocketConfig.fir@193247.6]
  assign _T_1851 = _T_1849 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@193249.6]
  assign _T_1852 = ~_T_1851; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@193250.6]
  assign a_opcode_lookup = _T_1790[3:0]; // @[:chipyard.TestHarness.RocketConfig.fir@193132.4 :chipyard.TestHarness.RocketConfig.fir@193133.4 Monitor.scala 629:21:chipyard.TestHarness.RocketConfig.fir@193142.4]
  assign _GEN_37 = 3'h2 == a_opcode_lookup[2:0] ? 3'h1 : 3'h0; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@193256.6]
  assign _GEN_38 = 3'h3 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_37; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@193256.6]
  assign _GEN_39 = 3'h4 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_38; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@193256.6]
  assign _GEN_40 = 3'h5 == a_opcode_lookup[2:0] ? 3'h2 : _GEN_39; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@193256.6]
  assign _GEN_41 = 3'h6 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_40; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@193256.6]
  assign _GEN_42 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_41; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@193256.6]
  assign _T_1854 = io_in_d_bits_opcode == _GEN_42; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@193256.6]
  assign _GEN_49 = 3'h6 == a_opcode_lookup[2:0] ? 3'h5 : _GEN_40; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@193258.6]
  assign _GEN_50 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_49; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@193258.6]
  assign _T_1856 = io_in_d_bits_opcode == _GEN_50; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@193258.6]
  assign _T_1857 = _T_1854 | _T_1856; // @[Monitor.scala 667:71:chipyard.TestHarness.RocketConfig.fir@193259.6]
  assign _GEN_53 = 3'h2 == io_in_a_bits_opcode ? 3'h1 : 3'h0; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@193260.6]
  assign _GEN_54 = 3'h3 == io_in_a_bits_opcode ? 3'h1 : _GEN_53; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@193260.6]
  assign _GEN_55 = 3'h4 == io_in_a_bits_opcode ? 3'h1 : _GEN_54; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@193260.6]
  assign _GEN_56 = 3'h5 == io_in_a_bits_opcode ? 3'h2 : _GEN_55; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@193260.6]
  assign _GEN_57 = 3'h6 == io_in_a_bits_opcode ? 3'h4 : _GEN_56; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@193260.6]
  assign _GEN_58 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_57; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@193260.6]
  assign _T_1858 = io_in_d_bits_opcode == _GEN_58; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@193260.6]
  assign _GEN_65 = 3'h6 == io_in_a_bits_opcode ? 3'h5 : _GEN_56; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@193261.6]
  assign _GEN_66 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_65; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@193261.6]
  assign _T_1859 = io_in_d_bits_opcode == _GEN_66; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@193261.6]
  assign _T_1860 = _T_1858 | _T_1859; // @[Monitor.scala 668:99:chipyard.TestHarness.RocketConfig.fir@193262.6]
  assign _T_1861 = io_in_a_valid & _T_1860; // @[Monitor.scala 668:34:chipyard.TestHarness.RocketConfig.fir@193263.6]
  assign _T_1862 = _T_1857 | _T_1861; // @[Monitor.scala 668:15:chipyard.TestHarness.RocketConfig.fir@193264.6]
  assign _T_1864 = _T_1862 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@193266.6]
  assign _T_1865 = ~_T_1864; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@193267.6]
  assign a_size_lookup = _T_1798[7:0]; // @[:chipyard.TestHarness.RocketConfig.fir@193143.4 :chipyard.TestHarness.RocketConfig.fir@193144.4 Monitor.scala 633:19:chipyard.TestHarness.RocketConfig.fir@193153.4]
  assign _GEN_84 = {{4'd0}, io_in_d_bits_size}; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@193272.6]
  assign _T_1866 = _GEN_84 == a_size_lookup; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@193272.6]
  assign _T_1868 = io_in_a_valid & _T_1846; // @[Monitor.scala 670:72:chipyard.TestHarness.RocketConfig.fir@193274.6]
  assign _T_1869 = _T_1866 | _T_1868; // @[Monitor.scala 670:53:chipyard.TestHarness.RocketConfig.fir@193275.6]
  assign _T_1871 = _T_1869 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@193277.6]
  assign _T_1872 = ~_T_1871; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@193278.6]
  assign _T_1874 = _T_1838 & a_first; // @[Monitor.scala 672:36:chipyard.TestHarness.RocketConfig.fir@193285.4]
  assign _T_1875 = _T_1874 & io_in_a_valid; // @[Monitor.scala 672:47:chipyard.TestHarness.RocketConfig.fir@193286.4]
  assign _T_1877 = _T_1875 & _T_1844; // @[Monitor.scala 672:65:chipyard.TestHarness.RocketConfig.fir@193288.4]
  assign _T_1879 = _T_1877 & _T_1823; // @[Monitor.scala 672:116:chipyard.TestHarness.RocketConfig.fir@193290.4]
  assign _T_1880 = ~io_in_d_ready; // @[Monitor.scala 673:15:chipyard.TestHarness.RocketConfig.fir@193292.6]
  assign _T_1881 = _T_1880 | io_in_a_ready; // @[Monitor.scala 673:32:chipyard.TestHarness.RocketConfig.fir@193293.6]
  assign _T_1883 = _T_1881 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@193295.6]
  assign _T_1884 = ~_T_1883; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@193296.6]
  assign _T_1885 = a_set != d_clr; // @[Monitor.scala 677:20:chipyard.TestHarness.RocketConfig.fir@193302.4]
  assign _T_1886 = |a_set; // @[Monitor.scala 677:40:chipyard.TestHarness.RocketConfig.fir@193303.4]
  assign _T_1887 = ~_T_1886; // @[Monitor.scala 677:33:chipyard.TestHarness.RocketConfig.fir@193304.4]
  assign _T_1888 = _T_1885 | _T_1887; // @[Monitor.scala 677:30:chipyard.TestHarness.RocketConfig.fir@193305.4]
  assign _T_1890 = _T_1888 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@193307.4]
  assign _T_1891 = ~_T_1890; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@193308.4]
  assign _T_1892 = inflight | a_set; // @[Monitor.scala 680:27:chipyard.TestHarness.RocketConfig.fir@193313.4]
  assign _T_1893 = ~d_clr; // @[Monitor.scala 680:38:chipyard.TestHarness.RocketConfig.fir@193314.4]
  assign _T_1894 = _T_1892 & _T_1893; // @[Monitor.scala 680:36:chipyard.TestHarness.RocketConfig.fir@193315.4]
  assign a_opcodes_set = _GEN_30[7:0]; // @[:chipyard.TestHarness.RocketConfig.fir@193128.4 :chipyard.TestHarness.RocketConfig.fir@193129.4 Monitor.scala 647:21:chipyard.TestHarness.RocketConfig.fir@193190.6]
  assign _T_1895 = inflight_opcodes | a_opcodes_set; // @[Monitor.scala 681:43:chipyard.TestHarness.RocketConfig.fir@193317.4]
  assign d_opcodes_clr = _GEN_33[7:0]; // @[:chipyard.TestHarness.RocketConfig.fir@193207.4 :chipyard.TestHarness.RocketConfig.fir@193208.4 Monitor.scala 662:21:chipyard.TestHarness.RocketConfig.fir@193226.6]
  assign _T_1896 = ~d_opcodes_clr; // @[Monitor.scala 681:62:chipyard.TestHarness.RocketConfig.fir@193318.4]
  assign _T_1897 = _T_1895 & _T_1896; // @[Monitor.scala 681:60:chipyard.TestHarness.RocketConfig.fir@193319.4]
  assign a_sizes_set = _GEN_31[15:0]; // @[:chipyard.TestHarness.RocketConfig.fir@193130.4 :chipyard.TestHarness.RocketConfig.fir@193131.4 Monitor.scala 648:19:chipyard.TestHarness.RocketConfig.fir@193193.6]
  assign _T_1898 = inflight_sizes | a_sizes_set; // @[Monitor.scala 682:39:chipyard.TestHarness.RocketConfig.fir@193321.4]
  assign d_sizes_clr = _GEN_34[15:0]; // @[:chipyard.TestHarness.RocketConfig.fir@193209.4 :chipyard.TestHarness.RocketConfig.fir@193210.4 Monitor.scala 663:19:chipyard.TestHarness.RocketConfig.fir@193233.6]
  assign _T_1899 = ~d_sizes_clr; // @[Monitor.scala 682:56:chipyard.TestHarness.RocketConfig.fir@193322.4]
  assign _T_1900 = _T_1898 & _T_1899; // @[Monitor.scala 682:54:chipyard.TestHarness.RocketConfig.fir@193323.4]
  assign _T_1902 = |inflight; // @[Monitor.scala 687:26:chipyard.TestHarness.RocketConfig.fir@193328.4]
  assign _T_1903 = ~_T_1902; // @[Monitor.scala 687:16:chipyard.TestHarness.RocketConfig.fir@193329.4]
  assign _T_1904 = plusarg_reader_out == 32'h0; // @[Monitor.scala 687:39:chipyard.TestHarness.RocketConfig.fir@193330.4]
  assign _T_1905 = _T_1903 | _T_1904; // @[Monitor.scala 687:30:chipyard.TestHarness.RocketConfig.fir@193331.4]
  assign _T_1906 = _T_1901 < plusarg_reader_out; // @[Monitor.scala 687:59:chipyard.TestHarness.RocketConfig.fir@193332.4]
  assign _T_1907 = _T_1905 | _T_1906; // @[Monitor.scala 687:47:chipyard.TestHarness.RocketConfig.fir@193333.4]
  assign _T_1909 = _T_1907 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@193335.4]
  assign _T_1910 = ~_T_1909; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@193336.4]
  assign _T_1912 = _T_1901 + 32'h1; // @[Monitor.scala 689:26:chipyard.TestHarness.RocketConfig.fir@193342.4]
  assign _T_1915 = _T_1547 | _T_1596; // @[Monitor.scala 690:27:chipyard.TestHarness.RocketConfig.fir@193346.4]
  assign _T_1927 = _T_1925 - 9'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@193361.4]
  assign _T_1928 = _T_1925 == 9'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@193362.4]
  assign _T_1938 = _T_1596 & _T_1928; // @[Monitor.scala 700:27:chipyard.TestHarness.RocketConfig.fir@193376.4]
  assign _T_1941 = ~io_in_d_bits_opcode[1]; // @[Edges.scala 72:43:chipyard.TestHarness.RocketConfig.fir@193379.4]
  assign _T_1942 = io_in_d_bits_opcode[2] & _T_1941; // @[Edges.scala 72:40:chipyard.TestHarness.RocketConfig.fir@193380.4]
  assign _T_1943 = _T_1938 & _T_1942; // @[Monitor.scala 700:38:chipyard.TestHarness.RocketConfig.fir@193381.4]
  assign _T_1944 = 8'h1 << io_in_d_bits_sink; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@193383.6]
  assign _T_1945 = _T_1916 >> io_in_d_bits_sink; // @[Monitor.scala 702:23:chipyard.TestHarness.RocketConfig.fir@193385.6]
  assign _T_1947 = ~_T_1945[0]; // @[Monitor.scala 702:14:chipyard.TestHarness.RocketConfig.fir@193387.6]
  assign _T_1949 = _T_1947 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@193389.6]
  assign _T_1950 = ~_T_1949; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@193390.6]
  assign _GEN_69 = _T_1943 ? _T_1944 : 8'h0; // @[Monitor.scala 700:72:chipyard.TestHarness.RocketConfig.fir@193382.4]
  assign _T_1952 = io_in_e_ready & io_in_e_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@193398.4]
  assign _T_1955 = 8'h1 << io_in_e_bits_sink; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@193402.6]
  assign _T_1956 = _GEN_69 | _T_1916; // @[Monitor.scala 708:24:chipyard.TestHarness.RocketConfig.fir@193404.6]
  assign _T_1957 = _T_1956 >> io_in_e_bits_sink; // @[Monitor.scala 708:35:chipyard.TestHarness.RocketConfig.fir@193405.6]
  assign _T_1960 = _T_1957[0] | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@193408.6]
  assign _T_1961 = ~_T_1960; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@193409.6]
  assign _GEN_70 = _T_1952 ? _T_1955 : 8'h0; // @[Monitor.scala 706:73:chipyard.TestHarness.RocketConfig.fir@193401.4]
  assign _T_1962 = _T_1916 | _GEN_69; // @[Monitor.scala 713:27:chipyard.TestHarness.RocketConfig.fir@193415.4]
  assign _T_1963 = ~_GEN_70; // @[Monitor.scala 713:38:chipyard.TestHarness.RocketConfig.fir@193416.4]
  assign _T_1964 = _T_1962 & _T_1963; // @[Monitor.scala 713:36:chipyard.TestHarness.RocketConfig.fir@193417.4]
  assign _GEN_85 = io_in_a_valid & _T_98; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190571.10]
  assign _GEN_99 = io_in_a_valid & _T_189; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190700.10]
  assign _GEN_115 = io_in_a_valid & _T_284; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190842.10]
  assign _GEN_125 = io_in_a_valid & _T_364; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190950.10]
  assign _GEN_135 = io_in_a_valid & _T_442; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191050.10]
  assign _GEN_145 = io_in_a_valid & _T_522; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191147.10]
  assign _GEN_155 = io_in_a_valid & _T_595; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191242.10]
  assign _GEN_165 = io_in_a_valid & _T_668; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191342.10]
  assign _GEN_175 = io_in_d_valid & _T_759; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191408.10]
  assign _GEN_185 = io_in_d_valid & _T_779; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191450.10]
  assign _GEN_195 = io_in_d_valid & _T_807; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191508.10]
  assign _GEN_205 = io_in_d_valid & _T_836; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191567.10]
  assign _GEN_211 = io_in_d_valid & _T_853; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191602.10]
  assign _GEN_217 = io_in_d_valid & _T_871; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191638.10]
  assign _GEN_223 = io_in_b_valid & _T_1038; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191858.10]
  assign _GEN_235 = io_in_b_valid & _T_1071; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191913.10]
  assign _GEN_247 = io_in_b_valid & _T_1096; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191968.10]
  assign _GEN_257 = io_in_b_valid & _T_1117; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192015.10]
  assign _GEN_267 = io_in_b_valid & _T_1140; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192064.10]
  assign _GEN_275 = io_in_b_valid & _T_1161; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192111.10]
  assign _GEN_283 = io_in_b_valid & _T_1182; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192158.10]
  assign _GEN_293 = io_in_c_valid & _T_1285; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192309.10]
  assign _GEN_303 = io_in_c_valid & _T_1307; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192357.10]
  assign _GEN_313 = io_in_c_valid & _T_1325; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192450.10]
  assign _GEN_325 = io_in_c_valid & _T_1411; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192570.10]
  assign _GEN_337 = io_in_c_valid & _T_1493; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192629.10]
  assign _GEN_345 = io_in_c_valid & _T_1511; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192669.10]
  assign _GEN_353 = io_in_c_valid & _T_1525; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192701.10]
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
  _T_1556 = _RAND_0[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_1567 = _RAND_1[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_1568 = _RAND_2[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_1569 = _RAND_3[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_1570 = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_1571 = _RAND_5[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  _T_1604 = _RAND_6[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  _T_1615 = _RAND_7[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  _T_1616 = _RAND_8[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  _T_1617 = _RAND_9[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  _T_1618 = _RAND_10[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  _T_1619 = _RAND_11[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  _T_1620 = _RAND_12[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  _T_1658 = _RAND_13[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  _T_1669 = _RAND_14[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  _T_1670 = _RAND_15[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  _T_1671 = _RAND_16[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  _T_1672 = _RAND_17[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  _T_1673 = _RAND_18[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  _T_1706 = _RAND_19[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  _T_1717 = _RAND_20[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  _T_1718 = _RAND_21[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{`RANDOM}};
  _T_1719 = _RAND_22[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{`RANDOM}};
  _T_1720 = _RAND_23[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{`RANDOM}};
  _T_1721 = _RAND_24[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{`RANDOM}};
  inflight = _RAND_25[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{`RANDOM}};
  inflight_opcodes = _RAND_26[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {1{`RANDOM}};
  inflight_sizes = _RAND_27[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {1{`RANDOM}};
  _T_1755 = _RAND_28[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {1{`RANDOM}};
  _T_1773 = _RAND_29[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_30 = {1{`RANDOM}};
  _T_1901 = _RAND_30[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_31 = {1{`RANDOM}};
  _T_1916 = _RAND_31[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_32 = {1{`RANDOM}};
  _T_1925 = _RAND_32[8:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      _T_1556 <= 9'h0;
    end else if (_T_1547) begin
      if (_T_1559) begin
        if (_T_1554) begin
          _T_1556 <= _T_11[11:3];
        end else begin
          _T_1556 <= 9'h0;
        end
      end else begin
        _T_1556 <= _T_1558;
      end
    end
    if (_T_1595) begin
      _T_1567 <= io_in_a_bits_opcode;
    end
    if (_T_1595) begin
      _T_1568 <= io_in_a_bits_param;
    end
    if (_T_1595) begin
      _T_1569 <= io_in_a_bits_size;
    end
    if (_T_1595) begin
      _T_1570 <= io_in_a_bits_source;
    end
    if (_T_1595) begin
      _T_1571 <= io_in_a_bits_address;
    end
    if (reset) begin
      _T_1604 <= 9'h0;
    end else if (_T_1596) begin
      if (_T_1607) begin
        if (io_in_d_bits_opcode[0]) begin
          _T_1604 <= _T_1600[11:3];
        end else begin
          _T_1604 <= 9'h0;
        end
      end else begin
        _T_1604 <= _T_1606;
      end
    end
    if (_T_1648) begin
      _T_1615 <= io_in_d_bits_opcode;
    end
    if (_T_1648) begin
      _T_1616 <= io_in_d_bits_param;
    end
    if (_T_1648) begin
      _T_1617 <= io_in_d_bits_size;
    end
    if (_T_1648) begin
      _T_1618 <= io_in_d_bits_source;
    end
    if (_T_1648) begin
      _T_1619 <= io_in_d_bits_sink;
    end
    if (_T_1648) begin
      _T_1620 <= io_in_d_bits_denied;
    end
    if (reset) begin
      _T_1658 <= 9'h0;
    end else if (_T_1649) begin
      if (_T_1661) begin
        _T_1658 <= 9'h0;
      end else begin
        _T_1658 <= _T_1660;
      end
    end
    if (_T_1697) begin
      _T_1669 <= io_in_b_bits_opcode;
    end
    if (_T_1697) begin
      _T_1670 <= io_in_b_bits_param;
    end
    if (_T_1697) begin
      _T_1671 <= io_in_b_bits_size;
    end
    if (_T_1697) begin
      _T_1672 <= io_in_b_bits_source;
    end
    if (_T_1697) begin
      _T_1673 <= io_in_b_bits_address;
    end
    if (reset) begin
      _T_1706 <= 9'h0;
    end else if (_T_1698) begin
      if (_T_1709) begin
        if (io_in_c_bits_opcode[0]) begin
          _T_1706 <= _T_1214[11:3];
        end else begin
          _T_1706 <= 9'h0;
        end
      end else begin
        _T_1706 <= _T_1708;
      end
    end
    if (_T_1745) begin
      _T_1717 <= io_in_c_bits_opcode;
    end
    if (_T_1745) begin
      _T_1718 <= io_in_c_bits_param;
    end
    if (_T_1745) begin
      _T_1719 <= io_in_c_bits_size;
    end
    if (_T_1745) begin
      _T_1720 <= io_in_c_bits_source;
    end
    if (_T_1745) begin
      _T_1721 <= io_in_c_bits_address;
    end
    if (reset) begin
      inflight <= 2'h0;
    end else begin
      inflight <= _T_1894;
    end
    if (reset) begin
      inflight_opcodes <= 8'h0;
    end else begin
      inflight_opcodes <= _T_1897;
    end
    if (reset) begin
      inflight_sizes <= 16'h0;
    end else begin
      inflight_sizes <= _T_1900;
    end
    if (reset) begin
      _T_1755 <= 9'h0;
    end else if (_T_1547) begin
      if (a_first) begin
        if (_T_1554) begin
          _T_1755 <= _T_11[11:3];
        end else begin
          _T_1755 <= 9'h0;
        end
      end else begin
        _T_1755 <= _T_1757;
      end
    end
    if (reset) begin
      _T_1773 <= 9'h0;
    end else if (_T_1596) begin
      if (d_first) begin
        if (io_in_d_bits_opcode[0]) begin
          _T_1773 <= _T_1600[11:3];
        end else begin
          _T_1773 <= 9'h0;
        end
      end else begin
        _T_1773 <= _T_1775;
      end
    end
    if (reset) begin
      _T_1901 <= 32'h0;
    end else if (_T_1915) begin
      _T_1901 <= 32'h0;
    end else begin
      _T_1901 <= _T_1912;
    end
    if (reset) begin
      _T_1916 <= 8'h0;
    end else begin
      _T_1916 <= _T_1964;
    end
    if (reset) begin
      _T_1925 <= 9'h0;
    end else if (_T_1596) begin
      if (_T_1928) begin
        if (io_in_d_bits_opcode[0]) begin
          _T_1925 <= _T_1600[11:3];
        end else begin
          _T_1925 <= 9'h0;
        end
      end else begin
        _T_1925 <= _T_1927;
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_154) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock type unsupported by manager (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190571.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_154) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190572.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_165) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock from a client which does not support Probe (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190590.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_165) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190591.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_168) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock carries invalid source ID (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190597.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_168) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190598.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_172) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock smaller than a beat (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190605.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_172) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190606.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_175) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock address not aligned to size (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190612.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_175) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190613.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_179) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock carries invalid grow param (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190620.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_179) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190621.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_184) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock contains invalid mask (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190629.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_184) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190630.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_99 & _T_154) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm type unsupported by manager (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190700.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_99 & _T_154) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190701.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_99 & _T_165) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm from a client which does not support Probe (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190719.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_99 & _T_165) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190720.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_99 & _T_168) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm carries invalid source ID (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190726.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_99 & _T_168) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190727.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_99 & _T_172) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm smaller than a beat (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190734.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_99 & _T_172) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190735.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_99 & _T_175) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm address not aligned to size (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190741.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_99 & _T_175) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190742.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_99 & _T_179) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm carries invalid grow param (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190749.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_99 & _T_179) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190750.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_99 & _T_274) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm requests NtoB (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190757.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_99 & _T_274) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190758.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_99 & _T_184) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm contains invalid mask (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190766.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_99 & _T_184) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190767.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_115 & _T_345) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Get type unsupported by manager (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190842.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_115 & _T_345) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190843.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_115 & _T_168) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get carries invalid source ID (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190849.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_115 & _T_168) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190850.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_115 & _T_175) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get address not aligned to size (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190856.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_115 & _T_175) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190857.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_115 & _T_355) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get carries invalid param (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190864.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_115 & _T_355) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190865.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_115 & _T_359) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get contains invalid mask (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190872.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_115 & _T_359) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190873.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_125 & _T_427) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutFull type unsupported by manager (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190950.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_125 & _T_427) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190951.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_125 & _T_168) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull carries invalid source ID (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190957.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_125 & _T_168) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190958.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_125 & _T_175) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull address not aligned to size (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190964.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_125 & _T_175) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190965.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_125 & _T_355) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull carries invalid param (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190972.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_125 & _T_355) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190973.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_125 & _T_359) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull contains invalid mask (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190980.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_125 & _T_359) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@190981.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_135 & _T_427) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutPartial type unsupported by manager (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191050.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_135 & _T_427) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191051.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_135 & _T_168) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial carries invalid source ID (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191057.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_135 & _T_168) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191058.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_135 & _T_175) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial address not aligned to size (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191064.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_135 & _T_175) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191065.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_135 & _T_355) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial carries invalid param (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191072.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_135 & _T_355) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191073.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_135 & _T_521) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial contains invalid mask (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191082.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_135 & _T_521) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191083.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_145 & _T_580) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Arithmetic type unsupported by manager (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191147.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_145 & _T_580) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191148.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_145 & _T_168) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic carries invalid source ID (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191154.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_145 & _T_168) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191155.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_145 & _T_175) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic address not aligned to size (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191161.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_145 & _T_175) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191162.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_145 & _T_590) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic carries invalid opcode param (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191169.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_145 & _T_590) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191170.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_145 & _T_359) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic contains invalid mask (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191177.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_145 & _T_359) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191178.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_155 & _T_580) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Logical type unsupported by manager (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191242.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_155 & _T_580) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191243.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_155 & _T_168) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical carries invalid source ID (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191249.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_155 & _T_168) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191250.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_155 & _T_175) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical address not aligned to size (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191256.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_155 & _T_175) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191257.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_155 & _T_663) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical carries invalid opcode param (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191264.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_155 & _T_663) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191265.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_155 & _T_359) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical contains invalid mask (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191272.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_155 & _T_359) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191273.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_165 & _T_731) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Hint type unsupported by manager (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191342.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_165 & _T_731) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191343.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_165 & _T_168) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint carries invalid source ID (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191349.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_165 & _T_168) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191350.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_165 & _T_175) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint address not aligned to size (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191356.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_165 & _T_175) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191357.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_165 & _T_741) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint carries invalid opcode param (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191364.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_165 & _T_741) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191365.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_165 & _T_359) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint contains invalid mask (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191372.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_165 & _T_359) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191373.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_in_d_valid & _T_753) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel has invalid opcode (connected at HellaCache.scala:254:21)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191391.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (io_in_d_valid & _T_753) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191392.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_175 & _T_762) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck carries invalid source ID (connected at HellaCache.scala:254:21)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191408.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_175 & _T_762) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191409.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_175 & _T_766) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck smaller than a beat (connected at HellaCache.scala:254:21)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191416.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_175 & _T_766) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191417.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_175 & _T_770) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseeAck carries invalid param (connected at HellaCache.scala:254:21)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191424.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_175 & _T_770) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191425.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_175 & _T_774) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck is corrupt (connected at HellaCache.scala:254:21)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191432.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_175 & _T_774) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191433.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_175 & _T_778) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck is denied (connected at HellaCache.scala:254:21)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191440.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_175 & _T_778) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191441.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_185 & _T_762) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid source ID (connected at HellaCache.scala:254:21)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191450.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_185 & _T_762) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191451.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_185 & _T_766) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant smaller than a beat (connected at HellaCache.scala:254:21)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191465.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_185 & _T_766) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191466.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_185 & _T_793) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid cap param (connected at HellaCache.scala:254:21)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191473.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_185 & _T_793) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191474.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_185 & _T_797) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries toN param (connected at HellaCache.scala:254:21)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191481.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_185 & _T_797) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191482.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_185 & _T_774) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant is corrupt (connected at HellaCache.scala:254:21)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191489.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_185 & _T_774) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191490.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_195 & _T_762) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid source ID (connected at HellaCache.scala:254:21)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191508.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_195 & _T_762) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191509.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_195 & _T_766) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData smaller than a beat (connected at HellaCache.scala:254:21)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191523.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_195 & _T_766) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191524.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_195 & _T_793) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid cap param (connected at HellaCache.scala:254:21)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191531.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_195 & _T_793) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191532.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_195 & _T_797) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries toN param (connected at HellaCache.scala:254:21)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191539.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_195 & _T_797) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191540.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_195 & _T_830) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData is denied but not corrupt (connected at HellaCache.scala:254:21)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191548.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_195 & _T_830) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191549.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_205 & _T_762) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck carries invalid source ID (connected at HellaCache.scala:254:21)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191567.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_205 & _T_762) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191568.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_205 & _T_770) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck carries invalid param (connected at HellaCache.scala:254:21)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191575.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_205 & _T_770) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191576.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_205 & _T_774) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck is corrupt (connected at HellaCache.scala:254:21)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191583.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_205 & _T_774) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191584.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_211 & _T_762) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData carries invalid source ID (connected at HellaCache.scala:254:21)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191602.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_211 & _T_762) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191603.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_211 & _T_770) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData carries invalid param (connected at HellaCache.scala:254:21)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191610.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_211 & _T_770) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191611.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_211 & _T_830) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData is denied but not corrupt (connected at HellaCache.scala:254:21)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191619.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_211 & _T_830) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191620.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_217 & _T_762) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck carries invalid source ID (connected at HellaCache.scala:254:21)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191638.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_217 & _T_762) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191639.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_217 & _T_770) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck carries invalid param (connected at HellaCache.scala:254:21)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191646.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_217 & _T_770) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191647.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_217 & _T_774) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck is corrupt (connected at HellaCache.scala:254:21)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191654.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_217 & _T_774) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@191655.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_in_b_valid & _T_891) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel has invalid opcode (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191674.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (io_in_b_valid & _T_891) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191675.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_223 & _T_1049) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel carries Probe type unsupported by client (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191858.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_223 & _T_1049) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191859.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_223 & _T_1052) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel Probe carries unmanaged address (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191865.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_223 & _T_1052) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191866.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_223 & _T_1058) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel Probe address not aligned to size (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191879.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_223 & _T_1058) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191880.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_223 & _T_1062) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel Probe carries invalid cap param (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191887.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_223 & _T_1062) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191888.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_223 & _T_1066) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel Probe contains invalid mask (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191895.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_223 & _T_1066) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191896.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_223 & _T_1070) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel Probe is corrupt (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191903.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_223 & _T_1070) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191904.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_235 & _T_1074) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel carries Get type unsupported by client (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191913.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_235 & _T_1074) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191914.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_235 & _T_1052) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel Get carries unmanaged address (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191920.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_235 & _T_1052) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191921.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_235 & _T_1058) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel Get address not aligned to size (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191934.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_235 & _T_1058) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191935.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_235 & _T_1087) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel Get carries invalid param (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191942.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_235 & _T_1087) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191943.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_235 & _T_1066) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel Get contains invalid mask (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191950.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_235 & _T_1066) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191951.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_235 & _T_1070) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel Get is corrupt (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191958.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_235 & _T_1070) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191959.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_247 & _T_1074) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel carries PutFull type unsupported by client (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191968.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_247 & _T_1074) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191969.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_247 & _T_1052) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel PutFull carries unmanaged address (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191975.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_247 & _T_1052) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191976.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_247 & _T_1058) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel PutFull address not aligned to size (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191989.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_247 & _T_1058) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191990.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_247 & _T_1087) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel PutFull carries invalid param (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191997.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_247 & _T_1087) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@191998.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_247 & _T_1066) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel PutFull contains invalid mask (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192005.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_247 & _T_1066) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192006.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_257 & _T_1074) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel carries PutPartial type unsupported by client (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192015.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_257 & _T_1074) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192016.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_257 & _T_1052) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel PutPartial carries unmanaged address (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192022.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_257 & _T_1052) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192023.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_257 & _T_1058) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel PutPartial address not aligned to size (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192036.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_257 & _T_1058) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192037.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_257 & _T_1087) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel PutPartial carries invalid param (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192044.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_257 & _T_1087) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192045.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_257 & _T_1139) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel PutPartial contains invalid mask (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192054.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_257 & _T_1139) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192055.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_267 & _T_1074) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel carries Arithmetic type unsupported by client (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192064.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_267 & _T_1074) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192065.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_267 & _T_1052) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel Arithmetic carries unmanaged address (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192071.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_267 & _T_1052) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192072.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_267 & _T_1058) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel Arithmetic address not aligned to size (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192085.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_267 & _T_1058) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192086.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_267 & _T_1066) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel Arithmetic contains invalid mask (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192101.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_267 & _T_1066) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192102.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_275 & _T_1074) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel carries Logical type unsupported by client (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192111.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_275 & _T_1074) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192112.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_275 & _T_1052) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel Logical carries unmanaged address (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192118.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_275 & _T_1052) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192119.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_275 & _T_1058) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel Logical address not aligned to size (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192132.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_275 & _T_1058) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192133.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_275 & _T_1066) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel Logical contains invalid mask (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192148.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_275 & _T_1066) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192149.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_283 & _T_1074) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel carries Hint type unsupported by client (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192158.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_283 & _T_1074) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192159.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_283 & _T_1052) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel Hint carries unmanaged address (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192165.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_283 & _T_1052) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192166.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_283 & _T_1058) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel Hint address not aligned to size (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192179.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_283 & _T_1058) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192180.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_283 & _T_1066) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel Hint contains invalid mask (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192187.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_283 & _T_1066) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192188.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_283 & _T_1070) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel Hint is corrupt (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192195.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_283 & _T_1070) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192196.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_293 & _T_1288) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAck carries unmanaged address (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192309.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_293 & _T_1288) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192310.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_293 & _T_1291) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAck carries invalid source ID (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192316.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_293 & _T_1291) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192317.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_293 & _T_1295) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAck smaller than a beat (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192324.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_293 & _T_1295) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192325.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_293 & _T_1298) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAck address not aligned to size (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192331.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_293 & _T_1298) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192332.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_293 & _T_1302) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAck carries invalid report param (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192339.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_293 & _T_1302) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192340.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_303 & _T_1288) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAckData carries unmanaged address (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192357.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_303 & _T_1288) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192358.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_303 & _T_1291) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAckData carries invalid source ID (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192364.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_303 & _T_1291) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192365.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_303 & _T_1295) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAckData smaller than a beat (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192372.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_303 & _T_1295) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192373.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_303 & _T_1298) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAckData address not aligned to size (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192379.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_303 & _T_1298) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192380.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_303 & _T_1302) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAckData carries invalid report param (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192387.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_303 & _T_1302) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192388.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_313 & _T_1381) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel carries Release type unsupported by manager (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192450.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_313 & _T_1381) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192451.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_313 & _T_1392) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel carries Release from a client which does not support Probe (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192469.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_313 & _T_1392) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192470.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_313 & _T_1291) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel Release carries invalid source ID (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192476.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_313 & _T_1291) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192477.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_313 & _T_1295) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel Release smaller than a beat (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192484.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_313 & _T_1295) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192485.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_313 & _T_1298) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel Release address not aligned to size (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192491.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_313 & _T_1298) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192492.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_313 & _T_1406) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel Release carries invalid shrink param (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192499.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_313 & _T_1406) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192500.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_325 & _T_1381) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel carries ReleaseData type unsupported by manager (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192570.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_325 & _T_1381) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192571.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_325 & _T_1392) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel carries Release from a client which does not support Probe (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192589.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_325 & _T_1392) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192590.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_325 & _T_1291) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ReleaseData carries invalid source ID (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192596.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_325 & _T_1291) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192597.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_325 & _T_1295) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ReleaseData smaller than a beat (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192604.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_325 & _T_1295) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192605.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_325 & _T_1298) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ReleaseData address not aligned to size (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192611.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_325 & _T_1298) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192612.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_325 & _T_1406) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ReleaseData carries invalid shrink param (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192619.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_325 & _T_1406) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192620.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_337 & _T_1288) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAck carries unmanaged address (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192629.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_337 & _T_1288) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192630.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_337 & _T_1291) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAck carries invalid source ID (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192636.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_337 & _T_1291) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192637.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_337 & _T_1298) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAck address not aligned to size (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192643.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_337 & _T_1298) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192644.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_337 & _T_1506) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAck carries invalid param (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192651.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_337 & _T_1506) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192652.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_345 & _T_1288) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAckData carries unmanaged address (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192669.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_345 & _T_1288) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192670.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_345 & _T_1291) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAckData carries invalid source ID (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192676.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_345 & _T_1291) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192677.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_345 & _T_1298) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAckData address not aligned to size (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192683.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_345 & _T_1298) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192684.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_345 & _T_1506) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAckData carries invalid param (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192691.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_345 & _T_1506) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192692.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_353 & _T_1288) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel HintAck carries unmanaged address (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192701.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_353 & _T_1288) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192702.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_353 & _T_1291) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel HintAck carries invalid source ID (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192708.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_353 & _T_1291) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192709.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_353 & _T_1298) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel HintAck address not aligned to size (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192715.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_353 & _T_1298) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192716.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_353 & _T_1506) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel HintAck carries invalid param (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192723.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_353 & _T_1506) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192724.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1573 & _T_1577) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel opcode changed within multibeat operation (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192782.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1573 & _T_1577) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192783.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1573 & _T_1581) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel param changed within multibeat operation (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192790.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1573 & _T_1581) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192791.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1573 & _T_1585) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel size changed within multibeat operation (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192798.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1573 & _T_1585) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192799.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1573 & _T_1589) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel source changed within multibeat operation (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192806.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1573 & _T_1589) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192807.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1573 & _T_1593) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel address changed with multibeat operation (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192814.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1573 & _T_1593) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192815.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1622 & _T_1626) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel opcode changed within multibeat operation (connected at HellaCache.scala:254:21)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@192863.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1622 & _T_1626) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@192864.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1622 & _T_1630) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel param changed within multibeat operation (connected at HellaCache.scala:254:21)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@192871.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1622 & _T_1630) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@192872.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1622 & _T_1634) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel size changed within multibeat operation (connected at HellaCache.scala:254:21)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@192879.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1622 & _T_1634) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@192880.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1622 & _T_1638) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel source changed within multibeat operation (connected at HellaCache.scala:254:21)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@192887.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1622 & _T_1638) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@192888.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1622 & _T_1642) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel sink changed with multibeat operation (connected at HellaCache.scala:254:21)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@192895.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1622 & _T_1642) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@192896.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1622 & _T_1646) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel denied changed with multibeat operation (connected at HellaCache.scala:254:21)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@192903.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1622 & _T_1646) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@192904.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1675 & _T_1679) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel opcode changed within multibeat operation (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192953.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1675 & _T_1679) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192954.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1675 & _T_1683) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel param changed within multibeat operation (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192961.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1675 & _T_1683) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192962.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1675 & _T_1687) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel size changed within multibeat operation (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192969.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1675 & _T_1687) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192970.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1675 & _T_1691) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel source changed within multibeat operation (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192977.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1675 & _T_1691) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192978.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1675 & _T_1695) begin
          $fwrite(32'h80000002,"Assertion failed: 'B' channel addresss changed with multibeat operation (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192985.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1675 & _T_1695) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@192986.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1723 & _T_1727) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel opcode changed within multibeat operation (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@193033.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1723 & _T_1727) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@193034.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1723 & _T_1731) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel param changed within multibeat operation (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@193041.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1723 & _T_1731) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@193042.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1723 & _T_1735) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel size changed within multibeat operation (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@193049.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1723 & _T_1735) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@193050.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1723 & _T_1739) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel source changed within multibeat operation (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@193057.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1723 & _T_1739) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@193058.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1723 & _T_1743) begin
          $fwrite(32'h80000002,"Assertion failed: 'C' channel address changed with multibeat operation (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@193065.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1723 & _T_1743) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@193066.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1802 & _T_1818) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel re-used a source ID (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@193201.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1802 & _T_1818) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@193202.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1841 & _T_1852) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel acknowledged for nothing inflight (connected at HellaCache.scala:254:21)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@193252.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1841 & _T_1852) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@193253.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1841 & _T_1865) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper opcode response (connected at HellaCache.scala:254:21)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@193269.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1841 & _T_1865) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@193270.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1841 & _T_1872) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper response size (connected at HellaCache.scala:254:21)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@193280.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1841 & _T_1872) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@193281.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1879 & _T_1884) begin
          $fwrite(32'h80000002,"Assertion failed: ready check\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@193298.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1879 & _T_1884) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@193299.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1891) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' and 'D' concurrent, despite minlatency 4 (connected at HellaCache.scala:254:21)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@193310.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1891) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@193311.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1910) begin
          $fwrite(32'h80000002,"Assertion failed: TileLink timeout expired (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@193338.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1910) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@193339.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1943 & _T_1950) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel re-used a sink ID (connected at HellaCache.scala:254:21)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@193392.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1943 & _T_1950) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@193393.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1952 & _T_1961) begin
          $fwrite(32'h80000002,"Assertion failed: 'E' channel acknowledged for nothing inflight (connected at HellaCache.scala:254:21)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@193411.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1952 & _T_1961) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@193412.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
