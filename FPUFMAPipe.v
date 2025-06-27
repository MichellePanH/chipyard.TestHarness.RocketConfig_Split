module FPUFMAPipe( // @[:chipyard.TestHarness.RocketConfig.fir@234491.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@234492.4]
  input         reset, // @[:chipyard.TestHarness.RocketConfig.fir@234493.4]
  input         io_in_valid, // @[:chipyard.TestHarness.RocketConfig.fir@234494.4]
  input         io_in_bits_ren3, // @[:chipyard.TestHarness.RocketConfig.fir@234494.4]
  input         io_in_bits_swap23, // @[:chipyard.TestHarness.RocketConfig.fir@234494.4]
  input  [2:0]  io_in_bits_rm, // @[:chipyard.TestHarness.RocketConfig.fir@234494.4]
  input  [1:0]  io_in_bits_fmaCmd, // @[:chipyard.TestHarness.RocketConfig.fir@234494.4]
  input  [64:0] io_in_bits_in1, // @[:chipyard.TestHarness.RocketConfig.fir@234494.4]
  input  [64:0] io_in_bits_in2, // @[:chipyard.TestHarness.RocketConfig.fir@234494.4]
  input  [64:0] io_in_bits_in3, // @[:chipyard.TestHarness.RocketConfig.fir@234494.4]
  output [64:0] io_out_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@234494.4]
  output [4:0]  io_out_bits_exc // @[:chipyard.TestHarness.RocketConfig.fir@234494.4]
);
  wire  fma_clock; // @[FPU.scala 661:19:chipyard.TestHarness.RocketConfig.fir@234517.4]
  wire  fma_reset; // @[FPU.scala 661:19:chipyard.TestHarness.RocketConfig.fir@234517.4]
  wire  fma_io_validin; // @[FPU.scala 661:19:chipyard.TestHarness.RocketConfig.fir@234517.4]
  wire [1:0] fma_io_op; // @[FPU.scala 661:19:chipyard.TestHarness.RocketConfig.fir@234517.4]
  wire [32:0] fma_io_a; // @[FPU.scala 661:19:chipyard.TestHarness.RocketConfig.fir@234517.4]
  wire [32:0] fma_io_b; // @[FPU.scala 661:19:chipyard.TestHarness.RocketConfig.fir@234517.4]
  wire [32:0] fma_io_c; // @[FPU.scala 661:19:chipyard.TestHarness.RocketConfig.fir@234517.4]
  wire [2:0] fma_io_roundingMode; // @[FPU.scala 661:19:chipyard.TestHarness.RocketConfig.fir@234517.4]
  wire [32:0] fma_io_out; // @[FPU.scala 661:19:chipyard.TestHarness.RocketConfig.fir@234517.4]
  wire [4:0] fma_io_exceptionFlags; // @[FPU.scala 661:19:chipyard.TestHarness.RocketConfig.fir@234517.4]
  reg  valid; // @[FPU.scala 649:18:chipyard.TestHarness.RocketConfig.fir@234499.4]
  reg [31:0] _RAND_0;
  reg [2:0] in_rm; // @[FPU.scala 650:15:chipyard.TestHarness.RocketConfig.fir@234501.4]
  reg [31:0] _RAND_1;
  reg [1:0] in_fmaCmd; // @[FPU.scala 650:15:chipyard.TestHarness.RocketConfig.fir@234501.4]
  reg [31:0] _RAND_2;
  reg [64:0] in_in1; // @[FPU.scala 650:15:chipyard.TestHarness.RocketConfig.fir@234501.4]
  reg [95:0] _RAND_3;
  reg [64:0] in_in2; // @[FPU.scala 650:15:chipyard.TestHarness.RocketConfig.fir@234501.4]
  reg [95:0] _RAND_4;
  reg [64:0] in_in3; // @[FPU.scala 650:15:chipyard.TestHarness.RocketConfig.fir@234501.4]
  reg [95:0] _RAND_5;
  wire [64:0] _T_1; // @[FPU.scala 653:32:chipyard.TestHarness.RocketConfig.fir@234504.6]
  wire [64:0] _T_3; // @[FPU.scala 653:50:chipyard.TestHarness.RocketConfig.fir@234506.6]
  wire  _T_4; // @[FPU.scala 658:21:chipyard.TestHarness.RocketConfig.fir@234511.6]
  wire  _T_5; // @[FPU.scala 658:11:chipyard.TestHarness.RocketConfig.fir@234512.6]
  MulAddRecFNPipe fma ( // @[FPU.scala 661:19:chipyard.TestHarness.RocketConfig.fir@234517.4]
    .clock(fma_clock),
    .reset(fma_reset),
    .io_validin(fma_io_validin),
    .io_op(fma_io_op),
    .io_a(fma_io_a),
    .io_b(fma_io_b),
    .io_c(fma_io_c),
    .io_roundingMode(fma_io_roundingMode),
    .io_out(fma_io_out),
    .io_exceptionFlags(fma_io_exceptionFlags)
  );
  assign _T_1 = io_in_bits_in1 ^ io_in_bits_in2; // @[FPU.scala 653:32:chipyard.TestHarness.RocketConfig.fir@234504.6]
  assign _T_3 = _T_1 & 65'h100000000; // @[FPU.scala 653:50:chipyard.TestHarness.RocketConfig.fir@234506.6]
  assign _T_4 = io_in_bits_ren3 | io_in_bits_swap23; // @[FPU.scala 658:21:chipyard.TestHarness.RocketConfig.fir@234511.6]
  assign _T_5 = ~_T_4; // @[FPU.scala 658:11:chipyard.TestHarness.RocketConfig.fir@234512.6]
  assign io_out_bits_data = {{32'd0}, fma_io_out}; // @[FPU.scala 674:10:chipyard.TestHarness.RocketConfig.fir@234536.4]
  assign io_out_bits_exc = fma_io_exceptionFlags; // @[FPU.scala 674:10:chipyard.TestHarness.RocketConfig.fir@234536.4]
  assign fma_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@234519.4]
  assign fma_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@234520.4]
  assign fma_io_validin = valid; // @[FPU.scala 662:18:chipyard.TestHarness.RocketConfig.fir@234521.4]
  assign fma_io_op = in_fmaCmd; // @[FPU.scala 663:13:chipyard.TestHarness.RocketConfig.fir@234522.4]
  assign fma_io_a = in_in1[32:0]; // @[FPU.scala 666:12:chipyard.TestHarness.RocketConfig.fir@234525.4]
  assign fma_io_b = in_in2[32:0]; // @[FPU.scala 667:12:chipyard.TestHarness.RocketConfig.fir@234526.4]
  assign fma_io_c = in_in3[32:0]; // @[FPU.scala 668:12:chipyard.TestHarness.RocketConfig.fir@234527.4]
  assign fma_io_roundingMode = in_rm; // @[FPU.scala 664:23:chipyard.TestHarness.RocketConfig.fir@234523.4]
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
        in_in2 <= 65'h80000000;
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
  end
endmodule
