module PlusArgTimeout( // @[:chipyard.TestHarness.RocketConfig.fir@250352.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@250353.4]
  input         reset, // @[:chipyard.TestHarness.RocketConfig.fir@250354.4]
  input  [31:0] io_count // @[:chipyard.TestHarness.RocketConfig.fir@250355.4]
);
  wire [31:0] plusarg_reader_out; // @[PlusArg.scala 28:19:chipyard.TestHarness.RocketConfig.fir@250357.4]
  wire  _T; // @[PlusArg.scala 29:13:chipyard.TestHarness.RocketConfig.fir@250359.4]
  wire  _T_1; // @[PlusArg.scala 30:22:chipyard.TestHarness.RocketConfig.fir@250361.6]
  wire  _T_3; // @[PlusArg.scala 30:12:chipyard.TestHarness.RocketConfig.fir@250363.6]
  wire  _T_4; // @[PlusArg.scala 30:12:chipyard.TestHarness.RocketConfig.fir@250364.6]
  plusarg_reader #(.FORMAT("max_core_cycles=%d"), .DEFAULT(0), .WIDTH(32)) plusarg_reader ( // @[PlusArg.scala 28:19:chipyard.TestHarness.RocketConfig.fir@250357.4]
    .out(plusarg_reader_out)
  );
  assign _T = plusarg_reader_out > 32'h0; // @[PlusArg.scala 29:13:chipyard.TestHarness.RocketConfig.fir@250359.4]
  assign _T_1 = io_count < plusarg_reader_out; // @[PlusArg.scala 30:22:chipyard.TestHarness.RocketConfig.fir@250361.6]
  assign _T_3 = _T_1 | reset; // @[PlusArg.scala 30:12:chipyard.TestHarness.RocketConfig.fir@250363.6]
  assign _T_4 = ~_T_3; // @[PlusArg.scala 30:12:chipyard.TestHarness.RocketConfig.fir@250364.6]
  always @(posedge clock) begin
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T & _T_4) begin
          $fwrite(32'h80000002,"Assertion failed: Timeout exceeded: Kill the emulation after INT rdtime cycles. Off if 0.\n    at PlusArg.scala:30 assert (io.count < max, s\"Timeout exceeded: $docstring\")\n"); // @[PlusArg.scala 30:12:chipyard.TestHarness.RocketConfig.fir@250366.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T & _T_4) begin
          $fatal; // @[PlusArg.scala 30:12:chipyard.TestHarness.RocketConfig.fir@250367.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
