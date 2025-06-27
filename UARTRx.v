module UARTRx( // @[:chipyard.TestHarness.RocketConfig.fir@258272.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@258273.4]
  input         reset, // @[:chipyard.TestHarness.RocketConfig.fir@258274.4]
  input         io_en, // @[:chipyard.TestHarness.RocketConfig.fir@258275.4]
  input         io_in, // @[:chipyard.TestHarness.RocketConfig.fir@258275.4]
  output        io_out_valid, // @[:chipyard.TestHarness.RocketConfig.fir@258275.4]
  output [7:0]  io_out_bits, // @[:chipyard.TestHarness.RocketConfig.fir@258275.4]
  input  [15:0] io_div // @[:chipyard.TestHarness.RocketConfig.fir@258275.4]
);
  reg [1:0] debounce; // @[UARTRx.scala 23:21:chipyard.TestHarness.RocketConfig.fir@258280.4]
  reg [31:0] _RAND_0;
  wire  debounce_max; // @[UARTRx.scala 24:32:chipyard.TestHarness.RocketConfig.fir@258281.4]
  wire  debounce_min; // @[UARTRx.scala 25:32:chipyard.TestHarness.RocketConfig.fir@258282.4]
  reg [12:0] prescaler; // @[UARTRx.scala 27:22:chipyard.TestHarness.RocketConfig.fir@258283.4]
  reg [31:0] _RAND_1;
  wire  pulse; // @[UARTRx.scala 29:26:chipyard.TestHarness.RocketConfig.fir@258287.4]
  reg [3:0] data_count; // @[UARTRx.scala 33:23:chipyard.TestHarness.RocketConfig.fir@258288.4]
  reg [31:0] _RAND_2;
  wire  data_last; // @[UARTRx.scala 34:31:chipyard.TestHarness.RocketConfig.fir@258289.4]
  reg [3:0] sample_count; // @[UARTRx.scala 36:25:chipyard.TestHarness.RocketConfig.fir@258292.4]
  reg [31:0] _RAND_3;
  wire  sample_mid; // @[UARTRx.scala 37:34:chipyard.TestHarness.RocketConfig.fir@258293.4]
  wire [7:0] _T_1; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@258295.4]
  wire [7:0] countdown; // @[UARTRx.scala 39:49:chipyard.TestHarness.RocketConfig.fir@258297.4]
  wire [3:0] remainder; // @[UARTRx.scala 44:25:chipyard.TestHarness.RocketConfig.fir@258298.4]
  wire  extend; // @[UARTRx.scala 45:30:chipyard.TestHarness.RocketConfig.fir@258299.4]
  reg  state; // @[UARTRx.scala 60:18:chipyard.TestHarness.RocketConfig.fir@258321.4]
  reg [31:0] _RAND_4;
  wire  _T_14; // @[Conditional.scala 37:30:chipyard.TestHarness.RocketConfig.fir@258322.4]
  wire  _T_21; // @[UARTRx.scala 67:13:chipyard.TestHarness.RocketConfig.fir@258333.6]
  wire  _GEN_8; // @[UARTRx.scala 67:21:chipyard.TestHarness.RocketConfig.fir@258334.6]
  wire  start; // @[Conditional.scala 40:58:chipyard.TestHarness.RocketConfig.fir@258323.4]
  wire  restore; // @[UARTRx.scala 46:23:chipyard.TestHarness.RocketConfig.fir@258300.4]
  wire [12:0] prescaler_in; // @[UARTRx.scala 47:25:chipyard.TestHarness.RocketConfig.fir@258302.4]
  wire  _T_4; // @[UARTRx.scala 48:51:chipyard.TestHarness.RocketConfig.fir@258303.4]
  wire  _T_5; // @[UARTRx.scala 48:42:chipyard.TestHarness.RocketConfig.fir@258304.4]
  wire [12:0] _GEN_41; // @[UARTRx.scala 48:37:chipyard.TestHarness.RocketConfig.fir@258305.4]
  wire [12:0] prescaler_next; // @[UARTRx.scala 48:37:chipyard.TestHarness.RocketConfig.fir@258306.4]
  reg [2:0] sample; // @[UARTRx.scala 50:19:chipyard.TestHarness.RocketConfig.fir@258307.4]
  reg [31:0] _RAND_5;
  wire  _T_10; // @[Misc.scala 166:48:chipyard.TestHarness.RocketConfig.fir@258311.4]
  wire  _T_11; // @[Misc.scala 166:48:chipyard.TestHarness.RocketConfig.fir@258312.4]
  wire  _T_12; // @[Misc.scala 167:22:chipyard.TestHarness.RocketConfig.fir@258313.4]
  wire  _T_13; // @[Misc.scala 166:48:chipyard.TestHarness.RocketConfig.fir@258314.4]
  wire  voter; // @[Misc.scala 167:22:chipyard.TestHarness.RocketConfig.fir@258315.4]
  reg [7:0] shifter; // @[UARTRx.scala 52:20:chipyard.TestHarness.RocketConfig.fir@258316.4]
  reg [31:0] _RAND_6;
  reg  valid; // @[UARTRx.scala 54:18:chipyard.TestHarness.RocketConfig.fir@258317.4]
  reg [31:0] _RAND_7;
  wire  _T_16; // @[UARTRx.scala 64:13:chipyard.TestHarness.RocketConfig.fir@258325.6]
  wire  _T_17; // @[UARTRx.scala 64:26:chipyard.TestHarness.RocketConfig.fir@258326.6]
  wire  _T_18; // @[UARTRx.scala 64:23:chipyard.TestHarness.RocketConfig.fir@258327.6]
  wire [1:0] _T_20; // @[UARTRx.scala 65:30:chipyard.TestHarness.RocketConfig.fir@258330.8]
  wire [1:0] _T_23; // @[UARTRx.scala 68:30:chipyard.TestHarness.RocketConfig.fir@258336.8]
  wire [3:0] _T_27; // @[UARTRx.scala 73:94:chipyard.TestHarness.RocketConfig.fir@258345.10]
  wire  _GEN_1; // @[UARTRx.scala 69:29:chipyard.TestHarness.RocketConfig.fir@258338.8]
  wire [3:0] _T_29; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@258356.10]
  wire [7:0] _T_33; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@258369.14]
  wire  _GEN_16; // @[UARTRx.scala 86:27:chipyard.TestHarness.RocketConfig.fir@258362.10]
  wire [3:0] _GEN_18; // @[UARTRx.scala 81:20:chipyard.TestHarness.RocketConfig.fir@258355.8]
  wire  _GEN_22; // @[UARTRx.scala 81:20:chipyard.TestHarness.RocketConfig.fir@258355.8]
  wire [3:0] _GEN_25; // @[Conditional.scala 39:67:chipyard.TestHarness.RocketConfig.fir@258353.6]
  wire  _GEN_29; // @[Conditional.scala 39:67:chipyard.TestHarness.RocketConfig.fir@258353.6]
  wire [3:0] _GEN_37; // @[Conditional.scala 40:58:chipyard.TestHarness.RocketConfig.fir@258323.4]
  wire  _T_34; // @[UARTRx.scala 113:9:chipyard.TestHarness.RocketConfig.fir@258375.4]
  assign debounce_max = debounce == 2'h3; // @[UARTRx.scala 24:32:chipyard.TestHarness.RocketConfig.fir@258281.4]
  assign debounce_min = debounce == 2'h0; // @[UARTRx.scala 25:32:chipyard.TestHarness.RocketConfig.fir@258282.4]
  assign pulse = prescaler == 13'h0; // @[UARTRx.scala 29:26:chipyard.TestHarness.RocketConfig.fir@258287.4]
  assign data_last = data_count == 4'h0; // @[UARTRx.scala 34:31:chipyard.TestHarness.RocketConfig.fir@258289.4]
  assign sample_mid = sample_count == 4'h7; // @[UARTRx.scala 37:34:chipyard.TestHarness.RocketConfig.fir@258293.4]
  assign _T_1 = {data_count,sample_count}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@258295.4]
  assign countdown = _T_1 - 8'h1; // @[UARTRx.scala 39:49:chipyard.TestHarness.RocketConfig.fir@258297.4]
  assign remainder = io_div[3:0]; // @[UARTRx.scala 44:25:chipyard.TestHarness.RocketConfig.fir@258298.4]
  assign extend = sample_count < remainder; // @[UARTRx.scala 45:30:chipyard.TestHarness.RocketConfig.fir@258299.4]
  assign _T_14 = ~state; // @[Conditional.scala 37:30:chipyard.TestHarness.RocketConfig.fir@258322.4]
  assign _T_21 = ~io_in; // @[UARTRx.scala 67:13:chipyard.TestHarness.RocketConfig.fir@258333.6]
  assign _GEN_8 = _T_21 & debounce_max; // @[UARTRx.scala 67:21:chipyard.TestHarness.RocketConfig.fir@258334.6]
  assign start = _T_14 & _GEN_8; // @[Conditional.scala 40:58:chipyard.TestHarness.RocketConfig.fir@258323.4]
  assign restore = start | pulse; // @[UARTRx.scala 46:23:chipyard.TestHarness.RocketConfig.fir@258300.4]
  assign prescaler_in = restore ? {{1'd0}, io_div[15:4]} : prescaler; // @[UARTRx.scala 47:25:chipyard.TestHarness.RocketConfig.fir@258302.4]
  assign _T_4 = restore & extend; // @[UARTRx.scala 48:51:chipyard.TestHarness.RocketConfig.fir@258303.4]
  assign _T_5 = _T_4 ? 1'h0 : 1'h1; // @[UARTRx.scala 48:42:chipyard.TestHarness.RocketConfig.fir@258304.4]
  assign _GEN_41 = {{12'd0}, _T_5}; // @[UARTRx.scala 48:37:chipyard.TestHarness.RocketConfig.fir@258305.4]
  assign prescaler_next = prescaler_in - _GEN_41; // @[UARTRx.scala 48:37:chipyard.TestHarness.RocketConfig.fir@258306.4]
  assign _T_10 = sample[0] & sample[1]; // @[Misc.scala 166:48:chipyard.TestHarness.RocketConfig.fir@258311.4]
  assign _T_11 = sample[0] & sample[2]; // @[Misc.scala 166:48:chipyard.TestHarness.RocketConfig.fir@258312.4]
  assign _T_12 = _T_10 | _T_11; // @[Misc.scala 167:22:chipyard.TestHarness.RocketConfig.fir@258313.4]
  assign _T_13 = sample[1] & sample[2]; // @[Misc.scala 166:48:chipyard.TestHarness.RocketConfig.fir@258314.4]
  assign voter = _T_12 | _T_13; // @[Misc.scala 167:22:chipyard.TestHarness.RocketConfig.fir@258315.4]
  assign _T_16 = ~_T_21; // @[UARTRx.scala 64:13:chipyard.TestHarness.RocketConfig.fir@258325.6]
  assign _T_17 = ~debounce_min; // @[UARTRx.scala 64:26:chipyard.TestHarness.RocketConfig.fir@258326.6]
  assign _T_18 = _T_16 & _T_17; // @[UARTRx.scala 64:23:chipyard.TestHarness.RocketConfig.fir@258327.6]
  assign _T_20 = debounce - 2'h1; // @[UARTRx.scala 65:30:chipyard.TestHarness.RocketConfig.fir@258330.8]
  assign _T_23 = debounce + 2'h1; // @[UARTRx.scala 68:30:chipyard.TestHarness.RocketConfig.fir@258336.8]
  assign _T_27 = 4'h9 - 4'h0; // @[UARTRx.scala 73:94:chipyard.TestHarness.RocketConfig.fir@258345.10]
  assign _GEN_1 = debounce_max | state; // @[UARTRx.scala 69:29:chipyard.TestHarness.RocketConfig.fir@258338.8]
  assign _T_29 = {sample,io_in}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@258356.10]
  assign _T_33 = {voter,shifter[7:1]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@258369.14]
  assign _GEN_16 = sample_mid & data_last; // @[UARTRx.scala 86:27:chipyard.TestHarness.RocketConfig.fir@258362.10]
  assign _GEN_18 = pulse ? _T_29 : {{1'd0}, sample}; // @[UARTRx.scala 81:20:chipyard.TestHarness.RocketConfig.fir@258355.8]
  assign _GEN_22 = pulse & _GEN_16; // @[UARTRx.scala 81:20:chipyard.TestHarness.RocketConfig.fir@258355.8]
  assign _GEN_25 = state ? _GEN_18 : {{1'd0}, sample}; // @[Conditional.scala 39:67:chipyard.TestHarness.RocketConfig.fir@258353.6]
  assign _GEN_29 = state & _GEN_22; // @[Conditional.scala 39:67:chipyard.TestHarness.RocketConfig.fir@258353.6]
  assign _GEN_37 = _T_14 ? {{1'd0}, sample} : _GEN_25; // @[Conditional.scala 40:58:chipyard.TestHarness.RocketConfig.fir@258323.4]
  assign _T_34 = ~io_en; // @[UARTRx.scala 113:9:chipyard.TestHarness.RocketConfig.fir@258375.4]
  assign io_out_valid = valid; // @[UARTRx.scala 56:16:chipyard.TestHarness.RocketConfig.fir@258319.4]
  assign io_out_bits = shifter; // @[UARTRx.scala 57:15:chipyard.TestHarness.RocketConfig.fir@258320.4]
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
  debounce = _RAND_0[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  prescaler = _RAND_1[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  data_count = _RAND_2[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  sample_count = _RAND_3[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  state = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  sample = _RAND_5[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  shifter = _RAND_6[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  valid = _RAND_7[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      debounce <= 2'h0;
    end else if (_T_34) begin
      debounce <= 2'h0;
    end else if (_T_14) begin
      if (_T_21) begin
        debounce <= _T_23;
      end else if (_T_18) begin
        debounce <= _T_20;
      end
    end
    if (_T_14) begin
      if (_T_21) begin
        if (debounce_max) begin
          prescaler <= prescaler_next;
        end
      end
    end else if (state) begin
      prescaler <= prescaler_next;
    end
    if (_T_14) begin
      if (_T_21) begin
        if (debounce_max) begin
          data_count <= _T_27;
        end
      end
    end else if (state) begin
      if (pulse) begin
        data_count <= countdown[7:4];
      end
    end
    if (_T_14) begin
      if (_T_21) begin
        if (debounce_max) begin
          sample_count <= 4'hf;
        end
      end
    end else if (state) begin
      if (pulse) begin
        sample_count <= countdown[3:0];
      end
    end
    if (reset) begin
      state <= 1'h0;
    end else if (_T_14) begin
      if (_T_21) begin
        state <= _GEN_1;
      end
    end else if (state) begin
      if (pulse) begin
        if (sample_mid) begin
          if (data_last) begin
            state <= 1'h0;
          end
        end
      end
    end
    sample <= _GEN_37[2:0];
    if (!(_T_14)) begin
      if (state) begin
        if (pulse) begin
          if (sample_mid) begin
            if (!(data_last)) begin
              shifter <= _T_33;
            end
          end
        end
      end
    end
    if (reset) begin
      valid <= 1'h0;
    end else if (_T_14) begin
      valid <= 1'h0;
    end else begin
      valid <= _GEN_29;
    end
  end
endmodule
