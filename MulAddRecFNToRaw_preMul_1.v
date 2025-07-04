module MulAddRecFNToRaw_preMul_1( // @[:chipyard.TestHarness.RocketConfig.fir@236705.2]
  input  [1:0]   io_op, // @[:chipyard.TestHarness.RocketConfig.fir@236706.4]
  input  [64:0]  io_a, // @[:chipyard.TestHarness.RocketConfig.fir@236706.4]
  input  [64:0]  io_b, // @[:chipyard.TestHarness.RocketConfig.fir@236706.4]
  input  [64:0]  io_c, // @[:chipyard.TestHarness.RocketConfig.fir@236706.4]
  output [52:0]  io_mulAddA, // @[:chipyard.TestHarness.RocketConfig.fir@236706.4]
  output [52:0]  io_mulAddB, // @[:chipyard.TestHarness.RocketConfig.fir@236706.4]
  output [105:0] io_mulAddC, // @[:chipyard.TestHarness.RocketConfig.fir@236706.4]
  output         io_toPostMul_isSigNaNAny, // @[:chipyard.TestHarness.RocketConfig.fir@236706.4]
  output         io_toPostMul_isNaNAOrB, // @[:chipyard.TestHarness.RocketConfig.fir@236706.4]
  output         io_toPostMul_isInfA, // @[:chipyard.TestHarness.RocketConfig.fir@236706.4]
  output         io_toPostMul_isZeroA, // @[:chipyard.TestHarness.RocketConfig.fir@236706.4]
  output         io_toPostMul_isInfB, // @[:chipyard.TestHarness.RocketConfig.fir@236706.4]
  output         io_toPostMul_isZeroB, // @[:chipyard.TestHarness.RocketConfig.fir@236706.4]
  output         io_toPostMul_signProd, // @[:chipyard.TestHarness.RocketConfig.fir@236706.4]
  output         io_toPostMul_isNaNC, // @[:chipyard.TestHarness.RocketConfig.fir@236706.4]
  output         io_toPostMul_isInfC, // @[:chipyard.TestHarness.RocketConfig.fir@236706.4]
  output         io_toPostMul_isZeroC, // @[:chipyard.TestHarness.RocketConfig.fir@236706.4]
  output [12:0]  io_toPostMul_sExpSum, // @[:chipyard.TestHarness.RocketConfig.fir@236706.4]
  output         io_toPostMul_doSubMags, // @[:chipyard.TestHarness.RocketConfig.fir@236706.4]
  output         io_toPostMul_CIsDominant, // @[:chipyard.TestHarness.RocketConfig.fir@236706.4]
  output [5:0]   io_toPostMul_CDom_CAlignDist, // @[:chipyard.TestHarness.RocketConfig.fir@236706.4]
  output [54:0]  io_toPostMul_highAlignedSigC, // @[:chipyard.TestHarness.RocketConfig.fir@236706.4]
  output         io_toPostMul_bit0AlignedSigC // @[:chipyard.TestHarness.RocketConfig.fir@236706.4]
);
  wire  rawA_isZero; // @[rawFloatFromRecFN.scala 51:54:chipyard.TestHarness.RocketConfig.fir@236711.4]
  wire  _T_4; // @[rawFloatFromRecFN.scala 52:54:chipyard.TestHarness.RocketConfig.fir@236713.4]
  wire  rawA_isNaN; // @[rawFloatFromRecFN.scala 55:33:chipyard.TestHarness.RocketConfig.fir@236717.4]
  wire  _T_8; // @[rawFloatFromRecFN.scala 56:36:chipyard.TestHarness.RocketConfig.fir@236720.4]
  wire  rawA_sign; // @[rawFloatFromRecFN.scala 58:25:chipyard.TestHarness.RocketConfig.fir@236724.4]
  wire [12:0] rawA_sExp; // @[rawFloatFromRecFN.scala 59:27:chipyard.TestHarness.RocketConfig.fir@236726.4]
  wire  _T_12; // @[rawFloatFromRecFN.scala 60:39:chipyard.TestHarness.RocketConfig.fir@236728.4]
  wire [53:0] rawA_sig; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@236731.4]
  wire  rawB_isZero; // @[rawFloatFromRecFN.scala 51:54:chipyard.TestHarness.RocketConfig.fir@236735.4]
  wire  _T_20; // @[rawFloatFromRecFN.scala 52:54:chipyard.TestHarness.RocketConfig.fir@236737.4]
  wire  rawB_isNaN; // @[rawFloatFromRecFN.scala 55:33:chipyard.TestHarness.RocketConfig.fir@236741.4]
  wire  _T_24; // @[rawFloatFromRecFN.scala 56:36:chipyard.TestHarness.RocketConfig.fir@236744.4]
  wire  rawB_sign; // @[rawFloatFromRecFN.scala 58:25:chipyard.TestHarness.RocketConfig.fir@236748.4]
  wire [12:0] rawB_sExp; // @[rawFloatFromRecFN.scala 59:27:chipyard.TestHarness.RocketConfig.fir@236750.4]
  wire  _T_28; // @[rawFloatFromRecFN.scala 60:39:chipyard.TestHarness.RocketConfig.fir@236752.4]
  wire [53:0] rawB_sig; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@236755.4]
  wire  rawC_isZero; // @[rawFloatFromRecFN.scala 51:54:chipyard.TestHarness.RocketConfig.fir@236759.4]
  wire  _T_36; // @[rawFloatFromRecFN.scala 52:54:chipyard.TestHarness.RocketConfig.fir@236761.4]
  wire  rawC_isNaN; // @[rawFloatFromRecFN.scala 55:33:chipyard.TestHarness.RocketConfig.fir@236765.4]
  wire  _T_40; // @[rawFloatFromRecFN.scala 56:36:chipyard.TestHarness.RocketConfig.fir@236768.4]
  wire  rawC_sign; // @[rawFloatFromRecFN.scala 58:25:chipyard.TestHarness.RocketConfig.fir@236772.4]
  wire [12:0] rawC_sExp; // @[rawFloatFromRecFN.scala 59:27:chipyard.TestHarness.RocketConfig.fir@236774.4]
  wire  _T_44; // @[rawFloatFromRecFN.scala 60:39:chipyard.TestHarness.RocketConfig.fir@236776.4]
  wire [53:0] rawC_sig; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@236779.4]
  wire  _T_48; // @[MulAddRecFN.scala 98:30:chipyard.TestHarness.RocketConfig.fir@236781.4]
  wire  signProd; // @[MulAddRecFN.scala 98:42:chipyard.TestHarness.RocketConfig.fir@236783.4]
  wire [13:0] _T_50; // @[MulAddRecFN.scala 101:19:chipyard.TestHarness.RocketConfig.fir@236784.4]
  wire [13:0] sExpAlignedProd; // @[MulAddRecFN.scala 101:32:chipyard.TestHarness.RocketConfig.fir@236787.4]
  wire  _T_53; // @[MulAddRecFN.scala 103:30:chipyard.TestHarness.RocketConfig.fir@236788.4]
  wire  doSubMags; // @[MulAddRecFN.scala 103:42:chipyard.TestHarness.RocketConfig.fir@236790.4]
  wire [13:0] _GEN_0; // @[MulAddRecFN.scala 107:42:chipyard.TestHarness.RocketConfig.fir@236791.4]
  wire [13:0] sNatCAlignDist; // @[MulAddRecFN.scala 107:42:chipyard.TestHarness.RocketConfig.fir@236793.4]
  wire [12:0] posNatCAlignDist; // @[MulAddRecFN.scala 108:42:chipyard.TestHarness.RocketConfig.fir@236794.4]
  wire  _T_57; // @[MulAddRecFN.scala 109:35:chipyard.TestHarness.RocketConfig.fir@236795.4]
  wire  _T_58; // @[MulAddRecFN.scala 109:69:chipyard.TestHarness.RocketConfig.fir@236796.4]
  wire  isMinCAlign; // @[MulAddRecFN.scala 109:50:chipyard.TestHarness.RocketConfig.fir@236797.4]
  wire  _T_60; // @[MulAddRecFN.scala 111:60:chipyard.TestHarness.RocketConfig.fir@236799.4]
  wire  _T_61; // @[MulAddRecFN.scala 111:39:chipyard.TestHarness.RocketConfig.fir@236800.4]
  wire  CIsDominant; // @[MulAddRecFN.scala 111:23:chipyard.TestHarness.RocketConfig.fir@236801.4]
  wire  _T_62; // @[MulAddRecFN.scala 115:34:chipyard.TestHarness.RocketConfig.fir@236802.4]
  wire [7:0] _T_64; // @[MulAddRecFN.scala 115:16:chipyard.TestHarness.RocketConfig.fir@236804.4]
  wire [7:0] CAlignDist; // @[MulAddRecFN.scala 113:12:chipyard.TestHarness.RocketConfig.fir@236805.4]
  wire [53:0] _T_65; // @[MulAddRecFN.scala 121:28:chipyard.TestHarness.RocketConfig.fir@236806.4]
  wire [53:0] _T_66; // @[MulAddRecFN.scala 121:16:chipyard.TestHarness.RocketConfig.fir@236807.4]
  wire [110:0] _T_68; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@236809.4]
  wire [164:0] _T_70; // @[MulAddRecFN.scala 123:11:chipyard.TestHarness.RocketConfig.fir@236811.4]
  wire [164:0] mainAlignedSigC; // @[MulAddRecFN.scala 123:17:chipyard.TestHarness.RocketConfig.fir@236812.4]
  wire  _T_74; // @[primitives.scala 121:54:chipyard.TestHarness.RocketConfig.fir@236817.4]
  wire  _T_76; // @[primitives.scala 121:54:chipyard.TestHarness.RocketConfig.fir@236820.4]
  wire  _T_78; // @[primitives.scala 121:54:chipyard.TestHarness.RocketConfig.fir@236823.4]
  wire  _T_80; // @[primitives.scala 121:54:chipyard.TestHarness.RocketConfig.fir@236826.4]
  wire  _T_82; // @[primitives.scala 121:54:chipyard.TestHarness.RocketConfig.fir@236829.4]
  wire  _T_84; // @[primitives.scala 121:54:chipyard.TestHarness.RocketConfig.fir@236832.4]
  wire  _T_86; // @[primitives.scala 121:54:chipyard.TestHarness.RocketConfig.fir@236835.4]
  wire  _T_88; // @[primitives.scala 121:54:chipyard.TestHarness.RocketConfig.fir@236838.4]
  wire  _T_90; // @[primitives.scala 121:54:chipyard.TestHarness.RocketConfig.fir@236841.4]
  wire  _T_92; // @[primitives.scala 121:54:chipyard.TestHarness.RocketConfig.fir@236844.4]
  wire  _T_94; // @[primitives.scala 121:54:chipyard.TestHarness.RocketConfig.fir@236847.4]
  wire  _T_96; // @[primitives.scala 121:54:chipyard.TestHarness.RocketConfig.fir@236850.4]
  wire  _T_98; // @[primitives.scala 121:54:chipyard.TestHarness.RocketConfig.fir@236853.4]
  wire  _T_100; // @[primitives.scala 124:57:chipyard.TestHarness.RocketConfig.fir@236856.4]
  wire [6:0] _T_106; // @[primitives.scala 125:20:chipyard.TestHarness.RocketConfig.fir@236863.4]
  wire [13:0] _T_113; // @[primitives.scala 125:20:chipyard.TestHarness.RocketConfig.fir@236870.4]
  wire [64:0] _T_115; // @[primitives.scala 77:58:chipyard.TestHarness.RocketConfig.fir@236872.4]
  wire [7:0] _T_121; // @[Bitwise.scala 103:31:chipyard.TestHarness.RocketConfig.fir@236878.4]
  wire [7:0] _T_123; // @[Bitwise.scala 103:65:chipyard.TestHarness.RocketConfig.fir@236880.4]
  wire [7:0] _T_125; // @[Bitwise.scala 103:75:chipyard.TestHarness.RocketConfig.fir@236882.4]
  wire [7:0] _T_126; // @[Bitwise.scala 103:39:chipyard.TestHarness.RocketConfig.fir@236883.4]
  wire [7:0] _GEN_1; // @[Bitwise.scala 103:31:chipyard.TestHarness.RocketConfig.fir@236888.4]
  wire [7:0] _T_131; // @[Bitwise.scala 103:31:chipyard.TestHarness.RocketConfig.fir@236888.4]
  wire [7:0] _T_133; // @[Bitwise.scala 103:65:chipyard.TestHarness.RocketConfig.fir@236890.4]
  wire [7:0] _T_135; // @[Bitwise.scala 103:75:chipyard.TestHarness.RocketConfig.fir@236892.4]
  wire [7:0] _T_136; // @[Bitwise.scala 103:39:chipyard.TestHarness.RocketConfig.fir@236893.4]
  wire [7:0] _GEN_2; // @[Bitwise.scala 103:31:chipyard.TestHarness.RocketConfig.fir@236898.4]
  wire [7:0] _T_141; // @[Bitwise.scala 103:31:chipyard.TestHarness.RocketConfig.fir@236898.4]
  wire [7:0] _T_143; // @[Bitwise.scala 103:65:chipyard.TestHarness.RocketConfig.fir@236900.4]
  wire [7:0] _T_145; // @[Bitwise.scala 103:75:chipyard.TestHarness.RocketConfig.fir@236902.4]
  wire [7:0] _T_146; // @[Bitwise.scala 103:39:chipyard.TestHarness.RocketConfig.fir@236903.4]
  wire [12:0] _T_160; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@236917.4]
  wire [13:0] _GEN_3; // @[MulAddRecFN.scala 125:68:chipyard.TestHarness.RocketConfig.fir@236918.4]
  wire [13:0] _T_161; // @[MulAddRecFN.scala 125:68:chipyard.TestHarness.RocketConfig.fir@236918.4]
  wire  reduced4CExtra; // @[MulAddRecFN.scala 133:11:chipyard.TestHarness.RocketConfig.fir@236919.4]
  wire  _T_164; // @[MulAddRecFN.scala 137:39:chipyard.TestHarness.RocketConfig.fir@236922.4]
  wire  _T_165; // @[MulAddRecFN.scala 137:47:chipyard.TestHarness.RocketConfig.fir@236923.4]
  wire  _T_166; // @[MulAddRecFN.scala 137:44:chipyard.TestHarness.RocketConfig.fir@236924.4]
  wire  _T_168; // @[MulAddRecFN.scala 138:39:chipyard.TestHarness.RocketConfig.fir@236926.4]
  wire  _T_169; // @[MulAddRecFN.scala 138:44:chipyard.TestHarness.RocketConfig.fir@236927.4]
  wire  _T_170; // @[MulAddRecFN.scala 136:16:chipyard.TestHarness.RocketConfig.fir@236928.4]
  wire [161:0] _T_171; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@236929.4]
  wire [162:0] alignedSigC; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@236930.4]
  wire  _T_174; // @[common.scala 81:49:chipyard.TestHarness.RocketConfig.fir@236936.4]
  wire  _T_175; // @[common.scala 81:46:chipyard.TestHarness.RocketConfig.fir@236937.4]
  wire  _T_177; // @[common.scala 81:49:chipyard.TestHarness.RocketConfig.fir@236939.4]
  wire  _T_178; // @[common.scala 81:46:chipyard.TestHarness.RocketConfig.fir@236940.4]
  wire  _T_179; // @[MulAddRecFN.scala 149:32:chipyard.TestHarness.RocketConfig.fir@236941.4]
  wire  _T_181; // @[common.scala 81:49:chipyard.TestHarness.RocketConfig.fir@236943.4]
  wire  _T_182; // @[common.scala 81:46:chipyard.TestHarness.RocketConfig.fir@236944.4]
  wire [13:0] _T_187; // @[MulAddRecFN.scala 161:53:chipyard.TestHarness.RocketConfig.fir@236959.4]
  wire [13:0] _T_188; // @[MulAddRecFN.scala 161:12:chipyard.TestHarness.RocketConfig.fir@236960.4]
  assign rawA_isZero = io_a[63:61] == 3'h0; // @[rawFloatFromRecFN.scala 51:54:chipyard.TestHarness.RocketConfig.fir@236711.4]
  assign _T_4 = io_a[63:62] == 2'h3; // @[rawFloatFromRecFN.scala 52:54:chipyard.TestHarness.RocketConfig.fir@236713.4]
  assign rawA_isNaN = _T_4 & io_a[61]; // @[rawFloatFromRecFN.scala 55:33:chipyard.TestHarness.RocketConfig.fir@236717.4]
  assign _T_8 = ~io_a[61]; // @[rawFloatFromRecFN.scala 56:36:chipyard.TestHarness.RocketConfig.fir@236720.4]
  assign rawA_sign = io_a[64]; // @[rawFloatFromRecFN.scala 58:25:chipyard.TestHarness.RocketConfig.fir@236724.4]
  assign rawA_sExp = {1'b0,$signed(io_a[63:52])}; // @[rawFloatFromRecFN.scala 59:27:chipyard.TestHarness.RocketConfig.fir@236726.4]
  assign _T_12 = ~rawA_isZero; // @[rawFloatFromRecFN.scala 60:39:chipyard.TestHarness.RocketConfig.fir@236728.4]
  assign rawA_sig = {1'h0,_T_12,io_a[51:0]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@236731.4]
  assign rawB_isZero = io_b[63:61] == 3'h0; // @[rawFloatFromRecFN.scala 51:54:chipyard.TestHarness.RocketConfig.fir@236735.4]
  assign _T_20 = io_b[63:62] == 2'h3; // @[rawFloatFromRecFN.scala 52:54:chipyard.TestHarness.RocketConfig.fir@236737.4]
  assign rawB_isNaN = _T_20 & io_b[61]; // @[rawFloatFromRecFN.scala 55:33:chipyard.TestHarness.RocketConfig.fir@236741.4]
  assign _T_24 = ~io_b[61]; // @[rawFloatFromRecFN.scala 56:36:chipyard.TestHarness.RocketConfig.fir@236744.4]
  assign rawB_sign = io_b[64]; // @[rawFloatFromRecFN.scala 58:25:chipyard.TestHarness.RocketConfig.fir@236748.4]
  assign rawB_sExp = {1'b0,$signed(io_b[63:52])}; // @[rawFloatFromRecFN.scala 59:27:chipyard.TestHarness.RocketConfig.fir@236750.4]
  assign _T_28 = ~rawB_isZero; // @[rawFloatFromRecFN.scala 60:39:chipyard.TestHarness.RocketConfig.fir@236752.4]
  assign rawB_sig = {1'h0,_T_28,io_b[51:0]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@236755.4]
  assign rawC_isZero = io_c[63:61] == 3'h0; // @[rawFloatFromRecFN.scala 51:54:chipyard.TestHarness.RocketConfig.fir@236759.4]
  assign _T_36 = io_c[63:62] == 2'h3; // @[rawFloatFromRecFN.scala 52:54:chipyard.TestHarness.RocketConfig.fir@236761.4]
  assign rawC_isNaN = _T_36 & io_c[61]; // @[rawFloatFromRecFN.scala 55:33:chipyard.TestHarness.RocketConfig.fir@236765.4]
  assign _T_40 = ~io_c[61]; // @[rawFloatFromRecFN.scala 56:36:chipyard.TestHarness.RocketConfig.fir@236768.4]
  assign rawC_sign = io_c[64]; // @[rawFloatFromRecFN.scala 58:25:chipyard.TestHarness.RocketConfig.fir@236772.4]
  assign rawC_sExp = {1'b0,$signed(io_c[63:52])}; // @[rawFloatFromRecFN.scala 59:27:chipyard.TestHarness.RocketConfig.fir@236774.4]
  assign _T_44 = ~rawC_isZero; // @[rawFloatFromRecFN.scala 60:39:chipyard.TestHarness.RocketConfig.fir@236776.4]
  assign rawC_sig = {1'h0,_T_44,io_c[51:0]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@236779.4]
  assign _T_48 = rawA_sign ^ rawB_sign; // @[MulAddRecFN.scala 98:30:chipyard.TestHarness.RocketConfig.fir@236781.4]
  assign signProd = _T_48 ^ io_op[1]; // @[MulAddRecFN.scala 98:42:chipyard.TestHarness.RocketConfig.fir@236783.4]
  assign _T_50 = $signed(rawA_sExp) + $signed(rawB_sExp); // @[MulAddRecFN.scala 101:19:chipyard.TestHarness.RocketConfig.fir@236784.4]
  assign sExpAlignedProd = $signed(_T_50) - 14'sh7c8; // @[MulAddRecFN.scala 101:32:chipyard.TestHarness.RocketConfig.fir@236787.4]
  assign _T_53 = signProd ^ rawC_sign; // @[MulAddRecFN.scala 103:30:chipyard.TestHarness.RocketConfig.fir@236788.4]
  assign doSubMags = _T_53 ^ io_op[0]; // @[MulAddRecFN.scala 103:42:chipyard.TestHarness.RocketConfig.fir@236790.4]
  assign _GEN_0 = {{1{rawC_sExp[12]}},rawC_sExp}; // @[MulAddRecFN.scala 107:42:chipyard.TestHarness.RocketConfig.fir@236791.4]
  assign sNatCAlignDist = $signed(sExpAlignedProd) - $signed(_GEN_0); // @[MulAddRecFN.scala 107:42:chipyard.TestHarness.RocketConfig.fir@236793.4]
  assign posNatCAlignDist = sNatCAlignDist[12:0]; // @[MulAddRecFN.scala 108:42:chipyard.TestHarness.RocketConfig.fir@236794.4]
  assign _T_57 = rawA_isZero | rawB_isZero; // @[MulAddRecFN.scala 109:35:chipyard.TestHarness.RocketConfig.fir@236795.4]
  assign _T_58 = $signed(sNatCAlignDist) < 14'sh0; // @[MulAddRecFN.scala 109:69:chipyard.TestHarness.RocketConfig.fir@236796.4]
  assign isMinCAlign = _T_57 | _T_58; // @[MulAddRecFN.scala 109:50:chipyard.TestHarness.RocketConfig.fir@236797.4]
  assign _T_60 = posNatCAlignDist <= 13'h35; // @[MulAddRecFN.scala 111:60:chipyard.TestHarness.RocketConfig.fir@236799.4]
  assign _T_61 = isMinCAlign | _T_60; // @[MulAddRecFN.scala 111:39:chipyard.TestHarness.RocketConfig.fir@236800.4]
  assign CIsDominant = _T_44 & _T_61; // @[MulAddRecFN.scala 111:23:chipyard.TestHarness.RocketConfig.fir@236801.4]
  assign _T_62 = posNatCAlignDist < 13'ha1; // @[MulAddRecFN.scala 115:34:chipyard.TestHarness.RocketConfig.fir@236802.4]
  assign _T_64 = _T_62 ? posNatCAlignDist[7:0] : 8'ha1; // @[MulAddRecFN.scala 115:16:chipyard.TestHarness.RocketConfig.fir@236804.4]
  assign CAlignDist = isMinCAlign ? 8'h0 : _T_64; // @[MulAddRecFN.scala 113:12:chipyard.TestHarness.RocketConfig.fir@236805.4]
  assign _T_65 = ~rawC_sig; // @[MulAddRecFN.scala 121:28:chipyard.TestHarness.RocketConfig.fir@236806.4]
  assign _T_66 = doSubMags ? _T_65 : rawC_sig; // @[MulAddRecFN.scala 121:16:chipyard.TestHarness.RocketConfig.fir@236807.4]
  assign _T_68 = doSubMags ? 111'h7fffffffffffffffffffffffffff : 111'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@236809.4]
  assign _T_70 = {_T_66,_T_68}; // @[MulAddRecFN.scala 123:11:chipyard.TestHarness.RocketConfig.fir@236811.4]
  assign mainAlignedSigC = $signed(_T_70) >>> CAlignDist; // @[MulAddRecFN.scala 123:17:chipyard.TestHarness.RocketConfig.fir@236812.4]
  assign _T_74 = |rawC_sig[3:0]; // @[primitives.scala 121:54:chipyard.TestHarness.RocketConfig.fir@236817.4]
  assign _T_76 = |rawC_sig[7:4]; // @[primitives.scala 121:54:chipyard.TestHarness.RocketConfig.fir@236820.4]
  assign _T_78 = |rawC_sig[11:8]; // @[primitives.scala 121:54:chipyard.TestHarness.RocketConfig.fir@236823.4]
  assign _T_80 = |rawC_sig[15:12]; // @[primitives.scala 121:54:chipyard.TestHarness.RocketConfig.fir@236826.4]
  assign _T_82 = |rawC_sig[19:16]; // @[primitives.scala 121:54:chipyard.TestHarness.RocketConfig.fir@236829.4]
  assign _T_84 = |rawC_sig[23:20]; // @[primitives.scala 121:54:chipyard.TestHarness.RocketConfig.fir@236832.4]
  assign _T_86 = |rawC_sig[27:24]; // @[primitives.scala 121:54:chipyard.TestHarness.RocketConfig.fir@236835.4]
  assign _T_88 = |rawC_sig[31:28]; // @[primitives.scala 121:54:chipyard.TestHarness.RocketConfig.fir@236838.4]
  assign _T_90 = |rawC_sig[35:32]; // @[primitives.scala 121:54:chipyard.TestHarness.RocketConfig.fir@236841.4]
  assign _T_92 = |rawC_sig[39:36]; // @[primitives.scala 121:54:chipyard.TestHarness.RocketConfig.fir@236844.4]
  assign _T_94 = |rawC_sig[43:40]; // @[primitives.scala 121:54:chipyard.TestHarness.RocketConfig.fir@236847.4]
  assign _T_96 = |rawC_sig[47:44]; // @[primitives.scala 121:54:chipyard.TestHarness.RocketConfig.fir@236850.4]
  assign _T_98 = |rawC_sig[51:48]; // @[primitives.scala 121:54:chipyard.TestHarness.RocketConfig.fir@236853.4]
  assign _T_100 = |rawC_sig[53:52]; // @[primitives.scala 124:57:chipyard.TestHarness.RocketConfig.fir@236856.4]
  assign _T_106 = {_T_86,_T_84,_T_82,_T_80,_T_78,_T_76,_T_74}; // @[primitives.scala 125:20:chipyard.TestHarness.RocketConfig.fir@236863.4]
  assign _T_113 = {_T_100,_T_98,_T_96,_T_94,_T_92,_T_90,_T_88,_T_106}; // @[primitives.scala 125:20:chipyard.TestHarness.RocketConfig.fir@236870.4]
  assign _T_115 = -65'sh10000000000000000 >>> CAlignDist[7:2]; // @[primitives.scala 77:58:chipyard.TestHarness.RocketConfig.fir@236872.4]
  assign _T_121 = {{4'd0}, _T_115[31:28]}; // @[Bitwise.scala 103:31:chipyard.TestHarness.RocketConfig.fir@236878.4]
  assign _T_123 = {_T_115[27:24], 4'h0}; // @[Bitwise.scala 103:65:chipyard.TestHarness.RocketConfig.fir@236880.4]
  assign _T_125 = _T_123 & 8'hf0; // @[Bitwise.scala 103:75:chipyard.TestHarness.RocketConfig.fir@236882.4]
  assign _T_126 = _T_121 | _T_125; // @[Bitwise.scala 103:39:chipyard.TestHarness.RocketConfig.fir@236883.4]
  assign _GEN_1 = {{2'd0}, _T_126[7:2]}; // @[Bitwise.scala 103:31:chipyard.TestHarness.RocketConfig.fir@236888.4]
  assign _T_131 = _GEN_1 & 8'h33; // @[Bitwise.scala 103:31:chipyard.TestHarness.RocketConfig.fir@236888.4]
  assign _T_133 = {_T_126[5:0], 2'h0}; // @[Bitwise.scala 103:65:chipyard.TestHarness.RocketConfig.fir@236890.4]
  assign _T_135 = _T_133 & 8'hcc; // @[Bitwise.scala 103:75:chipyard.TestHarness.RocketConfig.fir@236892.4]
  assign _T_136 = _T_131 | _T_135; // @[Bitwise.scala 103:39:chipyard.TestHarness.RocketConfig.fir@236893.4]
  assign _GEN_2 = {{1'd0}, _T_136[7:1]}; // @[Bitwise.scala 103:31:chipyard.TestHarness.RocketConfig.fir@236898.4]
  assign _T_141 = _GEN_2 & 8'h55; // @[Bitwise.scala 103:31:chipyard.TestHarness.RocketConfig.fir@236898.4]
  assign _T_143 = {_T_136[6:0], 1'h0}; // @[Bitwise.scala 103:65:chipyard.TestHarness.RocketConfig.fir@236900.4]
  assign _T_145 = _T_143 & 8'haa; // @[Bitwise.scala 103:75:chipyard.TestHarness.RocketConfig.fir@236902.4]
  assign _T_146 = _T_141 | _T_145; // @[Bitwise.scala 103:39:chipyard.TestHarness.RocketConfig.fir@236903.4]
  assign _T_160 = {_T_146,_T_115[32],_T_115[33],_T_115[34],_T_115[35],_T_115[36]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@236917.4]
  assign _GEN_3 = {{1'd0}, _T_160}; // @[MulAddRecFN.scala 125:68:chipyard.TestHarness.RocketConfig.fir@236918.4]
  assign _T_161 = _T_113 & _GEN_3; // @[MulAddRecFN.scala 125:68:chipyard.TestHarness.RocketConfig.fir@236918.4]
  assign reduced4CExtra = |_T_161; // @[MulAddRecFN.scala 133:11:chipyard.TestHarness.RocketConfig.fir@236919.4]
  assign _T_164 = &mainAlignedSigC[2:0]; // @[MulAddRecFN.scala 137:39:chipyard.TestHarness.RocketConfig.fir@236922.4]
  assign _T_165 = ~reduced4CExtra; // @[MulAddRecFN.scala 137:47:chipyard.TestHarness.RocketConfig.fir@236923.4]
  assign _T_166 = _T_164 & _T_165; // @[MulAddRecFN.scala 137:44:chipyard.TestHarness.RocketConfig.fir@236924.4]
  assign _T_168 = |mainAlignedSigC[2:0]; // @[MulAddRecFN.scala 138:39:chipyard.TestHarness.RocketConfig.fir@236926.4]
  assign _T_169 = _T_168 | reduced4CExtra; // @[MulAddRecFN.scala 138:44:chipyard.TestHarness.RocketConfig.fir@236927.4]
  assign _T_170 = doSubMags ? _T_166 : _T_169; // @[MulAddRecFN.scala 136:16:chipyard.TestHarness.RocketConfig.fir@236928.4]
  assign _T_171 = mainAlignedSigC[164:3]; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@236929.4]
  assign alignedSigC = {_T_171,_T_170}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@236930.4]
  assign _T_174 = ~rawA_sig[51]; // @[common.scala 81:49:chipyard.TestHarness.RocketConfig.fir@236936.4]
  assign _T_175 = rawA_isNaN & _T_174; // @[common.scala 81:46:chipyard.TestHarness.RocketConfig.fir@236937.4]
  assign _T_177 = ~rawB_sig[51]; // @[common.scala 81:49:chipyard.TestHarness.RocketConfig.fir@236939.4]
  assign _T_178 = rawB_isNaN & _T_177; // @[common.scala 81:46:chipyard.TestHarness.RocketConfig.fir@236940.4]
  assign _T_179 = _T_175 | _T_178; // @[MulAddRecFN.scala 149:32:chipyard.TestHarness.RocketConfig.fir@236941.4]
  assign _T_181 = ~rawC_sig[51]; // @[common.scala 81:49:chipyard.TestHarness.RocketConfig.fir@236943.4]
  assign _T_182 = rawC_isNaN & _T_181; // @[common.scala 81:46:chipyard.TestHarness.RocketConfig.fir@236944.4]
  assign _T_187 = $signed(sExpAlignedProd) - 14'sh35; // @[MulAddRecFN.scala 161:53:chipyard.TestHarness.RocketConfig.fir@236959.4]
  assign _T_188 = CIsDominant ? $signed({{1{rawC_sExp[12]}},rawC_sExp}) : $signed(_T_187); // @[MulAddRecFN.scala 161:12:chipyard.TestHarness.RocketConfig.fir@236960.4]
  assign io_mulAddA = rawA_sig[52:0]; // @[MulAddRecFN.scala 144:16:chipyard.TestHarness.RocketConfig.fir@236931.4]
  assign io_mulAddB = rawB_sig[52:0]; // @[MulAddRecFN.scala 145:16:chipyard.TestHarness.RocketConfig.fir@236932.4]
  assign io_mulAddC = alignedSigC[106:1]; // @[MulAddRecFN.scala 146:16:chipyard.TestHarness.RocketConfig.fir@236934.4]
  assign io_toPostMul_isSigNaNAny = _T_179 | _T_182; // @[MulAddRecFN.scala 148:30:chipyard.TestHarness.RocketConfig.fir@236946.4]
  assign io_toPostMul_isNaNAOrB = rawA_isNaN | rawB_isNaN; // @[MulAddRecFN.scala 151:28:chipyard.TestHarness.RocketConfig.fir@236948.4]
  assign io_toPostMul_isInfA = _T_4 & _T_8; // @[MulAddRecFN.scala 152:28:chipyard.TestHarness.RocketConfig.fir@236949.4]
  assign io_toPostMul_isZeroA = io_a[63:61] == 3'h0; // @[MulAddRecFN.scala 153:28:chipyard.TestHarness.RocketConfig.fir@236950.4]
  assign io_toPostMul_isInfB = _T_20 & _T_24; // @[MulAddRecFN.scala 154:28:chipyard.TestHarness.RocketConfig.fir@236951.4]
  assign io_toPostMul_isZeroB = io_b[63:61] == 3'h0; // @[MulAddRecFN.scala 155:28:chipyard.TestHarness.RocketConfig.fir@236952.4]
  assign io_toPostMul_signProd = _T_48 ^ io_op[1]; // @[MulAddRecFN.scala 156:28:chipyard.TestHarness.RocketConfig.fir@236953.4]
  assign io_toPostMul_isNaNC = _T_36 & io_c[61]; // @[MulAddRecFN.scala 157:28:chipyard.TestHarness.RocketConfig.fir@236954.4]
  assign io_toPostMul_isInfC = _T_36 & _T_40; // @[MulAddRecFN.scala 158:28:chipyard.TestHarness.RocketConfig.fir@236955.4]
  assign io_toPostMul_isZeroC = io_c[63:61] == 3'h0; // @[MulAddRecFN.scala 159:28:chipyard.TestHarness.RocketConfig.fir@236956.4]
  assign io_toPostMul_sExpSum = _T_188[12:0]; // @[MulAddRecFN.scala 160:28:chipyard.TestHarness.RocketConfig.fir@236961.4]
  assign io_toPostMul_doSubMags = _T_53 ^ io_op[0]; // @[MulAddRecFN.scala 162:28:chipyard.TestHarness.RocketConfig.fir@236962.4]
  assign io_toPostMul_CIsDominant = _T_44 & _T_61; // @[MulAddRecFN.scala 163:30:chipyard.TestHarness.RocketConfig.fir@236963.4]
  assign io_toPostMul_CDom_CAlignDist = CAlignDist[5:0]; // @[MulAddRecFN.scala 164:34:chipyard.TestHarness.RocketConfig.fir@236965.4]
  assign io_toPostMul_highAlignedSigC = alignedSigC[161:107]; // @[MulAddRecFN.scala 165:34:chipyard.TestHarness.RocketConfig.fir@236967.4]
  assign io_toPostMul_bit0AlignedSigC = alignedSigC[0]; // @[MulAddRecFN.scala 167:34:chipyard.TestHarness.RocketConfig.fir@236969.4]
endmodule
