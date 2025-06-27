module DivSqrtRecFNToRaw_small( // @[:chipyard.TestHarness.RocketConfig.fir@238425.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@238426.4]
  input         reset, // @[:chipyard.TestHarness.RocketConfig.fir@238427.4]
  output        io_inReady, // @[:chipyard.TestHarness.RocketConfig.fir@238428.4]
  input         io_inValid, // @[:chipyard.TestHarness.RocketConfig.fir@238428.4]
  input         io_sqrtOp, // @[:chipyard.TestHarness.RocketConfig.fir@238428.4]
  input  [32:0] io_a, // @[:chipyard.TestHarness.RocketConfig.fir@238428.4]
  input  [32:0] io_b, // @[:chipyard.TestHarness.RocketConfig.fir@238428.4]
  input  [2:0]  io_roundingMode, // @[:chipyard.TestHarness.RocketConfig.fir@238428.4]
  output        io_rawOutValid_div, // @[:chipyard.TestHarness.RocketConfig.fir@238428.4]
  output        io_rawOutValid_sqrt, // @[:chipyard.TestHarness.RocketConfig.fir@238428.4]
  output [2:0]  io_roundingModeOut, // @[:chipyard.TestHarness.RocketConfig.fir@238428.4]
  output        io_invalidExc, // @[:chipyard.TestHarness.RocketConfig.fir@238428.4]
  output        io_infiniteExc, // @[:chipyard.TestHarness.RocketConfig.fir@238428.4]
  output        io_rawOut_isNaN, // @[:chipyard.TestHarness.RocketConfig.fir@238428.4]
  output        io_rawOut_isInf, // @[:chipyard.TestHarness.RocketConfig.fir@238428.4]
  output        io_rawOut_isZero, // @[:chipyard.TestHarness.RocketConfig.fir@238428.4]
  output        io_rawOut_sign, // @[:chipyard.TestHarness.RocketConfig.fir@238428.4]
  output [9:0]  io_rawOut_sExp, // @[:chipyard.TestHarness.RocketConfig.fir@238428.4]
  output [26:0] io_rawOut_sig // @[:chipyard.TestHarness.RocketConfig.fir@238428.4]
);
  wire  divSqrtRawFN_clock; // @[DivSqrtRecFN_small.scala 416:15:chipyard.TestHarness.RocketConfig.fir@238430.4]
  wire  divSqrtRawFN_reset; // @[DivSqrtRecFN_small.scala 416:15:chipyard.TestHarness.RocketConfig.fir@238430.4]
  wire  divSqrtRawFN_io_inReady; // @[DivSqrtRecFN_small.scala 416:15:chipyard.TestHarness.RocketConfig.fir@238430.4]
  wire  divSqrtRawFN_io_inValid; // @[DivSqrtRecFN_small.scala 416:15:chipyard.TestHarness.RocketConfig.fir@238430.4]
  wire  divSqrtRawFN_io_sqrtOp; // @[DivSqrtRecFN_small.scala 416:15:chipyard.TestHarness.RocketConfig.fir@238430.4]
  wire  divSqrtRawFN_io_a_isNaN; // @[DivSqrtRecFN_small.scala 416:15:chipyard.TestHarness.RocketConfig.fir@238430.4]
  wire  divSqrtRawFN_io_a_isInf; // @[DivSqrtRecFN_small.scala 416:15:chipyard.TestHarness.RocketConfig.fir@238430.4]
  wire  divSqrtRawFN_io_a_isZero; // @[DivSqrtRecFN_small.scala 416:15:chipyard.TestHarness.RocketConfig.fir@238430.4]
  wire  divSqrtRawFN_io_a_sign; // @[DivSqrtRecFN_small.scala 416:15:chipyard.TestHarness.RocketConfig.fir@238430.4]
  wire [9:0] divSqrtRawFN_io_a_sExp; // @[DivSqrtRecFN_small.scala 416:15:chipyard.TestHarness.RocketConfig.fir@238430.4]
  wire [24:0] divSqrtRawFN_io_a_sig; // @[DivSqrtRecFN_small.scala 416:15:chipyard.TestHarness.RocketConfig.fir@238430.4]
  wire  divSqrtRawFN_io_b_isNaN; // @[DivSqrtRecFN_small.scala 416:15:chipyard.TestHarness.RocketConfig.fir@238430.4]
  wire  divSqrtRawFN_io_b_isInf; // @[DivSqrtRecFN_small.scala 416:15:chipyard.TestHarness.RocketConfig.fir@238430.4]
  wire  divSqrtRawFN_io_b_isZero; // @[DivSqrtRecFN_small.scala 416:15:chipyard.TestHarness.RocketConfig.fir@238430.4]
  wire  divSqrtRawFN_io_b_sign; // @[DivSqrtRecFN_small.scala 416:15:chipyard.TestHarness.RocketConfig.fir@238430.4]
  wire [9:0] divSqrtRawFN_io_b_sExp; // @[DivSqrtRecFN_small.scala 416:15:chipyard.TestHarness.RocketConfig.fir@238430.4]
  wire [24:0] divSqrtRawFN_io_b_sig; // @[DivSqrtRecFN_small.scala 416:15:chipyard.TestHarness.RocketConfig.fir@238430.4]
  wire [2:0] divSqrtRawFN_io_roundingMode; // @[DivSqrtRecFN_small.scala 416:15:chipyard.TestHarness.RocketConfig.fir@238430.4]
  wire  divSqrtRawFN_io_rawOutValid_div; // @[DivSqrtRecFN_small.scala 416:15:chipyard.TestHarness.RocketConfig.fir@238430.4]
  wire  divSqrtRawFN_io_rawOutValid_sqrt; // @[DivSqrtRecFN_small.scala 416:15:chipyard.TestHarness.RocketConfig.fir@238430.4]
  wire [2:0] divSqrtRawFN_io_roundingModeOut; // @[DivSqrtRecFN_small.scala 416:15:chipyard.TestHarness.RocketConfig.fir@238430.4]
  wire  divSqrtRawFN_io_invalidExc; // @[DivSqrtRecFN_small.scala 416:15:chipyard.TestHarness.RocketConfig.fir@238430.4]
  wire  divSqrtRawFN_io_infiniteExc; // @[DivSqrtRecFN_small.scala 416:15:chipyard.TestHarness.RocketConfig.fir@238430.4]
  wire  divSqrtRawFN_io_rawOut_isNaN; // @[DivSqrtRecFN_small.scala 416:15:chipyard.TestHarness.RocketConfig.fir@238430.4]
  wire  divSqrtRawFN_io_rawOut_isInf; // @[DivSqrtRecFN_small.scala 416:15:chipyard.TestHarness.RocketConfig.fir@238430.4]
  wire  divSqrtRawFN_io_rawOut_isZero; // @[DivSqrtRecFN_small.scala 416:15:chipyard.TestHarness.RocketConfig.fir@238430.4]
  wire  divSqrtRawFN_io_rawOut_sign; // @[DivSqrtRecFN_small.scala 416:15:chipyard.TestHarness.RocketConfig.fir@238430.4]
  wire [9:0] divSqrtRawFN_io_rawOut_sExp; // @[DivSqrtRecFN_small.scala 416:15:chipyard.TestHarness.RocketConfig.fir@238430.4]
  wire [26:0] divSqrtRawFN_io_rawOut_sig; // @[DivSqrtRecFN_small.scala 416:15:chipyard.TestHarness.RocketConfig.fir@238430.4]
  wire  _T_2; // @[rawFloatFromRecFN.scala 51:54:chipyard.TestHarness.RocketConfig.fir@238438.4]
  wire  _T_4; // @[rawFloatFromRecFN.scala 52:54:chipyard.TestHarness.RocketConfig.fir@238440.4]
  wire  _T_9; // @[rawFloatFromRecFN.scala 56:36:chipyard.TestHarness.RocketConfig.fir@238447.4]
  wire  _T_13; // @[rawFloatFromRecFN.scala 60:39:chipyard.TestHarness.RocketConfig.fir@238455.4]
  wire [1:0] _T_15; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@238457.4]
  wire  _T_19; // @[rawFloatFromRecFN.scala 51:54:chipyard.TestHarness.RocketConfig.fir@238468.4]
  wire  _T_21; // @[rawFloatFromRecFN.scala 52:54:chipyard.TestHarness.RocketConfig.fir@238470.4]
  wire  _T_26; // @[rawFloatFromRecFN.scala 56:36:chipyard.TestHarness.RocketConfig.fir@238477.4]
  wire  _T_30; // @[rawFloatFromRecFN.scala 60:39:chipyard.TestHarness.RocketConfig.fir@238485.4]
  wire [1:0] _T_32; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@238487.4]
  DivSqrtRawFN_small divSqrtRawFN ( // @[DivSqrtRecFN_small.scala 416:15:chipyard.TestHarness.RocketConfig.fir@238430.4]
    .clock(divSqrtRawFN_clock),
    .reset(divSqrtRawFN_reset),
    .io_inReady(divSqrtRawFN_io_inReady),
    .io_inValid(divSqrtRawFN_io_inValid),
    .io_sqrtOp(divSqrtRawFN_io_sqrtOp),
    .io_a_isNaN(divSqrtRawFN_io_a_isNaN),
    .io_a_isInf(divSqrtRawFN_io_a_isInf),
    .io_a_isZero(divSqrtRawFN_io_a_isZero),
    .io_a_sign(divSqrtRawFN_io_a_sign),
    .io_a_sExp(divSqrtRawFN_io_a_sExp),
    .io_a_sig(divSqrtRawFN_io_a_sig),
    .io_b_isNaN(divSqrtRawFN_io_b_isNaN),
    .io_b_isInf(divSqrtRawFN_io_b_isInf),
    .io_b_isZero(divSqrtRawFN_io_b_isZero),
    .io_b_sign(divSqrtRawFN_io_b_sign),
    .io_b_sExp(divSqrtRawFN_io_b_sExp),
    .io_b_sig(divSqrtRawFN_io_b_sig),
    .io_roundingMode(divSqrtRawFN_io_roundingMode),
    .io_rawOutValid_div(divSqrtRawFN_io_rawOutValid_div),
    .io_rawOutValid_sqrt(divSqrtRawFN_io_rawOutValid_sqrt),
    .io_roundingModeOut(divSqrtRawFN_io_roundingModeOut),
    .io_invalidExc(divSqrtRawFN_io_invalidExc),
    .io_infiniteExc(divSqrtRawFN_io_infiniteExc),
    .io_rawOut_isNaN(divSqrtRawFN_io_rawOut_isNaN),
    .io_rawOut_isInf(divSqrtRawFN_io_rawOut_isInf),
    .io_rawOut_isZero(divSqrtRawFN_io_rawOut_isZero),
    .io_rawOut_sign(divSqrtRawFN_io_rawOut_sign),
    .io_rawOut_sExp(divSqrtRawFN_io_rawOut_sExp),
    .io_rawOut_sig(divSqrtRawFN_io_rawOut_sig)
  );
  assign _T_2 = io_a[31:29] == 3'h0; // @[rawFloatFromRecFN.scala 51:54:chipyard.TestHarness.RocketConfig.fir@238438.4]
  assign _T_4 = io_a[31:30] == 2'h3; // @[rawFloatFromRecFN.scala 52:54:chipyard.TestHarness.RocketConfig.fir@238440.4]
  assign _T_9 = ~io_a[29]; // @[rawFloatFromRecFN.scala 56:36:chipyard.TestHarness.RocketConfig.fir@238447.4]
  assign _T_13 = ~_T_2; // @[rawFloatFromRecFN.scala 60:39:chipyard.TestHarness.RocketConfig.fir@238455.4]
  assign _T_15 = {1'h0,_T_13}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@238457.4]
  assign _T_19 = io_b[31:29] == 3'h0; // @[rawFloatFromRecFN.scala 51:54:chipyard.TestHarness.RocketConfig.fir@238468.4]
  assign _T_21 = io_b[31:30] == 2'h3; // @[rawFloatFromRecFN.scala 52:54:chipyard.TestHarness.RocketConfig.fir@238470.4]
  assign _T_26 = ~io_b[29]; // @[rawFloatFromRecFN.scala 56:36:chipyard.TestHarness.RocketConfig.fir@238477.4]
  assign _T_30 = ~_T_19; // @[rawFloatFromRecFN.scala 60:39:chipyard.TestHarness.RocketConfig.fir@238485.4]
  assign _T_32 = {1'h0,_T_30}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@238487.4]
  assign io_inReady = divSqrtRawFN_io_inReady; // @[DivSqrtRecFN_small.scala 418:16:chipyard.TestHarness.RocketConfig.fir@238433.4]
  assign io_rawOutValid_div = divSqrtRawFN_io_rawOutValid_div; // @[DivSqrtRecFN_small.scala 425:25:chipyard.TestHarness.RocketConfig.fir@238497.4]
  assign io_rawOutValid_sqrt = divSqrtRawFN_io_rawOutValid_sqrt; // @[DivSqrtRecFN_small.scala 426:25:chipyard.TestHarness.RocketConfig.fir@238498.4]
  assign io_roundingModeOut = divSqrtRawFN_io_roundingModeOut; // @[DivSqrtRecFN_small.scala 427:25:chipyard.TestHarness.RocketConfig.fir@238499.4]
  assign io_invalidExc = divSqrtRawFN_io_invalidExc; // @[DivSqrtRecFN_small.scala 428:25:chipyard.TestHarness.RocketConfig.fir@238500.4]
  assign io_infiniteExc = divSqrtRawFN_io_infiniteExc; // @[DivSqrtRecFN_small.scala 429:25:chipyard.TestHarness.RocketConfig.fir@238501.4]
  assign io_rawOut_isNaN = divSqrtRawFN_io_rawOut_isNaN; // @[DivSqrtRecFN_small.scala 430:25:chipyard.TestHarness.RocketConfig.fir@238507.4]
  assign io_rawOut_isInf = divSqrtRawFN_io_rawOut_isInf; // @[DivSqrtRecFN_small.scala 430:25:chipyard.TestHarness.RocketConfig.fir@238506.4]
  assign io_rawOut_isZero = divSqrtRawFN_io_rawOut_isZero; // @[DivSqrtRecFN_small.scala 430:25:chipyard.TestHarness.RocketConfig.fir@238505.4]
  assign io_rawOut_sign = divSqrtRawFN_io_rawOut_sign; // @[DivSqrtRecFN_small.scala 430:25:chipyard.TestHarness.RocketConfig.fir@238504.4]
  assign io_rawOut_sExp = divSqrtRawFN_io_rawOut_sExp; // @[DivSqrtRecFN_small.scala 430:25:chipyard.TestHarness.RocketConfig.fir@238503.4]
  assign io_rawOut_sig = divSqrtRawFN_io_rawOut_sig; // @[DivSqrtRecFN_small.scala 430:25:chipyard.TestHarness.RocketConfig.fir@238502.4]
  assign divSqrtRawFN_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@238431.4]
  assign divSqrtRawFN_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@238432.4]
  assign divSqrtRawFN_io_inValid = io_inValid; // @[DivSqrtRecFN_small.scala 419:34:chipyard.TestHarness.RocketConfig.fir@238434.4]
  assign divSqrtRawFN_io_sqrtOp = io_sqrtOp; // @[DivSqrtRecFN_small.scala 420:34:chipyard.TestHarness.RocketConfig.fir@238435.4]
  assign divSqrtRawFN_io_a_isNaN = _T_4 & io_a[29]; // @[DivSqrtRecFN_small.scala 421:34:chipyard.TestHarness.RocketConfig.fir@238465.4]
  assign divSqrtRawFN_io_a_isInf = _T_4 & _T_9; // @[DivSqrtRecFN_small.scala 421:34:chipyard.TestHarness.RocketConfig.fir@238464.4]
  assign divSqrtRawFN_io_a_isZero = io_a[31:29] == 3'h0; // @[DivSqrtRecFN_small.scala 421:34:chipyard.TestHarness.RocketConfig.fir@238463.4]
  assign divSqrtRawFN_io_a_sign = io_a[32]; // @[DivSqrtRecFN_small.scala 421:34:chipyard.TestHarness.RocketConfig.fir@238462.4]
  assign divSqrtRawFN_io_a_sExp = {1'b0,$signed(io_a[31:23])}; // @[DivSqrtRecFN_small.scala 421:34:chipyard.TestHarness.RocketConfig.fir@238461.4]
  assign divSqrtRawFN_io_a_sig = {_T_15,io_a[22:0]}; // @[DivSqrtRecFN_small.scala 421:34:chipyard.TestHarness.RocketConfig.fir@238460.4]
  assign divSqrtRawFN_io_b_isNaN = _T_21 & io_b[29]; // @[DivSqrtRecFN_small.scala 422:34:chipyard.TestHarness.RocketConfig.fir@238495.4]
  assign divSqrtRawFN_io_b_isInf = _T_21 & _T_26; // @[DivSqrtRecFN_small.scala 422:34:chipyard.TestHarness.RocketConfig.fir@238494.4]
  assign divSqrtRawFN_io_b_isZero = io_b[31:29] == 3'h0; // @[DivSqrtRecFN_small.scala 422:34:chipyard.TestHarness.RocketConfig.fir@238493.4]
  assign divSqrtRawFN_io_b_sign = io_b[32]; // @[DivSqrtRecFN_small.scala 422:34:chipyard.TestHarness.RocketConfig.fir@238492.4]
  assign divSqrtRawFN_io_b_sExp = {1'b0,$signed(io_b[31:23])}; // @[DivSqrtRecFN_small.scala 422:34:chipyard.TestHarness.RocketConfig.fir@238491.4]
  assign divSqrtRawFN_io_b_sig = {_T_32,io_b[22:0]}; // @[DivSqrtRecFN_small.scala 422:34:chipyard.TestHarness.RocketConfig.fir@238490.4]
  assign divSqrtRawFN_io_roundingMode = io_roundingMode; // @[DivSqrtRecFN_small.scala 423:34:chipyard.TestHarness.RocketConfig.fir@238496.4]
endmodule
