module AsyncQueueSource_1( // @[:chipyard.TestHarness.RocketConfig.fir@135125.2]
  input   clock, // @[:chipyard.TestHarness.RocketConfig.fir@135126.4]
  input   reset, // @[:chipyard.TestHarness.RocketConfig.fir@135127.4]
  output  io_enq_ready, // @[:chipyard.TestHarness.RocketConfig.fir@135128.4]
  input   io_enq_valid, // @[:chipyard.TestHarness.RocketConfig.fir@135128.4]
  input   io_enq_bits_resumereq, // @[:chipyard.TestHarness.RocketConfig.fir@135128.4]
  input   io_enq_bits_ackhavereset, // @[:chipyard.TestHarness.RocketConfig.fir@135128.4]
  input   io_enq_bits_hrmask_0, // @[:chipyard.TestHarness.RocketConfig.fir@135128.4]
  output  io_async_mem_0_resumereq, // @[:chipyard.TestHarness.RocketConfig.fir@135128.4]
  output  io_async_mem_0_ackhavereset, // @[:chipyard.TestHarness.RocketConfig.fir@135128.4]
  output  io_async_mem_0_hrmask_0, // @[:chipyard.TestHarness.RocketConfig.fir@135128.4]
  input   io_async_ridx, // @[:chipyard.TestHarness.RocketConfig.fir@135128.4]
  output  io_async_widx, // @[:chipyard.TestHarness.RocketConfig.fir@135128.4]
  input   io_async_safe_ridx_valid, // @[:chipyard.TestHarness.RocketConfig.fir@135128.4]
  output  io_async_safe_widx_valid, // @[:chipyard.TestHarness.RocketConfig.fir@135128.4]
  output  io_async_safe_source_reset_n, // @[:chipyard.TestHarness.RocketConfig.fir@135128.4]
  input   io_async_safe_sink_reset_n // @[:chipyard.TestHarness.RocketConfig.fir@135128.4]
);
  wire  ridx_gray_clock; // @[ShiftReg.scala 45:23:chipyard.TestHarness.RocketConfig.fir@135145.4]
  wire  ridx_gray_reset; // @[ShiftReg.scala 45:23:chipyard.TestHarness.RocketConfig.fir@135145.4]
  wire  ridx_gray_io_d; // @[ShiftReg.scala 45:23:chipyard.TestHarness.RocketConfig.fir@135145.4]
  wire  ridx_gray_io_q; // @[ShiftReg.scala 45:23:chipyard.TestHarness.RocketConfig.fir@135145.4]
  wire  AsyncValidSync_io_in; // @[AsyncQueue.scala 100:32:chipyard.TestHarness.RocketConfig.fir@135178.4]
  wire  AsyncValidSync_io_out; // @[AsyncQueue.scala 100:32:chipyard.TestHarness.RocketConfig.fir@135178.4]
  wire  AsyncValidSync_clock; // @[AsyncQueue.scala 100:32:chipyard.TestHarness.RocketConfig.fir@135178.4]
  wire  AsyncValidSync_reset; // @[AsyncQueue.scala 100:32:chipyard.TestHarness.RocketConfig.fir@135178.4]
  wire  AsyncValidSync_1_io_in; // @[AsyncQueue.scala 101:32:chipyard.TestHarness.RocketConfig.fir@135179.4]
  wire  AsyncValidSync_1_io_out; // @[AsyncQueue.scala 101:32:chipyard.TestHarness.RocketConfig.fir@135179.4]
  wire  AsyncValidSync_1_clock; // @[AsyncQueue.scala 101:32:chipyard.TestHarness.RocketConfig.fir@135179.4]
  wire  AsyncValidSync_1_reset; // @[AsyncQueue.scala 101:32:chipyard.TestHarness.RocketConfig.fir@135179.4]
  wire  AsyncValidSync_2_io_in; // @[AsyncQueue.scala 103:30:chipyard.TestHarness.RocketConfig.fir@135180.4]
  wire  AsyncValidSync_2_io_out; // @[AsyncQueue.scala 103:30:chipyard.TestHarness.RocketConfig.fir@135180.4]
  wire  AsyncValidSync_2_clock; // @[AsyncQueue.scala 103:30:chipyard.TestHarness.RocketConfig.fir@135180.4]
  wire  AsyncValidSync_2_reset; // @[AsyncQueue.scala 103:30:chipyard.TestHarness.RocketConfig.fir@135180.4]
  wire  AsyncValidSync_3_io_in; // @[AsyncQueue.scala 104:30:chipyard.TestHarness.RocketConfig.fir@135181.4]
  wire  AsyncValidSync_3_io_out; // @[AsyncQueue.scala 104:30:chipyard.TestHarness.RocketConfig.fir@135181.4]
  wire  AsyncValidSync_3_clock; // @[AsyncQueue.scala 104:30:chipyard.TestHarness.RocketConfig.fir@135181.4]
  wire  AsyncValidSync_3_reset; // @[AsyncQueue.scala 104:30:chipyard.TestHarness.RocketConfig.fir@135181.4]
  reg  mem_0_resumereq; // @[AsyncQueue.scala 80:16:chipyard.TestHarness.RocketConfig.fir@135132.4]
  reg [31:0] _RAND_0;
  reg  mem_0_ackhavereset; // @[AsyncQueue.scala 80:16:chipyard.TestHarness.RocketConfig.fir@135132.4]
  reg [31:0] _RAND_1;
  reg  mem_0_hrmask_0; // @[AsyncQueue.scala 80:16:chipyard.TestHarness.RocketConfig.fir@135132.4]
  reg [31:0] _RAND_2;
  wire  _T_1; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@135134.4]
  wire  sink_ready; // @[:chipyard.TestHarness.RocketConfig.fir@135130.4 :chipyard.TestHarness.RocketConfig.fir@135131.4 AsyncQueue.scala 120:16:chipyard.TestHarness.RocketConfig.fir@135208.4]
  wire  _T_2; // @[AsyncQueue.scala 81:79:chipyard.TestHarness.RocketConfig.fir@135135.4]
  reg  widx_bin; // @[AsyncQueue.scala 52:25:chipyard.TestHarness.RocketConfig.fir@135137.4]
  reg [31:0] _RAND_3;
  wire  _T_5; // @[AsyncQueue.scala 53:43:chipyard.TestHarness.RocketConfig.fir@135140.4]
  wire  widx; // @[AsyncQueue.scala 53:23:chipyard.TestHarness.RocketConfig.fir@135141.4]
  wire  ridx; // @[ShiftReg.scala 48:24:chipyard.TestHarness.RocketConfig.fir@135149.4 ShiftReg.scala 48:24:chipyard.TestHarness.RocketConfig.fir@135150.4]
  wire  _T_8; // @[AsyncQueue.scala 83:44:chipyard.TestHarness.RocketConfig.fir@135151.4]
  wire  _T_9; // @[AsyncQueue.scala 83:34:chipyard.TestHarness.RocketConfig.fir@135152.4]
  reg  ready_reg; // @[AsyncQueue.scala 88:56:chipyard.TestHarness.RocketConfig.fir@135164.4]
  reg [31:0] _RAND_4;
  reg  widx_gray; // @[AsyncQueue.scala 91:55:chipyard.TestHarness.RocketConfig.fir@135169.4]
  reg [31:0] _RAND_5;
  wire  _T_15; // @[AsyncQueue.scala 105:46:chipyard.TestHarness.RocketConfig.fir@135183.4]
  AsyncResetSynchronizerShiftReg_w1_d3_i0 ridx_gray ( // @[ShiftReg.scala 45:23:chipyard.TestHarness.RocketConfig.fir@135145.4]
    .clock(ridx_gray_clock),
    .reset(ridx_gray_reset),
    .io_d(ridx_gray_io_d),
    .io_q(ridx_gray_io_q)
  );
  AsyncValidSync AsyncValidSync ( // @[AsyncQueue.scala 100:32:chipyard.TestHarness.RocketConfig.fir@135178.4]
    .io_in(AsyncValidSync_io_in),
    .io_out(AsyncValidSync_io_out),
    .clock(AsyncValidSync_clock),
    .reset(AsyncValidSync_reset)
  );
  AsyncValidSync AsyncValidSync_1 ( // @[AsyncQueue.scala 101:32:chipyard.TestHarness.RocketConfig.fir@135179.4]
    .io_in(AsyncValidSync_1_io_in),
    .io_out(AsyncValidSync_1_io_out),
    .clock(AsyncValidSync_1_clock),
    .reset(AsyncValidSync_1_reset)
  );
  AsyncValidSync AsyncValidSync_2 ( // @[AsyncQueue.scala 103:30:chipyard.TestHarness.RocketConfig.fir@135180.4]
    .io_in(AsyncValidSync_2_io_in),
    .io_out(AsyncValidSync_2_io_out),
    .clock(AsyncValidSync_2_clock),
    .reset(AsyncValidSync_2_reset)
  );
  AsyncValidSync AsyncValidSync_3 ( // @[AsyncQueue.scala 104:30:chipyard.TestHarness.RocketConfig.fir@135181.4]
    .io_in(AsyncValidSync_3_io_in),
    .io_out(AsyncValidSync_3_io_out),
    .clock(AsyncValidSync_3_clock),
    .reset(AsyncValidSync_3_reset)
  );
  assign _T_1 = io_enq_ready & io_enq_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@135134.4]
  assign sink_ready = AsyncValidSync_3_io_out; // @[:chipyard.TestHarness.RocketConfig.fir@135130.4 :chipyard.TestHarness.RocketConfig.fir@135131.4 AsyncQueue.scala 120:16:chipyard.TestHarness.RocketConfig.fir@135208.4]
  assign _T_2 = ~sink_ready; // @[AsyncQueue.scala 81:79:chipyard.TestHarness.RocketConfig.fir@135135.4]
  assign _T_5 = widx_bin + _T_1; // @[AsyncQueue.scala 53:43:chipyard.TestHarness.RocketConfig.fir@135140.4]
  assign widx = _T_2 ? 1'h0 : _T_5; // @[AsyncQueue.scala 53:23:chipyard.TestHarness.RocketConfig.fir@135141.4]
  assign ridx = ridx_gray_io_q; // @[ShiftReg.scala 48:24:chipyard.TestHarness.RocketConfig.fir@135149.4 ShiftReg.scala 48:24:chipyard.TestHarness.RocketConfig.fir@135150.4]
  assign _T_8 = ridx ^ 1'h1; // @[AsyncQueue.scala 83:44:chipyard.TestHarness.RocketConfig.fir@135151.4]
  assign _T_9 = widx != _T_8; // @[AsyncQueue.scala 83:34:chipyard.TestHarness.RocketConfig.fir@135152.4]
  assign _T_15 = ~io_async_safe_sink_reset_n; // @[AsyncQueue.scala 105:46:chipyard.TestHarness.RocketConfig.fir@135183.4]
  assign io_enq_ready = ready_reg & sink_ready; // @[AsyncQueue.scala 89:16:chipyard.TestHarness.RocketConfig.fir@135167.4]
  assign io_async_mem_0_resumereq = mem_0_resumereq; // @[AsyncQueue.scala 96:31:chipyard.TestHarness.RocketConfig.fir@135177.4]
  assign io_async_mem_0_ackhavereset = mem_0_ackhavereset; // @[AsyncQueue.scala 96:31:chipyard.TestHarness.RocketConfig.fir@135175.4]
  assign io_async_mem_0_hrmask_0 = mem_0_hrmask_0; // @[AsyncQueue.scala 96:31:chipyard.TestHarness.RocketConfig.fir@135172.4]
  assign io_async_widx = widx_gray; // @[AsyncQueue.scala 92:17:chipyard.TestHarness.RocketConfig.fir@135171.4]
  assign io_async_safe_widx_valid = AsyncValidSync_1_io_out; // @[AsyncQueue.scala 117:20:chipyard.TestHarness.RocketConfig.fir@135205.4]
  assign io_async_safe_source_reset_n = ~reset; // @[AsyncQueue.scala 121:24:chipyard.TestHarness.RocketConfig.fir@135211.4]
  assign ridx_gray_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@135146.4]
  assign ridx_gray_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@135147.4]
  assign ridx_gray_io_d = io_async_ridx; // @[ShiftReg.scala 47:16:chipyard.TestHarness.RocketConfig.fir@135148.4]
  assign AsyncValidSync_io_in = 1'h1; // @[AsyncQueue.scala 115:26:chipyard.TestHarness.RocketConfig.fir@135203.4]
  assign AsyncValidSync_clock = clock; // @[AsyncQueue.scala 110:26:chipyard.TestHarness.RocketConfig.fir@135199.4]
  assign AsyncValidSync_reset = reset | _T_15; // @[AsyncQueue.scala 105:26:chipyard.TestHarness.RocketConfig.fir@135186.4]
  assign AsyncValidSync_1_io_in = AsyncValidSync_io_out; // @[AsyncQueue.scala 116:26:chipyard.TestHarness.RocketConfig.fir@135204.4]
  assign AsyncValidSync_1_clock = clock; // @[AsyncQueue.scala 111:26:chipyard.TestHarness.RocketConfig.fir@135200.4]
  assign AsyncValidSync_1_reset = reset | _T_15; // @[AsyncQueue.scala 106:26:chipyard.TestHarness.RocketConfig.fir@135191.4]
  assign AsyncValidSync_2_io_in = io_async_safe_ridx_valid; // @[AsyncQueue.scala 118:23:chipyard.TestHarness.RocketConfig.fir@135206.4]
  assign AsyncValidSync_2_clock = clock; // @[AsyncQueue.scala 112:26:chipyard.TestHarness.RocketConfig.fir@135201.4]
  assign AsyncValidSync_2_reset = reset | _T_15; // @[AsyncQueue.scala 107:26:chipyard.TestHarness.RocketConfig.fir@135196.4]
  assign AsyncValidSync_3_io_in = AsyncValidSync_2_io_out; // @[AsyncQueue.scala 119:22:chipyard.TestHarness.RocketConfig.fir@135207.4]
  assign AsyncValidSync_3_clock = clock; // @[AsyncQueue.scala 113:26:chipyard.TestHarness.RocketConfig.fir@135202.4]
  assign AsyncValidSync_3_reset = reset; // @[AsyncQueue.scala 108:26:chipyard.TestHarness.RocketConfig.fir@135198.4]
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
  mem_0_resumereq = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  mem_0_ackhavereset = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  mem_0_hrmask_0 = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  widx_bin = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  ready_reg = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  widx_gray = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  if (reset) begin
    widx_bin = 1'h0;
  end
  if (reset) begin
    ready_reg = 1'h0;
  end
  if (reset) begin
    widx_gray = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (_T_1) begin
      mem_0_resumereq <= io_enq_bits_resumereq;
    end
    if (_T_1) begin
      mem_0_ackhavereset <= io_enq_bits_ackhavereset;
    end
    if (_T_1) begin
      mem_0_hrmask_0 <= io_enq_bits_hrmask_0;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin
      widx_bin <= 1'h0;
    end else if (_T_2) begin
      widx_bin <= 1'h0;
    end else begin
      widx_bin <= _T_5;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin
      ready_reg <= 1'h0;
    end else begin
      ready_reg <= sink_ready & _T_9;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin
      widx_gray <= 1'h0;
    end else if (_T_2) begin
      widx_gray <= 1'h0;
    end else begin
      widx_gray <= _T_5;
    end
  end
endmodule
