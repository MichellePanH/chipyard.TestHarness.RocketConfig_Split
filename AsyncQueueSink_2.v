module AsyncQueueSink_2( // @[:chipyard.TestHarness.RocketConfig.fir@190176.2]
  input        clock, // @[:chipyard.TestHarness.RocketConfig.fir@190177.4]
  input        reset, // @[:chipyard.TestHarness.RocketConfig.fir@190178.4]
  output       io_deq_valid, // @[:chipyard.TestHarness.RocketConfig.fir@190179.4]
  output       io_deq_bits_resumereq, // @[:chipyard.TestHarness.RocketConfig.fir@190179.4]
  output [9:0] io_deq_bits_hartsel, // @[:chipyard.TestHarness.RocketConfig.fir@190179.4]
  output       io_deq_bits_ackhavereset, // @[:chipyard.TestHarness.RocketConfig.fir@190179.4]
  output       io_deq_bits_hrmask_0, // @[:chipyard.TestHarness.RocketConfig.fir@190179.4]
  input        io_async_mem_0_resumereq, // @[:chipyard.TestHarness.RocketConfig.fir@190179.4]
  input        io_async_mem_0_ackhavereset, // @[:chipyard.TestHarness.RocketConfig.fir@190179.4]
  input        io_async_mem_0_hrmask_0, // @[:chipyard.TestHarness.RocketConfig.fir@190179.4]
  output       io_async_ridx, // @[:chipyard.TestHarness.RocketConfig.fir@190179.4]
  input        io_async_widx, // @[:chipyard.TestHarness.RocketConfig.fir@190179.4]
  output       io_async_safe_ridx_valid, // @[:chipyard.TestHarness.RocketConfig.fir@190179.4]
  input        io_async_safe_widx_valid, // @[:chipyard.TestHarness.RocketConfig.fir@190179.4]
  input        io_async_safe_source_reset_n, // @[:chipyard.TestHarness.RocketConfig.fir@190179.4]
  output       io_async_safe_sink_reset_n // @[:chipyard.TestHarness.RocketConfig.fir@190179.4]
);
  wire  widx_gray_clock; // @[ShiftReg.scala 45:23:chipyard.TestHarness.RocketConfig.fir@190195.4]
  wire  widx_gray_reset; // @[ShiftReg.scala 45:23:chipyard.TestHarness.RocketConfig.fir@190195.4]
  wire  widx_gray_io_d; // @[ShiftReg.scala 45:23:chipyard.TestHarness.RocketConfig.fir@190195.4]
  wire  widx_gray_io_q; // @[ShiftReg.scala 45:23:chipyard.TestHarness.RocketConfig.fir@190195.4]
  wire  deq_bits_reg_clock; // @[SynchronizerReg.scala 197:25:chipyard.TestHarness.RocketConfig.fir@190203.4]
  wire [14:0] deq_bits_reg_io_d; // @[SynchronizerReg.scala 197:25:chipyard.TestHarness.RocketConfig.fir@190203.4]
  wire [14:0] deq_bits_reg_io_q; // @[SynchronizerReg.scala 197:25:chipyard.TestHarness.RocketConfig.fir@190203.4]
  wire  deq_bits_reg_io_en; // @[SynchronizerReg.scala 197:25:chipyard.TestHarness.RocketConfig.fir@190203.4]
  wire  AsyncValidSync_io_in; // @[AsyncQueue.scala 168:33:chipyard.TestHarness.RocketConfig.fir@190243.4]
  wire  AsyncValidSync_io_out; // @[AsyncQueue.scala 168:33:chipyard.TestHarness.RocketConfig.fir@190243.4]
  wire  AsyncValidSync_clock; // @[AsyncQueue.scala 168:33:chipyard.TestHarness.RocketConfig.fir@190243.4]
  wire  AsyncValidSync_reset; // @[AsyncQueue.scala 168:33:chipyard.TestHarness.RocketConfig.fir@190243.4]
  wire  AsyncValidSync_1_io_in; // @[AsyncQueue.scala 169:33:chipyard.TestHarness.RocketConfig.fir@190244.4]
  wire  AsyncValidSync_1_io_out; // @[AsyncQueue.scala 169:33:chipyard.TestHarness.RocketConfig.fir@190244.4]
  wire  AsyncValidSync_1_clock; // @[AsyncQueue.scala 169:33:chipyard.TestHarness.RocketConfig.fir@190244.4]
  wire  AsyncValidSync_1_reset; // @[AsyncQueue.scala 169:33:chipyard.TestHarness.RocketConfig.fir@190244.4]
  wire  AsyncValidSync_2_io_in; // @[AsyncQueue.scala 171:31:chipyard.TestHarness.RocketConfig.fir@190245.4]
  wire  AsyncValidSync_2_io_out; // @[AsyncQueue.scala 171:31:chipyard.TestHarness.RocketConfig.fir@190245.4]
  wire  AsyncValidSync_2_clock; // @[AsyncQueue.scala 171:31:chipyard.TestHarness.RocketConfig.fir@190245.4]
  wire  AsyncValidSync_2_reset; // @[AsyncQueue.scala 171:31:chipyard.TestHarness.RocketConfig.fir@190245.4]
  wire  AsyncValidSync_3_io_in; // @[AsyncQueue.scala 172:31:chipyard.TestHarness.RocketConfig.fir@190246.4]
  wire  AsyncValidSync_3_io_out; // @[AsyncQueue.scala 172:31:chipyard.TestHarness.RocketConfig.fir@190246.4]
  wire  AsyncValidSync_3_clock; // @[AsyncQueue.scala 172:31:chipyard.TestHarness.RocketConfig.fir@190246.4]
  wire  AsyncValidSync_3_reset; // @[AsyncQueue.scala 172:31:chipyard.TestHarness.RocketConfig.fir@190246.4]
  wire  source_ready; // @[:chipyard.TestHarness.RocketConfig.fir@190181.4 :chipyard.TestHarness.RocketConfig.fir@190182.4 AsyncQueue.scala 188:18:chipyard.TestHarness.RocketConfig.fir@190273.4]
  wire  _T_2; // @[AsyncQueue.scala 144:79:chipyard.TestHarness.RocketConfig.fir@190185.4]
  reg  ridx_bin; // @[AsyncQueue.scala 52:25:chipyard.TestHarness.RocketConfig.fir@190187.4]
  reg [31:0] _RAND_0;
  wire  _T_5; // @[AsyncQueue.scala 53:43:chipyard.TestHarness.RocketConfig.fir@190190.4]
  wire  ridx; // @[AsyncQueue.scala 53:23:chipyard.TestHarness.RocketConfig.fir@190191.4]
  wire  widx; // @[ShiftReg.scala 48:24:chipyard.TestHarness.RocketConfig.fir@190199.4 ShiftReg.scala 48:24:chipyard.TestHarness.RocketConfig.fir@190200.4]
  wire  _T_8; // @[AsyncQueue.scala 146:36:chipyard.TestHarness.RocketConfig.fir@190201.4]
  wire [2:0] _T_10; // @[SynchronizerReg.scala 199:24:chipyard.TestHarness.RocketConfig.fir@190207.4]
  wire [11:0] _T_12; // @[SynchronizerReg.scala 199:24:chipyard.TestHarness.RocketConfig.fir@190209.4]
  wire [14:0] _T_15; // @[:chipyard.TestHarness.RocketConfig.fir@190214.4 :chipyard.TestHarness.RocketConfig.fir@190215.4]
  reg  valid_reg; // @[AsyncQueue.scala 161:56:chipyard.TestHarness.RocketConfig.fir@190235.4]
  reg [31:0] _RAND_1;
  reg  ridx_gray; // @[AsyncQueue.scala 164:55:chipyard.TestHarness.RocketConfig.fir@190240.4]
  reg [31:0] _RAND_2;
  wire  _T_26; // @[AsyncQueue.scala 173:45:chipyard.TestHarness.RocketConfig.fir@190248.4]
  AsyncResetSynchronizerShiftReg_w1_d3_i0 widx_gray ( // @[ShiftReg.scala 45:23:chipyard.TestHarness.RocketConfig.fir@190195.4]
    .clock(widx_gray_clock),
    .reset(widx_gray_reset),
    .io_d(widx_gray_io_d),
    .io_q(widx_gray_io_q)
  );
  ClockCrossingReg_w15 deq_bits_reg ( // @[SynchronizerReg.scala 197:25:chipyard.TestHarness.RocketConfig.fir@190203.4]
    .clock(deq_bits_reg_clock),
    .io_d(deq_bits_reg_io_d),
    .io_q(deq_bits_reg_io_q),
    .io_en(deq_bits_reg_io_en)
  );
  AsyncValidSync AsyncValidSync ( // @[AsyncQueue.scala 168:33:chipyard.TestHarness.RocketConfig.fir@190243.4]
    .io_in(AsyncValidSync_io_in),
    .io_out(AsyncValidSync_io_out),
    .clock(AsyncValidSync_clock),
    .reset(AsyncValidSync_reset)
  );
  AsyncValidSync AsyncValidSync_1 ( // @[AsyncQueue.scala 169:33:chipyard.TestHarness.RocketConfig.fir@190244.4]
    .io_in(AsyncValidSync_1_io_in),
    .io_out(AsyncValidSync_1_io_out),
    .clock(AsyncValidSync_1_clock),
    .reset(AsyncValidSync_1_reset)
  );
  AsyncValidSync AsyncValidSync_2 ( // @[AsyncQueue.scala 171:31:chipyard.TestHarness.RocketConfig.fir@190245.4]
    .io_in(AsyncValidSync_2_io_in),
    .io_out(AsyncValidSync_2_io_out),
    .clock(AsyncValidSync_2_clock),
    .reset(AsyncValidSync_2_reset)
  );
  AsyncValidSync AsyncValidSync_3 ( // @[AsyncQueue.scala 172:31:chipyard.TestHarness.RocketConfig.fir@190246.4]
    .io_in(AsyncValidSync_3_io_in),
    .io_out(AsyncValidSync_3_io_out),
    .clock(AsyncValidSync_3_clock),
    .reset(AsyncValidSync_3_reset)
  );
  assign source_ready = AsyncValidSync_3_io_out; // @[:chipyard.TestHarness.RocketConfig.fir@190181.4 :chipyard.TestHarness.RocketConfig.fir@190182.4 AsyncQueue.scala 188:18:chipyard.TestHarness.RocketConfig.fir@190273.4]
  assign _T_2 = ~source_ready; // @[AsyncQueue.scala 144:79:chipyard.TestHarness.RocketConfig.fir@190185.4]
  assign _T_5 = ridx_bin + io_deq_valid; // @[AsyncQueue.scala 53:43:chipyard.TestHarness.RocketConfig.fir@190190.4]
  assign ridx = _T_2 ? 1'h0 : _T_5; // @[AsyncQueue.scala 53:23:chipyard.TestHarness.RocketConfig.fir@190191.4]
  assign widx = widx_gray_io_q; // @[ShiftReg.scala 48:24:chipyard.TestHarness.RocketConfig.fir@190199.4 ShiftReg.scala 48:24:chipyard.TestHarness.RocketConfig.fir@190200.4]
  assign _T_8 = ridx != widx; // @[AsyncQueue.scala 146:36:chipyard.TestHarness.RocketConfig.fir@190201.4]
  assign _T_10 = {2'h0,io_async_mem_0_hrmask_0}; // @[SynchronizerReg.scala 199:24:chipyard.TestHarness.RocketConfig.fir@190207.4]
  assign _T_12 = {io_async_mem_0_resumereq,10'h0,io_async_mem_0_ackhavereset}; // @[SynchronizerReg.scala 199:24:chipyard.TestHarness.RocketConfig.fir@190209.4]
  assign _T_15 = deq_bits_reg_io_q; // @[:chipyard.TestHarness.RocketConfig.fir@190214.4 :chipyard.TestHarness.RocketConfig.fir@190215.4]
  assign _T_26 = ~io_async_safe_source_reset_n; // @[AsyncQueue.scala 173:45:chipyard.TestHarness.RocketConfig.fir@190248.4]
  assign io_deq_valid = valid_reg & source_ready; // @[AsyncQueue.scala 162:16:chipyard.TestHarness.RocketConfig.fir@190238.4]
  assign io_deq_bits_resumereq = _T_15[14]; // @[AsyncQueue.scala 159:15:chipyard.TestHarness.RocketConfig.fir@190233.4]
  assign io_deq_bits_hartsel = _T_15[13:4]; // @[AsyncQueue.scala 159:15:chipyard.TestHarness.RocketConfig.fir@190232.4]
  assign io_deq_bits_ackhavereset = _T_15[3]; // @[AsyncQueue.scala 159:15:chipyard.TestHarness.RocketConfig.fir@190231.4]
  assign io_deq_bits_hrmask_0 = _T_15[0]; // @[AsyncQueue.scala 159:15:chipyard.TestHarness.RocketConfig.fir@190228.4]
  assign io_async_ridx = ridx_gray; // @[AsyncQueue.scala 165:17:chipyard.TestHarness.RocketConfig.fir@190242.4]
  assign io_async_safe_ridx_valid = AsyncValidSync_1_io_out; // @[AsyncQueue.scala 185:20:chipyard.TestHarness.RocketConfig.fir@190270.4]
  assign io_async_safe_sink_reset_n = ~reset; // @[AsyncQueue.scala 189:22:chipyard.TestHarness.RocketConfig.fir@190276.4]
  assign widx_gray_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@190196.4]
  assign widx_gray_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@190197.4]
  assign widx_gray_io_d = io_async_widx; // @[ShiftReg.scala 47:16:chipyard.TestHarness.RocketConfig.fir@190198.4]
  assign deq_bits_reg_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@190204.4]
  assign deq_bits_reg_io_d = {_T_12,_T_10}; // @[SynchronizerReg.scala 199:18:chipyard.TestHarness.RocketConfig.fir@190211.4]
  assign deq_bits_reg_io_en = source_ready & _T_8; // @[SynchronizerReg.scala 200:19:chipyard.TestHarness.RocketConfig.fir@190212.4]
  assign AsyncValidSync_io_in = 1'h1; // @[AsyncQueue.scala 183:24:chipyard.TestHarness.RocketConfig.fir@190268.4]
  assign AsyncValidSync_clock = clock; // @[AsyncQueue.scala 178:25:chipyard.TestHarness.RocketConfig.fir@190264.4]
  assign AsyncValidSync_reset = reset | _T_26; // @[AsyncQueue.scala 173:25:chipyard.TestHarness.RocketConfig.fir@190251.4]
  assign AsyncValidSync_1_io_in = AsyncValidSync_io_out; // @[AsyncQueue.scala 184:24:chipyard.TestHarness.RocketConfig.fir@190269.4]
  assign AsyncValidSync_1_clock = clock; // @[AsyncQueue.scala 179:25:chipyard.TestHarness.RocketConfig.fir@190265.4]
  assign AsyncValidSync_1_reset = reset | _T_26; // @[AsyncQueue.scala 174:25:chipyard.TestHarness.RocketConfig.fir@190256.4]
  assign AsyncValidSync_2_io_in = io_async_safe_widx_valid; // @[AsyncQueue.scala 186:25:chipyard.TestHarness.RocketConfig.fir@190271.4]
  assign AsyncValidSync_2_clock = clock; // @[AsyncQueue.scala 180:25:chipyard.TestHarness.RocketConfig.fir@190266.4]
  assign AsyncValidSync_2_reset = reset | _T_26; // @[AsyncQueue.scala 175:25:chipyard.TestHarness.RocketConfig.fir@190261.4]
  assign AsyncValidSync_3_io_in = AsyncValidSync_2_io_out; // @[AsyncQueue.scala 187:24:chipyard.TestHarness.RocketConfig.fir@190272.4]
  assign AsyncValidSync_3_clock = clock; // @[AsyncQueue.scala 181:25:chipyard.TestHarness.RocketConfig.fir@190267.4]
  assign AsyncValidSync_3_reset = reset; // @[AsyncQueue.scala 176:25:chipyard.TestHarness.RocketConfig.fir@190263.4]
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
  ridx_bin = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  valid_reg = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  ridx_gray = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  if (reset) begin
    ridx_bin = 1'h0;
  end
  if (reset) begin
    valid_reg = 1'h0;
  end
  if (reset) begin
    ridx_gray = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock or posedge reset) begin
    if (reset) begin
      ridx_bin <= 1'h0;
    end else if (_T_2) begin
      ridx_bin <= 1'h0;
    end else begin
      ridx_bin <= _T_5;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin
      valid_reg <= 1'h0;
    end else begin
      valid_reg <= source_ready & _T_8;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin
      ridx_gray <= 1'h0;
    end else if (_T_2) begin
      ridx_gray <= 1'h0;
    end else begin
      ridx_gray <= _T_5;
    end
  end
endmodule
