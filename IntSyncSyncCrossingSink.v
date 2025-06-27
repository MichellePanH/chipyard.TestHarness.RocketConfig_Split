module IntSyncSyncCrossingSink( // @[:chipyard.TestHarness.RocketConfig.fir@233288.2]
  input   auto_in_sync_0, // @[:chipyard.TestHarness.RocketConfig.fir@233291.4]
  input   auto_in_sync_1, // @[:chipyard.TestHarness.RocketConfig.fir@233291.4]
  output  auto_out_0, // @[:chipyard.TestHarness.RocketConfig.fir@233291.4]
  output  auto_out_1 // @[:chipyard.TestHarness.RocketConfig.fir@233291.4]
);
  assign auto_out_0 = auto_in_sync_0; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@233300.4]
  assign auto_out_1 = auto_in_sync_1; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@233300.4]
endmodule
