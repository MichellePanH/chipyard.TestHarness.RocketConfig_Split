module SynchronizerShiftReg_w1_d3( // @[:chipyard.TestHarness.RocketConfig.fir@233249.2]
  input   clock, // @[:chipyard.TestHarness.RocketConfig.fir@233250.4]
  input   io_d, // @[:chipyard.TestHarness.RocketConfig.fir@233252.4]
  output  io_q // @[:chipyard.TestHarness.RocketConfig.fir@233252.4]
);
  wire  NonSyncResetSynchronizerPrimitiveShiftReg_d3_clock; // @[ShiftReg.scala 45:23:chipyard.TestHarness.RocketConfig.fir@233255.4]
  wire  NonSyncResetSynchronizerPrimitiveShiftReg_d3_io_d; // @[ShiftReg.scala 45:23:chipyard.TestHarness.RocketConfig.fir@233255.4]
  wire  NonSyncResetSynchronizerPrimitiveShiftReg_d3_io_q; // @[ShiftReg.scala 45:23:chipyard.TestHarness.RocketConfig.fir@233255.4]
  NonSyncResetSynchronizerPrimitiveShiftReg_d3 NonSyncResetSynchronizerPrimitiveShiftReg_d3 ( // @[ShiftReg.scala 45:23:chipyard.TestHarness.RocketConfig.fir@233255.4]
    .clock(NonSyncResetSynchronizerPrimitiveShiftReg_d3_clock),
    .io_d(NonSyncResetSynchronizerPrimitiveShiftReg_d3_io_d),
    .io_q(NonSyncResetSynchronizerPrimitiveShiftReg_d3_io_q)
  );
  assign io_q = NonSyncResetSynchronizerPrimitiveShiftReg_d3_io_q; // @[SynchronizerReg.scala 165:8:chipyard.TestHarness.RocketConfig.fir@233261.4]
  assign NonSyncResetSynchronizerPrimitiveShiftReg_d3_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@233256.4]
  assign NonSyncResetSynchronizerPrimitiveShiftReg_d3_io_d = io_d; // @[ShiftReg.scala 47:16:chipyard.TestHarness.RocketConfig.fir@233258.4]
endmodule
