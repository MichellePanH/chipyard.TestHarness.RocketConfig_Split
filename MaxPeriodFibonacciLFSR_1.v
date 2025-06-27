module MaxPeriodFibonacciLFSR_1( // @[:chipyard.TestHarness.RocketConfig.fir@213287.2]
  input   clock, // @[:chipyard.TestHarness.RocketConfig.fir@213288.4]
  input   reset, // @[:chipyard.TestHarness.RocketConfig.fir@213289.4]
  input   io_increment, // @[:chipyard.TestHarness.RocketConfig.fir@213290.4]
  output  io_out_0, // @[:chipyard.TestHarness.RocketConfig.fir@213290.4]
  output  io_out_1, // @[:chipyard.TestHarness.RocketConfig.fir@213290.4]
  output  io_out_2, // @[:chipyard.TestHarness.RocketConfig.fir@213290.4]
  output  io_out_3, // @[:chipyard.TestHarness.RocketConfig.fir@213290.4]
  output  io_out_4, // @[:chipyard.TestHarness.RocketConfig.fir@213290.4]
  output  io_out_5, // @[:chipyard.TestHarness.RocketConfig.fir@213290.4]
  output  io_out_6, // @[:chipyard.TestHarness.RocketConfig.fir@213290.4]
  output  io_out_7, // @[:chipyard.TestHarness.RocketConfig.fir@213290.4]
  output  io_out_8, // @[:chipyard.TestHarness.RocketConfig.fir@213290.4]
  output  io_out_9, // @[:chipyard.TestHarness.RocketConfig.fir@213290.4]
  output  io_out_10, // @[:chipyard.TestHarness.RocketConfig.fir@213290.4]
  output  io_out_11, // @[:chipyard.TestHarness.RocketConfig.fir@213290.4]
  output  io_out_12, // @[:chipyard.TestHarness.RocketConfig.fir@213290.4]
  output  io_out_13, // @[:chipyard.TestHarness.RocketConfig.fir@213290.4]
  output  io_out_14, // @[:chipyard.TestHarness.RocketConfig.fir@213290.4]
  output  io_out_15 // @[:chipyard.TestHarness.RocketConfig.fir@213290.4]
);
  reg  state_0; // @[PRNG.scala 47:50:chipyard.TestHarness.RocketConfig.fir@213309.4]
  reg [31:0] _RAND_0;
  reg  state_1; // @[PRNG.scala 47:50:chipyard.TestHarness.RocketConfig.fir@213309.4]
  reg [31:0] _RAND_1;
  reg  state_2; // @[PRNG.scala 47:50:chipyard.TestHarness.RocketConfig.fir@213309.4]
  reg [31:0] _RAND_2;
  reg  state_3; // @[PRNG.scala 47:50:chipyard.TestHarness.RocketConfig.fir@213309.4]
  reg [31:0] _RAND_3;
  reg  state_4; // @[PRNG.scala 47:50:chipyard.TestHarness.RocketConfig.fir@213309.4]
  reg [31:0] _RAND_4;
  reg  state_5; // @[PRNG.scala 47:50:chipyard.TestHarness.RocketConfig.fir@213309.4]
  reg [31:0] _RAND_5;
  reg  state_6; // @[PRNG.scala 47:50:chipyard.TestHarness.RocketConfig.fir@213309.4]
  reg [31:0] _RAND_6;
  reg  state_7; // @[PRNG.scala 47:50:chipyard.TestHarness.RocketConfig.fir@213309.4]
  reg [31:0] _RAND_7;
  reg  state_8; // @[PRNG.scala 47:50:chipyard.TestHarness.RocketConfig.fir@213309.4]
  reg [31:0] _RAND_8;
  reg  state_9; // @[PRNG.scala 47:50:chipyard.TestHarness.RocketConfig.fir@213309.4]
  reg [31:0] _RAND_9;
  reg  state_10; // @[PRNG.scala 47:50:chipyard.TestHarness.RocketConfig.fir@213309.4]
  reg [31:0] _RAND_10;
  reg  state_11; // @[PRNG.scala 47:50:chipyard.TestHarness.RocketConfig.fir@213309.4]
  reg [31:0] _RAND_11;
  reg  state_12; // @[PRNG.scala 47:50:chipyard.TestHarness.RocketConfig.fir@213309.4]
  reg [31:0] _RAND_12;
  reg  state_13; // @[PRNG.scala 47:50:chipyard.TestHarness.RocketConfig.fir@213309.4]
  reg [31:0] _RAND_13;
  reg  state_14; // @[PRNG.scala 47:50:chipyard.TestHarness.RocketConfig.fir@213309.4]
  reg [31:0] _RAND_14;
  reg  state_15; // @[PRNG.scala 47:50:chipyard.TestHarness.RocketConfig.fir@213309.4]
  reg [31:0] _RAND_15;
  wire  _T_1; // @[LFSR.scala 15:41:chipyard.TestHarness.RocketConfig.fir@213311.6]
  wire  _T_2; // @[LFSR.scala 15:41:chipyard.TestHarness.RocketConfig.fir@213312.6]
  wire  _T_3; // @[LFSR.scala 15:41:chipyard.TestHarness.RocketConfig.fir@213313.6]
  wire  _GEN_0; // @[PRNG.scala 61:23:chipyard.TestHarness.RocketConfig.fir@213310.4]
  assign _T_1 = state_15 ^ state_13; // @[LFSR.scala 15:41:chipyard.TestHarness.RocketConfig.fir@213311.6]
  assign _T_2 = _T_1 ^ state_12; // @[LFSR.scala 15:41:chipyard.TestHarness.RocketConfig.fir@213312.6]
  assign _T_3 = _T_2 ^ state_10; // @[LFSR.scala 15:41:chipyard.TestHarness.RocketConfig.fir@213313.6]
  assign _GEN_0 = io_increment ? _T_3 : state_0; // @[PRNG.scala 61:23:chipyard.TestHarness.RocketConfig.fir@213310.4]
  assign io_out_0 = state_0; // @[PRNG.scala 69:10:chipyard.TestHarness.RocketConfig.fir@213349.4]
  assign io_out_1 = state_1; // @[PRNG.scala 69:10:chipyard.TestHarness.RocketConfig.fir@213350.4]
  assign io_out_2 = state_2; // @[PRNG.scala 69:10:chipyard.TestHarness.RocketConfig.fir@213351.4]
  assign io_out_3 = state_3; // @[PRNG.scala 69:10:chipyard.TestHarness.RocketConfig.fir@213352.4]
  assign io_out_4 = state_4; // @[PRNG.scala 69:10:chipyard.TestHarness.RocketConfig.fir@213353.4]
  assign io_out_5 = state_5; // @[PRNG.scala 69:10:chipyard.TestHarness.RocketConfig.fir@213354.4]
  assign io_out_6 = state_6; // @[PRNG.scala 69:10:chipyard.TestHarness.RocketConfig.fir@213355.4]
  assign io_out_7 = state_7; // @[PRNG.scala 69:10:chipyard.TestHarness.RocketConfig.fir@213356.4]
  assign io_out_8 = state_8; // @[PRNG.scala 69:10:chipyard.TestHarness.RocketConfig.fir@213357.4]
  assign io_out_9 = state_9; // @[PRNG.scala 69:10:chipyard.TestHarness.RocketConfig.fir@213358.4]
  assign io_out_10 = state_10; // @[PRNG.scala 69:10:chipyard.TestHarness.RocketConfig.fir@213359.4]
  assign io_out_11 = state_11; // @[PRNG.scala 69:10:chipyard.TestHarness.RocketConfig.fir@213360.4]
  assign io_out_12 = state_12; // @[PRNG.scala 69:10:chipyard.TestHarness.RocketConfig.fir@213361.4]
  assign io_out_13 = state_13; // @[PRNG.scala 69:10:chipyard.TestHarness.RocketConfig.fir@213362.4]
  assign io_out_14 = state_14; // @[PRNG.scala 69:10:chipyard.TestHarness.RocketConfig.fir@213363.4]
  assign io_out_15 = state_15; // @[PRNG.scala 69:10:chipyard.TestHarness.RocketConfig.fir@213364.4]
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
  state_0 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  state_1 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  state_2 = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  state_3 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  state_4 = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  state_5 = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  state_6 = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  state_7 = _RAND_7[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  state_8 = _RAND_8[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  state_9 = _RAND_9[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  state_10 = _RAND_10[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  state_11 = _RAND_11[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  state_12 = _RAND_12[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  state_13 = _RAND_13[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  state_14 = _RAND_14[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  state_15 = _RAND_15[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    state_0 <= reset | _GEN_0;
    if (reset) begin
      state_1 <= 1'h0;
    end else if (io_increment) begin
      state_1 <= state_0;
    end
    if (reset) begin
      state_2 <= 1'h0;
    end else if (io_increment) begin
      state_2 <= state_1;
    end
    if (reset) begin
      state_3 <= 1'h0;
    end else if (io_increment) begin
      state_3 <= state_2;
    end
    if (reset) begin
      state_4 <= 1'h0;
    end else if (io_increment) begin
      state_4 <= state_3;
    end
    if (reset) begin
      state_5 <= 1'h0;
    end else if (io_increment) begin
      state_5 <= state_4;
    end
    if (reset) begin
      state_6 <= 1'h0;
    end else if (io_increment) begin
      state_6 <= state_5;
    end
    if (reset) begin
      state_7 <= 1'h0;
    end else if (io_increment) begin
      state_7 <= state_6;
    end
    if (reset) begin
      state_8 <= 1'h0;
    end else if (io_increment) begin
      state_8 <= state_7;
    end
    if (reset) begin
      state_9 <= 1'h0;
    end else if (io_increment) begin
      state_9 <= state_8;
    end
    if (reset) begin
      state_10 <= 1'h0;
    end else if (io_increment) begin
      state_10 <= state_9;
    end
    if (reset) begin
      state_11 <= 1'h0;
    end else if (io_increment) begin
      state_11 <= state_10;
    end
    if (reset) begin
      state_12 <= 1'h0;
    end else if (io_increment) begin
      state_12 <= state_11;
    end
    if (reset) begin
      state_13 <= 1'h0;
    end else if (io_increment) begin
      state_13 <= state_12;
    end
    if (reset) begin
      state_14 <= 1'h0;
    end else if (io_increment) begin
      state_14 <= state_13;
    end
    if (reset) begin
      state_15 <= 1'h0;
    end else if (io_increment) begin
      state_15 <= state_14;
    end
  end
endmodule
