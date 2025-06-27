module SinkE( // @[:chipyard.TestHarness.RocketConfig.fir@87473.2]
  output       io_resp_valid, // @[:chipyard.TestHarness.RocketConfig.fir@87476.4]
  output [2:0] io_resp_bits_sink, // @[:chipyard.TestHarness.RocketConfig.fir@87476.4]
  input        io_e_valid, // @[:chipyard.TestHarness.RocketConfig.fir@87476.4]
  input  [2:0] io_e_bits_sink // @[:chipyard.TestHarness.RocketConfig.fir@87476.4]
);
  assign io_resp_valid = io_e_valid; // @[SinkE.scala 44:19:chipyard.TestHarness.RocketConfig.fir@87482.4]
  assign io_resp_bits_sink = io_e_bits_sink; // @[SinkE.scala 45:23:chipyard.TestHarness.RocketConfig.fir@87483.4]
endmodule
