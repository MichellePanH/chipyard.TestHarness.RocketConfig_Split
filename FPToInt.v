module FPToInt( // @[:chipyard.TestHarness.RocketConfig.fir@234902.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@234903.4]
  input         io_in_valid, // @[:chipyard.TestHarness.RocketConfig.fir@234905.4]
  input         io_in_bits_ren2, // @[:chipyard.TestHarness.RocketConfig.fir@234905.4]
  input         io_in_bits_singleIn, // @[:chipyard.TestHarness.RocketConfig.fir@234905.4]
  input         io_in_bits_singleOut, // @[:chipyard.TestHarness.RocketConfig.fir@234905.4]
  input         io_in_bits_wflags, // @[:chipyard.TestHarness.RocketConfig.fir@234905.4]
  input  [2:0]  io_in_bits_rm, // @[:chipyard.TestHarness.RocketConfig.fir@234905.4]
  input  [1:0]  io_in_bits_typ, // @[:chipyard.TestHarness.RocketConfig.fir@234905.4]
  input  [64:0] io_in_bits_in1, // @[:chipyard.TestHarness.RocketConfig.fir@234905.4]
  input  [64:0] io_in_bits_in2, // @[:chipyard.TestHarness.RocketConfig.fir@234905.4]
  output [2:0]  io_out_bits_in_rm, // @[:chipyard.TestHarness.RocketConfig.fir@234905.4]
  output [64:0] io_out_bits_in_in1, // @[:chipyard.TestHarness.RocketConfig.fir@234905.4]
  output [64:0] io_out_bits_in_in2, // @[:chipyard.TestHarness.RocketConfig.fir@234905.4]
  output        io_out_bits_lt, // @[:chipyard.TestHarness.RocketConfig.fir@234905.4]
  output [63:0] io_out_bits_store, // @[:chipyard.TestHarness.RocketConfig.fir@234905.4]
  output [63:0] io_out_bits_toint, // @[:chipyard.TestHarness.RocketConfig.fir@234905.4]
  output [4:0]  io_out_bits_exc // @[:chipyard.TestHarness.RocketConfig.fir@234905.4]
);
  wire [64:0] dcmp_io_a; // @[FPU.scala 415:20:chipyard.TestHarness.RocketConfig.fir@234937.4]
  wire [64:0] dcmp_io_b; // @[FPU.scala 415:20:chipyard.TestHarness.RocketConfig.fir@234937.4]
  wire  dcmp_io_signaling; // @[FPU.scala 415:20:chipyard.TestHarness.RocketConfig.fir@234937.4]
  wire  dcmp_io_lt; // @[FPU.scala 415:20:chipyard.TestHarness.RocketConfig.fir@234937.4]
  wire  dcmp_io_eq; // @[FPU.scala 415:20:chipyard.TestHarness.RocketConfig.fir@234937.4]
  wire [4:0] dcmp_io_exceptionFlags; // @[FPU.scala 415:20:chipyard.TestHarness.RocketConfig.fir@234937.4]
  wire [64:0] RecFNToIN_io_in; // @[FPU.scala 442:24:chipyard.TestHarness.RocketConfig.fir@235202.8]
  wire [2:0] RecFNToIN_io_roundingMode; // @[FPU.scala 442:24:chipyard.TestHarness.RocketConfig.fir@235202.8]
  wire  RecFNToIN_io_signedOut; // @[FPU.scala 442:24:chipyard.TestHarness.RocketConfig.fir@235202.8]
  wire [63:0] RecFNToIN_io_out; // @[FPU.scala 442:24:chipyard.TestHarness.RocketConfig.fir@235202.8]
  wire [2:0] RecFNToIN_io_intExceptionFlags; // @[FPU.scala 442:24:chipyard.TestHarness.RocketConfig.fir@235202.8]
  wire [64:0] RecFNToIN_1_io_in; // @[FPU.scala 452:30:chipyard.TestHarness.RocketConfig.fir@235218.10]
  wire [2:0] RecFNToIN_1_io_roundingMode; // @[FPU.scala 452:30:chipyard.TestHarness.RocketConfig.fir@235218.10]
  wire  RecFNToIN_1_io_signedOut; // @[FPU.scala 452:30:chipyard.TestHarness.RocketConfig.fir@235218.10]
  wire [2:0] RecFNToIN_1_io_intExceptionFlags; // @[FPU.scala 452:30:chipyard.TestHarness.RocketConfig.fir@235218.10]
  reg  in_ren2; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@234910.4]
  reg [31:0] _RAND_0;
  reg  in_singleOut; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@234910.4]
  reg [31:0] _RAND_1;
  reg  in_wflags; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@234910.4]
  reg [31:0] _RAND_2;
  reg [2:0] in_rm; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@234910.4]
  reg [31:0] _RAND_3;
  reg [1:0] in_typ; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@234910.4]
  reg [31:0] _RAND_4;
  reg [64:0] in_in1; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@234910.4]
  reg [95:0] _RAND_5;
  reg [64:0] in_in2; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@234910.4]
  reg [95:0] _RAND_6;
  wire  tag; // @[FPU.scala 420:13:chipyard.TestHarness.RocketConfig.fir@234944.4]
  wire  _T_4; // @[rawFloatFromRecFN.scala 51:54:chipyard.TestHarness.RocketConfig.fir@234947.4]
  wire  _T_6; // @[rawFloatFromRecFN.scala 52:54:chipyard.TestHarness.RocketConfig.fir@234949.4]
  wire  _T_9; // @[rawFloatFromRecFN.scala 55:33:chipyard.TestHarness.RocketConfig.fir@234953.4]
  wire  _T_11; // @[rawFloatFromRecFN.scala 56:36:chipyard.TestHarness.RocketConfig.fir@234956.4]
  wire  _T_12; // @[rawFloatFromRecFN.scala 56:33:chipyard.TestHarness.RocketConfig.fir@234957.4]
  wire [12:0] _T_14; // @[rawFloatFromRecFN.scala 59:27:chipyard.TestHarness.RocketConfig.fir@234962.4]
  wire  _T_15; // @[rawFloatFromRecFN.scala 60:39:chipyard.TestHarness.RocketConfig.fir@234964.4]
  wire [53:0] _T_18; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@234967.4]
  wire  _T_19; // @[fNFromRecFN.scala 50:39:chipyard.TestHarness.RocketConfig.fir@234969.4]
  wire [5:0] _T_22; // @[fNFromRecFN.scala 51:39:chipyard.TestHarness.RocketConfig.fir@234972.4]
  wire [52:0] _T_24; // @[fNFromRecFN.scala 52:42:chipyard.TestHarness.RocketConfig.fir@234974.4]
  wire [10:0] _T_28; // @[fNFromRecFN.scala 57:45:chipyard.TestHarness.RocketConfig.fir@234978.4]
  wire [10:0] _T_29; // @[fNFromRecFN.scala 55:16:chipyard.TestHarness.RocketConfig.fir@234979.4]
  wire  _T_30; // @[fNFromRecFN.scala 59:44:chipyard.TestHarness.RocketConfig.fir@234980.4]
  wire [10:0] _T_32; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@234982.4]
  wire [10:0] _T_33; // @[fNFromRecFN.scala 59:15:chipyard.TestHarness.RocketConfig.fir@234983.4]
  wire [51:0] _T_35; // @[fNFromRecFN.scala 63:20:chipyard.TestHarness.RocketConfig.fir@234985.4]
  wire [51:0] _T_36; // @[fNFromRecFN.scala 61:16:chipyard.TestHarness.RocketConfig.fir@234986.4]
  wire [63:0] _T_38; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@234988.4]
  wire [32:0] _T_43; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@234993.4]
  wire  _T_46; // @[rawFloatFromRecFN.scala 51:54:chipyard.TestHarness.RocketConfig.fir@234996.4]
  wire  _T_48; // @[rawFloatFromRecFN.scala 52:54:chipyard.TestHarness.RocketConfig.fir@234998.4]
  wire  _T_51; // @[rawFloatFromRecFN.scala 55:33:chipyard.TestHarness.RocketConfig.fir@235002.4]
  wire  _T_53; // @[rawFloatFromRecFN.scala 56:36:chipyard.TestHarness.RocketConfig.fir@235005.4]
  wire  _T_54; // @[rawFloatFromRecFN.scala 56:33:chipyard.TestHarness.RocketConfig.fir@235006.4]
  wire [9:0] _T_56; // @[rawFloatFromRecFN.scala 59:27:chipyard.TestHarness.RocketConfig.fir@235011.4]
  wire  _T_57; // @[rawFloatFromRecFN.scala 60:39:chipyard.TestHarness.RocketConfig.fir@235013.4]
  wire [24:0] _T_60; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@235016.4]
  wire  _T_61; // @[fNFromRecFN.scala 50:39:chipyard.TestHarness.RocketConfig.fir@235018.4]
  wire [4:0] _T_64; // @[fNFromRecFN.scala 51:39:chipyard.TestHarness.RocketConfig.fir@235021.4]
  wire [23:0] _T_66; // @[fNFromRecFN.scala 52:42:chipyard.TestHarness.RocketConfig.fir@235023.4]
  wire [7:0] _T_70; // @[fNFromRecFN.scala 57:45:chipyard.TestHarness.RocketConfig.fir@235027.4]
  wire [7:0] _T_71; // @[fNFromRecFN.scala 55:16:chipyard.TestHarness.RocketConfig.fir@235028.4]
  wire  _T_72; // @[fNFromRecFN.scala 59:44:chipyard.TestHarness.RocketConfig.fir@235029.4]
  wire [7:0] _T_74; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@235031.4]
  wire [7:0] _T_75; // @[fNFromRecFN.scala 59:15:chipyard.TestHarness.RocketConfig.fir@235032.4]
  wire [22:0] _T_77; // @[fNFromRecFN.scala 63:20:chipyard.TestHarness.RocketConfig.fir@235034.4]
  wire [22:0] _T_78; // @[fNFromRecFN.scala 61:16:chipyard.TestHarness.RocketConfig.fir@235035.4]
  wire [31:0] _T_80; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@235037.4]
  wire  _T_83; // @[FPU.scala 200:56:chipyard.TestHarness.RocketConfig.fir@235040.4]
  wire [31:0] _T_85; // @[FPU.scala 391:44:chipyard.TestHarness.RocketConfig.fir@235042.4]
  wire [63:0] store; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@235043.4]
  wire [63:0] _T_87; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@235051.4]
  wire  _T_223; // @[FPU.scala 439:11:chipyard.TestHarness.RocketConfig.fir@235198.6]
  wire  _T_232; // @[FPU.scala 451:23:chipyard.TestHarness.RocketConfig.fir@235216.8]
  wire  _T_247; // @[FPU.scala 459:54:chipyard.TestHarness.RocketConfig.fir@235237.10]
  wire  _T_238; // @[FPU.scala 457:62:chipyard.TestHarness.RocketConfig.fir@235228.10]
  wire  _T_239; // @[FPU.scala 457:59:chipyard.TestHarness.RocketConfig.fir@235229.10]
  wire  _T_240; // @[FPU.scala 458:46:chipyard.TestHarness.RocketConfig.fir@235230.10]
  wire  _T_241; // @[FPU.scala 458:69:chipyard.TestHarness.RocketConfig.fir@235231.10]
  wire [30:0] _T_243; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@235233.10]
  wire [63:0] _T_249; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@235240.12]
  wire [63:0] _GEN_24; // @[FPU.scala 460:26:chipyard.TestHarness.RocketConfig.fir@235238.10]
  wire [63:0] _GEN_25; // @[FPU.scala 451:30:chipyard.TestHarness.RocketConfig.fir@235217.8]
  wire [2:0] _T_216; // @[FPU.scala 435:15:chipyard.TestHarness.RocketConfig.fir@235188.6]
  wire [1:0] _T_217; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@235189.6]
  wire [2:0] _GEN_33; // @[FPU.scala 435:22:chipyard.TestHarness.RocketConfig.fir@235190.6]
  wire [2:0] _T_218; // @[FPU.scala 435:22:chipyard.TestHarness.RocketConfig.fir@235190.6]
  wire  _T_219; // @[FPU.scala 435:53:chipyard.TestHarness.RocketConfig.fir@235191.6]
  wire [63:0] _T_221; // @[FPU.scala 435:77:chipyard.TestHarness.RocketConfig.fir@235193.6]
  wire [63:0] _GEN_34; // @[FPU.scala 435:57:chipyard.TestHarness.RocketConfig.fir@235194.6]
  wire [63:0] _T_222; // @[FPU.scala 435:57:chipyard.TestHarness.RocketConfig.fir@235194.6]
  wire [63:0] _GEN_28; // @[FPU.scala 439:21:chipyard.TestHarness.RocketConfig.fir@235199.6]
  wire  _T_189; // @[FPU.scala 216:24:chipyard.TestHarness.RocketConfig.fir@235157.6]
  wire  _T_186; // @[FPU.scala 215:27:chipyard.TestHarness.RocketConfig.fir@235154.6]
  wire  _T_187; // @[FPU.scala 215:24:chipyard.TestHarness.RocketConfig.fir@235155.6]
  wire  _T_168; // @[FPU.scala 207:28:chipyard.TestHarness.RocketConfig.fir@235136.6]
  wire  _T_182; // @[FPU.scala 213:30:chipyard.TestHarness.RocketConfig.fir@235150.6]
  wire  _T_183; // @[FPU.scala 213:27:chipyard.TestHarness.RocketConfig.fir@235151.6]
  wire  _T_190; // @[FPU.scala 218:34:chipyard.TestHarness.RocketConfig.fir@235158.6]
  wire  _T_191; // @[FPU.scala 218:31:chipyard.TestHarness.RocketConfig.fir@235159.6]
  wire  _T_175; // @[FPU.scala 211:27:chipyard.TestHarness.RocketConfig.fir@235143.6]
  wire  _T_170; // @[FPU.scala 209:55:chipyard.TestHarness.RocketConfig.fir@235138.6]
  wire  _T_176; // @[FPU.scala 211:42:chipyard.TestHarness.RocketConfig.fir@235144.6]
  wire  _T_177; // @[FPU.scala 211:39:chipyard.TestHarness.RocketConfig.fir@235145.6]
  wire  _T_178; // @[FPU.scala 211:71:chipyard.TestHarness.RocketConfig.fir@235146.6]
  wire  _T_179; // @[FPU.scala 211:61:chipyard.TestHarness.RocketConfig.fir@235147.6]
  wire  _T_193; // @[FPU.scala 218:50:chipyard.TestHarness.RocketConfig.fir@235161.6]
  wire  _T_171; // @[FPU.scala 210:28:chipyard.TestHarness.RocketConfig.fir@235139.6]
  wire  _T_173; // @[FPU.scala 210:62:chipyard.TestHarness.RocketConfig.fir@235141.6]
  wire  _T_174; // @[FPU.scala 210:40:chipyard.TestHarness.RocketConfig.fir@235142.6]
  wire  _T_195; // @[FPU.scala 219:21:chipyard.TestHarness.RocketConfig.fir@235163.6]
  wire  _T_180; // @[FPU.scala 212:23:chipyard.TestHarness.RocketConfig.fir@235148.6]
  wire  _T_197; // @[FPU.scala 219:38:chipyard.TestHarness.RocketConfig.fir@235165.6]
  wire  _T_198; // @[FPU.scala 219:55:chipyard.TestHarness.RocketConfig.fir@235166.6]
  wire  _T_199; // @[FPU.scala 220:21:chipyard.TestHarness.RocketConfig.fir@235167.6]
  wire  _T_200; // @[FPU.scala 220:39:chipyard.TestHarness.RocketConfig.fir@235168.6]
  wire  _T_201; // @[FPU.scala 220:54:chipyard.TestHarness.RocketConfig.fir@235169.6]
  wire [9:0] _T_210; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@235178.6]
  wire  _T_111; // @[FPU.scala 232:36:chipyard.TestHarness.RocketConfig.fir@235079.6]
  wire  _T_112; // @[FPU.scala 232:25:chipyard.TestHarness.RocketConfig.fir@235080.6]
  wire [11:0] _T_107; // @[FPU.scala 231:31:chipyard.TestHarness.RocketConfig.fir@235075.6]
  wire [11:0] _T_109; // @[FPU.scala 231:48:chipyard.TestHarness.RocketConfig.fir@235077.6]
  wire [8:0] _T_114; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@235082.6]
  wire [8:0] _T_116; // @[FPU.scala 232:10:chipyard.TestHarness.RocketConfig.fir@235084.6]
  wire [75:0] _T_103; // @[FPU.scala 228:28:chipyard.TestHarness.RocketConfig.fir@235071.6]
  wire [32:0] _T_118; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@235086.6]
  wire  _T_138; // @[FPU.scala 214:22:chipyard.TestHarness.RocketConfig.fir@235106.6]
  wire  _T_143; // @[FPU.scala 216:24:chipyard.TestHarness.RocketConfig.fir@235111.6]
  wire  _T_140; // @[FPU.scala 215:27:chipyard.TestHarness.RocketConfig.fir@235108.6]
  wire  _T_141; // @[FPU.scala 215:24:chipyard.TestHarness.RocketConfig.fir@235109.6]
  wire  _T_122; // @[FPU.scala 207:28:chipyard.TestHarness.RocketConfig.fir@235090.6]
  wire  _T_136; // @[FPU.scala 213:30:chipyard.TestHarness.RocketConfig.fir@235104.6]
  wire  _T_137; // @[FPU.scala 213:27:chipyard.TestHarness.RocketConfig.fir@235105.6]
  wire  _T_144; // @[FPU.scala 218:34:chipyard.TestHarness.RocketConfig.fir@235112.6]
  wire  _T_145; // @[FPU.scala 218:31:chipyard.TestHarness.RocketConfig.fir@235113.6]
  wire  _T_129; // @[FPU.scala 211:27:chipyard.TestHarness.RocketConfig.fir@235097.6]
  wire  _T_124; // @[FPU.scala 209:55:chipyard.TestHarness.RocketConfig.fir@235092.6]
  wire  _T_130; // @[FPU.scala 211:42:chipyard.TestHarness.RocketConfig.fir@235098.6]
  wire  _T_131; // @[FPU.scala 211:39:chipyard.TestHarness.RocketConfig.fir@235099.6]
  wire  _T_132; // @[FPU.scala 211:71:chipyard.TestHarness.RocketConfig.fir@235100.6]
  wire  _T_133; // @[FPU.scala 211:61:chipyard.TestHarness.RocketConfig.fir@235101.6]
  wire  _T_147; // @[FPU.scala 218:50:chipyard.TestHarness.RocketConfig.fir@235115.6]
  wire  _T_125; // @[FPU.scala 210:28:chipyard.TestHarness.RocketConfig.fir@235093.6]
  wire  _T_127; // @[FPU.scala 210:62:chipyard.TestHarness.RocketConfig.fir@235095.6]
  wire  _T_128; // @[FPU.scala 210:40:chipyard.TestHarness.RocketConfig.fir@235096.6]
  wire  _T_149; // @[FPU.scala 219:21:chipyard.TestHarness.RocketConfig.fir@235117.6]
  wire  _T_134; // @[FPU.scala 212:23:chipyard.TestHarness.RocketConfig.fir@235102.6]
  wire  _T_151; // @[FPU.scala 219:38:chipyard.TestHarness.RocketConfig.fir@235119.6]
  wire  _T_152; // @[FPU.scala 219:55:chipyard.TestHarness.RocketConfig.fir@235120.6]
  wire  _T_153; // @[FPU.scala 220:21:chipyard.TestHarness.RocketConfig.fir@235121.6]
  wire  _T_154; // @[FPU.scala 220:39:chipyard.TestHarness.RocketConfig.fir@235122.6]
  wire  _T_155; // @[FPU.scala 220:54:chipyard.TestHarness.RocketConfig.fir@235123.6]
  wire [9:0] _T_164; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@235132.6]
  wire [9:0] _T_212; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@235180.6]
  wire [63:0] _GEN_35; // @[FPU.scala 430:27:chipyard.TestHarness.RocketConfig.fir@235183.6]
  wire [63:0] _T_215; // @[FPU.scala 430:27:chipyard.TestHarness.RocketConfig.fir@235183.6]
  wire [63:0] _GEN_22; // @[FPU.scala 428:19:chipyard.TestHarness.RocketConfig.fir@235067.4]
  wire [63:0] toint; // @[FPU.scala 434:20:chipyard.TestHarness.RocketConfig.fir@235187.4]
  wire [31:0] _T_94; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@235059.4]
  wire [63:0] _T_95; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@235060.4]
  wire  _GEN_27; // @[FPU.scala 439:21:chipyard.TestHarness.RocketConfig.fir@235199.6]
  wire  _GEN_23; // @[FPU.scala 428:19:chipyard.TestHarness.RocketConfig.fir@235067.4]
  wire  intType; // @[FPU.scala 434:20:chipyard.TestHarness.RocketConfig.fir@235187.4]
  wire  _T_228; // @[FPU.scala 447:62:chipyard.TestHarness.RocketConfig.fir@235211.8]
  wire [4:0] _T_231; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@235214.8]
  wire  _T_250; // @[FPU.scala 461:55:chipyard.TestHarness.RocketConfig.fir@235243.10]
  wire  _T_252; // @[FPU.scala 461:64:chipyard.TestHarness.RocketConfig.fir@235245.10]
  wire [4:0] _T_254; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@235247.10]
  wire [4:0] _GEN_26; // @[FPU.scala 451:30:chipyard.TestHarness.RocketConfig.fir@235217.8]
  wire [4:0] _GEN_29; // @[FPU.scala 439:21:chipyard.TestHarness.RocketConfig.fir@235199.6]
  wire  _T_256; // @[FPU.scala 468:53:chipyard.TestHarness.RocketConfig.fir@235254.4]
  wire  _T_258; // @[FPU.scala 468:79:chipyard.TestHarness.RocketConfig.fir@235256.4]
  wire  _T_259; // @[FPU.scala 468:59:chipyard.TestHarness.RocketConfig.fir@235257.4]
  CompareRecFN dcmp ( // @[FPU.scala 415:20:chipyard.TestHarness.RocketConfig.fir@234937.4]
    .io_a(dcmp_io_a),
    .io_b(dcmp_io_b),
    .io_signaling(dcmp_io_signaling),
    .io_lt(dcmp_io_lt),
    .io_eq(dcmp_io_eq),
    .io_exceptionFlags(dcmp_io_exceptionFlags)
  );
  RecFNToIN RecFNToIN ( // @[FPU.scala 442:24:chipyard.TestHarness.RocketConfig.fir@235202.8]
    .io_in(RecFNToIN_io_in),
    .io_roundingMode(RecFNToIN_io_roundingMode),
    .io_signedOut(RecFNToIN_io_signedOut),
    .io_out(RecFNToIN_io_out),
    .io_intExceptionFlags(RecFNToIN_io_intExceptionFlags)
  );
  RecFNToIN_1 RecFNToIN_1 ( // @[FPU.scala 452:30:chipyard.TestHarness.RocketConfig.fir@235218.10]
    .io_in(RecFNToIN_1_io_in),
    .io_roundingMode(RecFNToIN_1_io_roundingMode),
    .io_signedOut(RecFNToIN_1_io_signedOut),
    .io_intExceptionFlags(RecFNToIN_1_io_intExceptionFlags)
  );
  assign tag = ~in_singleOut; // @[FPU.scala 420:13:chipyard.TestHarness.RocketConfig.fir@234944.4]
  assign _T_4 = in_in1[63:61] == 3'h0; // @[rawFloatFromRecFN.scala 51:54:chipyard.TestHarness.RocketConfig.fir@234947.4]
  assign _T_6 = in_in1[63:62] == 2'h3; // @[rawFloatFromRecFN.scala 52:54:chipyard.TestHarness.RocketConfig.fir@234949.4]
  assign _T_9 = _T_6 & in_in1[61]; // @[rawFloatFromRecFN.scala 55:33:chipyard.TestHarness.RocketConfig.fir@234953.4]
  assign _T_11 = ~in_in1[61]; // @[rawFloatFromRecFN.scala 56:36:chipyard.TestHarness.RocketConfig.fir@234956.4]
  assign _T_12 = _T_6 & _T_11; // @[rawFloatFromRecFN.scala 56:33:chipyard.TestHarness.RocketConfig.fir@234957.4]
  assign _T_14 = {1'b0,$signed(in_in1[63:52])}; // @[rawFloatFromRecFN.scala 59:27:chipyard.TestHarness.RocketConfig.fir@234962.4]
  assign _T_15 = ~_T_4; // @[rawFloatFromRecFN.scala 60:39:chipyard.TestHarness.RocketConfig.fir@234964.4]
  assign _T_18 = {1'h0,_T_15,in_in1[51:0]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@234967.4]
  assign _T_19 = $signed(_T_14) < 13'sh402; // @[fNFromRecFN.scala 50:39:chipyard.TestHarness.RocketConfig.fir@234969.4]
  assign _T_22 = 6'h1 - _T_14[5:0]; // @[fNFromRecFN.scala 51:39:chipyard.TestHarness.RocketConfig.fir@234972.4]
  assign _T_24 = _T_18[53:1] >> _T_22; // @[fNFromRecFN.scala 52:42:chipyard.TestHarness.RocketConfig.fir@234974.4]
  assign _T_28 = _T_14[10:0] - 11'h401; // @[fNFromRecFN.scala 57:45:chipyard.TestHarness.RocketConfig.fir@234978.4]
  assign _T_29 = _T_19 ? 11'h0 : _T_28; // @[fNFromRecFN.scala 55:16:chipyard.TestHarness.RocketConfig.fir@234979.4]
  assign _T_30 = _T_9 | _T_12; // @[fNFromRecFN.scala 59:44:chipyard.TestHarness.RocketConfig.fir@234980.4]
  assign _T_32 = _T_30 ? 11'h7ff : 11'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@234982.4]
  assign _T_33 = _T_29 | _T_32; // @[fNFromRecFN.scala 59:15:chipyard.TestHarness.RocketConfig.fir@234983.4]
  assign _T_35 = _T_12 ? 52'h0 : _T_18[51:0]; // @[fNFromRecFN.scala 63:20:chipyard.TestHarness.RocketConfig.fir@234985.4]
  assign _T_36 = _T_19 ? _T_24[51:0] : _T_35; // @[fNFromRecFN.scala 61:16:chipyard.TestHarness.RocketConfig.fir@234986.4]
  assign _T_38 = {in_in1[64],_T_33,_T_36}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@234988.4]
  assign _T_43 = {in_in1[31],in_in1[52],in_in1[30:0]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@234993.4]
  assign _T_46 = _T_43[31:29] == 3'h0; // @[rawFloatFromRecFN.scala 51:54:chipyard.TestHarness.RocketConfig.fir@234996.4]
  assign _T_48 = _T_43[31:30] == 2'h3; // @[rawFloatFromRecFN.scala 52:54:chipyard.TestHarness.RocketConfig.fir@234998.4]
  assign _T_51 = _T_48 & _T_43[29]; // @[rawFloatFromRecFN.scala 55:33:chipyard.TestHarness.RocketConfig.fir@235002.4]
  assign _T_53 = ~_T_43[29]; // @[rawFloatFromRecFN.scala 56:36:chipyard.TestHarness.RocketConfig.fir@235005.4]
  assign _T_54 = _T_48 & _T_53; // @[rawFloatFromRecFN.scala 56:33:chipyard.TestHarness.RocketConfig.fir@235006.4]
  assign _T_56 = {1'b0,$signed(_T_43[31:23])}; // @[rawFloatFromRecFN.scala 59:27:chipyard.TestHarness.RocketConfig.fir@235011.4]
  assign _T_57 = ~_T_46; // @[rawFloatFromRecFN.scala 60:39:chipyard.TestHarness.RocketConfig.fir@235013.4]
  assign _T_60 = {1'h0,_T_57,_T_43[22:0]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@235016.4]
  assign _T_61 = $signed(_T_56) < 10'sh82; // @[fNFromRecFN.scala 50:39:chipyard.TestHarness.RocketConfig.fir@235018.4]
  assign _T_64 = 5'h1 - _T_56[4:0]; // @[fNFromRecFN.scala 51:39:chipyard.TestHarness.RocketConfig.fir@235021.4]
  assign _T_66 = _T_60[24:1] >> _T_64; // @[fNFromRecFN.scala 52:42:chipyard.TestHarness.RocketConfig.fir@235023.4]
  assign _T_70 = _T_56[7:0] - 8'h81; // @[fNFromRecFN.scala 57:45:chipyard.TestHarness.RocketConfig.fir@235027.4]
  assign _T_71 = _T_61 ? 8'h0 : _T_70; // @[fNFromRecFN.scala 55:16:chipyard.TestHarness.RocketConfig.fir@235028.4]
  assign _T_72 = _T_51 | _T_54; // @[fNFromRecFN.scala 59:44:chipyard.TestHarness.RocketConfig.fir@235029.4]
  assign _T_74 = _T_72 ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@235031.4]
  assign _T_75 = _T_71 | _T_74; // @[fNFromRecFN.scala 59:15:chipyard.TestHarness.RocketConfig.fir@235032.4]
  assign _T_77 = _T_54 ? 23'h0 : _T_60[22:0]; // @[fNFromRecFN.scala 63:20:chipyard.TestHarness.RocketConfig.fir@235034.4]
  assign _T_78 = _T_61 ? _T_66[22:0] : _T_77; // @[fNFromRecFN.scala 61:16:chipyard.TestHarness.RocketConfig.fir@235035.4]
  assign _T_80 = {_T_43[32],_T_75,_T_78}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@235037.4]
  assign _T_83 = &in_in1[63:61]; // @[FPU.scala 200:56:chipyard.TestHarness.RocketConfig.fir@235040.4]
  assign _T_85 = _T_83 ? _T_80 : _T_38[31:0]; // @[FPU.scala 391:44:chipyard.TestHarness.RocketConfig.fir@235042.4]
  assign store = {_T_38[63:32],_T_85}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@235043.4]
  assign _T_87 = {store[31:0],store[31:0]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@235051.4]
  assign _T_223 = ~in_ren2; // @[FPU.scala 439:11:chipyard.TestHarness.RocketConfig.fir@235198.6]
  assign _T_232 = ~in_typ[1]; // @[FPU.scala 451:23:chipyard.TestHarness.RocketConfig.fir@235216.8]
  assign _T_247 = RecFNToIN_io_intExceptionFlags[2] | RecFNToIN_1_io_intExceptionFlags[1]; // @[FPU.scala 459:54:chipyard.TestHarness.RocketConfig.fir@235237.10]
  assign _T_238 = ~_T_83; // @[FPU.scala 457:62:chipyard.TestHarness.RocketConfig.fir@235228.10]
  assign _T_239 = in_in1[64] & _T_238; // @[FPU.scala 457:59:chipyard.TestHarness.RocketConfig.fir@235229.10]
  assign _T_240 = RecFNToIN_io_signedOut == _T_239; // @[FPU.scala 458:46:chipyard.TestHarness.RocketConfig.fir@235230.10]
  assign _T_241 = ~_T_239; // @[FPU.scala 458:69:chipyard.TestHarness.RocketConfig.fir@235231.10]
  assign _T_243 = _T_241 ? 31'h7fffffff : 31'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@235233.10]
  assign _T_249 = {RecFNToIN_io_out[63:32],_T_240,_T_243}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@235240.12]
  assign _GEN_24 = _T_247 ? _T_249 : RecFNToIN_io_out; // @[FPU.scala 460:26:chipyard.TestHarness.RocketConfig.fir@235238.10]
  assign _GEN_25 = _T_232 ? _GEN_24 : RecFNToIN_io_out; // @[FPU.scala 451:30:chipyard.TestHarness.RocketConfig.fir@235217.8]
  assign _T_216 = ~in_rm; // @[FPU.scala 435:15:chipyard.TestHarness.RocketConfig.fir@235188.6]
  assign _T_217 = {dcmp_io_lt,dcmp_io_eq}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@235189.6]
  assign _GEN_33 = {{1'd0}, _T_217}; // @[FPU.scala 435:22:chipyard.TestHarness.RocketConfig.fir@235190.6]
  assign _T_218 = _T_216 & _GEN_33; // @[FPU.scala 435:22:chipyard.TestHarness.RocketConfig.fir@235190.6]
  assign _T_219 = |_T_218; // @[FPU.scala 435:53:chipyard.TestHarness.RocketConfig.fir@235191.6]
  assign _T_221 = {store[63:32], 32'h0}; // @[FPU.scala 435:77:chipyard.TestHarness.RocketConfig.fir@235193.6]
  assign _GEN_34 = {{63'd0}, _T_219}; // @[FPU.scala 435:57:chipyard.TestHarness.RocketConfig.fir@235194.6]
  assign _T_222 = _GEN_34 | _T_221; // @[FPU.scala 435:57:chipyard.TestHarness.RocketConfig.fir@235194.6]
  assign _GEN_28 = _T_223 ? _GEN_25 : _T_222; // @[FPU.scala 439:21:chipyard.TestHarness.RocketConfig.fir@235199.6]
  assign _T_189 = _T_83 & in_in1[51]; // @[FPU.scala 216:24:chipyard.TestHarness.RocketConfig.fir@235157.6]
  assign _T_186 = ~in_in1[51]; // @[FPU.scala 215:27:chipyard.TestHarness.RocketConfig.fir@235154.6]
  assign _T_187 = _T_83 & _T_186; // @[FPU.scala 215:24:chipyard.TestHarness.RocketConfig.fir@235155.6]
  assign _T_168 = in_in1[63:62] == 2'h3; // @[FPU.scala 207:28:chipyard.TestHarness.RocketConfig.fir@235136.6]
  assign _T_182 = ~in_in1[61]; // @[FPU.scala 213:30:chipyard.TestHarness.RocketConfig.fir@235150.6]
  assign _T_183 = _T_168 & _T_182; // @[FPU.scala 213:27:chipyard.TestHarness.RocketConfig.fir@235151.6]
  assign _T_190 = ~in_in1[64]; // @[FPU.scala 218:34:chipyard.TestHarness.RocketConfig.fir@235158.6]
  assign _T_191 = _T_183 & _T_190; // @[FPU.scala 218:31:chipyard.TestHarness.RocketConfig.fir@235159.6]
  assign _T_175 = in_in1[63:62] == 2'h1; // @[FPU.scala 211:27:chipyard.TestHarness.RocketConfig.fir@235143.6]
  assign _T_170 = in_in1[61:52] < 10'h2; // @[FPU.scala 209:55:chipyard.TestHarness.RocketConfig.fir@235138.6]
  assign _T_176 = ~_T_170; // @[FPU.scala 211:42:chipyard.TestHarness.RocketConfig.fir@235144.6]
  assign _T_177 = _T_175 & _T_176; // @[FPU.scala 211:39:chipyard.TestHarness.RocketConfig.fir@235145.6]
  assign _T_178 = in_in1[63:62] == 2'h2; // @[FPU.scala 211:71:chipyard.TestHarness.RocketConfig.fir@235146.6]
  assign _T_179 = _T_177 | _T_178; // @[FPU.scala 211:61:chipyard.TestHarness.RocketConfig.fir@235147.6]
  assign _T_193 = _T_179 & _T_190; // @[FPU.scala 218:50:chipyard.TestHarness.RocketConfig.fir@235161.6]
  assign _T_171 = in_in1[63:61] == 3'h1; // @[FPU.scala 210:28:chipyard.TestHarness.RocketConfig.fir@235139.6]
  assign _T_173 = _T_175 & _T_170; // @[FPU.scala 210:62:chipyard.TestHarness.RocketConfig.fir@235141.6]
  assign _T_174 = _T_171 | _T_173; // @[FPU.scala 210:40:chipyard.TestHarness.RocketConfig.fir@235142.6]
  assign _T_195 = _T_174 & _T_190; // @[FPU.scala 219:21:chipyard.TestHarness.RocketConfig.fir@235163.6]
  assign _T_180 = in_in1[63:61] == 3'h0; // @[FPU.scala 212:23:chipyard.TestHarness.RocketConfig.fir@235148.6]
  assign _T_197 = _T_180 & _T_190; // @[FPU.scala 219:38:chipyard.TestHarness.RocketConfig.fir@235165.6]
  assign _T_198 = _T_180 & in_in1[64]; // @[FPU.scala 219:55:chipyard.TestHarness.RocketConfig.fir@235166.6]
  assign _T_199 = _T_174 & in_in1[64]; // @[FPU.scala 220:21:chipyard.TestHarness.RocketConfig.fir@235167.6]
  assign _T_200 = _T_179 & in_in1[64]; // @[FPU.scala 220:39:chipyard.TestHarness.RocketConfig.fir@235168.6]
  assign _T_201 = _T_183 & in_in1[64]; // @[FPU.scala 220:54:chipyard.TestHarness.RocketConfig.fir@235169.6]
  assign _T_210 = {_T_189,_T_187,_T_191,_T_193,_T_195,_T_197,_T_198,_T_199,_T_200,_T_201}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@235178.6]
  assign _T_111 = in_in1[63:61] >= 3'h6; // @[FPU.scala 232:36:chipyard.TestHarness.RocketConfig.fir@235079.6]
  assign _T_112 = _T_4 | _T_111; // @[FPU.scala 232:25:chipyard.TestHarness.RocketConfig.fir@235080.6]
  assign _T_107 = in_in1[63:52] + 12'h100; // @[FPU.scala 231:31:chipyard.TestHarness.RocketConfig.fir@235075.6]
  assign _T_109 = _T_107 - 12'h800; // @[FPU.scala 231:48:chipyard.TestHarness.RocketConfig.fir@235077.6]
  assign _T_114 = {in_in1[63:61],_T_109[5:0]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@235082.6]
  assign _T_116 = _T_112 ? _T_114 : _T_109[8:0]; // @[FPU.scala 232:10:chipyard.TestHarness.RocketConfig.fir@235084.6]
  assign _T_103 = {in_in1[51:0], 24'h0}; // @[FPU.scala 228:28:chipyard.TestHarness.RocketConfig.fir@235071.6]
  assign _T_118 = {in_in1[64],_T_116,_T_103[75:53]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@235086.6]
  assign _T_138 = &_T_118[31:29]; // @[FPU.scala 214:22:chipyard.TestHarness.RocketConfig.fir@235106.6]
  assign _T_143 = _T_138 & _T_118[22]; // @[FPU.scala 216:24:chipyard.TestHarness.RocketConfig.fir@235111.6]
  assign _T_140 = ~_T_118[22]; // @[FPU.scala 215:27:chipyard.TestHarness.RocketConfig.fir@235108.6]
  assign _T_141 = _T_138 & _T_140; // @[FPU.scala 215:24:chipyard.TestHarness.RocketConfig.fir@235109.6]
  assign _T_122 = _T_118[31:30] == 2'h3; // @[FPU.scala 207:28:chipyard.TestHarness.RocketConfig.fir@235090.6]
  assign _T_136 = ~_T_118[29]; // @[FPU.scala 213:30:chipyard.TestHarness.RocketConfig.fir@235104.6]
  assign _T_137 = _T_122 & _T_136; // @[FPU.scala 213:27:chipyard.TestHarness.RocketConfig.fir@235105.6]
  assign _T_144 = ~_T_118[32]; // @[FPU.scala 218:34:chipyard.TestHarness.RocketConfig.fir@235112.6]
  assign _T_145 = _T_137 & _T_144; // @[FPU.scala 218:31:chipyard.TestHarness.RocketConfig.fir@235113.6]
  assign _T_129 = _T_118[31:30] == 2'h1; // @[FPU.scala 211:27:chipyard.TestHarness.RocketConfig.fir@235097.6]
  assign _T_124 = _T_118[29:23] < 7'h2; // @[FPU.scala 209:55:chipyard.TestHarness.RocketConfig.fir@235092.6]
  assign _T_130 = ~_T_124; // @[FPU.scala 211:42:chipyard.TestHarness.RocketConfig.fir@235098.6]
  assign _T_131 = _T_129 & _T_130; // @[FPU.scala 211:39:chipyard.TestHarness.RocketConfig.fir@235099.6]
  assign _T_132 = _T_118[31:30] == 2'h2; // @[FPU.scala 211:71:chipyard.TestHarness.RocketConfig.fir@235100.6]
  assign _T_133 = _T_131 | _T_132; // @[FPU.scala 211:61:chipyard.TestHarness.RocketConfig.fir@235101.6]
  assign _T_147 = _T_133 & _T_144; // @[FPU.scala 218:50:chipyard.TestHarness.RocketConfig.fir@235115.6]
  assign _T_125 = _T_118[31:29] == 3'h1; // @[FPU.scala 210:28:chipyard.TestHarness.RocketConfig.fir@235093.6]
  assign _T_127 = _T_129 & _T_124; // @[FPU.scala 210:62:chipyard.TestHarness.RocketConfig.fir@235095.6]
  assign _T_128 = _T_125 | _T_127; // @[FPU.scala 210:40:chipyard.TestHarness.RocketConfig.fir@235096.6]
  assign _T_149 = _T_128 & _T_144; // @[FPU.scala 219:21:chipyard.TestHarness.RocketConfig.fir@235117.6]
  assign _T_134 = _T_118[31:29] == 3'h0; // @[FPU.scala 212:23:chipyard.TestHarness.RocketConfig.fir@235102.6]
  assign _T_151 = _T_134 & _T_144; // @[FPU.scala 219:38:chipyard.TestHarness.RocketConfig.fir@235119.6]
  assign _T_152 = _T_134 & _T_118[32]; // @[FPU.scala 219:55:chipyard.TestHarness.RocketConfig.fir@235120.6]
  assign _T_153 = _T_128 & _T_118[32]; // @[FPU.scala 220:21:chipyard.TestHarness.RocketConfig.fir@235121.6]
  assign _T_154 = _T_133 & _T_118[32]; // @[FPU.scala 220:39:chipyard.TestHarness.RocketConfig.fir@235122.6]
  assign _T_155 = _T_137 & _T_118[32]; // @[FPU.scala 220:54:chipyard.TestHarness.RocketConfig.fir@235123.6]
  assign _T_164 = {_T_143,_T_141,_T_145,_T_147,_T_149,_T_151,_T_152,_T_153,_T_154,_T_155}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@235132.6]
  assign _T_212 = tag ? _T_210 : _T_164; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@235180.6]
  assign _GEN_35 = {{54'd0}, _T_212}; // @[FPU.scala 430:27:chipyard.TestHarness.RocketConfig.fir@235183.6]
  assign _T_215 = _GEN_35 | _T_221; // @[FPU.scala 430:27:chipyard.TestHarness.RocketConfig.fir@235183.6]
  assign _GEN_22 = in_rm[0] ? _T_215 : store; // @[FPU.scala 428:19:chipyard.TestHarness.RocketConfig.fir@235067.4]
  assign toint = in_wflags ? _GEN_28 : _GEN_22; // @[FPU.scala 434:20:chipyard.TestHarness.RocketConfig.fir@235187.4]
  assign _T_94 = toint[31] ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@235059.4]
  assign _T_95 = {_T_94,toint[31:0]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@235060.4]
  assign _GEN_27 = _T_223 & in_typ[1]; // @[FPU.scala 439:21:chipyard.TestHarness.RocketConfig.fir@235199.6]
  assign _GEN_23 = in_rm[0] ? 1'h0 : tag; // @[FPU.scala 428:19:chipyard.TestHarness.RocketConfig.fir@235067.4]
  assign intType = in_wflags ? _GEN_27 : _GEN_23; // @[FPU.scala 434:20:chipyard.TestHarness.RocketConfig.fir@235187.4]
  assign _T_228 = |RecFNToIN_io_intExceptionFlags[2:1]; // @[FPU.scala 447:62:chipyard.TestHarness.RocketConfig.fir@235211.8]
  assign _T_231 = {_T_228,3'h0,RecFNToIN_io_intExceptionFlags[0]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@235214.8]
  assign _T_250 = ~_T_247; // @[FPU.scala 461:55:chipyard.TestHarness.RocketConfig.fir@235243.10]
  assign _T_252 = _T_250 & RecFNToIN_io_intExceptionFlags[0]; // @[FPU.scala 461:64:chipyard.TestHarness.RocketConfig.fir@235245.10]
  assign _T_254 = {_T_247,3'h0,_T_252}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@235247.10]
  assign _GEN_26 = _T_232 ? _T_254 : _T_231; // @[FPU.scala 451:30:chipyard.TestHarness.RocketConfig.fir@235217.8]
  assign _GEN_29 = _T_223 ? _GEN_26 : dcmp_io_exceptionFlags; // @[FPU.scala 439:21:chipyard.TestHarness.RocketConfig.fir@235199.6]
  assign _T_256 = $signed(dcmp_io_a) < 65'sh0; // @[FPU.scala 468:53:chipyard.TestHarness.RocketConfig.fir@235254.4]
  assign _T_258 = $signed(dcmp_io_b) >= 65'sh0; // @[FPU.scala 468:79:chipyard.TestHarness.RocketConfig.fir@235256.4]
  assign _T_259 = _T_256 & _T_258; // @[FPU.scala 468:59:chipyard.TestHarness.RocketConfig.fir@235257.4]
  assign io_out_bits_in_rm = in_rm; // @[FPU.scala 469:18:chipyard.TestHarness.RocketConfig.fir@235260.4]
  assign io_out_bits_in_in1 = in_in1; // @[FPU.scala 469:18:chipyard.TestHarness.RocketConfig.fir@235260.4]
  assign io_out_bits_in_in2 = in_in2; // @[FPU.scala 469:18:chipyard.TestHarness.RocketConfig.fir@235260.4]
  assign io_out_bits_lt = dcmp_io_lt | _T_259; // @[FPU.scala 468:18:chipyard.TestHarness.RocketConfig.fir@235259.4]
  assign io_out_bits_store = tag ? store : _T_87; // @[FPU.scala 424:21:chipyard.TestHarness.RocketConfig.fir@235055.4]
  assign io_out_bits_toint = intType ? toint : _T_95; // @[FPU.scala 425:21:chipyard.TestHarness.RocketConfig.fir@235064.4]
  assign io_out_bits_exc = in_wflags ? _GEN_29 : 5'h0; // @[FPU.scala 426:19:chipyard.TestHarness.RocketConfig.fir@235065.4 FPU.scala 436:21:chipyard.TestHarness.RocketConfig.fir@235196.6 FPU.scala 447:23:chipyard.TestHarness.RocketConfig.fir@235215.8 FPU.scala 461:27:chipyard.TestHarness.RocketConfig.fir@235248.10]
  assign dcmp_io_a = in_in1; // @[FPU.scala 416:13:chipyard.TestHarness.RocketConfig.fir@234939.4]
  assign dcmp_io_b = in_in2; // @[FPU.scala 417:13:chipyard.TestHarness.RocketConfig.fir@234940.4]
  assign dcmp_io_signaling = ~in_rm[1]; // @[FPU.scala 418:21:chipyard.TestHarness.RocketConfig.fir@234943.4]
  assign RecFNToIN_io_in = in_in1; // @[FPU.scala 443:18:chipyard.TestHarness.RocketConfig.fir@235204.8]
  assign RecFNToIN_io_roundingMode = in_rm; // @[FPU.scala 444:28:chipyard.TestHarness.RocketConfig.fir@235205.8]
  assign RecFNToIN_io_signedOut = ~in_typ[0]; // @[FPU.scala 445:25:chipyard.TestHarness.RocketConfig.fir@235208.8]
  assign RecFNToIN_1_io_in = in_in1; // @[FPU.scala 453:24:chipyard.TestHarness.RocketConfig.fir@235220.10]
  assign RecFNToIN_1_io_roundingMode = in_rm; // @[FPU.scala 454:34:chipyard.TestHarness.RocketConfig.fir@235221.10]
  assign RecFNToIN_1_io_signedOut = ~in_typ[0]; // @[FPU.scala 455:31:chipyard.TestHarness.RocketConfig.fir@235224.10]
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
  in_ren2 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  in_singleOut = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  in_wflags = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  in_rm = _RAND_3[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  in_typ = _RAND_4[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {3{`RANDOM}};
  in_in1 = _RAND_5[64:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {3{`RANDOM}};
  in_in2 = _RAND_6[64:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (io_in_valid) begin
      in_ren2 <= io_in_bits_ren2;
    end
    if (io_in_valid) begin
      in_singleOut <= io_in_bits_singleOut;
    end
    if (io_in_valid) begin
      in_wflags <= io_in_bits_wflags;
    end
    if (io_in_valid) begin
      in_rm <= io_in_bits_rm;
    end
    if (io_in_valid) begin
      in_typ <= io_in_bits_typ;
    end
    if (io_in_valid) begin
      in_in1 <= io_in_bits_in1;
    end
    if (io_in_valid) begin
      in_in2 <= io_in_bits_in2;
    end
  end
endmodule
