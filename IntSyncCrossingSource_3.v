module IntSyncCrossingSource_3( // @[:chipyard.TestHarness.RocketConfig.fir@252756.2]
  input   clock, // @[:chipyard.TestHarness.RocketConfig.fir@252757.4]
  input   reset, // @[:chipyard.TestHarness.RocketConfig.fir@252758.4]
  input   auto_in_0, // @[:chipyard.TestHarness.RocketConfig.fir@252759.4]
  output  auto_out_sync_0 // @[:chipyard.TestHarness.RocketConfig.fir@252759.4]
);
  wire  AsyncResetRegVec_w1_i0_clock; // @[AsyncResetReg.scala 89:21:chipyard.TestHarness.RocketConfig.fir@252770.4]
  wire  AsyncResetRegVec_w1_i0_reset; // @[AsyncResetReg.scala 89:21:chipyard.TestHarness.RocketConfig.fir@252770.4]
  wire  AsyncResetRegVec_w1_i0_io_d; // @[AsyncResetReg.scala 89:21:chipyard.TestHarness.RocketConfig.fir@252770.4]
  wire  AsyncResetRegVec_w1_i0_io_q; // @[AsyncResetReg.scala 89:21:chipyard.TestHarness.RocketConfig.fir@252770.4]
  AsyncResetRegVec_w1_i0 AsyncResetRegVec_w1_i0 ( // @[AsyncResetReg.scala 89:21:chipyard.TestHarness.RocketConfig.fir@252770.4]
    .clock(AsyncResetRegVec_w1_i0_clock),
    .reset(AsyncResetRegVec_w1_i0_reset),
    .io_d(AsyncResetRegVec_w1_i0_io_d),
    .io_q(AsyncResetRegVec_w1_i0_io_q)
  );
  assign auto_out_sync_0 = AsyncResetRegVec_w1_i0_io_q; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@252768.4]
  assign AsyncResetRegVec_w1_i0_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@252772.4]
  assign AsyncResetRegVec_w1_i0_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@252773.4]
  assign AsyncResetRegVec_w1_i0_io_d = auto_in_0; // @[AsyncResetReg.scala 91:14:chipyard.TestHarness.RocketConfig.fir@252774.4]
endmodule
