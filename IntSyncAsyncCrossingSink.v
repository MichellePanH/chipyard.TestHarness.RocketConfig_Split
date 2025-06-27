module IntSyncAsyncCrossingSink( // @[:chipyard.TestHarness.RocketConfig.fir@233263.2]
  input   clock, // @[:chipyard.TestHarness.RocketConfig.fir@233264.4]
  input   auto_in_sync_0, // @[:chipyard.TestHarness.RocketConfig.fir@233266.4]
  output  auto_out_0 // @[:chipyard.TestHarness.RocketConfig.fir@233266.4]
);
  wire  SynchronizerShiftReg_w1_d3_clock; // @[ShiftReg.scala 45:23:chipyard.TestHarness.RocketConfig.fir@233277.4]
  wire  SynchronizerShiftReg_w1_d3_io_d; // @[ShiftReg.scala 45:23:chipyard.TestHarness.RocketConfig.fir@233277.4]
  wire  SynchronizerShiftReg_w1_d3_io_q; // @[ShiftReg.scala 45:23:chipyard.TestHarness.RocketConfig.fir@233277.4]
  SynchronizerShiftReg_w1_d3 SynchronizerShiftReg_w1_d3 ( // @[ShiftReg.scala 45:23:chipyard.TestHarness.RocketConfig.fir@233277.4]
    .clock(SynchronizerShiftReg_w1_d3_clock),
    .io_d(SynchronizerShiftReg_w1_d3_io_d),
    .io_q(SynchronizerShiftReg_w1_d3_io_q)
  );
  assign auto_out_0 = SynchronizerShiftReg_w1_d3_io_q; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@233275.4]
  assign SynchronizerShiftReg_w1_d3_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@233278.4]
  assign SynchronizerShiftReg_w1_d3_io_d = auto_in_sync_0; // @[ShiftReg.scala 47:16:chipyard.TestHarness.RocketConfig.fir@233280.4]
endmodule
