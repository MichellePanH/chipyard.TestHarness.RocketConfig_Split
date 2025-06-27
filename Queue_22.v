module Queue_22( // @[:chipyard.TestHarness.RocketConfig.fir@87485.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@87486.4]
  input         reset, // @[:chipyard.TestHarness.RocketConfig.fir@87487.4]
  output        io_enq_ready, // @[:chipyard.TestHarness.RocketConfig.fir@87488.4]
  input         io_enq_valid, // @[:chipyard.TestHarness.RocketConfig.fir@87488.4]
  input  [31:0] io_enq_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@87488.4]
  input         io_deq_ready, // @[:chipyard.TestHarness.RocketConfig.fir@87488.4]
  output        io_deq_valid, // @[:chipyard.TestHarness.RocketConfig.fir@87488.4]
  output [31:0] io_deq_bits_address // @[:chipyard.TestHarness.RocketConfig.fir@87488.4]
);
  reg [31:0] ram_address [0:0]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@87490.4]
  reg [31:0] _RAND_0;
  wire [31:0] ram_address__T_7_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@87490.4]
  wire  ram_address__T_7_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@87490.4]
  wire [31:0] ram_address__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@87490.4]
  wire  ram_address__T_3_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@87490.4]
  wire  ram_address__T_3_mask; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@87490.4]
  wire  ram_address__T_3_en; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@87490.4]
  reg  maybe_full; // @[Decoupled.scala 212:27:chipyard.TestHarness.RocketConfig.fir@87491.4]
  reg [31:0] _RAND_1;
  wire  empty; // @[Decoupled.scala 215:28:chipyard.TestHarness.RocketConfig.fir@87493.4]
  wire  do_enq; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@87496.4]
  wire  do_deq; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@87499.4]
  wire  _T_4; // @[Decoupled.scala 227:16:chipyard.TestHarness.RocketConfig.fir@87508.4]
  assign ram_address__T_7_addr = 1'h0;
  assign ram_address__T_7_data = ram_address[ram_address__T_7_addr]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@87490.4]
  assign ram_address__T_3_data = io_enq_bits_address;
  assign ram_address__T_3_addr = 1'h0;
  assign ram_address__T_3_mask = 1'h1;
  assign ram_address__T_3_en = io_enq_ready & io_enq_valid;
  assign empty = ~maybe_full; // @[Decoupled.scala 215:28:chipyard.TestHarness.RocketConfig.fir@87493.4]
  assign do_enq = io_enq_ready & io_enq_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@87496.4]
  assign do_deq = io_deq_ready & io_deq_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@87499.4]
  assign _T_4 = do_enq != do_deq; // @[Decoupled.scala 227:16:chipyard.TestHarness.RocketConfig.fir@87508.4]
  assign io_enq_ready = ~maybe_full; // @[Decoupled.scala 232:16:chipyard.TestHarness.RocketConfig.fir@87515.4]
  assign io_deq_valid = ~empty; // @[Decoupled.scala 231:16:chipyard.TestHarness.RocketConfig.fir@87513.4]
  assign io_deq_bits_address = ram_address__T_7_data; // @[Decoupled.scala 233:15:chipyard.TestHarness.RocketConfig.fir@87517.4]
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
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_address[initvar] = _RAND_0[31:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  maybe_full = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if(ram_address__T_3_en & ram_address__T_3_mask) begin
      ram_address[ram_address__T_3_addr] <= ram_address__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@87490.4]
    end
    if (reset) begin
      maybe_full <= 1'h0;
    end else if (_T_4) begin
      maybe_full <= do_enq;
    end
  end
endmodule
