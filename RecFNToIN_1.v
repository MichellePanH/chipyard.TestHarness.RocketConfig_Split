module RecFNToIN_1( // @[:chipyard.TestHarness.RocketConfig.fir@234772.2]
  input  [64:0] io_in, // @[:chipyard.TestHarness.RocketConfig.fir@234773.4]
  input  [2:0]  io_roundingMode, // @[:chipyard.TestHarness.RocketConfig.fir@234773.4]
  input         io_signedOut, // @[:chipyard.TestHarness.RocketConfig.fir@234773.4]
  output [2:0]  io_intExceptionFlags // @[:chipyard.TestHarness.RocketConfig.fir@234773.4]
);
  wire  rawIn_isZero; // @[rawFloatFromRecFN.scala 51:54:chipyard.TestHarness.RocketConfig.fir@234778.4]
  wire  _T_4; // @[rawFloatFromRecFN.scala 52:54:chipyard.TestHarness.RocketConfig.fir@234780.4]
  wire  rawIn_isNaN; // @[rawFloatFromRecFN.scala 55:33:chipyard.TestHarness.RocketConfig.fir@234784.4]
  wire  _T_8; // @[rawFloatFromRecFN.scala 56:36:chipyard.TestHarness.RocketConfig.fir@234787.4]
  wire  rawIn_isInf; // @[rawFloatFromRecFN.scala 56:33:chipyard.TestHarness.RocketConfig.fir@234788.4]
  wire  rawIn_sign; // @[rawFloatFromRecFN.scala 58:25:chipyard.TestHarness.RocketConfig.fir@234791.4]
  wire [12:0] rawIn_sExp; // @[rawFloatFromRecFN.scala 59:27:chipyard.TestHarness.RocketConfig.fir@234793.4]
  wire  _T_12; // @[rawFloatFromRecFN.scala 60:39:chipyard.TestHarness.RocketConfig.fir@234795.4]
  wire [53:0] rawIn_sig; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@234798.4]
  wire  magGeOne; // @[RecFNToIN.scala 58:30:chipyard.TestHarness.RocketConfig.fir@234800.4]
  wire [10:0] posExp; // @[RecFNToIN.scala 59:28:chipyard.TestHarness.RocketConfig.fir@234801.4]
  wire  _T_16; // @[RecFNToIN.scala 60:27:chipyard.TestHarness.RocketConfig.fir@234802.4]
  wire  _T_17; // @[RecFNToIN.scala 60:47:chipyard.TestHarness.RocketConfig.fir@234803.4]
  wire  magJustBelowOne; // @[RecFNToIN.scala 60:37:chipyard.TestHarness.RocketConfig.fir@234804.4]
  wire  roundingMode_near_even; // @[RecFNToIN.scala 64:53:chipyard.TestHarness.RocketConfig.fir@234805.4]
  wire  roundingMode_min; // @[RecFNToIN.scala 66:53:chipyard.TestHarness.RocketConfig.fir@234807.4]
  wire  roundingMode_max; // @[RecFNToIN.scala 67:53:chipyard.TestHarness.RocketConfig.fir@234808.4]
  wire  roundingMode_near_maxMag; // @[RecFNToIN.scala 68:53:chipyard.TestHarness.RocketConfig.fir@234809.4]
  wire  roundingMode_odd; // @[RecFNToIN.scala 69:53:chipyard.TestHarness.RocketConfig.fir@234810.4]
  wire [52:0] _T_19; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@234812.4]
  wire [4:0] _T_21; // @[RecFNToIN.scala 81:16:chipyard.TestHarness.RocketConfig.fir@234814.4]
  wire [83:0] _GEN_0; // @[RecFNToIN.scala 80:50:chipyard.TestHarness.RocketConfig.fir@234815.4]
  wire [83:0] shiftedSig; // @[RecFNToIN.scala 80:50:chipyard.TestHarness.RocketConfig.fir@234815.4]
  wire  _T_24; // @[RecFNToIN.scala 86:69:chipyard.TestHarness.RocketConfig.fir@234818.4]
  wire [33:0] alignedSig; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@234819.4]
  wire [31:0] unroundedInt; // @[RecFNToIN.scala 87:54:chipyard.TestHarness.RocketConfig.fir@234820.4]
  wire  _T_27; // @[RecFNToIN.scala 89:57:chipyard.TestHarness.RocketConfig.fir@234823.4]
  wire  common_inexact; // @[RecFNToIN.scala 89:29:chipyard.TestHarness.RocketConfig.fir@234825.4]
  wire  _T_30; // @[RecFNToIN.scala 91:46:chipyard.TestHarness.RocketConfig.fir@234827.4]
  wire  _T_32; // @[RecFNToIN.scala 91:71:chipyard.TestHarness.RocketConfig.fir@234829.4]
  wire  _T_33; // @[RecFNToIN.scala 91:51:chipyard.TestHarness.RocketConfig.fir@234830.4]
  wire  _T_34; // @[RecFNToIN.scala 91:25:chipyard.TestHarness.RocketConfig.fir@234831.4]
  wire  _T_37; // @[RecFNToIN.scala 92:26:chipyard.TestHarness.RocketConfig.fir@234834.4]
  wire  roundIncr_near_even; // @[RecFNToIN.scala 91:78:chipyard.TestHarness.RocketConfig.fir@234835.4]
  wire  _T_39; // @[RecFNToIN.scala 93:43:chipyard.TestHarness.RocketConfig.fir@234837.4]
  wire  roundIncr_near_maxMag; // @[RecFNToIN.scala 93:61:chipyard.TestHarness.RocketConfig.fir@234838.4]
  wire  _T_40; // @[RecFNToIN.scala 95:35:chipyard.TestHarness.RocketConfig.fir@234839.4]
  wire  _T_41; // @[RecFNToIN.scala 96:35:chipyard.TestHarness.RocketConfig.fir@234840.4]
  wire  _T_42; // @[RecFNToIN.scala 95:61:chipyard.TestHarness.RocketConfig.fir@234841.4]
  wire  _T_43; // @[RecFNToIN.scala 97:28:chipyard.TestHarness.RocketConfig.fir@234842.4]
  wire  _T_44; // @[RecFNToIN.scala 98:26:chipyard.TestHarness.RocketConfig.fir@234843.4]
  wire  _T_45; // @[RecFNToIN.scala 97:49:chipyard.TestHarness.RocketConfig.fir@234844.4]
  wire  _T_46; // @[RecFNToIN.scala 96:61:chipyard.TestHarness.RocketConfig.fir@234845.4]
  wire  _T_47; // @[RecFNToIN.scala 99:31:chipyard.TestHarness.RocketConfig.fir@234846.4]
  wire  _T_48; // @[RecFNToIN.scala 99:43:chipyard.TestHarness.RocketConfig.fir@234847.4]
  wire  _T_49; // @[RecFNToIN.scala 99:27:chipyard.TestHarness.RocketConfig.fir@234848.4]
  wire  roundIncr; // @[RecFNToIN.scala 98:46:chipyard.TestHarness.RocketConfig.fir@234849.4]
  wire  magGeOne_atOverflowEdge; // @[RecFNToIN.scala 107:43:chipyard.TestHarness.RocketConfig.fir@234858.4]
  wire  _T_57; // @[RecFNToIN.scala 110:56:chipyard.TestHarness.RocketConfig.fir@234860.4]
  wire  roundCarryBut2; // @[RecFNToIN.scala 110:61:chipyard.TestHarness.RocketConfig.fir@234861.4]
  wire  _T_58; // @[RecFNToIN.scala 113:21:chipyard.TestHarness.RocketConfig.fir@234862.4]
  wire  _T_60; // @[RecFNToIN.scala 117:60:chipyard.TestHarness.RocketConfig.fir@234864.4]
  wire  _T_61; // @[RecFNToIN.scala 117:64:chipyard.TestHarness.RocketConfig.fir@234865.4]
  wire  _T_62; // @[RecFNToIN.scala 116:49:chipyard.TestHarness.RocketConfig.fir@234866.4]
  wire  _T_63; // @[RecFNToIN.scala 119:38:chipyard.TestHarness.RocketConfig.fir@234867.4]
  wire  _T_64; // @[RecFNToIN.scala 119:62:chipyard.TestHarness.RocketConfig.fir@234868.4]
  wire  _T_65; // @[RecFNToIN.scala 118:49:chipyard.TestHarness.RocketConfig.fir@234869.4]
  wire  _T_66; // @[RecFNToIN.scala 115:24:chipyard.TestHarness.RocketConfig.fir@234870.4]
  wire  _T_68; // @[RecFNToIN.scala 122:50:chipyard.TestHarness.RocketConfig.fir@234872.4]
  wire  _T_69; // @[RecFNToIN.scala 123:57:chipyard.TestHarness.RocketConfig.fir@234873.4]
  wire  _T_70; // @[RecFNToIN.scala 121:32:chipyard.TestHarness.RocketConfig.fir@234874.4]
  wire  _T_71; // @[RecFNToIN.scala 114:20:chipyard.TestHarness.RocketConfig.fir@234875.4]
  wire  _T_72; // @[RecFNToIN.scala 113:40:chipyard.TestHarness.RocketConfig.fir@234876.4]
  wire  _T_73; // @[RecFNToIN.scala 125:13:chipyard.TestHarness.RocketConfig.fir@234877.4]
  wire  _T_74; // @[RecFNToIN.scala 125:27:chipyard.TestHarness.RocketConfig.fir@234878.4]
  wire  _T_75; // @[RecFNToIN.scala 125:41:chipyard.TestHarness.RocketConfig.fir@234879.4]
  wire  common_overflow; // @[RecFNToIN.scala 112:12:chipyard.TestHarness.RocketConfig.fir@234880.4]
  wire  invalidExc; // @[RecFNToIN.scala 130:34:chipyard.TestHarness.RocketConfig.fir@234881.4]
  wire  _T_76; // @[RecFNToIN.scala 131:20:chipyard.TestHarness.RocketConfig.fir@234882.4]
  wire  overflow; // @[RecFNToIN.scala 131:32:chipyard.TestHarness.RocketConfig.fir@234883.4]
  wire  _T_78; // @[RecFNToIN.scala 132:35:chipyard.TestHarness.RocketConfig.fir@234885.4]
  wire  _T_79; // @[RecFNToIN.scala 132:32:chipyard.TestHarness.RocketConfig.fir@234886.4]
  wire  inexact; // @[RecFNToIN.scala 132:52:chipyard.TestHarness.RocketConfig.fir@234887.4]
  wire [1:0] _T_87; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@234898.4]
  assign rawIn_isZero = io_in[63:61] == 3'h0; // @[rawFloatFromRecFN.scala 51:54:chipyard.TestHarness.RocketConfig.fir@234778.4]
  assign _T_4 = io_in[63:62] == 2'h3; // @[rawFloatFromRecFN.scala 52:54:chipyard.TestHarness.RocketConfig.fir@234780.4]
  assign rawIn_isNaN = _T_4 & io_in[61]; // @[rawFloatFromRecFN.scala 55:33:chipyard.TestHarness.RocketConfig.fir@234784.4]
  assign _T_8 = ~io_in[61]; // @[rawFloatFromRecFN.scala 56:36:chipyard.TestHarness.RocketConfig.fir@234787.4]
  assign rawIn_isInf = _T_4 & _T_8; // @[rawFloatFromRecFN.scala 56:33:chipyard.TestHarness.RocketConfig.fir@234788.4]
  assign rawIn_sign = io_in[64]; // @[rawFloatFromRecFN.scala 58:25:chipyard.TestHarness.RocketConfig.fir@234791.4]
  assign rawIn_sExp = {1'b0,$signed(io_in[63:52])}; // @[rawFloatFromRecFN.scala 59:27:chipyard.TestHarness.RocketConfig.fir@234793.4]
  assign _T_12 = ~rawIn_isZero; // @[rawFloatFromRecFN.scala 60:39:chipyard.TestHarness.RocketConfig.fir@234795.4]
  assign rawIn_sig = {1'h0,_T_12,io_in[51:0]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@234798.4]
  assign magGeOne = rawIn_sExp[11]; // @[RecFNToIN.scala 58:30:chipyard.TestHarness.RocketConfig.fir@234800.4]
  assign posExp = rawIn_sExp[10:0]; // @[RecFNToIN.scala 59:28:chipyard.TestHarness.RocketConfig.fir@234801.4]
  assign _T_16 = ~magGeOne; // @[RecFNToIN.scala 60:27:chipyard.TestHarness.RocketConfig.fir@234802.4]
  assign _T_17 = &posExp; // @[RecFNToIN.scala 60:47:chipyard.TestHarness.RocketConfig.fir@234803.4]
  assign magJustBelowOne = _T_16 & _T_17; // @[RecFNToIN.scala 60:37:chipyard.TestHarness.RocketConfig.fir@234804.4]
  assign roundingMode_near_even = io_roundingMode == 3'h0; // @[RecFNToIN.scala 64:53:chipyard.TestHarness.RocketConfig.fir@234805.4]
  assign roundingMode_min = io_roundingMode == 3'h2; // @[RecFNToIN.scala 66:53:chipyard.TestHarness.RocketConfig.fir@234807.4]
  assign roundingMode_max = io_roundingMode == 3'h3; // @[RecFNToIN.scala 67:53:chipyard.TestHarness.RocketConfig.fir@234808.4]
  assign roundingMode_near_maxMag = io_roundingMode == 3'h4; // @[RecFNToIN.scala 68:53:chipyard.TestHarness.RocketConfig.fir@234809.4]
  assign roundingMode_odd = io_roundingMode == 3'h6; // @[RecFNToIN.scala 69:53:chipyard.TestHarness.RocketConfig.fir@234810.4]
  assign _T_19 = {magGeOne,rawIn_sig[51:0]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@234812.4]
  assign _T_21 = magGeOne ? rawIn_sExp[4:0] : 5'h0; // @[RecFNToIN.scala 81:16:chipyard.TestHarness.RocketConfig.fir@234814.4]
  assign _GEN_0 = {{31'd0}, _T_19}; // @[RecFNToIN.scala 80:50:chipyard.TestHarness.RocketConfig.fir@234815.4]
  assign shiftedSig = _GEN_0 << _T_21; // @[RecFNToIN.scala 80:50:chipyard.TestHarness.RocketConfig.fir@234815.4]
  assign _T_24 = |shiftedSig[50:0]; // @[RecFNToIN.scala 86:69:chipyard.TestHarness.RocketConfig.fir@234818.4]
  assign alignedSig = {shiftedSig[83:51],_T_24}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@234819.4]
  assign unroundedInt = alignedSig[33:2]; // @[RecFNToIN.scala 87:54:chipyard.TestHarness.RocketConfig.fir@234820.4]
  assign _T_27 = |alignedSig[1:0]; // @[RecFNToIN.scala 89:57:chipyard.TestHarness.RocketConfig.fir@234823.4]
  assign common_inexact = magGeOne ? _T_27 : _T_12; // @[RecFNToIN.scala 89:29:chipyard.TestHarness.RocketConfig.fir@234825.4]
  assign _T_30 = &alignedSig[2:1]; // @[RecFNToIN.scala 91:46:chipyard.TestHarness.RocketConfig.fir@234827.4]
  assign _T_32 = &alignedSig[1:0]; // @[RecFNToIN.scala 91:71:chipyard.TestHarness.RocketConfig.fir@234829.4]
  assign _T_33 = _T_30 | _T_32; // @[RecFNToIN.scala 91:51:chipyard.TestHarness.RocketConfig.fir@234830.4]
  assign _T_34 = magGeOne & _T_33; // @[RecFNToIN.scala 91:25:chipyard.TestHarness.RocketConfig.fir@234831.4]
  assign _T_37 = magJustBelowOne & _T_27; // @[RecFNToIN.scala 92:26:chipyard.TestHarness.RocketConfig.fir@234834.4]
  assign roundIncr_near_even = _T_34 | _T_37; // @[RecFNToIN.scala 91:78:chipyard.TestHarness.RocketConfig.fir@234835.4]
  assign _T_39 = magGeOne & alignedSig[1]; // @[RecFNToIN.scala 93:43:chipyard.TestHarness.RocketConfig.fir@234837.4]
  assign roundIncr_near_maxMag = _T_39 | magJustBelowOne; // @[RecFNToIN.scala 93:61:chipyard.TestHarness.RocketConfig.fir@234838.4]
  assign _T_40 = roundingMode_near_even & roundIncr_near_even; // @[RecFNToIN.scala 95:35:chipyard.TestHarness.RocketConfig.fir@234839.4]
  assign _T_41 = roundingMode_near_maxMag & roundIncr_near_maxMag; // @[RecFNToIN.scala 96:35:chipyard.TestHarness.RocketConfig.fir@234840.4]
  assign _T_42 = _T_40 | _T_41; // @[RecFNToIN.scala 95:61:chipyard.TestHarness.RocketConfig.fir@234841.4]
  assign _T_43 = roundingMode_min | roundingMode_odd; // @[RecFNToIN.scala 97:28:chipyard.TestHarness.RocketConfig.fir@234842.4]
  assign _T_44 = rawIn_sign & common_inexact; // @[RecFNToIN.scala 98:26:chipyard.TestHarness.RocketConfig.fir@234843.4]
  assign _T_45 = _T_43 & _T_44; // @[RecFNToIN.scala 97:49:chipyard.TestHarness.RocketConfig.fir@234844.4]
  assign _T_46 = _T_42 | _T_45; // @[RecFNToIN.scala 96:61:chipyard.TestHarness.RocketConfig.fir@234845.4]
  assign _T_47 = ~rawIn_sign; // @[RecFNToIN.scala 99:31:chipyard.TestHarness.RocketConfig.fir@234846.4]
  assign _T_48 = _T_47 & common_inexact; // @[RecFNToIN.scala 99:43:chipyard.TestHarness.RocketConfig.fir@234847.4]
  assign _T_49 = roundingMode_max & _T_48; // @[RecFNToIN.scala 99:27:chipyard.TestHarness.RocketConfig.fir@234848.4]
  assign roundIncr = _T_46 | _T_49; // @[RecFNToIN.scala 98:46:chipyard.TestHarness.RocketConfig.fir@234849.4]
  assign magGeOne_atOverflowEdge = posExp == 11'h1f; // @[RecFNToIN.scala 107:43:chipyard.TestHarness.RocketConfig.fir@234858.4]
  assign _T_57 = &unroundedInt[29:0]; // @[RecFNToIN.scala 110:56:chipyard.TestHarness.RocketConfig.fir@234860.4]
  assign roundCarryBut2 = _T_57 & roundIncr; // @[RecFNToIN.scala 110:61:chipyard.TestHarness.RocketConfig.fir@234861.4]
  assign _T_58 = posExp >= 11'h20; // @[RecFNToIN.scala 113:21:chipyard.TestHarness.RocketConfig.fir@234862.4]
  assign _T_60 = |unroundedInt[30:0]; // @[RecFNToIN.scala 117:60:chipyard.TestHarness.RocketConfig.fir@234864.4]
  assign _T_61 = _T_60 | roundIncr; // @[RecFNToIN.scala 117:64:chipyard.TestHarness.RocketConfig.fir@234865.4]
  assign _T_62 = magGeOne_atOverflowEdge & _T_61; // @[RecFNToIN.scala 116:49:chipyard.TestHarness.RocketConfig.fir@234866.4]
  assign _T_63 = posExp == 11'h1e; // @[RecFNToIN.scala 119:38:chipyard.TestHarness.RocketConfig.fir@234867.4]
  assign _T_64 = _T_63 & roundCarryBut2; // @[RecFNToIN.scala 119:62:chipyard.TestHarness.RocketConfig.fir@234868.4]
  assign _T_65 = magGeOne_atOverflowEdge | _T_64; // @[RecFNToIN.scala 118:49:chipyard.TestHarness.RocketConfig.fir@234869.4]
  assign _T_66 = rawIn_sign ? _T_62 : _T_65; // @[RecFNToIN.scala 115:24:chipyard.TestHarness.RocketConfig.fir@234870.4]
  assign _T_68 = magGeOne_atOverflowEdge & unroundedInt[30]; // @[RecFNToIN.scala 122:50:chipyard.TestHarness.RocketConfig.fir@234872.4]
  assign _T_69 = _T_68 & roundCarryBut2; // @[RecFNToIN.scala 123:57:chipyard.TestHarness.RocketConfig.fir@234873.4]
  assign _T_70 = rawIn_sign | _T_69; // @[RecFNToIN.scala 121:32:chipyard.TestHarness.RocketConfig.fir@234874.4]
  assign _T_71 = io_signedOut ? _T_66 : _T_70; // @[RecFNToIN.scala 114:20:chipyard.TestHarness.RocketConfig.fir@234875.4]
  assign _T_72 = _T_58 | _T_71; // @[RecFNToIN.scala 113:40:chipyard.TestHarness.RocketConfig.fir@234876.4]
  assign _T_73 = ~io_signedOut; // @[RecFNToIN.scala 125:13:chipyard.TestHarness.RocketConfig.fir@234877.4]
  assign _T_74 = _T_73 & rawIn_sign; // @[RecFNToIN.scala 125:27:chipyard.TestHarness.RocketConfig.fir@234878.4]
  assign _T_75 = _T_74 & roundIncr; // @[RecFNToIN.scala 125:41:chipyard.TestHarness.RocketConfig.fir@234879.4]
  assign common_overflow = magGeOne ? _T_72 : _T_75; // @[RecFNToIN.scala 112:12:chipyard.TestHarness.RocketConfig.fir@234880.4]
  assign invalidExc = rawIn_isNaN | rawIn_isInf; // @[RecFNToIN.scala 130:34:chipyard.TestHarness.RocketConfig.fir@234881.4]
  assign _T_76 = ~invalidExc; // @[RecFNToIN.scala 131:20:chipyard.TestHarness.RocketConfig.fir@234882.4]
  assign overflow = _T_76 & common_overflow; // @[RecFNToIN.scala 131:32:chipyard.TestHarness.RocketConfig.fir@234883.4]
  assign _T_78 = ~common_overflow; // @[RecFNToIN.scala 132:35:chipyard.TestHarness.RocketConfig.fir@234885.4]
  assign _T_79 = _T_76 & _T_78; // @[RecFNToIN.scala 132:32:chipyard.TestHarness.RocketConfig.fir@234886.4]
  assign inexact = _T_79 & common_inexact; // @[RecFNToIN.scala 132:52:chipyard.TestHarness.RocketConfig.fir@234887.4]
  assign _T_87 = {invalidExc,overflow}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@234898.4]
  assign io_intExceptionFlags = {_T_87,inexact}; // @[RecFNToIN.scala 143:26:chipyard.TestHarness.RocketConfig.fir@234900.4]
endmodule
