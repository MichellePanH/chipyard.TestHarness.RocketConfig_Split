module DivSqrtRawFN_small_1( // @[:chipyard.TestHarness.RocketConfig.fir@238808.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@238809.4]
  input         reset, // @[:chipyard.TestHarness.RocketConfig.fir@238810.4]
  output        io_inReady, // @[:chipyard.TestHarness.RocketConfig.fir@238811.4]
  input         io_inValid, // @[:chipyard.TestHarness.RocketConfig.fir@238811.4]
  input         io_sqrtOp, // @[:chipyard.TestHarness.RocketConfig.fir@238811.4]
  input         io_a_isNaN, // @[:chipyard.TestHarness.RocketConfig.fir@238811.4]
  input         io_a_isInf, // @[:chipyard.TestHarness.RocketConfig.fir@238811.4]
  input         io_a_isZero, // @[:chipyard.TestHarness.RocketConfig.fir@238811.4]
  input         io_a_sign, // @[:chipyard.TestHarness.RocketConfig.fir@238811.4]
  input  [12:0] io_a_sExp, // @[:chipyard.TestHarness.RocketConfig.fir@238811.4]
  input  [53:0] io_a_sig, // @[:chipyard.TestHarness.RocketConfig.fir@238811.4]
  input         io_b_isNaN, // @[:chipyard.TestHarness.RocketConfig.fir@238811.4]
  input         io_b_isInf, // @[:chipyard.TestHarness.RocketConfig.fir@238811.4]
  input         io_b_isZero, // @[:chipyard.TestHarness.RocketConfig.fir@238811.4]
  input         io_b_sign, // @[:chipyard.TestHarness.RocketConfig.fir@238811.4]
  input  [12:0] io_b_sExp, // @[:chipyard.TestHarness.RocketConfig.fir@238811.4]
  input  [53:0] io_b_sig, // @[:chipyard.TestHarness.RocketConfig.fir@238811.4]
  input  [2:0]  io_roundingMode, // @[:chipyard.TestHarness.RocketConfig.fir@238811.4]
  output        io_rawOutValid_div, // @[:chipyard.TestHarness.RocketConfig.fir@238811.4]
  output        io_rawOutValid_sqrt, // @[:chipyard.TestHarness.RocketConfig.fir@238811.4]
  output [2:0]  io_roundingModeOut, // @[:chipyard.TestHarness.RocketConfig.fir@238811.4]
  output        io_invalidExc, // @[:chipyard.TestHarness.RocketConfig.fir@238811.4]
  output        io_infiniteExc, // @[:chipyard.TestHarness.RocketConfig.fir@238811.4]
  output        io_rawOut_isNaN, // @[:chipyard.TestHarness.RocketConfig.fir@238811.4]
  output        io_rawOut_isInf, // @[:chipyard.TestHarness.RocketConfig.fir@238811.4]
  output        io_rawOut_isZero, // @[:chipyard.TestHarness.RocketConfig.fir@238811.4]
  output        io_rawOut_sign, // @[:chipyard.TestHarness.RocketConfig.fir@238811.4]
  output [12:0] io_rawOut_sExp, // @[:chipyard.TestHarness.RocketConfig.fir@238811.4]
  output [55:0] io_rawOut_sig // @[:chipyard.TestHarness.RocketConfig.fir@238811.4]
);
  reg [55:0] cycleNum; // @[DivSqrtRecFN_small.scala 223:33:chipyard.TestHarness.RocketConfig.fir@238813.4]
  reg [63:0] _RAND_0;
  reg  sqrtOp_Z; // @[DivSqrtRecFN_small.scala 225:29:chipyard.TestHarness.RocketConfig.fir@238814.4]
  reg [31:0] _RAND_1;
  reg  majorExc_Z; // @[DivSqrtRecFN_small.scala 226:29:chipyard.TestHarness.RocketConfig.fir@238815.4]
  reg [31:0] _RAND_2;
  reg  isNaN_Z; // @[DivSqrtRecFN_small.scala 228:29:chipyard.TestHarness.RocketConfig.fir@238816.4]
  reg [31:0] _RAND_3;
  reg  isInf_Z; // @[DivSqrtRecFN_small.scala 229:29:chipyard.TestHarness.RocketConfig.fir@238817.4]
  reg [31:0] _RAND_4;
  reg  isZero_Z; // @[DivSqrtRecFN_small.scala 230:29:chipyard.TestHarness.RocketConfig.fir@238818.4]
  reg [31:0] _RAND_5;
  reg  sign_Z; // @[DivSqrtRecFN_small.scala 231:29:chipyard.TestHarness.RocketConfig.fir@238819.4]
  reg [31:0] _RAND_6;
  reg [12:0] sExp_Z; // @[DivSqrtRecFN_small.scala 232:29:chipyard.TestHarness.RocketConfig.fir@238820.4]
  reg [31:0] _RAND_7;
  reg [51:0] fractB_Z; // @[DivSqrtRecFN_small.scala 233:29:chipyard.TestHarness.RocketConfig.fir@238821.4]
  reg [63:0] _RAND_8;
  reg [2:0] roundingMode_Z; // @[DivSqrtRecFN_small.scala 234:29:chipyard.TestHarness.RocketConfig.fir@238822.4]
  reg [31:0] _RAND_9;
  reg [54:0] rem_Z; // @[DivSqrtRecFN_small.scala 240:29:chipyard.TestHarness.RocketConfig.fir@238823.4]
  reg [63:0] _RAND_10;
  reg  notZeroRem_Z; // @[DivSqrtRecFN_small.scala 241:29:chipyard.TestHarness.RocketConfig.fir@238824.4]
  reg [31:0] _RAND_11;
  reg [54:0] sigX_Z; // @[DivSqrtRecFN_small.scala 242:29:chipyard.TestHarness.RocketConfig.fir@238825.4]
  reg [63:0] _RAND_12;
  wire  _T; // @[DivSqrtRecFN_small.scala 251:24:chipyard.TestHarness.RocketConfig.fir@238826.4]
  wire  _T_1; // @[DivSqrtRecFN_small.scala 251:59:chipyard.TestHarness.RocketConfig.fir@238827.4]
  wire  notSigNaNIn_invalidExc_S_div; // @[DivSqrtRecFN_small.scala 251:42:chipyard.TestHarness.RocketConfig.fir@238828.4]
  wire  _T_2; // @[DivSqrtRecFN_small.scala 253:9:chipyard.TestHarness.RocketConfig.fir@238829.4]
  wire  _T_3; // @[DivSqrtRecFN_small.scala 253:27:chipyard.TestHarness.RocketConfig.fir@238830.4]
  wire  _T_4; // @[DivSqrtRecFN_small.scala 253:24:chipyard.TestHarness.RocketConfig.fir@238831.4]
  wire  notSigNaNIn_invalidExc_S_sqrt; // @[DivSqrtRecFN_small.scala 253:43:chipyard.TestHarness.RocketConfig.fir@238832.4]
  wire  _T_6; // @[common.scala 81:49:chipyard.TestHarness.RocketConfig.fir@238834.4]
  wire  _T_7; // @[common.scala 81:46:chipyard.TestHarness.RocketConfig.fir@238835.4]
  wire  _T_8; // @[DivSqrtRecFN_small.scala 256:38:chipyard.TestHarness.RocketConfig.fir@238836.4]
  wire  _T_13; // @[common.scala 81:49:chipyard.TestHarness.RocketConfig.fir@238841.4]
  wire  _T_14; // @[common.scala 81:46:chipyard.TestHarness.RocketConfig.fir@238842.4]
  wire  _T_15; // @[DivSqrtRecFN_small.scala 257:38:chipyard.TestHarness.RocketConfig.fir@238843.4]
  wire  _T_16; // @[DivSqrtRecFN_small.scala 257:66:chipyard.TestHarness.RocketConfig.fir@238844.4]
  wire  _T_18; // @[DivSqrtRecFN_small.scala 259:36:chipyard.TestHarness.RocketConfig.fir@238846.4]
  wire  _T_19; // @[DivSqrtRecFN_small.scala 259:33:chipyard.TestHarness.RocketConfig.fir@238847.4]
  wire  _T_20; // @[DivSqrtRecFN_small.scala 259:51:chipyard.TestHarness.RocketConfig.fir@238848.4]
  wire  _T_21; // @[DivSqrtRecFN_small.scala 258:46:chipyard.TestHarness.RocketConfig.fir@238849.4]
  wire  _T_22; // @[DivSqrtRecFN_small.scala 263:26:chipyard.TestHarness.RocketConfig.fir@238851.4]
  wire  _T_23; // @[DivSqrtRecFN_small.scala 264:26:chipyard.TestHarness.RocketConfig.fir@238852.4]
  wire  _T_24; // @[DivSqrtRecFN_small.scala 264:42:chipyard.TestHarness.RocketConfig.fir@238853.4]
  wire  _T_25; // @[DivSqrtRecFN_small.scala 266:63:chipyard.TestHarness.RocketConfig.fir@238855.4]
  wire  _T_26; // @[DivSqrtRecFN_small.scala 267:64:chipyard.TestHarness.RocketConfig.fir@238857.4]
  wire  _T_27; // @[DivSqrtRecFN_small.scala 268:33:chipyard.TestHarness.RocketConfig.fir@238859.4]
  wire  _T_28; // @[DivSqrtRecFN_small.scala 268:45:chipyard.TestHarness.RocketConfig.fir@238860.4]
  wire  sign_S; // @[DivSqrtRecFN_small.scala 268:30:chipyard.TestHarness.RocketConfig.fir@238861.4]
  wire  _T_29; // @[DivSqrtRecFN_small.scala 270:39:chipyard.TestHarness.RocketConfig.fir@238862.4]
  wire  specialCaseA_S; // @[DivSqrtRecFN_small.scala 270:55:chipyard.TestHarness.RocketConfig.fir@238863.4]
  wire  _T_30; // @[DivSqrtRecFN_small.scala 271:39:chipyard.TestHarness.RocketConfig.fir@238864.4]
  wire  specialCaseB_S; // @[DivSqrtRecFN_small.scala 271:55:chipyard.TestHarness.RocketConfig.fir@238865.4]
  wire  _T_31; // @[DivSqrtRecFN_small.scala 272:28:chipyard.TestHarness.RocketConfig.fir@238866.4]
  wire  _T_32; // @[DivSqrtRecFN_small.scala 272:48:chipyard.TestHarness.RocketConfig.fir@238867.4]
  wire  normalCase_S_div; // @[DivSqrtRecFN_small.scala 272:45:chipyard.TestHarness.RocketConfig.fir@238868.4]
  wire  _T_34; // @[DivSqrtRecFN_small.scala 273:49:chipyard.TestHarness.RocketConfig.fir@238870.4]
  wire  normalCase_S_sqrt; // @[DivSqrtRecFN_small.scala 273:46:chipyard.TestHarness.RocketConfig.fir@238871.4]
  wire  normalCase_S; // @[DivSqrtRecFN_small.scala 274:27:chipyard.TestHarness.RocketConfig.fir@238872.4]
  wire [10:0] _T_37; // @[DivSqrtRecFN_small.scala 278:40:chipyard.TestHarness.RocketConfig.fir@238875.4]
  wire [11:0] _T_39; // @[DivSqrtRecFN_small.scala 278:71:chipyard.TestHarness.RocketConfig.fir@238877.4]
  wire [12:0] _GEN_13; // @[DivSqrtRecFN_small.scala 277:21:chipyard.TestHarness.RocketConfig.fir@238878.4]
  wire [13:0] sExpQuot_S_div; // @[DivSqrtRecFN_small.scala 277:21:chipyard.TestHarness.RocketConfig.fir@238878.4]
  wire  _T_40; // @[DivSqrtRecFN_small.scala 281:48:chipyard.TestHarness.RocketConfig.fir@238879.4]
  wire [3:0] _T_42; // @[DivSqrtRecFN_small.scala 281:16:chipyard.TestHarness.RocketConfig.fir@238881.4]
  wire [12:0] sSatExpQuot_S_div; // @[DivSqrtRecFN_small.scala 286:11:chipyard.TestHarness.RocketConfig.fir@238884.4]
  wire  _T_46; // @[DivSqrtRecFN_small.scala 288:35:chipyard.TestHarness.RocketConfig.fir@238886.4]
  wire  evenSqrt_S; // @[DivSqrtRecFN_small.scala 288:32:chipyard.TestHarness.RocketConfig.fir@238887.4]
  wire  oddSqrt_S; // @[DivSqrtRecFN_small.scala 289:32:chipyard.TestHarness.RocketConfig.fir@238889.4]
  wire  idle; // @[DivSqrtRecFN_small.scala 293:24:chipyard.TestHarness.RocketConfig.fir@238890.4]
  wire  inReady; // @[DivSqrtRecFN_small.scala 294:24:chipyard.TestHarness.RocketConfig.fir@238892.4]
  wire  entering; // @[DivSqrtRecFN_small.scala 295:28:chipyard.TestHarness.RocketConfig.fir@238893.4]
  wire  entering_normalCase; // @[DivSqrtRecFN_small.scala 296:40:chipyard.TestHarness.RocketConfig.fir@238894.4]
  wire  skipCycle2; // @[DivSqrtRecFN_small.scala 298:34:chipyard.TestHarness.RocketConfig.fir@238897.4]
  wire  _T_51; // @[DivSqrtRecFN_small.scala 300:11:chipyard.TestHarness.RocketConfig.fir@238898.4]
  wire  _T_52; // @[DivSqrtRecFN_small.scala 300:18:chipyard.TestHarness.RocketConfig.fir@238899.4]
  wire  _T_53; // @[DivSqrtRecFN_small.scala 302:28:chipyard.TestHarness.RocketConfig.fir@238901.6]
  wire  _T_54; // @[DivSqrtRecFN_small.scala 302:26:chipyard.TestHarness.RocketConfig.fir@238902.6]
  wire [1:0] _T_55; // @[DivSqrtRecFN_small.scala 302:16:chipyard.TestHarness.RocketConfig.fir@238903.6]
  wire [54:0] _T_57; // @[DivSqrtRecFN_small.scala 305:24:chipyard.TestHarness.RocketConfig.fir@238905.6]
  wire [55:0] _T_58; // @[DivSqrtRecFN_small.scala 304:20:chipyard.TestHarness.RocketConfig.fir@238906.6]
  wire [55:0] _T_59; // @[DivSqrtRecFN_small.scala 303:16:chipyard.TestHarness.RocketConfig.fir@238907.6]
  wire [55:0] _GEN_14; // @[DivSqrtRecFN_small.scala 302:59:chipyard.TestHarness.RocketConfig.fir@238908.6]
  wire [55:0] _T_60; // @[DivSqrtRecFN_small.scala 302:59:chipyard.TestHarness.RocketConfig.fir@238908.6]
  wire  _T_61; // @[DivSqrtRecFN_small.scala 310:17:chipyard.TestHarness.RocketConfig.fir@238909.6]
  wire  _T_62; // @[DivSqrtRecFN_small.scala 310:31:chipyard.TestHarness.RocketConfig.fir@238910.6]
  wire  _T_63; // @[DivSqrtRecFN_small.scala 310:28:chipyard.TestHarness.RocketConfig.fir@238911.6]
  wire [54:0] _T_65; // @[DivSqrtRecFN_small.scala 310:16:chipyard.TestHarness.RocketConfig.fir@238913.6]
  wire [55:0] _GEN_15; // @[DivSqrtRecFN_small.scala 309:15:chipyard.TestHarness.RocketConfig.fir@238914.6]
  wire [55:0] _T_66; // @[DivSqrtRecFN_small.scala 309:15:chipyard.TestHarness.RocketConfig.fir@238914.6]
  wire [1:0] _T_67; // @[DivSqrtRecFN_small.scala 311:16:chipyard.TestHarness.RocketConfig.fir@238915.6]
  wire [55:0] _GEN_16; // @[DivSqrtRecFN_small.scala 310:63:chipyard.TestHarness.RocketConfig.fir@238916.6]
  wire [55:0] _T_68; // @[DivSqrtRecFN_small.scala 310:63:chipyard.TestHarness.RocketConfig.fir@238916.6]
  wire [11:0] _T_69; // @[DivSqrtRecFN_small.scala 329:29:chipyard.TestHarness.RocketConfig.fir@238929.6]
  wire [12:0] _T_70; // @[DivSqrtRecFN_small.scala 329:34:chipyard.TestHarness.RocketConfig.fir@238930.6]
  wire  _T_73; // @[DivSqrtRecFN_small.scala 334:31:chipyard.TestHarness.RocketConfig.fir@238936.4]
  wire  _T_75; // @[DivSqrtRecFN_small.scala 341:24:chipyard.TestHarness.RocketConfig.fir@238941.4]
  wire  _T_76; // @[DivSqrtRecFN_small.scala 341:21:chipyard.TestHarness.RocketConfig.fir@238942.4]
  wire [54:0] _T_77; // @[DivSqrtRecFN_small.scala 341:47:chipyard.TestHarness.RocketConfig.fir@238943.4]
  wire [54:0] _T_78; // @[DivSqrtRecFN_small.scala 341:12:chipyard.TestHarness.RocketConfig.fir@238944.4]
  wire  _T_79; // @[DivSqrtRecFN_small.scala 342:21:chipyard.TestHarness.RocketConfig.fir@238945.4]
  wire [1:0] _T_82; // @[DivSqrtRecFN_small.scala 343:56:chipyard.TestHarness.RocketConfig.fir@238948.4]
  wire [53:0] _T_84; // @[DivSqrtRecFN_small.scala 344:44:chipyard.TestHarness.RocketConfig.fir@238950.4]
  wire [55:0] _T_85; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@238951.4]
  wire [55:0] _T_86; // @[DivSqrtRecFN_small.scala 342:12:chipyard.TestHarness.RocketConfig.fir@238952.4]
  wire [55:0] _GEN_17; // @[DivSqrtRecFN_small.scala 341:57:chipyard.TestHarness.RocketConfig.fir@238953.4]
  wire [55:0] _T_87; // @[DivSqrtRecFN_small.scala 341:57:chipyard.TestHarness.RocketConfig.fir@238953.4]
  wire  _T_88; // @[DivSqrtRecFN_small.scala 348:13:chipyard.TestHarness.RocketConfig.fir@238954.4]
  wire [55:0] _T_89; // @[DivSqrtRecFN_small.scala 348:29:chipyard.TestHarness.RocketConfig.fir@238955.4]
  wire [55:0] _T_90; // @[DivSqrtRecFN_small.scala 348:12:chipyard.TestHarness.RocketConfig.fir@238956.4]
  wire [55:0] rem; // @[DivSqrtRecFN_small.scala 347:11:chipyard.TestHarness.RocketConfig.fir@238957.4]
  wire [53:0] bitMask; // @[DivSqrtRecFN_small.scala 349:27:chipyard.TestHarness.RocketConfig.fir@238958.4]
  wire  _T_92; // @[DivSqrtRecFN_small.scala 351:21:chipyard.TestHarness.RocketConfig.fir@238960.4]
  wire [54:0] _T_93; // @[DivSqrtRecFN_small.scala 351:47:chipyard.TestHarness.RocketConfig.fir@238961.4]
  wire [54:0] _T_94; // @[DivSqrtRecFN_small.scala 351:12:chipyard.TestHarness.RocketConfig.fir@238962.4]
  wire  _T_95; // @[DivSqrtRecFN_small.scala 352:21:chipyard.TestHarness.RocketConfig.fir@238963.4]
  wire [53:0] _T_96; // @[DivSqrtRecFN_small.scala 352:12:chipyard.TestHarness.RocketConfig.fir@238964.4]
  wire [54:0] _GEN_18; // @[DivSqrtRecFN_small.scala 351:73:chipyard.TestHarness.RocketConfig.fir@238965.4]
  wire [54:0] _T_97; // @[DivSqrtRecFN_small.scala 351:73:chipyard.TestHarness.RocketConfig.fir@238965.4]
  wire [54:0] _T_99; // @[DivSqrtRecFN_small.scala 353:12:chipyard.TestHarness.RocketConfig.fir@238967.4]
  wire [54:0] _T_100; // @[DivSqrtRecFN_small.scala 352:73:chipyard.TestHarness.RocketConfig.fir@238968.4]
  wire  _T_102; // @[DivSqrtRecFN_small.scala 354:26:chipyard.TestHarness.RocketConfig.fir@238970.4]
  wire  _T_103; // @[DivSqrtRecFN_small.scala 354:23:chipyard.TestHarness.RocketConfig.fir@238971.4]
  wire [52:0] _T_104; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@238972.4]
  wire [53:0] _T_105; // @[DivSqrtRecFN_small.scala 354:56:chipyard.TestHarness.RocketConfig.fir@238973.4]
  wire [53:0] _T_106; // @[DivSqrtRecFN_small.scala 354:12:chipyard.TestHarness.RocketConfig.fir@238974.4]
  wire [54:0] _GEN_19; // @[DivSqrtRecFN_small.scala 353:73:chipyard.TestHarness.RocketConfig.fir@238975.4]
  wire [54:0] _T_107; // @[DivSqrtRecFN_small.scala 353:73:chipyard.TestHarness.RocketConfig.fir@238975.4]
  wire  _T_109; // @[DivSqrtRecFN_small.scala 355:23:chipyard.TestHarness.RocketConfig.fir@238977.4]
  wire [55:0] _T_110; // @[DivSqrtRecFN_small.scala 355:44:chipyard.TestHarness.RocketConfig.fir@238978.4]
  wire [55:0] _GEN_20; // @[DivSqrtRecFN_small.scala 355:48:chipyard.TestHarness.RocketConfig.fir@238979.4]
  wire [55:0] _T_111; // @[DivSqrtRecFN_small.scala 355:48:chipyard.TestHarness.RocketConfig.fir@238979.4]
  wire [55:0] _T_112; // @[DivSqrtRecFN_small.scala 355:12:chipyard.TestHarness.RocketConfig.fir@238980.4]
  wire [55:0] _GEN_21; // @[DivSqrtRecFN_small.scala 354:73:chipyard.TestHarness.RocketConfig.fir@238981.4]
  wire [55:0] trialTerm; // @[DivSqrtRecFN_small.scala 354:73:chipyard.TestHarness.RocketConfig.fir@238981.4]
  wire [56:0] _T_113; // @[DivSqrtRecFN_small.scala 356:24:chipyard.TestHarness.RocketConfig.fir@238982.4]
  wire [56:0] _T_114; // @[DivSqrtRecFN_small.scala 356:41:chipyard.TestHarness.RocketConfig.fir@238983.4]
  wire [56:0] trialRem; // @[DivSqrtRecFN_small.scala 356:29:chipyard.TestHarness.RocketConfig.fir@238986.4]
  wire  newBit; // @[DivSqrtRecFN_small.scala 357:23:chipyard.TestHarness.RocketConfig.fir@238987.4]
  wire  _T_118; // @[DivSqrtRecFN_small.scala 359:41:chipyard.TestHarness.RocketConfig.fir@238989.4]
  wire  _T_119; // @[DivSqrtRecFN_small.scala 359:34:chipyard.TestHarness.RocketConfig.fir@238990.4]
  wire  _T_120; // @[DivSqrtRecFN_small.scala 359:31:chipyard.TestHarness.RocketConfig.fir@238991.4]
  wire [56:0] _T_121; // @[DivSqrtRecFN_small.scala 360:39:chipyard.TestHarness.RocketConfig.fir@238993.6]
  wire [56:0] _T_122; // @[DivSqrtRecFN_small.scala 360:21:chipyard.TestHarness.RocketConfig.fir@238994.6]
  wire [56:0] _GEN_10; // @[DivSqrtRecFN_small.scala 359:58:chipyard.TestHarness.RocketConfig.fir@238992.4]
  wire  _T_124; // @[DivSqrtRecFN_small.scala 362:45:chipyard.TestHarness.RocketConfig.fir@238998.4]
  wire  _T_125; // @[DivSqrtRecFN_small.scala 362:31:chipyard.TestHarness.RocketConfig.fir@238999.4]
  wire  _T_126; // @[DivSqrtRecFN_small.scala 363:35:chipyard.TestHarness.RocketConfig.fir@239001.6]
  wire [54:0] _T_129; // @[DivSqrtRecFN_small.scala 365:47:chipyard.TestHarness.RocketConfig.fir@239005.6]
  wire [54:0] _T_130; // @[DivSqrtRecFN_small.scala 365:16:chipyard.TestHarness.RocketConfig.fir@239006.6]
  wire  _T_131; // @[DivSqrtRecFN_small.scala 366:25:chipyard.TestHarness.RocketConfig.fir@239007.6]
  wire [53:0] _T_132; // @[DivSqrtRecFN_small.scala 366:16:chipyard.TestHarness.RocketConfig.fir@239008.6]
  wire [54:0] _GEN_22; // @[DivSqrtRecFN_small.scala 365:71:chipyard.TestHarness.RocketConfig.fir@239009.6]
  wire [54:0] _T_133; // @[DivSqrtRecFN_small.scala 365:71:chipyard.TestHarness.RocketConfig.fir@239009.6]
  wire [52:0] _T_135; // @[DivSqrtRecFN_small.scala 367:47:chipyard.TestHarness.RocketConfig.fir@239011.6]
  wire [52:0] _T_136; // @[DivSqrtRecFN_small.scala 367:16:chipyard.TestHarness.RocketConfig.fir@239012.6]
  wire [54:0] _GEN_23; // @[DivSqrtRecFN_small.scala 366:71:chipyard.TestHarness.RocketConfig.fir@239013.6]
  wire [54:0] _T_137; // @[DivSqrtRecFN_small.scala 366:71:chipyard.TestHarness.RocketConfig.fir@239013.6]
  wire [54:0] _GEN_24; // @[DivSqrtRecFN_small.scala 368:48:chipyard.TestHarness.RocketConfig.fir@239015.6]
  wire [54:0] _T_139; // @[DivSqrtRecFN_small.scala 368:48:chipyard.TestHarness.RocketConfig.fir@239015.6]
  wire [54:0] _T_140; // @[DivSqrtRecFN_small.scala 368:16:chipyard.TestHarness.RocketConfig.fir@239016.6]
  wire [54:0] _T_141; // @[DivSqrtRecFN_small.scala 367:71:chipyard.TestHarness.RocketConfig.fir@239017.6]
  wire  _T_146; // @[DivSqrtRecFN_small.scala 379:39:chipyard.TestHarness.RocketConfig.fir@239029.4]
  wire [55:0] _GEN_25; // @[DivSqrtRecFN_small.scala 385:35:chipyard.TestHarness.RocketConfig.fir@239038.4]
  assign _T = io_a_isZero & io_b_isZero; // @[DivSqrtRecFN_small.scala 251:24:chipyard.TestHarness.RocketConfig.fir@238826.4]
  assign _T_1 = io_a_isInf & io_b_isInf; // @[DivSqrtRecFN_small.scala 251:59:chipyard.TestHarness.RocketConfig.fir@238827.4]
  assign notSigNaNIn_invalidExc_S_div = _T | _T_1; // @[DivSqrtRecFN_small.scala 251:42:chipyard.TestHarness.RocketConfig.fir@238828.4]
  assign _T_2 = ~io_a_isNaN; // @[DivSqrtRecFN_small.scala 253:9:chipyard.TestHarness.RocketConfig.fir@238829.4]
  assign _T_3 = ~io_a_isZero; // @[DivSqrtRecFN_small.scala 253:27:chipyard.TestHarness.RocketConfig.fir@238830.4]
  assign _T_4 = _T_2 & _T_3; // @[DivSqrtRecFN_small.scala 253:24:chipyard.TestHarness.RocketConfig.fir@238831.4]
  assign notSigNaNIn_invalidExc_S_sqrt = _T_4 & io_a_sign; // @[DivSqrtRecFN_small.scala 253:43:chipyard.TestHarness.RocketConfig.fir@238832.4]
  assign _T_6 = ~io_a_sig[51]; // @[common.scala 81:49:chipyard.TestHarness.RocketConfig.fir@238834.4]
  assign _T_7 = io_a_isNaN & _T_6; // @[common.scala 81:46:chipyard.TestHarness.RocketConfig.fir@238835.4]
  assign _T_8 = _T_7 | notSigNaNIn_invalidExc_S_sqrt; // @[DivSqrtRecFN_small.scala 256:38:chipyard.TestHarness.RocketConfig.fir@238836.4]
  assign _T_13 = ~io_b_sig[51]; // @[common.scala 81:49:chipyard.TestHarness.RocketConfig.fir@238841.4]
  assign _T_14 = io_b_isNaN & _T_13; // @[common.scala 81:46:chipyard.TestHarness.RocketConfig.fir@238842.4]
  assign _T_15 = _T_7 | _T_14; // @[DivSqrtRecFN_small.scala 257:38:chipyard.TestHarness.RocketConfig.fir@238843.4]
  assign _T_16 = _T_15 | notSigNaNIn_invalidExc_S_div; // @[DivSqrtRecFN_small.scala 257:66:chipyard.TestHarness.RocketConfig.fir@238844.4]
  assign _T_18 = ~io_a_isInf; // @[DivSqrtRecFN_small.scala 259:36:chipyard.TestHarness.RocketConfig.fir@238846.4]
  assign _T_19 = _T_2 & _T_18; // @[DivSqrtRecFN_small.scala 259:33:chipyard.TestHarness.RocketConfig.fir@238847.4]
  assign _T_20 = _T_19 & io_b_isZero; // @[DivSqrtRecFN_small.scala 259:51:chipyard.TestHarness.RocketConfig.fir@238848.4]
  assign _T_21 = _T_16 | _T_20; // @[DivSqrtRecFN_small.scala 258:46:chipyard.TestHarness.RocketConfig.fir@238849.4]
  assign _T_22 = io_a_isNaN | notSigNaNIn_invalidExc_S_sqrt; // @[DivSqrtRecFN_small.scala 263:26:chipyard.TestHarness.RocketConfig.fir@238851.4]
  assign _T_23 = io_a_isNaN | io_b_isNaN; // @[DivSqrtRecFN_small.scala 264:26:chipyard.TestHarness.RocketConfig.fir@238852.4]
  assign _T_24 = _T_23 | notSigNaNIn_invalidExc_S_div; // @[DivSqrtRecFN_small.scala 264:42:chipyard.TestHarness.RocketConfig.fir@238853.4]
  assign _T_25 = io_a_isInf | io_b_isZero; // @[DivSqrtRecFN_small.scala 266:63:chipyard.TestHarness.RocketConfig.fir@238855.4]
  assign _T_26 = io_a_isZero | io_b_isInf; // @[DivSqrtRecFN_small.scala 267:64:chipyard.TestHarness.RocketConfig.fir@238857.4]
  assign _T_27 = ~io_sqrtOp; // @[DivSqrtRecFN_small.scala 268:33:chipyard.TestHarness.RocketConfig.fir@238859.4]
  assign _T_28 = _T_27 & io_b_sign; // @[DivSqrtRecFN_small.scala 268:45:chipyard.TestHarness.RocketConfig.fir@238860.4]
  assign sign_S = io_a_sign ^ _T_28; // @[DivSqrtRecFN_small.scala 268:30:chipyard.TestHarness.RocketConfig.fir@238861.4]
  assign _T_29 = io_a_isNaN | io_a_isInf; // @[DivSqrtRecFN_small.scala 270:39:chipyard.TestHarness.RocketConfig.fir@238862.4]
  assign specialCaseA_S = _T_29 | io_a_isZero; // @[DivSqrtRecFN_small.scala 270:55:chipyard.TestHarness.RocketConfig.fir@238863.4]
  assign _T_30 = io_b_isNaN | io_b_isInf; // @[DivSqrtRecFN_small.scala 271:39:chipyard.TestHarness.RocketConfig.fir@238864.4]
  assign specialCaseB_S = _T_30 | io_b_isZero; // @[DivSqrtRecFN_small.scala 271:55:chipyard.TestHarness.RocketConfig.fir@238865.4]
  assign _T_31 = ~specialCaseA_S; // @[DivSqrtRecFN_small.scala 272:28:chipyard.TestHarness.RocketConfig.fir@238866.4]
  assign _T_32 = ~specialCaseB_S; // @[DivSqrtRecFN_small.scala 272:48:chipyard.TestHarness.RocketConfig.fir@238867.4]
  assign normalCase_S_div = _T_31 & _T_32; // @[DivSqrtRecFN_small.scala 272:45:chipyard.TestHarness.RocketConfig.fir@238868.4]
  assign _T_34 = ~io_a_sign; // @[DivSqrtRecFN_small.scala 273:49:chipyard.TestHarness.RocketConfig.fir@238870.4]
  assign normalCase_S_sqrt = _T_31 & _T_34; // @[DivSqrtRecFN_small.scala 273:46:chipyard.TestHarness.RocketConfig.fir@238871.4]
  assign normalCase_S = io_sqrtOp ? normalCase_S_sqrt : normalCase_S_div; // @[DivSqrtRecFN_small.scala 274:27:chipyard.TestHarness.RocketConfig.fir@238872.4]
  assign _T_37 = ~io_b_sExp[10:0]; // @[DivSqrtRecFN_small.scala 278:40:chipyard.TestHarness.RocketConfig.fir@238875.4]
  assign _T_39 = {io_b_sExp[11],_T_37}; // @[DivSqrtRecFN_small.scala 278:71:chipyard.TestHarness.RocketConfig.fir@238877.4]
  assign _GEN_13 = {{1{_T_39[11]}},_T_39}; // @[DivSqrtRecFN_small.scala 277:21:chipyard.TestHarness.RocketConfig.fir@238878.4]
  assign sExpQuot_S_div = $signed(io_a_sExp) + $signed(_GEN_13); // @[DivSqrtRecFN_small.scala 277:21:chipyard.TestHarness.RocketConfig.fir@238878.4]
  assign _T_40 = 14'she00 <= $signed(sExpQuot_S_div); // @[DivSqrtRecFN_small.scala 281:48:chipyard.TestHarness.RocketConfig.fir@238879.4]
  assign _T_42 = _T_40 ? 4'h6 : sExpQuot_S_div[12:9]; // @[DivSqrtRecFN_small.scala 281:16:chipyard.TestHarness.RocketConfig.fir@238881.4]
  assign sSatExpQuot_S_div = {_T_42,sExpQuot_S_div[8:0]}; // @[DivSqrtRecFN_small.scala 286:11:chipyard.TestHarness.RocketConfig.fir@238884.4]
  assign _T_46 = ~io_a_sExp[0]; // @[DivSqrtRecFN_small.scala 288:35:chipyard.TestHarness.RocketConfig.fir@238886.4]
  assign evenSqrt_S = io_sqrtOp & _T_46; // @[DivSqrtRecFN_small.scala 288:32:chipyard.TestHarness.RocketConfig.fir@238887.4]
  assign oddSqrt_S = io_sqrtOp & io_a_sExp[0]; // @[DivSqrtRecFN_small.scala 289:32:chipyard.TestHarness.RocketConfig.fir@238889.4]
  assign idle = cycleNum[0]; // @[DivSqrtRecFN_small.scala 293:24:chipyard.TestHarness.RocketConfig.fir@238890.4]
  assign inReady = idle | cycleNum[1]; // @[DivSqrtRecFN_small.scala 294:24:chipyard.TestHarness.RocketConfig.fir@238892.4]
  assign entering = inReady & io_inValid; // @[DivSqrtRecFN_small.scala 295:28:chipyard.TestHarness.RocketConfig.fir@238893.4]
  assign entering_normalCase = entering & normalCase_S; // @[DivSqrtRecFN_small.scala 296:40:chipyard.TestHarness.RocketConfig.fir@238894.4]
  assign skipCycle2 = cycleNum[3] & sigX_Z[54]; // @[DivSqrtRecFN_small.scala 298:34:chipyard.TestHarness.RocketConfig.fir@238897.4]
  assign _T_51 = ~idle; // @[DivSqrtRecFN_small.scala 300:11:chipyard.TestHarness.RocketConfig.fir@238898.4]
  assign _T_52 = _T_51 | entering; // @[DivSqrtRecFN_small.scala 300:18:chipyard.TestHarness.RocketConfig.fir@238899.4]
  assign _T_53 = ~normalCase_S; // @[DivSqrtRecFN_small.scala 302:28:chipyard.TestHarness.RocketConfig.fir@238901.6]
  assign _T_54 = entering & _T_53; // @[DivSqrtRecFN_small.scala 302:26:chipyard.TestHarness.RocketConfig.fir@238902.6]
  assign _T_55 = _T_54 ? 2'h2 : 2'h0; // @[DivSqrtRecFN_small.scala 302:16:chipyard.TestHarness.RocketConfig.fir@238903.6]
  assign _T_57 = io_a_sExp[0] ? 55'h20000000000000 : 55'h40000000000000; // @[DivSqrtRecFN_small.scala 305:24:chipyard.TestHarness.RocketConfig.fir@238905.6]
  assign _T_58 = io_sqrtOp ? {{1'd0}, _T_57} : 56'h80000000000000; // @[DivSqrtRecFN_small.scala 304:20:chipyard.TestHarness.RocketConfig.fir@238906.6]
  assign _T_59 = entering_normalCase ? _T_58 : 56'h0; // @[DivSqrtRecFN_small.scala 303:16:chipyard.TestHarness.RocketConfig.fir@238907.6]
  assign _GEN_14 = {{54'd0}, _T_55}; // @[DivSqrtRecFN_small.scala 302:59:chipyard.TestHarness.RocketConfig.fir@238908.6]
  assign _T_60 = _GEN_14 | _T_59; // @[DivSqrtRecFN_small.scala 302:59:chipyard.TestHarness.RocketConfig.fir@238908.6]
  assign _T_61 = ~entering; // @[DivSqrtRecFN_small.scala 310:17:chipyard.TestHarness.RocketConfig.fir@238909.6]
  assign _T_62 = ~skipCycle2; // @[DivSqrtRecFN_small.scala 310:31:chipyard.TestHarness.RocketConfig.fir@238910.6]
  assign _T_63 = _T_61 & _T_62; // @[DivSqrtRecFN_small.scala 310:28:chipyard.TestHarness.RocketConfig.fir@238911.6]
  assign _T_65 = _T_63 ? cycleNum[55:1] : 55'h0; // @[DivSqrtRecFN_small.scala 310:16:chipyard.TestHarness.RocketConfig.fir@238913.6]
  assign _GEN_15 = {{1'd0}, _T_65}; // @[DivSqrtRecFN_small.scala 309:15:chipyard.TestHarness.RocketConfig.fir@238914.6]
  assign _T_66 = _T_60 | _GEN_15; // @[DivSqrtRecFN_small.scala 309:15:chipyard.TestHarness.RocketConfig.fir@238914.6]
  assign _T_67 = skipCycle2 ? 2'h2 : 2'h0; // @[DivSqrtRecFN_small.scala 311:16:chipyard.TestHarness.RocketConfig.fir@238915.6]
  assign _GEN_16 = {{54'd0}, _T_67}; // @[DivSqrtRecFN_small.scala 310:63:chipyard.TestHarness.RocketConfig.fir@238916.6]
  assign _T_68 = _T_66 | _GEN_16; // @[DivSqrtRecFN_small.scala 310:63:chipyard.TestHarness.RocketConfig.fir@238916.6]
  assign _T_69 = io_a_sExp[12:1]; // @[DivSqrtRecFN_small.scala 329:29:chipyard.TestHarness.RocketConfig.fir@238929.6]
  assign _T_70 = $signed(_T_69) + 12'sh400; // @[DivSqrtRecFN_small.scala 329:34:chipyard.TestHarness.RocketConfig.fir@238930.6]
  assign _T_73 = entering_normalCase & _T_27; // @[DivSqrtRecFN_small.scala 334:31:chipyard.TestHarness.RocketConfig.fir@238936.4]
  assign _T_75 = ~oddSqrt_S; // @[DivSqrtRecFN_small.scala 341:24:chipyard.TestHarness.RocketConfig.fir@238941.4]
  assign _T_76 = inReady & _T_75; // @[DivSqrtRecFN_small.scala 341:21:chipyard.TestHarness.RocketConfig.fir@238942.4]
  assign _T_77 = {io_a_sig, 1'h0}; // @[DivSqrtRecFN_small.scala 341:47:chipyard.TestHarness.RocketConfig.fir@238943.4]
  assign _T_78 = _T_76 ? _T_77 : 55'h0; // @[DivSqrtRecFN_small.scala 341:12:chipyard.TestHarness.RocketConfig.fir@238944.4]
  assign _T_79 = inReady & oddSqrt_S; // @[DivSqrtRecFN_small.scala 342:21:chipyard.TestHarness.RocketConfig.fir@238945.4]
  assign _T_82 = io_a_sig[52:51] - 2'h1; // @[DivSqrtRecFN_small.scala 343:56:chipyard.TestHarness.RocketConfig.fir@238948.4]
  assign _T_84 = {io_a_sig[50:0], 3'h0}; // @[DivSqrtRecFN_small.scala 344:44:chipyard.TestHarness.RocketConfig.fir@238950.4]
  assign _T_85 = {_T_82,_T_84}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@238951.4]
  assign _T_86 = _T_79 ? _T_85 : 56'h0; // @[DivSqrtRecFN_small.scala 342:12:chipyard.TestHarness.RocketConfig.fir@238952.4]
  assign _GEN_17 = {{1'd0}, _T_78}; // @[DivSqrtRecFN_small.scala 341:57:chipyard.TestHarness.RocketConfig.fir@238953.4]
  assign _T_87 = _GEN_17 | _T_86; // @[DivSqrtRecFN_small.scala 341:57:chipyard.TestHarness.RocketConfig.fir@238953.4]
  assign _T_88 = ~inReady; // @[DivSqrtRecFN_small.scala 348:13:chipyard.TestHarness.RocketConfig.fir@238954.4]
  assign _T_89 = {rem_Z, 1'h0}; // @[DivSqrtRecFN_small.scala 348:29:chipyard.TestHarness.RocketConfig.fir@238955.4]
  assign _T_90 = _T_88 ? _T_89 : 56'h0; // @[DivSqrtRecFN_small.scala 348:12:chipyard.TestHarness.RocketConfig.fir@238956.4]
  assign rem = _T_87 | _T_90; // @[DivSqrtRecFN_small.scala 347:11:chipyard.TestHarness.RocketConfig.fir@238957.4]
  assign bitMask = cycleNum[55:2]; // @[DivSqrtRecFN_small.scala 349:27:chipyard.TestHarness.RocketConfig.fir@238958.4]
  assign _T_92 = inReady & _T_27; // @[DivSqrtRecFN_small.scala 351:21:chipyard.TestHarness.RocketConfig.fir@238960.4]
  assign _T_93 = {io_b_sig, 1'h0}; // @[DivSqrtRecFN_small.scala 351:47:chipyard.TestHarness.RocketConfig.fir@238961.4]
  assign _T_94 = _T_92 ? _T_93 : 55'h0; // @[DivSqrtRecFN_small.scala 351:12:chipyard.TestHarness.RocketConfig.fir@238962.4]
  assign _T_95 = inReady & evenSqrt_S; // @[DivSqrtRecFN_small.scala 352:21:chipyard.TestHarness.RocketConfig.fir@238963.4]
  assign _T_96 = _T_95 ? 54'h20000000000000 : 54'h0; // @[DivSqrtRecFN_small.scala 352:12:chipyard.TestHarness.RocketConfig.fir@238964.4]
  assign _GEN_18 = {{1'd0}, _T_96}; // @[DivSqrtRecFN_small.scala 351:73:chipyard.TestHarness.RocketConfig.fir@238965.4]
  assign _T_97 = _T_94 | _GEN_18; // @[DivSqrtRecFN_small.scala 351:73:chipyard.TestHarness.RocketConfig.fir@238965.4]
  assign _T_99 = _T_79 ? 55'h50000000000000 : 55'h0; // @[DivSqrtRecFN_small.scala 353:12:chipyard.TestHarness.RocketConfig.fir@238967.4]
  assign _T_100 = _T_97 | _T_99; // @[DivSqrtRecFN_small.scala 352:73:chipyard.TestHarness.RocketConfig.fir@238968.4]
  assign _T_102 = ~sqrtOp_Z; // @[DivSqrtRecFN_small.scala 354:26:chipyard.TestHarness.RocketConfig.fir@238970.4]
  assign _T_103 = _T_88 & _T_102; // @[DivSqrtRecFN_small.scala 354:23:chipyard.TestHarness.RocketConfig.fir@238971.4]
  assign _T_104 = {1'h1,fractB_Z}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@238972.4]
  assign _T_105 = {_T_104, 1'h0}; // @[DivSqrtRecFN_small.scala 354:56:chipyard.TestHarness.RocketConfig.fir@238973.4]
  assign _T_106 = _T_103 ? _T_105 : 54'h0; // @[DivSqrtRecFN_small.scala 354:12:chipyard.TestHarness.RocketConfig.fir@238974.4]
  assign _GEN_19 = {{1'd0}, _T_106}; // @[DivSqrtRecFN_small.scala 353:73:chipyard.TestHarness.RocketConfig.fir@238975.4]
  assign _T_107 = _T_100 | _GEN_19; // @[DivSqrtRecFN_small.scala 353:73:chipyard.TestHarness.RocketConfig.fir@238975.4]
  assign _T_109 = _T_88 & sqrtOp_Z; // @[DivSqrtRecFN_small.scala 355:23:chipyard.TestHarness.RocketConfig.fir@238977.4]
  assign _T_110 = {sigX_Z, 1'h0}; // @[DivSqrtRecFN_small.scala 355:44:chipyard.TestHarness.RocketConfig.fir@238978.4]
  assign _GEN_20 = {{2'd0}, bitMask}; // @[DivSqrtRecFN_small.scala 355:48:chipyard.TestHarness.RocketConfig.fir@238979.4]
  assign _T_111 = _T_110 | _GEN_20; // @[DivSqrtRecFN_small.scala 355:48:chipyard.TestHarness.RocketConfig.fir@238979.4]
  assign _T_112 = _T_109 ? _T_111 : 56'h0; // @[DivSqrtRecFN_small.scala 355:12:chipyard.TestHarness.RocketConfig.fir@238980.4]
  assign _GEN_21 = {{1'd0}, _T_107}; // @[DivSqrtRecFN_small.scala 354:73:chipyard.TestHarness.RocketConfig.fir@238981.4]
  assign trialTerm = _GEN_21 | _T_112; // @[DivSqrtRecFN_small.scala 354:73:chipyard.TestHarness.RocketConfig.fir@238981.4]
  assign _T_113 = {1'b0,$signed(rem)}; // @[DivSqrtRecFN_small.scala 356:24:chipyard.TestHarness.RocketConfig.fir@238982.4]
  assign _T_114 = {1'b0,$signed(trialTerm)}; // @[DivSqrtRecFN_small.scala 356:41:chipyard.TestHarness.RocketConfig.fir@238983.4]
  assign trialRem = $signed(_T_113) - $signed(_T_114); // @[DivSqrtRecFN_small.scala 356:29:chipyard.TestHarness.RocketConfig.fir@238986.4]
  assign newBit = 57'sh0 <= $signed(trialRem); // @[DivSqrtRecFN_small.scala 357:23:chipyard.TestHarness.RocketConfig.fir@238987.4]
  assign _T_118 = idle | cycleNum[2]; // @[DivSqrtRecFN_small.scala 359:41:chipyard.TestHarness.RocketConfig.fir@238989.4]
  assign _T_119 = ~_T_118; // @[DivSqrtRecFN_small.scala 359:34:chipyard.TestHarness.RocketConfig.fir@238990.4]
  assign _T_120 = entering_normalCase | _T_119; // @[DivSqrtRecFN_small.scala 359:31:chipyard.TestHarness.RocketConfig.fir@238991.4]
  assign _T_121 = $signed(_T_113) - $signed(_T_114); // @[DivSqrtRecFN_small.scala 360:39:chipyard.TestHarness.RocketConfig.fir@238993.6]
  assign _T_122 = newBit ? _T_121 : {{1'd0}, rem}; // @[DivSqrtRecFN_small.scala 360:21:chipyard.TestHarness.RocketConfig.fir@238994.6]
  assign _GEN_10 = _T_120 ? _T_122 : {{2'd0}, rem_Z}; // @[DivSqrtRecFN_small.scala 359:58:chipyard.TestHarness.RocketConfig.fir@238992.4]
  assign _T_124 = _T_88 & newBit; // @[DivSqrtRecFN_small.scala 362:45:chipyard.TestHarness.RocketConfig.fir@238998.4]
  assign _T_125 = entering_normalCase | _T_124; // @[DivSqrtRecFN_small.scala 362:31:chipyard.TestHarness.RocketConfig.fir@238999.4]
  assign _T_126 = $signed(trialRem) != 57'sh0; // @[DivSqrtRecFN_small.scala 363:35:chipyard.TestHarness.RocketConfig.fir@239001.6]
  assign _T_129 = {newBit, 54'h0}; // @[DivSqrtRecFN_small.scala 365:47:chipyard.TestHarness.RocketConfig.fir@239005.6]
  assign _T_130 = _T_92 ? _T_129 : 55'h0; // @[DivSqrtRecFN_small.scala 365:16:chipyard.TestHarness.RocketConfig.fir@239006.6]
  assign _T_131 = inReady & io_sqrtOp; // @[DivSqrtRecFN_small.scala 366:25:chipyard.TestHarness.RocketConfig.fir@239007.6]
  assign _T_132 = _T_131 ? 54'h20000000000000 : 54'h0; // @[DivSqrtRecFN_small.scala 366:16:chipyard.TestHarness.RocketConfig.fir@239008.6]
  assign _GEN_22 = {{1'd0}, _T_132}; // @[DivSqrtRecFN_small.scala 365:71:chipyard.TestHarness.RocketConfig.fir@239009.6]
  assign _T_133 = _T_130 | _GEN_22; // @[DivSqrtRecFN_small.scala 365:71:chipyard.TestHarness.RocketConfig.fir@239009.6]
  assign _T_135 = {newBit, 52'h0}; // @[DivSqrtRecFN_small.scala 367:47:chipyard.TestHarness.RocketConfig.fir@239011.6]
  assign _T_136 = _T_79 ? _T_135 : 53'h0; // @[DivSqrtRecFN_small.scala 367:16:chipyard.TestHarness.RocketConfig.fir@239012.6]
  assign _GEN_23 = {{2'd0}, _T_136}; // @[DivSqrtRecFN_small.scala 366:71:chipyard.TestHarness.RocketConfig.fir@239013.6]
  assign _T_137 = _T_133 | _GEN_23; // @[DivSqrtRecFN_small.scala 366:71:chipyard.TestHarness.RocketConfig.fir@239013.6]
  assign _GEN_24 = {{1'd0}, bitMask}; // @[DivSqrtRecFN_small.scala 368:48:chipyard.TestHarness.RocketConfig.fir@239015.6]
  assign _T_139 = sigX_Z | _GEN_24; // @[DivSqrtRecFN_small.scala 368:48:chipyard.TestHarness.RocketConfig.fir@239015.6]
  assign _T_140 = _T_88 ? _T_139 : 55'h0; // @[DivSqrtRecFN_small.scala 368:16:chipyard.TestHarness.RocketConfig.fir@239016.6]
  assign _T_141 = _T_137 | _T_140; // @[DivSqrtRecFN_small.scala 367:71:chipyard.TestHarness.RocketConfig.fir@239017.6]
  assign _T_146 = ~isNaN_Z; // @[DivSqrtRecFN_small.scala 379:39:chipyard.TestHarness.RocketConfig.fir@239029.4]
  assign _GEN_25 = {{55'd0}, notZeroRem_Z}; // @[DivSqrtRecFN_small.scala 385:35:chipyard.TestHarness.RocketConfig.fir@239038.4]
  assign io_inReady = idle | cycleNum[1]; // @[DivSqrtRecFN_small.scala 314:16:chipyard.TestHarness.RocketConfig.fir@238919.4]
  assign io_rawOutValid_div = cycleNum[1] & _T_102; // @[DivSqrtRecFN_small.scala 375:25:chipyard.TestHarness.RocketConfig.fir@239023.4]
  assign io_rawOutValid_sqrt = cycleNum[1] & sqrtOp_Z; // @[DivSqrtRecFN_small.scala 376:25:chipyard.TestHarness.RocketConfig.fir@239025.4]
  assign io_roundingModeOut = roundingMode_Z; // @[DivSqrtRecFN_small.scala 377:25:chipyard.TestHarness.RocketConfig.fir@239026.4]
  assign io_invalidExc = majorExc_Z & isNaN_Z; // @[DivSqrtRecFN_small.scala 378:22:chipyard.TestHarness.RocketConfig.fir@239028.4]
  assign io_infiniteExc = majorExc_Z & _T_146; // @[DivSqrtRecFN_small.scala 379:22:chipyard.TestHarness.RocketConfig.fir@239031.4]
  assign io_rawOut_isNaN = isNaN_Z; // @[DivSqrtRecFN_small.scala 380:22:chipyard.TestHarness.RocketConfig.fir@239032.4]
  assign io_rawOut_isInf = isInf_Z; // @[DivSqrtRecFN_small.scala 381:22:chipyard.TestHarness.RocketConfig.fir@239033.4]
  assign io_rawOut_isZero = isZero_Z; // @[DivSqrtRecFN_small.scala 382:22:chipyard.TestHarness.RocketConfig.fir@239034.4]
  assign io_rawOut_sign = sign_Z; // @[DivSqrtRecFN_small.scala 383:22:chipyard.TestHarness.RocketConfig.fir@239035.4]
  assign io_rawOut_sExp = sExp_Z; // @[DivSqrtRecFN_small.scala 384:22:chipyard.TestHarness.RocketConfig.fir@239036.4]
  assign io_rawOut_sig = _T_110 | _GEN_25; // @[DivSqrtRecFN_small.scala 385:22:chipyard.TestHarness.RocketConfig.fir@239039.4]
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
  _RAND_0 = {2{`RANDOM}};
  cycleNum = _RAND_0[55:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  sqrtOp_Z = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  majorExc_Z = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  isNaN_Z = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  isInf_Z = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  isZero_Z = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  sign_Z = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  sExp_Z = _RAND_7[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {2{`RANDOM}};
  fractB_Z = _RAND_8[51:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  roundingMode_Z = _RAND_9[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {2{`RANDOM}};
  rem_Z = _RAND_10[54:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  notZeroRem_Z = _RAND_11[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {2{`RANDOM}};
  sigX_Z = _RAND_12[54:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      cycleNum <= 56'h1;
    end else if (_T_52) begin
      cycleNum <= _T_68;
    end
    if (entering) begin
      sqrtOp_Z <= io_sqrtOp;
    end
    if (entering) begin
      if (io_sqrtOp) begin
        majorExc_Z <= _T_8;
      end else begin
        majorExc_Z <= _T_21;
      end
    end
    if (entering) begin
      if (io_sqrtOp) begin
        isNaN_Z <= _T_22;
      end else begin
        isNaN_Z <= _T_24;
      end
    end
    if (entering) begin
      if (io_sqrtOp) begin
        isInf_Z <= io_a_isInf;
      end else begin
        isInf_Z <= _T_25;
      end
    end
    if (entering) begin
      if (io_sqrtOp) begin
        isZero_Z <= io_a_isZero;
      end else begin
        isZero_Z <= _T_26;
      end
    end
    if (entering) begin
      sign_Z <= sign_S;
    end
    if (entering_normalCase) begin
      if (io_sqrtOp) begin
        sExp_Z <= _T_70;
      end else begin
        sExp_Z <= sSatExpQuot_S_div;
      end
    end
    if (_T_73) begin
      fractB_Z <= io_b_sig[51:0];
    end
    if (entering_normalCase) begin
      roundingMode_Z <= io_roundingMode;
    end
    rem_Z <= _GEN_10[54:0];
    if (_T_125) begin
      notZeroRem_Z <= _T_126;
    end
    if (_T_125) begin
      sigX_Z <= _T_141;
    end
  end
endmodule
