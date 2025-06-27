module AsyncValidSync( // @[:chipyard.TestHarness.RocketConfig.fir@134266.2]
  input   io_in, // @[:chipyard.TestHarness.RocketConfig.fir@134267.4]
  output  io_out, // @[:chipyard.TestHarness.RocketConfig.fir@134267.4]
  input   clock, // @[:chipyard.TestHarness.RocketConfig.fir@134268.4]
  input   reset // @[:chipyard.TestHarness.RocketConfig.fir@134269.4]
);
  wire  source_valid_0_clock; // @[ShiftReg.scala 45:23:chipyard.TestHarness.RocketConfig.fir@134271.4]
  wire  source_valid_0_reset; // @[ShiftReg.scala 45:23:chipyard.TestHarness.RocketConfig.fir@134271.4]
  wire  source_valid_0_io_d; // @[ShiftReg.scala 45:23:chipyard.TestHarness.RocketConfig.fir@134271.4]
  wire  source_valid_0_io_q; // @[ShiftReg.scala 45:23:chipyard.TestHarness.RocketConfig.fir@134271.4]
  AsyncResetSynchronizerShiftReg_w1_d3_i0_1 source_valid_0 ( // @[ShiftReg.scala 45:23:chipyard.TestHarness.RocketConfig.fir@134271.4]
    .clock(source_valid_0_clock),
    .reset(source_valid_0_reset),
    .io_d(source_valid_0_io_d),
    .io_q(source_valid_0_io_q)
  );
  assign io_out = source_valid_0_io_q; // @[AsyncQueue.scala 66:12:chipyard.TestHarness.RocketConfig.fir@134277.4]
  assign source_valid_0_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@134272.4]
  assign source_valid_0_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@134273.4]
  assign source_valid_0_io_d = io_in; // @[ShiftReg.scala 47:16:chipyard.TestHarness.RocketConfig.fir@134274.4]
endmodule
