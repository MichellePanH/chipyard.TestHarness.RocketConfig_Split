module AsyncResetSynchronizerShiftReg_w1_d3_i0( // @[:chipyard.TestHarness.RocketConfig.fir@134223.2]
  input   clock, // @[:chipyard.TestHarness.RocketConfig.fir@134224.4]
  input   reset, // @[:chipyard.TestHarness.RocketConfig.fir@134225.4]
  input   io_d, // @[:chipyard.TestHarness.RocketConfig.fir@134226.4]
  output  io_q // @[:chipyard.TestHarness.RocketConfig.fir@134226.4]
);
  wire  AsyncResetSynchronizerPrimitiveShiftReg_d3_i0_clock; // @[ShiftReg.scala 45:23:chipyard.TestHarness.RocketConfig.fir@134229.4]
  wire  AsyncResetSynchronizerPrimitiveShiftReg_d3_i0_reset; // @[ShiftReg.scala 45:23:chipyard.TestHarness.RocketConfig.fir@134229.4]
  wire  AsyncResetSynchronizerPrimitiveShiftReg_d3_i0_io_d; // @[ShiftReg.scala 45:23:chipyard.TestHarness.RocketConfig.fir@134229.4]
  wire  AsyncResetSynchronizerPrimitiveShiftReg_d3_i0_io_q; // @[ShiftReg.scala 45:23:chipyard.TestHarness.RocketConfig.fir@134229.4]
  AsyncResetSynchronizerPrimitiveShiftReg_d3_i0 AsyncResetSynchronizerPrimitiveShiftReg_d3_i0 ( // @[ShiftReg.scala 45:23:chipyard.TestHarness.RocketConfig.fir@134229.4]
    .clock(AsyncResetSynchronizerPrimitiveShiftReg_d3_i0_clock),
    .reset(AsyncResetSynchronizerPrimitiveShiftReg_d3_i0_reset),
    .io_d(AsyncResetSynchronizerPrimitiveShiftReg_d3_i0_io_d),
    .io_q(AsyncResetSynchronizerPrimitiveShiftReg_d3_i0_io_q)
  );
  assign io_q = AsyncResetSynchronizerPrimitiveShiftReg_d3_i0_io_q; // @[SynchronizerReg.scala 84:8:chipyard.TestHarness.RocketConfig.fir@134235.4]
  assign AsyncResetSynchronizerPrimitiveShiftReg_d3_i0_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@134230.4]
  assign AsyncResetSynchronizerPrimitiveShiftReg_d3_i0_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@134231.4]
  assign AsyncResetSynchronizerPrimitiveShiftReg_d3_i0_io_d = io_d; // @[ShiftReg.scala 47:16:chipyard.TestHarness.RocketConfig.fir@134232.4]
endmodule
