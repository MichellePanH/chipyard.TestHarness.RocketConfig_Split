module LevelGateway( // @[:chipyard.TestHarness.RocketConfig.fir@120885.2]
  input   clock, // @[:chipyard.TestHarness.RocketConfig.fir@120886.4]
  input   reset, // @[:chipyard.TestHarness.RocketConfig.fir@120887.4]
  input   io_interrupt, // @[:chipyard.TestHarness.RocketConfig.fir@120888.4]
  output  io_plic_valid, // @[:chipyard.TestHarness.RocketConfig.fir@120888.4]
  input   io_plic_ready, // @[:chipyard.TestHarness.RocketConfig.fir@120888.4]
  input   io_plic_complete // @[:chipyard.TestHarness.RocketConfig.fir@120888.4]
);
  reg  inFlight; // @[Plic.scala 33:21:chipyard.TestHarness.RocketConfig.fir@120893.4]
  reg [31:0] _RAND_0;
  wire  _T; // @[Plic.scala 34:22:chipyard.TestHarness.RocketConfig.fir@120894.4]
  wire  _GEN_0; // @[Plic.scala 34:40:chipyard.TestHarness.RocketConfig.fir@120895.4]
  wire  _T_1; // @[Plic.scala 36:36:chipyard.TestHarness.RocketConfig.fir@120901.4]
  assign _T = io_interrupt & io_plic_ready; // @[Plic.scala 34:22:chipyard.TestHarness.RocketConfig.fir@120894.4]
  assign _GEN_0 = _T | inFlight; // @[Plic.scala 34:40:chipyard.TestHarness.RocketConfig.fir@120895.4]
  assign _T_1 = ~inFlight; // @[Plic.scala 36:36:chipyard.TestHarness.RocketConfig.fir@120901.4]
  assign io_plic_valid = io_interrupt & _T_1; // @[Plic.scala 36:17:chipyard.TestHarness.RocketConfig.fir@120903.4]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  inFlight = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      inFlight <= 1'h0;
    end else if (io_plic_complete) begin
      inFlight <= 1'h0;
    end else begin
      inFlight <= _GEN_0;
    end
  end
endmodule
