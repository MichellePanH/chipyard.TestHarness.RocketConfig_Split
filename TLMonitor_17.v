module TLMonitor_17( // @[:chipyard.TestHarness.RocketConfig.fir@37360.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@37361.4]
  input         reset, // @[:chipyard.TestHarness.RocketConfig.fir@37362.4]
  input         io_in_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@37363.4]
  input         io_in_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@37363.4]
  input  [2:0]  io_in_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@37363.4]
  input  [3:0]  io_in_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@37363.4]
  input  [31:0] io_in_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@37363.4]
  input  [7:0]  io_in_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@37363.4]
  input         io_in_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@37363.4]
  input         io_in_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@37363.4]
  input  [2:0]  io_in_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@37363.4]
  input  [1:0]  io_in_d_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@37363.4]
  input  [3:0]  io_in_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@37363.4]
  input  [2:0]  io_in_d_bits_sink, // @[:chipyard.TestHarness.RocketConfig.fir@37363.4]
  input         io_in_d_bits_denied, // @[:chipyard.TestHarness.RocketConfig.fir@37363.4]
  input         io_in_d_bits_corrupt // @[:chipyard.TestHarness.RocketConfig.fir@37363.4]
);
  wire [31:0] plusarg_reader_out; // @[PlusArg.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39041.4]
  wire [26:0] _T_7; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@37379.6]
  wire [11:0] _T_9; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@37381.6]
  wire [31:0] _GEN_56; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@37382.6]
  wire [31:0] _T_10; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@37382.6]
  wire  _T_11; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@37383.6]
  wire [3:0] _T_14; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@37386.6]
  wire [2:0] _T_16; // @[Misc.scala 201:81:chipyard.TestHarness.RocketConfig.fir@37388.6]
  wire  _T_17; // @[Misc.scala 205:21:chipyard.TestHarness.RocketConfig.fir@37389.6]
  wire  _T_20; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@37392.6]
  wire  _T_22; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@37394.6]
  wire  _T_23; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@37395.6]
  wire  _T_25; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@37397.6]
  wire  _T_26; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@37398.6]
  wire  _T_29; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@37401.6]
  wire  _T_30; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@37402.6]
  wire  _T_31; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@37403.6]
  wire  _T_32; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@37404.6]
  wire  _T_33; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@37405.6]
  wire  _T_34; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@37406.6]
  wire  _T_35; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@37407.6]
  wire  _T_36; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@37408.6]
  wire  _T_37; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@37409.6]
  wire  _T_38; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@37410.6]
  wire  _T_39; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@37411.6]
  wire  _T_40; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@37412.6]
  wire  _T_41; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@37413.6]
  wire  _T_44; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@37416.6]
  wire  _T_45; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@37417.6]
  wire  _T_46; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@37418.6]
  wire  _T_47; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@37419.6]
  wire  _T_48; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@37420.6]
  wire  _T_49; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@37421.6]
  wire  _T_50; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@37422.6]
  wire  _T_51; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@37423.6]
  wire  _T_52; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@37424.6]
  wire  _T_53; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@37425.6]
  wire  _T_54; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@37426.6]
  wire  _T_55; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@37427.6]
  wire  _T_56; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@37428.6]
  wire  _T_57; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@37429.6]
  wire  _T_58; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@37430.6]
  wire  _T_59; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@37431.6]
  wire  _T_60; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@37432.6]
  wire  _T_61; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@37433.6]
  wire  _T_62; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@37434.6]
  wire  _T_63; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@37435.6]
  wire  _T_64; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@37436.6]
  wire  _T_65; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@37437.6]
  wire  _T_66; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@37438.6]
  wire  _T_67; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@37439.6]
  wire  _T_68; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@37440.6]
  wire [7:0] _T_75; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@37447.6]
  wire [32:0] _T_79; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@37451.6]
  wire  _T_87; // @[Monitor.scala 79:25:chipyard.TestHarness.RocketConfig.fir@37463.6]
  wire [31:0] _T_89; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@37466.8]
  wire [32:0] _T_90; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@37467.8]
  wire [32:0] _T_92; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@37469.8]
  wire  _T_93; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@37470.8]
  wire [31:0] _T_94; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@37471.8]
  wire [32:0] _T_95; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@37472.8]
  wire [32:0] _T_97; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@37474.8]
  wire  _T_98; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@37475.8]
  wire [31:0] _T_99; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@37476.8]
  wire [32:0] _T_100; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@37477.8]
  wire [32:0] _T_102; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@37479.8]
  wire  _T_103; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@37480.8]
  wire [31:0] _T_104; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@37481.8]
  wire [32:0] _T_105; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@37482.8]
  wire [32:0] _T_107; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@37484.8]
  wire  _T_108; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@37485.8]
  wire [31:0] _T_109; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@37486.8]
  wire [32:0] _T_110; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@37487.8]
  wire [32:0] _T_112; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@37489.8]
  wire  _T_113; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@37490.8]
  wire [32:0] _T_117; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@37494.8]
  wire  _T_118; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@37495.8]
  wire [31:0] _T_119; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@37496.8]
  wire [32:0] _T_120; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@37497.8]
  wire [32:0] _T_122; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@37499.8]
  wire  _T_123; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@37500.8]
  wire  _T_124; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@37501.8]
  wire  _T_125; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@37502.8]
  wire  _T_126; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@37503.8]
  wire  _T_127; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@37504.8]
  wire  _T_128; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@37505.8]
  wire  _T_131; // @[Parameters.scala 92:48:chipyard.TestHarness.RocketConfig.fir@37508.8]
  wire [31:0] _T_133; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@37510.8]
  wire [32:0] _T_134; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@37511.8]
  wire [32:0] _T_136; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@37513.8]
  wire  _T_137; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@37514.8]
  wire  _T_138; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@37515.8]
  wire  _T_142; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@37519.8]
  wire  _T_143; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@37520.8]
  wire  _T_146; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@37527.8]
  wire  _T_152; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@37541.8]
  wire  _T_153; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@37542.8]
  wire  _T_155; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@37548.8]
  wire  _T_156; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@37549.8]
  wire [7:0] _T_161; // @[Monitor.scala 86:18:chipyard.TestHarness.RocketConfig.fir@37562.8]
  wire  _T_162; // @[Monitor.scala 86:31:chipyard.TestHarness.RocketConfig.fir@37563.8]
  wire  _T_164; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@37565.8]
  wire  _T_165; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@37566.8]
  wire  _T_170; // @[Monitor.scala 90:25:chipyard.TestHarness.RocketConfig.fir@37580.6]
  wire  _T_257; // @[Monitor.scala 102:25:chipyard.TestHarness.RocketConfig.fir@37705.6]
  wire  _T_259; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@37708.8]
  wire  _T_267; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@37716.8]
  wire  _T_269; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@37718.8]
  wire  _T_307; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@37756.8]
  wire  _T_308; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@37757.8]
  wire  _T_309; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@37758.8]
  wire  _T_310; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@37759.8]
  wire  _T_311; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@37760.8]
  wire  _T_312; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@37761.8]
  wire  _T_313; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@37762.8]
  wire  _T_315; // @[Parameters.scala 553:30:chipyard.TestHarness.RocketConfig.fir@37764.8]
  wire  _T_317; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@37766.8]
  wire  _T_318; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@37767.8]
  wire  _T_329; // @[Monitor.scala 107:30:chipyard.TestHarness.RocketConfig.fir@37794.8]
  wire  _T_331; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@37796.8]
  wire  _T_332; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@37797.8]
  wire  _T_337; // @[Monitor.scala 111:25:chipyard.TestHarness.RocketConfig.fir@37811.6]
  wire  _T_386; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@37861.8]
  wire  _T_387; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@37862.8]
  wire  _T_396; // @[Parameters.scala 553:30:chipyard.TestHarness.RocketConfig.fir@37871.8]
  wire  _T_399; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@37874.8]
  wire  _T_400; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@37875.8]
  wire  _T_415; // @[Monitor.scala 119:25:chipyard.TestHarness.RocketConfig.fir@37911.6]
  wire [7:0] _T_489; // @[Monitor.scala 124:33:chipyard.TestHarness.RocketConfig.fir@38002.8]
  wire [7:0] _T_490; // @[Monitor.scala 124:31:chipyard.TestHarness.RocketConfig.fir@38003.8]
  wire  _T_491; // @[Monitor.scala 124:40:chipyard.TestHarness.RocketConfig.fir@38004.8]
  wire  _T_493; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@38006.8]
  wire  _T_494; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@38007.8]
  wire  _T_495; // @[Monitor.scala 127:25:chipyard.TestHarness.RocketConfig.fir@38013.6]
  wire  _T_497; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@38016.8]
  wire  _T_540; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@38059.8]
  wire  _T_541; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@38060.8]
  wire  _T_552; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@38071.8]
  wire  _T_553; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@38072.8]
  wire  _T_568; // @[Monitor.scala 135:25:chipyard.TestHarness.RocketConfig.fir@38108.6]
  wire  _T_641; // @[Monitor.scala 143:25:chipyard.TestHarness.RocketConfig.fir@38203.6]
  wire  _T_698; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@38261.8]
  wire  _T_701; // @[Parameters.scala 553:30:chipyard.TestHarness.RocketConfig.fir@38264.8]
  wire  _T_703; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@38266.8]
  wire  _T_704; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@38267.8]
  wire  _T_723; // @[Bundles.scala 44:24:chipyard.TestHarness.RocketConfig.fir@38313.6]
  wire  _T_725; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38315.6]
  wire  _T_726; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38316.6]
  wire  _T_730; // @[Monitor.scala 307:25:chipyard.TestHarness.RocketConfig.fir@38326.6]
  wire  _T_734; // @[Monitor.scala 309:27:chipyard.TestHarness.RocketConfig.fir@38335.8]
  wire  _T_736; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38337.8]
  wire  _T_737; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38338.8]
  wire  _T_738; // @[Monitor.scala 310:28:chipyard.TestHarness.RocketConfig.fir@38343.8]
  wire  _T_740; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38345.8]
  wire  _T_741; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38346.8]
  wire  _T_742; // @[Monitor.scala 311:15:chipyard.TestHarness.RocketConfig.fir@38351.8]
  wire  _T_744; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38353.8]
  wire  _T_745; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38354.8]
  wire  _T_746; // @[Monitor.scala 312:15:chipyard.TestHarness.RocketConfig.fir@38359.8]
  wire  _T_748; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38361.8]
  wire  _T_749; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38362.8]
  wire  _T_750; // @[Monitor.scala 315:25:chipyard.TestHarness.RocketConfig.fir@38368.6]
  wire  _T_761; // @[Bundles.scala 104:26:chipyard.TestHarness.RocketConfig.fir@38392.8]
  wire  _T_763; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38394.8]
  wire  _T_764; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38395.8]
  wire  _T_765; // @[Monitor.scala 320:28:chipyard.TestHarness.RocketConfig.fir@38400.8]
  wire  _T_767; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38402.8]
  wire  _T_768; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38403.8]
  wire  _T_778; // @[Monitor.scala 325:25:chipyard.TestHarness.RocketConfig.fir@38426.6]
  wire  _T_798; // @[Monitor.scala 331:30:chipyard.TestHarness.RocketConfig.fir@38467.8]
  wire  _T_800; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38469.8]
  wire  _T_801; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38470.8]
  wire  _T_807; // @[Monitor.scala 335:25:chipyard.TestHarness.RocketConfig.fir@38485.6]
  wire  _T_824; // @[Monitor.scala 343:25:chipyard.TestHarness.RocketConfig.fir@38520.6]
  wire  _T_842; // @[Monitor.scala 351:25:chipyard.TestHarness.RocketConfig.fir@38556.6]
  wire  _T_874; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@38622.4]
  wire  _T_881; // @[Edges.scala 93:28:chipyard.TestHarness.RocketConfig.fir@38629.4]
  reg [8:0] _T_883; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@38631.4]
  reg [31:0] _RAND_0;
  wire [8:0] _T_885; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@38633.4]
  wire  _T_886; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@38634.4]
  reg [2:0] _T_894; // @[Monitor.scala 381:22:chipyard.TestHarness.RocketConfig.fir@38645.4]
  reg [31:0] _RAND_1;
  reg [3:0] _T_896; // @[Monitor.scala 383:22:chipyard.TestHarness.RocketConfig.fir@38647.4]
  reg [31:0] _RAND_2;
  reg [31:0] _T_898; // @[Monitor.scala 385:22:chipyard.TestHarness.RocketConfig.fir@38649.4]
  reg [31:0] _RAND_3;
  wire  _T_899; // @[Monitor.scala 386:22:chipyard.TestHarness.RocketConfig.fir@38650.4]
  wire  _T_900; // @[Monitor.scala 386:19:chipyard.TestHarness.RocketConfig.fir@38651.4]
  wire  _T_901; // @[Monitor.scala 387:32:chipyard.TestHarness.RocketConfig.fir@38653.6]
  wire  _T_903; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@38655.6]
  wire  _T_904; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@38656.6]
  wire  _T_909; // @[Monitor.scala 389:32:chipyard.TestHarness.RocketConfig.fir@38669.6]
  wire  _T_911; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@38671.6]
  wire  _T_912; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@38672.6]
  wire  _T_917; // @[Monitor.scala 391:32:chipyard.TestHarness.RocketConfig.fir@38685.6]
  wire  _T_919; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@38687.6]
  wire  _T_920; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@38688.6]
  wire  _T_922; // @[Monitor.scala 393:20:chipyard.TestHarness.RocketConfig.fir@38695.4]
  wire  _T_923; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@38703.4]
  wire [26:0] _T_925; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@38705.4]
  wire [11:0] _T_927; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@38707.4]
  reg [8:0] _T_931; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@38711.4]
  reg [31:0] _RAND_4;
  wire [8:0] _T_933; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@38713.4]
  wire  _T_934; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@38714.4]
  reg [2:0] _T_942; // @[Monitor.scala 532:22:chipyard.TestHarness.RocketConfig.fir@38725.4]
  reg [31:0] _RAND_5;
  reg [1:0] _T_943; // @[Monitor.scala 533:22:chipyard.TestHarness.RocketConfig.fir@38726.4]
  reg [31:0] _RAND_6;
  reg [3:0] _T_944; // @[Monitor.scala 534:22:chipyard.TestHarness.RocketConfig.fir@38727.4]
  reg [31:0] _RAND_7;
  reg [2:0] _T_946; // @[Monitor.scala 536:22:chipyard.TestHarness.RocketConfig.fir@38729.4]
  reg [31:0] _RAND_8;
  reg  _T_947; // @[Monitor.scala 537:22:chipyard.TestHarness.RocketConfig.fir@38730.4]
  reg [31:0] _RAND_9;
  wire  _T_948; // @[Monitor.scala 538:22:chipyard.TestHarness.RocketConfig.fir@38731.4]
  wire  _T_949; // @[Monitor.scala 538:19:chipyard.TestHarness.RocketConfig.fir@38732.4]
  wire  _T_950; // @[Monitor.scala 539:29:chipyard.TestHarness.RocketConfig.fir@38734.6]
  wire  _T_952; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38736.6]
  wire  _T_953; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38737.6]
  wire  _T_954; // @[Monitor.scala 540:29:chipyard.TestHarness.RocketConfig.fir@38742.6]
  wire  _T_956; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38744.6]
  wire  _T_957; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38745.6]
  wire  _T_958; // @[Monitor.scala 541:29:chipyard.TestHarness.RocketConfig.fir@38750.6]
  wire  _T_960; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38752.6]
  wire  _T_961; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38753.6]
  wire  _T_966; // @[Monitor.scala 543:29:chipyard.TestHarness.RocketConfig.fir@38766.6]
  wire  _T_968; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38768.6]
  wire  _T_969; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38769.6]
  wire  _T_970; // @[Monitor.scala 544:29:chipyard.TestHarness.RocketConfig.fir@38774.6]
  wire  _T_972; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38776.6]
  wire  _T_973; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38777.6]
  wire  _T_975; // @[Monitor.scala 546:20:chipyard.TestHarness.RocketConfig.fir@38784.4]
  reg  inflight; // @[Monitor.scala 608:27:chipyard.TestHarness.RocketConfig.fir@38793.4]
  reg [31:0] _RAND_10;
  reg [3:0] inflight_opcodes; // @[Monitor.scala 610:35:chipyard.TestHarness.RocketConfig.fir@38794.4]
  reg [31:0] _RAND_11;
  reg [7:0] inflight_sizes; // @[Monitor.scala 612:33:chipyard.TestHarness.RocketConfig.fir@38795.4]
  reg [31:0] _RAND_12;
  reg [8:0] _T_985; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@38805.4]
  reg [31:0] _RAND_13;
  wire [8:0] _T_987; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@38807.4]
  wire  a_first; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@38808.4]
  reg [8:0] _T_1003; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@38827.4]
  reg [31:0] _RAND_14;
  wire [8:0] _T_1005; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@38829.4]
  wire  d_first; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@38830.4]
  wire [15:0] _T_1018; // @[Monitor.scala 606:57:chipyard.TestHarness.RocketConfig.fir@38854.4]
  wire [15:0] _GEN_57; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@38855.4]
  wire [15:0] _T_1019; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@38855.4]
  wire [15:0] _T_1020; // @[Monitor.scala 629:152:chipyard.TestHarness.RocketConfig.fir@38856.4]
  wire [15:0] _T_1026; // @[Monitor.scala 606:57:chipyard.TestHarness.RocketConfig.fir@38865.4]
  wire [15:0] _GEN_59; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@38866.4]
  wire [15:0] _T_1027; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@38866.4]
  wire [15:0] _T_1028; // @[Monitor.scala 633:144:chipyard.TestHarness.RocketConfig.fir@38867.4]
  wire  _T_1032; // @[Monitor.scala 643:27:chipyard.TestHarness.RocketConfig.fir@38892.4]
  wire [3:0] _T_1035; // @[Monitor.scala 645:53:chipyard.TestHarness.RocketConfig.fir@38897.6]
  wire [3:0] _T_1036; // @[Monitor.scala 645:61:chipyard.TestHarness.RocketConfig.fir@38898.6]
  wire [4:0] _T_1037; // @[Monitor.scala 646:49:chipyard.TestHarness.RocketConfig.fir@38900.6]
  wire [4:0] _T_1038; // @[Monitor.scala 646:57:chipyard.TestHarness.RocketConfig.fir@38901.6]
  wire [3:0] a_opcodes_set_interm; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@38894.4]
  wire [18:0] _T_1040; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@38904.6]
  wire [4:0] a_sizes_set_interm; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@38894.4]
  wire [19:0] _T_1042; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@38907.6]
  wire  _T_1045; // @[Monitor.scala 649:17:chipyard.TestHarness.RocketConfig.fir@38911.6]
  wire  _T_1047; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@38913.6]
  wire  _T_1048; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@38914.6]
  wire [1:0] _GEN_15; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@38894.4]
  wire [18:0] _GEN_18; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@38894.4]
  wire [19:0] _GEN_19; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@38894.4]
  wire  _T_1051; // @[Monitor.scala 660:27:chipyard.TestHarness.RocketConfig.fir@38928.4]
  wire  _T_1053; // @[Monitor.scala 660:75:chipyard.TestHarness.RocketConfig.fir@38930.4]
  wire  _T_1054; // @[Monitor.scala 660:72:chipyard.TestHarness.RocketConfig.fir@38931.4]
  wire [30:0] _T_1061; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@38940.6]
  wire [30:0] _T_1067; // @[Monitor.scala 663:72:chipyard.TestHarness.RocketConfig.fir@38947.6]
  wire [1:0] _GEN_20; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@38932.4]
  wire [30:0] _GEN_21; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@38932.4]
  wire [30:0] _GEN_22; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@38932.4]
  wire  _T_1068; // @[Monitor.scala 665:26:chipyard.TestHarness.RocketConfig.fir@38950.4]
  wire  _T_1071; // @[Monitor.scala 665:71:chipyard.TestHarness.RocketConfig.fir@38953.4]
  wire  _T_1076; // @[Monitor.scala 666:142:chipyard.TestHarness.RocketConfig.fir@38959.6]
  wire  _T_1077; // @[Monitor.scala 666:119:chipyard.TestHarness.RocketConfig.fir@38960.6]
  wire  _T_1078; // @[Monitor.scala 666:166:chipyard.TestHarness.RocketConfig.fir@38961.6]
  wire  _T_1079; // @[Monitor.scala 666:49:chipyard.TestHarness.RocketConfig.fir@38962.6]
  wire  _T_1081; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38964.6]
  wire  _T_1082; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38965.6]
  wire [3:0] a_opcode_lookup; // @[:chipyard.TestHarness.RocketConfig.fir@38847.4 :chipyard.TestHarness.RocketConfig.fir@38848.4 Monitor.scala 629:21:chipyard.TestHarness.RocketConfig.fir@38857.4]
  wire [2:0] _GEN_25; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@38971.6]
  wire [2:0] _GEN_26; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@38971.6]
  wire [2:0] _GEN_27; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@38971.6]
  wire [2:0] _GEN_28; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@38971.6]
  wire [2:0] _GEN_29; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@38971.6]
  wire [2:0] _GEN_30; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@38971.6]
  wire  _T_1084; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@38971.6]
  wire [2:0] _GEN_37; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@38973.6]
  wire [2:0] _GEN_38; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@38973.6]
  wire  _T_1086; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@38973.6]
  wire  _T_1087; // @[Monitor.scala 667:71:chipyard.TestHarness.RocketConfig.fir@38974.6]
  wire [2:0] _GEN_41; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@38975.6]
  wire [2:0] _GEN_42; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@38975.6]
  wire [2:0] _GEN_43; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@38975.6]
  wire [2:0] _GEN_44; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@38975.6]
  wire [2:0] _GEN_45; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@38975.6]
  wire [2:0] _GEN_46; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@38975.6]
  wire  _T_1088; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@38975.6]
  wire [2:0] _GEN_53; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@38976.6]
  wire [2:0] _GEN_54; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@38976.6]
  wire  _T_1089; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@38976.6]
  wire  _T_1090; // @[Monitor.scala 668:99:chipyard.TestHarness.RocketConfig.fir@38977.6]
  wire  _T_1091; // @[Monitor.scala 668:34:chipyard.TestHarness.RocketConfig.fir@38978.6]
  wire  _T_1092; // @[Monitor.scala 668:15:chipyard.TestHarness.RocketConfig.fir@38979.6]
  wire  _T_1094; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38981.6]
  wire  _T_1095; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38982.6]
  wire [7:0] a_size_lookup; // @[:chipyard.TestHarness.RocketConfig.fir@38858.4 :chipyard.TestHarness.RocketConfig.fir@38859.4 Monitor.scala 633:19:chipyard.TestHarness.RocketConfig.fir@38868.4]
  wire [7:0] _GEN_61; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@38987.6]
  wire  _T_1096; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@38987.6]
  wire  _T_1099; // @[Monitor.scala 670:53:chipyard.TestHarness.RocketConfig.fir@38990.6]
  wire  _T_1101; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38992.6]
  wire  _T_1102; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38993.6]
  wire  _T_1104; // @[Monitor.scala 672:36:chipyard.TestHarness.RocketConfig.fir@39000.4]
  wire  _T_1105; // @[Monitor.scala 672:47:chipyard.TestHarness.RocketConfig.fir@39001.4]
  wire  _T_1109; // @[Monitor.scala 672:116:chipyard.TestHarness.RocketConfig.fir@39005.4]
  wire  _T_1110; // @[Monitor.scala 673:15:chipyard.TestHarness.RocketConfig.fir@39007.6]
  wire  _T_1111; // @[Monitor.scala 673:32:chipyard.TestHarness.RocketConfig.fir@39008.6]
  wire  _T_1113; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@39010.6]
  wire  _T_1114; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@39011.6]
  wire  a_set; // @[:chipyard.TestHarness.RocketConfig.fir@38841.4 :chipyard.TestHarness.RocketConfig.fir@38842.4 Monitor.scala 644:13:chipyard.TestHarness.RocketConfig.fir@38896.6]
  wire  d_clr; // @[:chipyard.TestHarness.RocketConfig.fir@38920.4 :chipyard.TestHarness.RocketConfig.fir@38921.4 Monitor.scala 661:13:chipyard.TestHarness.RocketConfig.fir@38934.6]
  wire  _T_1115; // @[Monitor.scala 677:20:chipyard.TestHarness.RocketConfig.fir@39017.4]
  wire  _T_1116; // @[Monitor.scala 677:40:chipyard.TestHarness.RocketConfig.fir@39018.4]
  wire  _T_1117; // @[Monitor.scala 677:33:chipyard.TestHarness.RocketConfig.fir@39019.4]
  wire  _T_1118; // @[Monitor.scala 677:30:chipyard.TestHarness.RocketConfig.fir@39020.4]
  wire  _T_1120; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@39022.4]
  wire  _T_1121; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@39023.4]
  wire  _T_1122; // @[Monitor.scala 680:27:chipyard.TestHarness.RocketConfig.fir@39028.4]
  wire  _T_1123; // @[Monitor.scala 680:38:chipyard.TestHarness.RocketConfig.fir@39029.4]
  wire  _T_1124; // @[Monitor.scala 680:36:chipyard.TestHarness.RocketConfig.fir@39030.4]
  wire [3:0] a_opcodes_set; // @[:chipyard.TestHarness.RocketConfig.fir@38843.4 :chipyard.TestHarness.RocketConfig.fir@38844.4 Monitor.scala 647:21:chipyard.TestHarness.RocketConfig.fir@38905.6]
  wire [3:0] _T_1125; // @[Monitor.scala 681:43:chipyard.TestHarness.RocketConfig.fir@39032.4]
  wire [3:0] d_opcodes_clr; // @[:chipyard.TestHarness.RocketConfig.fir@38922.4 :chipyard.TestHarness.RocketConfig.fir@38923.4 Monitor.scala 662:21:chipyard.TestHarness.RocketConfig.fir@38941.6]
  wire [3:0] _T_1126; // @[Monitor.scala 681:62:chipyard.TestHarness.RocketConfig.fir@39033.4]
  wire [3:0] _T_1127; // @[Monitor.scala 681:60:chipyard.TestHarness.RocketConfig.fir@39034.4]
  wire [7:0] a_sizes_set; // @[:chipyard.TestHarness.RocketConfig.fir@38845.4 :chipyard.TestHarness.RocketConfig.fir@38846.4 Monitor.scala 648:19:chipyard.TestHarness.RocketConfig.fir@38908.6]
  wire [7:0] _T_1128; // @[Monitor.scala 682:39:chipyard.TestHarness.RocketConfig.fir@39036.4]
  wire [7:0] d_sizes_clr; // @[:chipyard.TestHarness.RocketConfig.fir@38924.4 :chipyard.TestHarness.RocketConfig.fir@38925.4 Monitor.scala 663:19:chipyard.TestHarness.RocketConfig.fir@38948.6]
  wire [7:0] _T_1129; // @[Monitor.scala 682:56:chipyard.TestHarness.RocketConfig.fir@39037.4]
  wire [7:0] _T_1130; // @[Monitor.scala 682:54:chipyard.TestHarness.RocketConfig.fir@39038.4]
  reg [31:0] _T_1131; // @[Monitor.scala 684:27:chipyard.TestHarness.RocketConfig.fir@39040.4]
  reg [31:0] _RAND_15;
  wire  _T_1132; // @[Monitor.scala 687:26:chipyard.TestHarness.RocketConfig.fir@39043.4]
  wire  _T_1133; // @[Monitor.scala 687:16:chipyard.TestHarness.RocketConfig.fir@39044.4]
  wire  _T_1134; // @[Monitor.scala 687:39:chipyard.TestHarness.RocketConfig.fir@39045.4]
  wire  _T_1135; // @[Monitor.scala 687:30:chipyard.TestHarness.RocketConfig.fir@39046.4]
  wire  _T_1136; // @[Monitor.scala 687:59:chipyard.TestHarness.RocketConfig.fir@39047.4]
  wire  _T_1137; // @[Monitor.scala 687:47:chipyard.TestHarness.RocketConfig.fir@39048.4]
  wire  _T_1139; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39050.4]
  wire  _T_1140; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39051.4]
  wire [31:0] _T_1142; // @[Monitor.scala 689:26:chipyard.TestHarness.RocketConfig.fir@39057.4]
  wire  _T_1145; // @[Monitor.scala 690:27:chipyard.TestHarness.RocketConfig.fir@39061.4]
  wire  _GEN_62; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@37522.10]
  wire  _GEN_72; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@37639.10]
  wire  _GEN_84; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@37769.10]
  wire  _GEN_90; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@37877.10]
  wire  _GEN_96; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@37977.10]
  wire  _GEN_102; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@38074.10]
  wire  _GEN_108; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@38169.10]
  wire  _GEN_114; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@38269.10]
  wire  _GEN_120; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38340.10]
  wire  _GEN_128; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38389.10]
  wire  _GEN_136; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38447.10]
  wire  _GEN_144; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38499.10]
  wire  _GEN_148; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38534.10]
  wire  _GEN_152; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38570.10]
  plusarg_reader #(.FORMAT("tilelink_timeout=%d"), .DEFAULT(0), .WIDTH(32)) plusarg_reader ( // @[PlusArg.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39041.4]
    .out(plusarg_reader_out)
  );
  assign _T_7 = 27'hfff << io_in_a_bits_size; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@37379.6]
  assign _T_9 = ~_T_7[11:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@37381.6]
  assign _GEN_56 = {{20'd0}, _T_9}; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@37382.6]
  assign _T_10 = io_in_a_bits_address & _GEN_56; // @[Edges.scala 22:16:chipyard.TestHarness.RocketConfig.fir@37382.6]
  assign _T_11 = _T_10 == 32'h0; // @[Edges.scala 22:24:chipyard.TestHarness.RocketConfig.fir@37383.6]
  assign _T_14 = 4'h1 << io_in_a_bits_size[1:0]; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@37386.6]
  assign _T_16 = _T_14[2:0] | 3'h1; // @[Misc.scala 201:81:chipyard.TestHarness.RocketConfig.fir@37388.6]
  assign _T_17 = io_in_a_bits_size >= 4'h3; // @[Misc.scala 205:21:chipyard.TestHarness.RocketConfig.fir@37389.6]
  assign _T_20 = ~io_in_a_bits_address[2]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@37392.6]
  assign _T_22 = _T_16[2] & _T_20; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@37394.6]
  assign _T_23 = _T_17 | _T_22; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@37395.6]
  assign _T_25 = _T_16[2] & io_in_a_bits_address[2]; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@37397.6]
  assign _T_26 = _T_17 | _T_25; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@37398.6]
  assign _T_29 = ~io_in_a_bits_address[1]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@37401.6]
  assign _T_30 = _T_20 & _T_29; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@37402.6]
  assign _T_31 = _T_16[1] & _T_30; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@37403.6]
  assign _T_32 = _T_23 | _T_31; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@37404.6]
  assign _T_33 = _T_20 & io_in_a_bits_address[1]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@37405.6]
  assign _T_34 = _T_16[1] & _T_33; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@37406.6]
  assign _T_35 = _T_23 | _T_34; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@37407.6]
  assign _T_36 = io_in_a_bits_address[2] & _T_29; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@37408.6]
  assign _T_37 = _T_16[1] & _T_36; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@37409.6]
  assign _T_38 = _T_26 | _T_37; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@37410.6]
  assign _T_39 = io_in_a_bits_address[2] & io_in_a_bits_address[1]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@37411.6]
  assign _T_40 = _T_16[1] & _T_39; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@37412.6]
  assign _T_41 = _T_26 | _T_40; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@37413.6]
  assign _T_44 = ~io_in_a_bits_address[0]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@37416.6]
  assign _T_45 = _T_30 & _T_44; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@37417.6]
  assign _T_46 = _T_16[0] & _T_45; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@37418.6]
  assign _T_47 = _T_32 | _T_46; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@37419.6]
  assign _T_48 = _T_30 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@37420.6]
  assign _T_49 = _T_16[0] & _T_48; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@37421.6]
  assign _T_50 = _T_32 | _T_49; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@37422.6]
  assign _T_51 = _T_33 & _T_44; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@37423.6]
  assign _T_52 = _T_16[0] & _T_51; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@37424.6]
  assign _T_53 = _T_35 | _T_52; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@37425.6]
  assign _T_54 = _T_33 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@37426.6]
  assign _T_55 = _T_16[0] & _T_54; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@37427.6]
  assign _T_56 = _T_35 | _T_55; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@37428.6]
  assign _T_57 = _T_36 & _T_44; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@37429.6]
  assign _T_58 = _T_16[0] & _T_57; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@37430.6]
  assign _T_59 = _T_38 | _T_58; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@37431.6]
  assign _T_60 = _T_36 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@37432.6]
  assign _T_61 = _T_16[0] & _T_60; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@37433.6]
  assign _T_62 = _T_38 | _T_61; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@37434.6]
  assign _T_63 = _T_39 & _T_44; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@37435.6]
  assign _T_64 = _T_16[0] & _T_63; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@37436.6]
  assign _T_65 = _T_41 | _T_64; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@37437.6]
  assign _T_66 = _T_39 & io_in_a_bits_address[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@37438.6]
  assign _T_67 = _T_16[0] & _T_66; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@37439.6]
  assign _T_68 = _T_41 | _T_67; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@37440.6]
  assign _T_75 = {_T_68,_T_65,_T_62,_T_59,_T_56,_T_53,_T_50,_T_47}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@37447.6]
  assign _T_79 = {1'b0,$signed(io_in_a_bits_address)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@37451.6]
  assign _T_87 = io_in_a_bits_opcode == 3'h6; // @[Monitor.scala 79:25:chipyard.TestHarness.RocketConfig.fir@37463.6]
  assign _T_89 = io_in_a_bits_address ^ 32'h3000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@37466.8]
  assign _T_90 = {1'b0,$signed(_T_89)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@37467.8]
  assign _T_92 = $signed(_T_90) & -33'sh1000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@37469.8]
  assign _T_93 = $signed(_T_92) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@37470.8]
  assign _T_94 = io_in_a_bits_address ^ 32'h2010000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@37471.8]
  assign _T_95 = {1'b0,$signed(_T_94)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@37472.8]
  assign _T_97 = $signed(_T_95) & -33'sh1000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@37474.8]
  assign _T_98 = $signed(_T_97) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@37475.8]
  assign _T_99 = io_in_a_bits_address ^ 32'h54000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@37476.8]
  assign _T_100 = {1'b0,$signed(_T_99)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@37477.8]
  assign _T_102 = $signed(_T_100) & -33'sh1000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@37479.8]
  assign _T_103 = $signed(_T_102) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@37480.8]
  assign _T_104 = io_in_a_bits_address ^ 32'hc000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@37481.8]
  assign _T_105 = {1'b0,$signed(_T_104)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@37482.8]
  assign _T_107 = $signed(_T_105) & -33'sh4000000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@37484.8]
  assign _T_108 = $signed(_T_107) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@37485.8]
  assign _T_109 = io_in_a_bits_address ^ 32'h2000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@37486.8]
  assign _T_110 = {1'b0,$signed(_T_109)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@37487.8]
  assign _T_112 = $signed(_T_110) & -33'sh10000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@37489.8]
  assign _T_113 = $signed(_T_112) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@37490.8]
  assign _T_117 = $signed(_T_79) & -33'sh1000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@37494.8]
  assign _T_118 = $signed(_T_117) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@37495.8]
  assign _T_119 = io_in_a_bits_address ^ 32'h10000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@37496.8]
  assign _T_120 = {1'b0,$signed(_T_119)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@37497.8]
  assign _T_122 = $signed(_T_120) & -33'sh10000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@37499.8]
  assign _T_123 = $signed(_T_122) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@37500.8]
  assign _T_124 = _T_93 | _T_98; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@37501.8]
  assign _T_125 = _T_124 | _T_103; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@37502.8]
  assign _T_126 = _T_125 | _T_108; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@37503.8]
  assign _T_127 = _T_126 | _T_113; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@37504.8]
  assign _T_128 = _T_127 | _T_118; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@37505.8]
  assign _T_131 = 4'h6 == io_in_a_bits_size; // @[Parameters.scala 92:48:chipyard.TestHarness.RocketConfig.fir@37508.8]
  assign _T_133 = io_in_a_bits_address ^ 32'h80000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@37510.8]
  assign _T_134 = {1'b0,$signed(_T_133)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@37511.8]
  assign _T_136 = $signed(_T_134) & -33'sh10000000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@37513.8]
  assign _T_137 = $signed(_T_136) == 33'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@37514.8]
  assign _T_138 = _T_131 & _T_137; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@37515.8]
  assign _T_142 = _T_138 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@37519.8]
  assign _T_143 = ~_T_142; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@37520.8]
  assign _T_146 = ~reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@37527.8]
  assign _T_152 = _T_17 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@37541.8]
  assign _T_153 = ~_T_152; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@37542.8]
  assign _T_155 = _T_11 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@37548.8]
  assign _T_156 = ~_T_155; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@37549.8]
  assign _T_161 = ~io_in_a_bits_mask; // @[Monitor.scala 86:18:chipyard.TestHarness.RocketConfig.fir@37562.8]
  assign _T_162 = _T_161 == 8'h0; // @[Monitor.scala 86:31:chipyard.TestHarness.RocketConfig.fir@37563.8]
  assign _T_164 = _T_162 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@37565.8]
  assign _T_165 = ~_T_164; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@37566.8]
  assign _T_170 = io_in_a_bits_opcode == 3'h7; // @[Monitor.scala 90:25:chipyard.TestHarness.RocketConfig.fir@37580.6]
  assign _T_257 = io_in_a_bits_opcode == 3'h4; // @[Monitor.scala 102:25:chipyard.TestHarness.RocketConfig.fir@37705.6]
  assign _T_259 = io_in_a_bits_size <= 4'hc; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@37708.8]
  assign _T_267 = _T_259 & _T_93; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@37716.8]
  assign _T_269 = io_in_a_bits_size <= 4'h6; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@37718.8]
  assign _T_307 = _T_98 | _T_103; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@37756.8]
  assign _T_308 = _T_307 | _T_108; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@37757.8]
  assign _T_309 = _T_308 | _T_113; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@37758.8]
  assign _T_310 = _T_309 | _T_118; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@37759.8]
  assign _T_311 = _T_310 | _T_123; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@37760.8]
  assign _T_312 = _T_311 | _T_137; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@37761.8]
  assign _T_313 = _T_269 & _T_312; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@37762.8]
  assign _T_315 = _T_267 | _T_313; // @[Parameters.scala 553:30:chipyard.TestHarness.RocketConfig.fir@37764.8]
  assign _T_317 = _T_315 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@37766.8]
  assign _T_318 = ~_T_317; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@37767.8]
  assign _T_329 = io_in_a_bits_mask == _T_75; // @[Monitor.scala 107:30:chipyard.TestHarness.RocketConfig.fir@37794.8]
  assign _T_331 = _T_329 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@37796.8]
  assign _T_332 = ~_T_331; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@37797.8]
  assign _T_337 = io_in_a_bits_opcode == 3'h0; // @[Monitor.scala 111:25:chipyard.TestHarness.RocketConfig.fir@37811.6]
  assign _T_386 = _T_310 | _T_137; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@37861.8]
  assign _T_387 = _T_269 & _T_386; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@37862.8]
  assign _T_396 = _T_267 | _T_387; // @[Parameters.scala 553:30:chipyard.TestHarness.RocketConfig.fir@37871.8]
  assign _T_399 = _T_396 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@37874.8]
  assign _T_400 = ~_T_399; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@37875.8]
  assign _T_415 = io_in_a_bits_opcode == 3'h1; // @[Monitor.scala 119:25:chipyard.TestHarness.RocketConfig.fir@37911.6]
  assign _T_489 = ~_T_75; // @[Monitor.scala 124:33:chipyard.TestHarness.RocketConfig.fir@38002.8]
  assign _T_490 = io_in_a_bits_mask & _T_489; // @[Monitor.scala 124:31:chipyard.TestHarness.RocketConfig.fir@38003.8]
  assign _T_491 = _T_490 == 8'h0; // @[Monitor.scala 124:40:chipyard.TestHarness.RocketConfig.fir@38004.8]
  assign _T_493 = _T_491 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@38006.8]
  assign _T_494 = ~_T_493; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@38007.8]
  assign _T_495 = io_in_a_bits_opcode == 3'h2; // @[Monitor.scala 127:25:chipyard.TestHarness.RocketConfig.fir@38013.6]
  assign _T_497 = io_in_a_bits_size <= 4'h3; // @[Parameters.scala 93:42:chipyard.TestHarness.RocketConfig.fir@38016.8]
  assign _T_540 = _T_128 | _T_137; // @[Parameters.scala 552:42:chipyard.TestHarness.RocketConfig.fir@38059.8]
  assign _T_541 = _T_497 & _T_540; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@38060.8]
  assign _T_552 = _T_541 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@38071.8]
  assign _T_553 = ~_T_552; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@38072.8]
  assign _T_568 = io_in_a_bits_opcode == 3'h3; // @[Monitor.scala 135:25:chipyard.TestHarness.RocketConfig.fir@38108.6]
  assign _T_641 = io_in_a_bits_opcode == 3'h5; // @[Monitor.scala 143:25:chipyard.TestHarness.RocketConfig.fir@38203.6]
  assign _T_698 = _T_269 & _T_137; // @[Parameters.scala 551:56:chipyard.TestHarness.RocketConfig.fir@38261.8]
  assign _T_701 = _T_267 | _T_698; // @[Parameters.scala 553:30:chipyard.TestHarness.RocketConfig.fir@38264.8]
  assign _T_703 = _T_701 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@38266.8]
  assign _T_704 = ~_T_703; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@38267.8]
  assign _T_723 = io_in_d_bits_opcode <= 3'h6; // @[Bundles.scala 44:24:chipyard.TestHarness.RocketConfig.fir@38313.6]
  assign _T_725 = _T_723 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38315.6]
  assign _T_726 = ~_T_725; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38316.6]
  assign _T_730 = io_in_d_bits_opcode == 3'h6; // @[Monitor.scala 307:25:chipyard.TestHarness.RocketConfig.fir@38326.6]
  assign _T_734 = io_in_d_bits_size >= 4'h3; // @[Monitor.scala 309:27:chipyard.TestHarness.RocketConfig.fir@38335.8]
  assign _T_736 = _T_734 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38337.8]
  assign _T_737 = ~_T_736; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38338.8]
  assign _T_738 = io_in_d_bits_param == 2'h0; // @[Monitor.scala 310:28:chipyard.TestHarness.RocketConfig.fir@38343.8]
  assign _T_740 = _T_738 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38345.8]
  assign _T_741 = ~_T_740; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38346.8]
  assign _T_742 = ~io_in_d_bits_corrupt; // @[Monitor.scala 311:15:chipyard.TestHarness.RocketConfig.fir@38351.8]
  assign _T_744 = _T_742 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38353.8]
  assign _T_745 = ~_T_744; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38354.8]
  assign _T_746 = ~io_in_d_bits_denied; // @[Monitor.scala 312:15:chipyard.TestHarness.RocketConfig.fir@38359.8]
  assign _T_748 = _T_746 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38361.8]
  assign _T_749 = ~_T_748; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38362.8]
  assign _T_750 = io_in_d_bits_opcode == 3'h4; // @[Monitor.scala 315:25:chipyard.TestHarness.RocketConfig.fir@38368.6]
  assign _T_761 = io_in_d_bits_param <= 2'h2; // @[Bundles.scala 104:26:chipyard.TestHarness.RocketConfig.fir@38392.8]
  assign _T_763 = _T_761 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38394.8]
  assign _T_764 = ~_T_763; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38395.8]
  assign _T_765 = io_in_d_bits_param != 2'h2; // @[Monitor.scala 320:28:chipyard.TestHarness.RocketConfig.fir@38400.8]
  assign _T_767 = _T_765 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38402.8]
  assign _T_768 = ~_T_767; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38403.8]
  assign _T_778 = io_in_d_bits_opcode == 3'h5; // @[Monitor.scala 325:25:chipyard.TestHarness.RocketConfig.fir@38426.6]
  assign _T_798 = _T_746 | io_in_d_bits_corrupt; // @[Monitor.scala 331:30:chipyard.TestHarness.RocketConfig.fir@38467.8]
  assign _T_800 = _T_798 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38469.8]
  assign _T_801 = ~_T_800; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38470.8]
  assign _T_807 = io_in_d_bits_opcode == 3'h0; // @[Monitor.scala 335:25:chipyard.TestHarness.RocketConfig.fir@38485.6]
  assign _T_824 = io_in_d_bits_opcode == 3'h1; // @[Monitor.scala 343:25:chipyard.TestHarness.RocketConfig.fir@38520.6]
  assign _T_842 = io_in_d_bits_opcode == 3'h2; // @[Monitor.scala 351:25:chipyard.TestHarness.RocketConfig.fir@38556.6]
  assign _T_874 = io_in_a_ready & io_in_a_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@38622.4]
  assign _T_881 = ~io_in_a_bits_opcode[2]; // @[Edges.scala 93:28:chipyard.TestHarness.RocketConfig.fir@38629.4]
  assign _T_885 = _T_883 - 9'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@38633.4]
  assign _T_886 = _T_883 == 9'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@38634.4]
  assign _T_899 = ~_T_886; // @[Monitor.scala 386:22:chipyard.TestHarness.RocketConfig.fir@38650.4]
  assign _T_900 = io_in_a_valid & _T_899; // @[Monitor.scala 386:19:chipyard.TestHarness.RocketConfig.fir@38651.4]
  assign _T_901 = io_in_a_bits_opcode == _T_894; // @[Monitor.scala 387:32:chipyard.TestHarness.RocketConfig.fir@38653.6]
  assign _T_903 = _T_901 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@38655.6]
  assign _T_904 = ~_T_903; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@38656.6]
  assign _T_909 = io_in_a_bits_size == _T_896; // @[Monitor.scala 389:32:chipyard.TestHarness.RocketConfig.fir@38669.6]
  assign _T_911 = _T_909 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@38671.6]
  assign _T_912 = ~_T_911; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@38672.6]
  assign _T_917 = io_in_a_bits_address == _T_898; // @[Monitor.scala 391:32:chipyard.TestHarness.RocketConfig.fir@38685.6]
  assign _T_919 = _T_917 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@38687.6]
  assign _T_920 = ~_T_919; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@38688.6]
  assign _T_922 = _T_874 & _T_886; // @[Monitor.scala 393:20:chipyard.TestHarness.RocketConfig.fir@38695.4]
  assign _T_923 = io_in_d_ready & io_in_d_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@38703.4]
  assign _T_925 = 27'hfff << io_in_d_bits_size; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@38705.4]
  assign _T_927 = ~_T_925[11:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@38707.4]
  assign _T_933 = _T_931 - 9'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@38713.4]
  assign _T_934 = _T_931 == 9'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@38714.4]
  assign _T_948 = ~_T_934; // @[Monitor.scala 538:22:chipyard.TestHarness.RocketConfig.fir@38731.4]
  assign _T_949 = io_in_d_valid & _T_948; // @[Monitor.scala 538:19:chipyard.TestHarness.RocketConfig.fir@38732.4]
  assign _T_950 = io_in_d_bits_opcode == _T_942; // @[Monitor.scala 539:29:chipyard.TestHarness.RocketConfig.fir@38734.6]
  assign _T_952 = _T_950 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38736.6]
  assign _T_953 = ~_T_952; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38737.6]
  assign _T_954 = io_in_d_bits_param == _T_943; // @[Monitor.scala 540:29:chipyard.TestHarness.RocketConfig.fir@38742.6]
  assign _T_956 = _T_954 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38744.6]
  assign _T_957 = ~_T_956; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38745.6]
  assign _T_958 = io_in_d_bits_size == _T_944; // @[Monitor.scala 541:29:chipyard.TestHarness.RocketConfig.fir@38750.6]
  assign _T_960 = _T_958 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38752.6]
  assign _T_961 = ~_T_960; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38753.6]
  assign _T_966 = io_in_d_bits_sink == _T_946; // @[Monitor.scala 543:29:chipyard.TestHarness.RocketConfig.fir@38766.6]
  assign _T_968 = _T_966 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38768.6]
  assign _T_969 = ~_T_968; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38769.6]
  assign _T_970 = io_in_d_bits_denied == _T_947; // @[Monitor.scala 544:29:chipyard.TestHarness.RocketConfig.fir@38774.6]
  assign _T_972 = _T_970 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38776.6]
  assign _T_973 = ~_T_972; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38777.6]
  assign _T_975 = _T_923 & _T_934; // @[Monitor.scala 546:20:chipyard.TestHarness.RocketConfig.fir@38784.4]
  assign _T_987 = _T_985 - 9'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@38807.4]
  assign a_first = _T_985 == 9'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@38808.4]
  assign _T_1005 = _T_1003 - 9'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@38829.4]
  assign d_first = _T_1003 == 9'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@38830.4]
  assign _T_1018 = 16'h10 - 16'h1; // @[Monitor.scala 606:57:chipyard.TestHarness.RocketConfig.fir@38854.4]
  assign _GEN_57 = {{12'd0}, inflight_opcodes}; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@38855.4]
  assign _T_1019 = _GEN_57 & _T_1018; // @[Monitor.scala 629:97:chipyard.TestHarness.RocketConfig.fir@38855.4]
  assign _T_1020 = {{1'd0}, _T_1019[15:1]}; // @[Monitor.scala 629:152:chipyard.TestHarness.RocketConfig.fir@38856.4]
  assign _T_1026 = 16'h100 - 16'h1; // @[Monitor.scala 606:57:chipyard.TestHarness.RocketConfig.fir@38865.4]
  assign _GEN_59 = {{8'd0}, inflight_sizes}; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@38866.4]
  assign _T_1027 = _GEN_59 & _T_1026; // @[Monitor.scala 633:91:chipyard.TestHarness.RocketConfig.fir@38866.4]
  assign _T_1028 = {{1'd0}, _T_1027[15:1]}; // @[Monitor.scala 633:144:chipyard.TestHarness.RocketConfig.fir@38867.4]
  assign _T_1032 = _T_874 & a_first; // @[Monitor.scala 643:27:chipyard.TestHarness.RocketConfig.fir@38892.4]
  assign _T_1035 = {io_in_a_bits_opcode, 1'h0}; // @[Monitor.scala 645:53:chipyard.TestHarness.RocketConfig.fir@38897.6]
  assign _T_1036 = _T_1035 | 4'h1; // @[Monitor.scala 645:61:chipyard.TestHarness.RocketConfig.fir@38898.6]
  assign _T_1037 = {io_in_a_bits_size, 1'h0}; // @[Monitor.scala 646:49:chipyard.TestHarness.RocketConfig.fir@38900.6]
  assign _T_1038 = _T_1037 | 5'h1; // @[Monitor.scala 646:57:chipyard.TestHarness.RocketConfig.fir@38901.6]
  assign a_opcodes_set_interm = _T_1032 ? _T_1036 : 4'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@38894.4]
  assign _T_1040 = {{15'd0}, a_opcodes_set_interm}; // @[Monitor.scala 647:47:chipyard.TestHarness.RocketConfig.fir@38904.6]
  assign a_sizes_set_interm = _T_1032 ? _T_1038 : 5'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@38894.4]
  assign _T_1042 = {{15'd0}, a_sizes_set_interm}; // @[Monitor.scala 648:43:chipyard.TestHarness.RocketConfig.fir@38907.6]
  assign _T_1045 = ~inflight; // @[Monitor.scala 649:17:chipyard.TestHarness.RocketConfig.fir@38911.6]
  assign _T_1047 = _T_1045 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@38913.6]
  assign _T_1048 = ~_T_1047; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@38914.6]
  assign _GEN_15 = _T_1032 ? 2'h1 : 2'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@38894.4]
  assign _GEN_18 = _T_1032 ? _T_1040 : 19'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@38894.4]
  assign _GEN_19 = _T_1032 ? _T_1042 : 20'h0; // @[Monitor.scala 643:72:chipyard.TestHarness.RocketConfig.fir@38894.4]
  assign _T_1051 = _T_923 & d_first; // @[Monitor.scala 660:27:chipyard.TestHarness.RocketConfig.fir@38928.4]
  assign _T_1053 = ~_T_730; // @[Monitor.scala 660:75:chipyard.TestHarness.RocketConfig.fir@38930.4]
  assign _T_1054 = _T_1051 & _T_1053; // @[Monitor.scala 660:72:chipyard.TestHarness.RocketConfig.fir@38931.4]
  assign _T_1061 = {{15'd0}, _T_1018}; // @[Monitor.scala 662:76:chipyard.TestHarness.RocketConfig.fir@38940.6]
  assign _T_1067 = {{15'd0}, _T_1026}; // @[Monitor.scala 663:72:chipyard.TestHarness.RocketConfig.fir@38947.6]
  assign _GEN_20 = _T_1054 ? 2'h1 : 2'h0; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@38932.4]
  assign _GEN_21 = _T_1054 ? _T_1061 : 31'h0; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@38932.4]
  assign _GEN_22 = _T_1054 ? _T_1067 : 31'h0; // @[Monitor.scala 660:91:chipyard.TestHarness.RocketConfig.fir@38932.4]
  assign _T_1068 = io_in_d_valid & d_first; // @[Monitor.scala 665:26:chipyard.TestHarness.RocketConfig.fir@38950.4]
  assign _T_1071 = _T_1068 & _T_1053; // @[Monitor.scala 665:71:chipyard.TestHarness.RocketConfig.fir@38953.4]
  assign _T_1076 = io_in_a_bits_size == io_in_d_bits_size; // @[Monitor.scala 666:142:chipyard.TestHarness.RocketConfig.fir@38959.6]
  assign _T_1077 = io_in_a_valid & _T_1076; // @[Monitor.scala 666:119:chipyard.TestHarness.RocketConfig.fir@38960.6]
  assign _T_1078 = _T_1077 & a_first; // @[Monitor.scala 666:166:chipyard.TestHarness.RocketConfig.fir@38961.6]
  assign _T_1079 = inflight | _T_1078; // @[Monitor.scala 666:49:chipyard.TestHarness.RocketConfig.fir@38962.6]
  assign _T_1081 = _T_1079 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38964.6]
  assign _T_1082 = ~_T_1081; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38965.6]
  assign a_opcode_lookup = _T_1020[3:0]; // @[:chipyard.TestHarness.RocketConfig.fir@38847.4 :chipyard.TestHarness.RocketConfig.fir@38848.4 Monitor.scala 629:21:chipyard.TestHarness.RocketConfig.fir@38857.4]
  assign _GEN_25 = 3'h2 == a_opcode_lookup[2:0] ? 3'h1 : 3'h0; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@38971.6]
  assign _GEN_26 = 3'h3 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_25; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@38971.6]
  assign _GEN_27 = 3'h4 == a_opcode_lookup[2:0] ? 3'h1 : _GEN_26; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@38971.6]
  assign _GEN_28 = 3'h5 == a_opcode_lookup[2:0] ? 3'h2 : _GEN_27; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@38971.6]
  assign _GEN_29 = 3'h6 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_28; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@38971.6]
  assign _GEN_30 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_29; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@38971.6]
  assign _T_1084 = io_in_d_bits_opcode == _GEN_30; // @[Monitor.scala 667:37:chipyard.TestHarness.RocketConfig.fir@38971.6]
  assign _GEN_37 = 3'h6 == a_opcode_lookup[2:0] ? 3'h5 : _GEN_28; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@38973.6]
  assign _GEN_38 = 3'h7 == a_opcode_lookup[2:0] ? 3'h4 : _GEN_37; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@38973.6]
  assign _T_1086 = io_in_d_bits_opcode == _GEN_38; // @[Monitor.scala 667:96:chipyard.TestHarness.RocketConfig.fir@38973.6]
  assign _T_1087 = _T_1084 | _T_1086; // @[Monitor.scala 667:71:chipyard.TestHarness.RocketConfig.fir@38974.6]
  assign _GEN_41 = 3'h2 == io_in_a_bits_opcode ? 3'h1 : 3'h0; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@38975.6]
  assign _GEN_42 = 3'h3 == io_in_a_bits_opcode ? 3'h1 : _GEN_41; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@38975.6]
  assign _GEN_43 = 3'h4 == io_in_a_bits_opcode ? 3'h1 : _GEN_42; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@38975.6]
  assign _GEN_44 = 3'h5 == io_in_a_bits_opcode ? 3'h2 : _GEN_43; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@38975.6]
  assign _GEN_45 = 3'h6 == io_in_a_bits_opcode ? 3'h4 : _GEN_44; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@38975.6]
  assign _GEN_46 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_45; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@38975.6]
  assign _T_1088 = io_in_d_bits_opcode == _GEN_46; // @[Monitor.scala 668:60:chipyard.TestHarness.RocketConfig.fir@38975.6]
  assign _GEN_53 = 3'h6 == io_in_a_bits_opcode ? 3'h5 : _GEN_44; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@38976.6]
  assign _GEN_54 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_53; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@38976.6]
  assign _T_1089 = io_in_d_bits_opcode == _GEN_54; // @[Monitor.scala 668:124:chipyard.TestHarness.RocketConfig.fir@38976.6]
  assign _T_1090 = _T_1088 | _T_1089; // @[Monitor.scala 668:99:chipyard.TestHarness.RocketConfig.fir@38977.6]
  assign _T_1091 = io_in_a_valid & _T_1090; // @[Monitor.scala 668:34:chipyard.TestHarness.RocketConfig.fir@38978.6]
  assign _T_1092 = _T_1087 | _T_1091; // @[Monitor.scala 668:15:chipyard.TestHarness.RocketConfig.fir@38979.6]
  assign _T_1094 = _T_1092 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38981.6]
  assign _T_1095 = ~_T_1094; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38982.6]
  assign a_size_lookup = _T_1028[7:0]; // @[:chipyard.TestHarness.RocketConfig.fir@38858.4 :chipyard.TestHarness.RocketConfig.fir@38859.4 Monitor.scala 633:19:chipyard.TestHarness.RocketConfig.fir@38868.4]
  assign _GEN_61 = {{4'd0}, io_in_d_bits_size}; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@38987.6]
  assign _T_1096 = _GEN_61 == a_size_lookup; // @[Monitor.scala 670:34:chipyard.TestHarness.RocketConfig.fir@38987.6]
  assign _T_1099 = _T_1096 | _T_1077; // @[Monitor.scala 670:53:chipyard.TestHarness.RocketConfig.fir@38990.6]
  assign _T_1101 = _T_1099 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38992.6]
  assign _T_1102 = ~_T_1101; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38993.6]
  assign _T_1104 = _T_1068 & a_first; // @[Monitor.scala 672:36:chipyard.TestHarness.RocketConfig.fir@39000.4]
  assign _T_1105 = _T_1104 & io_in_a_valid; // @[Monitor.scala 672:47:chipyard.TestHarness.RocketConfig.fir@39001.4]
  assign _T_1109 = _T_1105 & _T_1053; // @[Monitor.scala 672:116:chipyard.TestHarness.RocketConfig.fir@39005.4]
  assign _T_1110 = ~io_in_d_ready; // @[Monitor.scala 673:15:chipyard.TestHarness.RocketConfig.fir@39007.6]
  assign _T_1111 = _T_1110 | io_in_a_ready; // @[Monitor.scala 673:32:chipyard.TestHarness.RocketConfig.fir@39008.6]
  assign _T_1113 = _T_1111 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@39010.6]
  assign _T_1114 = ~_T_1113; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@39011.6]
  assign a_set = _GEN_15[0]; // @[:chipyard.TestHarness.RocketConfig.fir@38841.4 :chipyard.TestHarness.RocketConfig.fir@38842.4 Monitor.scala 644:13:chipyard.TestHarness.RocketConfig.fir@38896.6]
  assign d_clr = _GEN_20[0]; // @[:chipyard.TestHarness.RocketConfig.fir@38920.4 :chipyard.TestHarness.RocketConfig.fir@38921.4 Monitor.scala 661:13:chipyard.TestHarness.RocketConfig.fir@38934.6]
  assign _T_1115 = a_set != d_clr; // @[Monitor.scala 677:20:chipyard.TestHarness.RocketConfig.fir@39017.4]
  assign _T_1116 = |a_set; // @[Monitor.scala 677:40:chipyard.TestHarness.RocketConfig.fir@39018.4]
  assign _T_1117 = ~_T_1116; // @[Monitor.scala 677:33:chipyard.TestHarness.RocketConfig.fir@39019.4]
  assign _T_1118 = _T_1115 | _T_1117; // @[Monitor.scala 677:30:chipyard.TestHarness.RocketConfig.fir@39020.4]
  assign _T_1120 = _T_1118 | reset; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@39022.4]
  assign _T_1121 = ~_T_1120; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@39023.4]
  assign _T_1122 = inflight | a_set; // @[Monitor.scala 680:27:chipyard.TestHarness.RocketConfig.fir@39028.4]
  assign _T_1123 = ~d_clr; // @[Monitor.scala 680:38:chipyard.TestHarness.RocketConfig.fir@39029.4]
  assign _T_1124 = _T_1122 & _T_1123; // @[Monitor.scala 680:36:chipyard.TestHarness.RocketConfig.fir@39030.4]
  assign a_opcodes_set = _GEN_18[3:0]; // @[:chipyard.TestHarness.RocketConfig.fir@38843.4 :chipyard.TestHarness.RocketConfig.fir@38844.4 Monitor.scala 647:21:chipyard.TestHarness.RocketConfig.fir@38905.6]
  assign _T_1125 = inflight_opcodes | a_opcodes_set; // @[Monitor.scala 681:43:chipyard.TestHarness.RocketConfig.fir@39032.4]
  assign d_opcodes_clr = _GEN_21[3:0]; // @[:chipyard.TestHarness.RocketConfig.fir@38922.4 :chipyard.TestHarness.RocketConfig.fir@38923.4 Monitor.scala 662:21:chipyard.TestHarness.RocketConfig.fir@38941.6]
  assign _T_1126 = ~d_opcodes_clr; // @[Monitor.scala 681:62:chipyard.TestHarness.RocketConfig.fir@39033.4]
  assign _T_1127 = _T_1125 & _T_1126; // @[Monitor.scala 681:60:chipyard.TestHarness.RocketConfig.fir@39034.4]
  assign a_sizes_set = _GEN_19[7:0]; // @[:chipyard.TestHarness.RocketConfig.fir@38845.4 :chipyard.TestHarness.RocketConfig.fir@38846.4 Monitor.scala 648:19:chipyard.TestHarness.RocketConfig.fir@38908.6]
  assign _T_1128 = inflight_sizes | a_sizes_set; // @[Monitor.scala 682:39:chipyard.TestHarness.RocketConfig.fir@39036.4]
  assign d_sizes_clr = _GEN_22[7:0]; // @[:chipyard.TestHarness.RocketConfig.fir@38924.4 :chipyard.TestHarness.RocketConfig.fir@38925.4 Monitor.scala 663:19:chipyard.TestHarness.RocketConfig.fir@38948.6]
  assign _T_1129 = ~d_sizes_clr; // @[Monitor.scala 682:56:chipyard.TestHarness.RocketConfig.fir@39037.4]
  assign _T_1130 = _T_1128 & _T_1129; // @[Monitor.scala 682:54:chipyard.TestHarness.RocketConfig.fir@39038.4]
  assign _T_1132 = |inflight; // @[Monitor.scala 687:26:chipyard.TestHarness.RocketConfig.fir@39043.4]
  assign _T_1133 = ~_T_1132; // @[Monitor.scala 687:16:chipyard.TestHarness.RocketConfig.fir@39044.4]
  assign _T_1134 = plusarg_reader_out == 32'h0; // @[Monitor.scala 687:39:chipyard.TestHarness.RocketConfig.fir@39045.4]
  assign _T_1135 = _T_1133 | _T_1134; // @[Monitor.scala 687:30:chipyard.TestHarness.RocketConfig.fir@39046.4]
  assign _T_1136 = _T_1131 < plusarg_reader_out; // @[Monitor.scala 687:59:chipyard.TestHarness.RocketConfig.fir@39047.4]
  assign _T_1137 = _T_1135 | _T_1136; // @[Monitor.scala 687:47:chipyard.TestHarness.RocketConfig.fir@39048.4]
  assign _T_1139 = _T_1137 | reset; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39050.4]
  assign _T_1140 = ~_T_1139; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39051.4]
  assign _T_1142 = _T_1131 + 32'h1; // @[Monitor.scala 689:26:chipyard.TestHarness.RocketConfig.fir@39057.4]
  assign _T_1145 = _T_874 | _T_923; // @[Monitor.scala 690:27:chipyard.TestHarness.RocketConfig.fir@39061.4]
  assign _GEN_62 = io_in_a_valid & _T_87; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@37522.10]
  assign _GEN_72 = io_in_a_valid & _T_170; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@37639.10]
  assign _GEN_84 = io_in_a_valid & _T_257; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@37769.10]
  assign _GEN_90 = io_in_a_valid & _T_337; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@37877.10]
  assign _GEN_96 = io_in_a_valid & _T_415; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@37977.10]
  assign _GEN_102 = io_in_a_valid & _T_495; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@38074.10]
  assign _GEN_108 = io_in_a_valid & _T_568; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@38169.10]
  assign _GEN_114 = io_in_a_valid & _T_641; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@38269.10]
  assign _GEN_120 = io_in_d_valid & _T_730; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38340.10]
  assign _GEN_128 = io_in_d_valid & _T_750; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38389.10]
  assign _GEN_136 = io_in_d_valid & _T_778; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38447.10]
  assign _GEN_144 = io_in_d_valid & _T_807; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38499.10]
  assign _GEN_148 = io_in_d_valid & _T_824; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38534.10]
  assign _GEN_152 = io_in_d_valid & _T_842; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38570.10]
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
  _T_883 = _RAND_0[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_894 = _RAND_1[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_896 = _RAND_2[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_898 = _RAND_3[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_931 = _RAND_4[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_942 = _RAND_5[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  _T_943 = _RAND_6[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  _T_944 = _RAND_7[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  _T_946 = _RAND_8[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  _T_947 = _RAND_9[0:0];
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
  inflight_sizes = _RAND_12[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  _T_985 = _RAND_13[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  _T_1003 = _RAND_14[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  _T_1131 = _RAND_15[31:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      _T_883 <= 9'h0;
    end else if (_T_874) begin
      if (_T_886) begin
        if (_T_881) begin
          _T_883 <= _T_9[11:3];
        end else begin
          _T_883 <= 9'h0;
        end
      end else begin
        _T_883 <= _T_885;
      end
    end
    if (_T_922) begin
      _T_894 <= io_in_a_bits_opcode;
    end
    if (_T_922) begin
      _T_896 <= io_in_a_bits_size;
    end
    if (_T_922) begin
      _T_898 <= io_in_a_bits_address;
    end
    if (reset) begin
      _T_931 <= 9'h0;
    end else if (_T_923) begin
      if (_T_934) begin
        if (io_in_d_bits_opcode[0]) begin
          _T_931 <= _T_927[11:3];
        end else begin
          _T_931 <= 9'h0;
        end
      end else begin
        _T_931 <= _T_933;
      end
    end
    if (_T_975) begin
      _T_942 <= io_in_d_bits_opcode;
    end
    if (_T_975) begin
      _T_943 <= io_in_d_bits_param;
    end
    if (_T_975) begin
      _T_944 <= io_in_d_bits_size;
    end
    if (_T_975) begin
      _T_946 <= io_in_d_bits_sink;
    end
    if (_T_975) begin
      _T_947 <= io_in_d_bits_denied;
    end
    if (reset) begin
      inflight <= 1'h0;
    end else begin
      inflight <= _T_1124;
    end
    if (reset) begin
      inflight_opcodes <= 4'h0;
    end else begin
      inflight_opcodes <= _T_1127;
    end
    if (reset) begin
      inflight_sizes <= 8'h0;
    end else begin
      inflight_sizes <= _T_1130;
    end
    if (reset) begin
      _T_985 <= 9'h0;
    end else if (_T_874) begin
      if (a_first) begin
        if (_T_881) begin
          _T_985 <= _T_9[11:3];
        end else begin
          _T_985 <= 9'h0;
        end
      end else begin
        _T_985 <= _T_987;
      end
    end
    if (reset) begin
      _T_1003 <= 9'h0;
    end else if (_T_923) begin
      if (d_first) begin
        if (io_in_d_bits_opcode[0]) begin
          _T_1003 <= _T_927[11:3];
        end else begin
          _T_1003 <= 9'h0;
        end
      end else begin
        _T_1003 <= _T_1005;
      end
    end
    if (reset) begin
      _T_1131 <= 32'h0;
    end else if (_T_1145) begin
      _T_1131 <= 32'h0;
    end else begin
      _T_1131 <= _T_1142;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_62 & _T_143) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock type unsupported by manager (connected at BusWrapper.scala:333:39)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@37522.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_62 & _T_143) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@37523.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_62 & _T_146) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock from a client which does not support Probe (connected at BusWrapper.scala:333:39)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@37529.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_62 & _T_146) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@37530.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_62 & _T_153) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock smaller than a beat (connected at BusWrapper.scala:333:39)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@37544.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_62 & _T_153) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@37545.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_62 & _T_156) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock address not aligned to size (connected at BusWrapper.scala:333:39)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@37551.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_62 & _T_156) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@37552.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_62 & _T_165) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock contains invalid mask (connected at BusWrapper.scala:333:39)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@37568.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_62 & _T_165) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@37569.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_72 & _T_143) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm type unsupported by manager (connected at BusWrapper.scala:333:39)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@37639.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_72 & _T_143) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@37640.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_72 & _T_146) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm from a client which does not support Probe (connected at BusWrapper.scala:333:39)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@37646.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_72 & _T_146) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@37647.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_72 & _T_153) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm smaller than a beat (connected at BusWrapper.scala:333:39)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@37661.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_72 & _T_153) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@37662.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_72 & _T_156) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm address not aligned to size (connected at BusWrapper.scala:333:39)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@37668.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_72 & _T_156) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@37669.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_72 & _T_146) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm requests NtoB (connected at BusWrapper.scala:333:39)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@37684.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_72 & _T_146) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@37685.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_72 & _T_165) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm contains invalid mask (connected at BusWrapper.scala:333:39)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@37693.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_72 & _T_165) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@37694.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_84 & _T_318) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Get type unsupported by manager (connected at BusWrapper.scala:333:39)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@37769.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_84 & _T_318) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@37770.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_84 & _T_156) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get address not aligned to size (connected at BusWrapper.scala:333:39)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@37783.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_84 & _T_156) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@37784.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_84 & _T_332) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get contains invalid mask (connected at BusWrapper.scala:333:39)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@37799.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_84 & _T_332) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@37800.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_90 & _T_400) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutFull type unsupported by manager (connected at BusWrapper.scala:333:39)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@37877.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_90 & _T_400) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@37878.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_90 & _T_156) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull address not aligned to size (connected at BusWrapper.scala:333:39)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@37891.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_90 & _T_156) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@37892.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_90 & _T_332) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull contains invalid mask (connected at BusWrapper.scala:333:39)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@37907.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_90 & _T_332) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@37908.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_96 & _T_400) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutPartial type unsupported by manager (connected at BusWrapper.scala:333:39)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@37977.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_96 & _T_400) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@37978.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_96 & _T_156) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial address not aligned to size (connected at BusWrapper.scala:333:39)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@37991.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_96 & _T_156) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@37992.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_96 & _T_494) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial contains invalid mask (connected at BusWrapper.scala:333:39)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@38009.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_96 & _T_494) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@38010.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_102 & _T_553) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Arithmetic type unsupported by manager (connected at BusWrapper.scala:333:39)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@38074.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_102 & _T_553) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@38075.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_102 & _T_156) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic address not aligned to size (connected at BusWrapper.scala:333:39)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@38088.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_102 & _T_156) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@38089.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_102 & _T_332) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic contains invalid mask (connected at BusWrapper.scala:333:39)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@38104.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_102 & _T_332) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@38105.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_108 & _T_553) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Logical type unsupported by manager (connected at BusWrapper.scala:333:39)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@38169.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_108 & _T_553) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@38170.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_108 & _T_156) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical address not aligned to size (connected at BusWrapper.scala:333:39)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@38183.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_108 & _T_156) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@38184.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_108 & _T_332) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical contains invalid mask (connected at BusWrapper.scala:333:39)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@38199.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_108 & _T_332) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@38200.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_114 & _T_704) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Hint type unsupported by manager (connected at BusWrapper.scala:333:39)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@38269.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_114 & _T_704) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@38270.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_114 & _T_156) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint address not aligned to size (connected at BusWrapper.scala:333:39)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@38283.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_114 & _T_156) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@38284.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_114 & _T_332) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint contains invalid mask (connected at BusWrapper.scala:333:39)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@38299.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_114 & _T_332) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@38300.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_in_d_valid & _T_726) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel has invalid opcode (connected at BusWrapper.scala:333:39)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38318.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (io_in_d_valid & _T_726) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38319.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_120 & _T_737) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck smaller than a beat (connected at BusWrapper.scala:333:39)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38340.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_120 & _T_737) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38341.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_120 & _T_741) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseeAck carries invalid param (connected at BusWrapper.scala:333:39)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38348.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_120 & _T_741) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38349.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_120 & _T_745) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck is corrupt (connected at BusWrapper.scala:333:39)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38356.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_120 & _T_745) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38357.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_120 & _T_749) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck is denied (connected at BusWrapper.scala:333:39)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38364.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_120 & _T_749) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38365.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_128 & _T_737) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant smaller than a beat (connected at BusWrapper.scala:333:39)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38389.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_128 & _T_737) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38390.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_128 & _T_764) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid cap param (connected at BusWrapper.scala:333:39)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38397.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_128 & _T_764) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38398.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_128 & _T_768) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries toN param (connected at BusWrapper.scala:333:39)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38405.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_128 & _T_768) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38406.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_128 & _T_745) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant is corrupt (connected at BusWrapper.scala:333:39)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38413.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_128 & _T_745) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38414.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_136 & _T_737) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData smaller than a beat (connected at BusWrapper.scala:333:39)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38447.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_136 & _T_737) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38448.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_136 & _T_764) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid cap param (connected at BusWrapper.scala:333:39)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38455.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_136 & _T_764) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38456.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_136 & _T_768) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries toN param (connected at BusWrapper.scala:333:39)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38463.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_136 & _T_768) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38464.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_136 & _T_801) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData is denied but not corrupt (connected at BusWrapper.scala:333:39)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38472.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_136 & _T_801) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38473.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_144 & _T_741) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck carries invalid param (connected at BusWrapper.scala:333:39)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38499.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_144 & _T_741) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38500.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_144 & _T_745) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck is corrupt (connected at BusWrapper.scala:333:39)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38507.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_144 & _T_745) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38508.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_148 & _T_741) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData carries invalid param (connected at BusWrapper.scala:333:39)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38534.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_148 & _T_741) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38535.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_148 & _T_801) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData is denied but not corrupt (connected at BusWrapper.scala:333:39)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38543.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_148 & _T_801) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38544.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_152 & _T_741) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck carries invalid param (connected at BusWrapper.scala:333:39)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38570.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_152 & _T_741) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38571.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_152 & _T_745) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck is corrupt (connected at BusWrapper.scala:333:39)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38578.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_152 & _T_745) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38579.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_900 & _T_904) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel opcode changed within multibeat operation (connected at BusWrapper.scala:333:39)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@38658.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_900 & _T_904) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@38659.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_900 & _T_912) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel size changed within multibeat operation (connected at BusWrapper.scala:333:39)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@38674.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_900 & _T_912) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@38675.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_900 & _T_920) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel address changed with multibeat operation (connected at BusWrapper.scala:333:39)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@38690.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_900 & _T_920) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@38691.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_949 & _T_953) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel opcode changed within multibeat operation (connected at BusWrapper.scala:333:39)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38739.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_949 & _T_953) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38740.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_949 & _T_957) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel param changed within multibeat operation (connected at BusWrapper.scala:333:39)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38747.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_949 & _T_957) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38748.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_949 & _T_961) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel size changed within multibeat operation (connected at BusWrapper.scala:333:39)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38755.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_949 & _T_961) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38756.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_949 & _T_969) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel sink changed with multibeat operation (connected at BusWrapper.scala:333:39)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38771.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_949 & _T_969) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38772.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_949 & _T_973) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel denied changed with multibeat operation (connected at BusWrapper.scala:333:39)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38779.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_949 & _T_973) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38780.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1032 & _T_1048) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel re-used a source ID (connected at BusWrapper.scala:333:39)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@38916.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1032 & _T_1048) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@38917.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1071 & _T_1082) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel acknowledged for nothing inflight (connected at BusWrapper.scala:333:39)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38967.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1071 & _T_1082) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38968.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1071 & _T_1095) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper opcode response (connected at BusWrapper.scala:333:39)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38984.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1071 & _T_1095) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38985.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1071 & _T_1102) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel contains improper response size (connected at BusWrapper.scala:333:39)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38995.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1071 & _T_1102) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@38996.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1109 & _T_1114) begin
          $fwrite(32'h80000002,"Assertion failed: ready check\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@39013.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1109 & _T_1114) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@39014.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1121) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' and 'D' concurrent, despite minlatency 4 (connected at BusWrapper.scala:333:39)\n    at Monitor.scala:51 assert(cond, message)\n"); // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@39025.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1121) begin
          $fatal; // @[Monitor.scala 51:11:chipyard.TestHarness.RocketConfig.fir@39026.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1140) begin
          $fwrite(32'h80000002,"Assertion failed: TileLink timeout expired (connected at BusWrapper.scala:333:39)\n    at Monitor.scala:44 assert(cond, message)\n"); // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39053.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1140) begin
          $fatal; // @[Monitor.scala 44:11:chipyard.TestHarness.RocketConfig.fir@39054.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
