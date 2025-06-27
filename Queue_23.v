module Queue_23( // @[:chipyard.TestHarness.RocketConfig.fir@87618.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@87619.4]
  input         reset, // @[:chipyard.TestHarness.RocketConfig.fir@87620.4]
  output        io_enq_ready, // @[:chipyard.TestHarness.RocketConfig.fir@87621.4]
  input         io_enq_valid, // @[:chipyard.TestHarness.RocketConfig.fir@87621.4]
  input  [9:0]  io_enq_bits_set, // @[:chipyard.TestHarness.RocketConfig.fir@87621.4]
  input  [2:0]  io_enq_bits_way, // @[:chipyard.TestHarness.RocketConfig.fir@87621.4]
  input         io_enq_bits_data_dirty, // @[:chipyard.TestHarness.RocketConfig.fir@87621.4]
  input  [1:0]  io_enq_bits_data_state, // @[:chipyard.TestHarness.RocketConfig.fir@87621.4]
  input         io_enq_bits_data_clients, // @[:chipyard.TestHarness.RocketConfig.fir@87621.4]
  input  [11:0] io_enq_bits_data_tag, // @[:chipyard.TestHarness.RocketConfig.fir@87621.4]
  input         io_deq_ready, // @[:chipyard.TestHarness.RocketConfig.fir@87621.4]
  output        io_deq_valid, // @[:chipyard.TestHarness.RocketConfig.fir@87621.4]
  output [9:0]  io_deq_bits_set, // @[:chipyard.TestHarness.RocketConfig.fir@87621.4]
  output [2:0]  io_deq_bits_way, // @[:chipyard.TestHarness.RocketConfig.fir@87621.4]
  output        io_deq_bits_data_dirty, // @[:chipyard.TestHarness.RocketConfig.fir@87621.4]
  output [1:0]  io_deq_bits_data_state, // @[:chipyard.TestHarness.RocketConfig.fir@87621.4]
  output        io_deq_bits_data_clients, // @[:chipyard.TestHarness.RocketConfig.fir@87621.4]
  output [11:0] io_deq_bits_data_tag // @[:chipyard.TestHarness.RocketConfig.fir@87621.4]
);
  reg [9:0] ram_set [0:0]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@87623.4]
  reg [31:0] _RAND_0;
  wire [9:0] ram_set__T_7_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@87623.4]
  wire  ram_set__T_7_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@87623.4]
  wire [9:0] ram_set__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@87623.4]
  wire  ram_set__T_3_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@87623.4]
  wire  ram_set__T_3_mask; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@87623.4]
  wire  ram_set__T_3_en; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@87623.4]
  reg [2:0] ram_way [0:0]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@87623.4]
  reg [31:0] _RAND_1;
  wire [2:0] ram_way__T_7_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@87623.4]
  wire  ram_way__T_7_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@87623.4]
  wire [2:0] ram_way__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@87623.4]
  wire  ram_way__T_3_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@87623.4]
  wire  ram_way__T_3_mask; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@87623.4]
  wire  ram_way__T_3_en; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@87623.4]
  reg  ram_data_dirty [0:0]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@87623.4]
  reg [31:0] _RAND_2;
  wire  ram_data_dirty__T_7_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@87623.4]
  wire  ram_data_dirty__T_7_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@87623.4]
  wire  ram_data_dirty__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@87623.4]
  wire  ram_data_dirty__T_3_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@87623.4]
  wire  ram_data_dirty__T_3_mask; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@87623.4]
  wire  ram_data_dirty__T_3_en; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@87623.4]
  reg [1:0] ram_data_state [0:0]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@87623.4]
  reg [31:0] _RAND_3;
  wire [1:0] ram_data_state__T_7_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@87623.4]
  wire  ram_data_state__T_7_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@87623.4]
  wire [1:0] ram_data_state__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@87623.4]
  wire  ram_data_state__T_3_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@87623.4]
  wire  ram_data_state__T_3_mask; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@87623.4]
  wire  ram_data_state__T_3_en; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@87623.4]
  reg  ram_data_clients [0:0]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@87623.4]
  reg [31:0] _RAND_4;
  wire  ram_data_clients__T_7_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@87623.4]
  wire  ram_data_clients__T_7_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@87623.4]
  wire  ram_data_clients__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@87623.4]
  wire  ram_data_clients__T_3_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@87623.4]
  wire  ram_data_clients__T_3_mask; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@87623.4]
  wire  ram_data_clients__T_3_en; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@87623.4]
  reg [11:0] ram_data_tag [0:0]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@87623.4]
  reg [31:0] _RAND_5;
  wire [11:0] ram_data_tag__T_7_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@87623.4]
  wire  ram_data_tag__T_7_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@87623.4]
  wire [11:0] ram_data_tag__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@87623.4]
  wire  ram_data_tag__T_3_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@87623.4]
  wire  ram_data_tag__T_3_mask; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@87623.4]
  wire  ram_data_tag__T_3_en; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@87623.4]
  reg  maybe_full; // @[Decoupled.scala 212:27:chipyard.TestHarness.RocketConfig.fir@87624.4]
  reg [31:0] _RAND_6;
  wire  empty; // @[Decoupled.scala 215:28:chipyard.TestHarness.RocketConfig.fir@87626.4]
  wire  do_enq; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@87629.4]
  wire  do_deq; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@87632.4]
  wire  _T_4; // @[Decoupled.scala 227:16:chipyard.TestHarness.RocketConfig.fir@87646.4]
  assign ram_set__T_7_addr = 1'h0;
  assign ram_set__T_7_data = ram_set[ram_set__T_7_addr]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@87623.4]
  assign ram_set__T_3_data = io_enq_bits_set;
  assign ram_set__T_3_addr = 1'h0;
  assign ram_set__T_3_mask = 1'h1;
  assign ram_set__T_3_en = io_enq_ready & io_enq_valid;
  assign ram_way__T_7_addr = 1'h0;
  assign ram_way__T_7_data = ram_way[ram_way__T_7_addr]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@87623.4]
  assign ram_way__T_3_data = io_enq_bits_way;
  assign ram_way__T_3_addr = 1'h0;
  assign ram_way__T_3_mask = 1'h1;
  assign ram_way__T_3_en = io_enq_ready & io_enq_valid;
  assign ram_data_dirty__T_7_addr = 1'h0;
  assign ram_data_dirty__T_7_data = ram_data_dirty[ram_data_dirty__T_7_addr]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@87623.4]
  assign ram_data_dirty__T_3_data = io_enq_bits_data_dirty;
  assign ram_data_dirty__T_3_addr = 1'h0;
  assign ram_data_dirty__T_3_mask = 1'h1;
  assign ram_data_dirty__T_3_en = io_enq_ready & io_enq_valid;
  assign ram_data_state__T_7_addr = 1'h0;
  assign ram_data_state__T_7_data = ram_data_state[ram_data_state__T_7_addr]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@87623.4]
  assign ram_data_state__T_3_data = io_enq_bits_data_state;
  assign ram_data_state__T_3_addr = 1'h0;
  assign ram_data_state__T_3_mask = 1'h1;
  assign ram_data_state__T_3_en = io_enq_ready & io_enq_valid;
  assign ram_data_clients__T_7_addr = 1'h0;
  assign ram_data_clients__T_7_data = ram_data_clients[ram_data_clients__T_7_addr]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@87623.4]
  assign ram_data_clients__T_3_data = io_enq_bits_data_clients;
  assign ram_data_clients__T_3_addr = 1'h0;
  assign ram_data_clients__T_3_mask = 1'h1;
  assign ram_data_clients__T_3_en = io_enq_ready & io_enq_valid;
  assign ram_data_tag__T_7_addr = 1'h0;
  assign ram_data_tag__T_7_data = ram_data_tag[ram_data_tag__T_7_addr]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@87623.4]
  assign ram_data_tag__T_3_data = io_enq_bits_data_tag;
  assign ram_data_tag__T_3_addr = 1'h0;
  assign ram_data_tag__T_3_mask = 1'h1;
  assign ram_data_tag__T_3_en = io_enq_ready & io_enq_valid;
  assign empty = ~maybe_full; // @[Decoupled.scala 215:28:chipyard.TestHarness.RocketConfig.fir@87626.4]
  assign do_enq = io_enq_ready & io_enq_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@87629.4]
  assign do_deq = io_deq_ready & io_deq_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@87632.4]
  assign _T_4 = do_enq != do_deq; // @[Decoupled.scala 227:16:chipyard.TestHarness.RocketConfig.fir@87646.4]
  assign io_enq_ready = ~maybe_full; // @[Decoupled.scala 232:16:chipyard.TestHarness.RocketConfig.fir@87653.4]
  assign io_deq_valid = ~empty; // @[Decoupled.scala 231:16:chipyard.TestHarness.RocketConfig.fir@87651.4]
  assign io_deq_bits_set = ram_set__T_7_data; // @[Decoupled.scala 233:15:chipyard.TestHarness.RocketConfig.fir@87660.4]
  assign io_deq_bits_way = ram_way__T_7_data; // @[Decoupled.scala 233:15:chipyard.TestHarness.RocketConfig.fir@87659.4]
  assign io_deq_bits_data_dirty = ram_data_dirty__T_7_data; // @[Decoupled.scala 233:15:chipyard.TestHarness.RocketConfig.fir@87658.4]
  assign io_deq_bits_data_state = ram_data_state__T_7_data; // @[Decoupled.scala 233:15:chipyard.TestHarness.RocketConfig.fir@87657.4]
  assign io_deq_bits_data_clients = ram_data_clients__T_7_data; // @[Decoupled.scala 233:15:chipyard.TestHarness.RocketConfig.fir@87656.4]
  assign io_deq_bits_data_tag = ram_data_tag__T_7_data; // @[Decoupled.scala 233:15:chipyard.TestHarness.RocketConfig.fir@87655.4]
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
    ram_set[initvar] = _RAND_0[9:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_1 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_way[initvar] = _RAND_1[2:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_2 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_data_dirty[initvar] = _RAND_2[0:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_3 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_data_state[initvar] = _RAND_3[1:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_4 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_data_clients[initvar] = _RAND_4[0:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_5 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_data_tag[initvar] = _RAND_5[11:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  maybe_full = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if(ram_set__T_3_en & ram_set__T_3_mask) begin
      ram_set[ram_set__T_3_addr] <= ram_set__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@87623.4]
    end
    if(ram_way__T_3_en & ram_way__T_3_mask) begin
      ram_way[ram_way__T_3_addr] <= ram_way__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@87623.4]
    end
    if(ram_data_dirty__T_3_en & ram_data_dirty__T_3_mask) begin
      ram_data_dirty[ram_data_dirty__T_3_addr] <= ram_data_dirty__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@87623.4]
    end
    if(ram_data_state__T_3_en & ram_data_state__T_3_mask) begin
      ram_data_state[ram_data_state__T_3_addr] <= ram_data_state__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@87623.4]
    end
    if(ram_data_clients__T_3_en & ram_data_clients__T_3_mask) begin
      ram_data_clients[ram_data_clients__T_3_addr] <= ram_data_clients__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@87623.4]
    end
    if(ram_data_tag__T_3_en & ram_data_tag__T_3_mask) begin
      ram_data_tag[ram_data_tag__T_3_addr] <= ram_data_tag__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@87623.4]
    end
    if (reset) begin
      maybe_full <= 1'h0;
    end else if (_T_4) begin
      maybe_full <= do_enq;
    end
  end
endmodule
