module SourceA( // @[:chipyard.TestHarness.RocketConfig.fir@83918.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@83919.4]
  input         reset, // @[:chipyard.TestHarness.RocketConfig.fir@83920.4]
  output        io_req_ready, // @[:chipyard.TestHarness.RocketConfig.fir@83921.4]
  input         io_req_valid, // @[:chipyard.TestHarness.RocketConfig.fir@83921.4]
  input  [11:0] io_req_bits_tag, // @[:chipyard.TestHarness.RocketConfig.fir@83921.4]
  input  [9:0]  io_req_bits_set, // @[:chipyard.TestHarness.RocketConfig.fir@83921.4]
  input  [2:0]  io_req_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@83921.4]
  input  [2:0]  io_req_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@83921.4]
  input         io_req_bits_block, // @[:chipyard.TestHarness.RocketConfig.fir@83921.4]
  input         io_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@83921.4]
  output        io_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@83921.4]
  output [2:0]  io_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@83921.4]
  output [2:0]  io_a_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@83921.4]
  output [2:0]  io_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@83921.4]
  output [2:0]  io_a_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@83921.4]
  output [31:0] io_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@83921.4]
  output [7:0]  io_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@83921.4]
  output [63:0] io_a_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@83921.4]
  output        io_a_bits_corrupt // @[:chipyard.TestHarness.RocketConfig.fir@83921.4]
);
  wire  Queue_clock; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@83928.4]
  wire  Queue_reset; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@83928.4]
  wire  Queue_io_enq_ready; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@83928.4]
  wire  Queue_io_enq_valid; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@83928.4]
  wire [2:0] Queue_io_enq_bits_opcode; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@83928.4]
  wire [2:0] Queue_io_enq_bits_param; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@83928.4]
  wire [2:0] Queue_io_enq_bits_source; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@83928.4]
  wire [31:0] Queue_io_enq_bits_address; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@83928.4]
  wire  Queue_io_deq_ready; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@83928.4]
  wire  Queue_io_deq_valid; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@83928.4]
  wire [2:0] Queue_io_deq_bits_opcode; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@83928.4]
  wire [2:0] Queue_io_deq_bits_param; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@83928.4]
  wire [2:0] Queue_io_deq_bits_size; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@83928.4]
  wire [2:0] Queue_io_deq_bits_source; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@83928.4]
  wire [31:0] Queue_io_deq_bits_address; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@83928.4]
  wire [7:0] Queue_io_deq_bits_mask; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@83928.4]
  wire [63:0] Queue_io_deq_bits_data; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@83928.4]
  wire  Queue_io_deq_bits_corrupt; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@83928.4]
  wire [27:0] _T_25; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@83985.4]
  wire [7:0] _T_60; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@84020.4]
  wire [15:0] _T_68; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@84028.4]
  wire [7:0] _T_75; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@84035.4]
  wire [15:0] _T_83; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@84043.4]
  Queue_16 Queue ( // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@83928.4]
    .clock(Queue_clock),
    .reset(Queue_reset),
    .io_enq_ready(Queue_io_enq_ready),
    .io_enq_valid(Queue_io_enq_valid),
    .io_enq_bits_opcode(Queue_io_enq_bits_opcode),
    .io_enq_bits_param(Queue_io_enq_bits_param),
    .io_enq_bits_source(Queue_io_enq_bits_source),
    .io_enq_bits_address(Queue_io_enq_bits_address),
    .io_deq_ready(Queue_io_deq_ready),
    .io_deq_valid(Queue_io_deq_valid),
    .io_deq_bits_opcode(Queue_io_deq_bits_opcode),
    .io_deq_bits_param(Queue_io_deq_bits_param),
    .io_deq_bits_size(Queue_io_deq_bits_size),
    .io_deq_bits_source(Queue_io_deq_bits_source),
    .io_deq_bits_address(Queue_io_deq_bits_address),
    .io_deq_bits_mask(Queue_io_deq_bits_mask),
    .io_deq_bits_data(Queue_io_deq_bits_data),
    .io_deq_bits_corrupt(Queue_io_deq_bits_corrupt)
  );
  assign _T_25 = {io_req_bits_tag,io_req_bits_set,6'h0}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@83985.4]
  assign _T_60 = {_T_25[7],_T_25[6],_T_25[5],_T_25[4],_T_25[3],_T_25[2],_T_25[1],_T_25[0]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@84020.4]
  assign _T_68 = {_T_25[15],_T_25[14],_T_25[13],_T_25[12],_T_25[11],_T_25[10],_T_25[9],_T_25[8],_T_60}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@84028.4]
  assign _T_75 = {_T_25[23],_T_25[22],_T_25[21],_T_25[20],_T_25[19],_T_25[18],_T_25[17],_T_25[16]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@84035.4]
  assign _T_83 = {4'h0,_T_25[27],_T_25[26],_T_25[25],_T_25[24],_T_75}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@84043.4]
  assign io_req_ready = Queue_io_enq_ready; // @[SourceA.scala 45:16:chipyard.TestHarness.RocketConfig.fir@83942.4]
  assign io_a_valid = Queue_io_deq_valid; // @[SourceA.scala 43:8:chipyard.TestHarness.RocketConfig.fir@83941.4]
  assign io_a_bits_opcode = Queue_io_deq_bits_opcode; // @[SourceA.scala 43:8:chipyard.TestHarness.RocketConfig.fir@83941.4]
  assign io_a_bits_param = Queue_io_deq_bits_param; // @[SourceA.scala 43:8:chipyard.TestHarness.RocketConfig.fir@83941.4]
  assign io_a_bits_size = Queue_io_deq_bits_size; // @[SourceA.scala 43:8:chipyard.TestHarness.RocketConfig.fir@83941.4]
  assign io_a_bits_source = Queue_io_deq_bits_source; // @[SourceA.scala 43:8:chipyard.TestHarness.RocketConfig.fir@83941.4]
  assign io_a_bits_address = Queue_io_deq_bits_address; // @[SourceA.scala 43:8:chipyard.TestHarness.RocketConfig.fir@83941.4]
  assign io_a_bits_mask = Queue_io_deq_bits_mask; // @[SourceA.scala 43:8:chipyard.TestHarness.RocketConfig.fir@83941.4]
  assign io_a_bits_data = Queue_io_deq_bits_data; // @[SourceA.scala 43:8:chipyard.TestHarness.RocketConfig.fir@83941.4]
  assign io_a_bits_corrupt = Queue_io_deq_bits_corrupt; // @[SourceA.scala 43:8:chipyard.TestHarness.RocketConfig.fir@83941.4]
  assign Queue_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@83929.4]
  assign Queue_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@83930.4]
  assign Queue_io_enq_valid = io_req_valid; // @[Decoupled.scala 288:22:chipyard.TestHarness.RocketConfig.fir@83931.4]
  assign Queue_io_enq_bits_opcode = io_req_bits_block ? 3'h6 : 3'h7; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@83939.4]
  assign Queue_io_enq_bits_param = io_req_bits_param; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@83938.4]
  assign Queue_io_enq_bits_source = io_req_bits_source; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@83936.4]
  assign Queue_io_enq_bits_address = {_T_83,_T_68}; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@83935.4]
  assign Queue_io_deq_ready = io_a_ready; // @[SourceA.scala 43:8:chipyard.TestHarness.RocketConfig.fir@83941.4]
endmodule
