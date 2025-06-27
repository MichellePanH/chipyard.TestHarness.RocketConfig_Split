module SinkD( // @[:chipyard.TestHarness.RocketConfig.fir@87369.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@87370.4]
  input         reset, // @[:chipyard.TestHarness.RocketConfig.fir@87371.4]
  output        io_resp_valid, // @[:chipyard.TestHarness.RocketConfig.fir@87372.4]
  output        io_resp_bits_last, // @[:chipyard.TestHarness.RocketConfig.fir@87372.4]
  output [2:0]  io_resp_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@87372.4]
  output [2:0]  io_resp_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@87372.4]
  output [2:0]  io_resp_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@87372.4]
  output [2:0]  io_resp_bits_sink, // @[:chipyard.TestHarness.RocketConfig.fir@87372.4]
  output        io_resp_bits_denied, // @[:chipyard.TestHarness.RocketConfig.fir@87372.4]
  output        io_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@87372.4]
  input         io_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@87372.4]
  input  [2:0]  io_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@87372.4]
  input  [1:0]  io_d_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@87372.4]
  input  [2:0]  io_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@87372.4]
  input  [2:0]  io_d_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@87372.4]
  input  [2:0]  io_d_bits_sink, // @[:chipyard.TestHarness.RocketConfig.fir@87372.4]
  input         io_d_bits_denied, // @[:chipyard.TestHarness.RocketConfig.fir@87372.4]
  input  [63:0] io_d_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@87372.4]
  input         io_d_bits_corrupt, // @[:chipyard.TestHarness.RocketConfig.fir@87372.4]
  output [2:0]  io_source, // @[:chipyard.TestHarness.RocketConfig.fir@87372.4]
  input  [2:0]  io_way, // @[:chipyard.TestHarness.RocketConfig.fir@87372.4]
  input  [9:0]  io_set, // @[:chipyard.TestHarness.RocketConfig.fir@87372.4]
  input         io_bs_adr_ready, // @[:chipyard.TestHarness.RocketConfig.fir@87372.4]
  output        io_bs_adr_valid, // @[:chipyard.TestHarness.RocketConfig.fir@87372.4]
  output        io_bs_adr_bits_noop, // @[:chipyard.TestHarness.RocketConfig.fir@87372.4]
  output [2:0]  io_bs_adr_bits_way, // @[:chipyard.TestHarness.RocketConfig.fir@87372.4]
  output [9:0]  io_bs_adr_bits_set, // @[:chipyard.TestHarness.RocketConfig.fir@87372.4]
  output [2:0]  io_bs_adr_bits_beat, // @[:chipyard.TestHarness.RocketConfig.fir@87372.4]
  output [63:0] io_bs_dat_data, // @[:chipyard.TestHarness.RocketConfig.fir@87372.4]
  output [9:0]  io_grant_req_set, // @[:chipyard.TestHarness.RocketConfig.fir@87372.4]
  output [2:0]  io_grant_req_way, // @[:chipyard.TestHarness.RocketConfig.fir@87372.4]
  input         io_grant_safe // @[:chipyard.TestHarness.RocketConfig.fir@87372.4]
);
  wire  d_clock; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@87377.4]
  wire  d_reset; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@87377.4]
  wire  d_io_enq_ready; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@87377.4]
  wire  d_io_enq_valid; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@87377.4]
  wire [2:0] d_io_enq_bits_opcode; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@87377.4]
  wire [1:0] d_io_enq_bits_param; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@87377.4]
  wire [2:0] d_io_enq_bits_size; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@87377.4]
  wire [2:0] d_io_enq_bits_source; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@87377.4]
  wire [2:0] d_io_enq_bits_sink; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@87377.4]
  wire  d_io_enq_bits_denied; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@87377.4]
  wire [63:0] d_io_enq_bits_data; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@87377.4]
  wire  d_io_enq_bits_corrupt; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@87377.4]
  wire  d_io_deq_ready; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@87377.4]
  wire  d_io_deq_valid; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@87377.4]
  wire [2:0] d_io_deq_bits_opcode; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@87377.4]
  wire [1:0] d_io_deq_bits_param; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@87377.4]
  wire [2:0] d_io_deq_bits_size; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@87377.4]
  wire [2:0] d_io_deq_bits_source; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@87377.4]
  wire [2:0] d_io_deq_bits_sink; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@87377.4]
  wire  d_io_deq_bits_denied; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@87377.4]
  wire [63:0] d_io_deq_bits_data; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@87377.4]
  wire  d_io_deq_bits_corrupt; // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@87377.4]
  wire  _T; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@87390.4]
  wire [12:0] _T_2; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@87392.4]
  wire [5:0] _T_4; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@87394.4]
  wire [2:0] _T_7; // @[Edges.scala 222:14:chipyard.TestHarness.RocketConfig.fir@87397.4]
  reg [2:0] _T_8; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@87398.4]
  reg [31:0] _RAND_0;
  wire [2:0] _T_10; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@87400.4]
  wire  first; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@87401.4]
  wire  _T_11; // @[Edges.scala 233:25:chipyard.TestHarness.RocketConfig.fir@87402.4]
  wire  _T_12; // @[Edges.scala 233:47:chipyard.TestHarness.RocketConfig.fir@87403.4]
  wire  last; // @[Edges.scala 233:37:chipyard.TestHarness.RocketConfig.fir@87404.4]
  wire [2:0] _T_14; // @[Edges.scala 235:27:chipyard.TestHarness.RocketConfig.fir@87406.4]
  wire [2:0] beat; // @[Edges.scala 235:25:chipyard.TestHarness.RocketConfig.fir@87407.4]
  reg [2:0] _T_16; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@87413.4]
  reg [31:0] _RAND_1;
  wire  _T_18; // @[SinkD.scala 61:27:chipyard.TestHarness.RocketConfig.fir@87421.4]
  wire  _T_21; // @[SinkD.scala 62:34:chipyard.TestHarness.RocketConfig.fir@87425.4]
  wire  _T_22; // @[SinkD.scala 62:41:chipyard.TestHarness.RocketConfig.fir@87426.4]
  wire  _T_25; // @[SinkD.scala 63:41:chipyard.TestHarness.RocketConfig.fir@87430.4]
  wire  _T_32; // @[SinkD.scala 74:26:chipyard.TestHarness.RocketConfig.fir@87444.4]
  wire  _T_33; // @[SinkD.scala 74:38:chipyard.TestHarness.RocketConfig.fir@87445.4]
  wire [2:0] _GEN_3; // @[SinkD.scala 77:60:chipyard.TestHarness.RocketConfig.fir@87450.4]
  wire [2:0] _T_36; // @[SinkD.scala 77:60:chipyard.TestHarness.RocketConfig.fir@87451.4]
  reg [2:0] _T_37; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@87452.4]
  reg [31:0] _RAND_2;
  wire  _T_40; // @[SinkD.scala 81:21:chipyard.TestHarness.RocketConfig.fir@87461.4]
  wire  _T_41; // @[SinkD.scala 81:42:chipyard.TestHarness.RocketConfig.fir@87462.4]
  wire  _T_42; // @[SinkD.scala 81:39:chipyard.TestHarness.RocketConfig.fir@87463.4]
  wire  _T_43; // @[SinkD.scala 81:11:chipyard.TestHarness.RocketConfig.fir@87464.4]
  wire  _T_45; // @[SinkD.scala 81:10:chipyard.TestHarness.RocketConfig.fir@87466.4]
  wire  _T_46; // @[SinkD.scala 81:10:chipyard.TestHarness.RocketConfig.fir@87467.4]
  Queue_21 d ( // @[Decoupled.scala 287:21:chipyard.TestHarness.RocketConfig.fir@87377.4]
    .clock(d_clock),
    .reset(d_reset),
    .io_enq_ready(d_io_enq_ready),
    .io_enq_valid(d_io_enq_valid),
    .io_enq_bits_opcode(d_io_enq_bits_opcode),
    .io_enq_bits_param(d_io_enq_bits_param),
    .io_enq_bits_size(d_io_enq_bits_size),
    .io_enq_bits_source(d_io_enq_bits_source),
    .io_enq_bits_sink(d_io_enq_bits_sink),
    .io_enq_bits_denied(d_io_enq_bits_denied),
    .io_enq_bits_data(d_io_enq_bits_data),
    .io_enq_bits_corrupt(d_io_enq_bits_corrupt),
    .io_deq_ready(d_io_deq_ready),
    .io_deq_valid(d_io_deq_valid),
    .io_deq_bits_opcode(d_io_deq_bits_opcode),
    .io_deq_bits_param(d_io_deq_bits_param),
    .io_deq_bits_size(d_io_deq_bits_size),
    .io_deq_bits_source(d_io_deq_bits_source),
    .io_deq_bits_sink(d_io_deq_bits_sink),
    .io_deq_bits_denied(d_io_deq_bits_denied),
    .io_deq_bits_data(d_io_deq_bits_data),
    .io_deq_bits_corrupt(d_io_deq_bits_corrupt)
  );
  assign _T = d_io_deq_ready & d_io_deq_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@87390.4]
  assign _T_2 = 13'h3f << d_io_deq_bits_size; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@87392.4]
  assign _T_4 = ~_T_2[5:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@87394.4]
  assign _T_7 = d_io_deq_bits_opcode[0] ? _T_4[5:3] : 3'h0; // @[Edges.scala 222:14:chipyard.TestHarness.RocketConfig.fir@87397.4]
  assign _T_10 = _T_8 - 3'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@87400.4]
  assign first = _T_8 == 3'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@87401.4]
  assign _T_11 = _T_8 == 3'h1; // @[Edges.scala 233:25:chipyard.TestHarness.RocketConfig.fir@87402.4]
  assign _T_12 = _T_7 == 3'h0; // @[Edges.scala 233:47:chipyard.TestHarness.RocketConfig.fir@87403.4]
  assign last = _T_11 | _T_12; // @[Edges.scala 233:37:chipyard.TestHarness.RocketConfig.fir@87404.4]
  assign _T_14 = ~_T_10; // @[Edges.scala 235:27:chipyard.TestHarness.RocketConfig.fir@87406.4]
  assign beat = _T_7 & _T_14; // @[Edges.scala 235:25:chipyard.TestHarness.RocketConfig.fir@87407.4]
  assign _T_18 = first | last; // @[SinkD.scala 61:27:chipyard.TestHarness.RocketConfig.fir@87421.4]
  assign _T_21 = ~first; // @[SinkD.scala 62:34:chipyard.TestHarness.RocketConfig.fir@87425.4]
  assign _T_22 = _T_21 | io_grant_safe; // @[SinkD.scala 62:41:chipyard.TestHarness.RocketConfig.fir@87426.4]
  assign _T_25 = d_io_deq_valid & io_grant_safe; // @[SinkD.scala 63:41:chipyard.TestHarness.RocketConfig.fir@87430.4]
  assign _T_32 = ~d_io_deq_valid; // @[SinkD.scala 74:26:chipyard.TestHarness.RocketConfig.fir@87444.4]
  assign _T_33 = ~d_io_deq_bits_opcode[0]; // @[SinkD.scala 74:38:chipyard.TestHarness.RocketConfig.fir@87445.4]
  assign _GEN_3 = {{2'd0}, io_bs_adr_ready}; // @[SinkD.scala 77:60:chipyard.TestHarness.RocketConfig.fir@87450.4]
  assign _T_36 = beat + _GEN_3; // @[SinkD.scala 77:60:chipyard.TestHarness.RocketConfig.fir@87451.4]
  assign _T_40 = d_io_deq_valid & d_io_deq_bits_corrupt; // @[SinkD.scala 81:21:chipyard.TestHarness.RocketConfig.fir@87461.4]
  assign _T_41 = ~d_io_deq_bits_denied; // @[SinkD.scala 81:42:chipyard.TestHarness.RocketConfig.fir@87462.4]
  assign _T_42 = _T_40 & _T_41; // @[SinkD.scala 81:39:chipyard.TestHarness.RocketConfig.fir@87463.4]
  assign _T_43 = ~_T_42; // @[SinkD.scala 81:11:chipyard.TestHarness.RocketConfig.fir@87464.4]
  assign _T_45 = _T_43 | reset; // @[SinkD.scala 81:10:chipyard.TestHarness.RocketConfig.fir@87466.4]
  assign _T_46 = ~_T_45; // @[SinkD.scala 81:10:chipyard.TestHarness.RocketConfig.fir@87467.4]
  assign io_resp_valid = _T_18 & _T; // @[SinkD.scala 61:17:chipyard.TestHarness.RocketConfig.fir@87424.4]
  assign io_resp_bits_last = _T_11 | _T_12; // @[SinkD.scala 67:23:chipyard.TestHarness.RocketConfig.fir@87438.4]
  assign io_resp_bits_opcode = d_io_deq_bits_opcode; // @[SinkD.scala 68:23:chipyard.TestHarness.RocketConfig.fir@87439.4]
  assign io_resp_bits_param = {{1'd0}, d_io_deq_bits_param}; // @[SinkD.scala 69:23:chipyard.TestHarness.RocketConfig.fir@87440.4]
  assign io_resp_bits_source = d_io_deq_bits_source; // @[SinkD.scala 70:23:chipyard.TestHarness.RocketConfig.fir@87441.4]
  assign io_resp_bits_sink = d_io_deq_bits_sink; // @[SinkD.scala 71:23:chipyard.TestHarness.RocketConfig.fir@87442.4]
  assign io_resp_bits_denied = d_io_deq_bits_denied; // @[SinkD.scala 72:23:chipyard.TestHarness.RocketConfig.fir@87443.4]
  assign io_d_ready = d_io_enq_ready; // @[Decoupled.scala 290:17:chipyard.TestHarness.RocketConfig.fir@87389.4]
  assign io_source = d_io_deq_valid ? d_io_deq_bits_source : _T_16; // @[SinkD.scala 56:13:chipyard.TestHarness.RocketConfig.fir@87418.4]
  assign io_bs_adr_valid = _T_21 | _T_25; // @[SinkD.scala 63:19:chipyard.TestHarness.RocketConfig.fir@87432.4]
  assign io_bs_adr_bits_noop = _T_32 | _T_33; // @[SinkD.scala 74:23:chipyard.TestHarness.RocketConfig.fir@87447.4]
  assign io_bs_adr_bits_way = io_way; // @[SinkD.scala 75:23:chipyard.TestHarness.RocketConfig.fir@87448.4]
  assign io_bs_adr_bits_set = io_set; // @[SinkD.scala 76:23:chipyard.TestHarness.RocketConfig.fir@87449.4]
  assign io_bs_adr_bits_beat = d_io_deq_valid ? beat : _T_37; // @[SinkD.scala 77:23:chipyard.TestHarness.RocketConfig.fir@87457.4]
  assign io_bs_dat_data = d_io_deq_bits_data; // @[SinkD.scala 79:23:chipyard.TestHarness.RocketConfig.fir@87460.4]
  assign io_grant_req_set = io_set; // @[SinkD.scala 58:20:chipyard.TestHarness.RocketConfig.fir@87420.4]
  assign io_grant_req_way = io_way; // @[SinkD.scala 57:20:chipyard.TestHarness.RocketConfig.fir@87419.4]
  assign d_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@87378.4]
  assign d_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@87379.4]
  assign d_io_enq_valid = io_d_valid; // @[Decoupled.scala 288:22:chipyard.TestHarness.RocketConfig.fir@87380.4]
  assign d_io_enq_bits_opcode = io_d_bits_opcode; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@87388.4]
  assign d_io_enq_bits_param = io_d_bits_param; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@87387.4]
  assign d_io_enq_bits_size = io_d_bits_size; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@87386.4]
  assign d_io_enq_bits_source = io_d_bits_source; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@87385.4]
  assign d_io_enq_bits_sink = io_d_bits_sink; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@87384.4]
  assign d_io_enq_bits_denied = io_d_bits_denied; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@87383.4]
  assign d_io_enq_bits_data = io_d_bits_data; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@87382.4]
  assign d_io_enq_bits_corrupt = io_d_bits_corrupt; // @[Decoupled.scala 289:21:chipyard.TestHarness.RocketConfig.fir@87381.4]
  assign d_io_deq_ready = io_bs_adr_ready & _T_22; // @[SinkD.scala 62:11:chipyard.TestHarness.RocketConfig.fir@87428.4]
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
  _T_8 = _RAND_0[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_16 = _RAND_1[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_37 = _RAND_2[2:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      _T_8 <= 3'h0;
    end else if (_T) begin
      if (first) begin
        if (d_io_deq_bits_opcode[0]) begin
          _T_8 <= _T_4[5:3];
        end else begin
          _T_8 <= 3'h0;
        end
      end else begin
        _T_8 <= _T_10;
      end
    end
    if (d_io_deq_valid) begin
      _T_16 <= d_io_deq_bits_source;
    end
    if (d_io_deq_valid) begin
      _T_37 <= _T_36;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_46) begin
          $fwrite(32'h80000002,"Assertion failed: Data poisoning unsupported\n    at SinkD.scala:81 assert (!(d.valid && d.bits.corrupt && !d.bits.denied), \"Data poisoning unsupported\")\n"); // @[SinkD.scala 81:10:chipyard.TestHarness.RocketConfig.fir@87469.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_46) begin
          $fatal; // @[SinkD.scala 81:10:chipyard.TestHarness.RocketConfig.fir@87470.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
