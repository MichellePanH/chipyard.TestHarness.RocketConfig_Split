module ClockGroup( // @[:chipyard.TestHarness.RocketConfig.fir@82.2]
  input   auto_in_member_0_clock, // @[:chipyard.TestHarness.RocketConfig.fir@83.4]
  input   auto_in_member_0_reset, // @[:chipyard.TestHarness.RocketConfig.fir@83.4]
  output  auto_out_clock, // @[:chipyard.TestHarness.RocketConfig.fir@83.4]
  output  auto_out_reset // @[:chipyard.TestHarness.RocketConfig.fir@83.4]
);
  assign auto_out_clock = auto_in_member_0_clock; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@97.4]
  assign auto_out_reset = auto_in_member_0_reset; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@97.4]
endmodule
