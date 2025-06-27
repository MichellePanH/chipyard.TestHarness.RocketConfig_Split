module DivSqrtRecFN_small( // @[:chipyard.TestHarness.RocketConfig.fir@238778.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@238779.4]
  input         reset, // @[:chipyard.TestHarness.RocketConfig.fir@238780.4]
  output        io_inReady, // @[:chipyard.TestHarness.RocketConfig.fir@238781.4]
  input         io_inValid, // @[:chipyard.TestHarness.RocketConfig.fir@238781.4]
  input         io_sqrtOp, // @[:chipyard.TestHarness.RocketConfig.fir@238781.4]
  input  [32:0] io_a, // @[:chipyard.TestHarness.RocketConfig.fir@238781.4]
  input  [32:0] io_b, // @[:chipyard.TestHarness.RocketConfig.fir@238781.4]
  input  [2:0]  io_roundingMode, // @[:chipyard.TestHarness.RocketConfig.fir@238781.4]
  output        io_outValid_div, // @[:chipyard.TestHarness.RocketConfig.fir@238781.4]
  output        io_outValid_sqrt, // @[:chipyard.TestHarness.RocketConfig.fir@238781.4]
  output [32:0] io_out, // @[:chipyard.TestHarness.RocketConfig.fir@238781.4]
  output [4:0]  io_exceptionFlags // @[:chipyard.TestHarness.RocketConfig.fir@238781.4]
);
  wire  divSqrtRecFNToRaw_clock; // @[DivSqrtRecFN_small.scala 462:15:chipyard.TestHarness.RocketConfig.fir@238783.4]
  wire  divSqrtRecFNToRaw_reset; // @[DivSqrtRecFN_small.scala 462:15:chipyard.TestHarness.RocketConfig.fir@238783.4]
  wire  divSqrtRecFNToRaw_io_inReady; // @[DivSqrtRecFN_small.scala 462:15:chipyard.TestHarness.RocketConfig.fir@238783.4]
  wire  divSqrtRecFNToRaw_io_inValid; // @[DivSqrtRecFN_small.scala 462:15:chipyard.TestHarness.RocketConfig.fir@238783.4]
  wire  divSqrtRecFNToRaw_io_sqrtOp; // @[DivSqrtRecFN_small.scala 462:15:chipyard.TestHarness.RocketConfig.fir@238783.4]
  wire [32:0] divSqrtRecFNToRaw_io_a; // @[DivSqrtRecFN_small.scala 462:15:chipyard.TestHarness.RocketConfig.fir@238783.4]
  wire [32:0] divSqrtRecFNToRaw_io_b; // @[DivSqrtRecFN_small.scala 462:15:chipyard.TestHarness.RocketConfig.fir@238783.4]
  wire [2:0] divSqrtRecFNToRaw_io_roundingMode; // @[DivSqrtRecFN_small.scala 462:15:chipyard.TestHarness.RocketConfig.fir@238783.4]
  wire  divSqrtRecFNToRaw_io_rawOutValid_div; // @[DivSqrtRecFN_small.scala 462:15:chipyard.TestHarness.RocketConfig.fir@238783.4]
  wire  divSqrtRecFNToRaw_io_rawOutValid_sqrt; // @[DivSqrtRecFN_small.scala 462:15:chipyard.TestHarness.RocketConfig.fir@238783.4]
  wire [2:0] divSqrtRecFNToRaw_io_roundingModeOut; // @[DivSqrtRecFN_small.scala 462:15:chipyard.TestHarness.RocketConfig.fir@238783.4]
  wire  divSqrtRecFNToRaw_io_invalidExc; // @[DivSqrtRecFN_small.scala 462:15:chipyard.TestHarness.RocketConfig.fir@238783.4]
  wire  divSqrtRecFNToRaw_io_infiniteExc; // @[DivSqrtRecFN_small.scala 462:15:chipyard.TestHarness.RocketConfig.fir@238783.4]
  wire  divSqrtRecFNToRaw_io_rawOut_isNaN; // @[DivSqrtRecFN_small.scala 462:15:chipyard.TestHarness.RocketConfig.fir@238783.4]
  wire  divSqrtRecFNToRaw_io_rawOut_isInf; // @[DivSqrtRecFN_small.scala 462:15:chipyard.TestHarness.RocketConfig.fir@238783.4]
  wire  divSqrtRecFNToRaw_io_rawOut_isZero; // @[DivSqrtRecFN_small.scala 462:15:chipyard.TestHarness.RocketConfig.fir@238783.4]
  wire  divSqrtRecFNToRaw_io_rawOut_sign; // @[DivSqrtRecFN_small.scala 462:15:chipyard.TestHarness.RocketConfig.fir@238783.4]
  wire [9:0] divSqrtRecFNToRaw_io_rawOut_sExp; // @[DivSqrtRecFN_small.scala 462:15:chipyard.TestHarness.RocketConfig.fir@238783.4]
  wire [26:0] divSqrtRecFNToRaw_io_rawOut_sig; // @[DivSqrtRecFN_small.scala 462:15:chipyard.TestHarness.RocketConfig.fir@238783.4]
  wire  roundRawFNToRecFN_io_invalidExc; // @[DivSqrtRecFN_small.scala 477:15:chipyard.TestHarness.RocketConfig.fir@238794.4]
  wire  roundRawFNToRecFN_io_infiniteExc; // @[DivSqrtRecFN_small.scala 477:15:chipyard.TestHarness.RocketConfig.fir@238794.4]
  wire  roundRawFNToRecFN_io_in_isNaN; // @[DivSqrtRecFN_small.scala 477:15:chipyard.TestHarness.RocketConfig.fir@238794.4]
  wire  roundRawFNToRecFN_io_in_isInf; // @[DivSqrtRecFN_small.scala 477:15:chipyard.TestHarness.RocketConfig.fir@238794.4]
  wire  roundRawFNToRecFN_io_in_isZero; // @[DivSqrtRecFN_small.scala 477:15:chipyard.TestHarness.RocketConfig.fir@238794.4]
  wire  roundRawFNToRecFN_io_in_sign; // @[DivSqrtRecFN_small.scala 477:15:chipyard.TestHarness.RocketConfig.fir@238794.4]
  wire [9:0] roundRawFNToRecFN_io_in_sExp; // @[DivSqrtRecFN_small.scala 477:15:chipyard.TestHarness.RocketConfig.fir@238794.4]
  wire [26:0] roundRawFNToRecFN_io_in_sig; // @[DivSqrtRecFN_small.scala 477:15:chipyard.TestHarness.RocketConfig.fir@238794.4]
  wire [2:0] roundRawFNToRecFN_io_roundingMode; // @[DivSqrtRecFN_small.scala 477:15:chipyard.TestHarness.RocketConfig.fir@238794.4]
  wire [32:0] roundRawFNToRecFN_io_out; // @[DivSqrtRecFN_small.scala 477:15:chipyard.TestHarness.RocketConfig.fir@238794.4]
  wire [4:0] roundRawFNToRecFN_io_exceptionFlags; // @[DivSqrtRecFN_small.scala 477:15:chipyard.TestHarness.RocketConfig.fir@238794.4]
  DivSqrtRecFNToRaw_small divSqrtRecFNToRaw ( // @[DivSqrtRecFN_small.scala 462:15:chipyard.TestHarness.RocketConfig.fir@238783.4]
    .clock(divSqrtRecFNToRaw_clock),
    .reset(divSqrtRecFNToRaw_reset),
    .io_inReady(divSqrtRecFNToRaw_io_inReady),
    .io_inValid(divSqrtRecFNToRaw_io_inValid),
    .io_sqrtOp(divSqrtRecFNToRaw_io_sqrtOp),
    .io_a(divSqrtRecFNToRaw_io_a),
    .io_b(divSqrtRecFNToRaw_io_b),
    .io_roundingMode(divSqrtRecFNToRaw_io_roundingMode),
    .io_rawOutValid_div(divSqrtRecFNToRaw_io_rawOutValid_div),
    .io_rawOutValid_sqrt(divSqrtRecFNToRaw_io_rawOutValid_sqrt),
    .io_roundingModeOut(divSqrtRecFNToRaw_io_roundingModeOut),
    .io_invalidExc(divSqrtRecFNToRaw_io_invalidExc),
    .io_infiniteExc(divSqrtRecFNToRaw_io_infiniteExc),
    .io_rawOut_isNaN(divSqrtRecFNToRaw_io_rawOut_isNaN),
    .io_rawOut_isInf(divSqrtRecFNToRaw_io_rawOut_isInf),
    .io_rawOut_isZero(divSqrtRecFNToRaw_io_rawOut_isZero),
    .io_rawOut_sign(divSqrtRecFNToRaw_io_rawOut_sign),
    .io_rawOut_sExp(divSqrtRecFNToRaw_io_rawOut_sExp),
    .io_rawOut_sig(divSqrtRecFNToRaw_io_rawOut_sig)
  );
  RoundRawFNToRecFN roundRawFNToRecFN ( // @[DivSqrtRecFN_small.scala 477:15:chipyard.TestHarness.RocketConfig.fir@238794.4]
    .io_invalidExc(roundRawFNToRecFN_io_invalidExc),
    .io_infiniteExc(roundRawFNToRecFN_io_infiniteExc),
    .io_in_isNaN(roundRawFNToRecFN_io_in_isNaN),
    .io_in_isInf(roundRawFNToRecFN_io_in_isInf),
    .io_in_isZero(roundRawFNToRecFN_io_in_isZero),
    .io_in_sign(roundRawFNToRecFN_io_in_sign),
    .io_in_sExp(roundRawFNToRecFN_io_in_sExp),
    .io_in_sig(roundRawFNToRecFN_io_in_sig),
    .io_roundingMode(roundRawFNToRecFN_io_roundingMode),
    .io_out(roundRawFNToRecFN_io_out),
    .io_exceptionFlags(roundRawFNToRecFN_io_exceptionFlags)
  );
  assign io_inReady = divSqrtRecFNToRaw_io_inReady; // @[DivSqrtRecFN_small.scala 464:16:chipyard.TestHarness.RocketConfig.fir@238786.4]
  assign io_outValid_div = divSqrtRecFNToRaw_io_rawOutValid_div; // @[DivSqrtRecFN_small.scala 473:22:chipyard.TestHarness.RocketConfig.fir@238792.4]
  assign io_outValid_sqrt = divSqrtRecFNToRaw_io_rawOutValid_sqrt; // @[DivSqrtRecFN_small.scala 474:22:chipyard.TestHarness.RocketConfig.fir@238793.4]
  assign io_out = roundRawFNToRecFN_io_out; // @[DivSqrtRecFN_small.scala 483:23:chipyard.TestHarness.RocketConfig.fir@238805.4]
  assign io_exceptionFlags = roundRawFNToRecFN_io_exceptionFlags; // @[DivSqrtRecFN_small.scala 484:23:chipyard.TestHarness.RocketConfig.fir@238806.4]
  assign divSqrtRecFNToRaw_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@238784.4]
  assign divSqrtRecFNToRaw_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@238785.4]
  assign divSqrtRecFNToRaw_io_inValid = io_inValid; // @[DivSqrtRecFN_small.scala 465:39:chipyard.TestHarness.RocketConfig.fir@238787.4]
  assign divSqrtRecFNToRaw_io_sqrtOp = io_sqrtOp; // @[DivSqrtRecFN_small.scala 466:39:chipyard.TestHarness.RocketConfig.fir@238788.4]
  assign divSqrtRecFNToRaw_io_a = io_a; // @[DivSqrtRecFN_small.scala 467:39:chipyard.TestHarness.RocketConfig.fir@238789.4]
  assign divSqrtRecFNToRaw_io_b = io_b; // @[DivSqrtRecFN_small.scala 468:39:chipyard.TestHarness.RocketConfig.fir@238790.4]
  assign divSqrtRecFNToRaw_io_roundingMode = io_roundingMode; // @[DivSqrtRecFN_small.scala 469:39:chipyard.TestHarness.RocketConfig.fir@238791.4]
  assign roundRawFNToRecFN_io_invalidExc = divSqrtRecFNToRaw_io_invalidExc; // @[DivSqrtRecFN_small.scala 478:39:chipyard.TestHarness.RocketConfig.fir@238795.4]
  assign roundRawFNToRecFN_io_infiniteExc = divSqrtRecFNToRaw_io_infiniteExc; // @[DivSqrtRecFN_small.scala 479:39:chipyard.TestHarness.RocketConfig.fir@238796.4]
  assign roundRawFNToRecFN_io_in_isNaN = divSqrtRecFNToRaw_io_rawOut_isNaN; // @[DivSqrtRecFN_small.scala 480:39:chipyard.TestHarness.RocketConfig.fir@238802.4]
  assign roundRawFNToRecFN_io_in_isInf = divSqrtRecFNToRaw_io_rawOut_isInf; // @[DivSqrtRecFN_small.scala 480:39:chipyard.TestHarness.RocketConfig.fir@238801.4]
  assign roundRawFNToRecFN_io_in_isZero = divSqrtRecFNToRaw_io_rawOut_isZero; // @[DivSqrtRecFN_small.scala 480:39:chipyard.TestHarness.RocketConfig.fir@238800.4]
  assign roundRawFNToRecFN_io_in_sign = divSqrtRecFNToRaw_io_rawOut_sign; // @[DivSqrtRecFN_small.scala 480:39:chipyard.TestHarness.RocketConfig.fir@238799.4]
  assign roundRawFNToRecFN_io_in_sExp = divSqrtRecFNToRaw_io_rawOut_sExp; // @[DivSqrtRecFN_small.scala 480:39:chipyard.TestHarness.RocketConfig.fir@238798.4]
  assign roundRawFNToRecFN_io_in_sig = divSqrtRecFNToRaw_io_rawOut_sig; // @[DivSqrtRecFN_small.scala 480:39:chipyard.TestHarness.RocketConfig.fir@238797.4]
  assign roundRawFNToRecFN_io_roundingMode = divSqrtRecFNToRaw_io_roundingModeOut; // @[DivSqrtRecFN_small.scala 481:39:chipyard.TestHarness.RocketConfig.fir@238803.4]
endmodule
