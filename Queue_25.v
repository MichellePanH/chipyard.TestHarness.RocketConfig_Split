module Queue_25( // @[:chipyard.TestHarness.RocketConfig.fir@107710.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@107711.4]
  input         reset, // @[:chipyard.TestHarness.RocketConfig.fir@107712.4]
  output        io_enq_ready, // @[:chipyard.TestHarness.RocketConfig.fir@107713.4]
  input         io_enq_valid, // @[:chipyard.TestHarness.RocketConfig.fir@107713.4]
  input  [2:0]  io_enq_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@107713.4]
  input  [1:0]  io_enq_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@107713.4]
  input  [2:0]  io_enq_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@107713.4]
  input  [2:0]  io_enq_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@107713.4]
  input  [2:0]  io_enq_bits_sink, // @[:chipyard.TestHarness.RocketConfig.fir@107713.4]
  input         io_enq_bits_denied, // @[:chipyard.TestHarness.RocketConfig.fir@107713.4]
  input  [63:0] io_enq_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@107713.4]
  input         io_enq_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@107713.4]
  input         io_deq_ready, // @[:chipyard.TestHarness.RocketConfig.fir@107713.4]
  output        io_deq_valid, // @[:chipyard.TestHarness.RocketConfig.fir@107713.4]
  output [2:0]  io_deq_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@107713.4]
  output [1:0]  io_deq_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@107713.4]
  output [2:0]  io_deq_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@107713.4]
  output [2:0]  io_deq_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@107713.4]
  output [2:0]  io_deq_bits_sink, // @[:chipyard.TestHarness.RocketConfig.fir@107713.4]
  output        io_deq_bits_denied, // @[:chipyard.TestHarness.RocketConfig.fir@107713.4]
  output [63:0] io_deq_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@107713.4]
  output        io_deq_bits_corrupt // @[:chipyard.TestHarness.RocketConfig.fir@107713.4]
);
  reg [2:0] ram_opcode [0:0]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@107715.4]
  reg [31:0] _RAND_0;
  wire [2:0] ram_opcode__T_7_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@107715.4]
  wire  ram_opcode__T_7_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@107715.4]
  wire [2:0] ram_opcode__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@107715.4]
  wire  ram_opcode__T_3_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@107715.4]
  wire  ram_opcode__T_3_mask; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@107715.4]
  wire  ram_opcode__T_3_en; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@107715.4]
  reg [1:0] ram_param [0:0]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@107715.4]
  reg [31:0] _RAND_1;
  wire [1:0] ram_param__T_7_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@107715.4]
  wire  ram_param__T_7_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@107715.4]
  wire [1:0] ram_param__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@107715.4]
  wire  ram_param__T_3_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@107715.4]
  wire  ram_param__T_3_mask; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@107715.4]
  wire  ram_param__T_3_en; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@107715.4]
  reg [2:0] ram_size [0:0]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@107715.4]
  reg [31:0] _RAND_2;
  wire [2:0] ram_size__T_7_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@107715.4]
  wire  ram_size__T_7_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@107715.4]
  wire [2:0] ram_size__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@107715.4]
  wire  ram_size__T_3_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@107715.4]
  wire  ram_size__T_3_mask; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@107715.4]
  wire  ram_size__T_3_en; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@107715.4]
  reg [2:0] ram_source [0:0]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@107715.4]
  reg [31:0] _RAND_3;
  wire [2:0] ram_source__T_7_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@107715.4]
  wire  ram_source__T_7_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@107715.4]
  wire [2:0] ram_source__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@107715.4]
  wire  ram_source__T_3_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@107715.4]
  wire  ram_source__T_3_mask; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@107715.4]
  wire  ram_source__T_3_en; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@107715.4]
  reg [2:0] ram_sink [0:0]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@107715.4]
  reg [31:0] _RAND_4;
  wire [2:0] ram_sink__T_7_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@107715.4]
  wire  ram_sink__T_7_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@107715.4]
  wire [2:0] ram_sink__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@107715.4]
  wire  ram_sink__T_3_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@107715.4]
  wire  ram_sink__T_3_mask; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@107715.4]
  wire  ram_sink__T_3_en; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@107715.4]
  reg  ram_denied [0:0]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@107715.4]
  reg [31:0] _RAND_5;
  wire  ram_denied__T_7_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@107715.4]
  wire  ram_denied__T_7_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@107715.4]
  wire  ram_denied__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@107715.4]
  wire  ram_denied__T_3_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@107715.4]
  wire  ram_denied__T_3_mask; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@107715.4]
  wire  ram_denied__T_3_en; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@107715.4]
  reg [63:0] ram_data [0:0]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@107715.4]
  reg [63:0] _RAND_6;
  wire [63:0] ram_data__T_7_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@107715.4]
  wire  ram_data__T_7_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@107715.4]
  wire [63:0] ram_data__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@107715.4]
  wire  ram_data__T_3_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@107715.4]
  wire  ram_data__T_3_mask; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@107715.4]
  wire  ram_data__T_3_en; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@107715.4]
  reg  ram_corrupt [0:0]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@107715.4]
  reg [31:0] _RAND_7;
  wire  ram_corrupt__T_7_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@107715.4]
  wire  ram_corrupt__T_7_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@107715.4]
  wire  ram_corrupt__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@107715.4]
  wire  ram_corrupt__T_3_addr; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@107715.4]
  wire  ram_corrupt__T_3_mask; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@107715.4]
  wire  ram_corrupt__T_3_en; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@107715.4]
  reg  maybe_full; // @[Decoupled.scala 212:27:chipyard.TestHarness.RocketConfig.fir@107716.4]
  reg [31:0] _RAND_8;
  wire  empty; // @[Decoupled.scala 215:28:chipyard.TestHarness.RocketConfig.fir@107718.4]
  wire  _T_1; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@107721.4]
  wire  _T_2; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@107724.4]
  wire  _GEN_14; // @[Decoupled.scala 240:27:chipyard.TestHarness.RocketConfig.fir@107770.6]
  wire  do_enq; // @[Decoupled.scala 237:18:chipyard.TestHarness.RocketConfig.fir@107760.4]
  wire  do_deq; // @[Decoupled.scala 237:18:chipyard.TestHarness.RocketConfig.fir@107760.4]
  wire  _T_4; // @[Decoupled.scala 227:16:chipyard.TestHarness.RocketConfig.fir@107740.4]
  wire  _T_5; // @[Decoupled.scala 231:19:chipyard.TestHarness.RocketConfig.fir@107744.4]
  assign ram_opcode__T_7_addr = 1'h0;
  assign ram_opcode__T_7_data = ram_opcode[ram_opcode__T_7_addr]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@107715.4]
  assign ram_opcode__T_3_data = io_enq_bits_opcode;
  assign ram_opcode__T_3_addr = 1'h0;
  assign ram_opcode__T_3_mask = 1'h1;
  assign ram_opcode__T_3_en = empty ? _GEN_14 : _T_1;
  assign ram_param__T_7_addr = 1'h0;
  assign ram_param__T_7_data = ram_param[ram_param__T_7_addr]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@107715.4]
  assign ram_param__T_3_data = io_enq_bits_param;
  assign ram_param__T_3_addr = 1'h0;
  assign ram_param__T_3_mask = 1'h1;
  assign ram_param__T_3_en = empty ? _GEN_14 : _T_1;
  assign ram_size__T_7_addr = 1'h0;
  assign ram_size__T_7_data = ram_size[ram_size__T_7_addr]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@107715.4]
  assign ram_size__T_3_data = io_enq_bits_size;
  assign ram_size__T_3_addr = 1'h0;
  assign ram_size__T_3_mask = 1'h1;
  assign ram_size__T_3_en = empty ? _GEN_14 : _T_1;
  assign ram_source__T_7_addr = 1'h0;
  assign ram_source__T_7_data = ram_source[ram_source__T_7_addr]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@107715.4]
  assign ram_source__T_3_data = io_enq_bits_source;
  assign ram_source__T_3_addr = 1'h0;
  assign ram_source__T_3_mask = 1'h1;
  assign ram_source__T_3_en = empty ? _GEN_14 : _T_1;
  assign ram_sink__T_7_addr = 1'h0;
  assign ram_sink__T_7_data = ram_sink[ram_sink__T_7_addr]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@107715.4]
  assign ram_sink__T_3_data = io_enq_bits_sink;
  assign ram_sink__T_3_addr = 1'h0;
  assign ram_sink__T_3_mask = 1'h1;
  assign ram_sink__T_3_en = empty ? _GEN_14 : _T_1;
  assign ram_denied__T_7_addr = 1'h0;
  assign ram_denied__T_7_data = ram_denied[ram_denied__T_7_addr]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@107715.4]
  assign ram_denied__T_3_data = io_enq_bits_denied;
  assign ram_denied__T_3_addr = 1'h0;
  assign ram_denied__T_3_mask = 1'h1;
  assign ram_denied__T_3_en = empty ? _GEN_14 : _T_1;
  assign ram_data__T_7_addr = 1'h0;
  assign ram_data__T_7_data = ram_data[ram_data__T_7_addr]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@107715.4]
  assign ram_data__T_3_data = io_enq_bits_data;
  assign ram_data__T_3_addr = 1'h0;
  assign ram_data__T_3_mask = 1'h1;
  assign ram_data__T_3_en = empty ? _GEN_14 : _T_1;
  assign ram_corrupt__T_7_addr = 1'h0;
  assign ram_corrupt__T_7_data = ram_corrupt[ram_corrupt__T_7_addr]; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@107715.4]
  assign ram_corrupt__T_3_data = io_enq_bits_corrupt;
  assign ram_corrupt__T_3_addr = 1'h0;
  assign ram_corrupt__T_3_mask = 1'h1;
  assign ram_corrupt__T_3_en = empty ? _GEN_14 : _T_1;
  assign empty = ~maybe_full; // @[Decoupled.scala 215:28:chipyard.TestHarness.RocketConfig.fir@107718.4]
  assign _T_1 = io_enq_ready & io_enq_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@107721.4]
  assign _T_2 = io_deq_ready & io_deq_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@107724.4]
  assign _GEN_14 = io_deq_ready ? 1'h0 : _T_1; // @[Decoupled.scala 240:27:chipyard.TestHarness.RocketConfig.fir@107770.6]
  assign do_enq = empty ? _GEN_14 : _T_1; // @[Decoupled.scala 237:18:chipyard.TestHarness.RocketConfig.fir@107760.4]
  assign do_deq = empty ? 1'h0 : _T_2; // @[Decoupled.scala 237:18:chipyard.TestHarness.RocketConfig.fir@107760.4]
  assign _T_4 = do_enq != do_deq; // @[Decoupled.scala 227:16:chipyard.TestHarness.RocketConfig.fir@107740.4]
  assign _T_5 = ~empty; // @[Decoupled.scala 231:19:chipyard.TestHarness.RocketConfig.fir@107744.4]
  assign io_enq_ready = ~maybe_full; // @[Decoupled.scala 232:16:chipyard.TestHarness.RocketConfig.fir@107747.4]
  assign io_deq_valid = io_enq_valid | _T_5; // @[Decoupled.scala 231:16:chipyard.TestHarness.RocketConfig.fir@107745.4 Decoupled.scala 236:40:chipyard.TestHarness.RocketConfig.fir@107758.6]
  assign io_deq_bits_opcode = empty ? io_enq_bits_opcode : ram_opcode__T_7_data; // @[Decoupled.scala 233:15:chipyard.TestHarness.RocketConfig.fir@107756.4 Decoupled.scala 238:19:chipyard.TestHarness.RocketConfig.fir@107768.6]
  assign io_deq_bits_param = empty ? io_enq_bits_param : ram_param__T_7_data; // @[Decoupled.scala 233:15:chipyard.TestHarness.RocketConfig.fir@107755.4 Decoupled.scala 238:19:chipyard.TestHarness.RocketConfig.fir@107767.6]
  assign io_deq_bits_size = empty ? io_enq_bits_size : ram_size__T_7_data; // @[Decoupled.scala 233:15:chipyard.TestHarness.RocketConfig.fir@107754.4 Decoupled.scala 238:19:chipyard.TestHarness.RocketConfig.fir@107766.6]
  assign io_deq_bits_source = empty ? io_enq_bits_source : ram_source__T_7_data; // @[Decoupled.scala 233:15:chipyard.TestHarness.RocketConfig.fir@107753.4 Decoupled.scala 238:19:chipyard.TestHarness.RocketConfig.fir@107765.6]
  assign io_deq_bits_sink = empty ? io_enq_bits_sink : ram_sink__T_7_data; // @[Decoupled.scala 233:15:chipyard.TestHarness.RocketConfig.fir@107752.4 Decoupled.scala 238:19:chipyard.TestHarness.RocketConfig.fir@107764.6]
  assign io_deq_bits_denied = empty ? io_enq_bits_denied : ram_denied__T_7_data; // @[Decoupled.scala 233:15:chipyard.TestHarness.RocketConfig.fir@107751.4 Decoupled.scala 238:19:chipyard.TestHarness.RocketConfig.fir@107763.6]
  assign io_deq_bits_data = empty ? io_enq_bits_data : ram_data__T_7_data; // @[Decoupled.scala 233:15:chipyard.TestHarness.RocketConfig.fir@107750.4 Decoupled.scala 238:19:chipyard.TestHarness.RocketConfig.fir@107762.6]
  assign io_deq_bits_corrupt = empty ? io_enq_bits_corrupt : ram_corrupt__T_7_data; // @[Decoupled.scala 233:15:chipyard.TestHarness.RocketConfig.fir@107749.4 Decoupled.scala 238:19:chipyard.TestHarness.RocketConfig.fir@107761.6]
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
    ram_param[initvar] = _RAND_1[1:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_2 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_size[initvar] = _RAND_2[2:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_3 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_source[initvar] = _RAND_3[2:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_4 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_sink[initvar] = _RAND_4[2:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_5 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_denied[initvar] = _RAND_5[0:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_6 = {2{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_data[initvar] = _RAND_6[63:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_7 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_corrupt[initvar] = _RAND_7[0:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  maybe_full = _RAND_8[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if(ram_opcode__T_3_en & ram_opcode__T_3_mask) begin
      ram_opcode[ram_opcode__T_3_addr] <= ram_opcode__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@107715.4]
    end
    if(ram_param__T_3_en & ram_param__T_3_mask) begin
      ram_param[ram_param__T_3_addr] <= ram_param__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@107715.4]
    end
    if(ram_size__T_3_en & ram_size__T_3_mask) begin
      ram_size[ram_size__T_3_addr] <= ram_size__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@107715.4]
    end
    if(ram_source__T_3_en & ram_source__T_3_mask) begin
      ram_source[ram_source__T_3_addr] <= ram_source__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@107715.4]
    end
    if(ram_sink__T_3_en & ram_sink__T_3_mask) begin
      ram_sink[ram_sink__T_3_addr] <= ram_sink__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@107715.4]
    end
    if(ram_denied__T_3_en & ram_denied__T_3_mask) begin
      ram_denied[ram_denied__T_3_addr] <= ram_denied__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@107715.4]
    end
    if(ram_data__T_3_en & ram_data__T_3_mask) begin
      ram_data[ram_data__T_3_addr] <= ram_data__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@107715.4]
    end
    if(ram_corrupt__T_3_en & ram_corrupt__T_3_mask) begin
      ram_corrupt[ram_corrupt__T_3_addr] <= ram_corrupt__T_3_data; // @[Decoupled.scala 209:16:chipyard.TestHarness.RocketConfig.fir@107715.4]
    end
    if (reset) begin
      maybe_full <= 1'h0;
    end else if (_T_4) begin
      if (empty) begin
        if (io_deq_ready) begin
          maybe_full <= 1'h0;
        end else begin
          maybe_full <= _T_1;
        end
      end else begin
        maybe_full <= _T_1;
      end
    end
  end
endmodule
