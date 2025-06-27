module FPToFP( // @[:chipyard.TestHarness.RocketConfig.fir@236552.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@236553.4]
  input         reset, // @[:chipyard.TestHarness.RocketConfig.fir@236554.4]
  input         io_in_valid, // @[:chipyard.TestHarness.RocketConfig.fir@236555.4]
  input         io_in_bits_ren2, // @[:chipyard.TestHarness.RocketConfig.fir@236555.4]
  input         io_in_bits_singleOut, // @[:chipyard.TestHarness.RocketConfig.fir@236555.4]
  input         io_in_bits_wflags, // @[:chipyard.TestHarness.RocketConfig.fir@236555.4]
  input  [2:0]  io_in_bits_rm, // @[:chipyard.TestHarness.RocketConfig.fir@236555.4]
  input  [64:0] io_in_bits_in1, // @[:chipyard.TestHarness.RocketConfig.fir@236555.4]
  input  [64:0] io_in_bits_in2, // @[:chipyard.TestHarness.RocketConfig.fir@236555.4]
  output [64:0] io_out_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@236555.4]
  output [4:0]  io_out_bits_exc, // @[:chipyard.TestHarness.RocketConfig.fir@236555.4]
  input         io_lt // @[:chipyard.TestHarness.RocketConfig.fir@236555.4]
);
  wire [64:0] RecFNToRecFN_io_in; // @[FPU.scala 563:30:chipyard.TestHarness.RocketConfig.fir@236681.8]
  wire [2:0] RecFNToRecFN_io_roundingMode; // @[FPU.scala 563:30:chipyard.TestHarness.RocketConfig.fir@236681.8]
  wire [32:0] RecFNToRecFN_io_out; // @[FPU.scala 563:30:chipyard.TestHarness.RocketConfig.fir@236681.8]
  wire [4:0] RecFNToRecFN_io_exceptionFlags; // @[FPU.scala 563:30:chipyard.TestHarness.RocketConfig.fir@236681.8]
  reg  inPipe_valid; // @[Valid.scala 117:22:chipyard.TestHarness.RocketConfig.fir@236560.4]
  reg [31:0] _RAND_0;
  reg  inPipe_bits_ren2; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@236562.4]
  reg [31:0] _RAND_1;
  reg  inPipe_bits_singleOut; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@236562.4]
  reg [31:0] _RAND_2;
  reg  inPipe_bits_wflags; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@236562.4]
  reg [31:0] _RAND_3;
  reg [2:0] inPipe_bits_rm; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@236562.4]
  reg [31:0] _RAND_4;
  reg [64:0] inPipe_bits_in1; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@236562.4]
  reg [95:0] _RAND_5;
  reg [64:0] inPipe_bits_in2; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@236562.4]
  reg [95:0] _RAND_6;
  wire [64:0] _T_1; // @[FPU.scala 526:48:chipyard.TestHarness.RocketConfig.fir@236592.4]
  wire [64:0] _T_3; // @[FPU.scala 526:82:chipyard.TestHarness.RocketConfig.fir@236594.4]
  wire [64:0] _T_4; // @[FPU.scala 526:66:chipyard.TestHarness.RocketConfig.fir@236595.4]
  wire [64:0] signNum; // @[FPU.scala 526:20:chipyard.TestHarness.RocketConfig.fir@236596.4]
  wire [64:0] fsgnj; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@236599.4]
  wire  _T_8; // @[FPU.scala 200:56:chipyard.TestHarness.RocketConfig.fir@236606.6]
  wire  _T_10; // @[FPU.scala 200:56:chipyard.TestHarness.RocketConfig.fir@236608.6]
  wire  _T_14; // @[FPU.scala 201:37:chipyard.TestHarness.RocketConfig.fir@236612.6]
  wire  _T_15; // @[FPU.scala 201:34:chipyard.TestHarness.RocketConfig.fir@236613.6]
  wire  _T_19; // @[FPU.scala 201:37:chipyard.TestHarness.RocketConfig.fir@236617.6]
  wire  _T_20; // @[FPU.scala 201:34:chipyard.TestHarness.RocketConfig.fir@236618.6]
  wire  _T_21; // @[FPU.scala 536:49:chipyard.TestHarness.RocketConfig.fir@236619.6]
  wire  _T_22; // @[FPU.scala 537:27:chipyard.TestHarness.RocketConfig.fir@236620.6]
  wire  _T_24; // @[FPU.scala 538:41:chipyard.TestHarness.RocketConfig.fir@236622.6]
  wire  _T_25; // @[FPU.scala 538:54:chipyard.TestHarness.RocketConfig.fir@236623.6]
  wire  _T_26; // @[FPU.scala 538:51:chipyard.TestHarness.RocketConfig.fir@236624.6]
  wire  _T_27; // @[FPU.scala 538:24:chipyard.TestHarness.RocketConfig.fir@236625.6]
  wire [4:0] _T_28; // @[FPU.scala 539:31:chipyard.TestHarness.RocketConfig.fir@236626.6]
  wire [64:0] _T_29; // @[FPU.scala 540:53:chipyard.TestHarness.RocketConfig.fir@236628.6]
  wire [64:0] _T_30; // @[FPU.scala 540:25:chipyard.TestHarness.RocketConfig.fir@236629.6]
  wire [64:0] _GEN_23; // @[FPU.scala 533:25:chipyard.TestHarness.RocketConfig.fir@236604.4]
  wire  outTag; // @[FPU.scala 544:16:chipyard.TestHarness.RocketConfig.fir@236633.4]
  wire  _T_31; // @[FPU.scala 547:18:chipyard.TestHarness.RocketConfig.fir@236637.4]
  wire  _T_53; // @[FPU.scala 552:27:chipyard.TestHarness.RocketConfig.fir@236662.4]
  wire  _T_54; // @[FPU.scala 552:24:chipyard.TestHarness.RocketConfig.fir@236663.4]
  wire [64:0] _T_57; // @[FPU.scala 555:24:chipyard.TestHarness.RocketConfig.fir@236667.6]
  wire [64:0] fsgnjMux_data; // @[FPU.scala 552:42:chipyard.TestHarness.RocketConfig.fir@236664.4]
  wire [75:0] _T_36; // @[FPU.scala 228:28:chipyard.TestHarness.RocketConfig.fir@236643.6]
  wire [11:0] _T_40; // @[FPU.scala 231:31:chipyard.TestHarness.RocketConfig.fir@236647.6]
  wire [11:0] _T_42; // @[FPU.scala 231:48:chipyard.TestHarness.RocketConfig.fir@236649.6]
  wire  _T_43; // @[FPU.scala 232:19:chipyard.TestHarness.RocketConfig.fir@236650.6]
  wire  _T_44; // @[FPU.scala 232:36:chipyard.TestHarness.RocketConfig.fir@236651.6]
  wire  _T_45; // @[FPU.scala 232:25:chipyard.TestHarness.RocketConfig.fir@236652.6]
  wire [8:0] _T_47; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@236654.6]
  wire [8:0] _T_49; // @[FPU.scala 232:10:chipyard.TestHarness.RocketConfig.fir@236656.6]
  wire [64:0] _T_52; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@236659.6]
  wire [4:0] _T_63; // @[FPU.scala 557:51:chipyard.TestHarness.RocketConfig.fir@236674.6]
  wire [64:0] _T_69; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@236687.8]
  reg [64:0] _T_71_data; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@236694.4]
  reg [95:0] _RAND_7;
  reg [4:0] _T_71_exc; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@236694.4]
  reg [31:0] _RAND_8;
  RecFNToRecFN RecFNToRecFN ( // @[FPU.scala 563:30:chipyard.TestHarness.RocketConfig.fir@236681.8]
    .io_in(RecFNToRecFN_io_in),
    .io_roundingMode(RecFNToRecFN_io_roundingMode),
    .io_out(RecFNToRecFN_io_out),
    .io_exceptionFlags(RecFNToRecFN_io_exceptionFlags)
  );
  assign _T_1 = inPipe_bits_in1 ^ inPipe_bits_in2; // @[FPU.scala 526:48:chipyard.TestHarness.RocketConfig.fir@236592.4]
  assign _T_3 = ~inPipe_bits_in2; // @[FPU.scala 526:82:chipyard.TestHarness.RocketConfig.fir@236594.4]
  assign _T_4 = inPipe_bits_rm[0] ? _T_3 : inPipe_bits_in2; // @[FPU.scala 526:66:chipyard.TestHarness.RocketConfig.fir@236595.4]
  assign signNum = inPipe_bits_rm[1] ? _T_1 : _T_4; // @[FPU.scala 526:20:chipyard.TestHarness.RocketConfig.fir@236596.4]
  assign fsgnj = {signNum[64],inPipe_bits_in1[63:0]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@236599.4]
  assign _T_8 = &inPipe_bits_in1[63:61]; // @[FPU.scala 200:56:chipyard.TestHarness.RocketConfig.fir@236606.6]
  assign _T_10 = &inPipe_bits_in2[63:61]; // @[FPU.scala 200:56:chipyard.TestHarness.RocketConfig.fir@236608.6]
  assign _T_14 = ~inPipe_bits_in1[51]; // @[FPU.scala 201:37:chipyard.TestHarness.RocketConfig.fir@236612.6]
  assign _T_15 = _T_8 & _T_14; // @[FPU.scala 201:34:chipyard.TestHarness.RocketConfig.fir@236613.6]
  assign _T_19 = ~inPipe_bits_in2[51]; // @[FPU.scala 201:37:chipyard.TestHarness.RocketConfig.fir@236617.6]
  assign _T_20 = _T_10 & _T_19; // @[FPU.scala 201:34:chipyard.TestHarness.RocketConfig.fir@236618.6]
  assign _T_21 = _T_15 | _T_20; // @[FPU.scala 536:49:chipyard.TestHarness.RocketConfig.fir@236619.6]
  assign _T_22 = _T_8 & _T_10; // @[FPU.scala 537:27:chipyard.TestHarness.RocketConfig.fir@236620.6]
  assign _T_24 = inPipe_bits_rm[0] != io_lt; // @[FPU.scala 538:41:chipyard.TestHarness.RocketConfig.fir@236622.6]
  assign _T_25 = ~_T_8; // @[FPU.scala 538:54:chipyard.TestHarness.RocketConfig.fir@236623.6]
  assign _T_26 = _T_24 & _T_25; // @[FPU.scala 538:51:chipyard.TestHarness.RocketConfig.fir@236624.6]
  assign _T_27 = _T_10 | _T_26; // @[FPU.scala 538:24:chipyard.TestHarness.RocketConfig.fir@236625.6]
  assign _T_28 = {_T_21, 4'h0}; // @[FPU.scala 539:31:chipyard.TestHarness.RocketConfig.fir@236626.6]
  assign _T_29 = _T_27 ? inPipe_bits_in1 : inPipe_bits_in2; // @[FPU.scala 540:53:chipyard.TestHarness.RocketConfig.fir@236628.6]
  assign _T_30 = _T_22 ? 65'he008000000000000 : _T_29; // @[FPU.scala 540:25:chipyard.TestHarness.RocketConfig.fir@236629.6]
  assign _GEN_23 = inPipe_bits_wflags ? _T_30 : fsgnj; // @[FPU.scala 533:25:chipyard.TestHarness.RocketConfig.fir@236604.4]
  assign outTag = ~inPipe_bits_singleOut; // @[FPU.scala 544:16:chipyard.TestHarness.RocketConfig.fir@236633.4]
  assign _T_31 = ~outTag; // @[FPU.scala 547:18:chipyard.TestHarness.RocketConfig.fir@236637.4]
  assign _T_53 = ~inPipe_bits_ren2; // @[FPU.scala 552:27:chipyard.TestHarness.RocketConfig.fir@236662.4]
  assign _T_54 = inPipe_bits_wflags & _T_53; // @[FPU.scala 552:24:chipyard.TestHarness.RocketConfig.fir@236663.4]
  assign _T_57 = _T_8 ? 65'he008000000000000 : inPipe_bits_in1; // @[FPU.scala 555:24:chipyard.TestHarness.RocketConfig.fir@236667.6]
  assign fsgnjMux_data = _T_54 ? _T_57 : _GEN_23; // @[FPU.scala 552:42:chipyard.TestHarness.RocketConfig.fir@236664.4]
  assign _T_36 = {fsgnjMux_data[51:0], 24'h0}; // @[FPU.scala 228:28:chipyard.TestHarness.RocketConfig.fir@236643.6]
  assign _T_40 = fsgnjMux_data[63:52] + 12'h100; // @[FPU.scala 231:31:chipyard.TestHarness.RocketConfig.fir@236647.6]
  assign _T_42 = _T_40 - 12'h800; // @[FPU.scala 231:48:chipyard.TestHarness.RocketConfig.fir@236649.6]
  assign _T_43 = fsgnjMux_data[63:61] == 3'h0; // @[FPU.scala 232:19:chipyard.TestHarness.RocketConfig.fir@236650.6]
  assign _T_44 = fsgnjMux_data[63:61] >= 3'h6; // @[FPU.scala 232:36:chipyard.TestHarness.RocketConfig.fir@236651.6]
  assign _T_45 = _T_43 | _T_44; // @[FPU.scala 232:25:chipyard.TestHarness.RocketConfig.fir@236652.6]
  assign _T_47 = {fsgnjMux_data[63:61],_T_42[5:0]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@236654.6]
  assign _T_49 = _T_45 ? _T_47 : _T_42[8:0]; // @[FPU.scala 232:10:chipyard.TestHarness.RocketConfig.fir@236656.6]
  assign _T_52 = {fsgnjMux_data[64:33],fsgnjMux_data[64],_T_49,_T_36[75:53]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@236659.6]
  assign _T_63 = {_T_15, 4'h0}; // @[FPU.scala 557:51:chipyard.TestHarness.RocketConfig.fir@236674.6]
  assign _T_69 = {fsgnjMux_data[64:33],RecFNToRecFN_io_out}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@236687.8]
  assign io_out_bits_data = _T_71_data; // @[FPU.scala 574:10:chipyard.TestHarness.RocketConfig.fir@236703.4]
  assign io_out_bits_exc = _T_71_exc; // @[FPU.scala 574:10:chipyard.TestHarness.RocketConfig.fir@236703.4]
  assign RecFNToRecFN_io_in = inPipe_bits_in1; // @[FPU.scala 564:24:chipyard.TestHarness.RocketConfig.fir@236683.8]
  assign RecFNToRecFN_io_roundingMode = inPipe_bits_rm; // @[FPU.scala 565:34:chipyard.TestHarness.RocketConfig.fir@236684.8]
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
  inPipe_valid = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  inPipe_bits_ren2 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  inPipe_bits_singleOut = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  inPipe_bits_wflags = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  inPipe_bits_rm = _RAND_4[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {3{`RANDOM}};
  inPipe_bits_in1 = _RAND_5[64:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {3{`RANDOM}};
  inPipe_bits_in2 = _RAND_6[64:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {3{`RANDOM}};
  _T_71_data = _RAND_7[64:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  _T_71_exc = _RAND_8[4:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      inPipe_valid <= 1'h0;
    end else begin
      inPipe_valid <= io_in_valid;
    end
    if (io_in_valid) begin
      inPipe_bits_ren2 <= io_in_bits_ren2;
    end
    if (io_in_valid) begin
      inPipe_bits_singleOut <= io_in_bits_singleOut;
    end
    if (io_in_valid) begin
      inPipe_bits_wflags <= io_in_bits_wflags;
    end
    if (io_in_valid) begin
      inPipe_bits_rm <= io_in_bits_rm;
    end
    if (io_in_valid) begin
      inPipe_bits_in1 <= io_in_bits_in1;
    end
    if (io_in_valid) begin
      inPipe_bits_in2 <= io_in_bits_in2;
    end
    if (inPipe_valid) begin
      if (_T_54) begin
        if (_T_31) begin
          _T_71_data <= _T_69;
        end else if (_T_31) begin
          _T_71_data <= _T_52;
        end else if (_T_54) begin
          if (_T_8) begin
            _T_71_data <= 65'he008000000000000;
          end else begin
            _T_71_data <= inPipe_bits_in1;
          end
        end else if (inPipe_bits_wflags) begin
          if (_T_22) begin
            _T_71_data <= 65'he008000000000000;
          end else if (_T_27) begin
            _T_71_data <= inPipe_bits_in1;
          end else begin
            _T_71_data <= inPipe_bits_in2;
          end
        end else begin
          _T_71_data <= fsgnj;
        end
      end else if (_T_31) begin
        _T_71_data <= _T_52;
      end else if (_T_54) begin
        if (_T_8) begin
          _T_71_data <= 65'he008000000000000;
        end else begin
          _T_71_data <= inPipe_bits_in1;
        end
      end else if (inPipe_bits_wflags) begin
        if (_T_22) begin
          _T_71_data <= 65'he008000000000000;
        end else if (_T_27) begin
          _T_71_data <= inPipe_bits_in1;
        end else begin
          _T_71_data <= inPipe_bits_in2;
        end
      end else begin
        _T_71_data <= fsgnj;
      end
    end
    if (inPipe_valid) begin
      if (_T_54) begin
        if (_T_31) begin
          _T_71_exc <= RecFNToRecFN_io_exceptionFlags;
        end else if (_T_54) begin
          _T_71_exc <= _T_63;
        end else if (inPipe_bits_wflags) begin
          _T_71_exc <= _T_28;
        end else begin
          _T_71_exc <= 5'h0;
        end
      end else if (_T_54) begin
        _T_71_exc <= _T_63;
      end else if (inPipe_bits_wflags) begin
        _T_71_exc <= _T_28;
      end else begin
        _T_71_exc <= 5'h0;
      end
    end
  end
endmodule
