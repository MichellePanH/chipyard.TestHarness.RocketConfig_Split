module FixedClockBroadcast_1( // @[:chipyard.TestHarness.RocketConfig.fir@20954.2]
  input   auto_in_clock, // @[:chipyard.TestHarness.RocketConfig.fir@20955.4]
  input   auto_in_reset, // @[:chipyard.TestHarness.RocketConfig.fir@20955.4]
  output  auto_out_1_clock, // @[:chipyard.TestHarness.RocketConfig.fir@20955.4]
  output  auto_out_1_reset, // @[:chipyard.TestHarness.RocketConfig.fir@20955.4]
  output  auto_out_0_clock, // @[:chipyard.TestHarness.RocketConfig.fir@20955.4]
  output  auto_out_0_reset // @[:chipyard.TestHarness.RocketConfig.fir@20955.4]
);
  assign auto_out_1_clock = auto_in_clock; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20972.4]
  assign auto_out_1_reset = auto_in_reset; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20972.4]
  assign auto_out_0_clock = auto_in_clock; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20971.4]
  assign auto_out_0_reset = auto_in_reset; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@20971.4]
endmodule
