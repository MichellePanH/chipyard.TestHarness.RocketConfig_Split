module RoundRawFNToRecFN_1( // @[:chipyard.TestHarness.RocketConfig.fir@237948.2]
  input         io_invalidExc, // @[:chipyard.TestHarness.RocketConfig.fir@237949.4]
  input         io_infiniteExc, // @[:chipyard.TestHarness.RocketConfig.fir@237949.4]
  input         io_in_isNaN, // @[:chipyard.TestHarness.RocketConfig.fir@237949.4]
  input         io_in_isInf, // @[:chipyard.TestHarness.RocketConfig.fir@237949.4]
  input         io_in_isZero, // @[:chipyard.TestHarness.RocketConfig.fir@237949.4]
  input         io_in_sign, // @[:chipyard.TestHarness.RocketConfig.fir@237949.4]
  input  [12:0] io_in_sExp, // @[:chipyard.TestHarness.RocketConfig.fir@237949.4]
  input  [55:0] io_in_sig, // @[:chipyard.TestHarness.RocketConfig.fir@237949.4]
  input  [2:0]  io_roundingMode, // @[:chipyard.TestHarness.RocketConfig.fir@237949.4]
  output [64:0] io_out, // @[:chipyard.TestHarness.RocketConfig.fir@237949.4]
  output [4:0]  io_exceptionFlags // @[:chipyard.TestHarness.RocketConfig.fir@237949.4]
);
  wire  roundAnyRawFNToRecFN_io_invalidExc; // @[RoundAnyRawFNToRecFN.scala 307:15:chipyard.TestHarness.RocketConfig.fir@237952.4]
  wire  roundAnyRawFNToRecFN_io_infiniteExc; // @[RoundAnyRawFNToRecFN.scala 307:15:chipyard.TestHarness.RocketConfig.fir@237952.4]
  wire  roundAnyRawFNToRecFN_io_in_isNaN; // @[RoundAnyRawFNToRecFN.scala 307:15:chipyard.TestHarness.RocketConfig.fir@237952.4]
  wire  roundAnyRawFNToRecFN_io_in_isInf; // @[RoundAnyRawFNToRecFN.scala 307:15:chipyard.TestHarness.RocketConfig.fir@237952.4]
  wire  roundAnyRawFNToRecFN_io_in_isZero; // @[RoundAnyRawFNToRecFN.scala 307:15:chipyard.TestHarness.RocketConfig.fir@237952.4]
  wire  roundAnyRawFNToRecFN_io_in_sign; // @[RoundAnyRawFNToRecFN.scala 307:15:chipyard.TestHarness.RocketConfig.fir@237952.4]
  wire [12:0] roundAnyRawFNToRecFN_io_in_sExp; // @[RoundAnyRawFNToRecFN.scala 307:15:chipyard.TestHarness.RocketConfig.fir@237952.4]
  wire [55:0] roundAnyRawFNToRecFN_io_in_sig; // @[RoundAnyRawFNToRecFN.scala 307:15:chipyard.TestHarness.RocketConfig.fir@237952.4]
  wire [2:0] roundAnyRawFNToRecFN_io_roundingMode; // @[RoundAnyRawFNToRecFN.scala 307:15:chipyard.TestHarness.RocketConfig.fir@237952.4]
  wire [64:0] roundAnyRawFNToRecFN_io_out; // @[RoundAnyRawFNToRecFN.scala 307:15:chipyard.TestHarness.RocketConfig.fir@237952.4]
  wire [4:0] roundAnyRawFNToRecFN_io_exceptionFlags; // @[RoundAnyRawFNToRecFN.scala 307:15:chipyard.TestHarness.RocketConfig.fir@237952.4]
  RoundAnyRawFNToRecFN_4 roundAnyRawFNToRecFN ( // @[RoundAnyRawFNToRecFN.scala 307:15:chipyard.TestHarness.RocketConfig.fir@237952.4]
    .io_invalidExc(roundAnyRawFNToRecFN_io_invalidExc),
    .io_infiniteExc(roundAnyRawFNToRecFN_io_infiniteExc),
    .io_in_isNaN(roundAnyRawFNToRecFN_io_in_isNaN),
    .io_in_isInf(roundAnyRawFNToRecFN_io_in_isInf),
    .io_in_isZero(roundAnyRawFNToRecFN_io_in_isZero),
    .io_in_sign(roundAnyRawFNToRecFN_io_in_sign),
    .io_in_sExp(roundAnyRawFNToRecFN_io_in_sExp),
    .io_in_sig(roundAnyRawFNToRecFN_io_in_sig),
    .io_roundingMode(roundAnyRawFNToRecFN_io_roundingMode),
    .io_out(roundAnyRawFNToRecFN_io_out),
    .io_exceptionFlags(roundAnyRawFNToRecFN_io_exceptionFlags)
  );
  assign io_out = roundAnyRawFNToRecFN_io_out; // @[RoundAnyRawFNToRecFN.scala 315:23:chipyard.TestHarness.RocketConfig.fir@237959.4]
  assign io_exceptionFlags = roundAnyRawFNToRecFN_io_exceptionFlags; // @[RoundAnyRawFNToRecFN.scala 316:23:chipyard.TestHarness.RocketConfig.fir@237960.4]
  assign roundAnyRawFNToRecFN_io_invalidExc = io_invalidExc; // @[RoundAnyRawFNToRecFN.scala 310:44:chipyard.TestHarness.RocketConfig.fir@237954.4]
  assign roundAnyRawFNToRecFN_io_infiniteExc = io_infiniteExc; // @[RoundAnyRawFNToRecFN.scala 311:44:chipyard.TestHarness.RocketConfig.fir@237955.4]
  assign roundAnyRawFNToRecFN_io_in_isNaN = io_in_isNaN; // @[RoundAnyRawFNToRecFN.scala 312:44:chipyard.TestHarness.RocketConfig.fir@237956.4]
  assign roundAnyRawFNToRecFN_io_in_isInf = io_in_isInf; // @[RoundAnyRawFNToRecFN.scala 312:44:chipyard.TestHarness.RocketConfig.fir@237956.4]
  assign roundAnyRawFNToRecFN_io_in_isZero = io_in_isZero; // @[RoundAnyRawFNToRecFN.scala 312:44:chipyard.TestHarness.RocketConfig.fir@237956.4]
  assign roundAnyRawFNToRecFN_io_in_sign = io_in_sign; // @[RoundAnyRawFNToRecFN.scala 312:44:chipyard.TestHarness.RocketConfig.fir@237956.4]
  assign roundAnyRawFNToRecFN_io_in_sExp = io_in_sExp; // @[RoundAnyRawFNToRecFN.scala 312:44:chipyard.TestHarness.RocketConfig.fir@237956.4]
  assign roundAnyRawFNToRecFN_io_in_sig = io_in_sig; // @[RoundAnyRawFNToRecFN.scala 312:44:chipyard.TestHarness.RocketConfig.fir@237956.4]
  assign roundAnyRawFNToRecFN_io_roundingMode = io_roundingMode; // @[RoundAnyRawFNToRecFN.scala 313:44:chipyard.TestHarness.RocketConfig.fir@237957.4]
endmodule
