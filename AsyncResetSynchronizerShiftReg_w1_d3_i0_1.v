module AsyncResetSynchronizerShiftReg_w1_d3_i0_1( // @[:chipyard.TestHarness.RocketConfig.fir@134252.2]
  input   clock, // @[:chipyard.TestHarness.RocketConfig.fir@134253.4]
  input   reset, // @[:chipyard.TestHarness.RocketConfig.fir@134254.4]
  input   io_d, // @[:chipyard.TestHarness.RocketConfig.fir@134255.4]
  output  io_q // @[:chipyard.TestHarness.RocketConfig.fir@134255.4]
);
  wire  AsyncResetSynchronizerPrimitiveShiftReg_d3_i0_clock; // @[ShiftReg.scala 45:23:chipyard.TestHarness.RocketConfig.fir@134258.4]
  wire  AsyncResetSynchronizerPrimitiveShiftReg_d3_i0_reset; // @[ShiftReg.scala 45:23:chipyard.TestHarness.RocketConfig.fir@134258.4]
  wire  AsyncResetSynchronizerPrimitiveShiftReg_d3_i0_io_d; // @[ShiftReg.scala 45:23:chipyard.TestHarness.RocketConfig.fir@134258.4]
  wire  AsyncResetSynchronizerPrimitiveShiftReg_d3_i0_io_q; // @[ShiftReg.scala 45:23:chipyard.TestHarness.RocketConfig.fir@134258.4]
  AsyncResetSynchronizerPrimitiveShiftReg_d3_i0_1 AsyncResetSynchronizerPrimitiveShiftReg_d3_i0 ( // @[ShiftReg.scala 45:23:chipyard.TestHarness.RocketConfig.fir@134258.4]
    .clock(AsyncResetSynchronizerPrimitiveShiftReg_d3_i0_clock),
    .reset(AsyncResetSynchronizerPrimitiveShiftReg_d3_i0_reset),
    .io_d(AsyncResetSynchronizerPrimitiveShiftReg_d3_i0_io_d),
    .io_q(AsyncResetSynchronizerPrimitiveShiftReg_d3_i0_io_q)
  );
  assign io_q = AsyncResetSynchronizerPrimitiveShiftReg_d3_i0_io_q; // @[SynchronizerReg.scala 84:8:chipyard.TestHarness.RocketConfig.fir@134264.4]
  assign AsyncResetSynchronizerPrimitiveShiftReg_d3_i0_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@134259.4]
  assign AsyncResetSynchronizerPrimitiveShiftReg_d3_i0_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@134260.4]
  assign AsyncResetSynchronizerPrimitiveShiftReg_d3_i0_io_d = io_d; // @[ShiftReg.scala 47:16:chipyard.TestHarness.RocketConfig.fir@134261.4]
endmodule
