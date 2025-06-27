module SourceX( // @[:chipyard.TestHarness.RocketConfig.fir@86330.2]
  input   clock, // @[:chipyard.TestHarness.RocketConfig.fir@86331.4]
  input   reset, // @[:chipyard.TestHarness.RocketConfig.fir@86332.4]
  output  io_req_ready, // @[:chipyard.TestHarness.RocketConfig.fir@86333.4]
  input   io_req_valid, // @[:chipyard.TestHarness.RocketConfig.fir@86333.4]
  input   io_x_ready, // @[:chipyard.TestHarness.RocketConfig.fir@86333.4]
  output  io_x_valid // @[:chipyard.TestHarness.RocketConfig.fir@86333.4]
);
  wire  Queue_clock; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@86340.4]
  wire  Queue_reset; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@86340.4]
  wire  Queue_io_enq_ready; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@86340.4]
  wire  Queue_io_enq_valid; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@86340.4]
  wire  Queue_io_deq_ready; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@86340.4]
  wire  Queue_io_deq_valid; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@86340.4]
  Queue_18 Queue ( // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@86340.4]
    .clock(Queue_clock),
    .reset(Queue_reset),
    .io_enq_ready(Queue_io_enq_ready),
    .io_enq_valid(Queue_io_enq_valid),
    .io_deq_ready(Queue_io_deq_ready),
    .io_deq_valid(Queue_io_deq_valid)
  );
  assign io_req_ready = Queue_io_enq_ready; // @[SourceX.scala 39:16:chipyard.TestHarness.RocketConfig.fir@86347.4]
  assign io_x_valid = Queue_io_deq_valid; // @[SourceX.scala 37:8:chipyard.TestHarness.RocketConfig.fir@86346.4]
  assign Queue_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@86341.4]
  assign Queue_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@86342.4]
  assign Queue_io_enq_valid = io_req_valid; // @[Decoupled.scala 288:22:chipyard.TestHarness.RocketConfig.fir@86343.4]
  assign Queue_io_deq_ready = io_x_ready; // @[SourceX.scala 37:8:chipyard.TestHarness.RocketConfig.fir@86346.4]
endmodule
