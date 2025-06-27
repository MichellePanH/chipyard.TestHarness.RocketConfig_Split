module IntSyncCrossingSource_2( // @[:chipyard.TestHarness.RocketConfig.fir@252715.2]
  input   clock, // @[:chipyard.TestHarness.RocketConfig.fir@252716.4]
  input   reset, // @[:chipyard.TestHarness.RocketConfig.fir@252717.4]
  input   auto_in_0, // @[:chipyard.TestHarness.RocketConfig.fir@252718.4]
  input   auto_in_1, // @[:chipyard.TestHarness.RocketConfig.fir@252718.4]
  output  auto_out_sync_0, // @[:chipyard.TestHarness.RocketConfig.fir@252718.4]
  output  auto_out_sync_1 // @[:chipyard.TestHarness.RocketConfig.fir@252718.4]
);
  wire  AsyncResetRegVec_w2_i0_clock; // @[AsyncResetReg.scala 89:21:chipyard.TestHarness.RocketConfig.fir@252730.4]
  wire  AsyncResetRegVec_w2_i0_reset; // @[AsyncResetReg.scala 89:21:chipyard.TestHarness.RocketConfig.fir@252730.4]
  wire [1:0] AsyncResetRegVec_w2_i0_io_d; // @[AsyncResetReg.scala 89:21:chipyard.TestHarness.RocketConfig.fir@252730.4]
  wire [1:0] AsyncResetRegVec_w2_i0_io_q; // @[AsyncResetReg.scala 89:21:chipyard.TestHarness.RocketConfig.fir@252730.4]
  AsyncResetRegVec_w2_i0 AsyncResetRegVec_w2_i0 ( // @[AsyncResetReg.scala 89:21:chipyard.TestHarness.RocketConfig.fir@252730.4]
    .clock(AsyncResetRegVec_w2_i0_clock),
    .reset(AsyncResetRegVec_w2_i0_reset),
    .io_d(AsyncResetRegVec_w2_i0_io_d),
    .io_q(AsyncResetRegVec_w2_i0_io_q)
  );
  assign auto_out_sync_0 = AsyncResetRegVec_w2_i0_io_q[0]; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@252727.4]
  assign auto_out_sync_1 = AsyncResetRegVec_w2_i0_io_q[1]; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@252727.4]
  assign AsyncResetRegVec_w2_i0_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@252732.4]
  assign AsyncResetRegVec_w2_i0_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@252733.4]
  assign AsyncResetRegVec_w2_i0_io_d = {auto_in_1,auto_in_0}; // @[AsyncResetReg.scala 91:14:chipyard.TestHarness.RocketConfig.fir@252734.4]
endmodule
