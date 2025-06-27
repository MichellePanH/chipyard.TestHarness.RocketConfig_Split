module Repeater_4( // @[:chipyard.TestHarness.RocketConfig.fir@67760.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@67761.4]
  input         reset, // @[:chipyard.TestHarness.RocketConfig.fir@67762.4]
  input         io_repeat, // @[:chipyard.TestHarness.RocketConfig.fir@67763.4]
  output        io_full, // @[:chipyard.TestHarness.RocketConfig.fir@67763.4]
  output        io_enq_ready, // @[:chipyard.TestHarness.RocketConfig.fir@67763.4]
  input         io_enq_valid, // @[:chipyard.TestHarness.RocketConfig.fir@67763.4]
  input  [2:0]  io_enq_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@67763.4]
  input  [2:0]  io_enq_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@67763.4]
  input  [2:0]  io_enq_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@67763.4]
  input  [2:0]  io_enq_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@67763.4]
  input  [11:0] io_enq_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@67763.4]
  input  [7:0]  io_enq_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@67763.4]
  input         io_enq_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@67763.4]
  input         io_deq_ready, // @[:chipyard.TestHarness.RocketConfig.fir@67763.4]
  output        io_deq_valid, // @[:chipyard.TestHarness.RocketConfig.fir@67763.4]
  output [2:0]  io_deq_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@67763.4]
  output [2:0]  io_deq_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@67763.4]
  output [2:0]  io_deq_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@67763.4]
  output [2:0]  io_deq_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@67763.4]
  output [11:0] io_deq_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@67763.4]
  output [7:0]  io_deq_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@67763.4]
  output        io_deq_bits_corrupt // @[:chipyard.TestHarness.RocketConfig.fir@67763.4]
);
  reg  full; // @[Repeater.scala 19:21:chipyard.TestHarness.RocketConfig.fir@67765.4]
  reg [31:0] _RAND_0;
  reg [2:0] saved_opcode; // @[Repeater.scala 20:18:chipyard.TestHarness.RocketConfig.fir@67766.4]
  reg [31:0] _RAND_1;
  reg [2:0] saved_param; // @[Repeater.scala 20:18:chipyard.TestHarness.RocketConfig.fir@67766.4]
  reg [31:0] _RAND_2;
  reg [2:0] saved_size; // @[Repeater.scala 20:18:chipyard.TestHarness.RocketConfig.fir@67766.4]
  reg [31:0] _RAND_3;
  reg [2:0] saved_source; // @[Repeater.scala 20:18:chipyard.TestHarness.RocketConfig.fir@67766.4]
  reg [31:0] _RAND_4;
  reg [11:0] saved_address; // @[Repeater.scala 20:18:chipyard.TestHarness.RocketConfig.fir@67766.4]
  reg [31:0] _RAND_5;
  reg [7:0] saved_mask; // @[Repeater.scala 20:18:chipyard.TestHarness.RocketConfig.fir@67766.4]
  reg [31:0] _RAND_6;
  reg  saved_corrupt; // @[Repeater.scala 20:18:chipyard.TestHarness.RocketConfig.fir@67766.4]
  reg [31:0] _RAND_7;
  wire  _T_1; // @[Repeater.scala 24:35:chipyard.TestHarness.RocketConfig.fir@67769.4]
  wire  _T_4; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@67782.4]
  wire  _T_5; // @[Repeater.scala 28:23:chipyard.TestHarness.RocketConfig.fir@67783.4]
  wire  _GEN_0; // @[Repeater.scala 28:38:chipyard.TestHarness.RocketConfig.fir@67784.4]
  wire  _T_6; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@67795.4]
  wire  _T_7; // @[Repeater.scala 29:26:chipyard.TestHarness.RocketConfig.fir@67796.4]
  wire  _T_8; // @[Repeater.scala 29:23:chipyard.TestHarness.RocketConfig.fir@67797.4]
  assign _T_1 = ~full; // @[Repeater.scala 24:35:chipyard.TestHarness.RocketConfig.fir@67769.4]
  assign _T_4 = io_enq_ready & io_enq_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@67782.4]
  assign _T_5 = _T_4 & io_repeat; // @[Repeater.scala 28:23:chipyard.TestHarness.RocketConfig.fir@67783.4]
  assign _GEN_0 = _T_5 | full; // @[Repeater.scala 28:38:chipyard.TestHarness.RocketConfig.fir@67784.4]
  assign _T_6 = io_deq_ready & io_deq_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@67795.4]
  assign _T_7 = ~io_repeat; // @[Repeater.scala 29:26:chipyard.TestHarness.RocketConfig.fir@67796.4]
  assign _T_8 = _T_6 & _T_7; // @[Repeater.scala 29:23:chipyard.TestHarness.RocketConfig.fir@67797.4]
  assign io_full = full; // @[Repeater.scala 26:11:chipyard.TestHarness.RocketConfig.fir@67781.4]
  assign io_enq_ready = io_deq_ready & _T_1; // @[Repeater.scala 24:16:chipyard.TestHarness.RocketConfig.fir@67771.4]
  assign io_deq_valid = io_enq_valid | full; // @[Repeater.scala 23:16:chipyard.TestHarness.RocketConfig.fir@67768.4]
  assign io_deq_bits_opcode = full ? saved_opcode : io_enq_bits_opcode; // @[Repeater.scala 25:15:chipyard.TestHarness.RocketConfig.fir@67780.4]
  assign io_deq_bits_param = full ? saved_param : io_enq_bits_param; // @[Repeater.scala 25:15:chipyard.TestHarness.RocketConfig.fir@67779.4]
  assign io_deq_bits_size = full ? saved_size : io_enq_bits_size; // @[Repeater.scala 25:15:chipyard.TestHarness.RocketConfig.fir@67778.4]
  assign io_deq_bits_source = full ? saved_source : io_enq_bits_source; // @[Repeater.scala 25:15:chipyard.TestHarness.RocketConfig.fir@67777.4]
  assign io_deq_bits_address = full ? saved_address : io_enq_bits_address; // @[Repeater.scala 25:15:chipyard.TestHarness.RocketConfig.fir@67776.4]
  assign io_deq_bits_mask = full ? saved_mask : io_enq_bits_mask; // @[Repeater.scala 25:15:chipyard.TestHarness.RocketConfig.fir@67775.4]
  assign io_deq_bits_corrupt = full ? saved_corrupt : io_enq_bits_corrupt; // @[Repeater.scala 25:15:chipyard.TestHarness.RocketConfig.fir@67773.4]
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
  full = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  saved_opcode = _RAND_1[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  saved_param = _RAND_2[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  saved_size = _RAND_3[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  saved_source = _RAND_4[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  saved_address = _RAND_5[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  saved_mask = _RAND_6[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  saved_corrupt = _RAND_7[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      full <= 1'h0;
    end else if (_T_8) begin
      full <= 1'h0;
    end else begin
      full <= _GEN_0;
    end
    if (_T_5) begin
      saved_opcode <= io_enq_bits_opcode;
    end
    if (_T_5) begin
      saved_param <= io_enq_bits_param;
    end
    if (_T_5) begin
      saved_size <= io_enq_bits_size;
    end
    if (_T_5) begin
      saved_source <= io_enq_bits_source;
    end
    if (_T_5) begin
      saved_address <= io_enq_bits_address;
    end
    if (_T_5) begin
      saved_mask <= io_enq_bits_mask;
    end
    if (_T_5) begin
      saved_corrupt <= io_enq_bits_corrupt;
    end
  end
endmodule
