module FPUFMAPipe_1( // @[:chipyard.TestHarness.RocketConfig.fir@238133.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@238134.4]
  input         reset, // @[:chipyard.TestHarness.RocketConfig.fir@238135.4]
  input         io_in_valid, // @[:chipyard.TestHarness.RocketConfig.fir@238136.4]
  input         io_in_bits_ren3, // @[:chipyard.TestHarness.RocketConfig.fir@238136.4]
  input         io_in_bits_swap23, // @[:chipyard.TestHarness.RocketConfig.fir@238136.4]
  input  [2:0]  io_in_bits_rm, // @[:chipyard.TestHarness.RocketConfig.fir@238136.4]
  input  [1:0]  io_in_bits_fmaCmd, // @[:chipyard.TestHarness.RocketConfig.fir@238136.4]
  input  [64:0] io_in_bits_in1, // @[:chipyard.TestHarness.RocketConfig.fir@238136.4]
  input  [64:0] io_in_bits_in2, // @[:chipyard.TestHarness.RocketConfig.fir@238136.4]
  input  [64:0] io_in_bits_in3, // @[:chipyard.TestHarness.RocketConfig.fir@238136.4]
  output [64:0] io_out_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@238136.4]
  output [4:0]  io_out_bits_exc // @[:chipyard.TestHarness.RocketConfig.fir@238136.4]
);
  wire  fma_clock; // @[FPU.scala 661:19:chipyard.TestHarness.RocketConfig.fir@238159.4]
  wire  fma_reset; // @[FPU.scala 661:19:chipyard.TestHarness.RocketConfig.fir@238159.4]
  wire  fma_io_validin; // @[FPU.scala 661:19:chipyard.TestHarness.RocketConfig.fir@238159.4]
  wire [1:0] fma_io_op; // @[FPU.scala 661:19:chipyard.TestHarness.RocketConfig.fir@238159.4]
  wire [64:0] fma_io_a; // @[FPU.scala 661:19:chipyard.TestHarness.RocketConfig.fir@238159.4]
  wire [64:0] fma_io_b; // @[FPU.scala 661:19:chipyard.TestHarness.RocketConfig.fir@238159.4]
  wire [64:0] fma_io_c; // @[FPU.scala 661:19:chipyard.TestHarness.RocketConfig.fir@238159.4]
  wire [2:0] fma_io_roundingMode; // @[FPU.scala 661:19:chipyard.TestHarness.RocketConfig.fir@238159.4]
  wire [64:0] fma_io_out; // @[FPU.scala 661:19:chipyard.TestHarness.RocketConfig.fir@238159.4]
  wire [4:0] fma_io_exceptionFlags; // @[FPU.scala 661:19:chipyard.TestHarness.RocketConfig.fir@238159.4]
  wire  fma_io_validout; // @[FPU.scala 661:19:chipyard.TestHarness.RocketConfig.fir@238159.4]
  reg  valid; // @[FPU.scala 649:18:chipyard.TestHarness.RocketConfig.fir@238141.4]
  reg [31:0] _RAND_0;
  reg [2:0] in_rm; // @[FPU.scala 650:15:chipyard.TestHarness.RocketConfig.fir@238143.4]
  reg [31:0] _RAND_1;
  reg [1:0] in_fmaCmd; // @[FPU.scala 650:15:chipyard.TestHarness.RocketConfig.fir@238143.4]
  reg [31:0] _RAND_2;
  reg [64:0] in_in1; // @[FPU.scala 650:15:chipyard.TestHarness.RocketConfig.fir@238143.4]
  reg [95:0] _RAND_3;
  reg [64:0] in_in2; // @[FPU.scala 650:15:chipyard.TestHarness.RocketConfig.fir@238143.4]
  reg [95:0] _RAND_4;
  reg [64:0] in_in3; // @[FPU.scala 650:15:chipyard.TestHarness.RocketConfig.fir@238143.4]
  reg [95:0] _RAND_5;
  wire [64:0] _T_1; // @[FPU.scala 653:32:chipyard.TestHarness.RocketConfig.fir@238146.6]
  wire [64:0] _T_3; // @[FPU.scala 653:50:chipyard.TestHarness.RocketConfig.fir@238148.6]
  wire  _T_4; // @[FPU.scala 658:21:chipyard.TestHarness.RocketConfig.fir@238153.6]
  wire  _T_5; // @[FPU.scala 658:11:chipyard.TestHarness.RocketConfig.fir@238154.6]
  wire [64:0] _T_7; // @[FPU.scala 358:25:chipyard.TestHarness.RocketConfig.fir@238173.4]
  wire  _T_9; // @[FPU.scala 200:56:chipyard.TestHarness.RocketConfig.fir@238175.4]
  reg [64:0] _T_12_data; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@238181.4]
  reg [95:0] _RAND_6;
  reg [4:0] _T_12_exc; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@238181.4]
  reg [31:0] _RAND_7;
  wire [4:0] res_exc; // @[FPU.scala 670:17:chipyard.TestHarness.RocketConfig.fir@238170.4 FPU.scala 672:11:chipyard.TestHarness.RocketConfig.fir@238178.4]
  MulAddRecFNPipe_1 fma ( // @[FPU.scala 661:19:chipyard.TestHarness.RocketConfig.fir@238159.4]
    .clock(fma_clock),
    .reset(fma_reset),
    .io_validin(fma_io_validin),
    .io_op(fma_io_op),
    .io_a(fma_io_a),
    .io_b(fma_io_b),
    .io_c(fma_io_c),
    .io_roundingMode(fma_io_roundingMode),
    .io_out(fma_io_out),
    .io_exceptionFlags(fma_io_exceptionFlags),
    .io_validout(fma_io_validout)
  );
  assign _T_1 = io_in_bits_in1 ^ io_in_bits_in2; // @[FPU.scala 653:32:chipyard.TestHarness.RocketConfig.fir@238146.6]
  assign _T_3 = _T_1 & 65'h10000000000000000; // @[FPU.scala 653:50:chipyard.TestHarness.RocketConfig.fir@238148.6]
  assign _T_4 = io_in_bits_ren3 | io_in_bits_swap23; // @[FPU.scala 658:21:chipyard.TestHarness.RocketConfig.fir@238153.6]
  assign _T_5 = ~_T_4; // @[FPU.scala 658:11:chipyard.TestHarness.RocketConfig.fir@238154.6]
  assign _T_7 = fma_io_out & 65'h1efefffffffffffff; // @[FPU.scala 358:25:chipyard.TestHarness.RocketConfig.fir@238173.4]
  assign _T_9 = &fma_io_out[63:61]; // @[FPU.scala 200:56:chipyard.TestHarness.RocketConfig.fir@238175.4]
  assign res_exc = fma_io_exceptionFlags; // @[FPU.scala 670:17:chipyard.TestHarness.RocketConfig.fir@238170.4 FPU.scala 672:11:chipyard.TestHarness.RocketConfig.fir@238178.4]
  assign io_out_bits_data = _T_12_data; // @[FPU.scala 674:10:chipyard.TestHarness.RocketConfig.fir@238190.4]
  assign io_out_bits_exc = _T_12_exc; // @[FPU.scala 674:10:chipyard.TestHarness.RocketConfig.fir@238190.4]
  assign fma_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@238161.4]
  assign fma_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@238162.4]
  assign fma_io_validin = valid; // @[FPU.scala 662:18:chipyard.TestHarness.RocketConfig.fir@238163.4]
  assign fma_io_op = in_fmaCmd; // @[FPU.scala 663:13:chipyard.TestHarness.RocketConfig.fir@238164.4]
  assign fma_io_a = in_in1; // @[FPU.scala 666:12:chipyard.TestHarness.RocketConfig.fir@238167.4]
  assign fma_io_b = in_in2; // @[FPU.scala 667:12:chipyard.TestHarness.RocketConfig.fir@238168.4]
  assign fma_io_c = in_in3; // @[FPU.scala 668:12:chipyard.TestHarness.RocketConfig.fir@238169.4]
  assign fma_io_roundingMode = in_rm; // @[FPU.scala 664:23:chipyard.TestHarness.RocketConfig.fir@238165.4]
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
  _RAND_0 = {1{`RANDOM}};
  valid = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  in_rm = _RAND_1[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  in_fmaCmd = _RAND_2[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {3{`RANDOM}};
  in_in1 = _RAND_3[64:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {3{`RANDOM}};
  in_in2 = _RAND_4[64:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {3{`RANDOM}};
  in_in3 = _RAND_5[64:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {3{`RANDOM}};
  _T_12_data = _RAND_6[64:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  _T_12_exc = _RAND_7[4:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    valid <= io_in_valid;
    if (io_in_valid) begin
      in_rm <= io_in_bits_rm;
    end
    if (io_in_valid) begin
      in_fmaCmd <= io_in_bits_fmaCmd;
    end
    if (io_in_valid) begin
      in_in1 <= io_in_bits_in1;
    end
    if (io_in_valid) begin
      if (io_in_bits_swap23) begin
        in_in2 <= 65'h8000000000000000;
      end else begin
        in_in2 <= io_in_bits_in2;
      end
    end
    if (io_in_valid) begin
      if (_T_5) begin
        in_in3 <= _T_3;
      end else begin
        in_in3 <= io_in_bits_in3;
      end
    end
    if (fma_io_validout) begin
      if (_T_9) begin
        _T_12_data <= _T_7;
      end else begin
        _T_12_data <= fma_io_out;
      end
    end
    if (fma_io_validout) begin
      _T_12_exc <= res_exc;
    end
  end
endmodule
