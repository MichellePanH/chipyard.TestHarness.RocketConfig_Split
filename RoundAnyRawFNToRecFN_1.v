module RoundAnyRawFNToRecFN_1( // @[:chipyard.TestHarness.RocketConfig.fir@235262.2]
  input         io_in_isZero, // @[:chipyard.TestHarness.RocketConfig.fir@235263.4]
  input         io_in_sign, // @[:chipyard.TestHarness.RocketConfig.fir@235263.4]
  input  [8:0]  io_in_sExp, // @[:chipyard.TestHarness.RocketConfig.fir@235263.4]
  input  [64:0] io_in_sig, // @[:chipyard.TestHarness.RocketConfig.fir@235263.4]
  input  [2:0]  io_roundingMode, // @[:chipyard.TestHarness.RocketConfig.fir@235263.4]
  output [32:0] io_out, // @[:chipyard.TestHarness.RocketConfig.fir@235263.4]
  output [4:0]  io_exceptionFlags // @[:chipyard.TestHarness.RocketConfig.fir@235263.4]
);
  wire  roundingMode_near_even; // @[RoundAnyRawFNToRecFN.scala 88:53:chipyard.TestHarness.RocketConfig.fir@235266.4]
  wire  roundingMode_min; // @[RoundAnyRawFNToRecFN.scala 90:53:chipyard.TestHarness.RocketConfig.fir@235268.4]
  wire  roundingMode_max; // @[RoundAnyRawFNToRecFN.scala 91:53:chipyard.TestHarness.RocketConfig.fir@235269.4]
  wire  roundingMode_near_maxMag; // @[RoundAnyRawFNToRecFN.scala 92:53:chipyard.TestHarness.RocketConfig.fir@235270.4]
  wire  roundingMode_odd; // @[RoundAnyRawFNToRecFN.scala 93:53:chipyard.TestHarness.RocketConfig.fir@235271.4]
  wire  _T; // @[RoundAnyRawFNToRecFN.scala 96:27:chipyard.TestHarness.RocketConfig.fir@235272.4]
  wire  _T_1; // @[RoundAnyRawFNToRecFN.scala 96:66:chipyard.TestHarness.RocketConfig.fir@235273.4]
  wire  _T_2; // @[RoundAnyRawFNToRecFN.scala 96:63:chipyard.TestHarness.RocketConfig.fir@235274.4]
  wire  roundMagUp; // @[RoundAnyRawFNToRecFN.scala 96:42:chipyard.TestHarness.RocketConfig.fir@235275.4]
  wire [9:0] _T_3; // @[RoundAnyRawFNToRecFN.scala 102:25:chipyard.TestHarness.RocketConfig.fir@235276.4]
  wire [9:0] sAdjustedExp; // @[RoundAnyRawFNToRecFN.scala 104:31:chipyard.TestHarness.RocketConfig.fir@235278.4]
  wire  _T_7; // @[RoundAnyRawFNToRecFN.scala 115:60:chipyard.TestHarness.RocketConfig.fir@235281.4]
  wire [26:0] adjustedSig; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@235282.4]
  wire [26:0] _T_14; // @[RoundAnyRawFNToRecFN.scala 162:40:chipyard.TestHarness.RocketConfig.fir@235301.4]
  wire  _T_15; // @[RoundAnyRawFNToRecFN.scala 162:56:chipyard.TestHarness.RocketConfig.fir@235302.4]
  wire [26:0] _T_16; // @[RoundAnyRawFNToRecFN.scala 163:42:chipyard.TestHarness.RocketConfig.fir@235303.4]
  wire  _T_17; // @[RoundAnyRawFNToRecFN.scala 163:62:chipyard.TestHarness.RocketConfig.fir@235304.4]
  wire  common_inexact; // @[RoundAnyRawFNToRecFN.scala 164:36:chipyard.TestHarness.RocketConfig.fir@235305.4]
  wire  _T_19; // @[RoundAnyRawFNToRecFN.scala 167:38:chipyard.TestHarness.RocketConfig.fir@235306.4]
  wire  _T_20; // @[RoundAnyRawFNToRecFN.scala 167:67:chipyard.TestHarness.RocketConfig.fir@235307.4]
  wire  _T_21; // @[RoundAnyRawFNToRecFN.scala 169:29:chipyard.TestHarness.RocketConfig.fir@235308.4]
  wire  _T_22; // @[RoundAnyRawFNToRecFN.scala 168:31:chipyard.TestHarness.RocketConfig.fir@235309.4]
  wire [26:0] _T_23; // @[RoundAnyRawFNToRecFN.scala 172:32:chipyard.TestHarness.RocketConfig.fir@235310.4]
  wire [25:0] _T_25; // @[RoundAnyRawFNToRecFN.scala 172:49:chipyard.TestHarness.RocketConfig.fir@235312.4]
  wire  _T_26; // @[RoundAnyRawFNToRecFN.scala 173:49:chipyard.TestHarness.RocketConfig.fir@235313.4]
  wire  _T_27; // @[RoundAnyRawFNToRecFN.scala 174:30:chipyard.TestHarness.RocketConfig.fir@235314.4]
  wire  _T_28; // @[RoundAnyRawFNToRecFN.scala 173:64:chipyard.TestHarness.RocketConfig.fir@235315.4]
  wire [25:0] _T_30; // @[RoundAnyRawFNToRecFN.scala 173:25:chipyard.TestHarness.RocketConfig.fir@235317.4]
  wire [25:0] _T_31; // @[RoundAnyRawFNToRecFN.scala 173:21:chipyard.TestHarness.RocketConfig.fir@235318.4]
  wire [25:0] _T_32; // @[RoundAnyRawFNToRecFN.scala 172:61:chipyard.TestHarness.RocketConfig.fir@235319.4]
  wire [26:0] _T_34; // @[RoundAnyRawFNToRecFN.scala 178:30:chipyard.TestHarness.RocketConfig.fir@235321.4]
  wire  _T_36; // @[RoundAnyRawFNToRecFN.scala 179:42:chipyard.TestHarness.RocketConfig.fir@235323.4]
  wire [25:0] _T_38; // @[RoundAnyRawFNToRecFN.scala 179:24:chipyard.TestHarness.RocketConfig.fir@235325.4]
  wire [25:0] _GEN_0; // @[RoundAnyRawFNToRecFN.scala 178:47:chipyard.TestHarness.RocketConfig.fir@235326.4]
  wire [25:0] _T_39; // @[RoundAnyRawFNToRecFN.scala 178:47:chipyard.TestHarness.RocketConfig.fir@235326.4]
  wire [25:0] _T_40; // @[RoundAnyRawFNToRecFN.scala 171:16:chipyard.TestHarness.RocketConfig.fir@235327.4]
  wire [2:0] _T_42; // @[RoundAnyRawFNToRecFN.scala 183:69:chipyard.TestHarness.RocketConfig.fir@235329.4]
  wire [9:0] _GEN_1; // @[RoundAnyRawFNToRecFN.scala 183:40:chipyard.TestHarness.RocketConfig.fir@235330.4]
  wire [10:0] _T_43; // @[RoundAnyRawFNToRecFN.scala 183:40:chipyard.TestHarness.RocketConfig.fir@235330.4]
  wire [8:0] common_expOut; // @[RoundAnyRawFNToRecFN.scala 185:37:chipyard.TestHarness.RocketConfig.fir@235331.4]
  wire [22:0] common_fractOut; // @[RoundAnyRawFNToRecFN.scala 189:27:chipyard.TestHarness.RocketConfig.fir@235334.4]
  wire  commonCase; // @[RoundAnyRawFNToRecFN.scala 235:64:chipyard.TestHarness.RocketConfig.fir@235362.4]
  wire  inexact; // @[RoundAnyRawFNToRecFN.scala 238:43:chipyard.TestHarness.RocketConfig.fir@235366.4]
  wire [8:0] _T_75; // @[RoundAnyRawFNToRecFN.scala 251:18:chipyard.TestHarness.RocketConfig.fir@235379.4]
  wire [8:0] _T_76; // @[RoundAnyRawFNToRecFN.scala 251:14:chipyard.TestHarness.RocketConfig.fir@235380.4]
  wire [8:0] expOut; // @[RoundAnyRawFNToRecFN.scala 250:24:chipyard.TestHarness.RocketConfig.fir@235381.4]
  wire [22:0] fractOut; // @[RoundAnyRawFNToRecFN.scala 278:12:chipyard.TestHarness.RocketConfig.fir@235403.4]
  wire [9:0] _T_101; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@235407.4]
  wire [1:0] _T_103; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@235410.4]
  assign roundingMode_near_even = io_roundingMode == 3'h0; // @[RoundAnyRawFNToRecFN.scala 88:53:chipyard.TestHarness.RocketConfig.fir@235266.4]
  assign roundingMode_min = io_roundingMode == 3'h2; // @[RoundAnyRawFNToRecFN.scala 90:53:chipyard.TestHarness.RocketConfig.fir@235268.4]
  assign roundingMode_max = io_roundingMode == 3'h3; // @[RoundAnyRawFNToRecFN.scala 91:53:chipyard.TestHarness.RocketConfig.fir@235269.4]
  assign roundingMode_near_maxMag = io_roundingMode == 3'h4; // @[RoundAnyRawFNToRecFN.scala 92:53:chipyard.TestHarness.RocketConfig.fir@235270.4]
  assign roundingMode_odd = io_roundingMode == 3'h6; // @[RoundAnyRawFNToRecFN.scala 93:53:chipyard.TestHarness.RocketConfig.fir@235271.4]
  assign _T = roundingMode_min & io_in_sign; // @[RoundAnyRawFNToRecFN.scala 96:27:chipyard.TestHarness.RocketConfig.fir@235272.4]
  assign _T_1 = ~io_in_sign; // @[RoundAnyRawFNToRecFN.scala 96:66:chipyard.TestHarness.RocketConfig.fir@235273.4]
  assign _T_2 = roundingMode_max & _T_1; // @[RoundAnyRawFNToRecFN.scala 96:63:chipyard.TestHarness.RocketConfig.fir@235274.4]
  assign roundMagUp = _T | _T_2; // @[RoundAnyRawFNToRecFN.scala 96:42:chipyard.TestHarness.RocketConfig.fir@235275.4]
  assign _T_3 = $signed(io_in_sExp) + 9'sh80; // @[RoundAnyRawFNToRecFN.scala 102:25:chipyard.TestHarness.RocketConfig.fir@235276.4]
  assign sAdjustedExp = {1'b0,$signed(_T_3[8:0])}; // @[RoundAnyRawFNToRecFN.scala 104:31:chipyard.TestHarness.RocketConfig.fir@235278.4]
  assign _T_7 = |io_in_sig[38:0]; // @[RoundAnyRawFNToRecFN.scala 115:60:chipyard.TestHarness.RocketConfig.fir@235281.4]
  assign adjustedSig = {io_in_sig[64:39],_T_7}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@235282.4]
  assign _T_14 = adjustedSig & 27'h2; // @[RoundAnyRawFNToRecFN.scala 162:40:chipyard.TestHarness.RocketConfig.fir@235301.4]
  assign _T_15 = |_T_14; // @[RoundAnyRawFNToRecFN.scala 162:56:chipyard.TestHarness.RocketConfig.fir@235302.4]
  assign _T_16 = adjustedSig & 27'h1; // @[RoundAnyRawFNToRecFN.scala 163:42:chipyard.TestHarness.RocketConfig.fir@235303.4]
  assign _T_17 = |_T_16; // @[RoundAnyRawFNToRecFN.scala 163:62:chipyard.TestHarness.RocketConfig.fir@235304.4]
  assign common_inexact = _T_15 | _T_17; // @[RoundAnyRawFNToRecFN.scala 164:36:chipyard.TestHarness.RocketConfig.fir@235305.4]
  assign _T_19 = roundingMode_near_even | roundingMode_near_maxMag; // @[RoundAnyRawFNToRecFN.scala 167:38:chipyard.TestHarness.RocketConfig.fir@235306.4]
  assign _T_20 = _T_19 & _T_15; // @[RoundAnyRawFNToRecFN.scala 167:67:chipyard.TestHarness.RocketConfig.fir@235307.4]
  assign _T_21 = roundMagUp & common_inexact; // @[RoundAnyRawFNToRecFN.scala 169:29:chipyard.TestHarness.RocketConfig.fir@235308.4]
  assign _T_22 = _T_20 | _T_21; // @[RoundAnyRawFNToRecFN.scala 168:31:chipyard.TestHarness.RocketConfig.fir@235309.4]
  assign _T_23 = adjustedSig | 27'h3; // @[RoundAnyRawFNToRecFN.scala 172:32:chipyard.TestHarness.RocketConfig.fir@235310.4]
  assign _T_25 = _T_23[26:2] + 25'h1; // @[RoundAnyRawFNToRecFN.scala 172:49:chipyard.TestHarness.RocketConfig.fir@235312.4]
  assign _T_26 = roundingMode_near_even & _T_15; // @[RoundAnyRawFNToRecFN.scala 173:49:chipyard.TestHarness.RocketConfig.fir@235313.4]
  assign _T_27 = ~_T_17; // @[RoundAnyRawFNToRecFN.scala 174:30:chipyard.TestHarness.RocketConfig.fir@235314.4]
  assign _T_28 = _T_26 & _T_27; // @[RoundAnyRawFNToRecFN.scala 173:64:chipyard.TestHarness.RocketConfig.fir@235315.4]
  assign _T_30 = _T_28 ? 26'h1 : 26'h0; // @[RoundAnyRawFNToRecFN.scala 173:25:chipyard.TestHarness.RocketConfig.fir@235317.4]
  assign _T_31 = ~_T_30; // @[RoundAnyRawFNToRecFN.scala 173:21:chipyard.TestHarness.RocketConfig.fir@235318.4]
  assign _T_32 = _T_25 & _T_31; // @[RoundAnyRawFNToRecFN.scala 172:61:chipyard.TestHarness.RocketConfig.fir@235319.4]
  assign _T_34 = adjustedSig & 27'h7fffffc; // @[RoundAnyRawFNToRecFN.scala 178:30:chipyard.TestHarness.RocketConfig.fir@235321.4]
  assign _T_36 = roundingMode_odd & common_inexact; // @[RoundAnyRawFNToRecFN.scala 179:42:chipyard.TestHarness.RocketConfig.fir@235323.4]
  assign _T_38 = _T_36 ? 26'h1 : 26'h0; // @[RoundAnyRawFNToRecFN.scala 179:24:chipyard.TestHarness.RocketConfig.fir@235325.4]
  assign _GEN_0 = {{1'd0}, _T_34[26:2]}; // @[RoundAnyRawFNToRecFN.scala 178:47:chipyard.TestHarness.RocketConfig.fir@235326.4]
  assign _T_39 = _GEN_0 | _T_38; // @[RoundAnyRawFNToRecFN.scala 178:47:chipyard.TestHarness.RocketConfig.fir@235326.4]
  assign _T_40 = _T_22 ? _T_32 : _T_39; // @[RoundAnyRawFNToRecFN.scala 171:16:chipyard.TestHarness.RocketConfig.fir@235327.4]
  assign _T_42 = {1'b0,$signed(_T_40[25:24])}; // @[RoundAnyRawFNToRecFN.scala 183:69:chipyard.TestHarness.RocketConfig.fir@235329.4]
  assign _GEN_1 = {{7{_T_42[2]}},_T_42}; // @[RoundAnyRawFNToRecFN.scala 183:40:chipyard.TestHarness.RocketConfig.fir@235330.4]
  assign _T_43 = $signed(sAdjustedExp) + $signed(_GEN_1); // @[RoundAnyRawFNToRecFN.scala 183:40:chipyard.TestHarness.RocketConfig.fir@235330.4]
  assign common_expOut = _T_43[8:0]; // @[RoundAnyRawFNToRecFN.scala 185:37:chipyard.TestHarness.RocketConfig.fir@235331.4]
  assign common_fractOut = _T_40[22:0]; // @[RoundAnyRawFNToRecFN.scala 189:27:chipyard.TestHarness.RocketConfig.fir@235334.4]
  assign commonCase = ~io_in_isZero; // @[RoundAnyRawFNToRecFN.scala 235:64:chipyard.TestHarness.RocketConfig.fir@235362.4]
  assign inexact = commonCase & common_inexact; // @[RoundAnyRawFNToRecFN.scala 238:43:chipyard.TestHarness.RocketConfig.fir@235366.4]
  assign _T_75 = io_in_isZero ? 9'h1c0 : 9'h0; // @[RoundAnyRawFNToRecFN.scala 251:18:chipyard.TestHarness.RocketConfig.fir@235379.4]
  assign _T_76 = ~_T_75; // @[RoundAnyRawFNToRecFN.scala 251:14:chipyard.TestHarness.RocketConfig.fir@235380.4]
  assign expOut = common_expOut & _T_76; // @[RoundAnyRawFNToRecFN.scala 250:24:chipyard.TestHarness.RocketConfig.fir@235381.4]
  assign fractOut = io_in_isZero ? 23'h0 : common_fractOut; // @[RoundAnyRawFNToRecFN.scala 278:12:chipyard.TestHarness.RocketConfig.fir@235403.4]
  assign _T_101 = {io_in_sign,expOut}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@235407.4]
  assign _T_103 = {1'h0,inexact}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@235410.4]
  assign io_out = {_T_101,fractOut}; // @[RoundAnyRawFNToRecFN.scala 284:12:chipyard.TestHarness.RocketConfig.fir@235409.4]
  assign io_exceptionFlags = {3'h0,_T_103}; // @[RoundAnyRawFNToRecFN.scala 285:23:chipyard.TestHarness.RocketConfig.fir@235414.4]
endmodule
