module HellaCacheArbiter( // @[:chipyard.TestHarness.RocketConfig.fir@240746.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@240747.4]
  output        io_requestor_0_req_ready, // @[:chipyard.TestHarness.RocketConfig.fir@240749.4]
  input         io_requestor_0_req_valid, // @[:chipyard.TestHarness.RocketConfig.fir@240749.4]
  input  [39:0] io_requestor_0_req_bits_addr, // @[:chipyard.TestHarness.RocketConfig.fir@240749.4]
  input         io_requestor_0_s1_kill, // @[:chipyard.TestHarness.RocketConfig.fir@240749.4]
  output        io_requestor_0_s2_nack, // @[:chipyard.TestHarness.RocketConfig.fir@240749.4]
  output        io_requestor_0_resp_valid, // @[:chipyard.TestHarness.RocketConfig.fir@240749.4]
  output [63:0] io_requestor_0_resp_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@240749.4]
  output        io_requestor_0_s2_xcpt_ae_ld, // @[:chipyard.TestHarness.RocketConfig.fir@240749.4]
  output        io_requestor_1_req_ready, // @[:chipyard.TestHarness.RocketConfig.fir@240749.4]
  input         io_requestor_1_req_valid, // @[:chipyard.TestHarness.RocketConfig.fir@240749.4]
  input  [39:0] io_requestor_1_req_bits_addr, // @[:chipyard.TestHarness.RocketConfig.fir@240749.4]
  input  [6:0]  io_requestor_1_req_bits_tag, // @[:chipyard.TestHarness.RocketConfig.fir@240749.4]
  input  [4:0]  io_requestor_1_req_bits_cmd, // @[:chipyard.TestHarness.RocketConfig.fir@240749.4]
  input  [1:0]  io_requestor_1_req_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@240749.4]
  input         io_requestor_1_req_bits_signed, // @[:chipyard.TestHarness.RocketConfig.fir@240749.4]
  input  [1:0]  io_requestor_1_req_bits_dprv, // @[:chipyard.TestHarness.RocketConfig.fir@240749.4]
  input         io_requestor_1_s1_kill, // @[:chipyard.TestHarness.RocketConfig.fir@240749.4]
  input  [63:0] io_requestor_1_s1_data_data, // @[:chipyard.TestHarness.RocketConfig.fir@240749.4]
  output        io_requestor_1_s2_nack, // @[:chipyard.TestHarness.RocketConfig.fir@240749.4]
  output        io_requestor_1_resp_valid, // @[:chipyard.TestHarness.RocketConfig.fir@240749.4]
  output [6:0]  io_requestor_1_resp_bits_tag, // @[:chipyard.TestHarness.RocketConfig.fir@240749.4]
  output [1:0]  io_requestor_1_resp_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@240749.4]
  output [63:0] io_requestor_1_resp_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@240749.4]
  output        io_requestor_1_resp_bits_replay, // @[:chipyard.TestHarness.RocketConfig.fir@240749.4]
  output        io_requestor_1_resp_bits_has_data, // @[:chipyard.TestHarness.RocketConfig.fir@240749.4]
  output [63:0] io_requestor_1_resp_bits_data_word_bypass, // @[:chipyard.TestHarness.RocketConfig.fir@240749.4]
  output        io_requestor_1_replay_next, // @[:chipyard.TestHarness.RocketConfig.fir@240749.4]
  output        io_requestor_1_s2_xcpt_ma_ld, // @[:chipyard.TestHarness.RocketConfig.fir@240749.4]
  output        io_requestor_1_s2_xcpt_ma_st, // @[:chipyard.TestHarness.RocketConfig.fir@240749.4]
  output        io_requestor_1_s2_xcpt_pf_ld, // @[:chipyard.TestHarness.RocketConfig.fir@240749.4]
  output        io_requestor_1_s2_xcpt_pf_st, // @[:chipyard.TestHarness.RocketConfig.fir@240749.4]
  output        io_requestor_1_s2_xcpt_ae_ld, // @[:chipyard.TestHarness.RocketConfig.fir@240749.4]
  output        io_requestor_1_s2_xcpt_ae_st, // @[:chipyard.TestHarness.RocketConfig.fir@240749.4]
  output        io_requestor_1_ordered, // @[:chipyard.TestHarness.RocketConfig.fir@240749.4]
  output        io_requestor_1_perf_release, // @[:chipyard.TestHarness.RocketConfig.fir@240749.4]
  output        io_requestor_1_perf_grant, // @[:chipyard.TestHarness.RocketConfig.fir@240749.4]
  input         io_mem_req_ready, // @[:chipyard.TestHarness.RocketConfig.fir@240749.4]
  output        io_mem_req_valid, // @[:chipyard.TestHarness.RocketConfig.fir@240749.4]
  output [39:0] io_mem_req_bits_addr, // @[:chipyard.TestHarness.RocketConfig.fir@240749.4]
  output [6:0]  io_mem_req_bits_tag, // @[:chipyard.TestHarness.RocketConfig.fir@240749.4]
  output [4:0]  io_mem_req_bits_cmd, // @[:chipyard.TestHarness.RocketConfig.fir@240749.4]
  output [1:0]  io_mem_req_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@240749.4]
  output        io_mem_req_bits_signed, // @[:chipyard.TestHarness.RocketConfig.fir@240749.4]
  output [1:0]  io_mem_req_bits_dprv, // @[:chipyard.TestHarness.RocketConfig.fir@240749.4]
  output        io_mem_req_bits_phys, // @[:chipyard.TestHarness.RocketConfig.fir@240749.4]
  output        io_mem_s1_kill, // @[:chipyard.TestHarness.RocketConfig.fir@240749.4]
  output [63:0] io_mem_s1_data_data, // @[:chipyard.TestHarness.RocketConfig.fir@240749.4]
  input         io_mem_s2_nack, // @[:chipyard.TestHarness.RocketConfig.fir@240749.4]
  input         io_mem_resp_valid, // @[:chipyard.TestHarness.RocketConfig.fir@240749.4]
  input  [6:0]  io_mem_resp_bits_tag, // @[:chipyard.TestHarness.RocketConfig.fir@240749.4]
  input  [1:0]  io_mem_resp_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@240749.4]
  input  [63:0] io_mem_resp_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@240749.4]
  input         io_mem_resp_bits_replay, // @[:chipyard.TestHarness.RocketConfig.fir@240749.4]
  input         io_mem_resp_bits_has_data, // @[:chipyard.TestHarness.RocketConfig.fir@240749.4]
  input  [63:0] io_mem_resp_bits_data_word_bypass, // @[:chipyard.TestHarness.RocketConfig.fir@240749.4]
  input         io_mem_replay_next, // @[:chipyard.TestHarness.RocketConfig.fir@240749.4]
  input         io_mem_s2_xcpt_ma_ld, // @[:chipyard.TestHarness.RocketConfig.fir@240749.4]
  input         io_mem_s2_xcpt_ma_st, // @[:chipyard.TestHarness.RocketConfig.fir@240749.4]
  input         io_mem_s2_xcpt_pf_ld, // @[:chipyard.TestHarness.RocketConfig.fir@240749.4]
  input         io_mem_s2_xcpt_pf_st, // @[:chipyard.TestHarness.RocketConfig.fir@240749.4]
  input         io_mem_s2_xcpt_ae_ld, // @[:chipyard.TestHarness.RocketConfig.fir@240749.4]
  input         io_mem_s2_xcpt_ae_st, // @[:chipyard.TestHarness.RocketConfig.fir@240749.4]
  input         io_mem_ordered, // @[:chipyard.TestHarness.RocketConfig.fir@240749.4]
  input         io_mem_perf_release, // @[:chipyard.TestHarness.RocketConfig.fir@240749.4]
  input         io_mem_perf_grant // @[:chipyard.TestHarness.RocketConfig.fir@240749.4]
);
  reg  _T; // @[HellaCacheArbiter.scala 19:20:chipyard.TestHarness.RocketConfig.fir@240754.4]
  reg [31:0] _RAND_0;
  reg  _T_1; // @[HellaCacheArbiter.scala 20:20:chipyard.TestHarness.RocketConfig.fir@240755.4]
  reg [31:0] _RAND_1;
  wire  _T_4; // @[HellaCacheArbiter.scala 27:67:chipyard.TestHarness.RocketConfig.fir@240762.4]
  wire [7:0] _T_6; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@240766.4]
  wire [7:0] _GEN_1; // @[HellaCacheArbiter.scala 49:26:chipyard.TestHarness.RocketConfig.fir@240772.4]
  wire  _T_8; // @[HellaCacheArbiter.scala 50:21:chipyard.TestHarness.RocketConfig.fir@240778.4]
  wire  _T_9; // @[HellaCacheArbiter.scala 51:21:chipyard.TestHarness.RocketConfig.fir@240783.4]
  wire  _T_11; // @[HellaCacheArbiter.scala 59:57:chipyard.TestHarness.RocketConfig.fir@240788.4]
  assign _T_4 = ~io_requestor_0_req_valid; // @[HellaCacheArbiter.scala 27:67:chipyard.TestHarness.RocketConfig.fir@240762.4]
  assign _T_6 = {io_requestor_1_req_bits_tag,1'h1}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@240766.4]
  assign _GEN_1 = io_requestor_0_req_valid ? 8'h0 : _T_6; // @[HellaCacheArbiter.scala 49:26:chipyard.TestHarness.RocketConfig.fir@240772.4]
  assign _T_8 = ~_T; // @[HellaCacheArbiter.scala 50:21:chipyard.TestHarness.RocketConfig.fir@240778.4]
  assign _T_9 = ~_T_1; // @[HellaCacheArbiter.scala 51:21:chipyard.TestHarness.RocketConfig.fir@240783.4]
  assign _T_11 = ~io_mem_resp_bits_tag[0]; // @[HellaCacheArbiter.scala 59:57:chipyard.TestHarness.RocketConfig.fir@240788.4]
  assign io_requestor_0_req_ready = io_mem_req_ready; // @[HellaCacheArbiter.scala 25:31:chipyard.TestHarness.RocketConfig.fir@240761.4]
  assign io_requestor_0_s2_nack = io_mem_s2_nack & _T_9; // @[HellaCacheArbiter.scala 64:31:chipyard.TestHarness.RocketConfig.fir@240796.4]
  assign io_requestor_0_resp_valid = io_mem_resp_valid & _T_11; // @[HellaCacheArbiter.scala 60:18:chipyard.TestHarness.RocketConfig.fir@240790.4]
  assign io_requestor_0_resp_bits_data = io_mem_resp_bits_data; // @[HellaCacheArbiter.scala 69:17:chipyard.TestHarness.RocketConfig.fir@240801.4]
  assign io_requestor_0_s2_xcpt_ae_ld = io_mem_s2_xcpt_ae_ld; // @[HellaCacheArbiter.scala 61:31:chipyard.TestHarness.RocketConfig.fir@240791.4]
  assign io_requestor_1_req_ready = io_requestor_0_req_ready & _T_4; // @[HellaCacheArbiter.scala 27:33:chipyard.TestHarness.RocketConfig.fir@240764.4]
  assign io_requestor_1_s2_nack = io_mem_s2_nack & _T_1; // @[HellaCacheArbiter.scala 64:31:chipyard.TestHarness.RocketConfig.fir@240814.4]
  assign io_requestor_1_resp_valid = io_mem_resp_valid & io_mem_resp_bits_tag[0]; // @[HellaCacheArbiter.scala 60:18:chipyard.TestHarness.RocketConfig.fir@240808.4]
  assign io_requestor_1_resp_bits_tag = {{1'd0}, io_mem_resp_bits_tag[6:1]}; // @[HellaCacheArbiter.scala 69:17:chipyard.TestHarness.RocketConfig.fir@240819.4 HellaCacheArbiter.scala 70:21:chipyard.TestHarness.RocketConfig.fir@240821.4]
  assign io_requestor_1_resp_bits_size = io_mem_resp_bits_size; // @[HellaCacheArbiter.scala 69:17:chipyard.TestHarness.RocketConfig.fir@240819.4]
  assign io_requestor_1_resp_bits_data = io_mem_resp_bits_data; // @[HellaCacheArbiter.scala 69:17:chipyard.TestHarness.RocketConfig.fir@240819.4]
  assign io_requestor_1_resp_bits_replay = io_mem_resp_bits_replay; // @[HellaCacheArbiter.scala 69:17:chipyard.TestHarness.RocketConfig.fir@240819.4]
  assign io_requestor_1_resp_bits_has_data = io_mem_resp_bits_has_data; // @[HellaCacheArbiter.scala 69:17:chipyard.TestHarness.RocketConfig.fir@240819.4]
  assign io_requestor_1_resp_bits_data_word_bypass = io_mem_resp_bits_data_word_bypass; // @[HellaCacheArbiter.scala 69:17:chipyard.TestHarness.RocketConfig.fir@240819.4]
  assign io_requestor_1_replay_next = io_mem_replay_next; // @[HellaCacheArbiter.scala 72:35:chipyard.TestHarness.RocketConfig.fir@240822.4]
  assign io_requestor_1_s2_xcpt_ma_ld = io_mem_s2_xcpt_ma_ld; // @[HellaCacheArbiter.scala 61:31:chipyard.TestHarness.RocketConfig.fir@240809.4]
  assign io_requestor_1_s2_xcpt_ma_st = io_mem_s2_xcpt_ma_st; // @[HellaCacheArbiter.scala 61:31:chipyard.TestHarness.RocketConfig.fir@240809.4]
  assign io_requestor_1_s2_xcpt_pf_ld = io_mem_s2_xcpt_pf_ld; // @[HellaCacheArbiter.scala 61:31:chipyard.TestHarness.RocketConfig.fir@240809.4]
  assign io_requestor_1_s2_xcpt_pf_st = io_mem_s2_xcpt_pf_st; // @[HellaCacheArbiter.scala 61:31:chipyard.TestHarness.RocketConfig.fir@240809.4]
  assign io_requestor_1_s2_xcpt_ae_ld = io_mem_s2_xcpt_ae_ld; // @[HellaCacheArbiter.scala 61:31:chipyard.TestHarness.RocketConfig.fir@240809.4]
  assign io_requestor_1_s2_xcpt_ae_st = io_mem_s2_xcpt_ae_st; // @[HellaCacheArbiter.scala 61:31:chipyard.TestHarness.RocketConfig.fir@240809.4]
  assign io_requestor_1_ordered = io_mem_ordered; // @[HellaCacheArbiter.scala 62:31:chipyard.TestHarness.RocketConfig.fir@240810.4]
  assign io_requestor_1_perf_release = io_mem_perf_release; // @[HellaCacheArbiter.scala 63:28:chipyard.TestHarness.RocketConfig.fir@240811.4]
  assign io_requestor_1_perf_grant = io_mem_perf_grant; // @[HellaCacheArbiter.scala 63:28:chipyard.TestHarness.RocketConfig.fir@240811.4]
  assign io_mem_req_valid = io_requestor_0_req_valid | io_requestor_1_req_valid; // @[HellaCacheArbiter.scala 24:22:chipyard.TestHarness.RocketConfig.fir@240760.4]
  assign io_mem_req_bits_addr = io_requestor_0_req_valid ? io_requestor_0_req_bits_addr : io_requestor_1_req_bits_addr; // @[HellaCacheArbiter.scala 32:25:chipyard.TestHarness.RocketConfig.fir@240765.4 HellaCacheArbiter.scala 32:25:chipyard.TestHarness.RocketConfig.fir@240773.6]
  assign io_mem_req_bits_tag = _GEN_1[6:0]; // @[HellaCacheArbiter.scala 32:25:chipyard.TestHarness.RocketConfig.fir@240765.4 HellaCacheArbiter.scala 33:29:chipyard.TestHarness.RocketConfig.fir@240767.4 HellaCacheArbiter.scala 32:25:chipyard.TestHarness.RocketConfig.fir@240773.6 HellaCacheArbiter.scala 33:29:chipyard.TestHarness.RocketConfig.fir@240775.6]
  assign io_mem_req_bits_cmd = io_requestor_0_req_valid ? 5'h0 : io_requestor_1_req_bits_cmd; // @[HellaCacheArbiter.scala 32:25:chipyard.TestHarness.RocketConfig.fir@240765.4 HellaCacheArbiter.scala 32:25:chipyard.TestHarness.RocketConfig.fir@240773.6]
  assign io_mem_req_bits_size = io_requestor_0_req_valid ? 2'h3 : io_requestor_1_req_bits_size; // @[HellaCacheArbiter.scala 32:25:chipyard.TestHarness.RocketConfig.fir@240765.4 HellaCacheArbiter.scala 32:25:chipyard.TestHarness.RocketConfig.fir@240773.6]
  assign io_mem_req_bits_signed = io_requestor_0_req_valid ? 1'h0 : io_requestor_1_req_bits_signed; // @[HellaCacheArbiter.scala 32:25:chipyard.TestHarness.RocketConfig.fir@240765.4 HellaCacheArbiter.scala 32:25:chipyard.TestHarness.RocketConfig.fir@240773.6]
  assign io_mem_req_bits_dprv = io_requestor_0_req_valid ? 2'h1 : io_requestor_1_req_bits_dprv; // @[HellaCacheArbiter.scala 32:25:chipyard.TestHarness.RocketConfig.fir@240765.4 HellaCacheArbiter.scala 32:25:chipyard.TestHarness.RocketConfig.fir@240773.6]
  assign io_mem_req_bits_phys = io_requestor_0_req_valid; // @[HellaCacheArbiter.scala 32:25:chipyard.TestHarness.RocketConfig.fir@240765.4 HellaCacheArbiter.scala 32:25:chipyard.TestHarness.RocketConfig.fir@240773.6]
  assign io_mem_s1_kill = _T_8 ? io_requestor_0_s1_kill : io_requestor_1_s1_kill; // @[HellaCacheArbiter.scala 37:24:chipyard.TestHarness.RocketConfig.fir@240769.4 HellaCacheArbiter.scala 37:24:chipyard.TestHarness.RocketConfig.fir@240780.6]
  assign io_mem_s1_data_data = _T_8 ? 64'h0 : io_requestor_1_s1_data_data; // @[HellaCacheArbiter.scala 38:24:chipyard.TestHarness.RocketConfig.fir@240770.4 HellaCacheArbiter.scala 38:24:chipyard.TestHarness.RocketConfig.fir@240781.6]
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
  _T_1 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (io_requestor_0_req_valid) begin
      _T <= 1'h0;
    end else begin
      _T <= 1'h1;
    end
    _T_1 <= _T;
  end
endmodule
