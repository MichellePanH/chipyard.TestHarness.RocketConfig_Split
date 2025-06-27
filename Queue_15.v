module Queue_15( // @[:chipyard.TestHarness.RocketConfig.fir@83804.2]
  input        clock, // @[:chipyard.TestHarness.RocketConfig.fir@83805.4]
  input        reset, // @[:chipyard.TestHarness.RocketConfig.fir@83806.4]
  output       io_enq_ready, // @[:chipyard.TestHarness.RocketConfig.fir@83807.4]
  input        io_enq_valid, // @[:chipyard.TestHarness.RocketConfig.fir@83807.4]
  input        io_enq_bits_read, // @[:chipyard.TestHarness.RocketConfig.fir@83807.4]
  input  [8:0] io_enq_bits_index, // @[:chipyard.TestHarness.RocketConfig.fir@83807.4]
  input  [7:0] io_enq_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@83807.4]
  input  [6:0] io_enq_bits_extra_tlrr_extra_source, // @[:chipyard.TestHarness.RocketConfig.fir@83807.4]
  input  [1:0] io_enq_bits_extra_tlrr_extra_size, // @[:chipyard.TestHarness.RocketConfig.fir@83807.4]
  input        io_deq_ready, // @[:chipyard.TestHarness.RocketConfig.fir@83807.4]
  output       io_deq_valid, // @[:chipyard.TestHarness.RocketConfig.fir@83807.4]
  output       io_deq_bits_read, // @[:chipyard.TestHarness.RocketConfig.fir@83807.4]
  output [8:0] io_deq_bits_index, // @[:chipyard.TestHarness.RocketConfig.fir@83807.4]
  output [7:0] io_deq_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@83807.4]
  output [6:0] io_deq_bits_extra_tlrr_extra_source, // @[:chipyard.TestHarness.RocketConfig.fir@83807.4]
  output [1:0] io_deq_bits_extra_tlrr_extra_size // @[:chipyard.TestHarness.RocketConfig.fir@83807.4]
);
  reg  ram_read [0:0]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@83809.4]
  reg [31:0] _RAND_0;
  wire  ram_read__T_7_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@83809.4]
  wire  ram_read__T_7_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@83809.4]
  wire  ram_read__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@83809.4]
  wire  ram_read__T_3_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@83809.4]
  wire  ram_read__T_3_mask; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@83809.4]
  wire  ram_read__T_3_en; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@83809.4]
  reg [8:0] ram_index [0:0]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@83809.4]
  reg [31:0] _RAND_1;
  wire [8:0] ram_index__T_7_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@83809.4]
  wire  ram_index__T_7_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@83809.4]
  wire [8:0] ram_index__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@83809.4]
  wire  ram_index__T_3_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@83809.4]
  wire  ram_index__T_3_mask; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@83809.4]
  wire  ram_index__T_3_en; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@83809.4]
  reg [7:0] ram_mask [0:0]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@83809.4]
  reg [31:0] _RAND_2;
  wire [7:0] ram_mask__T_7_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@83809.4]
  wire  ram_mask__T_7_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@83809.4]
  wire [7:0] ram_mask__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@83809.4]
  wire  ram_mask__T_3_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@83809.4]
  wire  ram_mask__T_3_mask; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@83809.4]
  wire  ram_mask__T_3_en; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@83809.4]
  reg [6:0] ram_extra_tlrr_extra_source [0:0]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@83809.4]
  reg [31:0] _RAND_3;
  wire [6:0] ram_extra_tlrr_extra_source__T_7_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@83809.4]
  wire  ram_extra_tlrr_extra_source__T_7_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@83809.4]
  wire [6:0] ram_extra_tlrr_extra_source__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@83809.4]
  wire  ram_extra_tlrr_extra_source__T_3_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@83809.4]
  wire  ram_extra_tlrr_extra_source__T_3_mask; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@83809.4]
  wire  ram_extra_tlrr_extra_source__T_3_en; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@83809.4]
  reg [1:0] ram_extra_tlrr_extra_size [0:0]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@83809.4]
  reg [31:0] _RAND_4;
  wire [1:0] ram_extra_tlrr_extra_size__T_7_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@83809.4]
  wire  ram_extra_tlrr_extra_size__T_7_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@83809.4]
  wire [1:0] ram_extra_tlrr_extra_size__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@83809.4]
  wire  ram_extra_tlrr_extra_size__T_3_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@83809.4]
  wire  ram_extra_tlrr_extra_size__T_3_mask; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@83809.4]
  wire  ram_extra_tlrr_extra_size__T_3_en; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@83809.4]
  reg  maybe_full; // @[Decoupled.scala 212:27:chipyard.TestHarness.RocketConfig.fir@83810.4]
  reg [31:0] _RAND_5;
  wire  empty; // @[Decoupled.scala 215:28:chipyard.TestHarness.RocketConfig.fir@83812.4]
  wire  do_enq; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@83815.4]
  wire  do_deq; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@83818.4]
  wire  _T_4; // @[Decoupled.scala 227:16:chipyard.TestHarness.RocketConfig.fir@83832.4]
  assign ram_read__T_7_addr = 1'h0;
  assign ram_read__T_7_data = ram_read[ram_read__T_7_addr]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@83809.4]
  assign ram_read__T_3_data = io_enq_bits_read;
  assign ram_read__T_3_addr = 1'h0;
  assign ram_read__T_3_mask = 1'h1;
  assign ram_read__T_3_en = io_enq_ready & io_enq_valid;
  assign ram_index__T_7_addr = 1'h0;
  assign ram_index__T_7_data = ram_index[ram_index__T_7_addr]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@83809.4]
  assign ram_index__T_3_data = io_enq_bits_index;
  assign ram_index__T_3_addr = 1'h0;
  assign ram_index__T_3_mask = 1'h1;
  assign ram_index__T_3_en = io_enq_ready & io_enq_valid;
  assign ram_mask__T_7_addr = 1'h0;
  assign ram_mask__T_7_data = ram_mask[ram_mask__T_7_addr]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@83809.4]
  assign ram_mask__T_3_data = io_enq_bits_mask;
  assign ram_mask__T_3_addr = 1'h0;
  assign ram_mask__T_3_mask = 1'h1;
  assign ram_mask__T_3_en = io_enq_ready & io_enq_valid;
  assign ram_extra_tlrr_extra_source__T_7_addr = 1'h0;
  assign ram_extra_tlrr_extra_source__T_7_data = ram_extra_tlrr_extra_source[ram_extra_tlrr_extra_source__T_7_addr]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@83809.4]
  assign ram_extra_tlrr_extra_source__T_3_data = io_enq_bits_extra_tlrr_extra_source;
  assign ram_extra_tlrr_extra_source__T_3_addr = 1'h0;
  assign ram_extra_tlrr_extra_source__T_3_mask = 1'h1;
  assign ram_extra_tlrr_extra_source__T_3_en = io_enq_ready & io_enq_valid;
  assign ram_extra_tlrr_extra_size__T_7_addr = 1'h0;
  assign ram_extra_tlrr_extra_size__T_7_data = ram_extra_tlrr_extra_size[ram_extra_tlrr_extra_size__T_7_addr]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@83809.4]
  assign ram_extra_tlrr_extra_size__T_3_data = io_enq_bits_extra_tlrr_extra_size;
  assign ram_extra_tlrr_extra_size__T_3_addr = 1'h0;
  assign ram_extra_tlrr_extra_size__T_3_mask = 1'h1;
  assign ram_extra_tlrr_extra_size__T_3_en = io_enq_ready & io_enq_valid;
  assign empty = ~maybe_full; // @[Decoupled.scala 215:28:chipyard.TestHarness.RocketConfig.fir@83812.4]
  assign do_enq = io_enq_ready & io_enq_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@83815.4]
  assign do_deq = io_deq_ready & io_deq_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@83818.4]
  assign _T_4 = do_enq != do_deq; // @[Decoupled.scala 227:16:chipyard.TestHarness.RocketConfig.fir@83832.4]
  assign io_enq_ready = ~maybe_full; // @[Decoupled.scala 232:16:chipyard.TestHarness.RocketConfig.fir@83839.4]
  assign io_deq_valid = ~empty; // @[Decoupled.scala 231:16:chipyard.TestHarness.RocketConfig.fir@83837.4]
  assign io_deq_bits_read = ram_read__T_7_data; // @[Decoupled.scala 233:15:chipyard.TestHarness.RocketConfig.fir@83846.4]
  assign io_deq_bits_index = ram_index__T_7_data; // @[Decoupled.scala 233:15:chipyard.TestHarness.RocketConfig.fir@83845.4]
  assign io_deq_bits_mask = ram_mask__T_7_data; // @[Decoupled.scala 233:15:chipyard.TestHarness.RocketConfig.fir@83843.4]
  assign io_deq_bits_extra_tlrr_extra_source = ram_extra_tlrr_extra_source__T_7_data; // @[Decoupled.scala 233:15:chipyard.TestHarness.RocketConfig.fir@83842.4]
  assign io_deq_bits_extra_tlrr_extra_size = ram_extra_tlrr_extra_size__T_7_data; // @[Decoupled.scala 233:15:chipyard.TestHarness.RocketConfig.fir@83841.4]
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
    ram_read[initvar] = _RAND_0[0:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_1 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_index[initvar] = _RAND_1[8:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_2 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_mask[initvar] = _RAND_2[7:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_3 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_extra_tlrr_extra_source[initvar] = _RAND_3[6:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_4 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_extra_tlrr_extra_size[initvar] = _RAND_4[1:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  maybe_full = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if(ram_read__T_3_en & ram_read__T_3_mask) begin
      ram_read[ram_read__T_3_addr] <= ram_read__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@83809.4]
    end
    if(ram_index__T_3_en & ram_index__T_3_mask) begin
      ram_index[ram_index__T_3_addr] <= ram_index__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@83809.4]
    end
    if(ram_mask__T_3_en & ram_mask__T_3_mask) begin
      ram_mask[ram_mask__T_3_addr] <= ram_mask__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@83809.4]
    end
    if(ram_extra_tlrr_extra_source__T_3_en & ram_extra_tlrr_extra_source__T_3_mask) begin
      ram_extra_tlrr_extra_source[ram_extra_tlrr_extra_source__T_3_addr] <= ram_extra_tlrr_extra_source__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@83809.4]
    end
    if(ram_extra_tlrr_extra_size__T_3_en & ram_extra_tlrr_extra_size__T_3_mask) begin
      ram_extra_tlrr_extra_size[ram_extra_tlrr_extra_size__T_3_addr] <= ram_extra_tlrr_extra_size__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@83809.4]
    end
    if (reset) begin
      maybe_full <= 1'h0;
    end else if (_T_4) begin
      maybe_full <= do_enq;
    end
  end
endmodule
