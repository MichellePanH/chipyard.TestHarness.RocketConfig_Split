module RecFNToIN( // @[:chipyard.TestHarness.RocketConfig.fir@234642.2]
  input  [64:0] io_in, // @[:chipyard.TestHarness.RocketConfig.fir@234643.4]
  input  [2:0]  io_roundingMode, // @[:chipyard.TestHarness.RocketConfig.fir@234643.4]
  input         io_signedOut, // @[:chipyard.TestHarness.RocketConfig.fir@234643.4]
  output [63:0] io_out, // @[:chipyard.TestHarness.RocketConfig.fir@234643.4]
  output [2:0]  io_intExceptionFlags // @[:chipyard.TestHarness.RocketConfig.fir@234643.4]
);
  wire  rawIn_isZero; // @[rawFloatFromRecFN.scala 51:54:chipyard.TestHarness.RocketConfig.fir@234648.4]
  wire  _T_4; // @[rawFloatFromRecFN.scala 52:54:chipyard.TestHarness.RocketConfig.fir@234650.4]
  wire  rawIn_isNaN; // @[rawFloatFromRecFN.scala 55:33:chipyard.TestHarness.RocketConfig.fir@234654.4]
  wire  _T_8; // @[rawFloatFromRecFN.scala 56:36:chipyard.TestHarness.RocketConfig.fir@234657.4]
  wire  rawIn_isInf; // @[rawFloatFromRecFN.scala 56:33:chipyard.TestHarness.RocketConfig.fir@234658.4]
  wire  rawIn_sign; // @[rawFloatFromRecFN.scala 58:25:chipyard.TestHarness.RocketConfig.fir@234661.4]
  wire [12:0] rawIn_sExp; // @[rawFloatFromRecFN.scala 59:27:chipyard.TestHarness.RocketConfig.fir@234663.4]
  wire  _T_12; // @[rawFloatFromRecFN.scala 60:39:chipyard.TestHarness.RocketConfig.fir@234665.4]
  wire [53:0] rawIn_sig; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@234668.4]
  wire  magGeOne; // @[RecFNToIN.scala 58:30:chipyard.TestHarness.RocketConfig.fir@234670.4]
  wire [10:0] posExp; // @[RecFNToIN.scala 59:28:chipyard.TestHarness.RocketConfig.fir@234671.4]
  wire  _T_16; // @[RecFNToIN.scala 60:27:chipyard.TestHarness.RocketConfig.fir@234672.4]
  wire  _T_17; // @[RecFNToIN.scala 60:47:chipyard.TestHarness.RocketConfig.fir@234673.4]
  wire  magJustBelowOne; // @[RecFNToIN.scala 60:37:chipyard.TestHarness.RocketConfig.fir@234674.4]
  wire  roundingMode_near_even; // @[RecFNToIN.scala 64:53:chipyard.TestHarness.RocketConfig.fir@234675.4]
  wire  roundingMode_min; // @[RecFNToIN.scala 66:53:chipyard.TestHarness.RocketConfig.fir@234677.4]
  wire  roundingMode_max; // @[RecFNToIN.scala 67:53:chipyard.TestHarness.RocketConfig.fir@234678.4]
  wire  roundingMode_near_maxMag; // @[RecFNToIN.scala 68:53:chipyard.TestHarness.RocketConfig.fir@234679.4]
  wire  roundingMode_odd; // @[RecFNToIN.scala 69:53:chipyard.TestHarness.RocketConfig.fir@234680.4]
  wire [52:0] _T_19; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@234682.4]
  wire [5:0] _T_21; // @[RecFNToIN.scala 81:16:chipyard.TestHarness.RocketConfig.fir@234684.4]
  wire [115:0] _GEN_0; // @[RecFNToIN.scala 80:50:chipyard.TestHarness.RocketConfig.fir@234685.4]
  wire [115:0] shiftedSig; // @[RecFNToIN.scala 80:50:chipyard.TestHarness.RocketConfig.fir@234685.4]
  wire  _T_24; // @[RecFNToIN.scala 86:69:chipyard.TestHarness.RocketConfig.fir@234688.4]
  wire [65:0] alignedSig; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@234689.4]
  wire [63:0] unroundedInt; // @[RecFNToIN.scala 87:54:chipyard.TestHarness.RocketConfig.fir@234690.4]
  wire  _T_27; // @[RecFNToIN.scala 89:57:chipyard.TestHarness.RocketConfig.fir@234693.4]
  wire  common_inexact; // @[RecFNToIN.scala 89:29:chipyard.TestHarness.RocketConfig.fir@234695.4]
  wire  _T_30; // @[RecFNToIN.scala 91:46:chipyard.TestHarness.RocketConfig.fir@234697.4]
  wire  _T_32; // @[RecFNToIN.scala 91:71:chipyard.TestHarness.RocketConfig.fir@234699.4]
  wire  _T_33; // @[RecFNToIN.scala 91:51:chipyard.TestHarness.RocketConfig.fir@234700.4]
  wire  _T_34; // @[RecFNToIN.scala 91:25:chipyard.TestHarness.RocketConfig.fir@234701.4]
  wire  _T_37; // @[RecFNToIN.scala 92:26:chipyard.TestHarness.RocketConfig.fir@234704.4]
  wire  roundIncr_near_even; // @[RecFNToIN.scala 91:78:chipyard.TestHarness.RocketConfig.fir@234705.4]
  wire  _T_39; // @[RecFNToIN.scala 93:43:chipyard.TestHarness.RocketConfig.fir@234707.4]
  wire  roundIncr_near_maxMag; // @[RecFNToIN.scala 93:61:chipyard.TestHarness.RocketConfig.fir@234708.4]
  wire  _T_40; // @[RecFNToIN.scala 95:35:chipyard.TestHarness.RocketConfig.fir@234709.4]
  wire  _T_41; // @[RecFNToIN.scala 96:35:chipyard.TestHarness.RocketConfig.fir@234710.4]
  wire  _T_42; // @[RecFNToIN.scala 95:61:chipyard.TestHarness.RocketConfig.fir@234711.4]
  wire  _T_43; // @[RecFNToIN.scala 97:28:chipyard.TestHarness.RocketConfig.fir@234712.4]
  wire  _T_44; // @[RecFNToIN.scala 98:26:chipyard.TestHarness.RocketConfig.fir@234713.4]
  wire  _T_45; // @[RecFNToIN.scala 97:49:chipyard.TestHarness.RocketConfig.fir@234714.4]
  wire  _T_46; // @[RecFNToIN.scala 96:61:chipyard.TestHarness.RocketConfig.fir@234715.4]
  wire  _T_47; // @[RecFNToIN.scala 99:31:chipyard.TestHarness.RocketConfig.fir@234716.4]
  wire  _T_48; // @[RecFNToIN.scala 99:43:chipyard.TestHarness.RocketConfig.fir@234717.4]
  wire  _T_49; // @[RecFNToIN.scala 99:27:chipyard.TestHarness.RocketConfig.fir@234718.4]
  wire  roundIncr; // @[RecFNToIN.scala 98:46:chipyard.TestHarness.RocketConfig.fir@234719.4]
  wire [63:0] _T_50; // @[RecFNToIN.scala 100:45:chipyard.TestHarness.RocketConfig.fir@234720.4]
  wire [63:0] complUnroundedInt; // @[RecFNToIN.scala 100:32:chipyard.TestHarness.RocketConfig.fir@234721.4]
  wire  _T_51; // @[RecFNToIN.scala 102:23:chipyard.TestHarness.RocketConfig.fir@234722.4]
  wire [63:0] _T_53; // @[RecFNToIN.scala 103:31:chipyard.TestHarness.RocketConfig.fir@234724.4]
  wire [63:0] _T_54; // @[RecFNToIN.scala 102:12:chipyard.TestHarness.RocketConfig.fir@234725.4]
  wire  _T_55; // @[RecFNToIN.scala 105:31:chipyard.TestHarness.RocketConfig.fir@234726.4]
  wire [63:0] _GEN_1; // @[RecFNToIN.scala 105:11:chipyard.TestHarness.RocketConfig.fir@234727.4]
  wire [63:0] roundedInt; // @[RecFNToIN.scala 105:11:chipyard.TestHarness.RocketConfig.fir@234727.4]
  wire  magGeOne_atOverflowEdge; // @[RecFNToIN.scala 107:43:chipyard.TestHarness.RocketConfig.fir@234728.4]
  wire  _T_57; // @[RecFNToIN.scala 110:56:chipyard.TestHarness.RocketConfig.fir@234730.4]
  wire  roundCarryBut2; // @[RecFNToIN.scala 110:61:chipyard.TestHarness.RocketConfig.fir@234731.4]
  wire  _T_58; // @[RecFNToIN.scala 113:21:chipyard.TestHarness.RocketConfig.fir@234732.4]
  wire  _T_60; // @[RecFNToIN.scala 117:60:chipyard.TestHarness.RocketConfig.fir@234734.4]
  wire  _T_61; // @[RecFNToIN.scala 117:64:chipyard.TestHarness.RocketConfig.fir@234735.4]
  wire  _T_62; // @[RecFNToIN.scala 116:49:chipyard.TestHarness.RocketConfig.fir@234736.4]
  wire  _T_63; // @[RecFNToIN.scala 119:38:chipyard.TestHarness.RocketConfig.fir@234737.4]
  wire  _T_64; // @[RecFNToIN.scala 119:62:chipyard.TestHarness.RocketConfig.fir@234738.4]
  wire  _T_65; // @[RecFNToIN.scala 118:49:chipyard.TestHarness.RocketConfig.fir@234739.4]
  wire  _T_66; // @[RecFNToIN.scala 115:24:chipyard.TestHarness.RocketConfig.fir@234740.4]
  wire  _T_68; // @[RecFNToIN.scala 122:50:chipyard.TestHarness.RocketConfig.fir@234742.4]
  wire  _T_69; // @[RecFNToIN.scala 123:57:chipyard.TestHarness.RocketConfig.fir@234743.4]
  wire  _T_70; // @[RecFNToIN.scala 121:32:chipyard.TestHarness.RocketConfig.fir@234744.4]
  wire  _T_71; // @[RecFNToIN.scala 114:20:chipyard.TestHarness.RocketConfig.fir@234745.4]
  wire  _T_72; // @[RecFNToIN.scala 113:40:chipyard.TestHarness.RocketConfig.fir@234746.4]
  wire  _T_73; // @[RecFNToIN.scala 125:13:chipyard.TestHarness.RocketConfig.fir@234747.4]
  wire  _T_74; // @[RecFNToIN.scala 125:27:chipyard.TestHarness.RocketConfig.fir@234748.4]
  wire  _T_75; // @[RecFNToIN.scala 125:41:chipyard.TestHarness.RocketConfig.fir@234749.4]
  wire  common_overflow; // @[RecFNToIN.scala 112:12:chipyard.TestHarness.RocketConfig.fir@234750.4]
  wire  invalidExc; // @[RecFNToIN.scala 130:34:chipyard.TestHarness.RocketConfig.fir@234751.4]
  wire  _T_76; // @[RecFNToIN.scala 131:20:chipyard.TestHarness.RocketConfig.fir@234752.4]
  wire  overflow; // @[RecFNToIN.scala 131:32:chipyard.TestHarness.RocketConfig.fir@234753.4]
  wire  _T_78; // @[RecFNToIN.scala 132:35:chipyard.TestHarness.RocketConfig.fir@234755.4]
  wire  _T_79; // @[RecFNToIN.scala 132:32:chipyard.TestHarness.RocketConfig.fir@234756.4]
  wire  inexact; // @[RecFNToIN.scala 132:52:chipyard.TestHarness.RocketConfig.fir@234757.4]
  wire  _T_80; // @[RecFNToIN.scala 134:19:chipyard.TestHarness.RocketConfig.fir@234758.4]
  wire  excSign; // @[RecFNToIN.scala 134:32:chipyard.TestHarness.RocketConfig.fir@234759.4]
  wire  _T_81; // @[RecFNToIN.scala 136:27:chipyard.TestHarness.RocketConfig.fir@234760.4]
  wire [63:0] _T_82; // @[RecFNToIN.scala 136:12:chipyard.TestHarness.RocketConfig.fir@234761.4]
  wire  _T_83; // @[RecFNToIN.scala 140:13:chipyard.TestHarness.RocketConfig.fir@234762.4]
  wire [62:0] _T_84; // @[RecFNToIN.scala 140:12:chipyard.TestHarness.RocketConfig.fir@234763.4]
  wire [63:0] _GEN_2; // @[RecFNToIN.scala 139:11:chipyard.TestHarness.RocketConfig.fir@234764.4]
  wire [63:0] excOut; // @[RecFNToIN.scala 139:11:chipyard.TestHarness.RocketConfig.fir@234764.4]
  wire  _T_85; // @[RecFNToIN.scala 142:30:chipyard.TestHarness.RocketConfig.fir@234765.4]
  wire [1:0] _T_87; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@234768.4]
  assign rawIn_isZero = io_in[63:61] == 3'h0; // @[rawFloatFromRecFN.scala 51:54:chipyard.TestHarness.RocketConfig.fir@234648.4]
  assign _T_4 = io_in[63:62] == 2'h3; // @[rawFloatFromRecFN.scala 52:54:chipyard.TestHarness.RocketConfig.fir@234650.4]
  assign rawIn_isNaN = _T_4 & io_in[61]; // @[rawFloatFromRecFN.scala 55:33:chipyard.TestHarness.RocketConfig.fir@234654.4]
  assign _T_8 = ~io_in[61]; // @[rawFloatFromRecFN.scala 56:36:chipyard.TestHarness.RocketConfig.fir@234657.4]
  assign rawIn_isInf = _T_4 & _T_8; // @[rawFloatFromRecFN.scala 56:33:chipyard.TestHarness.RocketConfig.fir@234658.4]
  assign rawIn_sign = io_in[64]; // @[rawFloatFromRecFN.scala 58:25:chipyard.TestHarness.RocketConfig.fir@234661.4]
  assign rawIn_sExp = {1'b0,$signed(io_in[63:52])}; // @[rawFloatFromRecFN.scala 59:27:chipyard.TestHarness.RocketConfig.fir@234663.4]
  assign _T_12 = ~rawIn_isZero; // @[rawFloatFromRecFN.scala 60:39:chipyard.TestHarness.RocketConfig.fir@234665.4]
  assign rawIn_sig = {1'h0,_T_12,io_in[51:0]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@234668.4]
  assign magGeOne = rawIn_sExp[11]; // @[RecFNToIN.scala 58:30:chipyard.TestHarness.RocketConfig.fir@234670.4]
  assign posExp = rawIn_sExp[10:0]; // @[RecFNToIN.scala 59:28:chipyard.TestHarness.RocketConfig.fir@234671.4]
  assign _T_16 = ~magGeOne; // @[RecFNToIN.scala 60:27:chipyard.TestHarness.RocketConfig.fir@234672.4]
  assign _T_17 = &posExp; // @[RecFNToIN.scala 60:47:chipyard.TestHarness.RocketConfig.fir@234673.4]
  assign magJustBelowOne = _T_16 & _T_17; // @[RecFNToIN.scala 60:37:chipyard.TestHarness.RocketConfig.fir@234674.4]
  assign roundingMode_near_even = io_roundingMode == 3'h0; // @[RecFNToIN.scala 64:53:chipyard.TestHarness.RocketConfig.fir@234675.4]
  assign roundingMode_min = io_roundingMode == 3'h2; // @[RecFNToIN.scala 66:53:chipyard.TestHarness.RocketConfig.fir@234677.4]
  assign roundingMode_max = io_roundingMode == 3'h3; // @[RecFNToIN.scala 67:53:chipyard.TestHarness.RocketConfig.fir@234678.4]
  assign roundingMode_near_maxMag = io_roundingMode == 3'h4; // @[RecFNToIN.scala 68:53:chipyard.TestHarness.RocketConfig.fir@234679.4]
  assign roundingMode_odd = io_roundingMode == 3'h6; // @[RecFNToIN.scala 69:53:chipyard.TestHarness.RocketConfig.fir@234680.4]
  assign _T_19 = {magGeOne,rawIn_sig[51:0]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@234682.4]
  assign _T_21 = magGeOne ? rawIn_sExp[5:0] : 6'h0; // @[RecFNToIN.scala 81:16:chipyard.TestHarness.RocketConfig.fir@234684.4]
  assign _GEN_0 = {{63'd0}, _T_19}; // @[RecFNToIN.scala 80:50:chipyard.TestHarness.RocketConfig.fir@234685.4]
  assign shiftedSig = _GEN_0 << _T_21; // @[RecFNToIN.scala 80:50:chipyard.TestHarness.RocketConfig.fir@234685.4]
  assign _T_24 = |shiftedSig[50:0]; // @[RecFNToIN.scala 86:69:chipyard.TestHarness.RocketConfig.fir@234688.4]
  assign alignedSig = {shiftedSig[115:51],_T_24}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@234689.4]
  assign unroundedInt = alignedSig[65:2]; // @[RecFNToIN.scala 87:54:chipyard.TestHarness.RocketConfig.fir@234690.4]
  assign _T_27 = |alignedSig[1:0]; // @[RecFNToIN.scala 89:57:chipyard.TestHarness.RocketConfig.fir@234693.4]
  assign common_inexact = magGeOne ? _T_27 : _T_12; // @[RecFNToIN.scala 89:29:chipyard.TestHarness.RocketConfig.fir@234695.4]
  assign _T_30 = &alignedSig[2:1]; // @[RecFNToIN.scala 91:46:chipyard.TestHarness.RocketConfig.fir@234697.4]
  assign _T_32 = &alignedSig[1:0]; // @[RecFNToIN.scala 91:71:chipyard.TestHarness.RocketConfig.fir@234699.4]
  assign _T_33 = _T_30 | _T_32; // @[RecFNToIN.scala 91:51:chipyard.TestHarness.RocketConfig.fir@234700.4]
  assign _T_34 = magGeOne & _T_33; // @[RecFNToIN.scala 91:25:chipyard.TestHarness.RocketConfig.fir@234701.4]
  assign _T_37 = magJustBelowOne & _T_27; // @[RecFNToIN.scala 92:26:chipyard.TestHarness.RocketConfig.fir@234704.4]
  assign roundIncr_near_even = _T_34 | _T_37; // @[RecFNToIN.scala 91:78:chipyard.TestHarness.RocketConfig.fir@234705.4]
  assign _T_39 = magGeOne & alignedSig[1]; // @[RecFNToIN.scala 93:43:chipyard.TestHarness.RocketConfig.fir@234707.4]
  assign roundIncr_near_maxMag = _T_39 | magJustBelowOne; // @[RecFNToIN.scala 93:61:chipyard.TestHarness.RocketConfig.fir@234708.4]
  assign _T_40 = roundingMode_near_even & roundIncr_near_even; // @[RecFNToIN.scala 95:35:chipyard.TestHarness.RocketConfig.fir@234709.4]
  assign _T_41 = roundingMode_near_maxMag & roundIncr_near_maxMag; // @[RecFNToIN.scala 96:35:chipyard.TestHarness.RocketConfig.fir@234710.4]
  assign _T_42 = _T_40 | _T_41; // @[RecFNToIN.scala 95:61:chipyard.TestHarness.RocketConfig.fir@234711.4]
  assign _T_43 = roundingMode_min | roundingMode_odd; // @[RecFNToIN.scala 97:28:chipyard.TestHarness.RocketConfig.fir@234712.4]
  assign _T_44 = rawIn_sign & common_inexact; // @[RecFNToIN.scala 98:26:chipyard.TestHarness.RocketConfig.fir@234713.4]
  assign _T_45 = _T_43 & _T_44; // @[RecFNToIN.scala 97:49:chipyard.TestHarness.RocketConfig.fir@234714.4]
  assign _T_46 = _T_42 | _T_45; // @[RecFNToIN.scala 96:61:chipyard.TestHarness.RocketConfig.fir@234715.4]
  assign _T_47 = ~rawIn_sign; // @[RecFNToIN.scala 99:31:chipyard.TestHarness.RocketConfig.fir@234716.4]
  assign _T_48 = _T_47 & common_inexact; // @[RecFNToIN.scala 99:43:chipyard.TestHarness.RocketConfig.fir@234717.4]
  assign _T_49 = roundingMode_max & _T_48; // @[RecFNToIN.scala 99:27:chipyard.TestHarness.RocketConfig.fir@234718.4]
  assign roundIncr = _T_46 | _T_49; // @[RecFNToIN.scala 98:46:chipyard.TestHarness.RocketConfig.fir@234719.4]
  assign _T_50 = ~unroundedInt; // @[RecFNToIN.scala 100:45:chipyard.TestHarness.RocketConfig.fir@234720.4]
  assign complUnroundedInt = rawIn_sign ? _T_50 : unroundedInt; // @[RecFNToIN.scala 100:32:chipyard.TestHarness.RocketConfig.fir@234721.4]
  assign _T_51 = roundIncr ^ rawIn_sign; // @[RecFNToIN.scala 102:23:chipyard.TestHarness.RocketConfig.fir@234722.4]
  assign _T_53 = complUnroundedInt + 64'h1; // @[RecFNToIN.scala 103:31:chipyard.TestHarness.RocketConfig.fir@234724.4]
  assign _T_54 = _T_51 ? _T_53 : complUnroundedInt; // @[RecFNToIN.scala 102:12:chipyard.TestHarness.RocketConfig.fir@234725.4]
  assign _T_55 = roundingMode_odd & common_inexact; // @[RecFNToIN.scala 105:31:chipyard.TestHarness.RocketConfig.fir@234726.4]
  assign _GEN_1 = {{63'd0}, _T_55}; // @[RecFNToIN.scala 105:11:chipyard.TestHarness.RocketConfig.fir@234727.4]
  assign roundedInt = _T_54 | _GEN_1; // @[RecFNToIN.scala 105:11:chipyard.TestHarness.RocketConfig.fir@234727.4]
  assign magGeOne_atOverflowEdge = posExp == 11'h3f; // @[RecFNToIN.scala 107:43:chipyard.TestHarness.RocketConfig.fir@234728.4]
  assign _T_57 = &unroundedInt[61:0]; // @[RecFNToIN.scala 110:56:chipyard.TestHarness.RocketConfig.fir@234730.4]
  assign roundCarryBut2 = _T_57 & roundIncr; // @[RecFNToIN.scala 110:61:chipyard.TestHarness.RocketConfig.fir@234731.4]
  assign _T_58 = posExp >= 11'h40; // @[RecFNToIN.scala 113:21:chipyard.TestHarness.RocketConfig.fir@234732.4]
  assign _T_60 = |unroundedInt[62:0]; // @[RecFNToIN.scala 117:60:chipyard.TestHarness.RocketConfig.fir@234734.4]
  assign _T_61 = _T_60 | roundIncr; // @[RecFNToIN.scala 117:64:chipyard.TestHarness.RocketConfig.fir@234735.4]
  assign _T_62 = magGeOne_atOverflowEdge & _T_61; // @[RecFNToIN.scala 116:49:chipyard.TestHarness.RocketConfig.fir@234736.4]
  assign _T_63 = posExp == 11'h3e; // @[RecFNToIN.scala 119:38:chipyard.TestHarness.RocketConfig.fir@234737.4]
  assign _T_64 = _T_63 & roundCarryBut2; // @[RecFNToIN.scala 119:62:chipyard.TestHarness.RocketConfig.fir@234738.4]
  assign _T_65 = magGeOne_atOverflowEdge | _T_64; // @[RecFNToIN.scala 118:49:chipyard.TestHarness.RocketConfig.fir@234739.4]
  assign _T_66 = rawIn_sign ? _T_62 : _T_65; // @[RecFNToIN.scala 115:24:chipyard.TestHarness.RocketConfig.fir@234740.4]
  assign _T_68 = magGeOne_atOverflowEdge & unroundedInt[62]; // @[RecFNToIN.scala 122:50:chipyard.TestHarness.RocketConfig.fir@234742.4]
  assign _T_69 = _T_68 & roundCarryBut2; // @[RecFNToIN.scala 123:57:chipyard.TestHarness.RocketConfig.fir@234743.4]
  assign _T_70 = rawIn_sign | _T_69; // @[RecFNToIN.scala 121:32:chipyard.TestHarness.RocketConfig.fir@234744.4]
  assign _T_71 = io_signedOut ? _T_66 : _T_70; // @[RecFNToIN.scala 114:20:chipyard.TestHarness.RocketConfig.fir@234745.4]
  assign _T_72 = _T_58 | _T_71; // @[RecFNToIN.scala 113:40:chipyard.TestHarness.RocketConfig.fir@234746.4]
  assign _T_73 = ~io_signedOut; // @[RecFNToIN.scala 125:13:chipyard.TestHarness.RocketConfig.fir@234747.4]
  assign _T_74 = _T_73 & rawIn_sign; // @[RecFNToIN.scala 125:27:chipyard.TestHarness.RocketConfig.fir@234748.4]
  assign _T_75 = _T_74 & roundIncr; // @[RecFNToIN.scala 125:41:chipyard.TestHarness.RocketConfig.fir@234749.4]
  assign common_overflow = magGeOne ? _T_72 : _T_75; // @[RecFNToIN.scala 112:12:chipyard.TestHarness.RocketConfig.fir@234750.4]
  assign invalidExc = rawIn_isNaN | rawIn_isInf; // @[RecFNToIN.scala 130:34:chipyard.TestHarness.RocketConfig.fir@234751.4]
  assign _T_76 = ~invalidExc; // @[RecFNToIN.scala 131:20:chipyard.TestHarness.RocketConfig.fir@234752.4]
  assign overflow = _T_76 & common_overflow; // @[RecFNToIN.scala 131:32:chipyard.TestHarness.RocketConfig.fir@234753.4]
  assign _T_78 = ~common_overflow; // @[RecFNToIN.scala 132:35:chipyard.TestHarness.RocketConfig.fir@234755.4]
  assign _T_79 = _T_76 & _T_78; // @[RecFNToIN.scala 132:32:chipyard.TestHarness.RocketConfig.fir@234756.4]
  assign inexact = _T_79 & common_inexact; // @[RecFNToIN.scala 132:52:chipyard.TestHarness.RocketConfig.fir@234757.4]
  assign _T_80 = ~rawIn_isNaN; // @[RecFNToIN.scala 134:19:chipyard.TestHarness.RocketConfig.fir@234758.4]
  assign excSign = _T_80 & rawIn_sign; // @[RecFNToIN.scala 134:32:chipyard.TestHarness.RocketConfig.fir@234759.4]
  assign _T_81 = io_signedOut == excSign; // @[RecFNToIN.scala 136:27:chipyard.TestHarness.RocketConfig.fir@234760.4]
  assign _T_82 = _T_81 ? 64'h8000000000000000 : 64'h0; // @[RecFNToIN.scala 136:12:chipyard.TestHarness.RocketConfig.fir@234761.4]
  assign _T_83 = ~excSign; // @[RecFNToIN.scala 140:13:chipyard.TestHarness.RocketConfig.fir@234762.4]
  assign _T_84 = _T_83 ? 63'h7fffffffffffffff : 63'h0; // @[RecFNToIN.scala 140:12:chipyard.TestHarness.RocketConfig.fir@234763.4]
  assign _GEN_2 = {{1'd0}, _T_84}; // @[RecFNToIN.scala 139:11:chipyard.TestHarness.RocketConfig.fir@234764.4]
  assign excOut = _T_82 | _GEN_2; // @[RecFNToIN.scala 139:11:chipyard.TestHarness.RocketConfig.fir@234764.4]
  assign _T_85 = invalidExc | common_overflow; // @[RecFNToIN.scala 142:30:chipyard.TestHarness.RocketConfig.fir@234765.4]
  assign _T_87 = {invalidExc,overflow}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@234768.4]
  assign io_out = _T_85 ? excOut : roundedInt; // @[RecFNToIN.scala 142:12:chipyard.TestHarness.RocketConfig.fir@234767.4]
  assign io_intExceptionFlags = {_T_87,inexact}; // @[RecFNToIN.scala 143:26:chipyard.TestHarness.RocketConfig.fir@234770.4]
endmodule
