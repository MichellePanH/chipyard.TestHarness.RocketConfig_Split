module SinkX( // @[:chipyard.TestHarness.RocketConfig.fir@87525.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@87526.4]
  input         reset, // @[:chipyard.TestHarness.RocketConfig.fir@87527.4]
  input         io_req_ready, // @[:chipyard.TestHarness.RocketConfig.fir@87528.4]
  output        io_req_valid, // @[:chipyard.TestHarness.RocketConfig.fir@87528.4]
  output [11:0] io_req_bits_tag, // @[:chipyard.TestHarness.RocketConfig.fir@87528.4]
  output [9:0]  io_req_bits_set, // @[:chipyard.TestHarness.RocketConfig.fir@87528.4]
  output        io_x_ready, // @[:chipyard.TestHarness.RocketConfig.fir@87528.4]
  input         io_x_valid, // @[:chipyard.TestHarness.RocketConfig.fir@87528.4]
  input  [31:0] io_x_bits_address // @[:chipyard.TestHarness.RocketConfig.fir@87528.4]
);
  wire  x_clock; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@87533.4]
  wire  x_reset; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@87533.4]
  wire  x_io_enq_ready; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@87533.4]
  wire  x_io_enq_valid; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@87533.4]
  wire [31:0] x_io_enq_bits_address; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@87533.4]
  wire  x_io_deq_ready; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@87533.4]
  wire  x_io_deq_valid; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@87533.4]
  wire [31:0] x_io_deq_bits_address; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@87533.4]
  wire [6:0] _T_33; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@87572.4]
  wire [13:0] _T_40; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@87579.4]
  wire [6:0] _T_46; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@87585.4]
  wire [27:0] _T_54; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@87593.4]
  Queue_22 x ( // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@87533.4]
    .clock(x_clock),
    .reset(x_reset),
    .io_enq_ready(x_io_enq_ready),
    .io_enq_valid(x_io_enq_valid),
    .io_enq_bits_address(x_io_enq_bits_address),
    .io_deq_ready(x_io_deq_ready),
    .io_deq_valid(x_io_deq_valid),
    .io_deq_bits_address(x_io_deq_bits_address)
  );
  assign _T_33 = {x_io_deq_bits_address[6],x_io_deq_bits_address[5],x_io_deq_bits_address[4],x_io_deq_bits_address[3],x_io_deq_bits_address[2],x_io_deq_bits_address[1],x_io_deq_bits_address[0]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@87572.4]
  assign _T_40 = {x_io_deq_bits_address[13],x_io_deq_bits_address[12],x_io_deq_bits_address[11],x_io_deq_bits_address[10],x_io_deq_bits_address[9],x_io_deq_bits_address[8],x_io_deq_bits_address[7],_T_33}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@87579.4]
  assign _T_46 = {x_io_deq_bits_address[20],x_io_deq_bits_address[19],x_io_deq_bits_address[18],x_io_deq_bits_address[17],x_io_deq_bits_address[16],x_io_deq_bits_address[15],x_io_deq_bits_address[14]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@87585.4]
  assign _T_54 = {x_io_deq_bits_address[27],x_io_deq_bits_address[26],x_io_deq_bits_address[25],x_io_deq_bits_address[24],x_io_deq_bits_address[23],x_io_deq_bits_address[22],x_io_deq_bits_address[21],_T_46,_T_40}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@87593.4]
  assign io_req_valid = x_io_deq_valid; // @[SinkX.scala 39:16:chipyard.TestHarness.RocketConfig.fir@87600.4]
  assign io_req_bits_tag = _T_54[27:16]; // @[SinkX.scala 52:22:chipyard.TestHarness.RocketConfig.fir@87616.4]
  assign io_req_bits_set = _T_54[15:6]; // @[SinkX.scala 51:22:chipyard.TestHarness.RocketConfig.fir@87615.4]
  assign io_x_ready = x_io_enq_ready; // @[Decoupled.scala 290:17:chipyard.TestHarness.RocketConfig.fir@87538.4]
  assign x_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@87534.4]
  assign x_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@87535.4]
  assign x_io_enq_valid = io_x_valid; // @[Decoupled.scala 288:22:chipyard.TestHarness.RocketConfig.fir@87536.4]
  assign x_io_enq_bits_address = io_x_bits_address; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@87537.4]
  assign x_io_deq_ready = io_req_ready; // @[SinkX.scala 38:11:chipyard.TestHarness.RocketConfig.fir@87599.4]
endmodule
