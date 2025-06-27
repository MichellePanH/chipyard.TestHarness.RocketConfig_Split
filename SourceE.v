module SourceE( // @[:chipyard.TestHarness.RocketConfig.fir@86269.2]
  input        clock, // @[:chipyard.TestHarness.RocketConfig.fir@86270.4]
  input        reset, // @[:chipyard.TestHarness.RocketConfig.fir@86271.4]
  output       io_req_ready, // @[:chipyard.TestHarness.RocketConfig.fir@86272.4]
  input        io_req_valid, // @[:chipyard.TestHarness.RocketConfig.fir@86272.4]
  input  [2:0] io_req_bits_sink, // @[:chipyard.TestHarness.RocketConfig.fir@86272.4]
  output       io_e_valid, // @[:chipyard.TestHarness.RocketConfig.fir@86272.4]
  output [2:0] io_e_bits_sink // @[:chipyard.TestHarness.RocketConfig.fir@86272.4]
);
  wire  Queue_clock; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@86279.4]
  wire  Queue_reset; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@86279.4]
  wire  Queue_io_enq_ready; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@86279.4]
  wire  Queue_io_enq_valid; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@86279.4]
  wire [2:0] Queue_io_enq_bits_sink; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@86279.4]
  wire  Queue_io_deq_valid; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@86279.4]
  wire [2:0] Queue_io_deq_bits_sink; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@86279.4]
  Queue_17 Queue ( // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@86279.4]
    .clock(Queue_clock),
    .reset(Queue_reset),
    .io_enq_ready(Queue_io_enq_ready),
    .io_enq_valid(Queue_io_enq_valid),
    .io_enq_bits_sink(Queue_io_enq_bits_sink),
    .io_deq_valid(Queue_io_deq_valid),
    .io_deq_bits_sink(Queue_io_deq_bits_sink)
  );
  assign io_req_ready = Queue_io_enq_ready; // @[SourceE.scala 41:16:chipyard.TestHarness.RocketConfig.fir@86286.4]
  assign io_e_valid = Queue_io_deq_valid; // @[SourceE.scala 39:8:chipyard.TestHarness.RocketConfig.fir@86285.4]
  assign io_e_bits_sink = Queue_io_deq_bits_sink; // @[SourceE.scala 39:8:chipyard.TestHarness.RocketConfig.fir@86285.4]
  assign Queue_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@86280.4]
  assign Queue_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@86281.4]
  assign Queue_io_enq_valid = io_req_valid; // @[Decoupled.scala 288:22:chipyard.TestHarness.RocketConfig.fir@86282.4]
  assign Queue_io_enq_bits_sink = io_req_bits_sink; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@86283.4]
endmodule
