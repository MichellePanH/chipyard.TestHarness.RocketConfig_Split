module Queue_20( // @[:chipyard.TestHarness.RocketConfig.fir@86807.2]
  input        clock, // @[:chipyard.TestHarness.RocketConfig.fir@86808.4]
  input        reset, // @[:chipyard.TestHarness.RocketConfig.fir@86809.4]
  output       io_enq_ready, // @[:chipyard.TestHarness.RocketConfig.fir@86810.4]
  input        io_enq_valid, // @[:chipyard.TestHarness.RocketConfig.fir@86810.4]
  input        io_enq_bits_noop, // @[:chipyard.TestHarness.RocketConfig.fir@86810.4]
  input  [2:0] io_enq_bits_way, // @[:chipyard.TestHarness.RocketConfig.fir@86810.4]
  input  [9:0] io_enq_bits_set, // @[:chipyard.TestHarness.RocketConfig.fir@86810.4]
  input  [2:0] io_enq_bits_beat, // @[:chipyard.TestHarness.RocketConfig.fir@86810.4]
  input        io_deq_ready, // @[:chipyard.TestHarness.RocketConfig.fir@86810.4]
  output       io_deq_valid, // @[:chipyard.TestHarness.RocketConfig.fir@86810.4]
  output       io_deq_bits_noop, // @[:chipyard.TestHarness.RocketConfig.fir@86810.4]
  output [2:0] io_deq_bits_way, // @[:chipyard.TestHarness.RocketConfig.fir@86810.4]
  output [9:0] io_deq_bits_set, // @[:chipyard.TestHarness.RocketConfig.fir@86810.4]
  output [2:0] io_deq_bits_beat, // @[:chipyard.TestHarness.RocketConfig.fir@86810.4]
  output       io_deq_bits_mask // @[:chipyard.TestHarness.RocketConfig.fir@86810.4]
);
  reg  ram_noop [0:0]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@86812.4]
  reg [31:0] _RAND_0;
  wire  ram_noop__T_7_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@86812.4]
  wire  ram_noop__T_7_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@86812.4]
  wire  ram_noop__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@86812.4]
  wire  ram_noop__T_3_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@86812.4]
  wire  ram_noop__T_3_mask; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@86812.4]
  wire  ram_noop__T_3_en; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@86812.4]
  reg [2:0] ram_way [0:0]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@86812.4]
  reg [31:0] _RAND_1;
  wire [2:0] ram_way__T_7_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@86812.4]
  wire  ram_way__T_7_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@86812.4]
  wire [2:0] ram_way__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@86812.4]
  wire  ram_way__T_3_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@86812.4]
  wire  ram_way__T_3_mask; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@86812.4]
  wire  ram_way__T_3_en; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@86812.4]
  reg [9:0] ram_set [0:0]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@86812.4]
  reg [31:0] _RAND_2;
  wire [9:0] ram_set__T_7_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@86812.4]
  wire  ram_set__T_7_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@86812.4]
  wire [9:0] ram_set__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@86812.4]
  wire  ram_set__T_3_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@86812.4]
  wire  ram_set__T_3_mask; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@86812.4]
  wire  ram_set__T_3_en; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@86812.4]
  reg [2:0] ram_beat [0:0]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@86812.4]
  reg [31:0] _RAND_3;
  wire [2:0] ram_beat__T_7_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@86812.4]
  wire  ram_beat__T_7_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@86812.4]
  wire [2:0] ram_beat__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@86812.4]
  wire  ram_beat__T_3_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@86812.4]
  wire  ram_beat__T_3_mask; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@86812.4]
  wire  ram_beat__T_3_en; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@86812.4]
  reg  ram_mask [0:0]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@86812.4]
  reg [31:0] _RAND_4;
  wire  ram_mask__T_7_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@86812.4]
  wire  ram_mask__T_7_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@86812.4]
  wire  ram_mask__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@86812.4]
  wire  ram_mask__T_3_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@86812.4]
  wire  ram_mask__T_3_mask; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@86812.4]
  wire  ram_mask__T_3_en; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@86812.4]
  reg  maybe_full; // @[Decoupled.scala 212:27:chipyard.TestHarness.RocketConfig.fir@86813.4]
  reg [31:0] _RAND_5;
  wire  empty; // @[Decoupled.scala 215:28:chipyard.TestHarness.RocketConfig.fir@86815.4]
  wire  do_enq; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@86818.4]
  wire  do_deq; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@86821.4]
  wire  _T_4; // @[Decoupled.scala 227:16:chipyard.TestHarness.RocketConfig.fir@86834.4]
  assign ram_noop__T_7_addr = 1'h0;
  assign ram_noop__T_7_data = ram_noop[ram_noop__T_7_addr]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@86812.4]
  assign ram_noop__T_3_data = io_enq_bits_noop;
  assign ram_noop__T_3_addr = 1'h0;
  assign ram_noop__T_3_mask = 1'h1;
  assign ram_noop__T_3_en = io_enq_ready & io_enq_valid;
  assign ram_way__T_7_addr = 1'h0;
  assign ram_way__T_7_data = ram_way[ram_way__T_7_addr]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@86812.4]
  assign ram_way__T_3_data = io_enq_bits_way;
  assign ram_way__T_3_addr = 1'h0;
  assign ram_way__T_3_mask = 1'h1;
  assign ram_way__T_3_en = io_enq_ready & io_enq_valid;
  assign ram_set__T_7_addr = 1'h0;
  assign ram_set__T_7_data = ram_set[ram_set__T_7_addr]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@86812.4]
  assign ram_set__T_3_data = io_enq_bits_set;
  assign ram_set__T_3_addr = 1'h0;
  assign ram_set__T_3_mask = 1'h1;
  assign ram_set__T_3_en = io_enq_ready & io_enq_valid;
  assign ram_beat__T_7_addr = 1'h0;
  assign ram_beat__T_7_data = ram_beat[ram_beat__T_7_addr]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@86812.4]
  assign ram_beat__T_3_data = io_enq_bits_beat;
  assign ram_beat__T_3_addr = 1'h0;
  assign ram_beat__T_3_mask = 1'h1;
  assign ram_beat__T_3_en = io_enq_ready & io_enq_valid;
  assign ram_mask__T_7_addr = 1'h0;
  assign ram_mask__T_7_data = ram_mask[ram_mask__T_7_addr]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@86812.4]
  assign ram_mask__T_3_data = 1'h1;
  assign ram_mask__T_3_addr = 1'h0;
  assign ram_mask__T_3_mask = 1'h1;
  assign ram_mask__T_3_en = io_enq_ready & io_enq_valid;
  assign empty = ~maybe_full; // @[Decoupled.scala 215:28:chipyard.TestHarness.RocketConfig.fir@86815.4]
  assign do_enq = io_enq_ready & io_enq_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@86818.4]
  assign do_deq = io_deq_ready & io_deq_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@86821.4]
  assign _T_4 = do_enq != do_deq; // @[Decoupled.scala 227:16:chipyard.TestHarness.RocketConfig.fir@86834.4]
  assign io_enq_ready = io_deq_ready | empty; // @[Decoupled.scala 232:16:chipyard.TestHarness.RocketConfig.fir@86841.4 Decoupled.scala 245:40:chipyard.TestHarness.RocketConfig.fir@86849.6]
  assign io_deq_valid = ~empty; // @[Decoupled.scala 231:16:chipyard.TestHarness.RocketConfig.fir@86839.4]
  assign io_deq_bits_noop = ram_noop__T_7_data; // @[Decoupled.scala 233:15:chipyard.TestHarness.RocketConfig.fir@86847.4]
  assign io_deq_bits_way = ram_way__T_7_data; // @[Decoupled.scala 233:15:chipyard.TestHarness.RocketConfig.fir@86846.4]
  assign io_deq_bits_set = ram_set__T_7_data; // @[Decoupled.scala 233:15:chipyard.TestHarness.RocketConfig.fir@86845.4]
  assign io_deq_bits_beat = ram_beat__T_7_data; // @[Decoupled.scala 233:15:chipyard.TestHarness.RocketConfig.fir@86844.4]
  assign io_deq_bits_mask = ram_mask__T_7_data; // @[Decoupled.scala 233:15:chipyard.TestHarness.RocketConfig.fir@86843.4]
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
    ram_noop[initvar] = _RAND_0[0:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_1 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_way[initvar] = _RAND_1[2:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_2 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_set[initvar] = _RAND_2[9:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_3 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_beat[initvar] = _RAND_3[2:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_4 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_mask[initvar] = _RAND_4[0:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  maybe_full = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if(ram_noop__T_3_en & ram_noop__T_3_mask) begin
      ram_noop[ram_noop__T_3_addr] <= ram_noop__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@86812.4]
    end
    if(ram_way__T_3_en & ram_way__T_3_mask) begin
      ram_way[ram_way__T_3_addr] <= ram_way__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@86812.4]
    end
    if(ram_set__T_3_en & ram_set__T_3_mask) begin
      ram_set[ram_set__T_3_addr] <= ram_set__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@86812.4]
    end
    if(ram_beat__T_3_en & ram_beat__T_3_mask) begin
      ram_beat[ram_beat__T_3_addr] <= ram_beat__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@86812.4]
    end
    if(ram_mask__T_3_en & ram_mask__T_3_mask) begin
      ram_mask[ram_mask__T_3_addr] <= ram_mask__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@86812.4]
    end
    if (reset) begin
      maybe_full <= 1'h0;
    end else if (_T_4) begin
      maybe_full <= do_enq;
    end
  end
endmodule
