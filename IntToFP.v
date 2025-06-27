module IntToFP( // @[:chipyard.TestHarness.RocketConfig.fir@235898.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@235899.4]
  input         reset, // @[:chipyard.TestHarness.RocketConfig.fir@235900.4]
  input         io_in_valid, // @[:chipyard.TestHarness.RocketConfig.fir@235901.4]
  input         io_in_bits_singleIn, // @[:chipyard.TestHarness.RocketConfig.fir@235901.4]
  input         io_in_bits_wflags, // @[:chipyard.TestHarness.RocketConfig.fir@235901.4]
  input  [2:0]  io_in_bits_rm, // @[:chipyard.TestHarness.RocketConfig.fir@235901.4]
  input  [1:0]  io_in_bits_typ, // @[:chipyard.TestHarness.RocketConfig.fir@235901.4]
  input  [63:0] io_in_bits_in1, // @[:chipyard.TestHarness.RocketConfig.fir@235901.4]
  output [64:0] io_out_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@235901.4]
  output [4:0]  io_out_bits_exc // @[:chipyard.TestHarness.RocketConfig.fir@235901.4]
);
  wire  INToRecFN_io_signedIn; // @[FPU.scala 500:23:chipyard.TestHarness.RocketConfig.fir@236210.6]
  wire [63:0] INToRecFN_io_in; // @[FPU.scala 500:23:chipyard.TestHarness.RocketConfig.fir@236210.6]
  wire [2:0] INToRecFN_io_roundingMode; // @[FPU.scala 500:23:chipyard.TestHarness.RocketConfig.fir@236210.6]
  wire [32:0] INToRecFN_io_out; // @[FPU.scala 500:23:chipyard.TestHarness.RocketConfig.fir@236210.6]
  wire [4:0] INToRecFN_io_exceptionFlags; // @[FPU.scala 500:23:chipyard.TestHarness.RocketConfig.fir@236210.6]
  wire  INToRecFN_1_io_signedIn; // @[FPU.scala 500:23:chipyard.TestHarness.RocketConfig.fir@236218.6]
  wire [63:0] INToRecFN_1_io_in; // @[FPU.scala 500:23:chipyard.TestHarness.RocketConfig.fir@236218.6]
  wire [2:0] INToRecFN_1_io_roundingMode; // @[FPU.scala 500:23:chipyard.TestHarness.RocketConfig.fir@236218.6]
  wire [64:0] INToRecFN_1_io_out; // @[FPU.scala 500:23:chipyard.TestHarness.RocketConfig.fir@236218.6]
  wire [4:0] INToRecFN_1_io_exceptionFlags; // @[FPU.scala 500:23:chipyard.TestHarness.RocketConfig.fir@236218.6]
  reg  inPipe_valid; // @[Valid.scala 117:22:chipyard.TestHarness.RocketConfig.fir@235906.4]
  reg [31:0] _RAND_0;
  reg  inPipe_bits_singleIn; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@235908.4]
  reg [31:0] _RAND_1;
  reg  inPipe_bits_wflags; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@235908.4]
  reg [31:0] _RAND_2;
  reg [2:0] inPipe_bits_rm; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@235908.4]
  reg [31:0] _RAND_3;
  reg [1:0] inPipe_bits_typ; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@235908.4]
  reg [31:0] _RAND_4;
  reg [63:0] inPipe_bits_in1; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@235908.4]
  reg [63:0] _RAND_5;
  wire  tag; // @[FPU.scala 479:13:chipyard.TestHarness.RocketConfig.fir@235934.4]
  wire [63:0] _T_2; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@235940.4]
  wire [63:0] _T_3; // @[FPU.scala 376:23:chipyard.TestHarness.RocketConfig.fir@235941.4]
  wire  _T_7; // @[rawFloatFromFN.scala 50:34:chipyard.TestHarness.RocketConfig.fir@235945.4]
  wire  _T_8; // @[rawFloatFromFN.scala 51:38:chipyard.TestHarness.RocketConfig.fir@235946.4]
  wire [5:0] _T_61; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235999.4]
  wire [5:0] _T_62; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236000.4]
  wire [5:0] _T_63; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236001.4]
  wire [5:0] _T_64; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236002.4]
  wire [5:0] _T_65; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236003.4]
  wire [5:0] _T_66; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236004.4]
  wire [5:0] _T_67; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236005.4]
  wire [5:0] _T_68; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236006.4]
  wire [5:0] _T_69; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236007.4]
  wire [5:0] _T_70; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236008.4]
  wire [5:0] _T_71; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236009.4]
  wire [5:0] _T_72; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236010.4]
  wire [5:0] _T_73; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236011.4]
  wire [5:0] _T_74; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236012.4]
  wire [5:0] _T_75; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236013.4]
  wire [5:0] _T_76; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236014.4]
  wire [5:0] _T_77; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236015.4]
  wire [5:0] _T_78; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236016.4]
  wire [5:0] _T_79; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236017.4]
  wire [5:0] _T_80; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236018.4]
  wire [5:0] _T_81; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236019.4]
  wire [5:0] _T_82; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236020.4]
  wire [5:0] _T_83; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236021.4]
  wire [5:0] _T_84; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236022.4]
  wire [5:0] _T_85; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236023.4]
  wire [5:0] _T_86; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236024.4]
  wire [5:0] _T_87; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236025.4]
  wire [5:0] _T_88; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236026.4]
  wire [5:0] _T_89; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236027.4]
  wire [5:0] _T_90; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236028.4]
  wire [5:0] _T_91; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236029.4]
  wire [5:0] _T_92; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236030.4]
  wire [5:0] _T_93; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236031.4]
  wire [5:0] _T_94; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236032.4]
  wire [5:0] _T_95; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236033.4]
  wire [5:0] _T_96; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236034.4]
  wire [5:0] _T_97; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236035.4]
  wire [5:0] _T_98; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236036.4]
  wire [5:0] _T_99; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236037.4]
  wire [5:0] _T_100; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236038.4]
  wire [5:0] _T_101; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236039.4]
  wire [5:0] _T_102; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236040.4]
  wire [5:0] _T_103; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236041.4]
  wire [5:0] _T_104; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236042.4]
  wire [5:0] _T_105; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236043.4]
  wire [5:0] _T_106; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236044.4]
  wire [5:0] _T_107; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236045.4]
  wire [5:0] _T_108; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236046.4]
  wire [5:0] _T_109; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236047.4]
  wire [5:0] _T_110; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236048.4]
  wire [5:0] _T_111; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236049.4]
  wire [114:0] _GEN_24; // @[rawFloatFromFN.scala 54:36:chipyard.TestHarness.RocketConfig.fir@236050.4]
  wire [114:0] _T_112; // @[rawFloatFromFN.scala 54:36:chipyard.TestHarness.RocketConfig.fir@236050.4]
  wire [51:0] _T_114; // @[rawFloatFromFN.scala 54:64:chipyard.TestHarness.RocketConfig.fir@236052.4]
  wire [11:0] _GEN_25; // @[rawFloatFromFN.scala 57:26:chipyard.TestHarness.RocketConfig.fir@236053.4]
  wire [11:0] _T_115; // @[rawFloatFromFN.scala 57:26:chipyard.TestHarness.RocketConfig.fir@236053.4]
  wire [11:0] _T_116; // @[rawFloatFromFN.scala 56:16:chipyard.TestHarness.RocketConfig.fir@236054.4]
  wire [1:0] _T_117; // @[rawFloatFromFN.scala 60:27:chipyard.TestHarness.RocketConfig.fir@236055.4]
  wire [10:0] _GEN_26; // @[rawFloatFromFN.scala 60:22:chipyard.TestHarness.RocketConfig.fir@236056.4]
  wire [10:0] _T_118; // @[rawFloatFromFN.scala 60:22:chipyard.TestHarness.RocketConfig.fir@236056.4]
  wire [11:0] _GEN_27; // @[rawFloatFromFN.scala 59:15:chipyard.TestHarness.RocketConfig.fir@236057.4]
  wire [11:0] _T_120; // @[rawFloatFromFN.scala 59:15:chipyard.TestHarness.RocketConfig.fir@236058.4]
  wire  _T_121; // @[rawFloatFromFN.scala 62:34:chipyard.TestHarness.RocketConfig.fir@236059.4]
  wire  _T_123; // @[rawFloatFromFN.scala 63:62:chipyard.TestHarness.RocketConfig.fir@236061.4]
  wire  _T_125; // @[rawFloatFromFN.scala 66:36:chipyard.TestHarness.RocketConfig.fir@236064.4]
  wire  _T_126; // @[rawFloatFromFN.scala 66:33:chipyard.TestHarness.RocketConfig.fir@236065.4]
  wire [12:0] _T_129; // @[rawFloatFromFN.scala 70:48:chipyard.TestHarness.RocketConfig.fir@236072.4]
  wire  _T_130; // @[rawFloatFromFN.scala 72:29:chipyard.TestHarness.RocketConfig.fir@236074.4]
  wire [51:0] _T_131; // @[rawFloatFromFN.scala 72:42:chipyard.TestHarness.RocketConfig.fir@236075.4]
  wire [53:0] _T_133; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@236077.4]
  wire [2:0] _T_135; // @[recFNFromFN.scala 48:16:chipyard.TestHarness.RocketConfig.fir@236080.4]
  wire [2:0] _GEN_28; // @[recFNFromFN.scala 48:79:chipyard.TestHarness.RocketConfig.fir@236082.4]
  wire [2:0] _T_137; // @[recFNFromFN.scala 48:79:chipyard.TestHarness.RocketConfig.fir@236082.4]
  wire [64:0] _T_142; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@236087.4]
  wire  _T_146; // @[rawFloatFromFN.scala 50:34:chipyard.TestHarness.RocketConfig.fir@236091.4]
  wire  _T_147; // @[rawFloatFromFN.scala 51:38:chipyard.TestHarness.RocketConfig.fir@236092.4]
  wire [4:0] _T_171; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236116.4]
  wire [4:0] _T_172; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236117.4]
  wire [4:0] _T_173; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236118.4]
  wire [4:0] _T_174; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236119.4]
  wire [4:0] _T_175; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236120.4]
  wire [4:0] _T_176; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236121.4]
  wire [4:0] _T_177; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236122.4]
  wire [4:0] _T_178; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236123.4]
  wire [4:0] _T_179; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236124.4]
  wire [4:0] _T_180; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236125.4]
  wire [4:0] _T_181; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236126.4]
  wire [4:0] _T_182; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236127.4]
  wire [4:0] _T_183; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236128.4]
  wire [4:0] _T_184; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236129.4]
  wire [4:0] _T_185; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236130.4]
  wire [4:0] _T_186; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236131.4]
  wire [4:0] _T_187; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236132.4]
  wire [4:0] _T_188; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236133.4]
  wire [4:0] _T_189; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236134.4]
  wire [4:0] _T_190; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236135.4]
  wire [4:0] _T_191; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236136.4]
  wire [4:0] _T_192; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236137.4]
  wire [53:0] _GEN_29; // @[rawFloatFromFN.scala 54:36:chipyard.TestHarness.RocketConfig.fir@236138.4]
  wire [53:0] _T_193; // @[rawFloatFromFN.scala 54:36:chipyard.TestHarness.RocketConfig.fir@236138.4]
  wire [22:0] _T_195; // @[rawFloatFromFN.scala 54:64:chipyard.TestHarness.RocketConfig.fir@236140.4]
  wire [8:0] _GEN_30; // @[rawFloatFromFN.scala 57:26:chipyard.TestHarness.RocketConfig.fir@236141.4]
  wire [8:0] _T_196; // @[rawFloatFromFN.scala 57:26:chipyard.TestHarness.RocketConfig.fir@236141.4]
  wire [8:0] _T_197; // @[rawFloatFromFN.scala 56:16:chipyard.TestHarness.RocketConfig.fir@236142.4]
  wire [1:0] _T_198; // @[rawFloatFromFN.scala 60:27:chipyard.TestHarness.RocketConfig.fir@236143.4]
  wire [7:0] _GEN_31; // @[rawFloatFromFN.scala 60:22:chipyard.TestHarness.RocketConfig.fir@236144.4]
  wire [7:0] _T_199; // @[rawFloatFromFN.scala 60:22:chipyard.TestHarness.RocketConfig.fir@236144.4]
  wire [8:0] _GEN_32; // @[rawFloatFromFN.scala 59:15:chipyard.TestHarness.RocketConfig.fir@236145.4]
  wire [8:0] _T_201; // @[rawFloatFromFN.scala 59:15:chipyard.TestHarness.RocketConfig.fir@236146.4]
  wire  _T_202; // @[rawFloatFromFN.scala 62:34:chipyard.TestHarness.RocketConfig.fir@236147.4]
  wire  _T_204; // @[rawFloatFromFN.scala 63:62:chipyard.TestHarness.RocketConfig.fir@236149.4]
  wire  _T_206; // @[rawFloatFromFN.scala 66:36:chipyard.TestHarness.RocketConfig.fir@236152.4]
  wire  _T_207; // @[rawFloatFromFN.scala 66:33:chipyard.TestHarness.RocketConfig.fir@236153.4]
  wire [9:0] _T_210; // @[rawFloatFromFN.scala 70:48:chipyard.TestHarness.RocketConfig.fir@236160.4]
  wire  _T_211; // @[rawFloatFromFN.scala 72:29:chipyard.TestHarness.RocketConfig.fir@236162.4]
  wire [22:0] _T_212; // @[rawFloatFromFN.scala 72:42:chipyard.TestHarness.RocketConfig.fir@236163.4]
  wire [24:0] _T_214; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@236165.4]
  wire [2:0] _T_216; // @[recFNFromFN.scala 48:16:chipyard.TestHarness.RocketConfig.fir@236168.4]
  wire [2:0] _GEN_33; // @[recFNFromFN.scala 48:79:chipyard.TestHarness.RocketConfig.fir@236170.4]
  wire [2:0] _T_218; // @[recFNFromFN.scala 48:79:chipyard.TestHarness.RocketConfig.fir@236170.4]
  wire [32:0] _T_223; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@236175.4]
  wire  _T_226; // @[FPU.scala 283:42:chipyard.TestHarness.RocketConfig.fir@236178.4]
  wire [64:0] _T_237; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@236189.4]
  wire  _T_239; // @[FPU.scala 200:56:chipyard.TestHarness.RocketConfig.fir@236191.4]
  wire  _T_245; // @[FPU.scala 489:57:chipyard.TestHarness.RocketConfig.fir@236200.4]
  wire [32:0] _T_247; // @[FPU.scala 490:45:chipyard.TestHarness.RocketConfig.fir@236203.6]
  wire [31:0] _T_248; // @[FPU.scala 490:60:chipyard.TestHarness.RocketConfig.fir@236204.6]
  wire [32:0] _T_249; // @[FPU.scala 490:19:chipyard.TestHarness.RocketConfig.fir@236205.6]
  wire [64:0] _T_255; // @[FPU.scala 358:25:chipyard.TestHarness.RocketConfig.fir@236227.6]
  wire  _T_257; // @[FPU.scala 200:56:chipyard.TestHarness.RocketConfig.fir@236229.6]
  wire [64:0] _T_258; // @[FPU.scala 359:10:chipyard.TestHarness.RocketConfig.fir@236230.6]
  wire [64:0] _T_260; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@236232.6]
  reg [64:0] _T_266_data; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@236242.4]
  reg [95:0] _RAND_6;
  reg [4:0] _T_266_exc; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@236242.4]
  reg [31:0] _RAND_7;
  INToRecFN INToRecFN ( // @[FPU.scala 500:23:chipyard.TestHarness.RocketConfig.fir@236210.6]
    .io_signedIn(INToRecFN_io_signedIn),
    .io_in(INToRecFN_io_in),
    .io_roundingMode(INToRecFN_io_roundingMode),
    .io_out(INToRecFN_io_out),
    .io_exceptionFlags(INToRecFN_io_exceptionFlags)
  );
  INToRecFN_1 INToRecFN_1 ( // @[FPU.scala 500:23:chipyard.TestHarness.RocketConfig.fir@236218.6]
    .io_signedIn(INToRecFN_1_io_signedIn),
    .io_in(INToRecFN_1_io_in),
    .io_roundingMode(INToRecFN_1_io_roundingMode),
    .io_out(INToRecFN_1_io_out),
    .io_exceptionFlags(INToRecFN_1_io_exceptionFlags)
  );
  assign tag = ~inPipe_bits_singleIn; // @[FPU.scala 479:13:chipyard.TestHarness.RocketConfig.fir@235934.4]
  assign _T_2 = tag ? 64'h0 : 64'hffffffff00000000; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@235940.4]
  assign _T_3 = _T_2 | inPipe_bits_in1; // @[FPU.scala 376:23:chipyard.TestHarness.RocketConfig.fir@235941.4]
  assign _T_7 = _T_3[62:52] == 11'h0; // @[rawFloatFromFN.scala 50:34:chipyard.TestHarness.RocketConfig.fir@235945.4]
  assign _T_8 = _T_3[51:0] == 52'h0; // @[rawFloatFromFN.scala 51:38:chipyard.TestHarness.RocketConfig.fir@235946.4]
  assign _T_61 = _T_3[1] ? 6'h32 : 6'h33; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235999.4]
  assign _T_62 = _T_3[2] ? 6'h31 : _T_61; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236000.4]
  assign _T_63 = _T_3[3] ? 6'h30 : _T_62; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236001.4]
  assign _T_64 = _T_3[4] ? 6'h2f : _T_63; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236002.4]
  assign _T_65 = _T_3[5] ? 6'h2e : _T_64; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236003.4]
  assign _T_66 = _T_3[6] ? 6'h2d : _T_65; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236004.4]
  assign _T_67 = _T_3[7] ? 6'h2c : _T_66; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236005.4]
  assign _T_68 = _T_3[8] ? 6'h2b : _T_67; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236006.4]
  assign _T_69 = _T_3[9] ? 6'h2a : _T_68; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236007.4]
  assign _T_70 = _T_3[10] ? 6'h29 : _T_69; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236008.4]
  assign _T_71 = _T_3[11] ? 6'h28 : _T_70; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236009.4]
  assign _T_72 = _T_3[12] ? 6'h27 : _T_71; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236010.4]
  assign _T_73 = _T_3[13] ? 6'h26 : _T_72; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236011.4]
  assign _T_74 = _T_3[14] ? 6'h25 : _T_73; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236012.4]
  assign _T_75 = _T_3[15] ? 6'h24 : _T_74; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236013.4]
  assign _T_76 = _T_3[16] ? 6'h23 : _T_75; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236014.4]
  assign _T_77 = _T_3[17] ? 6'h22 : _T_76; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236015.4]
  assign _T_78 = _T_3[18] ? 6'h21 : _T_77; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236016.4]
  assign _T_79 = _T_3[19] ? 6'h20 : _T_78; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236017.4]
  assign _T_80 = _T_3[20] ? 6'h1f : _T_79; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236018.4]
  assign _T_81 = _T_3[21] ? 6'h1e : _T_80; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236019.4]
  assign _T_82 = _T_3[22] ? 6'h1d : _T_81; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236020.4]
  assign _T_83 = _T_3[23] ? 6'h1c : _T_82; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236021.4]
  assign _T_84 = _T_3[24] ? 6'h1b : _T_83; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236022.4]
  assign _T_85 = _T_3[25] ? 6'h1a : _T_84; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236023.4]
  assign _T_86 = _T_3[26] ? 6'h19 : _T_85; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236024.4]
  assign _T_87 = _T_3[27] ? 6'h18 : _T_86; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236025.4]
  assign _T_88 = _T_3[28] ? 6'h17 : _T_87; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236026.4]
  assign _T_89 = _T_3[29] ? 6'h16 : _T_88; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236027.4]
  assign _T_90 = _T_3[30] ? 6'h15 : _T_89; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236028.4]
  assign _T_91 = _T_3[31] ? 6'h14 : _T_90; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236029.4]
  assign _T_92 = _T_3[32] ? 6'h13 : _T_91; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236030.4]
  assign _T_93 = _T_3[33] ? 6'h12 : _T_92; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236031.4]
  assign _T_94 = _T_3[34] ? 6'h11 : _T_93; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236032.4]
  assign _T_95 = _T_3[35] ? 6'h10 : _T_94; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236033.4]
  assign _T_96 = _T_3[36] ? 6'hf : _T_95; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236034.4]
  assign _T_97 = _T_3[37] ? 6'he : _T_96; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236035.4]
  assign _T_98 = _T_3[38] ? 6'hd : _T_97; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236036.4]
  assign _T_99 = _T_3[39] ? 6'hc : _T_98; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236037.4]
  assign _T_100 = _T_3[40] ? 6'hb : _T_99; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236038.4]
  assign _T_101 = _T_3[41] ? 6'ha : _T_100; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236039.4]
  assign _T_102 = _T_3[42] ? 6'h9 : _T_101; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236040.4]
  assign _T_103 = _T_3[43] ? 6'h8 : _T_102; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236041.4]
  assign _T_104 = _T_3[44] ? 6'h7 : _T_103; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236042.4]
  assign _T_105 = _T_3[45] ? 6'h6 : _T_104; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236043.4]
  assign _T_106 = _T_3[46] ? 6'h5 : _T_105; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236044.4]
  assign _T_107 = _T_3[47] ? 6'h4 : _T_106; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236045.4]
  assign _T_108 = _T_3[48] ? 6'h3 : _T_107; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236046.4]
  assign _T_109 = _T_3[49] ? 6'h2 : _T_108; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236047.4]
  assign _T_110 = _T_3[50] ? 6'h1 : _T_109; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236048.4]
  assign _T_111 = _T_3[51] ? 6'h0 : _T_110; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236049.4]
  assign _GEN_24 = {{63'd0}, _T_3[51:0]}; // @[rawFloatFromFN.scala 54:36:chipyard.TestHarness.RocketConfig.fir@236050.4]
  assign _T_112 = _GEN_24 << _T_111; // @[rawFloatFromFN.scala 54:36:chipyard.TestHarness.RocketConfig.fir@236050.4]
  assign _T_114 = {_T_112[50:0], 1'h0}; // @[rawFloatFromFN.scala 54:64:chipyard.TestHarness.RocketConfig.fir@236052.4]
  assign _GEN_25 = {{6'd0}, _T_111}; // @[rawFloatFromFN.scala 57:26:chipyard.TestHarness.RocketConfig.fir@236053.4]
  assign _T_115 = _GEN_25 ^ 12'hfff; // @[rawFloatFromFN.scala 57:26:chipyard.TestHarness.RocketConfig.fir@236053.4]
  assign _T_116 = _T_7 ? _T_115 : {{1'd0}, _T_3[62:52]}; // @[rawFloatFromFN.scala 56:16:chipyard.TestHarness.RocketConfig.fir@236054.4]
  assign _T_117 = _T_7 ? 2'h2 : 2'h1; // @[rawFloatFromFN.scala 60:27:chipyard.TestHarness.RocketConfig.fir@236055.4]
  assign _GEN_26 = {{9'd0}, _T_117}; // @[rawFloatFromFN.scala 60:22:chipyard.TestHarness.RocketConfig.fir@236056.4]
  assign _T_118 = 11'h400 | _GEN_26; // @[rawFloatFromFN.scala 60:22:chipyard.TestHarness.RocketConfig.fir@236056.4]
  assign _GEN_27 = {{1'd0}, _T_118}; // @[rawFloatFromFN.scala 59:15:chipyard.TestHarness.RocketConfig.fir@236057.4]
  assign _T_120 = _T_116 + _GEN_27; // @[rawFloatFromFN.scala 59:15:chipyard.TestHarness.RocketConfig.fir@236058.4]
  assign _T_121 = _T_7 & _T_8; // @[rawFloatFromFN.scala 62:34:chipyard.TestHarness.RocketConfig.fir@236059.4]
  assign _T_123 = _T_120[11:10] == 2'h3; // @[rawFloatFromFN.scala 63:62:chipyard.TestHarness.RocketConfig.fir@236061.4]
  assign _T_125 = ~_T_8; // @[rawFloatFromFN.scala 66:36:chipyard.TestHarness.RocketConfig.fir@236064.4]
  assign _T_126 = _T_123 & _T_125; // @[rawFloatFromFN.scala 66:33:chipyard.TestHarness.RocketConfig.fir@236065.4]
  assign _T_129 = {1'b0,$signed(_T_120)}; // @[rawFloatFromFN.scala 70:48:chipyard.TestHarness.RocketConfig.fir@236072.4]
  assign _T_130 = ~_T_121; // @[rawFloatFromFN.scala 72:29:chipyard.TestHarness.RocketConfig.fir@236074.4]
  assign _T_131 = _T_7 ? _T_114 : _T_3[51:0]; // @[rawFloatFromFN.scala 72:42:chipyard.TestHarness.RocketConfig.fir@236075.4]
  assign _T_133 = {1'h0,_T_130,_T_131}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@236077.4]
  assign _T_135 = _T_121 ? 3'h0 : _T_129[11:9]; // @[recFNFromFN.scala 48:16:chipyard.TestHarness.RocketConfig.fir@236080.4]
  assign _GEN_28 = {{2'd0}, _T_126}; // @[recFNFromFN.scala 48:79:chipyard.TestHarness.RocketConfig.fir@236082.4]
  assign _T_137 = _T_135 | _GEN_28; // @[recFNFromFN.scala 48:79:chipyard.TestHarness.RocketConfig.fir@236082.4]
  assign _T_142 = {_T_3[63],_T_137,_T_129[8:0],_T_133[51:0]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@236087.4]
  assign _T_146 = _T_3[30:23] == 8'h0; // @[rawFloatFromFN.scala 50:34:chipyard.TestHarness.RocketConfig.fir@236091.4]
  assign _T_147 = _T_3[22:0] == 23'h0; // @[rawFloatFromFN.scala 51:38:chipyard.TestHarness.RocketConfig.fir@236092.4]
  assign _T_171 = _T_3[1] ? 5'h15 : 5'h16; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236116.4]
  assign _T_172 = _T_3[2] ? 5'h14 : _T_171; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236117.4]
  assign _T_173 = _T_3[3] ? 5'h13 : _T_172; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236118.4]
  assign _T_174 = _T_3[4] ? 5'h12 : _T_173; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236119.4]
  assign _T_175 = _T_3[5] ? 5'h11 : _T_174; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236120.4]
  assign _T_176 = _T_3[6] ? 5'h10 : _T_175; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236121.4]
  assign _T_177 = _T_3[7] ? 5'hf : _T_176; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236122.4]
  assign _T_178 = _T_3[8] ? 5'he : _T_177; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236123.4]
  assign _T_179 = _T_3[9] ? 5'hd : _T_178; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236124.4]
  assign _T_180 = _T_3[10] ? 5'hc : _T_179; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236125.4]
  assign _T_181 = _T_3[11] ? 5'hb : _T_180; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236126.4]
  assign _T_182 = _T_3[12] ? 5'ha : _T_181; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236127.4]
  assign _T_183 = _T_3[13] ? 5'h9 : _T_182; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236128.4]
  assign _T_184 = _T_3[14] ? 5'h8 : _T_183; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236129.4]
  assign _T_185 = _T_3[15] ? 5'h7 : _T_184; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236130.4]
  assign _T_186 = _T_3[16] ? 5'h6 : _T_185; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236131.4]
  assign _T_187 = _T_3[17] ? 5'h5 : _T_186; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236132.4]
  assign _T_188 = _T_3[18] ? 5'h4 : _T_187; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236133.4]
  assign _T_189 = _T_3[19] ? 5'h3 : _T_188; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236134.4]
  assign _T_190 = _T_3[20] ? 5'h2 : _T_189; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236135.4]
  assign _T_191 = _T_3[21] ? 5'h1 : _T_190; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236136.4]
  assign _T_192 = _T_3[22] ? 5'h0 : _T_191; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@236137.4]
  assign _GEN_29 = {{31'd0}, _T_3[22:0]}; // @[rawFloatFromFN.scala 54:36:chipyard.TestHarness.RocketConfig.fir@236138.4]
  assign _T_193 = _GEN_29 << _T_192; // @[rawFloatFromFN.scala 54:36:chipyard.TestHarness.RocketConfig.fir@236138.4]
  assign _T_195 = {_T_193[21:0], 1'h0}; // @[rawFloatFromFN.scala 54:64:chipyard.TestHarness.RocketConfig.fir@236140.4]
  assign _GEN_30 = {{4'd0}, _T_192}; // @[rawFloatFromFN.scala 57:26:chipyard.TestHarness.RocketConfig.fir@236141.4]
  assign _T_196 = _GEN_30 ^ 9'h1ff; // @[rawFloatFromFN.scala 57:26:chipyard.TestHarness.RocketConfig.fir@236141.4]
  assign _T_197 = _T_146 ? _T_196 : {{1'd0}, _T_3[30:23]}; // @[rawFloatFromFN.scala 56:16:chipyard.TestHarness.RocketConfig.fir@236142.4]
  assign _T_198 = _T_146 ? 2'h2 : 2'h1; // @[rawFloatFromFN.scala 60:27:chipyard.TestHarness.RocketConfig.fir@236143.4]
  assign _GEN_31 = {{6'd0}, _T_198}; // @[rawFloatFromFN.scala 60:22:chipyard.TestHarness.RocketConfig.fir@236144.4]
  assign _T_199 = 8'h80 | _GEN_31; // @[rawFloatFromFN.scala 60:22:chipyard.TestHarness.RocketConfig.fir@236144.4]
  assign _GEN_32 = {{1'd0}, _T_199}; // @[rawFloatFromFN.scala 59:15:chipyard.TestHarness.RocketConfig.fir@236145.4]
  assign _T_201 = _T_197 + _GEN_32; // @[rawFloatFromFN.scala 59:15:chipyard.TestHarness.RocketConfig.fir@236146.4]
  assign _T_202 = _T_146 & _T_147; // @[rawFloatFromFN.scala 62:34:chipyard.TestHarness.RocketConfig.fir@236147.4]
  assign _T_204 = _T_201[8:7] == 2'h3; // @[rawFloatFromFN.scala 63:62:chipyard.TestHarness.RocketConfig.fir@236149.4]
  assign _T_206 = ~_T_147; // @[rawFloatFromFN.scala 66:36:chipyard.TestHarness.RocketConfig.fir@236152.4]
  assign _T_207 = _T_204 & _T_206; // @[rawFloatFromFN.scala 66:33:chipyard.TestHarness.RocketConfig.fir@236153.4]
  assign _T_210 = {1'b0,$signed(_T_201)}; // @[rawFloatFromFN.scala 70:48:chipyard.TestHarness.RocketConfig.fir@236160.4]
  assign _T_211 = ~_T_202; // @[rawFloatFromFN.scala 72:29:chipyard.TestHarness.RocketConfig.fir@236162.4]
  assign _T_212 = _T_146 ? _T_195 : _T_3[22:0]; // @[rawFloatFromFN.scala 72:42:chipyard.TestHarness.RocketConfig.fir@236163.4]
  assign _T_214 = {1'h0,_T_211,_T_212}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@236165.4]
  assign _T_216 = _T_202 ? 3'h0 : _T_210[8:6]; // @[recFNFromFN.scala 48:16:chipyard.TestHarness.RocketConfig.fir@236168.4]
  assign _GEN_33 = {{2'd0}, _T_207}; // @[recFNFromFN.scala 48:79:chipyard.TestHarness.RocketConfig.fir@236170.4]
  assign _T_218 = _T_216 | _GEN_33; // @[recFNFromFN.scala 48:79:chipyard.TestHarness.RocketConfig.fir@236170.4]
  assign _T_223 = {_T_3[31],_T_218,_T_210[5:0],_T_214[22:0]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@236175.4]
  assign _T_226 = &_T_142[51:32]; // @[FPU.scala 283:42:chipyard.TestHarness.RocketConfig.fir@236178.4]
  assign _T_237 = {_T_142[64:61],_T_226,_T_142[59:53],_T_223[31],_T_142[51:32],_T_223[32],_T_223[30:0]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@236189.4]
  assign _T_239 = &_T_142[63:61]; // @[FPU.scala 200:56:chipyard.TestHarness.RocketConfig.fir@236191.4]
  assign _T_245 = ~inPipe_bits_typ[1]; // @[FPU.scala 489:57:chipyard.TestHarness.RocketConfig.fir@236200.4]
  assign _T_247 = {1'b0,$signed(inPipe_bits_in1[31:0])}; // @[FPU.scala 490:45:chipyard.TestHarness.RocketConfig.fir@236203.6]
  assign _T_248 = inPipe_bits_in1[31:0]; // @[FPU.scala 490:60:chipyard.TestHarness.RocketConfig.fir@236204.6]
  assign _T_249 = inPipe_bits_typ[0] ? $signed(_T_247) : $signed({{1{_T_248[31]}},_T_248}); // @[FPU.scala 490:19:chipyard.TestHarness.RocketConfig.fir@236205.6]
  assign _T_255 = INToRecFN_1_io_out & 65'h1efefffffffffffff; // @[FPU.scala 358:25:chipyard.TestHarness.RocketConfig.fir@236227.6]
  assign _T_257 = &INToRecFN_1_io_out[63:61]; // @[FPU.scala 200:56:chipyard.TestHarness.RocketConfig.fir@236229.6]
  assign _T_258 = _T_257 ? _T_255 : INToRecFN_1_io_out; // @[FPU.scala 359:10:chipyard.TestHarness.RocketConfig.fir@236230.6]
  assign _T_260 = {_T_258[64:33],INToRecFN_io_out}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@236232.6]
  assign io_out_bits_data = _T_266_data; // @[FPU.scala 514:10:chipyard.TestHarness.RocketConfig.fir@236251.4]
  assign io_out_bits_exc = _T_266_exc; // @[FPU.scala 514:10:chipyard.TestHarness.RocketConfig.fir@236251.4]
  assign INToRecFN_io_signedIn = ~inPipe_bits_typ[0]; // @[FPU.scala 501:23:chipyard.TestHarness.RocketConfig.fir@236214.6]
  assign INToRecFN_io_in = _T_245 ? $signed({{31{_T_249[32]}},_T_249}) : $signed(inPipe_bits_in1); // @[FPU.scala 502:17:chipyard.TestHarness.RocketConfig.fir@236215.6]
  assign INToRecFN_io_roundingMode = inPipe_bits_rm; // @[FPU.scala 503:27:chipyard.TestHarness.RocketConfig.fir@236216.6]
  assign INToRecFN_1_io_signedIn = ~inPipe_bits_typ[0]; // @[FPU.scala 501:23:chipyard.TestHarness.RocketConfig.fir@236222.6]
  assign INToRecFN_1_io_in = _T_245 ? $signed({{31{_T_249[32]}},_T_249}) : $signed(inPipe_bits_in1); // @[FPU.scala 502:17:chipyard.TestHarness.RocketConfig.fir@236223.6]
  assign INToRecFN_1_io_roundingMode = inPipe_bits_rm; // @[FPU.scala 503:27:chipyard.TestHarness.RocketConfig.fir@236224.6]
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
  inPipe_valid = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  inPipe_bits_singleIn = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  inPipe_bits_wflags = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  inPipe_bits_rm = _RAND_3[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  inPipe_bits_typ = _RAND_4[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {2{`RANDOM}};
  inPipe_bits_in1 = _RAND_5[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {3{`RANDOM}};
  _T_266_data = _RAND_6[64:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  _T_266_exc = _RAND_7[4:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      inPipe_valid <= 1'h0;
    end else begin
      inPipe_valid <= io_in_valid;
    end
    if (io_in_valid) begin
      inPipe_bits_singleIn <= io_in_bits_singleIn;
    end
    if (io_in_valid) begin
      inPipe_bits_wflags <= io_in_bits_wflags;
    end
    if (io_in_valid) begin
      inPipe_bits_rm <= io_in_bits_rm;
    end
    if (io_in_valid) begin
      inPipe_bits_typ <= io_in_bits_typ;
    end
    if (io_in_valid) begin
      inPipe_bits_in1 <= io_in_bits_in1;
    end
    if (inPipe_valid) begin
      if (inPipe_bits_wflags) begin
        if (tag) begin
          if (_T_257) begin
            _T_266_data <= _T_255;
          end else begin
            _T_266_data <= INToRecFN_1_io_out;
          end
        end else begin
          _T_266_data <= _T_260;
        end
      end else if (_T_239) begin
        _T_266_data <= _T_237;
      end else begin
        _T_266_data <= _T_142;
      end
    end
    if (inPipe_valid) begin
      if (inPipe_bits_wflags) begin
        if (tag) begin
          _T_266_exc <= INToRecFN_1_io_exceptionFlags;
        end else begin
          _T_266_exc <= INToRecFN_io_exceptionFlags;
        end
      end else begin
        _T_266_exc <= 5'h0;
      end
    end
  end
endmodule
