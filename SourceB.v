module SourceB( // @[:chipyard.TestHarness.RocketConfig.fir@84050.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@84051.4]
  input         reset, // @[:chipyard.TestHarness.RocketConfig.fir@84052.4]
  output        io_req_ready, // @[:chipyard.TestHarness.RocketConfig.fir@84053.4]
  input         io_req_valid, // @[:chipyard.TestHarness.RocketConfig.fir@84053.4]
  input  [2:0]  io_req_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@84053.4]
  input  [11:0] io_req_bits_tag, // @[:chipyard.TestHarness.RocketConfig.fir@84053.4]
  input  [9:0]  io_req_bits_set, // @[:chipyard.TestHarness.RocketConfig.fir@84053.4]
  input         io_req_bits_clients, // @[:chipyard.TestHarness.RocketConfig.fir@84053.4]
  input         io_b_ready, // @[:chipyard.TestHarness.RocketConfig.fir@84053.4]
  output        io_b_valid, // @[:chipyard.TestHarness.RocketConfig.fir@84053.4]
  output [1:0]  io_b_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@84053.4]
  output [31:0] io_b_bits_address // @[:chipyard.TestHarness.RocketConfig.fir@84053.4]
);
  reg  _T; // @[SourceB.scala 44:25:chipyard.TestHarness.RocketConfig.fir@84058.4]
  reg [31:0] _RAND_0;
  wire  _T_19; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@84087.4]
  wire  _GEN_0; // @[SourceB.scala 60:26:chipyard.TestHarness.RocketConfig.fir@84088.4]
  wire  _T_3; // @[SourceB.scala 47:23:chipyard.TestHarness.RocketConfig.fir@84065.4]
  wire  _T_6; // @[SourceB.scala 49:26:chipyard.TestHarness.RocketConfig.fir@84069.4]
  wire  _T_21; // @[SourceB.scala 66:21:chipyard.TestHarness.RocketConfig.fir@84094.4]
  wire  _T_22; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@84096.4]
  wire  _T_7; // @[SourceB.scala 50:19:chipyard.TestHarness.RocketConfig.fir@84070.4]
  wire [1:0] _T_9; // @[SourceB.scala 51:31:chipyard.TestHarness.RocketConfig.fir@84072.4]
  wire [1:0] _T_10; // @[SourceB.scala 51:16:chipyard.TestHarness.RocketConfig.fir@84073.4]
  wire [1:0] _GEN_5; // @[SourceB.scala 51:37:chipyard.TestHarness.RocketConfig.fir@84074.4]
  wire [1:0] _T_11; // @[SourceB.scala 51:37:chipyard.TestHarness.RocketConfig.fir@84074.4]
  wire [1:0] _GEN_1; // @[SourceB.scala 67:21:chipyard.TestHarness.RocketConfig.fir@84097.4]
  wire  _T_4; // @[SourceB.scala 47:39:chipyard.TestHarness.RocketConfig.fir@84066.4]
  wire  _T_5; // @[SourceB.scala 47:37:chipyard.TestHarness.RocketConfig.fir@84067.4]
  wire  _T_12; // @[SourceB.scala 57:13:chipyard.TestHarness.RocketConfig.fir@84075.4]
  wire  _T_14; // @[SourceB.scala 57:27:chipyard.TestHarness.RocketConfig.fir@84077.4]
  wire  _T_16; // @[SourceB.scala 57:12:chipyard.TestHarness.RocketConfig.fir@84079.4]
  wire  _T_17; // @[SourceB.scala 57:12:chipyard.TestHarness.RocketConfig.fir@84080.4]
  wire  _T_18; // @[SourceB.scala 59:21:chipyard.TestHarness.RocketConfig.fir@84085.4]
  reg [11:0] _T_27; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@84104.4]
  reg [31:0] _RAND_1;
  wire [11:0] _T_28; // @[SourceB.scala 70:18:chipyard.TestHarness.RocketConfig.fir@84108.4]
  reg [9:0] _T_31; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@84111.4]
  reg [31:0] _RAND_2;
  wire [9:0] _T_32; // @[SourceB.scala 71:18:chipyard.TestHarness.RocketConfig.fir@84115.4]
  reg [2:0] _T_35; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@84118.4]
  reg [31:0] _RAND_3;
  wire [2:0] _T_36; // @[SourceB.scala 72:20:chipyard.TestHarness.RocketConfig.fir@84122.4]
  wire [27:0] _T_60; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@84162.4]
  wire [7:0] _T_95; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@84197.4]
  wire [15:0] _T_103; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@84205.4]
  wire [7:0] _T_110; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@84212.4]
  wire [15:0] _T_118; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@84220.4]
  assign _T_19 = io_req_ready & io_req_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@84087.4]
  assign _GEN_0 = _T_19 & io_req_bits_clients; // @[SourceB.scala 60:26:chipyard.TestHarness.RocketConfig.fir@84088.4]
  assign _T_3 = _T | _GEN_0; // @[SourceB.scala 47:23:chipyard.TestHarness.RocketConfig.fir@84065.4]
  assign _T_6 = |_T; // @[SourceB.scala 49:26:chipyard.TestHarness.RocketConfig.fir@84069.4]
  assign _T_21 = _T_6 | io_req_valid; // @[SourceB.scala 66:21:chipyard.TestHarness.RocketConfig.fir@84094.4]
  assign _T_22 = io_b_ready & _T_21; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@84096.4]
  assign _T_7 = _T_6 ? _T : io_req_bits_clients; // @[SourceB.scala 50:19:chipyard.TestHarness.RocketConfig.fir@84070.4]
  assign _T_9 = {_T_7, 1'h0}; // @[SourceB.scala 51:31:chipyard.TestHarness.RocketConfig.fir@84072.4]
  assign _T_10 = ~_T_9; // @[SourceB.scala 51:16:chipyard.TestHarness.RocketConfig.fir@84073.4]
  assign _GEN_5 = {{1'd0}, _T_7}; // @[SourceB.scala 51:37:chipyard.TestHarness.RocketConfig.fir@84074.4]
  assign _T_11 = _T_10 & _GEN_5; // @[SourceB.scala 51:37:chipyard.TestHarness.RocketConfig.fir@84074.4]
  assign _GEN_1 = _T_22 ? _T_11 : 2'h0; // @[SourceB.scala 67:21:chipyard.TestHarness.RocketConfig.fir@84097.4]
  assign _T_4 = ~_GEN_1[0]; // @[SourceB.scala 47:39:chipyard.TestHarness.RocketConfig.fir@84066.4]
  assign _T_5 = _T_3 & _T_4; // @[SourceB.scala 47:37:chipyard.TestHarness.RocketConfig.fir@84067.4]
  assign _T_12 = ~io_req_valid; // @[SourceB.scala 57:13:chipyard.TestHarness.RocketConfig.fir@84075.4]
  assign _T_14 = _T_12 | io_req_bits_clients; // @[SourceB.scala 57:27:chipyard.TestHarness.RocketConfig.fir@84077.4]
  assign _T_16 = _T_14 | reset; // @[SourceB.scala 57:12:chipyard.TestHarness.RocketConfig.fir@84079.4]
  assign _T_17 = ~_T_16; // @[SourceB.scala 57:12:chipyard.TestHarness.RocketConfig.fir@84080.4]
  assign _T_18 = ~_T_6; // @[SourceB.scala 59:21:chipyard.TestHarness.RocketConfig.fir@84085.4]
  assign _T_28 = _T_18 ? io_req_bits_tag : _T_27; // @[SourceB.scala 70:18:chipyard.TestHarness.RocketConfig.fir@84108.4]
  assign _T_32 = _T_18 ? io_req_bits_set : _T_31; // @[SourceB.scala 71:18:chipyard.TestHarness.RocketConfig.fir@84115.4]
  assign _T_36 = _T_18 ? io_req_bits_param : _T_35; // @[SourceB.scala 72:20:chipyard.TestHarness.RocketConfig.fir@84122.4]
  assign _T_60 = {_T_28,_T_32,6'h0}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@84162.4]
  assign _T_95 = {_T_60[7],_T_60[6],_T_60[5],_T_60[4],_T_60[3],_T_60[2],_T_60[1],_T_60[0]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@84197.4]
  assign _T_103 = {_T_60[15],_T_60[14],_T_60[13],_T_60[12],_T_60[11],_T_60[10],_T_60[9],_T_60[8],_T_95}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@84205.4]
  assign _T_110 = {_T_60[23],_T_60[22],_T_60[21],_T_60[20],_T_60[19],_T_60[18],_T_60[17],_T_60[16]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@84212.4]
  assign _T_118 = {4'h0,_T_60[27],_T_60[26],_T_60[25],_T_60[24],_T_110}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@84220.4]
  assign io_req_ready = ~_T_6; // @[SourceB.scala 59:18:chipyard.TestHarness.RocketConfig.fir@84086.4]
  assign io_b_valid = _T_6 | io_req_valid; // @[SourceB.scala 64:10:chipyard.TestHarness.RocketConfig.fir@84093.4]
  assign io_b_bits_param = _T_36[1:0]; // @[SourceB.scala 64:10:chipyard.TestHarness.RocketConfig.fir@84093.4]
  assign io_b_bits_address = {_T_118,_T_103}; // @[SourceB.scala 64:10:chipyard.TestHarness.RocketConfig.fir@84093.4]
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
  _T = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_27 = _RAND_1[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_31 = _RAND_2[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_35 = _RAND_3[2:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      _T <= 1'h0;
    end else begin
      _T <= _T_5;
    end
    if (_T_19) begin
      _T_27 <= io_req_bits_tag;
    end
    if (_T_19) begin
      _T_31 <= io_req_bits_set;
    end
    if (_T_19) begin
      _T_35 <= io_req_bits_param;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_17) begin
          $fwrite(32'h80000002,"Assertion failed\n    at SourceB.scala:57 assert (!io.req.valid || io.req.bits.clients =/= UInt(0))\n"); // @[SourceB.scala 57:12:chipyard.TestHarness.RocketConfig.fir@84082.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_17) begin
          $fatal; // @[SourceB.scala 57:12:chipyard.TestHarness.RocketConfig.fir@84083.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
