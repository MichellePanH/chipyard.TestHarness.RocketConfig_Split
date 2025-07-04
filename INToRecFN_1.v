module INToRecFN_1( // @[:chipyard.TestHarness.RocketConfig.fir@235734.2]
  input         io_signedIn, // @[:chipyard.TestHarness.RocketConfig.fir@235735.4]
  input  [63:0] io_in, // @[:chipyard.TestHarness.RocketConfig.fir@235735.4]
  input  [2:0]  io_roundingMode, // @[:chipyard.TestHarness.RocketConfig.fir@235735.4]
  output [64:0] io_out, // @[:chipyard.TestHarness.RocketConfig.fir@235735.4]
  output [4:0]  io_exceptionFlags // @[:chipyard.TestHarness.RocketConfig.fir@235735.4]
);
  wire  roundAnyRawFNToRecFN_io_in_isZero; // @[INToRecFN.scala 59:15:chipyard.TestHarness.RocketConfig.fir@235888.4]
  wire  roundAnyRawFNToRecFN_io_in_sign; // @[INToRecFN.scala 59:15:chipyard.TestHarness.RocketConfig.fir@235888.4]
  wire [8:0] roundAnyRawFNToRecFN_io_in_sExp; // @[INToRecFN.scala 59:15:chipyard.TestHarness.RocketConfig.fir@235888.4]
  wire [64:0] roundAnyRawFNToRecFN_io_in_sig; // @[INToRecFN.scala 59:15:chipyard.TestHarness.RocketConfig.fir@235888.4]
  wire [2:0] roundAnyRawFNToRecFN_io_roundingMode; // @[INToRecFN.scala 59:15:chipyard.TestHarness.RocketConfig.fir@235888.4]
  wire [64:0] roundAnyRawFNToRecFN_io_out; // @[INToRecFN.scala 59:15:chipyard.TestHarness.RocketConfig.fir@235888.4]
  wire [4:0] roundAnyRawFNToRecFN_io_exceptionFlags; // @[INToRecFN.scala 59:15:chipyard.TestHarness.RocketConfig.fir@235888.4]
  wire  intAsRawFloat_sign; // @[rawFloatFromIN.scala 50:29:chipyard.TestHarness.RocketConfig.fir@235739.4]
  wire [63:0] _T_3; // @[rawFloatFromIN.scala 51:31:chipyard.TestHarness.RocketConfig.fir@235741.4]
  wire [63:0] _T_4; // @[rawFloatFromIN.scala 51:24:chipyard.TestHarness.RocketConfig.fir@235742.4]
  wire [127:0] _T_5; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@235743.4]
  wire [5:0] _T_71; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235809.4]
  wire [5:0] _T_72; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235810.4]
  wire [5:0] _T_73; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235811.4]
  wire [5:0] _T_74; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235812.4]
  wire [5:0] _T_75; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235813.4]
  wire [5:0] _T_76; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235814.4]
  wire [5:0] _T_77; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235815.4]
  wire [5:0] _T_78; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235816.4]
  wire [5:0] _T_79; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235817.4]
  wire [5:0] _T_80; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235818.4]
  wire [5:0] _T_81; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235819.4]
  wire [5:0] _T_82; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235820.4]
  wire [5:0] _T_83; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235821.4]
  wire [5:0] _T_84; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235822.4]
  wire [5:0] _T_85; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235823.4]
  wire [5:0] _T_86; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235824.4]
  wire [5:0] _T_87; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235825.4]
  wire [5:0] _T_88; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235826.4]
  wire [5:0] _T_89; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235827.4]
  wire [5:0] _T_90; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235828.4]
  wire [5:0] _T_91; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235829.4]
  wire [5:0] _T_92; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235830.4]
  wire [5:0] _T_93; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235831.4]
  wire [5:0] _T_94; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235832.4]
  wire [5:0] _T_95; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235833.4]
  wire [5:0] _T_96; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235834.4]
  wire [5:0] _T_97; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235835.4]
  wire [5:0] _T_98; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235836.4]
  wire [5:0] _T_99; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235837.4]
  wire [5:0] _T_100; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235838.4]
  wire [5:0] _T_101; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235839.4]
  wire [5:0] _T_102; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235840.4]
  wire [5:0] _T_103; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235841.4]
  wire [5:0] _T_104; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235842.4]
  wire [5:0] _T_105; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235843.4]
  wire [5:0] _T_106; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235844.4]
  wire [5:0] _T_107; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235845.4]
  wire [5:0] _T_108; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235846.4]
  wire [5:0] _T_109; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235847.4]
  wire [5:0] _T_110; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235848.4]
  wire [5:0] _T_111; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235849.4]
  wire [5:0] _T_112; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235850.4]
  wire [5:0] _T_113; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235851.4]
  wire [5:0] _T_114; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235852.4]
  wire [5:0] _T_115; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235853.4]
  wire [5:0] _T_116; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235854.4]
  wire [5:0] _T_117; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235855.4]
  wire [5:0] _T_118; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235856.4]
  wire [5:0] _T_119; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235857.4]
  wire [5:0] _T_120; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235858.4]
  wire [5:0] _T_121; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235859.4]
  wire [5:0] _T_122; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235860.4]
  wire [5:0] _T_123; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235861.4]
  wire [5:0] _T_124; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235862.4]
  wire [5:0] _T_125; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235863.4]
  wire [5:0] _T_126; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235864.4]
  wire [5:0] _T_127; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235865.4]
  wire [5:0] _T_128; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235866.4]
  wire [5:0] _T_129; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235867.4]
  wire [5:0] _T_130; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235868.4]
  wire [5:0] _T_131; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235869.4]
  wire [5:0] _T_132; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235870.4]
  wire [5:0] _T_133; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235871.4]
  wire [126:0] _GEN_0; // @[rawFloatFromIN.scala 55:22:chipyard.TestHarness.RocketConfig.fir@235872.4]
  wire [126:0] _T_134; // @[rawFloatFromIN.scala 55:22:chipyard.TestHarness.RocketConfig.fir@235872.4]
  wire [5:0] _T_139; // @[rawFloatFromIN.scala 63:39:chipyard.TestHarness.RocketConfig.fir@235883.4]
  wire [7:0] _T_140; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@235884.4]
  RoundAnyRawFNToRecFN_2 roundAnyRawFNToRecFN ( // @[INToRecFN.scala 59:15:chipyard.TestHarness.RocketConfig.fir@235888.4]
    .io_in_isZero(roundAnyRawFNToRecFN_io_in_isZero),
    .io_in_sign(roundAnyRawFNToRecFN_io_in_sign),
    .io_in_sExp(roundAnyRawFNToRecFN_io_in_sExp),
    .io_in_sig(roundAnyRawFNToRecFN_io_in_sig),
    .io_roundingMode(roundAnyRawFNToRecFN_io_roundingMode),
    .io_out(roundAnyRawFNToRecFN_io_out),
    .io_exceptionFlags(roundAnyRawFNToRecFN_io_exceptionFlags)
  );
  assign intAsRawFloat_sign = io_signedIn & io_in[63]; // @[rawFloatFromIN.scala 50:29:chipyard.TestHarness.RocketConfig.fir@235739.4]
  assign _T_3 = 64'h0 - io_in; // @[rawFloatFromIN.scala 51:31:chipyard.TestHarness.RocketConfig.fir@235741.4]
  assign _T_4 = intAsRawFloat_sign ? _T_3 : io_in; // @[rawFloatFromIN.scala 51:24:chipyard.TestHarness.RocketConfig.fir@235742.4]
  assign _T_5 = {64'h0,_T_4}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@235743.4]
  assign _T_71 = _T_5[1] ? 6'h3e : 6'h3f; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235809.4]
  assign _T_72 = _T_5[2] ? 6'h3d : _T_71; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235810.4]
  assign _T_73 = _T_5[3] ? 6'h3c : _T_72; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235811.4]
  assign _T_74 = _T_5[4] ? 6'h3b : _T_73; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235812.4]
  assign _T_75 = _T_5[5] ? 6'h3a : _T_74; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235813.4]
  assign _T_76 = _T_5[6] ? 6'h39 : _T_75; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235814.4]
  assign _T_77 = _T_5[7] ? 6'h38 : _T_76; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235815.4]
  assign _T_78 = _T_5[8] ? 6'h37 : _T_77; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235816.4]
  assign _T_79 = _T_5[9] ? 6'h36 : _T_78; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235817.4]
  assign _T_80 = _T_5[10] ? 6'h35 : _T_79; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235818.4]
  assign _T_81 = _T_5[11] ? 6'h34 : _T_80; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235819.4]
  assign _T_82 = _T_5[12] ? 6'h33 : _T_81; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235820.4]
  assign _T_83 = _T_5[13] ? 6'h32 : _T_82; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235821.4]
  assign _T_84 = _T_5[14] ? 6'h31 : _T_83; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235822.4]
  assign _T_85 = _T_5[15] ? 6'h30 : _T_84; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235823.4]
  assign _T_86 = _T_5[16] ? 6'h2f : _T_85; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235824.4]
  assign _T_87 = _T_5[17] ? 6'h2e : _T_86; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235825.4]
  assign _T_88 = _T_5[18] ? 6'h2d : _T_87; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235826.4]
  assign _T_89 = _T_5[19] ? 6'h2c : _T_88; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235827.4]
  assign _T_90 = _T_5[20] ? 6'h2b : _T_89; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235828.4]
  assign _T_91 = _T_5[21] ? 6'h2a : _T_90; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235829.4]
  assign _T_92 = _T_5[22] ? 6'h29 : _T_91; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235830.4]
  assign _T_93 = _T_5[23] ? 6'h28 : _T_92; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235831.4]
  assign _T_94 = _T_5[24] ? 6'h27 : _T_93; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235832.4]
  assign _T_95 = _T_5[25] ? 6'h26 : _T_94; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235833.4]
  assign _T_96 = _T_5[26] ? 6'h25 : _T_95; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235834.4]
  assign _T_97 = _T_5[27] ? 6'h24 : _T_96; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235835.4]
  assign _T_98 = _T_5[28] ? 6'h23 : _T_97; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235836.4]
  assign _T_99 = _T_5[29] ? 6'h22 : _T_98; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235837.4]
  assign _T_100 = _T_5[30] ? 6'h21 : _T_99; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235838.4]
  assign _T_101 = _T_5[31] ? 6'h20 : _T_100; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235839.4]
  assign _T_102 = _T_5[32] ? 6'h1f : _T_101; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235840.4]
  assign _T_103 = _T_5[33] ? 6'h1e : _T_102; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235841.4]
  assign _T_104 = _T_5[34] ? 6'h1d : _T_103; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235842.4]
  assign _T_105 = _T_5[35] ? 6'h1c : _T_104; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235843.4]
  assign _T_106 = _T_5[36] ? 6'h1b : _T_105; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235844.4]
  assign _T_107 = _T_5[37] ? 6'h1a : _T_106; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235845.4]
  assign _T_108 = _T_5[38] ? 6'h19 : _T_107; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235846.4]
  assign _T_109 = _T_5[39] ? 6'h18 : _T_108; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235847.4]
  assign _T_110 = _T_5[40] ? 6'h17 : _T_109; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235848.4]
  assign _T_111 = _T_5[41] ? 6'h16 : _T_110; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235849.4]
  assign _T_112 = _T_5[42] ? 6'h15 : _T_111; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235850.4]
  assign _T_113 = _T_5[43] ? 6'h14 : _T_112; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235851.4]
  assign _T_114 = _T_5[44] ? 6'h13 : _T_113; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235852.4]
  assign _T_115 = _T_5[45] ? 6'h12 : _T_114; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235853.4]
  assign _T_116 = _T_5[46] ? 6'h11 : _T_115; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235854.4]
  assign _T_117 = _T_5[47] ? 6'h10 : _T_116; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235855.4]
  assign _T_118 = _T_5[48] ? 6'hf : _T_117; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235856.4]
  assign _T_119 = _T_5[49] ? 6'he : _T_118; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235857.4]
  assign _T_120 = _T_5[50] ? 6'hd : _T_119; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235858.4]
  assign _T_121 = _T_5[51] ? 6'hc : _T_120; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235859.4]
  assign _T_122 = _T_5[52] ? 6'hb : _T_121; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235860.4]
  assign _T_123 = _T_5[53] ? 6'ha : _T_122; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235861.4]
  assign _T_124 = _T_5[54] ? 6'h9 : _T_123; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235862.4]
  assign _T_125 = _T_5[55] ? 6'h8 : _T_124; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235863.4]
  assign _T_126 = _T_5[56] ? 6'h7 : _T_125; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235864.4]
  assign _T_127 = _T_5[57] ? 6'h6 : _T_126; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235865.4]
  assign _T_128 = _T_5[58] ? 6'h5 : _T_127; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235866.4]
  assign _T_129 = _T_5[59] ? 6'h4 : _T_128; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235867.4]
  assign _T_130 = _T_5[60] ? 6'h3 : _T_129; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235868.4]
  assign _T_131 = _T_5[61] ? 6'h2 : _T_130; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235869.4]
  assign _T_132 = _T_5[62] ? 6'h1 : _T_131; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235870.4]
  assign _T_133 = _T_5[63] ? 6'h0 : _T_132; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@235871.4]
  assign _GEN_0 = {{63'd0}, _T_5[63:0]}; // @[rawFloatFromIN.scala 55:22:chipyard.TestHarness.RocketConfig.fir@235872.4]
  assign _T_134 = _GEN_0 << _T_133; // @[rawFloatFromIN.scala 55:22:chipyard.TestHarness.RocketConfig.fir@235872.4]
  assign _T_139 = ~_T_133; // @[rawFloatFromIN.scala 63:39:chipyard.TestHarness.RocketConfig.fir@235883.4]
  assign _T_140 = {2'h2,_T_139}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@235884.4]
  assign io_out = roundAnyRawFNToRecFN_io_out; // @[INToRecFN.scala 72:23:chipyard.TestHarness.RocketConfig.fir@235895.4]
  assign io_exceptionFlags = roundAnyRawFNToRecFN_io_exceptionFlags; // @[INToRecFN.scala 73:23:chipyard.TestHarness.RocketConfig.fir@235896.4]
  assign roundAnyRawFNToRecFN_io_in_isZero = ~_T_134[63]; // @[INToRecFN.scala 69:44:chipyard.TestHarness.RocketConfig.fir@235892.4]
  assign roundAnyRawFNToRecFN_io_in_sign = io_signedIn & io_in[63]; // @[INToRecFN.scala 69:44:chipyard.TestHarness.RocketConfig.fir@235892.4]
  assign roundAnyRawFNToRecFN_io_in_sExp = {1'b0,$signed(_T_140)}; // @[INToRecFN.scala 69:44:chipyard.TestHarness.RocketConfig.fir@235892.4]
  assign roundAnyRawFNToRecFN_io_in_sig = {{1'd0}, _T_134[63:0]}; // @[INToRecFN.scala 69:44:chipyard.TestHarness.RocketConfig.fir@235892.4]
  assign roundAnyRawFNToRecFN_io_roundingMode = io_roundingMode; // @[INToRecFN.scala 70:44:chipyard.TestHarness.RocketConfig.fir@235893.4]
endmodule
