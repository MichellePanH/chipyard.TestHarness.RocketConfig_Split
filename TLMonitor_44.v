module TLMonitor_44( // @[:chipyard.TestHarness.RocketConfig.fir@110370.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@110371.4]
  input         reset, // @[:chipyard.TestHarness.RocketConfig.fir@110372.4]
  input         io_in_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@110373.4]
  input         io_in_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@110373.4]
  input  [2:0]  io_in_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@110373.4]
  input  [2:0]  io_in_a_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@110373.4]
  input  [2:0]  io_in_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@110373.4]
  input  [2:0]  io_in_a_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@110373.4]
  input  [31:0] io_in_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@110373.4]
  input  [7:0]  io_in_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@110373.4]
  input         io_in_a_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@110373.4]
  input         io_in_c_ready, // @[:chipyard.TestHarness.RocketConfig.fir@110373.4]
  input         io_in_c_valid, // @[:chipyard.TestHarness.RocketConfig.fir@110373.4]
  input  [2:0]  io_in_c_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@110373.4]
  input  [2:0]  io_in_c_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@110373.4]
  input  [2:0]  io_in_c_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@110373.4]
  input  [2:0]  io_in_c_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@110373.4]
  input  [31:0] io_in_c_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@110373.4]
  input         io_in_c_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@110373.4]
  input         io_in_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@110373.4]
  input         io_in_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@110373.4]
  input  [2:0]  io_in_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@110373.4]
  input  [1:0]  io_in_d_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@110373.4]
  input  [2:0]  io_in_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@110373.4]
  input  [2:0]  io_in_d_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@110373.4]
  input  [2:0]  io_in_d_bits_sink, // @[:chipyard.TestHarness.RocketConfig.fir@110373.4]
  input         io_in_d_bits_denied, // @[:chipyard.TestHarness.RocketConfig.fir@110373.4]
  input         io_in_d_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@110373.4]
  input         io_in_e_valid, // @[:chipyard.TestHarness.RocketConfig.fir@110373.4]
  input  [2:0]  io_in_e_bits_sink // @[:chipyard.TestHarness.RocketConfig.fir@110373.4]
);
  wire [31:0] plusarg_reader_out; // @[PlusArg.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112693.4]
  wire  _T_10; // @[Parameters.scala 58:20:chipyard.TestHarness.RocketConfig.fir@110390.6]
  wire [12:0] _T_14; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@110396.6]
  wire [5:0] _T_16; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@110398.6]
  wire [31:0] _GEN_71; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@110399.6]
  wire [31:0] _T_17; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@110399.6]
  wire  _T_18; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@110400.6]
  wire [3:0] _T_21; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@110403.6]
  wire [2:0] _T_23; // @[Misc.scala 201:81:chipyard.TestHarness.RocketConfig.fir@110405.6]
  wire  _T_24; // @[Misc.scala 205:21:chipyard.TestHarness.RocketConfig.fir@110406.6]
  wire  _T_27; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@110409.6]
  wire  _T_29; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@110411.6]
  wire  _T_30; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@110412.6]
  wire  _T_32; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@110414.6]
  wire  _T_33; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@110415.6]
  wire  _T_36; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@110418.6]
  wire  _T_37; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@110419.6]
  wire  _T_38; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@110420.6]
  wire  _T_39; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@110421.6]
  wire  _T_40; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@110422.6]
  wire  _T_41; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@110423.6]
  wire  _T_42; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@110424.6]
  wire  _T_43; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@110425.6]
  wire  _T_44; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@110426.6]
  wire  _T_45; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@110427.6]
  wire  _T_46; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@110428.6]
  wire  _T_47; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@110429.6]
  wire  _T_48; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@110430.6]
  wire  _T_51; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@110433.6]
  wire  _T_52; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@110434.6]
  wire  _T_53; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@110435.6]
  wire  _T_54; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@110436.6]
  wire  _T_55; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@110437.6]
  wire  _T_56; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@110438.6]
  wire  _T_57; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@110439.6]
  wire  _T_58; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@110440.6]
  wire  _T_59; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@110441.6]
  wire  _T_60; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@110442.6]
  wire  _T_61; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@110443.6]
  wire  _T_62; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@110444.6]
  wire  _T_63; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@110445.6]
  wire  _T_64; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@110446.6]
  wire  _T_65; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@110447.6]
  wire  _T_66; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@110448.6]
  wire  _T_67; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@110449.6]
  wire  _T_68; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@110450.6]
  wire  _T_69; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@110451.6]
  wire  _T_70; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@110452.6]
  wire  _T_71; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@110453.6]
  wire  _T_72; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@110454.6]
  wire  _T_73; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@110455.6]
  wire  _T_74; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@110456.6]
  wire  _T_75; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@110457.6]
  wire [7:0] _T_82; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@110464.6]
  wire  _T_101; // @[Monitor.scala 79:25:chipyard.TestHarness.RocketConfig.fir@110487.6]
  wire  _T_103; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@110490.8]
  wire [31:0] _T_106; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@110493.8]
  wire [32:0] _T_107; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@110494.8]
  wire [32:0] _T_109; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@110496.8]
  wire  _T_110; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@110497.8]
  wire  _T_111; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@110498.8]
  wire  _T_114; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110501.8]
  wire  _T_115; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110502.8]
  wire  _T_116; // @[Parameters.scala 92:48:chipyard.TestHarness.RocketConfig.fir@110507.8]
  wire  _T_118; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110509.8]
  wire  _T_119; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110510.8]
  wire  _T_121; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110516.8]
  wire  _T_122; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110517.8]
  wire  _T_125; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110524.8]
  wire  _T_126; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110525.8]
  wire  _T_128; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110531.8]
  wire  _T_129; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110532.8]
  wire  _T_130; // @[Bundles.scala 110:27:chipyard.TestHarness.RocketConfig.fir@110537.8]
  wire  _T_132; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110539.8]
  wire  _T_133; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110540.8]
  wire [7:0] _T_134; // @[Monitor.scala 86:18:chipyard.TestHarness.RocketConfig.fir@110545.8]
  wire  _T_135; // @[Monitor.scala 86:31:chipyard.TestHarness.RocketConfig.fir@110546.8]
  wire  _T_137; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110548.8]
  wire  _T_138; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110549.8]
  wire  _T_139; // @[Monitor.scala 87:18:chipyard.TestHarness.RocketConfig.fir@110554.8]
  wire  _T_141; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110556.8]
  wire  _T_142; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110557.8]
  wire  _T_143; // @[Monitor.scala 90:25:chipyard.TestHarness.RocketConfig.fir@110563.6]
  wire  _T_176; // @[Monitor.scala 97:31:chipyard.TestHarness.RocketConfig.fir@110621.8]
  wire  _T_178; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110623.8]
  wire  _T_179; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110624.8]
  wire  _T_189; // @[Monitor.scala 102:25:chipyard.TestHarness.RocketConfig.fir@110647.6]
  wire  _T_210; // @[Monitor.scala 106:31:chipyard.TestHarness.RocketConfig.fir@110681.8]
  wire  _T_212; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110683.8]
  wire  _T_213; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110684.8]
  wire  _T_214; // @[Monitor.scala 107:30:chipyard.TestHarness.RocketConfig.fir@110689.8]
  wire  _T_216; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110691.8]
  wire  _T_217; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110692.8]
  wire  _T_222; // @[Monitor.scala 111:25:chipyard.TestHarness.RocketConfig.fir@110706.6]
  wire  _T_251; // @[Monitor.scala 119:25:chipyard.TestHarness.RocketConfig.fir@110757.6]
  wire [7:0] _T_276; // @[Monitor.scala 124:33:chipyard.TestHarness.RocketConfig.fir@110799.8]
  wire [7:0] _T_277; // @[Monitor.scala 124:31:chipyard.TestHarness.RocketConfig.fir@110800.8]
  wire  _T_278; // @[Monitor.scala 124:40:chipyard.TestHarness.RocketConfig.fir@110801.8]
  wire  _T_280; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110803.8]
  wire  _T_281; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110804.8]
  wire  _T_282; // @[Monitor.scala 127:25:chipyard.TestHarness.RocketConfig.fir@110810.6]
  wire  _T_293; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110822.8]
  wire  _T_300; // @[Bundles.scala 140:33:chipyard.TestHarness.RocketConfig.fir@110841.8]
  wire  _T_302; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110843.8]
  wire  _T_303; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110844.8]
  wire  _T_308; // @[Monitor.scala 135:25:chipyard.TestHarness.RocketConfig.fir@110858.6]
  wire  _T_326; // @[Bundles.scala 147:30:chipyard.TestHarness.RocketConfig.fir@110889.8]
  wire  _T_328; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110891.8]
  wire  _T_329; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110892.8]
  wire  _T_334; // @[Monitor.scala 143:25:chipyard.TestHarness.RocketConfig.fir@110906.6]
  wire  _T_352; // @[Bundles.scala 160:28:chipyard.TestHarness.RocketConfig.fir@110937.8]
  wire  _T_354; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110939.8]
  wire  _T_355; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110940.8]
  wire  _T_364; // @[Bundles.scala 44:24:chipyard.TestHarness.RocketConfig.fir@110964.6]
  wire  _T_366; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@110966.6]
  wire  _T_367; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@110967.6]
  wire  _T_374; // @[Parameters.scala 58:20:chipyard.TestHarness.RocketConfig.fir@110978.6]
  wire  _T_378; // @[Monitor.scala 307:25:chipyard.TestHarness.RocketConfig.fir@110984.6]
  wire  _T_380; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@110987.8]
  wire  _T_381; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@110988.8]
  wire  _T_382; // @[Monitor.scala 309:27:chipyard.TestHarness.RocketConfig.fir@110993.8]
  wire  _T_384; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@110995.8]
  wire  _T_385; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@110996.8]
  wire  _T_386; // @[Monitor.scala 310:28:chipyard.TestHarness.RocketConfig.fir@111001.8]
  wire  _T_388; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@111003.8]
  wire  _T_389; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@111004.8]
  wire  _T_390; // @[Monitor.scala 311:15:chipyard.TestHarness.RocketConfig.fir@111009.8]
  wire  _T_392; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@111011.8]
  wire  _T_393; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@111012.8]
  wire  _T_394; // @[Monitor.scala 312:15:chipyard.TestHarness.RocketConfig.fir@111017.8]
  wire  _T_396; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@111019.8]
  wire  _T_397; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@111020.8]
  wire  _T_398; // @[Monitor.scala 315:25:chipyard.TestHarness.RocketConfig.fir@111026.6]
  wire  _T_409; // @[Bundles.scala 104:26:chipyard.TestHarness.RocketConfig.fir@111050.8]
  wire  _T_411; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@111052.8]
  wire  _T_412; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@111053.8]
  wire  _T_413; // @[Monitor.scala 320:28:chipyard.TestHarness.RocketConfig.fir@111058.8]
  wire  _T_415; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@111060.8]
  wire  _T_416; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@111061.8]
  wire  _T_426; // @[Monitor.scala 325:25:chipyard.TestHarness.RocketConfig.fir@111084.6]
  wire  _T_446; // @[Monitor.scala 331:30:chipyard.TestHarness.RocketConfig.fir@111125.8]
  wire  _T_448; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@111127.8]
  wire  _T_449; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@111128.8]
  wire  _T_455; // @[Monitor.scala 335:25:chipyard.TestHarness.RocketConfig.fir@111143.6]
  wire  _T_472; // @[Monitor.scala 343:25:chipyard.TestHarness.RocketConfig.fir@111178.6]
  wire  _T_490; // @[Monitor.scala 351:25:chipyard.TestHarness.RocketConfig.fir@111214.6]
  wire  _T_783; // @[Parameters.scala 58:20:chipyard.TestHarness.RocketConfig.fir@111735.6]
  wire [12:0] _T_787; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@111741.6]
  wire [5:0] _T_789; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@111743.6]
  wire [31:0] _GEN_72; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@111744.6]
  wire [31:0] _T_790; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@111744.6]
  wire  _T_791; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@111745.6]
  wire [31:0] _T_792; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@111746.6]
  wire [32:0] _T_793; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@111747.6]
  wire [32:0] _T_795; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@111749.6]
  wire  _T_796; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@111750.6]
  wire  _T_816; // @[Monitor.scala 239:25:chipyard.TestHarness.RocketConfig.fir@111776.6]
  wire  _T_818; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111779.8]
  wire  _T_819; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111780.8]
  wire  _T_821; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111786.8]
  wire  _T_822; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111787.8]
  wire  _T_823; // @[Monitor.scala 242:30:chipyard.TestHarness.RocketConfig.fir@111792.8]
  wire  _T_825; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111794.8]
  wire  _T_826; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111795.8]
  wire  _T_828; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111801.8]
  wire  _T_829; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111802.8]
  wire  _T_830; // @[Bundles.scala 122:29:chipyard.TestHarness.RocketConfig.fir@111807.8]
  wire  _T_832; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111809.8]
  wire  _T_833; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111810.8]
  wire  _T_834; // @[Monitor.scala 245:18:chipyard.TestHarness.RocketConfig.fir@111815.8]
  wire  _T_836; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111817.8]
  wire  _T_837; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111818.8]
  wire  _T_838; // @[Monitor.scala 248:25:chipyard.TestHarness.RocketConfig.fir@111824.6]
  wire  _T_856; // @[Monitor.scala 256:25:chipyard.TestHarness.RocketConfig.fir@111864.6]
  wire  _T_858; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@111867.8]
  wire  _T_866; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@111875.8]
  wire  _T_869; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111878.8]
  wire  _T_870; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111879.8]
  wire  _T_871; // @[Parameters.scala 92:48:chipyard.TestHarness.RocketConfig.fir@111884.8]
  wire  _T_873; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111886.8]
  wire  _T_874; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111887.8]
  wire  _T_885; // @[Bundles.scala 116:29:chipyard.TestHarness.RocketConfig.fir@111914.8]
  wire  _T_887; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111916.8]
  wire  _T_888; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111917.8]
  wire  _T_893; // @[Monitor.scala 266:25:chipyard.TestHarness.RocketConfig.fir@111931.6]
  wire  _T_926; // @[Monitor.scala 275:25:chipyard.TestHarness.RocketConfig.fir@111990.6]
  wire  _T_936; // @[Monitor.scala 279:31:chipyard.TestHarness.RocketConfig.fir@112013.8]
  wire  _T_938; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112015.8]
  wire  _T_939; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112016.8]
  wire  _T_944; // @[Monitor.scala 283:25:chipyard.TestHarness.RocketConfig.fir@112030.6]
  wire  _T_958; // @[Monitor.scala 290:25:chipyard.TestHarness.RocketConfig.fir@112062.6]
  wire  _T_980; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@112113.4]
  wire  _T_987; // @[Edges.scala 93:28:chipyard.TestHarness.RocketConfig.fir@112120.4]
  reg [2:0] _T_989; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@112122.4]
  reg [31:0] _RAND_0;
  wire [2:0] _T_991; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@112124.4]
  wire  _T_992; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@112125.4]
  reg [2:0] _T_1000; // @[Monitor.scala 381:22:chipyard.TestHarness.RocketConfig.fir@112136.4]
  reg [31:0] _RAND_1;
  reg [2:0] _T_1001; // @[Monitor.scala 382:22:chipyard.TestHarness.RocketConfig.fir@112137.4]
  reg [31:0] _RAND_2;
  reg [2:0] _T_1002; // @[Monitor.scala 383:22:chipyard.TestHarness.RocketConfig.fir@112138.4]
  reg [31:0] _RAND_3;
  reg [2:0] _T_1003; // @[Monitor.scala 384:22:chipyard.TestHarness.RocketConfig.fir@112139.4]
  reg [31:0] _RAND_4;
  reg [31:0] _T_1004; // @[Monitor.scala 385:22:chipyard.TestHarness.RocketConfig.fir@112140.4]
  reg [31:0] _RAND_5;
  wire  _T_1005; // @[Monitor.scala 386:22:chipyard.TestHarness.RocketConfig.fir@112141.4]
  wire  _T_1006; // @[Monitor.scala 386:19:chipyard.TestHarness.RocketConfig.fir@112142.4]
  wire  _T_1007; // @[Monitor.scala 387:32:chipyard.TestHarness.RocketConfig.fir@112144.6]
  wire  _T_1009; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112146.6]
  wire  _T_1010; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112147.6]
  wire  _T_1011; // @[Monitor.scala 388:32:chipyard.TestHarness.RocketConfig.fir@112152.6]
  wire  _T_1013; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112154.6]
  wire  _T_1014; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112155.6]
  wire  _T_1015; // @[Monitor.scala 389:32:chipyard.TestHarness.RocketConfig.fir@112160.6]
  wire  _T_1017; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112162.6]
  wire  _T_1018; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112163.6]
  wire  _T_1019; // @[Monitor.scala 390:32:chipyard.TestHarness.RocketConfig.fir@112168.6]
  wire  _T_1021; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112170.6]
  wire  _T_1022; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112171.6]
  wire  _T_1023; // @[Monitor.scala 391:32:chipyard.TestHarness.RocketConfig.fir@112176.6]
  wire  _T_1025; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112178.6]
  wire  _T_1026; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112179.6]
  wire  _T_1028; // @[Monitor.scala 393:20:chipyard.TestHarness.RocketConfig.fir@112186.4]
  wire  _T_1029; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@112194.4]
  wire [12:0] _T_1031; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@112196.4]
  wire [5:0] _T_1033; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@112198.4]
  reg [2:0] _T_1037; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@112202.4]
  reg [31:0] _RAND_6;
  wire [2:0] _T_1039; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@112204.4]
  wire  _T_1040; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@112205.4]
  reg [2:0] _T_1048; // @[Monitor.scala 532:22:chipyard.TestHarness.RocketConfig.fir@112216.4]
  reg [31:0] _RAND_7;
  reg [1:0] _T_1049; // @[Monitor.scala 533:22:chipyard.TestHarness.RocketConfig.fir@112217.4]
  reg [31:0] _RAND_8;
  reg [2:0] _T_1050; // @[Monitor.scala 534:22:chipyard.TestHarness.RocketConfig.fir@112218.4]
  reg [31:0] _RAND_9;
  reg [2:0] _T_1051; // @[Monitor.scala 535:22:chipyard.TestHarness.RocketConfig.fir@112219.4]
  reg [31:0] _RAND_10;
  reg [2:0] _T_1052; // @[Monitor.scala 536:22:chipyard.TestHarness.RocketConfig.fir@112220.4]
  reg [31:0] _RAND_11;
  reg  _T_1053; // @[Monitor.scala 537:22:chipyard.TestHarness.RocketConfig.fir@112221.4]
  reg [31:0] _RAND_12;
  wire  _T_1054; // @[Monitor.scala 538:22:chipyard.TestHarness.RocketConfig.fir@112222.4]
  wire  _T_1055; // @[Monitor.scala 538:19:chipyard.TestHarness.RocketConfig.fir@112223.4]
  wire  _T_1056; // @[Monitor.scala 539:29:chipyard.TestHarness.RocketConfig.fir@112225.6]
  wire  _T_1058; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@112227.6]
  wire  _T_1059; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@112228.6]
  wire  _T_1060; // @[Monitor.scala 540:29:chipyard.TestHarness.RocketConfig.fir@112233.6]
  wire  _T_1062; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@112235.6]
  wire  _T_1063; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@112236.6]
  wire  _T_1064; // @[Monitor.scala 541:29:chipyard.TestHarness.RocketConfig.fir@112241.6]
  wire  _T_1066; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@112243.6]
  wire  _T_1067; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@112244.6]
  wire  _T_1068; // @[Monitor.scala 542:29:chipyard.TestHarness.RocketConfig.fir@112249.6]
  wire  _T_1070; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@112251.6]
  wire  _T_1071; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@112252.6]
  wire  _T_1072; // @[Monitor.scala 543:29:chipyard.TestHarness.RocketConfig.fir@112257.6]
  wire  _T_1074; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@112259.6]
  wire  _T_1075; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@112260.6]
  wire  _T_1076; // @[Monitor.scala 544:29:chipyard.TestHarness.RocketConfig.fir@112265.6]
  wire  _T_1078; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@112267.6]
  wire  _T_1079; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@112268.6]
  wire  _T_1081; // @[Monitor.scala 546:20:chipyard.TestHarness.RocketConfig.fir@112275.4]
  wire  _T_1131; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@112365.4]
  reg [2:0] _T_1139; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@112373.4]
  reg [31:0] _RAND_13;
  wire [2:0] _T_1141; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@112375.4]
  wire  _T_1142; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@112376.4]
  reg [2:0] _T_1150; // @[Monitor.scala 509:22:chipyard.TestHarness.RocketConfig.fir@112387.4]
  reg [31:0] _RAND_14;
  reg [2:0] _T_1151; // @[Monitor.scala 510:22:chipyard.TestHarness.RocketConfig.fir@112388.4]
  reg [31:0] _RAND_15;
  reg [2:0] _T_1152; // @[Monitor.scala 511:22:chipyard.TestHarness.RocketConfig.fir@112389.4]
  reg [31:0] _RAND_16;
  reg [2:0] _T_1153; // @[Monitor.scala 512:22:chipyard.TestHarness.RocketConfig.fir@112390.4]
  reg [31:0] _RAND_17;
  reg [31:0] _T_1154; // @[Monitor.scala 513:22:chipyard.TestHarness.RocketConfig.fir@112391.4]
  reg [31:0] _RAND_18;
  wire  _T_1155; // @[Monitor.scala 514:22:chipyard.TestHarness.RocketConfig.fir@112392.4]
  wire  _T_1156; // @[Monitor.scala 514:19:chipyard.TestHarness.RocketConfig.fir@112393.4]
  wire  _T_1157; // @[Monitor.scala 515:32:chipyard.TestHarness.RocketConfig.fir@112395.6]
  wire  _T_1159; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112397.6]
  wire  _T_1160; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112398.6]
  wire  _T_1161; // @[Monitor.scala 516:32:chipyard.TestHarness.RocketConfig.fir@112403.6]
  wire  _T_1163; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112405.6]
  wire  _T_1164; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112406.6]
  wire  _T_1165; // @[Monitor.scala 517:32:chipyard.TestHarness.RocketConfig.fir@112411.6]
  wire  _T_1167; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112413.6]
  wire  _T_1168; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112414.6]
  wire  _T_1169; // @[Monitor.scala 518:32:chipyard.TestHarness.RocketConfig.fir@112419.6]
  wire  _T_1171; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112421.6]
  wire  _T_1172; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112422.6]
  wire  _T_1173; // @[Monitor.scala 519:32:chipyard.TestHarness.RocketConfig.fir@112427.6]
  wire  _T_1175; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112429.6]
  wire  _T_1176; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112430.6]
  wire  _T_1178; // @[Monitor.scala 521:20:chipyard.TestHarness.RocketConfig.fir@112437.4]
  reg [4:0] inflight; // @[Monitor.scala 608:27:chipyard.TestHarness.RocketConfig.fir@112445.4]
  reg [31:0] _RAND_19;
  reg [19:0] inflight_opcodes; // @[Monitor.scala 610:35:chipyard.TestHarness.RocketConfig.fir@112446.4]
  reg [31:0] _RAND_20;
  reg [19:0] inflight_sizes; // @[Monitor.scala 612:33:chipyard.TestHarness.RocketConfig.fir@112447.4]
  reg [31:0] _RAND_21;
  reg [2:0] _T_1188; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@112457.4]
  reg [31:0] _RAND_22;
  wire [2:0] _T_1190; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@112459.4]
  wire  a_first; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@112460.4]
  reg [2:0] _T_1206; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@112479.4]
  reg [31:0] _RAND_23;
  wire [2:0] _T_1208; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@112481.4]
  wire  d_first; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@112482.4]
  wire [4:0] _GEN_73; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@112501.4]
  wire [5:0] _T_1216; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@112501.4]
  wire [19:0] _T_1217; // @[Monitor.scala 629:44:chipyard.TestHarness.RocketConfig.fir@112502.4]
  wire [15:0] _T_1221; // @[Monitor.scala 606:57:chipyard.TestHarness.RocketConfig.fir@112506.4]
  wire [19:0] _GEN_74; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@112507.4]
  wire [19:0] _T_1222; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@112507.4]
  wire [19:0] _T_1223; // @[Monitor.scala 629:152:chipyard.TestHarness.RocketConfig.fir@112508.4]
  wire [19:0] _T_1225; // @[Monitor.scala 633:40:chipyard.TestHarness.RocketConfig.fir@112513.4]
  wire [19:0] _T_1230; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@112518.4]
  wire [19:0] _T_1231; // @[Monitor.scala 633:144:chipyard.TestHarness.RocketConfig.fir@112519.4]
  wire  _T_1235; // @[Monitor.scala 643:27:chipyard.TestHarness.RocketConfig.fir@112544.4]
  wire [7:0] _T_1237; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@112547.6]
  wire [3:0] _T_1238; // @[Monitor.scala 645:53:chipyard.TestHarness.RocketConfig.fir@112549.6]
  wire [3:0] _T_1239; // @[Monitor.scala 645:61:chipyard.TestHarness.RocketConfig.fir@112550.6]
  wire [3:0] _T_1240; // @[Monitor.scala 646:49:chipyard.TestHarness.RocketConfig.fir@112552.6]
  wire [3:0] _T_1241; // @[Monitor.scala 646:57:chipyard.TestHarness.RocketConfig.fir@112553.6]
  wire [4:0] _GEN_79; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@112555.6]
  wire [5:0] _T_1242; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@112555.6]
  wire [3:0] a_opcodes_set_interm; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@112546.4]
  wire [66:0] _GEN_80; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@112556.6]
  wire [66:0] _T_1243; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@112556.6]
  wire [3:0] a_sizes_set_interm; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@112546.4]
  wire [66:0] _GEN_82; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@112559.6]
  wire [66:0] _T_1245; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@112559.6]
  wire [4:0] _T_1246; // @[Monitor.scala 649:26:chipyard.TestHarness.RocketConfig.fir@112561.6]
  wire  _T_1248; // @[Monitor.scala 649:17:chipyard.TestHarness.RocketConfig.fir@112563.6]
  wire  _T_1250; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112565.6]
  wire  _T_1251; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112566.6]
  wire [7:0] _GEN_27; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@112546.4]
  wire [66:0] _GEN_30; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@112546.4]
  wire [66:0] _GEN_31; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@112546.4]
  wire  _T_1254; // @[Monitor.scala 660:27:chipyard.TestHarness.RocketConfig.fir@112580.4]
  wire  _T_1256; // @[Monitor.scala 660:75:chipyard.TestHarness.RocketConfig.fir@112582.4]
  wire  _T_1257; // @[Monitor.scala 660:72:chipyard.TestHarness.RocketConfig.fir@112583.4]
  wire [7:0] _T_1258; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@112585.6]
  wire [78:0] _GEN_84; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@112592.6]
  wire [78:0] _T_1264; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@112592.6]
  wire [7:0] _GEN_32; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@112584.4]
  wire [78:0] _GEN_33; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@112584.4]
  wire  _T_1271; // @[Monitor.scala 665:26:chipyard.TestHarness.RocketConfig.fir@112602.4]
  wire  _T_1274; // @[Monitor.scala 665:71:chipyard.TestHarness.RocketConfig.fir@112605.4]
  wire [4:0] _T_1275; // @[Monitor.scala 666:25:chipyard.TestHarness.RocketConfig.fir@112607.6]
  wire  _T_1277; // @[Monitor.scala 666:93:chipyard.TestHarness.RocketConfig.fir@112609.6]
  wire  _T_1278; // @[Monitor.scala 666:68:chipyard.TestHarness.RocketConfig.fir@112610.6]
  wire  _T_1279; // @[Monitor.scala 666:142:chipyard.TestHarness.RocketConfig.fir@112611.6]
  wire  _T_1280; // @[Monitor.scala 666:119:chipyard.TestHarness.RocketConfig.fir@112612.6]
  wire  _T_1281; // @[Monitor.scala 666:166:chipyard.TestHarness.RocketConfig.fir@112613.6]
  wire  _T_1282; // @[Monitor.scala 666:49:chipyard.TestHarness.RocketConfig.fir@112614.6]
  wire  _T_1284; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@112616.6]
  wire  _T_1285; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@112617.6]
  wire [3:0] a_opcode_lookup; // @[:chipyard.TestHarness.RocketConfig.fir@112499.4 :chipyard.TestHarness.RocketConfig.fir@112500.4 Monitor.scala 629:21:chipyard.TestHarness.RocketConfig.fir@112509.4]
  wire [2:0] _GEN_37; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@112623.6]
  wire [2:0] _GEN_38; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@112623.6]
  wire [2:0] _GEN_39; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@112623.6]
  wire [2:0] _GEN_40; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@112623.6]
  wire [2:0] _GEN_41; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@112623.6]
  wire [2:0] _GEN_42; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@112623.6]
  wire  _T_1287; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@112623.6]
  wire [2:0] _GEN_49; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@112625.6]
  wire [2:0] _GEN_50; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@112625.6]
  wire  _T_1289; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@112625.6]
  wire  _T_1290; // @[Monitor.scala 667:71:chipyard.TestHarness.RocketConfig.fir@112626.6]
  wire [2:0] _GEN_53; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@112627.6]
  wire [2:0] _GEN_54; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@112627.6]
  wire [2:0] _GEN_55; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@112627.6]
  wire [2:0] _GEN_56; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@112627.6]
  wire [2:0] _GEN_57; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@112627.6]
  wire [2:0] _GEN_58; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@112627.6]
  wire  _T_1291; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@112627.6]
  wire [2:0] _GEN_65; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@112628.6]
  wire [2:0] _GEN_66; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@112628.6]
  wire  _T_1292; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@112628.6]
  wire  _T_1293; // @[Monitor.scala 668:99:chipyard.TestHarness.RocketConfig.fir@112629.6]
  wire  _T_1294; // @[Monitor.scala 668:34:chipyard.TestHarness.RocketConfig.fir@112630.6]
  wire  _T_1295; // @[Monitor.scala 668:15:chipyard.TestHarness.RocketConfig.fir@112631.6]
  wire  _T_1297; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@112633.6]
  wire  _T_1298; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@112634.6]
  wire [3:0] a_size_lookup; // @[:chipyard.TestHarness.RocketConfig.fir@112510.4 :chipyard.TestHarness.RocketConfig.fir@112511.4 Monitor.scala 633:19:chipyard.TestHarness.RocketConfig.fir@112520.4]
  wire [3:0] _GEN_87; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@112639.6]
  wire  _T_1299; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@112639.6]
  wire  _T_1301; // @[Monitor.scala 670:72:chipyard.TestHarness.RocketConfig.fir@112641.6]
  wire  _T_1302; // @[Monitor.scala 670:53:chipyard.TestHarness.RocketConfig.fir@112642.6]
  wire  _T_1304; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@112644.6]
  wire  _T_1305; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@112645.6]
  wire  _T_1307; // @[Monitor.scala 672:36:chipyard.TestHarness.RocketConfig.fir@112652.4]
  wire  _T_1308; // @[Monitor.scala 672:47:chipyard.TestHarness.RocketConfig.fir@112653.4]
  wire  _T_1310; // @[Monitor.scala 672:65:chipyard.TestHarness.RocketConfig.fir@112655.4]
  wire  _T_1312; // @[Monitor.scala 672:116:chipyard.TestHarness.RocketConfig.fir@112657.4]
  wire  _T_1313; // @[Monitor.scala 673:15:chipyard.TestHarness.RocketConfig.fir@112659.6]
  wire  _T_1314; // @[Monitor.scala 673:32:chipyard.TestHarness.RocketConfig.fir@112660.6]
  wire  _T_1316; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@112662.6]
  wire  _T_1317; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@112663.6]
  wire [4:0] a_set; // @[:chipyard.TestHarness.RocketConfig.fir@112493.4 :chipyard.TestHarness.RocketConfig.fir@112494.4 Monitor.scala 644:13:chipyard.TestHarness.RocketConfig.fir@112548.6]
  wire [4:0] d_clr; // @[:chipyard.TestHarness.RocketConfig.fir@112572.4 :chipyard.TestHarness.RocketConfig.fir@112573.4 Monitor.scala 661:13:chipyard.TestHarness.RocketConfig.fir@112586.6]
  wire  _T_1318; // @[Monitor.scala 677:20:chipyard.TestHarness.RocketConfig.fir@112669.4]
  wire  _T_1319; // @[Monitor.scala 677:40:chipyard.TestHarness.RocketConfig.fir@112670.4]
  wire  _T_1320; // @[Monitor.scala 677:33:chipyard.TestHarness.RocketConfig.fir@112671.4]
  wire  _T_1321; // @[Monitor.scala 677:30:chipyard.TestHarness.RocketConfig.fir@112672.4]
  wire  _T_1323; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@112674.4]
  wire  _T_1324; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@112675.4]
  wire [4:0] _T_1325; // @[Monitor.scala 680:27:chipyard.TestHarness.RocketConfig.fir@112680.4]
  wire [4:0] _T_1326; // @[Monitor.scala 680:38:chipyard.TestHarness.RocketConfig.fir@112681.4]
  wire [4:0] _T_1327; // @[Monitor.scala 680:36:chipyard.TestHarness.RocketConfig.fir@112682.4]
  wire [19:0] a_opcodes_set; // @[:chipyard.TestHarness.RocketConfig.fir@112495.4 :chipyard.TestHarness.RocketConfig.fir@112496.4 Monitor.scala 647:21:chipyard.TestHarness.RocketConfig.fir@112557.6]
  wire [19:0] _T_1328; // @[Monitor.scala 681:43:chipyard.TestHarness.RocketConfig.fir@112684.4]
  wire [19:0] d_opcodes_clr; // @[:chipyard.TestHarness.RocketConfig.fir@112574.4 :chipyard.TestHarness.RocketConfig.fir@112575.4 Monitor.scala 662:21:chipyard.TestHarness.RocketConfig.fir@112593.6]
  wire [19:0] _T_1329; // @[Monitor.scala 681:62:chipyard.TestHarness.RocketConfig.fir@112685.4]
  wire [19:0] _T_1330; // @[Monitor.scala 681:60:chipyard.TestHarness.RocketConfig.fir@112686.4]
  wire [19:0] a_sizes_set; // @[:chipyard.TestHarness.RocketConfig.fir@112497.4 :chipyard.TestHarness.RocketConfig.fir@112498.4 Monitor.scala 648:19:chipyard.TestHarness.RocketConfig.fir@112560.6]
  wire [19:0] _T_1331; // @[Monitor.scala 682:39:chipyard.TestHarness.RocketConfig.fir@112688.4]
  wire [19:0] _T_1333; // @[Monitor.scala 682:54:chipyard.TestHarness.RocketConfig.fir@112690.4]
  reg [31:0] _T_1334; // @[Monitor.scala 684:27:chipyard.TestHarness.RocketConfig.fir@112692.4]
  reg [31:0] _RAND_24;
  wire  _T_1335; // @[Monitor.scala 687:26:chipyard.TestHarness.RocketConfig.fir@112695.4]
  wire  _T_1336; // @[Monitor.scala 687:16:chipyard.TestHarness.RocketConfig.fir@112696.4]
  wire  _T_1337; // @[Monitor.scala 687:39:chipyard.TestHarness.RocketConfig.fir@112697.4]
  wire  _T_1338; // @[Monitor.scala 687:30:chipyard.TestHarness.RocketConfig.fir@112698.4]
  wire  _T_1339; // @[Monitor.scala 687:59:chipyard.TestHarness.RocketConfig.fir@112699.4]
  wire  _T_1340; // @[Monitor.scala 687:47:chipyard.TestHarness.RocketConfig.fir@112700.4]
  wire  _T_1342; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112702.4]
  wire  _T_1343; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112703.4]
  wire [31:0] _T_1345; // @[Monitor.scala 689:26:chipyard.TestHarness.RocketConfig.fir@112709.4]
  wire  _T_1348; // @[Monitor.scala 690:27:chipyard.TestHarness.RocketConfig.fir@112713.4]
  reg [7:0] _T_1349; // @[Monitor.scala 694:27:chipyard.TestHarness.RocketConfig.fir@112717.4]
  reg [31:0] _RAND_25;
  reg [2:0] _T_1358; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@112726.4]
  reg [31:0] _RAND_26;
  wire [2:0] _T_1360; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@112728.4]
  wire  _T_1361; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@112729.4]
  wire  _T_1371; // @[Monitor.scala 700:27:chipyard.TestHarness.RocketConfig.fir@112743.4]
  wire  _T_1374; // @[Edges.scala 72:43:chipyard.TestHarness.RocketConfig.fir@112746.4]
  wire  _T_1375; // @[Edges.scala 72:40:chipyard.TestHarness.RocketConfig.fir@112747.4]
  wire  _T_1376; // @[Monitor.scala 700:38:chipyard.TestHarness.RocketConfig.fir@112748.4]
  wire [7:0] _T_1377; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@112750.6]
  wire [7:0] _T_1378; // @[Monitor.scala 702:23:chipyard.TestHarness.RocketConfig.fir@112752.6]
  wire  _T_1380; // @[Monitor.scala 702:14:chipyard.TestHarness.RocketConfig.fir@112754.6]
  wire  _T_1382; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@112756.6]
  wire  _T_1383; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@112757.6]
  wire [7:0] _GEN_69; // @[Monitor.scala 700:72:chipyard.TestHarness.RocketConfig.fir@112749.4]
  wire [7:0] _T_1388; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@112769.6]
  wire [7:0] _T_1389; // @[Monitor.scala 708:24:chipyard.TestHarness.RocketConfig.fir@112771.6]
  wire [7:0] _T_1390; // @[Monitor.scala 708:35:chipyard.TestHarness.RocketConfig.fir@112772.6]
  wire  _T_1393; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112775.6]
  wire  _T_1394; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112776.6]
  wire [7:0] _GEN_70; // @[Monitor.scala 706:73:chipyard.TestHarness.RocketConfig.fir@112768.4]
  wire [7:0] _T_1395; // @[Monitor.scala 713:27:chipyard.TestHarness.RocketConfig.fir@112782.4]
  wire [7:0] _T_1396; // @[Monitor.scala 713:38:chipyard.TestHarness.RocketConfig.fir@112783.4]
  wire [7:0] _T_1397; // @[Monitor.scala 713:36:chipyard.TestHarness.RocketConfig.fir@112784.4]
  wire  _GEN_88; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110504.10]
  wire  _GEN_104; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110580.10]
  wire  _GEN_122; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110664.10]
  wire  _GEN_134; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110723.10]
  wire  _GEN_144; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110774.10]
  wire  _GEN_154; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110824.10]
  wire  _GEN_164; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110872.10]
  wire  _GEN_174; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110920.10]
  wire  _GEN_186; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@110990.10]
  wire  _GEN_196; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@111032.10]
  wire  _GEN_206; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@111090.10]
  wire  _GEN_216; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@111149.10]
  wire  _GEN_222; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@111184.10]
  wire  _GEN_228; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@111220.10]
  wire  _GEN_234; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111782.10]
  wire  _GEN_246; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111830.10]
  wire  _GEN_256; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111881.10]
  wire  _GEN_270; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111948.10]
  wire  _GEN_282; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111996.10]
  wire  _GEN_292; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112036.10]
  wire  _GEN_300; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112068.10]
  plusarg_reader #(.FORMAT("tilelink_timeout=%d"), .DEFAULT(0), .WIDTH(32)) plusarg_reader ( // @[PlusArg.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112693.4]
    .out(plusarg_reader_out)
  );
  assign _T_10 = io_in_a_bits_source <= 3'h4; // @[Parameters.scala 58:20:chipyard.TestHarness.RocketConfig.fir@110390.6]
  assign _T_14 = 13'h3f << io_in_a_bits_size; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@110396.6]
  assign _T_16 = ~_T_14[5:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@110398.6]
  assign _GEN_71 = {{26'd0}, _T_16}; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@110399.6]
  assign _T_17 = io_in_a_bits_address & _GEN_71; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@110399.6]
  assign _T_18 = _T_17 == 32'h0; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@110400.6]
  assign _T_21 = 4'h1 << io_in_a_bits_size[1:0]; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@110403.6]
  assign _T_23 = _T_21[2:0] | 3'h1; // @[Misc.scala 201:81:chipyard.TestHarness.RocketConfig.fir@110405.6]
  assign _T_24 = io_in_a_bits_size >= 3'h3; // @[Misc.scala 205:21:chipyard.TestHarness.RocketConfig.fir@110406.6]
  assign _T_27 = ~io_in_a_bits_address[2]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@110409.6]
  assign _T_29 = _T_23[2] & _T_27; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@110411.6]
  assign _T_30 = _T_24 | _T_29; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@110412.6]
  assign _T_32 = _T_23[2] & io_in_a_bits_address[2]; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@110414.6]
  assign _T_33 = _T_24 | _T_32; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@110415.6]
  assign _T_36 = ~io_in_a_bits_address[1]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@110418.6]
  assign _T_37 = _T_27 & _T_36; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@110419.6]
  assign _T_38 = _T_23[1] & _T_37; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@110420.6]
  assign _T_39 = _T_30 | _T_38; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@110421.6]
  assign _T_40 = _T_27 & io_in_a_bits_address[1]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@110422.6]
  assign _T_41 = _T_23[1] & _T_40; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@110423.6]
  assign _T_42 = _T_30 | _T_41; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@110424.6]
  assign _T_43 = io_in_a_bits_address[2] & _T_36; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@110425.6]
  assign _T_44 = _T_23[1] & _T_43; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@110426.6]
  assign _T_45 = _T_33 | _T_44; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@110427.6]
  assign _T_46 = io_in_a_bits_address[2] & io_in_a_bits_address[1]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@110428.6]
  assign _T_47 = _T_23[1] & _T_46; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@110429.6]
  assign _T_48 = _T_33 | _T_47; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@110430.6]
  assign _T_51 = ~io_in_a_bits_address[0]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@110433.6]
  assign _T_52 = _T_37 & _T_51; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@110434.6]
  assign _T_53 = _T_23[0] & _T_52; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@110435.6]
  assign _T_54 = _T_39 | _T_53; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@110436.6]
  assign _T_55 = _T_37 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@110437.6]
  assign _T_56 = _T_23[0] & _T_55; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@110438.6]
  assign _T_57 = _T_39 | _T_56; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@110439.6]
  assign _T_58 = _T_40 & _T_51; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@110440.6]
  assign _T_59 = _T_23[0] & _T_58; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@110441.6]
  assign _T_60 = _T_42 | _T_59; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@110442.6]
  assign _T_61 = _T_40 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@110443.6]
  assign _T_62 = _T_23[0] & _T_61; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@110444.6]
  assign _T_63 = _T_42 | _T_62; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@110445.6]
  assign _T_64 = _T_43 & _T_51; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@110446.6]
  assign _T_65 = _T_23[0] & _T_64; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@110447.6]
  assign _T_66 = _T_45 | _T_65; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@110448.6]
  assign _T_67 = _T_43 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@110449.6]
  assign _T_68 = _T_23[0] & _T_67; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@110450.6]
  assign _T_69 = _T_45 | _T_68; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@110451.6]
  assign _T_70 = _T_46 & _T_51; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@110452.6]
  assign _T_71 = _T_23[0] & _T_70; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@110453.6]
  assign _T_72 = _T_48 | _T_71; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@110454.6]
  assign _T_73 = _T_46 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@110455.6]
  assign _T_74 = _T_23[0] & _T_73; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@110456.6]
  assign _T_75 = _T_48 | _T_74; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@110457.6]
  assign _T_82 = {_T_75,_T_72,_T_69,_T_66,_T_63,_T_60,_T_57,_T_54}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@110464.6]
  assign _T_101 = io_in_a_bits_opcode == 3'h6; // @[Monitor.scala 79:25:chipyard.TestHarness.RocketConfig.fir@110487.6]
  assign _T_103 = io_in_a_bits_size <= 3'h6; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@110490.8]
  assign _T_106 = io_in_a_bits_address ^ 32'h80000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@110493.8]
  assign _T_107 = {1'b0,$signed(_T_106)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@110494.8]
  assign _T_109 = $signed(_T_107) & -33'sh10000000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@110496.8]
  assign _T_110 = $signed(_T_109) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@110497.8]
  assign _T_111 = _T_103 & _T_110; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@110498.8]
  assign _T_114 = _T_111 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110501.8]
  assign _T_115 = ~_T_114; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110502.8]
  assign _T_116 = 3'h6 == io_in_a_bits_size; // @[Parameters.scala 92:48:chipyard.TestHarness.RocketConfig.fir@110507.8]
  assign _T_118 = _T_116 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110509.8]
  assign _T_119 = ~_T_118; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110510.8]
  assign _T_121 = _T_10 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110516.8]
  assign _T_122 = ~_T_121; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110517.8]
  assign _T_125 = _T_24 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110524.8]
  assign _T_126 = ~_T_125; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110525.8]
  assign _T_128 = _T_18 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110531.8]
  assign _T_129 = ~_T_128; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110532.8]
  assign _T_130 = io_in_a_bits_param <= 3'h2; // @[Bundles.scala 110:27:chipyard.TestHarness.RocketConfig.fir@110537.8]
  assign _T_132 = _T_130 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110539.8]
  assign _T_133 = ~_T_132; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110540.8]
  assign _T_134 = ~io_in_a_bits_mask; // @[Monitor.scala 86:18:chipyard.TestHarness.RocketConfig.fir@110545.8]
  assign _T_135 = _T_134 == 8'h0; // @[Monitor.scala 86:31:chipyard.TestHarness.RocketConfig.fir@110546.8]
  assign _T_137 = _T_135 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110548.8]
  assign _T_138 = ~_T_137; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110549.8]
  assign _T_139 = ~io_in_a_bits_corrupt; // @[Monitor.scala 87:18:chipyard.TestHarness.RocketConfig.fir@110554.8]
  assign _T_141 = _T_139 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110556.8]
  assign _T_142 = ~_T_141; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110557.8]
  assign _T_143 = io_in_a_bits_opcode == 3'h7; // @[Monitor.scala 90:25:chipyard.TestHarness.RocketConfig.fir@110563.6]
  assign _T_176 = io_in_a_bits_param != 3'h0; // @[Monitor.scala 97:31:chipyard.TestHarness.RocketConfig.fir@110621.8]
  assign _T_178 = _T_176 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110623.8]
  assign _T_179 = ~_T_178; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110624.8]
  assign _T_189 = io_in_a_bits_opcode == 3'h4; // @[Monitor.scala 102:25:chipyard.TestHarness.RocketConfig.fir@110647.6]
  assign _T_210 = io_in_a_bits_param == 3'h0; // @[Monitor.scala 106:31:chipyard.TestHarness.RocketConfig.fir@110681.8]
  assign _T_212 = _T_210 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110683.8]
  assign _T_213 = ~_T_212; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110684.8]
  assign _T_214 = io_in_a_bits_mask == _T_82; // @[Monitor.scala 107:30:chipyard.TestHarness.RocketConfig.fir@110689.8]
  assign _T_216 = _T_214 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110691.8]
  assign _T_217 = ~_T_216; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110692.8]
  assign _T_222 = io_in_a_bits_opcode == 3'h0; // @[Monitor.scala 111:25:chipyard.TestHarness.RocketConfig.fir@110706.6]
  assign _T_251 = io_in_a_bits_opcode == 3'h1; // @[Monitor.scala 119:25:chipyard.TestHarness.RocketConfig.fir@110757.6]
  assign _T_276 = ~_T_82; // @[Monitor.scala 124:33:chipyard.TestHarness.RocketConfig.fir@110799.8]
  assign _T_277 = io_in_a_bits_mask & _T_276; // @[Monitor.scala 124:31:chipyard.TestHarness.RocketConfig.fir@110800.8]
  assign _T_278 = _T_277 == 8'h0; // @[Monitor.scala 124:40:chipyard.TestHarness.RocketConfig.fir@110801.8]
  assign _T_280 = _T_278 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110803.8]
  assign _T_281 = ~_T_280; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110804.8]
  assign _T_282 = io_in_a_bits_opcode == 3'h2; // @[Monitor.scala 127:25:chipyard.TestHarness.RocketConfig.fir@110810.6]
  assign _T_293 = ~reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110822.8]
  assign _T_300 = io_in_a_bits_param <= 3'h4; // @[Bundles.scala 140:33:chipyard.TestHarness.RocketConfig.fir@110841.8]
  assign _T_302 = _T_300 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110843.8]
  assign _T_303 = ~_T_302; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110844.8]
  assign _T_308 = io_in_a_bits_opcode == 3'h3; // @[Monitor.scala 135:25:chipyard.TestHarness.RocketConfig.fir@110858.6]
  assign _T_326 = io_in_a_bits_param <= 3'h3; // @[Bundles.scala 147:30:chipyard.TestHarness.RocketConfig.fir@110889.8]
  assign _T_328 = _T_326 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110891.8]
  assign _T_329 = ~_T_328; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110892.8]
  assign _T_334 = io_in_a_bits_opcode == 3'h5; // @[Monitor.scala 143:25:chipyard.TestHarness.RocketConfig.fir@110906.6]
  assign _T_352 = io_in_a_bits_param <= 3'h1; // @[Bundles.scala 160:28:chipyard.TestHarness.RocketConfig.fir@110937.8]
  assign _T_354 = _T_352 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110939.8]
  assign _T_355 = ~_T_354; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110940.8]
  assign _T_364 = io_in_d_bits_opcode <= 3'h6; // @[Bundles.scala 44:24:chipyard.TestHarness.RocketConfig.fir@110964.6]
  assign _T_366 = _T_364 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@110966.6]
  assign _T_367 = ~_T_366; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@110967.6]
  assign _T_374 = io_in_d_bits_source <= 3'h4; // @[Parameters.scala 58:20:chipyard.TestHarness.RocketConfig.fir@110978.6]
  assign _T_378 = io_in_d_bits_opcode == 3'h6; // @[Monitor.scala 307:25:chipyard.TestHarness.RocketConfig.fir@110984.6]
  assign _T_380 = _T_374 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@110987.8]
  assign _T_381 = ~_T_380; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@110988.8]
  assign _T_382 = io_in_d_bits_size >= 3'h3; // @[Monitor.scala 309:27:chipyard.TestHarness.RocketConfig.fir@110993.8]
  assign _T_384 = _T_382 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@110995.8]
  assign _T_385 = ~_T_384; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@110996.8]
  assign _T_386 = io_in_d_bits_param == 2'h0; // @[Monitor.scala 310:28:chipyard.TestHarness.RocketConfig.fir@111001.8]
  assign _T_388 = _T_386 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@111003.8]
  assign _T_389 = ~_T_388; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@111004.8]
  assign _T_390 = ~io_in_d_bits_corrupt; // @[Monitor.scala 311:15:chipyard.TestHarness.RocketConfig.fir@111009.8]
  assign _T_392 = _T_390 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@111011.8]
  assign _T_393 = ~_T_392; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@111012.8]
  assign _T_394 = ~io_in_d_bits_denied; // @[Monitor.scala 312:15:chipyard.TestHarness.RocketConfig.fir@111017.8]
  assign _T_396 = _T_394 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@111019.8]
  assign _T_397 = ~_T_396; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@111020.8]
  assign _T_398 = io_in_d_bits_opcode == 3'h4; // @[Monitor.scala 315:25:chipyard.TestHarness.RocketConfig.fir@111026.6]
  assign _T_409 = io_in_d_bits_param <= 2'h2; // @[Bundles.scala 104:26:chipyard.TestHarness.RocketConfig.fir@111050.8]
  assign _T_411 = _T_409 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@111052.8]
  assign _T_412 = ~_T_411; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@111053.8]
  assign _T_413 = io_in_d_bits_param != 2'h2; // @[Monitor.scala 320:28:chipyard.TestHarness.RocketConfig.fir@111058.8]
  assign _T_415 = _T_413 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@111060.8]
  assign _T_416 = ~_T_415; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@111061.8]
  assign _T_426 = io_in_d_bits_opcode == 3'h5; // @[Monitor.scala 325:25:chipyard.TestHarness.RocketConfig.fir@111084.6]
  assign _T_446 = _T_394 | io_in_d_bits_corrupt; // @[Monitor.scala 331:30:chipyard.TestHarness.RocketConfig.fir@111125.8]
  assign _T_448 = _T_446 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@111127.8]
  assign _T_449 = ~_T_448; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@111128.8]
  assign _T_455 = io_in_d_bits_opcode == 3'h0; // @[Monitor.scala 335:25:chipyard.TestHarness.RocketConfig.fir@111143.6]
  assign _T_472 = io_in_d_bits_opcode == 3'h1; // @[Monitor.scala 343:25:chipyard.TestHarness.RocketConfig.fir@111178.6]
  assign _T_490 = io_in_d_bits_opcode == 3'h2; // @[Monitor.scala 351:25:chipyard.TestHarness.RocketConfig.fir@111214.6]
  assign _T_783 = io_in_c_bits_source <= 3'h4; // @[Parameters.scala 58:20:chipyard.TestHarness.RocketConfig.fir@111735.6]
  assign _T_787 = 13'h3f << io_in_c_bits_size; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@111741.6]
  assign _T_789 = ~_T_787[5:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@111743.6]
  assign _GEN_72 = {{26'd0}, _T_789}; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@111744.6]
  assign _T_790 = io_in_c_bits_address & _GEN_72; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@111744.6]
  assign _T_791 = _T_790 == 32'h0; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@111745.6]
  assign _T_792 = io_in_c_bits_address ^ 32'h80000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@111746.6]
  assign _T_793 = {1'b0,$signed(_T_792)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@111747.6]
  assign _T_795 = $signed(_T_793) & -33'sh10000000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@111749.6]
  assign _T_796 = $signed(_T_795) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@111750.6]
  assign _T_816 = io_in_c_bits_opcode == 3'h4; // @[Monitor.scala 239:25:chipyard.TestHarness.RocketConfig.fir@111776.6]
  assign _T_818 = _T_796 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111779.8]
  assign _T_819 = ~_T_818; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111780.8]
  assign _T_821 = _T_783 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111786.8]
  assign _T_822 = ~_T_821; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111787.8]
  assign _T_823 = io_in_c_bits_size >= 3'h3; // @[Monitor.scala 242:30:chipyard.TestHarness.RocketConfig.fir@111792.8]
  assign _T_825 = _T_823 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111794.8]
  assign _T_826 = ~_T_825; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111795.8]
  assign _T_828 = _T_791 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111801.8]
  assign _T_829 = ~_T_828; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111802.8]
  assign _T_830 = io_in_c_bits_param <= 3'h5; // @[Bundles.scala 122:29:chipyard.TestHarness.RocketConfig.fir@111807.8]
  assign _T_832 = _T_830 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111809.8]
  assign _T_833 = ~_T_832; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111810.8]
  assign _T_834 = ~io_in_c_bits_corrupt; // @[Monitor.scala 245:18:chipyard.TestHarness.RocketConfig.fir@111815.8]
  assign _T_836 = _T_834 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111817.8]
  assign _T_837 = ~_T_836; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111818.8]
  assign _T_838 = io_in_c_bits_opcode == 3'h5; // @[Monitor.scala 248:25:chipyard.TestHarness.RocketConfig.fir@111824.6]
  assign _T_856 = io_in_c_bits_opcode == 3'h6; // @[Monitor.scala 256:25:chipyard.TestHarness.RocketConfig.fir@111864.6]
  assign _T_858 = io_in_c_bits_size <= 3'h6; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@111867.8]
  assign _T_866 = _T_858 & _T_796; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@111875.8]
  assign _T_869 = _T_866 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111878.8]
  assign _T_870 = ~_T_869; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111879.8]
  assign _T_871 = 3'h6 == io_in_c_bits_size; // @[Parameters.scala 92:48:chipyard.TestHarness.RocketConfig.fir@111884.8]
  assign _T_873 = _T_871 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111886.8]
  assign _T_874 = ~_T_873; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111887.8]
  assign _T_885 = io_in_c_bits_param <= 3'h2; // @[Bundles.scala 116:29:chipyard.TestHarness.RocketConfig.fir@111914.8]
  assign _T_887 = _T_885 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111916.8]
  assign _T_888 = ~_T_887; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111917.8]
  assign _T_893 = io_in_c_bits_opcode == 3'h7; // @[Monitor.scala 266:25:chipyard.TestHarness.RocketConfig.fir@111931.6]
  assign _T_926 = io_in_c_bits_opcode == 3'h0; // @[Monitor.scala 275:25:chipyard.TestHarness.RocketConfig.fir@111990.6]
  assign _T_936 = io_in_c_bits_param == 3'h0; // @[Monitor.scala 279:31:chipyard.TestHarness.RocketConfig.fir@112013.8]
  assign _T_938 = _T_936 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112015.8]
  assign _T_939 = ~_T_938; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112016.8]
  assign _T_944 = io_in_c_bits_opcode == 3'h1; // @[Monitor.scala 283:25:chipyard.TestHarness.RocketConfig.fir@112030.6]
  assign _T_958 = io_in_c_bits_opcode == 3'h2; // @[Monitor.scala 290:25:chipyard.TestHarness.RocketConfig.fir@112062.6]
  assign _T_980 = io_in_a_ready & io_in_a_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@112113.4]
  assign _T_987 = ~io_in_a_bits_opcode[2]; // @[Edges.scala 93:28:chipyard.TestHarness.RocketConfig.fir@112120.4]
  assign _T_991 = _T_989 - 3'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@112124.4]
  assign _T_992 = _T_989 == 3'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@112125.4]
  assign _T_1005 = ~_T_992; // @[Monitor.scala 386:22:chipyard.TestHarness.RocketConfig.fir@112141.4]
  assign _T_1006 = io_in_a_valid & _T_1005; // @[Monitor.scala 386:19:chipyard.TestHarness.RocketConfig.fir@112142.4]
  assign _T_1007 = io_in_a_bits_opcode == _T_1000; // @[Monitor.scala 387:32:chipyard.TestHarness.RocketConfig.fir@112144.6]
  assign _T_1009 = _T_1007 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112146.6]
  assign _T_1010 = ~_T_1009; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112147.6]
  assign _T_1011 = io_in_a_bits_param == _T_1001; // @[Monitor.scala 388:32:chipyard.TestHarness.RocketConfig.fir@112152.6]
  assign _T_1013 = _T_1011 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112154.6]
  assign _T_1014 = ~_T_1013; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112155.6]
  assign _T_1015 = io_in_a_bits_size == _T_1002; // @[Monitor.scala 389:32:chipyard.TestHarness.RocketConfig.fir@112160.6]
  assign _T_1017 = _T_1015 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112162.6]
  assign _T_1018 = ~_T_1017; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112163.6]
  assign _T_1019 = io_in_a_bits_source == _T_1003; // @[Monitor.scala 390:32:chipyard.TestHarness.RocketConfig.fir@112168.6]
  assign _T_1021 = _T_1019 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112170.6]
  assign _T_1022 = ~_T_1021; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112171.6]
  assign _T_1023 = io_in_a_bits_address == _T_1004; // @[Monitor.scala 391:32:chipyard.TestHarness.RocketConfig.fir@112176.6]
  assign _T_1025 = _T_1023 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112178.6]
  assign _T_1026 = ~_T_1025; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112179.6]
  assign _T_1028 = _T_980 & _T_992; // @[Monitor.scala 393:20:chipyard.TestHarness.RocketConfig.fir@112186.4]
  assign _T_1029 = io_in_d_ready & io_in_d_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@112194.4]
  assign _T_1031 = 13'h3f << io_in_d_bits_size; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@112196.4]
  assign _T_1033 = ~_T_1031[5:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@112198.4]
  assign _T_1039 = _T_1037 - 3'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@112204.4]
  assign _T_1040 = _T_1037 == 3'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@112205.4]
  assign _T_1054 = ~_T_1040; // @[Monitor.scala 538:22:chipyard.TestHarness.RocketConfig.fir@112222.4]
  assign _T_1055 = io_in_d_valid & _T_1054; // @[Monitor.scala 538:19:chipyard.TestHarness.RocketConfig.fir@112223.4]
  assign _T_1056 = io_in_d_bits_opcode == _T_1048; // @[Monitor.scala 539:29:chipyard.TestHarness.RocketConfig.fir@112225.6]
  assign _T_1058 = _T_1056 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@112227.6]
  assign _T_1059 = ~_T_1058; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@112228.6]
  assign _T_1060 = io_in_d_bits_param == _T_1049; // @[Monitor.scala 540:29:chipyard.TestHarness.RocketConfig.fir@112233.6]
  assign _T_1062 = _T_1060 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@112235.6]
  assign _T_1063 = ~_T_1062; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@112236.6]
  assign _T_1064 = io_in_d_bits_size == _T_1050; // @[Monitor.scala 541:29:chipyard.TestHarness.RocketConfig.fir@112241.6]
  assign _T_1066 = _T_1064 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@112243.6]
  assign _T_1067 = ~_T_1066; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@112244.6]
  assign _T_1068 = io_in_d_bits_source == _T_1051; // @[Monitor.scala 542:29:chipyard.TestHarness.RocketConfig.fir@112249.6]
  assign _T_1070 = _T_1068 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@112251.6]
  assign _T_1071 = ~_T_1070; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@112252.6]
  assign _T_1072 = io_in_d_bits_sink == _T_1052; // @[Monitor.scala 543:29:chipyard.TestHarness.RocketConfig.fir@112257.6]
  assign _T_1074 = _T_1072 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@112259.6]
  assign _T_1075 = ~_T_1074; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@112260.6]
  assign _T_1076 = io_in_d_bits_denied == _T_1053; // @[Monitor.scala 544:29:chipyard.TestHarness.RocketConfig.fir@112265.6]
  assign _T_1078 = _T_1076 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@112267.6]
  assign _T_1079 = ~_T_1078; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@112268.6]
  assign _T_1081 = _T_1029 & _T_1040; // @[Monitor.scala 546:20:chipyard.TestHarness.RocketConfig.fir@112275.4]
  assign _T_1131 = io_in_c_ready & io_in_c_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@112365.4]
  assign _T_1141 = _T_1139 - 3'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@112375.4]
  assign _T_1142 = _T_1139 == 3'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@112376.4]
  assign _T_1155 = ~_T_1142; // @[Monitor.scala 514:22:chipyard.TestHarness.RocketConfig.fir@112392.4]
  assign _T_1156 = io_in_c_valid & _T_1155; // @[Monitor.scala 514:19:chipyard.TestHarness.RocketConfig.fir@112393.4]
  assign _T_1157 = io_in_c_bits_opcode == _T_1150; // @[Monitor.scala 515:32:chipyard.TestHarness.RocketConfig.fir@112395.6]
  assign _T_1159 = _T_1157 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112397.6]
  assign _T_1160 = ~_T_1159; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112398.6]
  assign _T_1161 = io_in_c_bits_param == _T_1151; // @[Monitor.scala 516:32:chipyard.TestHarness.RocketConfig.fir@112403.6]
  assign _T_1163 = _T_1161 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112405.6]
  assign _T_1164 = ~_T_1163; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112406.6]
  assign _T_1165 = io_in_c_bits_size == _T_1152; // @[Monitor.scala 517:32:chipyard.TestHarness.RocketConfig.fir@112411.6]
  assign _T_1167 = _T_1165 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112413.6]
  assign _T_1168 = ~_T_1167; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112414.6]
  assign _T_1169 = io_in_c_bits_source == _T_1153; // @[Monitor.scala 518:32:chipyard.TestHarness.RocketConfig.fir@112419.6]
  assign _T_1171 = _T_1169 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112421.6]
  assign _T_1172 = ~_T_1171; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112422.6]
  assign _T_1173 = io_in_c_bits_address == _T_1154; // @[Monitor.scala 519:32:chipyard.TestHarness.RocketConfig.fir@112427.6]
  assign _T_1175 = _T_1173 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112429.6]
  assign _T_1176 = ~_T_1175; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112430.6]
  assign _T_1178 = _T_1131 & _T_1142; // @[Monitor.scala 521:20:chipyard.TestHarness.RocketConfig.fir@112437.4]
  assign _T_1190 = _T_1188 - 3'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@112459.4]
  assign a_first = _T_1188 == 3'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@112460.4]
  assign _T_1208 = _T_1206 - 3'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@112481.4]
  assign d_first = _T_1206 == 3'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@112482.4]
  assign _GEN_73 = {io_in_d_bits_source, 2'h0}; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@112501.4]
  assign _T_1216 = {{1'd0}, _GEN_73}; // @[Monitor.scala 629:69:chipyard.TestHarness.RocketConfig.fir@112501.4]
  assign _T_1217 = inflight_opcodes >> _T_1216; // @[Monitor.scala 629:44:chipyard.TestHarness.RocketConfig.fir@112502.4]
  assign _T_1221 = 16'h10 - 16'h1; // @[Monitor.scala 606:57:chipyard.TestHarness.RocketConfig.fir@112506.4]
  assign _GEN_74 = {{4'd0}, _T_1221}; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@112507.4]
  assign _T_1222 = _T_1217 & _GEN_74; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@112507.4]
  assign _T_1223 = {{1'd0}, _T_1222[19:1]}; // @[Monitor.scala 629:152:chipyard.TestHarness.RocketConfig.fir@112508.4]
  assign _T_1225 = inflight_sizes >> _T_1216; // @[Monitor.scala 633:40:chipyard.TestHarness.RocketConfig.fir@112513.4]
  assign _T_1230 = _T_1225 & _GEN_74; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@112518.4]
  assign _T_1231 = {{1'd0}, _T_1230[19:1]}; // @[Monitor.scala 633:144:chipyard.TestHarness.RocketConfig.fir@112519.4]
  assign _T_1235 = _T_980 & a_first; // @[Monitor.scala 643:27:chipyard.TestHarness.RocketConfig.fir@112544.4]
  assign _T_1237 = 8'h1 << io_in_a_bits_source; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@112547.6]
  assign _T_1238 = {io_in_a_bits_opcode, 1'h0}; // @[Monitor.scala 645:53:chipyard.TestHarness.RocketConfig.fir@112549.6]
  assign _T_1239 = _T_1238 | 4'h1; // @[Monitor.scala 645:61:chipyard.TestHarness.RocketConfig.fir@112550.6]
  assign _T_1240 = {io_in_a_bits_size, 1'h0}; // @[Monitor.scala 646:49:chipyard.TestHarness.RocketConfig.fir@112552.6]
  assign _T_1241 = _T_1240 | 4'h1; // @[Monitor.scala 646:57:chipyard.TestHarness.RocketConfig.fir@112553.6]
  assign _GEN_79 = {io_in_a_bits_source, 2'h0}; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@112555.6]
  assign _T_1242 = {{1'd0}, _GEN_79}; // @[Monitor.scala 647:72:chipyard.TestHarness.RocketConfig.fir@112555.6]
  assign a_opcodes_set_interm = _T_1235 ? _T_1239 : 4'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@112546.4]
  assign _GEN_80 = {{63'd0}, a_opcodes_set_interm}; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@112556.6]
  assign _T_1243 = _GEN_80 << _T_1242; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@112556.6]
  assign a_sizes_set_interm = _T_1235 ? _T_1241 : 4'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@112546.4]
  assign _GEN_82 = {{63'd0}, a_sizes_set_interm}; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@112559.6]
  assign _T_1245 = _GEN_82 << _T_1242; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@112559.6]
  assign _T_1246 = inflight >> io_in_a_bits_source; // @[Monitor.scala 649:26:chipyard.TestHarness.RocketConfig.fir@112561.6]
  assign _T_1248 = ~_T_1246[0]; // @[Monitor.scala 649:17:chipyard.TestHarness.RocketConfig.fir@112563.6]
  assign _T_1250 = _T_1248 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112565.6]
  assign _T_1251 = ~_T_1250; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112566.6]
  assign _GEN_27 = _T_1235 ? _T_1237 : 8'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@112546.4]
  assign _GEN_30 = _T_1235 ? _T_1243 : 67'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@112546.4]
  assign _GEN_31 = _T_1235 ? _T_1245 : 67'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@112546.4]
  assign _T_1254 = _T_1029 & d_first; // @[Monitor.scala 660:27:chipyard.TestHarness.RocketConfig.fir@112580.4]
  assign _T_1256 = ~_T_378; // @[Monitor.scala 660:75:chipyard.TestHarness.RocketConfig.fir@112582.4]
  assign _T_1257 = _T_1254 & _T_1256; // @[Monitor.scala 660:72:chipyard.TestHarness.RocketConfig.fir@112583.4]
  assign _T_1258 = 8'h1 << io_in_d_bits_source; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@112585.6]
  assign _GEN_84 = {{63'd0}, _T_1221}; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@112592.6]
  assign _T_1264 = _GEN_84 << _T_1216; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@112592.6]
  assign _GEN_32 = _T_1257 ? _T_1258 : 8'h0; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@112584.4]
  assign _GEN_33 = _T_1257 ? _T_1264 : 79'h0; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@112584.4]
  assign _T_1271 = io_in_d_valid & d_first; // @[Monitor.scala 665:26:chipyard.TestHarness.RocketConfig.fir@112602.4]
  assign _T_1274 = _T_1271 & _T_1256; // @[Monitor.scala 665:71:chipyard.TestHarness.RocketConfig.fir@112605.4]
  assign _T_1275 = inflight >> io_in_d_bits_source; // @[Monitor.scala 666:25:chipyard.TestHarness.RocketConfig.fir@112607.6]
  assign _T_1277 = io_in_a_bits_source == io_in_d_bits_source; // @[Monitor.scala 666:93:chipyard.TestHarness.RocketConfig.fir@112609.6]
  assign _T_1278 = io_in_a_valid & _T_1277; // @[Monitor.scala 666:68:chipyard.TestHarness.RocketConfig.fir@112610.6]
  assign _T_1279 = io_in_a_bits_size == io_in_d_bits_size; // @[Monitor.scala 666:142:chipyard.TestHarness.RocketConfig.fir@112611.6]
  assign _T_1280 = _T_1278 & _T_1279; // @[Monitor.scala 666:119:chipyard.TestHarness.RocketConfig.fir@112612.6]
  assign _T_1281 = _T_1280 & a_first; // @[Monitor.scala 666:166:chipyard.TestHarness.RocketConfig.fir@112613.6]
  assign _T_1282 = _T_1275[0] | _T_1281; // @[Monitor.scala 666:49:chipyard.TestHarness.RocketConfig.fir@112614.6]
  assign _T_1284 = _T_1282 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@112616.6]
  assign _T_1285 = ~_T_1284; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@112617.6]
  assign a_opcode_lookup = _T_1223[3:0]; // @[:chipyard.TestHarness.RocketConfig.fir@112499.4 :chipyard.TestHarness.RocketConfig.fir@112500.4 Monitor.scala 629:21:chipyard.TestHarness.RocketConfig.fir@112509.4]
  assign _GEN_37 = 3'h2 == a_opcode_lookup[2:0] ? 3'h1 : 3'h0; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@112623.6]
  assign _GEN_38 = 3'h3 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_37; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@112623.6]
  assign _GEN_39 = 3'h4 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_38; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@112623.6]
  assign _GEN_40 = 3'h5 == a_opcode_lookup[2:0] ? 3'h2 : _GEN_39; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@112623.6]
  assign _GEN_41 = 3'h6 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_40; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@112623.6]
  assign _GEN_42 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_41; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@112623.6]
  assign _T_1287 = io_in_d_bits_opcode == _GEN_42; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@112623.6]
  assign _GEN_49 = 3'h6 == a_opcode_lookup[2:0] ? 3'h5 : _GEN_40; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@112625.6]
  assign _GEN_50 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_49; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@112625.6]
  assign _T_1289 = io_in_d_bits_opcode == _GEN_50; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@112625.6]
  assign _T_1290 = _T_1287 | _T_1289; // @[Monitor.scala 667:71:chipyard.TestHarness.RocketConfig.fir@112626.6]
  assign _GEN_53 = 3'h2 == io_in_a_bits_opcode ? 3'h1 : 3'h0; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@112627.6]
  assign _GEN_54 = 3'h3 == io_in_a_bits_opcode ? 3'h1 : _GEN_53; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@112627.6]
  assign _GEN_55 = 3'h4 == io_in_a_bits_opcode ? 3'h1 : _GEN_54; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@112627.6]
  assign _GEN_56 = 3'h5 == io_in_a_bits_opcode ? 3'h2 : _GEN_55; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@112627.6]
  assign _GEN_57 = 3'h6 == io_in_a_bits_opcode ? 3'h4 : _GEN_56; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@112627.6]
  assign _GEN_58 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_57; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@112627.6]
  assign _T_1291 = io_in_d_bits_opcode == _GEN_58; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@112627.6]
  assign _GEN_65 = 3'h6 == io_in_a_bits_opcode ? 3'h5 : _GEN_56; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@112628.6]
  assign _GEN_66 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_65; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@112628.6]
  assign _T_1292 = io_in_d_bits_opcode == _GEN_66; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@112628.6]
  assign _T_1293 = _T_1291 | _T_1292; // @[Monitor.scala 668:99:chipyard.TestHarness.RocketConfig.fir@112629.6]
  assign _T_1294 = io_in_a_valid & _T_1293; // @[Monitor.scala 668:34:chipyard.TestHarness.RocketConfig.fir@112630.6]
  assign _T_1295 = _T_1290 | _T_1294; // @[Monitor.scala 668:15:chipyard.TestHarness.RocketConfig.fir@112631.6]
  assign _T_1297 = _T_1295 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@112633.6]
  assign _T_1298 = ~_T_1297; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@112634.6]
  assign a_size_lookup = _T_1231[3:0]; // @[:chipyard.TestHarness.RocketConfig.fir@112510.4 :chipyard.TestHarness.RocketConfig.fir@112511.4 Monitor.scala 633:19:chipyard.TestHarness.RocketConfig.fir@112520.4]
  assign _GEN_87 = {{1'd0}, io_in_d_bits_size}; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@112639.6]
  assign _T_1299 = _GEN_87 == a_size_lookup; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@112639.6]
  assign _T_1301 = io_in_a_valid & _T_1279; // @[Monitor.scala 670:72:chipyard.TestHarness.RocketConfig.fir@112641.6]
  assign _T_1302 = _T_1299 | _T_1301; // @[Monitor.scala 670:53:chipyard.TestHarness.RocketConfig.fir@112642.6]
  assign _T_1304 = _T_1302 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@112644.6]
  assign _T_1305 = ~_T_1304; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@112645.6]
  assign _T_1307 = _T_1271 & a_first; // @[Monitor.scala 672:36:chipyard.TestHarness.RocketConfig.fir@112652.4]
  assign _T_1308 = _T_1307 & io_in_a_valid; // @[Monitor.scala 672:47:chipyard.TestHarness.RocketConfig.fir@112653.4]
  assign _T_1310 = _T_1308 & _T_1277; // @[Monitor.scala 672:65:chipyard.TestHarness.RocketConfig.fir@112655.4]
  assign _T_1312 = _T_1310 & _T_1256; // @[Monitor.scala 672:116:chipyard.TestHarness.RocketConfig.fir@112657.4]
  assign _T_1313 = ~io_in_d_ready; // @[Monitor.scala 673:15:chipyard.TestHarness.RocketConfig.fir@112659.6]
  assign _T_1314 = _T_1313 | io_in_a_ready; // @[Monitor.scala 673:32:chipyard.TestHarness.RocketConfig.fir@112660.6]
  assign _T_1316 = _T_1314 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@112662.6]
  assign _T_1317 = ~_T_1316; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@112663.6]
  assign a_set = _GEN_27[4:0]; // @[:chipyard.TestHarness.RocketConfig.fir@112493.4 :chipyard.TestHarness.RocketConfig.fir@112494.4 Monitor.scala 644:13:chipyard.TestHarness.RocketConfig.fir@112548.6]
  assign d_clr = _GEN_32[4:0]; // @[:chipyard.TestHarness.RocketConfig.fir@112572.4 :chipyard.TestHarness.RocketConfig.fir@112573.4 Monitor.scala 661:13:chipyard.TestHarness.RocketConfig.fir@112586.6]
  assign _T_1318 = a_set != d_clr; // @[Monitor.scala 677:20:chipyard.TestHarness.RocketConfig.fir@112669.4]
  assign _T_1319 = |a_set; // @[Monitor.scala 677:40:chipyard.TestHarness.RocketConfig.fir@112670.4]
  assign _T_1320 = ~_T_1319; // @[Monitor.scala 677:33:chipyard.TestHarness.RocketConfig.fir@112671.4]
  assign _T_1321 = _T_1318 | _T_1320; // @[Monitor.scala 677:30:chipyard.TestHarness.RocketConfig.fir@112672.4]
  assign _T_1323 = _T_1321 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@112674.4]
  assign _T_1324 = ~_T_1323; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@112675.4]
  assign _T_1325 = inflight | a_set; // @[Monitor.scala 680:27:chipyard.TestHarness.RocketConfig.fir@112680.4]
  assign _T_1326 = ~d_clr; // @[Monitor.scala 680:38:chipyard.TestHarness.RocketConfig.fir@112681.4]
  assign _T_1327 = _T_1325 & _T_1326; // @[Monitor.scala 680:36:chipyard.TestHarness.RocketConfig.fir@112682.4]
  assign a_opcodes_set = _GEN_30[19:0]; // @[:chipyard.TestHarness.RocketConfig.fir@112495.4 :chipyard.TestHarness.RocketConfig.fir@112496.4 Monitor.scala 647:21:chipyard.TestHarness.RocketConfig.fir@112557.6]
  assign _T_1328 = inflight_opcodes | a_opcodes_set; // @[Monitor.scala 681:43:chipyard.TestHarness.RocketConfig.fir@112684.4]
  assign d_opcodes_clr = _GEN_33[19:0]; // @[:chipyard.TestHarness.RocketConfig.fir@112574.4 :chipyard.TestHarness.RocketConfig.fir@112575.4 Monitor.scala 662:21:chipyard.TestHarness.RocketConfig.fir@112593.6]
  assign _T_1329 = ~d_opcodes_clr; // @[Monitor.scala 681:62:chipyard.TestHarness.RocketConfig.fir@112685.4]
  assign _T_1330 = _T_1328 & _T_1329; // @[Monitor.scala 681:60:chipyard.TestHarness.RocketConfig.fir@112686.4]
  assign a_sizes_set = _GEN_31[19:0]; // @[:chipyard.TestHarness.RocketConfig.fir@112497.4 :chipyard.TestHarness.RocketConfig.fir@112498.4 Monitor.scala 648:19:chipyard.TestHarness.RocketConfig.fir@112560.6]
  assign _T_1331 = inflight_sizes | a_sizes_set; // @[Monitor.scala 682:39:chipyard.TestHarness.RocketConfig.fir@112688.4]
  assign _T_1333 = _T_1331 & _T_1329; // @[Monitor.scala 682:54:chipyard.TestHarness.RocketConfig.fir@112690.4]
  assign _T_1335 = |inflight; // @[Monitor.scala 687:26:chipyard.TestHarness.RocketConfig.fir@112695.4]
  assign _T_1336 = ~_T_1335; // @[Monitor.scala 687:16:chipyard.TestHarness.RocketConfig.fir@112696.4]
  assign _T_1337 = plusarg_reader_out == 32'h0; // @[Monitor.scala 687:39:chipyard.TestHarness.RocketConfig.fir@112697.4]
  assign _T_1338 = _T_1336 | _T_1337; // @[Monitor.scala 687:30:chipyard.TestHarness.RocketConfig.fir@112698.4]
  assign _T_1339 = _T_1334 < plusarg_reader_out; // @[Monitor.scala 687:59:chipyard.TestHarness.RocketConfig.fir@112699.4]
  assign _T_1340 = _T_1338 | _T_1339; // @[Monitor.scala 687:47:chipyard.TestHarness.RocketConfig.fir@112700.4]
  assign _T_1342 = _T_1340 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112702.4]
  assign _T_1343 = ~_T_1342; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112703.4]
  assign _T_1345 = _T_1334 + 32'h1; // @[Monitor.scala 689:26:chipyard.TestHarness.RocketConfig.fir@112709.4]
  assign _T_1348 = _T_980 | _T_1029; // @[Monitor.scala 690:27:chipyard.TestHarness.RocketConfig.fir@112713.4]
  assign _T_1360 = _T_1358 - 3'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@112728.4]
  assign _T_1361 = _T_1358 == 3'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@112729.4]
  assign _T_1371 = _T_1029 & _T_1361; // @[Monitor.scala 700:27:chipyard.TestHarness.RocketConfig.fir@112743.4]
  assign _T_1374 = ~io_in_d_bits_opcode[1]; // @[Edges.scala 72:43:chipyard.TestHarness.RocketConfig.fir@112746.4]
  assign _T_1375 = io_in_d_bits_opcode[2] & _T_1374; // @[Edges.scala 72:40:chipyard.TestHarness.RocketConfig.fir@112747.4]
  assign _T_1376 = _T_1371 & _T_1375; // @[Monitor.scala 700:38:chipyard.TestHarness.RocketConfig.fir@112748.4]
  assign _T_1377 = 8'h1 << io_in_d_bits_sink; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@112750.6]
  assign _T_1378 = _T_1349 >> io_in_d_bits_sink; // @[Monitor.scala 702:23:chipyard.TestHarness.RocketConfig.fir@112752.6]
  assign _T_1380 = ~_T_1378[0]; // @[Monitor.scala 702:14:chipyard.TestHarness.RocketConfig.fir@112754.6]
  assign _T_1382 = _T_1380 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@112756.6]
  assign _T_1383 = ~_T_1382; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@112757.6]
  assign _GEN_69 = _T_1376 ? _T_1377 : 8'h0; // @[Monitor.scala 700:72:chipyard.TestHarness.RocketConfig.fir@112749.4]
  assign _T_1388 = 8'h1 << io_in_e_bits_sink; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@112769.6]
  assign _T_1389 = _GEN_69 | _T_1349; // @[Monitor.scala 708:24:chipyard.TestHarness.RocketConfig.fir@112771.6]
  assign _T_1390 = _T_1389 >> io_in_e_bits_sink; // @[Monitor.scala 708:35:chipyard.TestHarness.RocketConfig.fir@112772.6]
  assign _T_1393 = _T_1390[0] | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112775.6]
  assign _T_1394 = ~_T_1393; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112776.6]
  assign _GEN_70 = io_in_e_valid ? _T_1388 : 8'h0; // @[Monitor.scala 706:73:chipyard.TestHarness.RocketConfig.fir@112768.4]
  assign _T_1395 = _T_1349 | _GEN_69; // @[Monitor.scala 713:27:chipyard.TestHarness.RocketConfig.fir@112782.4]
  assign _T_1396 = ~_GEN_70; // @[Monitor.scala 713:38:chipyard.TestHarness.RocketConfig.fir@112783.4]
  assign _T_1397 = _T_1395 & _T_1396; // @[Monitor.scala 713:36:chipyard.TestHarness.RocketConfig.fir@112784.4]
  assign _GEN_88 = io_in_a_valid & _T_101; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110504.10]
  assign _GEN_104 = io_in_a_valid & _T_143; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110580.10]
  assign _GEN_122 = io_in_a_valid & _T_189; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110664.10]
  assign _GEN_134 = io_in_a_valid & _T_222; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110723.10]
  assign _GEN_144 = io_in_a_valid & _T_251; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110774.10]
  assign _GEN_154 = io_in_a_valid & _T_282; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110824.10]
  assign _GEN_164 = io_in_a_valid & _T_308; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110872.10]
  assign _GEN_174 = io_in_a_valid & _T_334; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110920.10]
  assign _GEN_186 = io_in_d_valid & _T_378; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@110990.10]
  assign _GEN_196 = io_in_d_valid & _T_398; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@111032.10]
  assign _GEN_206 = io_in_d_valid & _T_426; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@111090.10]
  assign _GEN_216 = io_in_d_valid & _T_455; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@111149.10]
  assign _GEN_222 = io_in_d_valid & _T_472; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@111184.10]
  assign _GEN_228 = io_in_d_valid & _T_490; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@111220.10]
  assign _GEN_234 = io_in_c_valid & _T_816; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111782.10]
  assign _GEN_246 = io_in_c_valid & _T_838; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111830.10]
  assign _GEN_256 = io_in_c_valid & _T_856; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111881.10]
  assign _GEN_270 = io_in_c_valid & _T_893; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111948.10]
  assign _GEN_282 = io_in_c_valid & _T_926; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111996.10]
  assign _GEN_292 = io_in_c_valid & _T_944; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112036.10]
  assign _GEN_300 = io_in_c_valid & _T_958; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112068.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock type unsupported by manager (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110504.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110505.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock from a client which does not support Probe (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110512.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110513.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock carries invalid source ID (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110519.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110520.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock smaller than a beat (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110527.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110528.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock address not aligned to size (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110534.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110535.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock carries invalid grow param (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110542.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110543.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock contains invalid mask (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110551.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110552.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock is corrupt (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110559.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110560.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm type unsupported by manager (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110580.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110581.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm from a client which does not support Probe (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110588.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110589.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm carries invalid source ID (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110595.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110596.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm smaller than a beat (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110603.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110604.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm address not aligned to size (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110610.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110611.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm carries invalid grow param (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110618.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110619.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm requests NtoB (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110626.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110627.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm contains invalid mask (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110635.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110636.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm is corrupt (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110643.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110644.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Get type unsupported by manager (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110664.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110665.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get carries invalid source ID (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110671.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110672.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get address not aligned to size (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110678.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110679.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get carries invalid param (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110686.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110687.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get contains invalid mask (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110694.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110695.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get is corrupt (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110702.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110703.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutFull type unsupported by manager (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110723.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110724.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull carries invalid source ID (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110730.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110731.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull address not aligned to size (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110737.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110738.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull carries invalid param (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110745.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110746.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull contains invalid mask (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110753.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110754.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutPartial type unsupported by manager (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110774.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110775.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial carries invalid source ID (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110781.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110782.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial address not aligned to size (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110788.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110789.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial carries invalid param (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110796.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110797.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial contains invalid mask (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110806.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110807.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Arithmetic type unsupported by manager (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110824.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110825.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic carries invalid source ID (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110831.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110832.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic address not aligned to size (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110838.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110839.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic carries invalid opcode param (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110846.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110847.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic contains invalid mask (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110854.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110855.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Logical type unsupported by manager (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110872.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110873.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical carries invalid source ID (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110879.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110880.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical address not aligned to size (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110886.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110887.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical carries invalid opcode param (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110894.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110895.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical contains invalid mask (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110902.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110903.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Hint type unsupported by manager (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110920.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110921.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint carries invalid source ID (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110927.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110928.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint address not aligned to size (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110934.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110935.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint carries invalid opcode param (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110942.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110943.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint contains invalid mask (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110950.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110951.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint is corrupt (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110958.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@110959.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel has invalid opcode (connected at Configs.scala:117:34)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@110969.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@110970.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck carries invalid source ID (connected at Configs.scala:117:34)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@110990.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@110991.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck smaller than a beat (connected at Configs.scala:117:34)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@110998.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@110999.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseeAck carries invalid param (connected at Configs.scala:117:34)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@111006.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@111007.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck is corrupt (connected at Configs.scala:117:34)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@111014.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@111015.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck is denied (connected at Configs.scala:117:34)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@111022.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@111023.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid source ID (connected at Configs.scala:117:34)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@111032.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@111033.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant smaller than a beat (connected at Configs.scala:117:34)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@111047.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@111048.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid cap param (connected at Configs.scala:117:34)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@111055.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@111056.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries toN param (connected at Configs.scala:117:34)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@111063.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@111064.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant is corrupt (connected at Configs.scala:117:34)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@111071.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@111072.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid source ID (connected at Configs.scala:117:34)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@111090.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@111091.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData smaller than a beat (connected at Configs.scala:117:34)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@111105.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@111106.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid cap param (connected at Configs.scala:117:34)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@111113.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@111114.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries toN param (connected at Configs.scala:117:34)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@111121.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@111122.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData is denied but not corrupt (connected at Configs.scala:117:34)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@111130.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@111131.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck carries invalid source ID (connected at Configs.scala:117:34)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@111149.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@111150.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck carries invalid param (connected at Configs.scala:117:34)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@111157.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@111158.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck is corrupt (connected at Configs.scala:117:34)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@111165.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@111166.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData carries invalid source ID (connected at Configs.scala:117:34)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@111184.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@111185.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData carries invalid param (connected at Configs.scala:117:34)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@111192.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@111193.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData is denied but not corrupt (connected at Configs.scala:117:34)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@111201.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@111202.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck carries invalid source ID (connected at Configs.scala:117:34)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@111220.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@111221.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck carries invalid param (connected at Configs.scala:117:34)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@111228.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@111229.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck is corrupt (connected at Configs.scala:117:34)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@111236.10]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@111237.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAck carries unmanaged address (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111782.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111783.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAck carries invalid source ID (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111789.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111790.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAck smaller than a beat (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111797.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111798.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAck address not aligned to size (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111804.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111805.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAck carries invalid report param (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111812.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111813.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAck is corrupt (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111820.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111821.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAckData carries unmanaged address (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111830.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111831.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAckData carries invalid source ID (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111837.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111838.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAckData smaller than a beat (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111845.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111846.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAckData address not aligned to size (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111852.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111853.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ProbeAckData carries invalid report param (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111860.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111861.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel carries Release type unsupported by manager (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111881.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111882.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel carries Release from a client which does not support Probe (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111889.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111890.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel Release carries invalid source ID (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111896.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111897.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel Release smaller than a beat (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111904.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111905.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel Release address not aligned to size (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111911.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111912.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel Release carries invalid shrink param (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111919.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111920.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel Release is corrupt (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111927.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111928.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel carries ReleaseData type unsupported by manager (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111948.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111949.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel carries Release from a client which does not support Probe (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111956.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111957.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ReleaseData carries invalid source ID (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111963.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111964.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ReleaseData smaller than a beat (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111971.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111972.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ReleaseData address not aligned to size (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111978.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111979.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel ReleaseData carries invalid shrink param (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111986.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111987.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAck carries unmanaged address (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111996.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@111997.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAck carries invalid source ID (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112003.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112004.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAck address not aligned to size (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112010.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112011.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAck carries invalid param (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112018.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112019.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAck is corrupt (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112026.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112027.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAckData carries unmanaged address (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112036.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112037.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAckData carries invalid source ID (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112043.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112044.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAckData address not aligned to size (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112050.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112051.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel AccessAckData carries invalid param (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112058.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112059.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel HintAck carries unmanaged address (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112068.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112069.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel HintAck carries invalid source ID (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112075.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112076.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel HintAck address not aligned to size (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112082.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112083.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel HintAck carries invalid param (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112090.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112091.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel HintAck is corrupt (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112098.10]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112099.10]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel opcode changed within multibeat operation (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112149.8]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112150.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel param changed within multibeat operation (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112157.8]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112158.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel size changed within multibeat operation (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112165.8]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112166.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel source changed within multibeat operation (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112173.8]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112174.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel address changed with multibeat operation (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112181.8]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112182.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel opcode changed within multibeat operation (connected at Configs.scala:117:34)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@112230.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@112231.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel param changed within multibeat operation (connected at Configs.scala:117:34)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@112238.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@112239.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel size changed within multibeat operation (connected at Configs.scala:117:34)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@112246.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@112247.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel source changed within multibeat operation (connected at Configs.scala:117:34)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@112254.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@112255.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel sink changed with multibeat operation (connected at Configs.scala:117:34)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@112262.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@112263.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel denied changed with multibeat operation (connected at Configs.scala:117:34)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@112270.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@112271.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel opcode changed within multibeat operation (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112400.8]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112401.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel param changed within multibeat operation (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112408.8]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112409.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel size changed within multibeat operation (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112416.8]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112417.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel source changed within multibeat operation (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112424.8]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112425.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'C' channel address changed with multibeat operation (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112432.8]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112433.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' channel re-used a source ID (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112568.8]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112569.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel acknowledged for nothing inflight (connected at Configs.scala:117:34)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@112619.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@112620.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper opcode response (connected at Configs.scala:117:34)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@112636.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@112637.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper response size (connected at Configs.scala:117:34)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@112647.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@112648.8]
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
          $fwrite(32'h80000002,"Assertion failed: ready check\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@112665.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@112666.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'A' and 'D' concurrent, despite minlatency 1 (connected at Configs.scala:117:34)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@112677.6]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@112678.6]
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
          $fwrite(32'h80000002,"Assertion failed: TileLink timeout expired (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112705.6]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112706.6]
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
          $fwrite(32'h80000002,"Assertion failed: 'D' channel re-used a sink ID (connected at Configs.scala:117:34)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@112759.8]
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
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@112760.8]
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
          $fwrite(32'h80000002,"Assertion failed: 'E' channel acknowledged for nothing inflight (connected at Configs.scala:117:34)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112778.8]
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
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@112779.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
