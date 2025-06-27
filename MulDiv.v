module MulDiv( // @[:chipyard.TestHarness.RocketConfig.fir@249778.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@249779.4]
  input         reset, // @[:chipyard.TestHarness.RocketConfig.fir@249780.4]
  output        io_req_ready, // @[:chipyard.TestHarness.RocketConfig.fir@249781.4]
  input         io_req_valid, // @[:chipyard.TestHarness.RocketConfig.fir@249781.4]
  input  [3:0]  io_req_bits_fn, // @[:chipyard.TestHarness.RocketConfig.fir@249781.4]
  input         io_req_bits_dw, // @[:chipyard.TestHarness.RocketConfig.fir@249781.4]
  input  [63:0] io_req_bits_in1, // @[:chipyard.TestHarness.RocketConfig.fir@249781.4]
  input  [63:0] io_req_bits_in2, // @[:chipyard.TestHarness.RocketConfig.fir@249781.4]
  input  [4:0]  io_req_bits_tag, // @[:chipyard.TestHarness.RocketConfig.fir@249781.4]
  input         io_kill, // @[:chipyard.TestHarness.RocketConfig.fir@249781.4]
  input         io_resp_ready, // @[:chipyard.TestHarness.RocketConfig.fir@249781.4]
  output        io_resp_valid, // @[:chipyard.TestHarness.RocketConfig.fir@249781.4]
  output [63:0] io_resp_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@249781.4]
  output [4:0]  io_resp_bits_tag // @[:chipyard.TestHarness.RocketConfig.fir@249781.4]
);
  reg [2:0] state; // @[Multiplier.scala 52:22:chipyard.TestHarness.RocketConfig.fir@249783.4]
  reg [31:0] _RAND_0;
  reg  req_dw; // @[Multiplier.scala 54:16:chipyard.TestHarness.RocketConfig.fir@249784.4]
  reg [31:0] _RAND_1;
  reg [4:0] req_tag; // @[Multiplier.scala 54:16:chipyard.TestHarness.RocketConfig.fir@249784.4]
  reg [31:0] _RAND_2;
  reg [6:0] count; // @[Multiplier.scala 55:18:chipyard.TestHarness.RocketConfig.fir@249785.4]
  reg [31:0] _RAND_3;
  reg  neg_out; // @[Multiplier.scala 58:20:chipyard.TestHarness.RocketConfig.fir@249786.4]
  reg [31:0] _RAND_4;
  reg  isHi; // @[Multiplier.scala 59:17:chipyard.TestHarness.RocketConfig.fir@249787.4]
  reg [31:0] _RAND_5;
  reg  resHi; // @[Multiplier.scala 60:18:chipyard.TestHarness.RocketConfig.fir@249788.4]
  reg [31:0] _RAND_6;
  reg [64:0] divisor; // @[Multiplier.scala 61:20:chipyard.TestHarness.RocketConfig.fir@249789.4]
  reg [95:0] _RAND_7;
  reg [129:0] remainder; // @[Multiplier.scala 62:22:chipyard.TestHarness.RocketConfig.fir@249790.4]
  reg [159:0] _RAND_8;
  wire [3:0] _T; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@249791.4]
  wire  cmdMul; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@249792.4]
  wire [3:0] _T_3; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@249794.4]
  wire  _T_4; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@249795.4]
  wire [3:0] _T_5; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@249796.4]
  wire  _T_6; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@249797.4]
  wire  cmdHi; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@249799.4]
  wire [3:0] _T_9; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@249800.4]
  wire  _T_10; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@249801.4]
  wire [3:0] _T_11; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@249802.4]
  wire  _T_12; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@249803.4]
  wire  lhsSigned; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@249805.4]
  wire  _T_16; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@249807.4]
  wire  rhsSigned; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@249809.4]
  wire  _T_19; // @[Multiplier.scala 79:60:chipyard.TestHarness.RocketConfig.fir@249814.4]
  wire  _T_23; // @[Multiplier.scala 82:29:chipyard.TestHarness.RocketConfig.fir@249818.4]
  wire  lhs_sign; // @[Multiplier.scala 82:23:chipyard.TestHarness.RocketConfig.fir@249819.4]
  wire [31:0] _T_25; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@249821.4]
  wire [31:0] _T_27; // @[Multiplier.scala 83:17:chipyard.TestHarness.RocketConfig.fir@249823.4]
  wire [63:0] lhs_in; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@249825.4]
  wire  _T_33; // @[Multiplier.scala 82:29:chipyard.TestHarness.RocketConfig.fir@249830.4]
  wire  rhs_sign; // @[Multiplier.scala 82:23:chipyard.TestHarness.RocketConfig.fir@249831.4]
  wire [31:0] _T_35; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@249833.4]
  wire [31:0] _T_37; // @[Multiplier.scala 83:17:chipyard.TestHarness.RocketConfig.fir@249835.4]
  wire [64:0] subtractor; // @[Multiplier.scala 89:37:chipyard.TestHarness.RocketConfig.fir@249840.4]
  wire [63:0] result; // @[Multiplier.scala 90:19:chipyard.TestHarness.RocketConfig.fir@249843.4]
  wire [63:0] negated_remainder; // @[Multiplier.scala 91:27:chipyard.TestHarness.RocketConfig.fir@249845.4]
  wire  _T_44; // @[Multiplier.scala 93:39:chipyard.TestHarness.RocketConfig.fir@249846.4]
  wire  _T_47; // @[Multiplier.scala 102:39:chipyard.TestHarness.RocketConfig.fir@249858.4]
  wire  _T_48; // @[Multiplier.scala 107:39:chipyard.TestHarness.RocketConfig.fir@249864.4]
  wire [128:0] _T_51; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@249868.6]
  wire [64:0] _T_55; // @[Multiplier.scala 111:37:chipyard.TestHarness.RocketConfig.fir@249872.6]
  wire [8:0] _T_59; // @[Multiplier.scala 113:60:chipyard.TestHarness.RocketConfig.fir@249876.6]
  wire [64:0] _GEN_37; // @[Multiplier.scala 113:67:chipyard.TestHarness.RocketConfig.fir@249877.6]
  wire [73:0] _T_60; // @[Multiplier.scala 113:67:chipyard.TestHarness.RocketConfig.fir@249877.6]
  wire [73:0] _GEN_38; // @[Multiplier.scala 113:76:chipyard.TestHarness.RocketConfig.fir@249878.6]
  wire [73:0] _T_65; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@249882.6]
  wire [129:0] _T_66; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@249883.6]
  wire  _T_67; // @[Multiplier.scala 115:32:chipyard.TestHarness.RocketConfig.fir@249884.6]
  wire  _T_68; // @[Multiplier.scala 115:57:chipyard.TestHarness.RocketConfig.fir@249885.6]
  wire [10:0] _T_69; // @[Multiplier.scala 117:54:chipyard.TestHarness.RocketConfig.fir@249886.6]
  wire [64:0] _T_71; // @[Multiplier.scala 117:44:chipyard.TestHarness.RocketConfig.fir@249888.6]
  wire  _T_73; // @[Multiplier.scala 118:45:chipyard.TestHarness.RocketConfig.fir@249890.6]
  wire  _T_75; // @[Multiplier.scala 118:79:chipyard.TestHarness.RocketConfig.fir@249892.6]
  wire  _T_76; // @[Multiplier.scala 118:70:chipyard.TestHarness.RocketConfig.fir@249893.6]
  wire  _T_77; // @[Multiplier.scala 119:7:chipyard.TestHarness.RocketConfig.fir@249894.6]
  wire  _T_78; // @[Multiplier.scala 118:85:chipyard.TestHarness.RocketConfig.fir@249895.6]
  wire [63:0] _T_79; // @[Multiplier.scala 119:26:chipyard.TestHarness.RocketConfig.fir@249896.6]
  wire [63:0] _T_80; // @[Multiplier.scala 119:24:chipyard.TestHarness.RocketConfig.fir@249897.6]
  wire  _T_81; // @[Multiplier.scala 119:37:chipyard.TestHarness.RocketConfig.fir@249898.6]
  wire  _T_82; // @[Multiplier.scala 119:13:chipyard.TestHarness.RocketConfig.fir@249899.6]
  wire [10:0] _T_85; // @[Multiplier.scala 120:36:chipyard.TestHarness.RocketConfig.fir@249902.6]
  wire [128:0] _T_87; // @[Multiplier.scala 120:27:chipyard.TestHarness.RocketConfig.fir@249904.6]
  wire [129:0] _T_89; // @[Multiplier.scala 121:55:chipyard.TestHarness.RocketConfig.fir@249906.6]
  wire [128:0] _T_91; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@249908.6]
  wire [129:0] _T_95; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@249912.6]
  wire [6:0] _T_97; // @[Multiplier.scala 124:20:chipyard.TestHarness.RocketConfig.fir@249915.6]
  wire  _T_98; // @[Multiplier.scala 125:25:chipyard.TestHarness.RocketConfig.fir@249917.6]
  wire  _T_99; // @[Multiplier.scala 125:16:chipyard.TestHarness.RocketConfig.fir@249918.6]
  wire  _T_100; // @[Multiplier.scala 130:39:chipyard.TestHarness.RocketConfig.fir@249924.4]
  wire [63:0] _T_104; // @[Multiplier.scala 135:14:chipyard.TestHarness.RocketConfig.fir@249929.6]
  wire  _T_106; // @[Multiplier.scala 135:67:chipyard.TestHarness.RocketConfig.fir@249931.6]
  wire [128:0] _T_108; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@249933.6]
  wire  _T_109; // @[Multiplier.scala 139:17:chipyard.TestHarness.RocketConfig.fir@249935.6]
  wire  _T_113; // @[Multiplier.scala 147:24:chipyard.TestHarness.RocketConfig.fir@249944.6]
  wire  _T_116; // @[Multiplier.scala 147:30:chipyard.TestHarness.RocketConfig.fir@249947.6]
  wire  _T_121; // @[CircuitMath.scala 37:22:chipyard.TestHarness.RocketConfig.fir@249952.6]
  wire  _T_124; // @[CircuitMath.scala 37:22:chipyard.TestHarness.RocketConfig.fir@249955.6]
  wire  _T_127; // @[CircuitMath.scala 37:22:chipyard.TestHarness.RocketConfig.fir@249958.6]
  wire  _T_130; // @[CircuitMath.scala 37:22:chipyard.TestHarness.RocketConfig.fir@249961.6]
  wire [1:0] _T_134; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@249965.6]
  wire [1:0] _T_135; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@249966.6]
  wire [1:0] _T_139; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@249970.6]
  wire [1:0] _T_140; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@249971.6]
  wire [1:0] _T_141; // @[CircuitMath.scala 38:21:chipyard.TestHarness.RocketConfig.fir@249972.6]
  wire [2:0] _T_142; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@249973.6]
  wire  _T_145; // @[CircuitMath.scala 37:22:chipyard.TestHarness.RocketConfig.fir@249976.6]
  wire [1:0] _T_149; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@249980.6]
  wire [1:0] _T_150; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@249981.6]
  wire [1:0] _T_154; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@249985.6]
  wire [1:0] _T_155; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@249986.6]
  wire [1:0] _T_156; // @[CircuitMath.scala 38:21:chipyard.TestHarness.RocketConfig.fir@249987.6]
  wire [2:0] _T_157; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@249988.6]
  wire [2:0] _T_158; // @[CircuitMath.scala 38:21:chipyard.TestHarness.RocketConfig.fir@249989.6]
  wire [3:0] _T_159; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@249990.6]
  wire  _T_162; // @[CircuitMath.scala 37:22:chipyard.TestHarness.RocketConfig.fir@249993.6]
  wire  _T_165; // @[CircuitMath.scala 37:22:chipyard.TestHarness.RocketConfig.fir@249996.6]
  wire [1:0] _T_169; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250000.6]
  wire [1:0] _T_170; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250001.6]
  wire [1:0] _T_174; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250005.6]
  wire [1:0] _T_175; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250006.6]
  wire [1:0] _T_176; // @[CircuitMath.scala 38:21:chipyard.TestHarness.RocketConfig.fir@250007.6]
  wire [2:0] _T_177; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@250008.6]
  wire  _T_180; // @[CircuitMath.scala 37:22:chipyard.TestHarness.RocketConfig.fir@250011.6]
  wire [1:0] _T_184; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250015.6]
  wire [1:0] _T_185; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250016.6]
  wire [1:0] _T_189; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250020.6]
  wire [1:0] _T_190; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250021.6]
  wire [1:0] _T_191; // @[CircuitMath.scala 38:21:chipyard.TestHarness.RocketConfig.fir@250022.6]
  wire [2:0] _T_192; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@250023.6]
  wire [2:0] _T_193; // @[CircuitMath.scala 38:21:chipyard.TestHarness.RocketConfig.fir@250024.6]
  wire [3:0] _T_194; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@250025.6]
  wire [3:0] _T_195; // @[CircuitMath.scala 38:21:chipyard.TestHarness.RocketConfig.fir@250026.6]
  wire [4:0] _T_196; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@250027.6]
  wire  _T_199; // @[CircuitMath.scala 37:22:chipyard.TestHarness.RocketConfig.fir@250030.6]
  wire  _T_202; // @[CircuitMath.scala 37:22:chipyard.TestHarness.RocketConfig.fir@250033.6]
  wire  _T_205; // @[CircuitMath.scala 37:22:chipyard.TestHarness.RocketConfig.fir@250036.6]
  wire [1:0] _T_209; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250040.6]
  wire [1:0] _T_210; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250041.6]
  wire [1:0] _T_214; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250045.6]
  wire [1:0] _T_215; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250046.6]
  wire [1:0] _T_216; // @[CircuitMath.scala 38:21:chipyard.TestHarness.RocketConfig.fir@250047.6]
  wire [2:0] _T_217; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@250048.6]
  wire  _T_220; // @[CircuitMath.scala 37:22:chipyard.TestHarness.RocketConfig.fir@250051.6]
  wire [1:0] _T_224; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250055.6]
  wire [1:0] _T_225; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250056.6]
  wire [1:0] _T_229; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250060.6]
  wire [1:0] _T_230; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250061.6]
  wire [1:0] _T_231; // @[CircuitMath.scala 38:21:chipyard.TestHarness.RocketConfig.fir@250062.6]
  wire [2:0] _T_232; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@250063.6]
  wire [2:0] _T_233; // @[CircuitMath.scala 38:21:chipyard.TestHarness.RocketConfig.fir@250064.6]
  wire [3:0] _T_234; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@250065.6]
  wire  _T_237; // @[CircuitMath.scala 37:22:chipyard.TestHarness.RocketConfig.fir@250068.6]
  wire  _T_240; // @[CircuitMath.scala 37:22:chipyard.TestHarness.RocketConfig.fir@250071.6]
  wire [1:0] _T_244; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250075.6]
  wire [1:0] _T_245; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250076.6]
  wire [1:0] _T_249; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250080.6]
  wire [1:0] _T_250; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250081.6]
  wire [1:0] _T_251; // @[CircuitMath.scala 38:21:chipyard.TestHarness.RocketConfig.fir@250082.6]
  wire [2:0] _T_252; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@250083.6]
  wire  _T_255; // @[CircuitMath.scala 37:22:chipyard.TestHarness.RocketConfig.fir@250086.6]
  wire [1:0] _T_259; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250090.6]
  wire [1:0] _T_260; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250091.6]
  wire [1:0] _T_264; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250095.6]
  wire [1:0] _T_265; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250096.6]
  wire [1:0] _T_266; // @[CircuitMath.scala 38:21:chipyard.TestHarness.RocketConfig.fir@250097.6]
  wire [2:0] _T_267; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@250098.6]
  wire [2:0] _T_268; // @[CircuitMath.scala 38:21:chipyard.TestHarness.RocketConfig.fir@250099.6]
  wire [3:0] _T_269; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@250100.6]
  wire [3:0] _T_270; // @[CircuitMath.scala 38:21:chipyard.TestHarness.RocketConfig.fir@250101.6]
  wire [4:0] _T_271; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@250102.6]
  wire [4:0] _T_272; // @[CircuitMath.scala 38:21:chipyard.TestHarness.RocketConfig.fir@250103.6]
  wire [5:0] _T_273; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@250104.6]
  wire  _T_278; // @[CircuitMath.scala 37:22:chipyard.TestHarness.RocketConfig.fir@250109.6]
  wire  _T_281; // @[CircuitMath.scala 37:22:chipyard.TestHarness.RocketConfig.fir@250112.6]
  wire  _T_284; // @[CircuitMath.scala 37:22:chipyard.TestHarness.RocketConfig.fir@250115.6]
  wire  _T_287; // @[CircuitMath.scala 37:22:chipyard.TestHarness.RocketConfig.fir@250118.6]
  wire [1:0] _T_291; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250122.6]
  wire [1:0] _T_292; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250123.6]
  wire [1:0] _T_296; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250127.6]
  wire [1:0] _T_297; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250128.6]
  wire [1:0] _T_298; // @[CircuitMath.scala 38:21:chipyard.TestHarness.RocketConfig.fir@250129.6]
  wire [2:0] _T_299; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@250130.6]
  wire  _T_302; // @[CircuitMath.scala 37:22:chipyard.TestHarness.RocketConfig.fir@250133.6]
  wire [1:0] _T_306; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250137.6]
  wire [1:0] _T_307; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250138.6]
  wire [1:0] _T_311; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250142.6]
  wire [1:0] _T_312; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250143.6]
  wire [1:0] _T_313; // @[CircuitMath.scala 38:21:chipyard.TestHarness.RocketConfig.fir@250144.6]
  wire [2:0] _T_314; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@250145.6]
  wire [2:0] _T_315; // @[CircuitMath.scala 38:21:chipyard.TestHarness.RocketConfig.fir@250146.6]
  wire [3:0] _T_316; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@250147.6]
  wire  _T_319; // @[CircuitMath.scala 37:22:chipyard.TestHarness.RocketConfig.fir@250150.6]
  wire  _T_322; // @[CircuitMath.scala 37:22:chipyard.TestHarness.RocketConfig.fir@250153.6]
  wire [1:0] _T_326; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250157.6]
  wire [1:0] _T_327; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250158.6]
  wire [1:0] _T_331; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250162.6]
  wire [1:0] _T_332; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250163.6]
  wire [1:0] _T_333; // @[CircuitMath.scala 38:21:chipyard.TestHarness.RocketConfig.fir@250164.6]
  wire [2:0] _T_334; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@250165.6]
  wire  _T_337; // @[CircuitMath.scala 37:22:chipyard.TestHarness.RocketConfig.fir@250168.6]
  wire [1:0] _T_341; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250172.6]
  wire [1:0] _T_342; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250173.6]
  wire [1:0] _T_346; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250177.6]
  wire [1:0] _T_347; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250178.6]
  wire [1:0] _T_348; // @[CircuitMath.scala 38:21:chipyard.TestHarness.RocketConfig.fir@250179.6]
  wire [2:0] _T_349; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@250180.6]
  wire [2:0] _T_350; // @[CircuitMath.scala 38:21:chipyard.TestHarness.RocketConfig.fir@250181.6]
  wire [3:0] _T_351; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@250182.6]
  wire [3:0] _T_352; // @[CircuitMath.scala 38:21:chipyard.TestHarness.RocketConfig.fir@250183.6]
  wire [4:0] _T_353; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@250184.6]
  wire  _T_356; // @[CircuitMath.scala 37:22:chipyard.TestHarness.RocketConfig.fir@250187.6]
  wire  _T_359; // @[CircuitMath.scala 37:22:chipyard.TestHarness.RocketConfig.fir@250190.6]
  wire  _T_362; // @[CircuitMath.scala 37:22:chipyard.TestHarness.RocketConfig.fir@250193.6]
  wire [1:0] _T_366; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250197.6]
  wire [1:0] _T_367; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250198.6]
  wire [1:0] _T_371; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250202.6]
  wire [1:0] _T_372; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250203.6]
  wire [1:0] _T_373; // @[CircuitMath.scala 38:21:chipyard.TestHarness.RocketConfig.fir@250204.6]
  wire [2:0] _T_374; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@250205.6]
  wire  _T_377; // @[CircuitMath.scala 37:22:chipyard.TestHarness.RocketConfig.fir@250208.6]
  wire [1:0] _T_381; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250212.6]
  wire [1:0] _T_382; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250213.6]
  wire [1:0] _T_386; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250217.6]
  wire [1:0] _T_387; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250218.6]
  wire [1:0] _T_388; // @[CircuitMath.scala 38:21:chipyard.TestHarness.RocketConfig.fir@250219.6]
  wire [2:0] _T_389; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@250220.6]
  wire [2:0] _T_390; // @[CircuitMath.scala 38:21:chipyard.TestHarness.RocketConfig.fir@250221.6]
  wire [3:0] _T_391; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@250222.6]
  wire  _T_394; // @[CircuitMath.scala 37:22:chipyard.TestHarness.RocketConfig.fir@250225.6]
  wire  _T_397; // @[CircuitMath.scala 37:22:chipyard.TestHarness.RocketConfig.fir@250228.6]
  wire [1:0] _T_401; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250232.6]
  wire [1:0] _T_402; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250233.6]
  wire [1:0] _T_406; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250237.6]
  wire [1:0] _T_407; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250238.6]
  wire [1:0] _T_408; // @[CircuitMath.scala 38:21:chipyard.TestHarness.RocketConfig.fir@250239.6]
  wire [2:0] _T_409; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@250240.6]
  wire  _T_412; // @[CircuitMath.scala 37:22:chipyard.TestHarness.RocketConfig.fir@250243.6]
  wire [1:0] _T_416; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250247.6]
  wire [1:0] _T_417; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250248.6]
  wire [1:0] _T_421; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250252.6]
  wire [1:0] _T_422; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250253.6]
  wire [1:0] _T_423; // @[CircuitMath.scala 38:21:chipyard.TestHarness.RocketConfig.fir@250254.6]
  wire [2:0] _T_424; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@250255.6]
  wire [2:0] _T_425; // @[CircuitMath.scala 38:21:chipyard.TestHarness.RocketConfig.fir@250256.6]
  wire [3:0] _T_426; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@250257.6]
  wire [3:0] _T_427; // @[CircuitMath.scala 38:21:chipyard.TestHarness.RocketConfig.fir@250258.6]
  wire [4:0] _T_428; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@250259.6]
  wire [4:0] _T_429; // @[CircuitMath.scala 38:21:chipyard.TestHarness.RocketConfig.fir@250260.6]
  wire [5:0] _T_430; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@250261.6]
  wire [5:0] _T_434; // @[Multiplier.scala 153:35:chipyard.TestHarness.RocketConfig.fir@250265.6]
  wire [5:0] _T_435; // @[Multiplier.scala 153:21:chipyard.TestHarness.RocketConfig.fir@250266.6]
  wire  _T_437; // @[Multiplier.scala 154:33:chipyard.TestHarness.RocketConfig.fir@250268.6]
  wire  _T_438; // @[Multiplier.scala 154:30:chipyard.TestHarness.RocketConfig.fir@250269.6]
  wire  _T_439; // @[Multiplier.scala 154:52:chipyard.TestHarness.RocketConfig.fir@250270.6]
  wire  _T_440; // @[Multiplier.scala 154:41:chipyard.TestHarness.RocketConfig.fir@250271.6]
  wire [126:0] _GEN_39; // @[Multiplier.scala 156:39:chipyard.TestHarness.RocketConfig.fir@250274.8]
  wire [126:0] _T_442; // @[Multiplier.scala 156:39:chipyard.TestHarness.RocketConfig.fir@250274.8]
  wire [128:0] _GEN_16; // @[Multiplier.scala 155:19:chipyard.TestHarness.RocketConfig.fir@250272.6]
  wire  _T_445; // @[Multiplier.scala 160:18:chipyard.TestHarness.RocketConfig.fir@250280.6]
  wire  _T_446; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@250285.4]
  wire  _T_447; // @[Multiplier.scala 162:24:chipyard.TestHarness.RocketConfig.fir@250286.4]
  wire  _T_448; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@250290.4]
  wire  _T_449; // @[Multiplier.scala 166:46:chipyard.TestHarness.RocketConfig.fir@250292.6]
  wire  _T_454; // @[Multiplier.scala 169:46:chipyard.TestHarness.RocketConfig.fir@250300.6]
  wire [2:0] _T_455; // @[Multiplier.scala 169:38:chipyard.TestHarness.RocketConfig.fir@250301.6]
  wire  _T_456; // @[Multiplier.scala 170:46:chipyard.TestHarness.RocketConfig.fir@250303.6]
  wire [64:0] _T_458; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@250306.6]
  wire [2:0] _T_460; // @[Multiplier.scala 176:23:chipyard.TestHarness.RocketConfig.fir@250316.4]
  wire  outMul; // @[Multiplier.scala 176:52:chipyard.TestHarness.RocketConfig.fir@250319.4]
  wire  _T_463; // @[Multiplier.scala 79:60:chipyard.TestHarness.RocketConfig.fir@250320.4]
  wire  _T_466; // @[Multiplier.scala 177:48:chipyard.TestHarness.RocketConfig.fir@250323.4]
  wire [31:0] loOut; // @[Multiplier.scala 177:18:chipyard.TestHarness.RocketConfig.fir@250326.4]
  wire [31:0] _T_473; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@250331.4]
  wire [31:0] hiOut; // @[Multiplier.scala 178:18:chipyard.TestHarness.RocketConfig.fir@250333.4]
  wire  _T_476; // @[Multiplier.scala 182:27:chipyard.TestHarness.RocketConfig.fir@250337.4]
  wire  _T_477; // @[Multiplier.scala 182:51:chipyard.TestHarness.RocketConfig.fir@250338.4]
  assign _T = io_req_bits_fn & 4'h4; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@249791.4]
  assign cmdMul = _T == 4'h0; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@249792.4]
  assign _T_3 = io_req_bits_fn & 4'h5; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@249794.4]
  assign _T_4 = _T_3 == 4'h1; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@249795.4]
  assign _T_5 = io_req_bits_fn & 4'h2; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@249796.4]
  assign _T_6 = _T_5 == 4'h2; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@249797.4]
  assign cmdHi = _T_4 | _T_6; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@249799.4]
  assign _T_9 = io_req_bits_fn & 4'h6; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@249800.4]
  assign _T_10 = _T_9 == 4'h0; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@249801.4]
  assign _T_11 = io_req_bits_fn & 4'h1; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@249802.4]
  assign _T_12 = _T_11 == 4'h0; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@249803.4]
  assign lhsSigned = _T_10 | _T_12; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@249805.4]
  assign _T_16 = _T_3 == 4'h4; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@249807.4]
  assign rhsSigned = _T_10 | _T_16; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@249809.4]
  assign _T_19 = ~io_req_bits_dw; // @[Multiplier.scala 79:60:chipyard.TestHarness.RocketConfig.fir@249814.4]
  assign _T_23 = _T_19 ? io_req_bits_in1[31] : io_req_bits_in1[63]; // @[Multiplier.scala 82:29:chipyard.TestHarness.RocketConfig.fir@249818.4]
  assign lhs_sign = lhsSigned & _T_23; // @[Multiplier.scala 82:23:chipyard.TestHarness.RocketConfig.fir@249819.4]
  assign _T_25 = lhs_sign ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@249821.4]
  assign _T_27 = _T_19 ? _T_25 : io_req_bits_in1[63:32]; // @[Multiplier.scala 83:17:chipyard.TestHarness.RocketConfig.fir@249823.4]
  assign lhs_in = {_T_27,io_req_bits_in1[31:0]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@249825.4]
  assign _T_33 = _T_19 ? io_req_bits_in2[31] : io_req_bits_in2[63]; // @[Multiplier.scala 82:29:chipyard.TestHarness.RocketConfig.fir@249830.4]
  assign rhs_sign = rhsSigned & _T_33; // @[Multiplier.scala 82:23:chipyard.TestHarness.RocketConfig.fir@249831.4]
  assign _T_35 = rhs_sign ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@249833.4]
  assign _T_37 = _T_19 ? _T_35 : io_req_bits_in2[63:32]; // @[Multiplier.scala 83:17:chipyard.TestHarness.RocketConfig.fir@249835.4]
  assign subtractor = remainder[128:64] - divisor; // @[Multiplier.scala 89:37:chipyard.TestHarness.RocketConfig.fir@249840.4]
  assign result = resHi ? remainder[128:65] : remainder[63:0]; // @[Multiplier.scala 90:19:chipyard.TestHarness.RocketConfig.fir@249843.4]
  assign negated_remainder = 64'h0 - result; // @[Multiplier.scala 91:27:chipyard.TestHarness.RocketConfig.fir@249845.4]
  assign _T_44 = state == 3'h1; // @[Multiplier.scala 93:39:chipyard.TestHarness.RocketConfig.fir@249846.4]
  assign _T_47 = state == 3'h5; // @[Multiplier.scala 102:39:chipyard.TestHarness.RocketConfig.fir@249858.4]
  assign _T_48 = state == 3'h2; // @[Multiplier.scala 107:39:chipyard.TestHarness.RocketConfig.fir@249864.4]
  assign _T_51 = {remainder[129:65],remainder[63:0]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@249868.6]
  assign _T_55 = _T_51[128:64]; // @[Multiplier.scala 111:37:chipyard.TestHarness.RocketConfig.fir@249872.6]
  assign _T_59 = {remainder[64],_T_51[7:0]}; // @[Multiplier.scala 113:60:chipyard.TestHarness.RocketConfig.fir@249876.6]
  assign _GEN_37 = {{56{_T_59[8]}},_T_59}; // @[Multiplier.scala 113:67:chipyard.TestHarness.RocketConfig.fir@249877.6]
  assign _T_60 = $signed(_GEN_37) * $signed(divisor); // @[Multiplier.scala 113:67:chipyard.TestHarness.RocketConfig.fir@249877.6]
  assign _GEN_38 = {{9{_T_55[64]}},_T_55}; // @[Multiplier.scala 113:76:chipyard.TestHarness.RocketConfig.fir@249878.6]
  assign _T_65 = $signed(_T_60) + $signed(_GEN_38); // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@249882.6]
  assign _T_66 = {_T_65,_T_51[63:8]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@249883.6]
  assign _T_67 = count == 7'h6; // @[Multiplier.scala 115:32:chipyard.TestHarness.RocketConfig.fir@249884.6]
  assign _T_68 = _T_67 & neg_out; // @[Multiplier.scala 115:57:chipyard.TestHarness.RocketConfig.fir@249885.6]
  assign _T_69 = count * 7'h8; // @[Multiplier.scala 117:54:chipyard.TestHarness.RocketConfig.fir@249886.6]
  assign _T_71 = -65'sh10000000000000000 >>> _T_69[5:0]; // @[Multiplier.scala 117:44:chipyard.TestHarness.RocketConfig.fir@249888.6]
  assign _T_73 = count != 7'h7; // @[Multiplier.scala 118:45:chipyard.TestHarness.RocketConfig.fir@249890.6]
  assign _T_75 = count != 7'h0; // @[Multiplier.scala 118:79:chipyard.TestHarness.RocketConfig.fir@249892.6]
  assign _T_76 = _T_73 & _T_75; // @[Multiplier.scala 118:70:chipyard.TestHarness.RocketConfig.fir@249893.6]
  assign _T_77 = ~isHi; // @[Multiplier.scala 119:7:chipyard.TestHarness.RocketConfig.fir@249894.6]
  assign _T_78 = _T_76 & _T_77; // @[Multiplier.scala 118:85:chipyard.TestHarness.RocketConfig.fir@249895.6]
  assign _T_79 = ~_T_71[63:0]; // @[Multiplier.scala 119:26:chipyard.TestHarness.RocketConfig.fir@249896.6]
  assign _T_80 = _T_51[63:0] & _T_79; // @[Multiplier.scala 119:24:chipyard.TestHarness.RocketConfig.fir@249897.6]
  assign _T_81 = _T_80 == 64'h0; // @[Multiplier.scala 119:37:chipyard.TestHarness.RocketConfig.fir@249898.6]
  assign _T_82 = _T_78 & _T_81; // @[Multiplier.scala 119:13:chipyard.TestHarness.RocketConfig.fir@249899.6]
  assign _T_85 = 11'h40 - _T_69; // @[Multiplier.scala 120:36:chipyard.TestHarness.RocketConfig.fir@249902.6]
  assign _T_87 = _T_51 >> _T_85[5:0]; // @[Multiplier.scala 120:27:chipyard.TestHarness.RocketConfig.fir@249904.6]
  assign _T_89 = _T_82 ? {{1'd0}, _T_87} : _T_66; // @[Multiplier.scala 121:55:chipyard.TestHarness.RocketConfig.fir@249906.6]
  assign _T_91 = {_T_66[128:64],_T_89[63:0]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@249908.6]
  assign _T_95 = {_T_91[128:64],_T_68,_T_91[63:0]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@249912.6]
  assign _T_97 = count + 7'h1; // @[Multiplier.scala 124:20:chipyard.TestHarness.RocketConfig.fir@249915.6]
  assign _T_98 = count == 7'h7; // @[Multiplier.scala 125:25:chipyard.TestHarness.RocketConfig.fir@249917.6]
  assign _T_99 = _T_82 | _T_98; // @[Multiplier.scala 125:16:chipyard.TestHarness.RocketConfig.fir@249918.6]
  assign _T_100 = state == 3'h3; // @[Multiplier.scala 130:39:chipyard.TestHarness.RocketConfig.fir@249924.4]
  assign _T_104 = subtractor[64] ? remainder[127:64] : subtractor[63:0]; // @[Multiplier.scala 135:14:chipyard.TestHarness.RocketConfig.fir@249929.6]
  assign _T_106 = ~subtractor[64]; // @[Multiplier.scala 135:67:chipyard.TestHarness.RocketConfig.fir@249931.6]
  assign _T_108 = {_T_104,remainder[63:0],_T_106}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@249933.6]
  assign _T_109 = count == 7'h40; // @[Multiplier.scala 139:17:chipyard.TestHarness.RocketConfig.fir@249935.6]
  assign _T_113 = count == 7'h0; // @[Multiplier.scala 147:24:chipyard.TestHarness.RocketConfig.fir@249944.6]
  assign _T_116 = _T_113 & _T_106; // @[Multiplier.scala 147:30:chipyard.TestHarness.RocketConfig.fir@249947.6]
  assign _T_121 = |divisor[63:32]; // @[CircuitMath.scala 37:22:chipyard.TestHarness.RocketConfig.fir@249952.6]
  assign _T_124 = |divisor[63:48]; // @[CircuitMath.scala 37:22:chipyard.TestHarness.RocketConfig.fir@249955.6]
  assign _T_127 = |divisor[63:56]; // @[CircuitMath.scala 37:22:chipyard.TestHarness.RocketConfig.fir@249958.6]
  assign _T_130 = |divisor[63:60]; // @[CircuitMath.scala 37:22:chipyard.TestHarness.RocketConfig.fir@249961.6]
  assign _T_134 = divisor[62] ? 2'h2 : {{1'd0}, divisor[61]}; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@249965.6]
  assign _T_135 = divisor[63] ? 2'h3 : _T_134; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@249966.6]
  assign _T_139 = divisor[58] ? 2'h2 : {{1'd0}, divisor[57]}; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@249970.6]
  assign _T_140 = divisor[59] ? 2'h3 : _T_139; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@249971.6]
  assign _T_141 = _T_130 ? _T_135 : _T_140; // @[CircuitMath.scala 38:21:chipyard.TestHarness.RocketConfig.fir@249972.6]
  assign _T_142 = {_T_130,_T_141}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@249973.6]
  assign _T_145 = |divisor[55:52]; // @[CircuitMath.scala 37:22:chipyard.TestHarness.RocketConfig.fir@249976.6]
  assign _T_149 = divisor[54] ? 2'h2 : {{1'd0}, divisor[53]}; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@249980.6]
  assign _T_150 = divisor[55] ? 2'h3 : _T_149; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@249981.6]
  assign _T_154 = divisor[50] ? 2'h2 : {{1'd0}, divisor[49]}; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@249985.6]
  assign _T_155 = divisor[51] ? 2'h3 : _T_154; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@249986.6]
  assign _T_156 = _T_145 ? _T_150 : _T_155; // @[CircuitMath.scala 38:21:chipyard.TestHarness.RocketConfig.fir@249987.6]
  assign _T_157 = {_T_145,_T_156}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@249988.6]
  assign _T_158 = _T_127 ? _T_142 : _T_157; // @[CircuitMath.scala 38:21:chipyard.TestHarness.RocketConfig.fir@249989.6]
  assign _T_159 = {_T_127,_T_158}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@249990.6]
  assign _T_162 = |divisor[47:40]; // @[CircuitMath.scala 37:22:chipyard.TestHarness.RocketConfig.fir@249993.6]
  assign _T_165 = |divisor[47:44]; // @[CircuitMath.scala 37:22:chipyard.TestHarness.RocketConfig.fir@249996.6]
  assign _T_169 = divisor[46] ? 2'h2 : {{1'd0}, divisor[45]}; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250000.6]
  assign _T_170 = divisor[47] ? 2'h3 : _T_169; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250001.6]
  assign _T_174 = divisor[42] ? 2'h2 : {{1'd0}, divisor[41]}; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250005.6]
  assign _T_175 = divisor[43] ? 2'h3 : _T_174; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250006.6]
  assign _T_176 = _T_165 ? _T_170 : _T_175; // @[CircuitMath.scala 38:21:chipyard.TestHarness.RocketConfig.fir@250007.6]
  assign _T_177 = {_T_165,_T_176}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@250008.6]
  assign _T_180 = |divisor[39:36]; // @[CircuitMath.scala 37:22:chipyard.TestHarness.RocketConfig.fir@250011.6]
  assign _T_184 = divisor[38] ? 2'h2 : {{1'd0}, divisor[37]}; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250015.6]
  assign _T_185 = divisor[39] ? 2'h3 : _T_184; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250016.6]
  assign _T_189 = divisor[34] ? 2'h2 : {{1'd0}, divisor[33]}; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250020.6]
  assign _T_190 = divisor[35] ? 2'h3 : _T_189; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250021.6]
  assign _T_191 = _T_180 ? _T_185 : _T_190; // @[CircuitMath.scala 38:21:chipyard.TestHarness.RocketConfig.fir@250022.6]
  assign _T_192 = {_T_180,_T_191}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@250023.6]
  assign _T_193 = _T_162 ? _T_177 : _T_192; // @[CircuitMath.scala 38:21:chipyard.TestHarness.RocketConfig.fir@250024.6]
  assign _T_194 = {_T_162,_T_193}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@250025.6]
  assign _T_195 = _T_124 ? _T_159 : _T_194; // @[CircuitMath.scala 38:21:chipyard.TestHarness.RocketConfig.fir@250026.6]
  assign _T_196 = {_T_124,_T_195}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@250027.6]
  assign _T_199 = |divisor[31:16]; // @[CircuitMath.scala 37:22:chipyard.TestHarness.RocketConfig.fir@250030.6]
  assign _T_202 = |divisor[31:24]; // @[CircuitMath.scala 37:22:chipyard.TestHarness.RocketConfig.fir@250033.6]
  assign _T_205 = |divisor[31:28]; // @[CircuitMath.scala 37:22:chipyard.TestHarness.RocketConfig.fir@250036.6]
  assign _T_209 = divisor[30] ? 2'h2 : {{1'd0}, divisor[29]}; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250040.6]
  assign _T_210 = divisor[31] ? 2'h3 : _T_209; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250041.6]
  assign _T_214 = divisor[26] ? 2'h2 : {{1'd0}, divisor[25]}; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250045.6]
  assign _T_215 = divisor[27] ? 2'h3 : _T_214; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250046.6]
  assign _T_216 = _T_205 ? _T_210 : _T_215; // @[CircuitMath.scala 38:21:chipyard.TestHarness.RocketConfig.fir@250047.6]
  assign _T_217 = {_T_205,_T_216}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@250048.6]
  assign _T_220 = |divisor[23:20]; // @[CircuitMath.scala 37:22:chipyard.TestHarness.RocketConfig.fir@250051.6]
  assign _T_224 = divisor[22] ? 2'h2 : {{1'd0}, divisor[21]}; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250055.6]
  assign _T_225 = divisor[23] ? 2'h3 : _T_224; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250056.6]
  assign _T_229 = divisor[18] ? 2'h2 : {{1'd0}, divisor[17]}; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250060.6]
  assign _T_230 = divisor[19] ? 2'h3 : _T_229; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250061.6]
  assign _T_231 = _T_220 ? _T_225 : _T_230; // @[CircuitMath.scala 38:21:chipyard.TestHarness.RocketConfig.fir@250062.6]
  assign _T_232 = {_T_220,_T_231}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@250063.6]
  assign _T_233 = _T_202 ? _T_217 : _T_232; // @[CircuitMath.scala 38:21:chipyard.TestHarness.RocketConfig.fir@250064.6]
  assign _T_234 = {_T_202,_T_233}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@250065.6]
  assign _T_237 = |divisor[15:8]; // @[CircuitMath.scala 37:22:chipyard.TestHarness.RocketConfig.fir@250068.6]
  assign _T_240 = |divisor[15:12]; // @[CircuitMath.scala 37:22:chipyard.TestHarness.RocketConfig.fir@250071.6]
  assign _T_244 = divisor[14] ? 2'h2 : {{1'd0}, divisor[13]}; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250075.6]
  assign _T_245 = divisor[15] ? 2'h3 : _T_244; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250076.6]
  assign _T_249 = divisor[10] ? 2'h2 : {{1'd0}, divisor[9]}; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250080.6]
  assign _T_250 = divisor[11] ? 2'h3 : _T_249; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250081.6]
  assign _T_251 = _T_240 ? _T_245 : _T_250; // @[CircuitMath.scala 38:21:chipyard.TestHarness.RocketConfig.fir@250082.6]
  assign _T_252 = {_T_240,_T_251}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@250083.6]
  assign _T_255 = |divisor[7:4]; // @[CircuitMath.scala 37:22:chipyard.TestHarness.RocketConfig.fir@250086.6]
  assign _T_259 = divisor[6] ? 2'h2 : {{1'd0}, divisor[5]}; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250090.6]
  assign _T_260 = divisor[7] ? 2'h3 : _T_259; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250091.6]
  assign _T_264 = divisor[2] ? 2'h2 : {{1'd0}, divisor[1]}; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250095.6]
  assign _T_265 = divisor[3] ? 2'h3 : _T_264; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250096.6]
  assign _T_266 = _T_255 ? _T_260 : _T_265; // @[CircuitMath.scala 38:21:chipyard.TestHarness.RocketConfig.fir@250097.6]
  assign _T_267 = {_T_255,_T_266}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@250098.6]
  assign _T_268 = _T_237 ? _T_252 : _T_267; // @[CircuitMath.scala 38:21:chipyard.TestHarness.RocketConfig.fir@250099.6]
  assign _T_269 = {_T_237,_T_268}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@250100.6]
  assign _T_270 = _T_199 ? _T_234 : _T_269; // @[CircuitMath.scala 38:21:chipyard.TestHarness.RocketConfig.fir@250101.6]
  assign _T_271 = {_T_199,_T_270}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@250102.6]
  assign _T_272 = _T_121 ? _T_196 : _T_271; // @[CircuitMath.scala 38:21:chipyard.TestHarness.RocketConfig.fir@250103.6]
  assign _T_273 = {_T_121,_T_272}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@250104.6]
  assign _T_278 = |remainder[63:32]; // @[CircuitMath.scala 37:22:chipyard.TestHarness.RocketConfig.fir@250109.6]
  assign _T_281 = |remainder[63:48]; // @[CircuitMath.scala 37:22:chipyard.TestHarness.RocketConfig.fir@250112.6]
  assign _T_284 = |remainder[63:56]; // @[CircuitMath.scala 37:22:chipyard.TestHarness.RocketConfig.fir@250115.6]
  assign _T_287 = |remainder[63:60]; // @[CircuitMath.scala 37:22:chipyard.TestHarness.RocketConfig.fir@250118.6]
  assign _T_291 = remainder[62] ? 2'h2 : {{1'd0}, remainder[61]}; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250122.6]
  assign _T_292 = remainder[63] ? 2'h3 : _T_291; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250123.6]
  assign _T_296 = remainder[58] ? 2'h2 : {{1'd0}, remainder[57]}; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250127.6]
  assign _T_297 = remainder[59] ? 2'h3 : _T_296; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250128.6]
  assign _T_298 = _T_287 ? _T_292 : _T_297; // @[CircuitMath.scala 38:21:chipyard.TestHarness.RocketConfig.fir@250129.6]
  assign _T_299 = {_T_287,_T_298}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@250130.6]
  assign _T_302 = |remainder[55:52]; // @[CircuitMath.scala 37:22:chipyard.TestHarness.RocketConfig.fir@250133.6]
  assign _T_306 = remainder[54] ? 2'h2 : {{1'd0}, remainder[53]}; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250137.6]
  assign _T_307 = remainder[55] ? 2'h3 : _T_306; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250138.6]
  assign _T_311 = remainder[50] ? 2'h2 : {{1'd0}, remainder[49]}; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250142.6]
  assign _T_312 = remainder[51] ? 2'h3 : _T_311; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250143.6]
  assign _T_313 = _T_302 ? _T_307 : _T_312; // @[CircuitMath.scala 38:21:chipyard.TestHarness.RocketConfig.fir@250144.6]
  assign _T_314 = {_T_302,_T_313}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@250145.6]
  assign _T_315 = _T_284 ? _T_299 : _T_314; // @[CircuitMath.scala 38:21:chipyard.TestHarness.RocketConfig.fir@250146.6]
  assign _T_316 = {_T_284,_T_315}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@250147.6]
  assign _T_319 = |remainder[47:40]; // @[CircuitMath.scala 37:22:chipyard.TestHarness.RocketConfig.fir@250150.6]
  assign _T_322 = |remainder[47:44]; // @[CircuitMath.scala 37:22:chipyard.TestHarness.RocketConfig.fir@250153.6]
  assign _T_326 = remainder[46] ? 2'h2 : {{1'd0}, remainder[45]}; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250157.6]
  assign _T_327 = remainder[47] ? 2'h3 : _T_326; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250158.6]
  assign _T_331 = remainder[42] ? 2'h2 : {{1'd0}, remainder[41]}; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250162.6]
  assign _T_332 = remainder[43] ? 2'h3 : _T_331; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250163.6]
  assign _T_333 = _T_322 ? _T_327 : _T_332; // @[CircuitMath.scala 38:21:chipyard.TestHarness.RocketConfig.fir@250164.6]
  assign _T_334 = {_T_322,_T_333}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@250165.6]
  assign _T_337 = |remainder[39:36]; // @[CircuitMath.scala 37:22:chipyard.TestHarness.RocketConfig.fir@250168.6]
  assign _T_341 = remainder[38] ? 2'h2 : {{1'd0}, remainder[37]}; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250172.6]
  assign _T_342 = remainder[39] ? 2'h3 : _T_341; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250173.6]
  assign _T_346 = remainder[34] ? 2'h2 : {{1'd0}, remainder[33]}; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250177.6]
  assign _T_347 = remainder[35] ? 2'h3 : _T_346; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250178.6]
  assign _T_348 = _T_337 ? _T_342 : _T_347; // @[CircuitMath.scala 38:21:chipyard.TestHarness.RocketConfig.fir@250179.6]
  assign _T_349 = {_T_337,_T_348}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@250180.6]
  assign _T_350 = _T_319 ? _T_334 : _T_349; // @[CircuitMath.scala 38:21:chipyard.TestHarness.RocketConfig.fir@250181.6]
  assign _T_351 = {_T_319,_T_350}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@250182.6]
  assign _T_352 = _T_281 ? _T_316 : _T_351; // @[CircuitMath.scala 38:21:chipyard.TestHarness.RocketConfig.fir@250183.6]
  assign _T_353 = {_T_281,_T_352}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@250184.6]
  assign _T_356 = |remainder[31:16]; // @[CircuitMath.scala 37:22:chipyard.TestHarness.RocketConfig.fir@250187.6]
  assign _T_359 = |remainder[31:24]; // @[CircuitMath.scala 37:22:chipyard.TestHarness.RocketConfig.fir@250190.6]
  assign _T_362 = |remainder[31:28]; // @[CircuitMath.scala 37:22:chipyard.TestHarness.RocketConfig.fir@250193.6]
  assign _T_366 = remainder[30] ? 2'h2 : {{1'd0}, remainder[29]}; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250197.6]
  assign _T_367 = remainder[31] ? 2'h3 : _T_366; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250198.6]
  assign _T_371 = remainder[26] ? 2'h2 : {{1'd0}, remainder[25]}; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250202.6]
  assign _T_372 = remainder[27] ? 2'h3 : _T_371; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250203.6]
  assign _T_373 = _T_362 ? _T_367 : _T_372; // @[CircuitMath.scala 38:21:chipyard.TestHarness.RocketConfig.fir@250204.6]
  assign _T_374 = {_T_362,_T_373}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@250205.6]
  assign _T_377 = |remainder[23:20]; // @[CircuitMath.scala 37:22:chipyard.TestHarness.RocketConfig.fir@250208.6]
  assign _T_381 = remainder[22] ? 2'h2 : {{1'd0}, remainder[21]}; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250212.6]
  assign _T_382 = remainder[23] ? 2'h3 : _T_381; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250213.6]
  assign _T_386 = remainder[18] ? 2'h2 : {{1'd0}, remainder[17]}; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250217.6]
  assign _T_387 = remainder[19] ? 2'h3 : _T_386; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250218.6]
  assign _T_388 = _T_377 ? _T_382 : _T_387; // @[CircuitMath.scala 38:21:chipyard.TestHarness.RocketConfig.fir@250219.6]
  assign _T_389 = {_T_377,_T_388}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@250220.6]
  assign _T_390 = _T_359 ? _T_374 : _T_389; // @[CircuitMath.scala 38:21:chipyard.TestHarness.RocketConfig.fir@250221.6]
  assign _T_391 = {_T_359,_T_390}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@250222.6]
  assign _T_394 = |remainder[15:8]; // @[CircuitMath.scala 37:22:chipyard.TestHarness.RocketConfig.fir@250225.6]
  assign _T_397 = |remainder[15:12]; // @[CircuitMath.scala 37:22:chipyard.TestHarness.RocketConfig.fir@250228.6]
  assign _T_401 = remainder[14] ? 2'h2 : {{1'd0}, remainder[13]}; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250232.6]
  assign _T_402 = remainder[15] ? 2'h3 : _T_401; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250233.6]
  assign _T_406 = remainder[10] ? 2'h2 : {{1'd0}, remainder[9]}; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250237.6]
  assign _T_407 = remainder[11] ? 2'h3 : _T_406; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250238.6]
  assign _T_408 = _T_397 ? _T_402 : _T_407; // @[CircuitMath.scala 38:21:chipyard.TestHarness.RocketConfig.fir@250239.6]
  assign _T_409 = {_T_397,_T_408}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@250240.6]
  assign _T_412 = |remainder[7:4]; // @[CircuitMath.scala 37:22:chipyard.TestHarness.RocketConfig.fir@250243.6]
  assign _T_416 = remainder[6] ? 2'h2 : {{1'd0}, remainder[5]}; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250247.6]
  assign _T_417 = remainder[7] ? 2'h3 : _T_416; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250248.6]
  assign _T_421 = remainder[2] ? 2'h2 : {{1'd0}, remainder[1]}; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250252.6]
  assign _T_422 = remainder[3] ? 2'h3 : _T_421; // @[CircuitMath.scala 32:10:chipyard.TestHarness.RocketConfig.fir@250253.6]
  assign _T_423 = _T_412 ? _T_417 : _T_422; // @[CircuitMath.scala 38:21:chipyard.TestHarness.RocketConfig.fir@250254.6]
  assign _T_424 = {_T_412,_T_423}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@250255.6]
  assign _T_425 = _T_394 ? _T_409 : _T_424; // @[CircuitMath.scala 38:21:chipyard.TestHarness.RocketConfig.fir@250256.6]
  assign _T_426 = {_T_394,_T_425}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@250257.6]
  assign _T_427 = _T_356 ? _T_391 : _T_426; // @[CircuitMath.scala 38:21:chipyard.TestHarness.RocketConfig.fir@250258.6]
  assign _T_428 = {_T_356,_T_427}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@250259.6]
  assign _T_429 = _T_278 ? _T_353 : _T_428; // @[CircuitMath.scala 38:21:chipyard.TestHarness.RocketConfig.fir@250260.6]
  assign _T_430 = {_T_278,_T_429}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@250261.6]
  assign _T_434 = _T_430 - _T_273; // @[Multiplier.scala 153:35:chipyard.TestHarness.RocketConfig.fir@250265.6]
  assign _T_435 = ~_T_434; // @[Multiplier.scala 153:21:chipyard.TestHarness.RocketConfig.fir@250266.6]
  assign _T_437 = ~_T_116; // @[Multiplier.scala 154:33:chipyard.TestHarness.RocketConfig.fir@250268.6]
  assign _T_438 = _T_113 & _T_437; // @[Multiplier.scala 154:30:chipyard.TestHarness.RocketConfig.fir@250269.6]
  assign _T_439 = _T_435 >= 6'h1; // @[Multiplier.scala 154:52:chipyard.TestHarness.RocketConfig.fir@250270.6]
  assign _T_440 = _T_438 & _T_439; // @[Multiplier.scala 154:41:chipyard.TestHarness.RocketConfig.fir@250271.6]
  assign _GEN_39 = {{63'd0}, remainder[63:0]}; // @[Multiplier.scala 156:39:chipyard.TestHarness.RocketConfig.fir@250274.8]
  assign _T_442 = _GEN_39 << _T_435; // @[Multiplier.scala 156:39:chipyard.TestHarness.RocketConfig.fir@250274.8]
  assign _GEN_16 = _T_440 ? {{2'd0}, _T_442} : _T_108; // @[Multiplier.scala 155:19:chipyard.TestHarness.RocketConfig.fir@250272.6]
  assign _T_445 = _T_116 & _T_77; // @[Multiplier.scala 160:18:chipyard.TestHarness.RocketConfig.fir@250280.6]
  assign _T_446 = io_resp_ready & io_resp_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@250285.4]
  assign _T_447 = _T_446 | io_kill; // @[Multiplier.scala 162:24:chipyard.TestHarness.RocketConfig.fir@250286.4]
  assign _T_448 = io_req_ready & io_req_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@250290.4]
  assign _T_449 = lhs_sign | rhs_sign; // @[Multiplier.scala 166:46:chipyard.TestHarness.RocketConfig.fir@250292.6]
  assign _T_454 = cmdMul & _T_19; // @[Multiplier.scala 169:46:chipyard.TestHarness.RocketConfig.fir@250300.6]
  assign _T_455 = _T_454 ? 3'h4 : 3'h0; // @[Multiplier.scala 169:38:chipyard.TestHarness.RocketConfig.fir@250301.6]
  assign _T_456 = lhs_sign != rhs_sign; // @[Multiplier.scala 170:46:chipyard.TestHarness.RocketConfig.fir@250303.6]
  assign _T_458 = {rhs_sign,_T_37,io_req_bits_in2[31:0]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@250306.6]
  assign _T_460 = state & 3'h1; // @[Multiplier.scala 176:23:chipyard.TestHarness.RocketConfig.fir@250316.4]
  assign outMul = _T_460 == 3'h0; // @[Multiplier.scala 176:52:chipyard.TestHarness.RocketConfig.fir@250319.4]
  assign _T_463 = ~req_dw; // @[Multiplier.scala 79:60:chipyard.TestHarness.RocketConfig.fir@250320.4]
  assign _T_466 = _T_463 & outMul; // @[Multiplier.scala 177:48:chipyard.TestHarness.RocketConfig.fir@250323.4]
  assign loOut = _T_466 ? result[63:32] : result[31:0]; // @[Multiplier.scala 177:18:chipyard.TestHarness.RocketConfig.fir@250326.4]
  assign _T_473 = loOut[31] ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@250331.4]
  assign hiOut = _T_463 ? _T_473 : result[63:32]; // @[Multiplier.scala 178:18:chipyard.TestHarness.RocketConfig.fir@250333.4]
  assign _T_476 = state == 3'h6; // @[Multiplier.scala 182:27:chipyard.TestHarness.RocketConfig.fir@250337.4]
  assign _T_477 = state == 3'h7; // @[Multiplier.scala 182:51:chipyard.TestHarness.RocketConfig.fir@250338.4]
  assign io_req_ready = state == 3'h0; // @[Multiplier.scala 183:16:chipyard.TestHarness.RocketConfig.fir@250342.4]
  assign io_resp_valid = _T_476 | _T_477; // @[Multiplier.scala 182:17:chipyard.TestHarness.RocketConfig.fir@250340.4]
  assign io_resp_bits_data = {hiOut,loOut}; // @[Multiplier.scala 181:21:chipyard.TestHarness.RocketConfig.fir@250336.4]
  assign io_resp_bits_tag = req_tag; // @[Multiplier.scala 179:20:chipyard.TestHarness.RocketConfig.fir@250334.4]
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
  state = _RAND_0[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  req_dw = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  req_tag = _RAND_2[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  count = _RAND_3[6:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  neg_out = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  isHi = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  resHi = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {3{`RANDOM}};
  divisor = _RAND_7[64:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {5{`RANDOM}};
  remainder = _RAND_8[129:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      state <= 3'h0;
    end else if (_T_448) begin
      if (cmdMul) begin
        state <= 3'h2;
      end else if (_T_449) begin
        state <= 3'h1;
      end else begin
        state <= 3'h3;
      end
    end else if (_T_447) begin
      state <= 3'h0;
    end else if (_T_100) begin
      if (_T_109) begin
        if (neg_out) begin
          state <= 3'h5;
        end else begin
          state <= 3'h7;
        end
      end else if (_T_48) begin
        if (_T_99) begin
          state <= 3'h6;
        end else if (_T_47) begin
          state <= 3'h7;
        end else if (_T_44) begin
          state <= 3'h3;
        end
      end else if (_T_47) begin
        state <= 3'h7;
      end else if (_T_44) begin
        state <= 3'h3;
      end
    end else if (_T_48) begin
      if (_T_99) begin
        state <= 3'h6;
      end else if (_T_47) begin
        state <= 3'h7;
      end else if (_T_44) begin
        state <= 3'h3;
      end
    end else if (_T_47) begin
      state <= 3'h7;
    end else if (_T_44) begin
      state <= 3'h3;
    end
    if (_T_448) begin
      req_dw <= io_req_bits_dw;
    end
    if (_T_448) begin
      req_tag <= io_req_bits_tag;
    end
    if (_T_448) begin
      count <= {{4'd0}, _T_455};
    end else if (_T_100) begin
      if (_T_440) begin
        count <= {{1'd0}, _T_435};
      end else begin
        count <= _T_97;
      end
    end else if (_T_48) begin
      count <= _T_97;
    end
    if (_T_448) begin
      if (cmdHi) begin
        neg_out <= lhs_sign;
      end else begin
        neg_out <= _T_456;
      end
    end else if (_T_100) begin
      if (_T_445) begin
        neg_out <= 1'h0;
      end
    end
    if (_T_448) begin
      isHi <= cmdHi;
    end
    if (_T_448) begin
      resHi <= 1'h0;
    end else if (_T_100) begin
      if (_T_109) begin
        resHi <= isHi;
      end else if (_T_48) begin
        if (_T_99) begin
          resHi <= isHi;
        end else if (_T_47) begin
          resHi <= 1'h0;
        end
      end else if (_T_47) begin
        resHi <= 1'h0;
      end
    end else if (_T_48) begin
      if (_T_99) begin
        resHi <= isHi;
      end else if (_T_47) begin
        resHi <= 1'h0;
      end
    end else if (_T_47) begin
      resHi <= 1'h0;
    end
    if (_T_448) begin
      divisor <= _T_458;
    end else if (_T_44) begin
      if (divisor[63]) begin
        divisor <= subtractor;
      end
    end
    if (_T_448) begin
      remainder <= {{66'd0}, lhs_in};
    end else if (_T_100) begin
      remainder <= {{1'd0}, _GEN_16};
    end else if (_T_48) begin
      remainder <= _T_95;
    end else if (_T_47) begin
      remainder <= {{66'd0}, negated_remainder};
    end else if (_T_44) begin
      if (remainder[63]) begin
        remainder <= {{66'd0}, negated_remainder};
      end
    end
  end
endmodule
