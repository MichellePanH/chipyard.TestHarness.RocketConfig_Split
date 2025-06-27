module Queue_8( // @[:chipyard.TestHarness.RocketConfig.fir@54497.2]
  input        clock, // @[:chipyard.TestHarness.RocketConfig.fir@54498.4]
  input        reset, // @[:chipyard.TestHarness.RocketConfig.fir@54499.4]
  output       io_enq_ready, // @[:chipyard.TestHarness.RocketConfig.fir@54500.4]
  input        io_enq_valid, // @[:chipyard.TestHarness.RocketConfig.fir@54500.4]
  input  [2:0] io_enq_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@54500.4]
  input  [3:0] io_enq_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@54500.4]
  input  [2:0] io_enq_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@54500.4]
  input        io_deq_ready, // @[:chipyard.TestHarness.RocketConfig.fir@54500.4]
  output       io_deq_valid, // @[:chipyard.TestHarness.RocketConfig.fir@54500.4]
  output [2:0] io_deq_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@54500.4]
  output [3:0] io_deq_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@54500.4]
  output [2:0] io_deq_bits_source // @[:chipyard.TestHarness.RocketConfig.fir@54500.4]
);
  reg [2:0] ram_opcode [0:0]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@54502.4]
  reg [31:0] _RAND_0;
  wire [2:0] ram_opcode__T_7_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@54502.4]
  wire  ram_opcode__T_7_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@54502.4]
  wire [2:0] ram_opcode__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@54502.4]
  wire  ram_opcode__T_3_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@54502.4]
  wire  ram_opcode__T_3_mask; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@54502.4]
  wire  ram_opcode__T_3_en; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@54502.4]
  reg [3:0] ram_size [0:0]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@54502.4]
  reg [31:0] _RAND_1;
  wire [3:0] ram_size__T_7_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@54502.4]
  wire  ram_size__T_7_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@54502.4]
  wire [3:0] ram_size__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@54502.4]
  wire  ram_size__T_3_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@54502.4]
  wire  ram_size__T_3_mask; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@54502.4]
  wire  ram_size__T_3_en; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@54502.4]
  reg [2:0] ram_source [0:0]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@54502.4]
  reg [31:0] _RAND_2;
  wire [2:0] ram_source__T_7_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@54502.4]
  wire  ram_source__T_7_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@54502.4]
  wire [2:0] ram_source__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@54502.4]
  wire  ram_source__T_3_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@54502.4]
  wire  ram_source__T_3_mask; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@54502.4]
  wire  ram_source__T_3_en; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@54502.4]
  reg  maybe_full; // @[Decoupled.scala 212:27:chipyard.TestHarness.RocketConfig.fir@54503.4]
  reg [31:0] _RAND_3;
  wire  empty; // @[Decoupled.scala 215:28:chipyard.TestHarness.RocketConfig.fir@54505.4]
  wire  do_enq; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@54508.4]
  wire  do_deq; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@54511.4]
  wire  _T_4; // @[Decoupled.scala 227:16:chipyard.TestHarness.RocketConfig.fir@54527.4]
  assign ram_opcode__T_7_addr = 1'h0;
  assign ram_opcode__T_7_data = ram_opcode[ram_opcode__T_7_addr]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@54502.4]
  assign ram_opcode__T_3_data = io_enq_bits_opcode;
  assign ram_opcode__T_3_addr = 1'h0;
  assign ram_opcode__T_3_mask = 1'h1;
  assign ram_opcode__T_3_en = io_enq_ready & io_enq_valid;
  assign ram_size__T_7_addr = 1'h0;
  assign ram_size__T_7_data = ram_size[ram_size__T_7_addr]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@54502.4]
  assign ram_size__T_3_data = io_enq_bits_size;
  assign ram_size__T_3_addr = 1'h0;
  assign ram_size__T_3_mask = 1'h1;
  assign ram_size__T_3_en = io_enq_ready & io_enq_valid;
  assign ram_source__T_7_addr = 1'h0;
  assign ram_source__T_7_data = ram_source[ram_source__T_7_addr]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@54502.4]
  assign ram_source__T_3_data = io_enq_bits_source;
  assign ram_source__T_3_addr = 1'h0;
  assign ram_source__T_3_mask = 1'h1;
  assign ram_source__T_3_en = io_enq_ready & io_enq_valid;
  assign empty = ~maybe_full; // @[Decoupled.scala 215:28:chipyard.TestHarness.RocketConfig.fir@54505.4]
  assign do_enq = io_enq_ready & io_enq_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@54508.4]
  assign do_deq = io_deq_ready & io_deq_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@54511.4]
  assign _T_4 = do_enq != do_deq; // @[Decoupled.scala 227:16:chipyard.TestHarness.RocketConfig.fir@54527.4]
  assign io_enq_ready = ~maybe_full; // @[Decoupled.scala 232:16:chipyard.TestHarness.RocketConfig.fir@54534.4]
  assign io_deq_valid = ~empty; // @[Decoupled.scala 231:16:chipyard.TestHarness.RocketConfig.fir@54532.4]
  assign io_deq_bits_opcode = ram_opcode__T_7_data; // @[Decoupled.scala 233:15:chipyard.TestHarness.RocketConfig.fir@54543.4]
  assign io_deq_bits_size = ram_size__T_7_data; // @[Decoupled.scala 233:15:chipyard.TestHarness.RocketConfig.fir@54541.4]
  assign io_deq_bits_source = ram_source__T_7_data; // @[Decoupled.scala 233:15:chipyard.TestHarness.RocketConfig.fir@54540.4]
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
    ram_opcode[initvar] = _RAND_0[2:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_1 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_size[initvar] = _RAND_1[3:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_2 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_source[initvar] = _RAND_2[2:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  maybe_full = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if(ram_opcode__T_3_en & ram_opcode__T_3_mask) begin
      ram_opcode[ram_opcode__T_3_addr] <= ram_opcode__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@54502.4]
    end
    if(ram_size__T_3_en & ram_size__T_3_mask) begin
      ram_size[ram_size__T_3_addr] <= ram_size__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@54502.4]
    end
    if(ram_source__T_3_en & ram_source__T_3_mask) begin
      ram_source[ram_source__T_3_addr] <= ram_source__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@54502.4]
    end
    if (reset) begin
      maybe_full <= 1'h0;
    end else if (_T_4) begin
      maybe_full <= do_enq;
    end
  end
endmodule
