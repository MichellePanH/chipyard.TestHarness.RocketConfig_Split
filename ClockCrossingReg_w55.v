module ClockCrossingReg_w55( // @[:chipyard.TestHarness.RocketConfig.fir@189300.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@189301.4]
  input  [54:0] io_d, // @[:chipyard.TestHarness.RocketConfig.fir@189303.4]
  output [54:0] io_q, // @[:chipyard.TestHarness.RocketConfig.fir@189303.4]
  input         io_en // @[:chipyard.TestHarness.RocketConfig.fir@189303.4]
);
  reg [54:0] cdc_reg; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@189305.4]
  reg [63:0] _RAND_0;
  assign io_q = cdc_reg; // @[SynchronizerReg.scala 192:8:chipyard.TestHarness.RocketConfig.fir@189309.4]
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
  _RAND_0 = {2{`RANDOM}};
  cdc_reg = _RAND_0[54:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (io_en) begin
      cdc_reg <= io_d;
    end
  end
endmodule
