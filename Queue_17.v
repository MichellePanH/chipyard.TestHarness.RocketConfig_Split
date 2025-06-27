module Queue_17( // @[:chipyard.TestHarness.RocketConfig.fir@86219.2]
  input        clock, // @[:chipyard.TestHarness.RocketConfig.fir@86220.4]
  input        reset, // @[:chipyard.TestHarness.RocketConfig.fir@86221.4]
  output       io_enq_ready, // @[:chipyard.TestHarness.RocketConfig.fir@86222.4]
  input        io_enq_valid, // @[:chipyard.TestHarness.RocketConfig.fir@86222.4]
  input  [2:0] io_enq_bits_sink, // @[:chipyard.TestHarness.RocketConfig.fir@86222.4]
  output       io_deq_valid, // @[:chipyard.TestHarness.RocketConfig.fir@86222.4]
  output [2:0] io_deq_bits_sink // @[:chipyard.TestHarness.RocketConfig.fir@86222.4]
);
  reg [2:0] ram_sink [0:1]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@86224.4]
  reg [31:0] _RAND_0;
  wire [2:0] ram_sink__T_15_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@86224.4]
  wire  ram_sink__T_15_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@86224.4]
  wire [2:0] ram_sink__T_5_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@86224.4]
  wire  ram_sink__T_5_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@86224.4]
  wire  ram_sink__T_5_mask; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@86224.4]
  wire  ram_sink__T_5_en; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@86224.4]
  reg  _T; // @[Counter.scala 29:33:chipyard.TestHarness.RocketConfig.fir@86225.4]
  reg [31:0] _RAND_1;
  reg  _T_1; // @[Counter.scala 29:33:chipyard.TestHarness.RocketConfig.fir@86226.4]
  reg [31:0] _RAND_2;
  reg  maybe_full; // @[Decoupled.scala 212:27:chipyard.TestHarness.RocketConfig.fir@86227.4]
  reg [31:0] _RAND_3;
  wire  ptr_match; // @[Decoupled.scala 214:33:chipyard.TestHarness.RocketConfig.fir@86228.4]
  wire  _T_2; // @[Decoupled.scala 215:28:chipyard.TestHarness.RocketConfig.fir@86229.4]
  wire  empty; // @[Decoupled.scala 215:25:chipyard.TestHarness.RocketConfig.fir@86230.4]
  wire  full; // @[Decoupled.scala 216:24:chipyard.TestHarness.RocketConfig.fir@86231.4]
  wire  do_enq; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@86232.4]
  wire  _T_8; // @[Counter.scala 39:22:chipyard.TestHarness.RocketConfig.fir@86243.6]
  wire  _T_11; // @[Counter.scala 39:22:chipyard.TestHarness.RocketConfig.fir@86249.6]
  wire  _T_12; // @[Decoupled.scala 227:16:chipyard.TestHarness.RocketConfig.fir@86252.4]
  assign ram_sink__T_15_addr = _T_1;
  assign ram_sink__T_15_data = ram_sink[ram_sink__T_15_addr]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@86224.4]
  assign ram_sink__T_5_data = io_enq_bits_sink;
  assign ram_sink__T_5_addr = _T;
  assign ram_sink__T_5_mask = 1'h1;
  assign ram_sink__T_5_en = io_enq_ready & io_enq_valid;
  assign ptr_match = _T == _T_1; // @[Decoupled.scala 214:33:chipyard.TestHarness.RocketConfig.fir@86228.4]
  assign _T_2 = ~maybe_full; // @[Decoupled.scala 215:28:chipyard.TestHarness.RocketConfig.fir@86229.4]
  assign empty = ptr_match & _T_2; // @[Decoupled.scala 215:25:chipyard.TestHarness.RocketConfig.fir@86230.4]
  assign full = ptr_match & maybe_full; // @[Decoupled.scala 216:24:chipyard.TestHarness.RocketConfig.fir@86231.4]
  assign do_enq = io_enq_ready & io_enq_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@86232.4]
  assign _T_8 = _T + 1'h1; // @[Counter.scala 39:22:chipyard.TestHarness.RocketConfig.fir@86243.6]
  assign _T_11 = _T_1 + 1'h1; // @[Counter.scala 39:22:chipyard.TestHarness.RocketConfig.fir@86249.6]
  assign _T_12 = do_enq != io_deq_valid; // @[Decoupled.scala 227:16:chipyard.TestHarness.RocketConfig.fir@86252.4]
  assign io_enq_ready = ~full; // @[Decoupled.scala 232:16:chipyard.TestHarness.RocketConfig.fir@86259.4]
  assign io_deq_valid = ~empty; // @[Decoupled.scala 231:16:chipyard.TestHarness.RocketConfig.fir@86257.4]
  assign io_deq_bits_sink = ram_sink__T_15_data; // @[Decoupled.scala 233:15:chipyard.TestHarness.RocketConfig.fir@86261.4]
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
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_sink[initvar] = _RAND_0[2:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_1 = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  maybe_full = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if(ram_sink__T_5_en & ram_sink__T_5_mask) begin
      ram_sink[ram_sink__T_5_addr] <= ram_sink__T_5_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@86224.4]
    end
    if (reset) begin
      _T <= 1'h0;
    end else if (do_enq) begin
      _T <= _T_8;
    end
    if (reset) begin
      _T_1 <= 1'h0;
    end else if (io_deq_valid) begin
      _T_1 <= _T_11;
    end
    if (reset) begin
      maybe_full <= 1'h0;
    end else if (_T_12) begin
      maybe_full <= do_enq;
    end
  end
endmodule
