module AsyncResetSynchronizerPrimitiveShiftReg_d3_i0( // @[:chipyard.TestHarness.RocketConfig.fir@134208.2]
  input   clock, // @[:chipyard.TestHarness.RocketConfig.fir@134209.4]
  input   reset, // @[:chipyard.TestHarness.RocketConfig.fir@134210.4]
  input   io_d, // @[:chipyard.TestHarness.RocketConfig.fir@134211.4]
  output  io_q // @[:chipyard.TestHarness.RocketConfig.fir@134211.4]
);
  reg  sync_0; // @[SynchronizerReg.scala 59:89:chipyard.TestHarness.RocketConfig.fir@134214.4]
  reg [31:0] _RAND_0;
  reg  sync_1; // @[SynchronizerReg.scala 59:89:chipyard.TestHarness.RocketConfig.fir@134215.4]
  reg [31:0] _RAND_1;
  reg  sync_2; // @[SynchronizerReg.scala 59:89:chipyard.TestHarness.RocketConfig.fir@134216.4]
  reg [31:0] _RAND_2;
  assign io_q = sync_0; // @[SynchronizerReg.scala 67:10:chipyard.TestHarness.RocketConfig.fir@134221.4]
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
  sync_0 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  sync_1 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  sync_2 = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  if (reset) begin
    sync_0 = 1'h0;
  end
  if (reset) begin
    sync_1 = 1'h0;
  end
  if (reset) begin
    sync_2 = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock or posedge reset) begin
    if (reset) begin
      sync_0 <= 1'h0;
    end else begin
      sync_0 <= sync_1;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin
      sync_1 <= 1'h0;
    end else begin
      sync_1 <= sync_2;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin
      sync_2 <= 1'h0;
    end else begin
      sync_2 <= io_d;
    end
  end
endmodule
