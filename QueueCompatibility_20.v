module QueueCompatibility_20( // @[:chipyard.TestHarness.RocketConfig.fir@84227.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@84228.4]
  input         reset, // @[:chipyard.TestHarness.RocketConfig.fir@84229.4]
  output        io_enq_ready, // @[:chipyard.TestHarness.RocketConfig.fir@84230.4]
  input         io_enq_valid, // @[:chipyard.TestHarness.RocketConfig.fir@84230.4]
  input  [2:0]  io_enq_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@84230.4]
  input  [2:0]  io_enq_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@84230.4]
  input  [2:0]  io_enq_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@84230.4]
  input  [31:0] io_enq_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@84230.4]
  input  [63:0] io_enq_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@84230.4]
  input         io_deq_ready, // @[:chipyard.TestHarness.RocketConfig.fir@84230.4]
  output        io_deq_valid, // @[:chipyard.TestHarness.RocketConfig.fir@84230.4]
  output [2:0]  io_deq_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@84230.4]
  output [2:0]  io_deq_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@84230.4]
  output [2:0]  io_deq_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@84230.4]
  output [2:0]  io_deq_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@84230.4]
  output [31:0] io_deq_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@84230.4]
  output [63:0] io_deq_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@84230.4]
  output        io_deq_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@84230.4]
  output [3:0]  io_count // @[:chipyard.TestHarness.RocketConfig.fir@84230.4]
);
  reg [2:0] ram_opcode [0:11]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@84235.4]
  reg [31:0] _RAND_0;
  wire [2:0] ram_opcode__T_11_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@84235.4]
  wire [3:0] ram_opcode__T_11_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@84235.4]
  reg [31:0] _RAND_1;
  wire [2:0] ram_opcode__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@84235.4]
  wire [3:0] ram_opcode__T_3_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@84235.4]
  wire  ram_opcode__T_3_mask; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@84235.4]
  wire  ram_opcode__T_3_en; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@84235.4]
  reg [2:0] ram_param [0:11]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@84235.4]
  reg [31:0] _RAND_2;
  wire [2:0] ram_param__T_11_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@84235.4]
  wire [3:0] ram_param__T_11_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@84235.4]
  reg [31:0] _RAND_3;
  wire [2:0] ram_param__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@84235.4]
  wire [3:0] ram_param__T_3_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@84235.4]
  wire  ram_param__T_3_mask; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@84235.4]
  wire  ram_param__T_3_en; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@84235.4]
  reg [2:0] ram_size [0:11]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@84235.4]
  reg [31:0] _RAND_4;
  wire [2:0] ram_size__T_11_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@84235.4]
  wire [3:0] ram_size__T_11_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@84235.4]
  reg [31:0] _RAND_5;
  wire [2:0] ram_size__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@84235.4]
  wire [3:0] ram_size__T_3_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@84235.4]
  wire  ram_size__T_3_mask; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@84235.4]
  wire  ram_size__T_3_en; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@84235.4]
  reg [2:0] ram_source [0:11]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@84235.4]
  reg [31:0] _RAND_6;
  wire [2:0] ram_source__T_11_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@84235.4]
  wire [3:0] ram_source__T_11_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@84235.4]
  reg [31:0] _RAND_7;
  wire [2:0] ram_source__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@84235.4]
  wire [3:0] ram_source__T_3_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@84235.4]
  wire  ram_source__T_3_mask; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@84235.4]
  wire  ram_source__T_3_en; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@84235.4]
  reg [31:0] ram_address [0:11]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@84235.4]
  reg [31:0] _RAND_8;
  wire [31:0] ram_address__T_11_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@84235.4]
  wire [3:0] ram_address__T_11_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@84235.4]
  reg [31:0] _RAND_9;
  wire [31:0] ram_address__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@84235.4]
  wire [3:0] ram_address__T_3_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@84235.4]
  wire  ram_address__T_3_mask; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@84235.4]
  wire  ram_address__T_3_en; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@84235.4]
  reg [63:0] ram_data [0:11]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@84235.4]
  reg [63:0] _RAND_10;
  wire [63:0] ram_data__T_11_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@84235.4]
  wire [3:0] ram_data__T_11_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@84235.4]
  reg [63:0] _RAND_11;
  wire [63:0] ram_data__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@84235.4]
  wire [3:0] ram_data__T_3_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@84235.4]
  wire  ram_data__T_3_mask; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@84235.4]
  wire  ram_data__T_3_en; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@84235.4]
  reg  ram_corrupt [0:11]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@84235.4]
  reg [31:0] _RAND_12;
  wire  ram_corrupt__T_11_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@84235.4]
  wire [3:0] ram_corrupt__T_11_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@84235.4]
  reg [31:0] _RAND_13;
  wire  ram_corrupt__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@84235.4]
  wire [3:0] ram_corrupt__T_3_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@84235.4]
  wire  ram_corrupt__T_3_mask; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@84235.4]
  wire  ram_corrupt__T_3_en; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@84235.4]
  reg [3:0] enq_ptr_value; // @[Counter.scala 29:33:chipyard.TestHarness.RocketConfig.fir@84236.4]
  reg [31:0] _RAND_14;
  reg [3:0] deq_ptr_value; // @[Counter.scala 29:33:chipyard.TestHarness.RocketConfig.fir@84237.4]
  reg [31:0] _RAND_15;
  reg  maybe_full; // @[Decoupled.scala 212:27:chipyard.TestHarness.RocketConfig.fir@84238.4]
  reg [31:0] _RAND_16;
  wire  ptr_match; // @[Decoupled.scala 214:33:chipyard.TestHarness.RocketConfig.fir@84239.4]
  wire  _T; // @[Decoupled.scala 215:28:chipyard.TestHarness.RocketConfig.fir@84240.4]
  wire  empty; // @[Decoupled.scala 215:25:chipyard.TestHarness.RocketConfig.fir@84241.4]
  wire  full; // @[Decoupled.scala 216:24:chipyard.TestHarness.RocketConfig.fir@84242.4]
  wire  do_enq; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@84243.4]
  wire  do_deq; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@84247.4]
  wire  wrap; // @[Counter.scala 38:24:chipyard.TestHarness.RocketConfig.fir@84254.6]
  wire [3:0] _T_5; // @[Counter.scala 39:22:chipyard.TestHarness.RocketConfig.fir@84256.6]
  wire  wrap_1; // @[Counter.scala 38:24:chipyard.TestHarness.RocketConfig.fir@84263.6]
  wire [3:0] _T_7; // @[Counter.scala 39:22:chipyard.TestHarness.RocketConfig.fir@84265.6]
  wire  _T_8; // @[Decoupled.scala 227:16:chipyard.TestHarness.RocketConfig.fir@84271.4]
  wire [3:0] ptr_diff; // @[Decoupled.scala 248:32:chipyard.TestHarness.RocketConfig.fir@84282.4]
  wire [3:0] _T_13; // @[Decoupled.scala 253:24:chipyard.TestHarness.RocketConfig.fir@84283.4]
  wire  _T_14; // @[Decoupled.scala 255:39:chipyard.TestHarness.RocketConfig.fir@84284.4]
  wire [3:0] _T_16; // @[Decoupled.scala 256:38:chipyard.TestHarness.RocketConfig.fir@84286.4]
  wire [3:0] _T_17; // @[Decoupled.scala 255:24:chipyard.TestHarness.RocketConfig.fir@84287.4]
  assign ram_opcode__T_11_addr = deq_ptr_value;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign ram_opcode__T_11_data = ram_opcode[ram_opcode__T_11_addr]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@84235.4]
  `else
  assign ram_opcode__T_11_data = ram_opcode__T_11_addr >= 4'hc ? _RAND_1[2:0] : ram_opcode[ram_opcode__T_11_addr]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@84235.4]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign ram_opcode__T_3_data = io_enq_bits_opcode;
  assign ram_opcode__T_3_addr = enq_ptr_value;
  assign ram_opcode__T_3_mask = 1'h1;
  assign ram_opcode__T_3_en = io_enq_ready & io_enq_valid;
  assign ram_param__T_11_addr = deq_ptr_value;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign ram_param__T_11_data = ram_param[ram_param__T_11_addr]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@84235.4]
  `else
  assign ram_param__T_11_data = ram_param__T_11_addr >= 4'hc ? _RAND_3[2:0] : ram_param[ram_param__T_11_addr]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@84235.4]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign ram_param__T_3_data = io_enq_bits_param;
  assign ram_param__T_3_addr = enq_ptr_value;
  assign ram_param__T_3_mask = 1'h1;
  assign ram_param__T_3_en = io_enq_ready & io_enq_valid;
  assign ram_size__T_11_addr = deq_ptr_value;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign ram_size__T_11_data = ram_size[ram_size__T_11_addr]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@84235.4]
  `else
  assign ram_size__T_11_data = ram_size__T_11_addr >= 4'hc ? _RAND_5[2:0] : ram_size[ram_size__T_11_addr]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@84235.4]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign ram_size__T_3_data = 3'h6;
  assign ram_size__T_3_addr = enq_ptr_value;
  assign ram_size__T_3_mask = 1'h1;
  assign ram_size__T_3_en = io_enq_ready & io_enq_valid;
  assign ram_source__T_11_addr = deq_ptr_value;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign ram_source__T_11_data = ram_source[ram_source__T_11_addr]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@84235.4]
  `else
  assign ram_source__T_11_data = ram_source__T_11_addr >= 4'hc ? _RAND_7[2:0] : ram_source[ram_source__T_11_addr]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@84235.4]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign ram_source__T_3_data = io_enq_bits_source;
  assign ram_source__T_3_addr = enq_ptr_value;
  assign ram_source__T_3_mask = 1'h1;
  assign ram_source__T_3_en = io_enq_ready & io_enq_valid;
  assign ram_address__T_11_addr = deq_ptr_value;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign ram_address__T_11_data = ram_address[ram_address__T_11_addr]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@84235.4]
  `else
  assign ram_address__T_11_data = ram_address__T_11_addr >= 4'hc ? _RAND_9[31:0] : ram_address[ram_address__T_11_addr]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@84235.4]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign ram_address__T_3_data = io_enq_bits_address;
  assign ram_address__T_3_addr = enq_ptr_value;
  assign ram_address__T_3_mask = 1'h1;
  assign ram_address__T_3_en = io_enq_ready & io_enq_valid;
  assign ram_data__T_11_addr = deq_ptr_value;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign ram_data__T_11_data = ram_data[ram_data__T_11_addr]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@84235.4]
  `else
  assign ram_data__T_11_data = ram_data__T_11_addr >= 4'hc ? _RAND_11[63:0] : ram_data[ram_data__T_11_addr]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@84235.4]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign ram_data__T_3_data = io_enq_bits_data;
  assign ram_data__T_3_addr = enq_ptr_value;
  assign ram_data__T_3_mask = 1'h1;
  assign ram_data__T_3_en = io_enq_ready & io_enq_valid;
  assign ram_corrupt__T_11_addr = deq_ptr_value;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign ram_corrupt__T_11_data = ram_corrupt[ram_corrupt__T_11_addr]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@84235.4]
  `else
  assign ram_corrupt__T_11_data = ram_corrupt__T_11_addr >= 4'hc ? _RAND_13[0:0] : ram_corrupt[ram_corrupt__T_11_addr]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@84235.4]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign ram_corrupt__T_3_data = 1'h0;
  assign ram_corrupt__T_3_addr = enq_ptr_value;
  assign ram_corrupt__T_3_mask = 1'h1;
  assign ram_corrupt__T_3_en = io_enq_ready & io_enq_valid;
  assign ptr_match = enq_ptr_value == deq_ptr_value; // @[Decoupled.scala 214:33:chipyard.TestHarness.RocketConfig.fir@84239.4]
  assign _T = ~maybe_full; // @[Decoupled.scala 215:28:chipyard.TestHarness.RocketConfig.fir@84240.4]
  assign empty = ptr_match & _T; // @[Decoupled.scala 215:25:chipyard.TestHarness.RocketConfig.fir@84241.4]
  assign full = ptr_match & maybe_full; // @[Decoupled.scala 216:24:chipyard.TestHarness.RocketConfig.fir@84242.4]
  assign do_enq = io_enq_ready & io_enq_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@84243.4]
  assign do_deq = io_deq_ready & io_deq_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@84247.4]
  assign wrap = enq_ptr_value == 4'hb; // @[Counter.scala 38:24:chipyard.TestHarness.RocketConfig.fir@84254.6]
  assign _T_5 = enq_ptr_value + 4'h1; // @[Counter.scala 39:22:chipyard.TestHarness.RocketConfig.fir@84256.6]
  assign wrap_1 = deq_ptr_value == 4'hb; // @[Counter.scala 38:24:chipyard.TestHarness.RocketConfig.fir@84263.6]
  assign _T_7 = deq_ptr_value + 4'h1; // @[Counter.scala 39:22:chipyard.TestHarness.RocketConfig.fir@84265.6]
  assign _T_8 = do_enq != do_deq; // @[Decoupled.scala 227:16:chipyard.TestHarness.RocketConfig.fir@84271.4]
  assign ptr_diff = enq_ptr_value - deq_ptr_value; // @[Decoupled.scala 248:32:chipyard.TestHarness.RocketConfig.fir@84282.4]
  assign _T_13 = maybe_full ? 4'hc : 4'h0; // @[Decoupled.scala 253:24:chipyard.TestHarness.RocketConfig.fir@84283.4]
  assign _T_14 = deq_ptr_value > enq_ptr_value; // @[Decoupled.scala 255:39:chipyard.TestHarness.RocketConfig.fir@84284.4]
  assign _T_16 = 4'hc + ptr_diff; // @[Decoupled.scala 256:38:chipyard.TestHarness.RocketConfig.fir@84286.4]
  assign _T_17 = _T_14 ? _T_16 : ptr_diff; // @[Decoupled.scala 255:24:chipyard.TestHarness.RocketConfig.fir@84287.4]
  assign io_enq_ready = ~full; // @[Decoupled.scala 232:16:chipyard.TestHarness.RocketConfig.fir@84278.4]
  assign io_deq_valid = ~empty; // @[Decoupled.scala 231:16:chipyard.TestHarness.RocketConfig.fir@84276.4]
  assign io_deq_bits_opcode = ram_opcode__T_11_data; // @[Decoupled.scala 233:15:chipyard.TestHarness.RocketConfig.fir@84280.4]
  assign io_deq_bits_param = ram_param__T_11_data; // @[Decoupled.scala 233:15:chipyard.TestHarness.RocketConfig.fir@84280.4]
  assign io_deq_bits_size = ram_size__T_11_data; // @[Decoupled.scala 233:15:chipyard.TestHarness.RocketConfig.fir@84280.4]
  assign io_deq_bits_source = ram_source__T_11_data; // @[Decoupled.scala 233:15:chipyard.TestHarness.RocketConfig.fir@84280.4]
  assign io_deq_bits_address = ram_address__T_11_data; // @[Decoupled.scala 233:15:chipyard.TestHarness.RocketConfig.fir@84280.4]
  assign io_deq_bits_data = ram_data__T_11_data; // @[Decoupled.scala 233:15:chipyard.TestHarness.RocketConfig.fir@84280.4]
  assign io_deq_bits_corrupt = ram_corrupt__T_11_data; // @[Decoupled.scala 233:15:chipyard.TestHarness.RocketConfig.fir@84280.4]
  assign io_count = ptr_match ? _T_13 : _T_17; // @[Decoupled.scala 252:14:chipyard.TestHarness.RocketConfig.fir@84289.4]
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
  for (initvar = 0; initvar < 12; initvar = initvar+1)
    ram_opcode[initvar] = _RAND_0[2:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_1 = {1{`RANDOM}};
  _RAND_2 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 12; initvar = initvar+1)
    ram_param[initvar] = _RAND_2[2:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_3 = {1{`RANDOM}};
  _RAND_4 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 12; initvar = initvar+1)
    ram_size[initvar] = _RAND_4[2:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_5 = {1{`RANDOM}};
  _RAND_6 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 12; initvar = initvar+1)
    ram_source[initvar] = _RAND_6[2:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_7 = {1{`RANDOM}};
  _RAND_8 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 12; initvar = initvar+1)
    ram_address[initvar] = _RAND_8[31:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_9 = {1{`RANDOM}};
  _RAND_10 = {2{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 12; initvar = initvar+1)
    ram_data[initvar] = _RAND_10[63:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_11 = {2{`RANDOM}};
  _RAND_12 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 12; initvar = initvar+1)
    ram_corrupt[initvar] = _RAND_12[0:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_13 = {1{`RANDOM}};
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  enq_ptr_value = _RAND_14[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  deq_ptr_value = _RAND_15[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  maybe_full = _RAND_16[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if(ram_opcode__T_3_en & ram_opcode__T_3_mask) begin
      ram_opcode[ram_opcode__T_3_addr] <= ram_opcode__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@84235.4]
    end
    if(ram_param__T_3_en & ram_param__T_3_mask) begin
      ram_param[ram_param__T_3_addr] <= ram_param__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@84235.4]
    end
    if(ram_size__T_3_en & ram_size__T_3_mask) begin
      ram_size[ram_size__T_3_addr] <= ram_size__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@84235.4]
    end
    if(ram_source__T_3_en & ram_source__T_3_mask) begin
      ram_source[ram_source__T_3_addr] <= ram_source__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@84235.4]
    end
    if(ram_address__T_3_en & ram_address__T_3_mask) begin
      ram_address[ram_address__T_3_addr] <= ram_address__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@84235.4]
    end
    if(ram_data__T_3_en & ram_data__T_3_mask) begin
      ram_data[ram_data__T_3_addr] <= ram_data__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@84235.4]
    end
    if(ram_corrupt__T_3_en & ram_corrupt__T_3_mask) begin
      ram_corrupt[ram_corrupt__T_3_addr] <= ram_corrupt__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@84235.4]
    end
    if (reset) begin
      enq_ptr_value <= 4'h0;
    end else if (do_enq) begin
      if (wrap) begin
        enq_ptr_value <= 4'h0;
      end else begin
        enq_ptr_value <= _T_5;
      end
    end
    if (reset) begin
      deq_ptr_value <= 4'h0;
    end else if (do_deq) begin
      if (wrap_1) begin
        deq_ptr_value <= 4'h0;
      end else begin
        deq_ptr_value <= _T_7;
      end
    end
    if (reset) begin
      maybe_full <= 1'h0;
    end else if (_T_8) begin
      maybe_full <= do_enq;
    end
  end
endmodule
