module Queue_1( // @[:chipyard.TestHarness.RocketConfig.fir@27403.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@27404.4]
  input         reset, // @[:chipyard.TestHarness.RocketConfig.fir@27405.4]
  output        io_enq_ready, // @[:chipyard.TestHarness.RocketConfig.fir@27406.4]
  input         io_enq_valid, // @[:chipyard.TestHarness.RocketConfig.fir@27406.4]
  input  [2:0]  io_enq_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@27406.4]
  input  [1:0]  io_enq_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@27406.4]
  input  [2:0]  io_enq_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@27406.4]
  input  [2:0]  io_enq_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@27406.4]
  input         io_enq_bits_sink, // @[:chipyard.TestHarness.RocketConfig.fir@27406.4]
  input         io_enq_bits_denied, // @[:chipyard.TestHarness.RocketConfig.fir@27406.4]
  input  [63:0] io_enq_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@27406.4]
  input         io_enq_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@27406.4]
  input         io_deq_ready, // @[:chipyard.TestHarness.RocketConfig.fir@27406.4]
  output        io_deq_valid, // @[:chipyard.TestHarness.RocketConfig.fir@27406.4]
  output [2:0]  io_deq_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@27406.4]
  output [1:0]  io_deq_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@27406.4]
  output [2:0]  io_deq_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@27406.4]
  output [2:0]  io_deq_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@27406.4]
  output        io_deq_bits_sink, // @[:chipyard.TestHarness.RocketConfig.fir@27406.4]
  output        io_deq_bits_denied, // @[:chipyard.TestHarness.RocketConfig.fir@27406.4]
  output [63:0] io_deq_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@27406.4]
  output        io_deq_bits_corrupt // @[:chipyard.TestHarness.RocketConfig.fir@27406.4]
);
  reg [2:0] ram_opcode [0:1]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@27408.4]
  reg [31:0] _RAND_0;
  wire [2:0] ram_opcode__T_15_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@27408.4]
  wire  ram_opcode__T_15_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@27408.4]
  wire [2:0] ram_opcode__T_5_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@27408.4]
  wire  ram_opcode__T_5_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@27408.4]
  wire  ram_opcode__T_5_mask; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@27408.4]
  wire  ram_opcode__T_5_en; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@27408.4]
  reg [1:0] ram_param [0:1]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@27408.4]
  reg [31:0] _RAND_1;
  wire [1:0] ram_param__T_15_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@27408.4]
  wire  ram_param__T_15_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@27408.4]
  wire [1:0] ram_param__T_5_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@27408.4]
  wire  ram_param__T_5_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@27408.4]
  wire  ram_param__T_5_mask; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@27408.4]
  wire  ram_param__T_5_en; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@27408.4]
  reg [2:0] ram_size [0:1]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@27408.4]
  reg [31:0] _RAND_2;
  wire [2:0] ram_size__T_15_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@27408.4]
  wire  ram_size__T_15_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@27408.4]
  wire [2:0] ram_size__T_5_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@27408.4]
  wire  ram_size__T_5_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@27408.4]
  wire  ram_size__T_5_mask; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@27408.4]
  wire  ram_size__T_5_en; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@27408.4]
  reg [2:0] ram_source [0:1]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@27408.4]
  reg [31:0] _RAND_3;
  wire [2:0] ram_source__T_15_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@27408.4]
  wire  ram_source__T_15_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@27408.4]
  wire [2:0] ram_source__T_5_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@27408.4]
  wire  ram_source__T_5_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@27408.4]
  wire  ram_source__T_5_mask; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@27408.4]
  wire  ram_source__T_5_en; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@27408.4]
  reg  ram_sink [0:1]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@27408.4]
  reg [31:0] _RAND_4;
  wire  ram_sink__T_15_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@27408.4]
  wire  ram_sink__T_15_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@27408.4]
  wire  ram_sink__T_5_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@27408.4]
  wire  ram_sink__T_5_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@27408.4]
  wire  ram_sink__T_5_mask; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@27408.4]
  wire  ram_sink__T_5_en; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@27408.4]
  reg  ram_denied [0:1]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@27408.4]
  reg [31:0] _RAND_5;
  wire  ram_denied__T_15_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@27408.4]
  wire  ram_denied__T_15_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@27408.4]
  wire  ram_denied__T_5_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@27408.4]
  wire  ram_denied__T_5_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@27408.4]
  wire  ram_denied__T_5_mask; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@27408.4]
  wire  ram_denied__T_5_en; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@27408.4]
  reg [63:0] ram_data [0:1]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@27408.4]
  reg [63:0] _RAND_6;
  wire [63:0] ram_data__T_15_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@27408.4]
  wire  ram_data__T_15_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@27408.4]
  wire [63:0] ram_data__T_5_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@27408.4]
  wire  ram_data__T_5_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@27408.4]
  wire  ram_data__T_5_mask; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@27408.4]
  wire  ram_data__T_5_en; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@27408.4]
  reg  ram_corrupt [0:1]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@27408.4]
  reg [31:0] _RAND_7;
  wire  ram_corrupt__T_15_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@27408.4]
  wire  ram_corrupt__T_15_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@27408.4]
  wire  ram_corrupt__T_5_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@27408.4]
  wire  ram_corrupt__T_5_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@27408.4]
  wire  ram_corrupt__T_5_mask; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@27408.4]
  wire  ram_corrupt__T_5_en; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@27408.4]
  reg  _T; // @[Counter.scala 29:33:chipyard.TestHarness.RocketConfig.fir@27409.4]
  reg [31:0] _RAND_8;
  reg  _T_1; // @[Counter.scala 29:33:chipyard.TestHarness.RocketConfig.fir@27410.4]
  reg [31:0] _RAND_9;
  reg  maybe_full; // @[Decoupled.scala 212:27:chipyard.TestHarness.RocketConfig.fir@27411.4]
  reg [31:0] _RAND_10;
  wire  ptr_match; // @[Decoupled.scala 214:33:chipyard.TestHarness.RocketConfig.fir@27412.4]
  wire  _T_2; // @[Decoupled.scala 215:28:chipyard.TestHarness.RocketConfig.fir@27413.4]
  wire  empty; // @[Decoupled.scala 215:25:chipyard.TestHarness.RocketConfig.fir@27414.4]
  wire  full; // @[Decoupled.scala 216:24:chipyard.TestHarness.RocketConfig.fir@27415.4]
  wire  do_enq; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@27416.4]
  wire  do_deq; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@27419.4]
  wire  _T_8; // @[Counter.scala 39:22:chipyard.TestHarness.RocketConfig.fir@27434.6]
  wire  _T_11; // @[Counter.scala 39:22:chipyard.TestHarness.RocketConfig.fir@27440.6]
  wire  _T_12; // @[Decoupled.scala 227:16:chipyard.TestHarness.RocketConfig.fir@27443.4]
  assign ram_opcode__T_15_addr = _T_1;
  assign ram_opcode__T_15_data = ram_opcode[ram_opcode__T_15_addr]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@27408.4]
  assign ram_opcode__T_5_data = io_enq_bits_opcode;
  assign ram_opcode__T_5_addr = _T;
  assign ram_opcode__T_5_mask = 1'h1;
  assign ram_opcode__T_5_en = io_enq_ready & io_enq_valid;
  assign ram_param__T_15_addr = _T_1;
  assign ram_param__T_15_data = ram_param[ram_param__T_15_addr]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@27408.4]
  assign ram_param__T_5_data = io_enq_bits_param;
  assign ram_param__T_5_addr = _T;
  assign ram_param__T_5_mask = 1'h1;
  assign ram_param__T_5_en = io_enq_ready & io_enq_valid;
  assign ram_size__T_15_addr = _T_1;
  assign ram_size__T_15_data = ram_size[ram_size__T_15_addr]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@27408.4]
  assign ram_size__T_5_data = io_enq_bits_size;
  assign ram_size__T_5_addr = _T;
  assign ram_size__T_5_mask = 1'h1;
  assign ram_size__T_5_en = io_enq_ready & io_enq_valid;
  assign ram_source__T_15_addr = _T_1;
  assign ram_source__T_15_data = ram_source[ram_source__T_15_addr]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@27408.4]
  assign ram_source__T_5_data = io_enq_bits_source;
  assign ram_source__T_5_addr = _T;
  assign ram_source__T_5_mask = 1'h1;
  assign ram_source__T_5_en = io_enq_ready & io_enq_valid;
  assign ram_sink__T_15_addr = _T_1;
  assign ram_sink__T_15_data = ram_sink[ram_sink__T_15_addr]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@27408.4]
  assign ram_sink__T_5_data = io_enq_bits_sink;
  assign ram_sink__T_5_addr = _T;
  assign ram_sink__T_5_mask = 1'h1;
  assign ram_sink__T_5_en = io_enq_ready & io_enq_valid;
  assign ram_denied__T_15_addr = _T_1;
  assign ram_denied__T_15_data = ram_denied[ram_denied__T_15_addr]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@27408.4]
  assign ram_denied__T_5_data = io_enq_bits_denied;
  assign ram_denied__T_5_addr = _T;
  assign ram_denied__T_5_mask = 1'h1;
  assign ram_denied__T_5_en = io_enq_ready & io_enq_valid;
  assign ram_data__T_15_addr = _T_1;
  assign ram_data__T_15_data = ram_data[ram_data__T_15_addr]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@27408.4]
  assign ram_data__T_5_data = io_enq_bits_data;
  assign ram_data__T_5_addr = _T;
  assign ram_data__T_5_mask = 1'h1;
  assign ram_data__T_5_en = io_enq_ready & io_enq_valid;
  assign ram_corrupt__T_15_addr = _T_1;
  assign ram_corrupt__T_15_data = ram_corrupt[ram_corrupt__T_15_addr]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@27408.4]
  assign ram_corrupt__T_5_data = io_enq_bits_corrupt;
  assign ram_corrupt__T_5_addr = _T;
  assign ram_corrupt__T_5_mask = 1'h1;
  assign ram_corrupt__T_5_en = io_enq_ready & io_enq_valid;
  assign ptr_match = _T == _T_1; // @[Decoupled.scala 214:33:chipyard.TestHarness.RocketConfig.fir@27412.4]
  assign _T_2 = ~maybe_full; // @[Decoupled.scala 215:28:chipyard.TestHarness.RocketConfig.fir@27413.4]
  assign empty = ptr_match & _T_2; // @[Decoupled.scala 215:25:chipyard.TestHarness.RocketConfig.fir@27414.4]
  assign full = ptr_match & maybe_full; // @[Decoupled.scala 216:24:chipyard.TestHarness.RocketConfig.fir@27415.4]
  assign do_enq = io_enq_ready & io_enq_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@27416.4]
  assign do_deq = io_deq_ready & io_deq_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@27419.4]
  assign _T_8 = _T + 1'h1; // @[Counter.scala 39:22:chipyard.TestHarness.RocketConfig.fir@27434.6]
  assign _T_11 = _T_1 + 1'h1; // @[Counter.scala 39:22:chipyard.TestHarness.RocketConfig.fir@27440.6]
  assign _T_12 = do_enq != do_deq; // @[Decoupled.scala 227:16:chipyard.TestHarness.RocketConfig.fir@27443.4]
  assign io_enq_ready = ~full; // @[Decoupled.scala 232:16:chipyard.TestHarness.RocketConfig.fir@27450.4]
  assign io_deq_valid = ~empty; // @[Decoupled.scala 231:16:chipyard.TestHarness.RocketConfig.fir@27448.4]
  assign io_deq_bits_opcode = ram_opcode__T_15_data; // @[Decoupled.scala 233:15:chipyard.TestHarness.RocketConfig.fir@27459.4]
  assign io_deq_bits_param = ram_param__T_15_data; // @[Decoupled.scala 233:15:chipyard.TestHarness.RocketConfig.fir@27458.4]
  assign io_deq_bits_size = ram_size__T_15_data; // @[Decoupled.scala 233:15:chipyard.TestHarness.RocketConfig.fir@27457.4]
  assign io_deq_bits_source = ram_source__T_15_data; // @[Decoupled.scala 233:15:chipyard.TestHarness.RocketConfig.fir@27456.4]
  assign io_deq_bits_sink = ram_sink__T_15_data; // @[Decoupled.scala 233:15:chipyard.TestHarness.RocketConfig.fir@27455.4]
  assign io_deq_bits_denied = ram_denied__T_15_data; // @[Decoupled.scala 233:15:chipyard.TestHarness.RocketConfig.fir@27454.4]
  assign io_deq_bits_data = ram_data__T_15_data; // @[Decoupled.scala 233:15:chipyard.TestHarness.RocketConfig.fir@27453.4]
  assign io_deq_bits_corrupt = ram_corrupt__T_15_data; // @[Decoupled.scala 233:15:chipyard.TestHarness.RocketConfig.fir@27452.4]
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
    ram_opcode[initvar] = _RAND_0[2:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_1 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_param[initvar] = _RAND_1[1:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_2 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_size[initvar] = _RAND_2[2:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_3 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_source[initvar] = _RAND_3[2:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_4 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_sink[initvar] = _RAND_4[0:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_5 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_denied[initvar] = _RAND_5[0:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_6 = {2{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_data[initvar] = _RAND_6[63:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_7 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_corrupt[initvar] = _RAND_7[0:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  _T = _RAND_8[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  _T_1 = _RAND_9[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  maybe_full = _RAND_10[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if(ram_opcode__T_5_en & ram_opcode__T_5_mask) begin
      ram_opcode[ram_opcode__T_5_addr] <= ram_opcode__T_5_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@27408.4]
    end
    if(ram_param__T_5_en & ram_param__T_5_mask) begin
      ram_param[ram_param__T_5_addr] <= ram_param__T_5_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@27408.4]
    end
    if(ram_size__T_5_en & ram_size__T_5_mask) begin
      ram_size[ram_size__T_5_addr] <= ram_size__T_5_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@27408.4]
    end
    if(ram_source__T_5_en & ram_source__T_5_mask) begin
      ram_source[ram_source__T_5_addr] <= ram_source__T_5_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@27408.4]
    end
    if(ram_sink__T_5_en & ram_sink__T_5_mask) begin
      ram_sink[ram_sink__T_5_addr] <= ram_sink__T_5_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@27408.4]
    end
    if(ram_denied__T_5_en & ram_denied__T_5_mask) begin
      ram_denied[ram_denied__T_5_addr] <= ram_denied__T_5_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@27408.4]
    end
    if(ram_data__T_5_en & ram_data__T_5_mask) begin
      ram_data[ram_data__T_5_addr] <= ram_data__T_5_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@27408.4]
    end
    if(ram_corrupt__T_5_en & ram_corrupt__T_5_mask) begin
      ram_corrupt[ram_corrupt__T_5_addr] <= ram_corrupt__T_5_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@27408.4]
    end
    if (reset) begin
      _T <= 1'h0;
    end else if (do_enq) begin
      _T <= _T_8;
    end
    if (reset) begin
      _T_1 <= 1'h0;
    end else if (do_deq) begin
      _T_1 <= _T_11;
    end
    if (reset) begin
      maybe_full <= 1'h0;
    end else if (_T_12) begin
      maybe_full <= do_enq;
    end
  end
endmodule
