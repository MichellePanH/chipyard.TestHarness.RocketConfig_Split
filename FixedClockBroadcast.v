module FixedClockBroadcast( // @[:chipyard.TestHarness.RocketConfig.fir@102.2]
  input   auto_in_clock, // @[:chipyard.TestHarness.RocketConfig.fir@103.4]
  input   auto_in_reset, // @[:chipyard.TestHarness.RocketConfig.fir@103.4]
  output  auto_out_clock, // @[:chipyard.TestHarness.RocketConfig.fir@103.4]
  output  auto_out_reset // @[:chipyard.TestHarness.RocketConfig.fir@103.4]
);
  assign auto_out_clock = auto_in_clock; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@117.4]
  assign auto_out_reset = auto_in_reset; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@117.4]
endmodule
