module QueueCompatibility_22( // @[:chipyard.TestHarness.RocketConfig.fir@258217.2]
  input        clock, // @[:chipyard.TestHarness.RocketConfig.fir@258218.4]
  input        reset, // @[:chipyard.TestHarness.RocketConfig.fir@258219.4]
  output       io_enq_ready, // @[:chipyard.TestHarness.RocketConfig.fir@258220.4]
  input        io_enq_valid, // @[:chipyard.TestHarness.RocketConfig.fir@258220.4]
  input  [7:0] io_enq_bits, // @[:chipyard.TestHarness.RocketConfig.fir@258220.4]
  input        io_deq_ready, // @[:chipyard.TestHarness.RocketConfig.fir@258220.4]
  output       io_deq_valid, // @[:chipyard.TestHarness.RocketConfig.fir@258220.4]
  output [7:0] io_deq_bits, // @[:chipyard.TestHarness.RocketConfig.fir@258220.4]
  output [8:0] io_count // @[:chipyard.TestHarness.RocketConfig.fir@258220.4]
);
  reg [7:0] ram [0:255]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@258225.4]
  reg [31:0] _RAND_0;
  wire [7:0] ram__T_11_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@258225.4]
  wire [7:0] ram__T_11_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@258225.4]
  wire [7:0] ram__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@258225.4]
  wire [7:0] ram__T_3_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@258225.4]
  wire  ram__T_3_mask; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@258225.4]
  wire  ram__T_3_en; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@258225.4]
  reg [7:0] enq_ptr_value; // @[Counter.scala 29:33:chipyard.TestHarness.RocketConfig.fir@258226.4]
  reg [31:0] _RAND_1;
  reg [7:0] deq_ptr_value; // @[Counter.scala 29:33:chipyard.TestHarness.RocketConfig.fir@258227.4]
  reg [31:0] _RAND_2;
  reg  maybe_full; // @[Decoupled.scala 212:27:chipyard.TestHarness.RocketConfig.fir@258228.4]
  reg [31:0] _RAND_3;
  wire  ptr_match; // @[Decoupled.scala 214:33:chipyard.TestHarness.RocketConfig.fir@258229.4]
  wire  _T; // @[Decoupled.scala 215:28:chipyard.TestHarness.RocketConfig.fir@258230.4]
  wire  empty; // @[Decoupled.scala 215:25:chipyard.TestHarness.RocketConfig.fir@258231.4]
  wire  full; // @[Decoupled.scala 216:24:chipyard.TestHarness.RocketConfig.fir@258232.4]
  wire  do_enq; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@258233.4]
  wire  do_deq; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@258237.4]
  wire [7:0] _T_5; // @[Counter.scala 39:22:chipyard.TestHarness.RocketConfig.fir@258246.6]
  wire [7:0] _T_7; // @[Counter.scala 39:22:chipyard.TestHarness.RocketConfig.fir@258252.6]
  wire  _T_8; // @[Decoupled.scala 227:16:chipyard.TestHarness.RocketConfig.fir@258255.4]
  wire [7:0] ptr_diff; // @[Decoupled.scala 248:32:chipyard.TestHarness.RocketConfig.fir@258266.4]
  wire  _T_13; // @[Decoupled.scala 250:32:chipyard.TestHarness.RocketConfig.fir@258267.4]
  wire [8:0] _T_14; // @[Decoupled.scala 250:20:chipyard.TestHarness.RocketConfig.fir@258268.4]
  wire [8:0] _GEN_8; // @[Decoupled.scala 250:62:chipyard.TestHarness.RocketConfig.fir@258269.4]
  assign ram__T_11_addr = deq_ptr_value;
  assign ram__T_11_data = ram[ram__T_11_addr]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@258225.4]
  assign ram__T_3_data = io_enq_bits;
  assign ram__T_3_addr = enq_ptr_value;
  assign ram__T_3_mask = 1'h1;
  assign ram__T_3_en = io_enq_ready & io_enq_valid;
  assign ptr_match = enq_ptr_value == deq_ptr_value; // @[Decoupled.scala 214:33:chipyard.TestHarness.RocketConfig.fir@258229.4]
  assign _T = ~maybe_full; // @[Decoupled.scala 215:28:chipyard.TestHarness.RocketConfig.fir@258230.4]
  assign empty = ptr_match & _T; // @[Decoupled.scala 215:25:chipyard.TestHarness.RocketConfig.fir@258231.4]
  assign full = ptr_match & maybe_full; // @[Decoupled.scala 216:24:chipyard.TestHarness.RocketConfig.fir@258232.4]
  assign do_enq = io_enq_ready & io_enq_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@258233.4]
  assign do_deq = io_deq_ready & io_deq_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@258237.4]
  assign _T_5 = enq_ptr_value + 8'h1; // @[Counter.scala 39:22:chipyard.TestHarness.RocketConfig.fir@258246.6]
  assign _T_7 = deq_ptr_value + 8'h1; // @[Counter.scala 39:22:chipyard.TestHarness.RocketConfig.fir@258252.6]
  assign _T_8 = do_enq != do_deq; // @[Decoupled.scala 227:16:chipyard.TestHarness.RocketConfig.fir@258255.4]
  assign ptr_diff = enq_ptr_value - deq_ptr_value; // @[Decoupled.scala 248:32:chipyard.TestHarness.RocketConfig.fir@258266.4]
  assign _T_13 = maybe_full & ptr_match; // @[Decoupled.scala 250:32:chipyard.TestHarness.RocketConfig.fir@258267.4]
  assign _T_14 = _T_13 ? 9'h100 : 9'h0; // @[Decoupled.scala 250:20:chipyard.TestHarness.RocketConfig.fir@258268.4]
  assign _GEN_8 = {{1'd0}, ptr_diff}; // @[Decoupled.scala 250:62:chipyard.TestHarness.RocketConfig.fir@258269.4]
  assign io_enq_ready = ~full; // @[Decoupled.scala 232:16:chipyard.TestHarness.RocketConfig.fir@258262.4]
  assign io_deq_valid = ~empty; // @[Decoupled.scala 231:16:chipyard.TestHarness.RocketConfig.fir@258260.4]
  assign io_deq_bits = ram__T_11_data; // @[Decoupled.scala 233:15:chipyard.TestHarness.RocketConfig.fir@258264.4]
  assign io_count = _T_14 | _GEN_8; // @[Decoupled.scala 250:14:chipyard.TestHarness.RocketConfig.fir@258270.4]
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
  _RAND_0 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    ram[initvar] = _RAND_0[7:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  enq_ptr_value = _RAND_1[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  deq_ptr_value = _RAND_2[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  maybe_full = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if(ram__T_3_en & ram__T_3_mask) begin
      ram[ram__T_3_addr] <= ram__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@258225.4]
    end
    if (reset) begin
      enq_ptr_value <= 8'h0;
    end else if (do_enq) begin
      enq_ptr_value <= _T_5;
    end
    if (reset) begin
      deq_ptr_value <= 8'h0;
    end else if (do_deq) begin
      deq_ptr_value <= _T_7;
    end
    if (reset) begin
      maybe_full <= 1'h0;
    end else if (_T_8) begin
      maybe_full <= do_enq;
    end
  end
endmodule
