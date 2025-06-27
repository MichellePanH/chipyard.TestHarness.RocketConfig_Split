module RecFNToRecFN( // @[:chipyard.TestHarness.RocketConfig.fir@236511.2]
  input  [64:0] io_in, // @[:chipyard.TestHarness.RocketConfig.fir@236512.4]
  input  [2:0]  io_roundingMode, // @[:chipyard.TestHarness.RocketConfig.fir@236512.4]
  output [32:0] io_out, // @[:chipyard.TestHarness.RocketConfig.fir@236512.4]
  output [4:0]  io_exceptionFlags // @[:chipyard.TestHarness.RocketConfig.fir@236512.4]
);
  wire  RoundAnyRawFNToRecFN_io_invalidExc; // @[RecFNToRecFN.scala 72:19:chipyard.TestHarness.RocketConfig.fir@236539.4]
  wire  RoundAnyRawFNToRecFN_io_in_isNaN; // @[RecFNToRecFN.scala 72:19:chipyard.TestHarness.RocketConfig.fir@236539.4]
  wire  RoundAnyRawFNToRecFN_io_in_isInf; // @[RecFNToRecFN.scala 72:19:chipyard.TestHarness.RocketConfig.fir@236539.4]
  wire  RoundAnyRawFNToRecFN_io_in_isZero; // @[RecFNToRecFN.scala 72:19:chipyard.TestHarness.RocketConfig.fir@236539.4]
  wire  RoundAnyRawFNToRecFN_io_in_sign; // @[RecFNToRecFN.scala 72:19:chipyard.TestHarness.RocketConfig.fir@236539.4]
  wire [12:0] RoundAnyRawFNToRecFN_io_in_sExp; // @[RecFNToRecFN.scala 72:19:chipyard.TestHarness.RocketConfig.fir@236539.4]
  wire [53:0] RoundAnyRawFNToRecFN_io_in_sig; // @[RecFNToRecFN.scala 72:19:chipyard.TestHarness.RocketConfig.fir@236539.4]
  wire [2:0] RoundAnyRawFNToRecFN_io_roundingMode; // @[RecFNToRecFN.scala 72:19:chipyard.TestHarness.RocketConfig.fir@236539.4]
  wire [32:0] RoundAnyRawFNToRecFN_io_out; // @[RecFNToRecFN.scala 72:19:chipyard.TestHarness.RocketConfig.fir@236539.4]
  wire [4:0] RoundAnyRawFNToRecFN_io_exceptionFlags; // @[RecFNToRecFN.scala 72:19:chipyard.TestHarness.RocketConfig.fir@236539.4]
  wire  rawIn_isZero; // @[rawFloatFromRecFN.scala 51:54:chipyard.TestHarness.RocketConfig.fir@236517.4]
  wire  _T_4; // @[rawFloatFromRecFN.scala 52:54:chipyard.TestHarness.RocketConfig.fir@236519.4]
  wire  rawIn_isNaN; // @[rawFloatFromRecFN.scala 55:33:chipyard.TestHarness.RocketConfig.fir@236523.4]
  wire  _T_8; // @[rawFloatFromRecFN.scala 56:36:chipyard.TestHarness.RocketConfig.fir@236526.4]
  wire  _T_12; // @[rawFloatFromRecFN.scala 60:39:chipyard.TestHarness.RocketConfig.fir@236534.4]
  wire [1:0] _T_14; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@236536.4]
  wire [53:0] rawIn_sig; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@236537.4]
  wire  _T_17; // @[common.scala 81:49:chipyard.TestHarness.RocketConfig.fir@236542.4]
  RoundAnyRawFNToRecFN_3 RoundAnyRawFNToRecFN ( // @[RecFNToRecFN.scala 72:19:chipyard.TestHarness.RocketConfig.fir@236539.4]
    .io_invalidExc(RoundAnyRawFNToRecFN_io_invalidExc),
    .io_in_isNaN(RoundAnyRawFNToRecFN_io_in_isNaN),
    .io_in_isInf(RoundAnyRawFNToRecFN_io_in_isInf),
    .io_in_isZero(RoundAnyRawFNToRecFN_io_in_isZero),
    .io_in_sign(RoundAnyRawFNToRecFN_io_in_sign),
    .io_in_sExp(RoundAnyRawFNToRecFN_io_in_sExp),
    .io_in_sig(RoundAnyRawFNToRecFN_io_in_sig),
    .io_roundingMode(RoundAnyRawFNToRecFN_io_roundingMode),
    .io_out(RoundAnyRawFNToRecFN_io_out),
    .io_exceptionFlags(RoundAnyRawFNToRecFN_io_exceptionFlags)
  );
  assign rawIn_isZero = io_in[63:61] == 3'h0; // @[rawFloatFromRecFN.scala 51:54:chipyard.TestHarness.RocketConfig.fir@236517.4]
  assign _T_4 = io_in[63:62] == 2'h3; // @[rawFloatFromRecFN.scala 52:54:chipyard.TestHarness.RocketConfig.fir@236519.4]
  assign rawIn_isNaN = _T_4 & io_in[61]; // @[rawFloatFromRecFN.scala 55:33:chipyard.TestHarness.RocketConfig.fir@236523.4]
  assign _T_8 = ~io_in[61]; // @[rawFloatFromRecFN.scala 56:36:chipyard.TestHarness.RocketConfig.fir@236526.4]
  assign _T_12 = ~rawIn_isZero; // @[rawFloatFromRecFN.scala 60:39:chipyard.TestHarness.RocketConfig.fir@236534.4]
  assign _T_14 = {1'h0,_T_12}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@236536.4]
  assign rawIn_sig = {1'h0,_T_12,io_in[51:0]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@236537.4]
  assign _T_17 = ~rawIn_sig[51]; // @[common.scala 81:49:chipyard.TestHarness.RocketConfig.fir@236542.4]
  assign io_out = RoundAnyRawFNToRecFN_io_out; // @[RecFNToRecFN.scala 85:27:chipyard.TestHarness.RocketConfig.fir@236549.4]
  assign io_exceptionFlags = RoundAnyRawFNToRecFN_io_exceptionFlags; // @[RecFNToRecFN.scala 86:27:chipyard.TestHarness.RocketConfig.fir@236550.4]
  assign RoundAnyRawFNToRecFN_io_invalidExc = rawIn_isNaN & _T_17; // @[RecFNToRecFN.scala 80:48:chipyard.TestHarness.RocketConfig.fir@236544.4]
  assign RoundAnyRawFNToRecFN_io_in_isNaN = _T_4 & io_in[61]; // @[RecFNToRecFN.scala 82:48:chipyard.TestHarness.RocketConfig.fir@236546.4]
  assign RoundAnyRawFNToRecFN_io_in_isInf = _T_4 & _T_8; // @[RecFNToRecFN.scala 82:48:chipyard.TestHarness.RocketConfig.fir@236546.4]
  assign RoundAnyRawFNToRecFN_io_in_isZero = io_in[63:61] == 3'h0; // @[RecFNToRecFN.scala 82:48:chipyard.TestHarness.RocketConfig.fir@236546.4]
  assign RoundAnyRawFNToRecFN_io_in_sign = io_in[64]; // @[RecFNToRecFN.scala 82:48:chipyard.TestHarness.RocketConfig.fir@236546.4]
  assign RoundAnyRawFNToRecFN_io_in_sExp = {1'b0,$signed(io_in[63:52])}; // @[RecFNToRecFN.scala 82:48:chipyard.TestHarness.RocketConfig.fir@236546.4]
  assign RoundAnyRawFNToRecFN_io_in_sig = {_T_14,io_in[51:0]}; // @[RecFNToRecFN.scala 82:48:chipyard.TestHarness.RocketConfig.fir@236546.4]
  assign RoundAnyRawFNToRecFN_io_roundingMode = io_roundingMode; // @[RecFNToRecFN.scala 83:48:chipyard.TestHarness.RocketConfig.fir@236547.4]
endmodule
