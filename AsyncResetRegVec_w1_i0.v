module AsyncResetRegVec_w1_i0( // @[:chipyard.TestHarness.RocketConfig.fir@252741.2]
  input   clock, // @[:chipyard.TestHarness.RocketConfig.fir@252742.4]
  input   reset, // @[:chipyard.TestHarness.RocketConfig.fir@252743.4]
  input   io_d, // @[:chipyard.TestHarness.RocketConfig.fir@252744.4]
  output  io_q // @[:chipyard.TestHarness.RocketConfig.fir@252744.4]
);
  reg  reg_; // @[AsyncResetReg.scala 64:50:chipyard.TestHarness.RocketConfig.fir@252750.4]
  reg [31:0] _RAND_0;
  assign io_q = reg_; // @[AsyncResetReg.scala 68:8:chipyard.TestHarness.RocketConfig.fir@252754.4]
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
  reg_ = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  if (reset) begin
    reg_ = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock or posedge reset) begin
    if (reset) begin
      reg_ <= 1'h0;
    end else begin
      reg_ <= io_d;
    end
  end
endmodule
