module Rocket( // @[:chipyard.TestHarness.RocketConfig.fir@250371.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@250372.4]
  input         reset, // @[:chipyard.TestHarness.RocketConfig.fir@250373.4]
  input         io_interrupts_debug, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  input         io_interrupts_mtip, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  input         io_interrupts_msip, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  input         io_interrupts_meip, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  input         io_interrupts_seip, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output        io_imem_might_request, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output        io_imem_req_valid, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output [39:0] io_imem_req_bits_pc, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output        io_imem_req_bits_speculative, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output        io_imem_sfence_valid, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output        io_imem_sfence_bits_rs1, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output        io_imem_sfence_bits_rs2, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output [38:0] io_imem_sfence_bits_addr, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output        io_imem_resp_ready, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  input         io_imem_resp_valid, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  input         io_imem_resp_bits_btb_taken, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  input         io_imem_resp_bits_btb_bridx, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  input  [4:0]  io_imem_resp_bits_btb_entry, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  input  [7:0]  io_imem_resp_bits_btb_bht_history, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  input  [39:0] io_imem_resp_bits_pc, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  input  [31:0] io_imem_resp_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  input         io_imem_resp_bits_xcpt_pf_inst, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  input         io_imem_resp_bits_xcpt_ae_inst, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  input         io_imem_resp_bits_replay, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output        io_imem_btb_update_valid, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output [4:0]  io_imem_btb_update_bits_prediction_entry, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output [38:0] io_imem_btb_update_bits_pc, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output        io_imem_btb_update_bits_isValid, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output [38:0] io_imem_btb_update_bits_br_pc, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output [1:0]  io_imem_btb_update_bits_cfiType, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output        io_imem_bht_update_valid, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output [7:0]  io_imem_bht_update_bits_prediction_history, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output [38:0] io_imem_bht_update_bits_pc, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output        io_imem_bht_update_bits_branch, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output        io_imem_bht_update_bits_taken, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output        io_imem_bht_update_bits_mispredict, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output        io_imem_flush_icache, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  input         io_dmem_req_ready, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output        io_dmem_req_valid, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output [39:0] io_dmem_req_bits_addr, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output [6:0]  io_dmem_req_bits_tag, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output [4:0]  io_dmem_req_bits_cmd, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output [1:0]  io_dmem_req_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output        io_dmem_req_bits_signed, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output [1:0]  io_dmem_req_bits_dprv, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output        io_dmem_s1_kill, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output [63:0] io_dmem_s1_data_data, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  input         io_dmem_s2_nack, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  input         io_dmem_resp_valid, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  input  [6:0]  io_dmem_resp_bits_tag, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  input  [1:0]  io_dmem_resp_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  input  [63:0] io_dmem_resp_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  input         io_dmem_resp_bits_replay, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  input         io_dmem_resp_bits_has_data, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  input  [63:0] io_dmem_resp_bits_data_word_bypass, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  input         io_dmem_replay_next, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  input         io_dmem_s2_xcpt_ma_ld, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  input         io_dmem_s2_xcpt_ma_st, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  input         io_dmem_s2_xcpt_pf_ld, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  input         io_dmem_s2_xcpt_pf_st, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  input         io_dmem_s2_xcpt_ae_ld, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  input         io_dmem_s2_xcpt_ae_st, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  input         io_dmem_ordered, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  input         io_dmem_perf_release, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  input         io_dmem_perf_grant, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output [3:0]  io_ptw_ptbr_mode, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output [43:0] io_ptw_ptbr_ppn, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output        io_ptw_sfence_valid, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output        io_ptw_sfence_bits_rs1, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output        io_ptw_sfence_bits_rs2, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output [38:0] io_ptw_sfence_bits_addr, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output        io_ptw_status_debug, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output [1:0]  io_ptw_status_dprv, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output [1:0]  io_ptw_status_prv, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output        io_ptw_status_mxr, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output        io_ptw_status_sum, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output        io_ptw_pmp_0_cfg_l, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output [1:0]  io_ptw_pmp_0_cfg_a, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output        io_ptw_pmp_0_cfg_x, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output        io_ptw_pmp_0_cfg_w, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output        io_ptw_pmp_0_cfg_r, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output [29:0] io_ptw_pmp_0_addr, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output [31:0] io_ptw_pmp_0_mask, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output        io_ptw_pmp_1_cfg_l, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output [1:0]  io_ptw_pmp_1_cfg_a, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output        io_ptw_pmp_1_cfg_x, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output        io_ptw_pmp_1_cfg_w, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output        io_ptw_pmp_1_cfg_r, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output [29:0] io_ptw_pmp_1_addr, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output [31:0] io_ptw_pmp_1_mask, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output        io_ptw_pmp_2_cfg_l, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output [1:0]  io_ptw_pmp_2_cfg_a, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output        io_ptw_pmp_2_cfg_x, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output        io_ptw_pmp_2_cfg_w, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output        io_ptw_pmp_2_cfg_r, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output [29:0] io_ptw_pmp_2_addr, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output [31:0] io_ptw_pmp_2_mask, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output        io_ptw_pmp_3_cfg_l, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output [1:0]  io_ptw_pmp_3_cfg_a, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output        io_ptw_pmp_3_cfg_x, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output        io_ptw_pmp_3_cfg_w, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output        io_ptw_pmp_3_cfg_r, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output [29:0] io_ptw_pmp_3_addr, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output [31:0] io_ptw_pmp_3_mask, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output        io_ptw_pmp_4_cfg_l, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output [1:0]  io_ptw_pmp_4_cfg_a, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output        io_ptw_pmp_4_cfg_x, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output        io_ptw_pmp_4_cfg_w, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output        io_ptw_pmp_4_cfg_r, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output [29:0] io_ptw_pmp_4_addr, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output [31:0] io_ptw_pmp_4_mask, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output        io_ptw_pmp_5_cfg_l, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output [1:0]  io_ptw_pmp_5_cfg_a, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output        io_ptw_pmp_5_cfg_x, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output        io_ptw_pmp_5_cfg_w, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output        io_ptw_pmp_5_cfg_r, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output [29:0] io_ptw_pmp_5_addr, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output [31:0] io_ptw_pmp_5_mask, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output        io_ptw_pmp_6_cfg_l, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output [1:0]  io_ptw_pmp_6_cfg_a, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output        io_ptw_pmp_6_cfg_x, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output        io_ptw_pmp_6_cfg_w, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output        io_ptw_pmp_6_cfg_r, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output [29:0] io_ptw_pmp_6_addr, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output [31:0] io_ptw_pmp_6_mask, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output        io_ptw_pmp_7_cfg_l, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output [1:0]  io_ptw_pmp_7_cfg_a, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output        io_ptw_pmp_7_cfg_x, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output        io_ptw_pmp_7_cfg_w, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output        io_ptw_pmp_7_cfg_r, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output [29:0] io_ptw_pmp_7_addr, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output [31:0] io_ptw_pmp_7_mask, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output [63:0] io_ptw_customCSRs_csrs_0_value, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output [31:0] io_fpu_inst, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output [63:0] io_fpu_fromint_data, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output [2:0]  io_fpu_fcsr_rm, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  input         io_fpu_fcsr_flags_valid, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  input  [4:0]  io_fpu_fcsr_flags_bits, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  input  [63:0] io_fpu_store_data, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  input  [63:0] io_fpu_toint_data, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output        io_fpu_dmem_resp_val, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output [2:0]  io_fpu_dmem_resp_type, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output [4:0]  io_fpu_dmem_resp_tag, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output [63:0] io_fpu_dmem_resp_data, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output        io_fpu_valid, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  input         io_fpu_fcsr_rdy, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  input         io_fpu_nack_mem, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  input         io_fpu_illegal_rm, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output        io_fpu_killx, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output        io_fpu_killm, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  input         io_fpu_dec_wen, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  input         io_fpu_dec_ren1, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  input         io_fpu_dec_ren2, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  input         io_fpu_dec_ren3, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  input         io_fpu_sboard_set, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  input         io_fpu_sboard_clr, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  input  [4:0]  io_fpu_sboard_clra, // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
  output        io_wfi // @[:chipyard.TestHarness.RocketConfig.fir@250374.4]
);
  wire  ibuf_clock; // @[RocketCore.scala 248:20:chipyard.TestHarness.RocketConfig.fir@250445.4]
  wire  ibuf_reset; // @[RocketCore.scala 248:20:chipyard.TestHarness.RocketConfig.fir@250445.4]
  wire  ibuf_io_imem_ready; // @[RocketCore.scala 248:20:chipyard.TestHarness.RocketConfig.fir@250445.4]
  wire  ibuf_io_imem_valid; // @[RocketCore.scala 248:20:chipyard.TestHarness.RocketConfig.fir@250445.4]
  wire  ibuf_io_imem_bits_btb_taken; // @[RocketCore.scala 248:20:chipyard.TestHarness.RocketConfig.fir@250445.4]
  wire  ibuf_io_imem_bits_btb_bridx; // @[RocketCore.scala 248:20:chipyard.TestHarness.RocketConfig.fir@250445.4]
  wire [4:0] ibuf_io_imem_bits_btb_entry; // @[RocketCore.scala 248:20:chipyard.TestHarness.RocketConfig.fir@250445.4]
  wire [7:0] ibuf_io_imem_bits_btb_bht_history; // @[RocketCore.scala 248:20:chipyard.TestHarness.RocketConfig.fir@250445.4]
  wire [39:0] ibuf_io_imem_bits_pc; // @[RocketCore.scala 248:20:chipyard.TestHarness.RocketConfig.fir@250445.4]
  wire [31:0] ibuf_io_imem_bits_data; // @[RocketCore.scala 248:20:chipyard.TestHarness.RocketConfig.fir@250445.4]
  wire  ibuf_io_imem_bits_xcpt_pf_inst; // @[RocketCore.scala 248:20:chipyard.TestHarness.RocketConfig.fir@250445.4]
  wire  ibuf_io_imem_bits_xcpt_ae_inst; // @[RocketCore.scala 248:20:chipyard.TestHarness.RocketConfig.fir@250445.4]
  wire  ibuf_io_imem_bits_replay; // @[RocketCore.scala 248:20:chipyard.TestHarness.RocketConfig.fir@250445.4]
  wire  ibuf_io_kill; // @[RocketCore.scala 248:20:chipyard.TestHarness.RocketConfig.fir@250445.4]
  wire [39:0] ibuf_io_pc; // @[RocketCore.scala 248:20:chipyard.TestHarness.RocketConfig.fir@250445.4]
  wire [4:0] ibuf_io_btb_resp_entry; // @[RocketCore.scala 248:20:chipyard.TestHarness.RocketConfig.fir@250445.4]
  wire [7:0] ibuf_io_btb_resp_bht_history; // @[RocketCore.scala 248:20:chipyard.TestHarness.RocketConfig.fir@250445.4]
  wire  ibuf_io_inst_0_ready; // @[RocketCore.scala 248:20:chipyard.TestHarness.RocketConfig.fir@250445.4]
  wire  ibuf_io_inst_0_valid; // @[RocketCore.scala 248:20:chipyard.TestHarness.RocketConfig.fir@250445.4]
  wire  ibuf_io_inst_0_bits_xcpt0_pf_inst; // @[RocketCore.scala 248:20:chipyard.TestHarness.RocketConfig.fir@250445.4]
  wire  ibuf_io_inst_0_bits_xcpt0_ae_inst; // @[RocketCore.scala 248:20:chipyard.TestHarness.RocketConfig.fir@250445.4]
  wire  ibuf_io_inst_0_bits_xcpt1_pf_inst; // @[RocketCore.scala 248:20:chipyard.TestHarness.RocketConfig.fir@250445.4]
  wire  ibuf_io_inst_0_bits_xcpt1_ae_inst; // @[RocketCore.scala 248:20:chipyard.TestHarness.RocketConfig.fir@250445.4]
  wire  ibuf_io_inst_0_bits_replay; // @[RocketCore.scala 248:20:chipyard.TestHarness.RocketConfig.fir@250445.4]
  wire  ibuf_io_inst_0_bits_rvc; // @[RocketCore.scala 248:20:chipyard.TestHarness.RocketConfig.fir@250445.4]
  wire [31:0] ibuf_io_inst_0_bits_inst_bits; // @[RocketCore.scala 248:20:chipyard.TestHarness.RocketConfig.fir@250445.4]
  wire [4:0] ibuf_io_inst_0_bits_inst_rd; // @[RocketCore.scala 248:20:chipyard.TestHarness.RocketConfig.fir@250445.4]
  wire [4:0] ibuf_io_inst_0_bits_inst_rs1; // @[RocketCore.scala 248:20:chipyard.TestHarness.RocketConfig.fir@250445.4]
  wire [4:0] ibuf_io_inst_0_bits_inst_rs2; // @[RocketCore.scala 248:20:chipyard.TestHarness.RocketConfig.fir@250445.4]
  wire [4:0] ibuf_io_inst_0_bits_inst_rs3; // @[RocketCore.scala 248:20:chipyard.TestHarness.RocketConfig.fir@250445.4]
  wire [31:0] ibuf_io_inst_0_bits_raw; // @[RocketCore.scala 248:20:chipyard.TestHarness.RocketConfig.fir@250445.4]
  reg [63:0] _T_427 [0:30]; // @[RocketCore.scala 983:15:chipyard.TestHarness.RocketConfig.fir@250915.4]
  reg [63:0] _RAND_0;
  wire [63:0] _T_427__T_432_data; // @[RocketCore.scala 983:15:chipyard.TestHarness.RocketConfig.fir@250915.4]
  wire [4:0] _T_427__T_432_addr; // @[RocketCore.scala 983:15:chipyard.TestHarness.RocketConfig.fir@250915.4]
  reg [63:0] _RAND_1;
  wire [63:0] _T_427__T_438_data; // @[RocketCore.scala 983:15:chipyard.TestHarness.RocketConfig.fir@250915.4]
  wire [4:0] _T_427__T_438_addr; // @[RocketCore.scala 983:15:chipyard.TestHarness.RocketConfig.fir@250915.4]
  reg [63:0] _RAND_2;
  wire [63:0] _T_427__T_1136_data; // @[RocketCore.scala 983:15:chipyard.TestHarness.RocketConfig.fir@250915.4]
  wire [4:0] _T_427__T_1136_addr; // @[RocketCore.scala 983:15:chipyard.TestHarness.RocketConfig.fir@250915.4]
  wire  _T_427__T_1136_mask; // @[RocketCore.scala 983:15:chipyard.TestHarness.RocketConfig.fir@250915.4]
  wire  _T_427__T_1136_en; // @[RocketCore.scala 983:15:chipyard.TestHarness.RocketConfig.fir@250915.4]
  wire  csr_clock; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire  csr_reset; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire  csr_io_ungated_clock; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire  csr_io_interrupts_debug; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire  csr_io_interrupts_mtip; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire  csr_io_interrupts_msip; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire  csr_io_interrupts_meip; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire  csr_io_interrupts_seip; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire [11:0] csr_io_rw_addr; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire [2:0] csr_io_rw_cmd; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire [63:0] csr_io_rw_rdata; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire [63:0] csr_io_rw_wdata; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire [11:0] csr_io_decode_0_csr; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire  csr_io_decode_0_fp_illegal; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire  csr_io_decode_0_fp_csr; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire  csr_io_decode_0_read_illegal; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire  csr_io_decode_0_write_illegal; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire  csr_io_decode_0_write_flush; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire  csr_io_decode_0_system_illegal; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire  csr_io_csr_stall; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire  csr_io_eret; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire  csr_io_singleStep; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire  csr_io_status_debug; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire  csr_io_status_cease; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire  csr_io_status_wfi; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire [31:0] csr_io_status_isa; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire [1:0] csr_io_status_dprv; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire [1:0] csr_io_status_prv; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire  csr_io_status_sd; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire [26:0] csr_io_status_zero2; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire [1:0] csr_io_status_sxl; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire [1:0] csr_io_status_uxl; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire  csr_io_status_sd_rv32; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire [7:0] csr_io_status_zero1; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire  csr_io_status_tsr; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire  csr_io_status_tw; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire  csr_io_status_tvm; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire  csr_io_status_mxr; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire  csr_io_status_sum; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire  csr_io_status_mprv; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire [1:0] csr_io_status_xs; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire [1:0] csr_io_status_fs; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire [1:0] csr_io_status_mpp; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire [1:0] csr_io_status_vs; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire  csr_io_status_spp; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire  csr_io_status_mpie; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire  csr_io_status_hpie; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire  csr_io_status_spie; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire  csr_io_status_upie; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire  csr_io_status_mie; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire  csr_io_status_hie; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire  csr_io_status_sie; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire  csr_io_status_uie; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire [3:0] csr_io_ptbr_mode; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire [43:0] csr_io_ptbr_ppn; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire [39:0] csr_io_evec; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire  csr_io_exception; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire  csr_io_retire; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire [63:0] csr_io_cause; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire [39:0] csr_io_pc; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire [39:0] csr_io_tval; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire [63:0] csr_io_time; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire [2:0] csr_io_fcsr_rm; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire  csr_io_fcsr_flags_valid; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire [4:0] csr_io_fcsr_flags_bits; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire  csr_io_interrupt; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire [63:0] csr_io_interrupt_cause; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire  csr_io_bp_0_control_action; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire [1:0] csr_io_bp_0_control_tmatch; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire  csr_io_bp_0_control_m; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire  csr_io_bp_0_control_s; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire  csr_io_bp_0_control_u; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire  csr_io_bp_0_control_x; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire  csr_io_bp_0_control_w; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire  csr_io_bp_0_control_r; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire [38:0] csr_io_bp_0_address; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire  csr_io_pmp_0_cfg_l; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire [1:0] csr_io_pmp_0_cfg_a; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire  csr_io_pmp_0_cfg_x; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire  csr_io_pmp_0_cfg_w; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire  csr_io_pmp_0_cfg_r; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire [29:0] csr_io_pmp_0_addr; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire [31:0] csr_io_pmp_0_mask; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire  csr_io_pmp_1_cfg_l; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire [1:0] csr_io_pmp_1_cfg_a; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire  csr_io_pmp_1_cfg_x; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire  csr_io_pmp_1_cfg_w; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire  csr_io_pmp_1_cfg_r; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire [29:0] csr_io_pmp_1_addr; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire [31:0] csr_io_pmp_1_mask; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire  csr_io_pmp_2_cfg_l; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire [1:0] csr_io_pmp_2_cfg_a; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire  csr_io_pmp_2_cfg_x; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire  csr_io_pmp_2_cfg_w; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire  csr_io_pmp_2_cfg_r; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire [29:0] csr_io_pmp_2_addr; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire [31:0] csr_io_pmp_2_mask; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire  csr_io_pmp_3_cfg_l; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire [1:0] csr_io_pmp_3_cfg_a; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire  csr_io_pmp_3_cfg_x; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire  csr_io_pmp_3_cfg_w; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire  csr_io_pmp_3_cfg_r; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire [29:0] csr_io_pmp_3_addr; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire [31:0] csr_io_pmp_3_mask; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire  csr_io_pmp_4_cfg_l; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire [1:0] csr_io_pmp_4_cfg_a; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire  csr_io_pmp_4_cfg_x; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire  csr_io_pmp_4_cfg_w; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire  csr_io_pmp_4_cfg_r; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire [29:0] csr_io_pmp_4_addr; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire [31:0] csr_io_pmp_4_mask; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire  csr_io_pmp_5_cfg_l; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire [1:0] csr_io_pmp_5_cfg_a; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire  csr_io_pmp_5_cfg_x; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire  csr_io_pmp_5_cfg_w; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire  csr_io_pmp_5_cfg_r; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire [29:0] csr_io_pmp_5_addr; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire [31:0] csr_io_pmp_5_mask; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire  csr_io_pmp_6_cfg_l; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire [1:0] csr_io_pmp_6_cfg_a; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire  csr_io_pmp_6_cfg_x; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire  csr_io_pmp_6_cfg_w; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire  csr_io_pmp_6_cfg_r; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire [29:0] csr_io_pmp_6_addr; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire [31:0] csr_io_pmp_6_mask; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire  csr_io_pmp_7_cfg_l; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire [1:0] csr_io_pmp_7_cfg_a; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire  csr_io_pmp_7_cfg_x; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire  csr_io_pmp_7_cfg_w; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire  csr_io_pmp_7_cfg_r; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire [29:0] csr_io_pmp_7_addr; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire [31:0] csr_io_pmp_7_mask; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire [31:0] csr_io_inst_0; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire  csr_io_trace_0_valid; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire [39:0] csr_io_trace_0_iaddr; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire [31:0] csr_io_trace_0_insn; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire  csr_io_trace_0_exception; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire [63:0] csr_io_customCSRs_0_value; // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
  wire  bpu_io_status_debug; // @[RocketCore.scala 317:19:chipyard.TestHarness.RocketConfig.fir@251107.4]
  wire [1:0] bpu_io_status_prv; // @[RocketCore.scala 317:19:chipyard.TestHarness.RocketConfig.fir@251107.4]
  wire  bpu_io_bp_0_control_action; // @[RocketCore.scala 317:19:chipyard.TestHarness.RocketConfig.fir@251107.4]
  wire [1:0] bpu_io_bp_0_control_tmatch; // @[RocketCore.scala 317:19:chipyard.TestHarness.RocketConfig.fir@251107.4]
  wire  bpu_io_bp_0_control_m; // @[RocketCore.scala 317:19:chipyard.TestHarness.RocketConfig.fir@251107.4]
  wire  bpu_io_bp_0_control_s; // @[RocketCore.scala 317:19:chipyard.TestHarness.RocketConfig.fir@251107.4]
  wire  bpu_io_bp_0_control_u; // @[RocketCore.scala 317:19:chipyard.TestHarness.RocketConfig.fir@251107.4]
  wire  bpu_io_bp_0_control_x; // @[RocketCore.scala 317:19:chipyard.TestHarness.RocketConfig.fir@251107.4]
  wire  bpu_io_bp_0_control_w; // @[RocketCore.scala 317:19:chipyard.TestHarness.RocketConfig.fir@251107.4]
  wire  bpu_io_bp_0_control_r; // @[RocketCore.scala 317:19:chipyard.TestHarness.RocketConfig.fir@251107.4]
  wire [38:0] bpu_io_bp_0_address; // @[RocketCore.scala 317:19:chipyard.TestHarness.RocketConfig.fir@251107.4]
  wire [38:0] bpu_io_pc; // @[RocketCore.scala 317:19:chipyard.TestHarness.RocketConfig.fir@251107.4]
  wire [38:0] bpu_io_ea; // @[RocketCore.scala 317:19:chipyard.TestHarness.RocketConfig.fir@251107.4]
  wire  bpu_io_xcpt_if; // @[RocketCore.scala 317:19:chipyard.TestHarness.RocketConfig.fir@251107.4]
  wire  bpu_io_xcpt_ld; // @[RocketCore.scala 317:19:chipyard.TestHarness.RocketConfig.fir@251107.4]
  wire  bpu_io_xcpt_st; // @[RocketCore.scala 317:19:chipyard.TestHarness.RocketConfig.fir@251107.4]
  wire  bpu_io_debug_if; // @[RocketCore.scala 317:19:chipyard.TestHarness.RocketConfig.fir@251107.4]
  wire  bpu_io_debug_ld; // @[RocketCore.scala 317:19:chipyard.TestHarness.RocketConfig.fir@251107.4]
  wire  bpu_io_debug_st; // @[RocketCore.scala 317:19:chipyard.TestHarness.RocketConfig.fir@251107.4]
  wire  alu_io_dw; // @[RocketCore.scala 377:19:chipyard.TestHarness.RocketConfig.fir@251262.4]
  wire [3:0] alu_io_fn; // @[RocketCore.scala 377:19:chipyard.TestHarness.RocketConfig.fir@251262.4]
  wire [63:0] alu_io_in2; // @[RocketCore.scala 377:19:chipyard.TestHarness.RocketConfig.fir@251262.4]
  wire [63:0] alu_io_in1; // @[RocketCore.scala 377:19:chipyard.TestHarness.RocketConfig.fir@251262.4]
  wire [63:0] alu_io_out; // @[RocketCore.scala 377:19:chipyard.TestHarness.RocketConfig.fir@251262.4]
  wire [63:0] alu_io_adder_out; // @[RocketCore.scala 377:19:chipyard.TestHarness.RocketConfig.fir@251262.4]
  wire  alu_io_cmp_out; // @[RocketCore.scala 377:19:chipyard.TestHarness.RocketConfig.fir@251262.4]
  wire  div_clock; // @[RocketCore.scala 401:19:chipyard.TestHarness.RocketConfig.fir@251272.4]
  wire  div_reset; // @[RocketCore.scala 401:19:chipyard.TestHarness.RocketConfig.fir@251272.4]
  wire  div_io_req_ready; // @[RocketCore.scala 401:19:chipyard.TestHarness.RocketConfig.fir@251272.4]
  wire  div_io_req_valid; // @[RocketCore.scala 401:19:chipyard.TestHarness.RocketConfig.fir@251272.4]
  wire [3:0] div_io_req_bits_fn; // @[RocketCore.scala 401:19:chipyard.TestHarness.RocketConfig.fir@251272.4]
  wire  div_io_req_bits_dw; // @[RocketCore.scala 401:19:chipyard.TestHarness.RocketConfig.fir@251272.4]
  wire [63:0] div_io_req_bits_in1; // @[RocketCore.scala 401:19:chipyard.TestHarness.RocketConfig.fir@251272.4]
  wire [63:0] div_io_req_bits_in2; // @[RocketCore.scala 401:19:chipyard.TestHarness.RocketConfig.fir@251272.4]
  wire [4:0] div_io_req_bits_tag; // @[RocketCore.scala 401:19:chipyard.TestHarness.RocketConfig.fir@251272.4]
  wire  div_io_kill; // @[RocketCore.scala 401:19:chipyard.TestHarness.RocketConfig.fir@251272.4]
  wire  div_io_resp_ready; // @[RocketCore.scala 401:19:chipyard.TestHarness.RocketConfig.fir@251272.4]
  wire  div_io_resp_valid; // @[RocketCore.scala 401:19:chipyard.TestHarness.RocketConfig.fir@251272.4]
  wire [63:0] div_io_resp_bits_data; // @[RocketCore.scala 401:19:chipyard.TestHarness.RocketConfig.fir@251272.4]
  wire [4:0] div_io_resp_bits_tag; // @[RocketCore.scala 401:19:chipyard.TestHarness.RocketConfig.fir@251272.4]
  wire  PlusArgTimeout_clock; // @[PlusArg.scala 53:11:chipyard.TestHarness.RocketConfig.fir@252433.4]
  wire  PlusArgTimeout_reset; // @[PlusArg.scala 53:11:chipyard.TestHarness.RocketConfig.fir@252433.4]
  wire [31:0] PlusArgTimeout_io_count; // @[PlusArg.scala 53:11:chipyard.TestHarness.RocketConfig.fir@252433.4]
  reg  id_reg_pause; // @[RocketCore.scala 110:25:chipyard.TestHarness.RocketConfig.fir@250381.4]
  reg [31:0] _RAND_3;
  reg  imem_might_request_reg; // @[RocketCore.scala 111:35:chipyard.TestHarness.RocketConfig.fir@250382.4]
  reg [31:0] _RAND_4;
  reg  ex_ctrl_fp; // @[RocketCore.scala 184:20:chipyard.TestHarness.RocketConfig.fir@250386.4]
  reg [31:0] _RAND_5;
  reg  ex_ctrl_branch; // @[RocketCore.scala 184:20:chipyard.TestHarness.RocketConfig.fir@250386.4]
  reg [31:0] _RAND_6;
  reg  ex_ctrl_jal; // @[RocketCore.scala 184:20:chipyard.TestHarness.RocketConfig.fir@250386.4]
  reg [31:0] _RAND_7;
  reg  ex_ctrl_jalr; // @[RocketCore.scala 184:20:chipyard.TestHarness.RocketConfig.fir@250386.4]
  reg [31:0] _RAND_8;
  reg  ex_ctrl_rxs2; // @[RocketCore.scala 184:20:chipyard.TestHarness.RocketConfig.fir@250386.4]
  reg [31:0] _RAND_9;
  reg  ex_ctrl_rxs1; // @[RocketCore.scala 184:20:chipyard.TestHarness.RocketConfig.fir@250386.4]
  reg [31:0] _RAND_10;
  reg [1:0] ex_ctrl_sel_alu2; // @[RocketCore.scala 184:20:chipyard.TestHarness.RocketConfig.fir@250386.4]
  reg [31:0] _RAND_11;
  reg [1:0] ex_ctrl_sel_alu1; // @[RocketCore.scala 184:20:chipyard.TestHarness.RocketConfig.fir@250386.4]
  reg [31:0] _RAND_12;
  reg [2:0] ex_ctrl_sel_imm; // @[RocketCore.scala 184:20:chipyard.TestHarness.RocketConfig.fir@250386.4]
  reg [31:0] _RAND_13;
  reg  ex_ctrl_alu_dw; // @[RocketCore.scala 184:20:chipyard.TestHarness.RocketConfig.fir@250386.4]
  reg [31:0] _RAND_14;
  reg [3:0] ex_ctrl_alu_fn; // @[RocketCore.scala 184:20:chipyard.TestHarness.RocketConfig.fir@250386.4]
  reg [31:0] _RAND_15;
  reg  ex_ctrl_mem; // @[RocketCore.scala 184:20:chipyard.TestHarness.RocketConfig.fir@250386.4]
  reg [31:0] _RAND_16;
  reg [4:0] ex_ctrl_mem_cmd; // @[RocketCore.scala 184:20:chipyard.TestHarness.RocketConfig.fir@250386.4]
  reg [31:0] _RAND_17;
  reg  ex_ctrl_rfs1; // @[RocketCore.scala 184:20:chipyard.TestHarness.RocketConfig.fir@250386.4]
  reg [31:0] _RAND_18;
  reg  ex_ctrl_rfs2; // @[RocketCore.scala 184:20:chipyard.TestHarness.RocketConfig.fir@250386.4]
  reg [31:0] _RAND_19;
  reg  ex_ctrl_wfd; // @[RocketCore.scala 184:20:chipyard.TestHarness.RocketConfig.fir@250386.4]
  reg [31:0] _RAND_20;
  reg  ex_ctrl_div; // @[RocketCore.scala 184:20:chipyard.TestHarness.RocketConfig.fir@250386.4]
  reg [31:0] _RAND_21;
  reg  ex_ctrl_wxd; // @[RocketCore.scala 184:20:chipyard.TestHarness.RocketConfig.fir@250386.4]
  reg [31:0] _RAND_22;
  reg [2:0] ex_ctrl_csr; // @[RocketCore.scala 184:20:chipyard.TestHarness.RocketConfig.fir@250386.4]
  reg [31:0] _RAND_23;
  reg  ex_ctrl_fence_i; // @[RocketCore.scala 184:20:chipyard.TestHarness.RocketConfig.fir@250386.4]
  reg [31:0] _RAND_24;
  reg  mem_ctrl_fp; // @[RocketCore.scala 185:21:chipyard.TestHarness.RocketConfig.fir@250387.4]
  reg [31:0] _RAND_25;
  reg  mem_ctrl_branch; // @[RocketCore.scala 185:21:chipyard.TestHarness.RocketConfig.fir@250387.4]
  reg [31:0] _RAND_26;
  reg  mem_ctrl_jal; // @[RocketCore.scala 185:21:chipyard.TestHarness.RocketConfig.fir@250387.4]
  reg [31:0] _RAND_27;
  reg  mem_ctrl_jalr; // @[RocketCore.scala 185:21:chipyard.TestHarness.RocketConfig.fir@250387.4]
  reg [31:0] _RAND_28;
  reg  mem_ctrl_rxs2; // @[RocketCore.scala 185:21:chipyard.TestHarness.RocketConfig.fir@250387.4]
  reg [31:0] _RAND_29;
  reg  mem_ctrl_rxs1; // @[RocketCore.scala 185:21:chipyard.TestHarness.RocketConfig.fir@250387.4]
  reg [31:0] _RAND_30;
  reg  mem_ctrl_mem; // @[RocketCore.scala 185:21:chipyard.TestHarness.RocketConfig.fir@250387.4]
  reg [31:0] _RAND_31;
  reg  mem_ctrl_rfs1; // @[RocketCore.scala 185:21:chipyard.TestHarness.RocketConfig.fir@250387.4]
  reg [31:0] _RAND_32;
  reg  mem_ctrl_rfs2; // @[RocketCore.scala 185:21:chipyard.TestHarness.RocketConfig.fir@250387.4]
  reg [31:0] _RAND_33;
  reg  mem_ctrl_wfd; // @[RocketCore.scala 185:21:chipyard.TestHarness.RocketConfig.fir@250387.4]
  reg [31:0] _RAND_34;
  reg  mem_ctrl_div; // @[RocketCore.scala 185:21:chipyard.TestHarness.RocketConfig.fir@250387.4]
  reg [31:0] _RAND_35;
  reg  mem_ctrl_wxd; // @[RocketCore.scala 185:21:chipyard.TestHarness.RocketConfig.fir@250387.4]
  reg [31:0] _RAND_36;
  reg [2:0] mem_ctrl_csr; // @[RocketCore.scala 185:21:chipyard.TestHarness.RocketConfig.fir@250387.4]
  reg [31:0] _RAND_37;
  reg  mem_ctrl_fence_i; // @[RocketCore.scala 185:21:chipyard.TestHarness.RocketConfig.fir@250387.4]
  reg [31:0] _RAND_38;
  reg  wb_ctrl_rxs2; // @[RocketCore.scala 186:20:chipyard.TestHarness.RocketConfig.fir@250388.4]
  reg [31:0] _RAND_39;
  reg  wb_ctrl_rxs1; // @[RocketCore.scala 186:20:chipyard.TestHarness.RocketConfig.fir@250388.4]
  reg [31:0] _RAND_40;
  reg  wb_ctrl_mem; // @[RocketCore.scala 186:20:chipyard.TestHarness.RocketConfig.fir@250388.4]
  reg [31:0] _RAND_41;
  reg  wb_ctrl_rfs1; // @[RocketCore.scala 186:20:chipyard.TestHarness.RocketConfig.fir@250388.4]
  reg [31:0] _RAND_42;
  reg  wb_ctrl_rfs2; // @[RocketCore.scala 186:20:chipyard.TestHarness.RocketConfig.fir@250388.4]
  reg [31:0] _RAND_43;
  reg  wb_ctrl_wfd; // @[RocketCore.scala 186:20:chipyard.TestHarness.RocketConfig.fir@250388.4]
  reg [31:0] _RAND_44;
  reg  wb_ctrl_div; // @[RocketCore.scala 186:20:chipyard.TestHarness.RocketConfig.fir@250388.4]
  reg [31:0] _RAND_45;
  reg  wb_ctrl_wxd; // @[RocketCore.scala 186:20:chipyard.TestHarness.RocketConfig.fir@250388.4]
  reg [31:0] _RAND_46;
  reg [2:0] wb_ctrl_csr; // @[RocketCore.scala 186:20:chipyard.TestHarness.RocketConfig.fir@250388.4]
  reg [31:0] _RAND_47;
  reg  wb_ctrl_fence_i; // @[RocketCore.scala 186:20:chipyard.TestHarness.RocketConfig.fir@250388.4]
  reg [31:0] _RAND_48;
  reg  ex_reg_xcpt_interrupt; // @[RocketCore.scala 188:35:chipyard.TestHarness.RocketConfig.fir@250389.4]
  reg [31:0] _RAND_49;
  reg  ex_reg_valid; // @[RocketCore.scala 189:35:chipyard.TestHarness.RocketConfig.fir@250390.4]
  reg [31:0] _RAND_50;
  reg  ex_reg_rvc; // @[RocketCore.scala 190:35:chipyard.TestHarness.RocketConfig.fir@250391.4]
  reg [31:0] _RAND_51;
  reg [4:0] ex_reg_btb_resp_entry; // @[RocketCore.scala 191:35:chipyard.TestHarness.RocketConfig.fir@250392.4]
  reg [31:0] _RAND_52;
  reg [7:0] ex_reg_btb_resp_bht_history; // @[RocketCore.scala 191:35:chipyard.TestHarness.RocketConfig.fir@250392.4]
  reg [31:0] _RAND_53;
  reg  ex_reg_xcpt; // @[RocketCore.scala 192:35:chipyard.TestHarness.RocketConfig.fir@250393.4]
  reg [31:0] _RAND_54;
  reg  ex_reg_flush_pipe; // @[RocketCore.scala 193:35:chipyard.TestHarness.RocketConfig.fir@250394.4]
  reg [31:0] _RAND_55;
  reg  ex_reg_load_use; // @[RocketCore.scala 194:35:chipyard.TestHarness.RocketConfig.fir@250395.4]
  reg [31:0] _RAND_56;
  reg [63:0] ex_reg_cause; // @[RocketCore.scala 195:35:chipyard.TestHarness.RocketConfig.fir@250396.4]
  reg [63:0] _RAND_57;
  reg  ex_reg_replay; // @[RocketCore.scala 196:26:chipyard.TestHarness.RocketConfig.fir@250397.4]
  reg [31:0] _RAND_58;
  reg [39:0] ex_reg_pc; // @[RocketCore.scala 197:22:chipyard.TestHarness.RocketConfig.fir@250398.4]
  reg [63:0] _RAND_59;
  reg [1:0] ex_reg_mem_size; // @[RocketCore.scala 198:28:chipyard.TestHarness.RocketConfig.fir@250399.4]
  reg [31:0] _RAND_60;
  reg [31:0] ex_reg_inst; // @[RocketCore.scala 199:24:chipyard.TestHarness.RocketConfig.fir@250400.4]
  reg [31:0] _RAND_61;
  reg [31:0] ex_reg_raw_inst; // @[RocketCore.scala 200:28:chipyard.TestHarness.RocketConfig.fir@250401.4]
  reg [31:0] _RAND_62;
  reg  mem_reg_xcpt_interrupt; // @[RocketCore.scala 205:36:chipyard.TestHarness.RocketConfig.fir@250405.4]
  reg [31:0] _RAND_63;
  reg  mem_reg_valid; // @[RocketCore.scala 206:36:chipyard.TestHarness.RocketConfig.fir@250406.4]
  reg [31:0] _RAND_64;
  reg  mem_reg_rvc; // @[RocketCore.scala 207:36:chipyard.TestHarness.RocketConfig.fir@250407.4]
  reg [31:0] _RAND_65;
  reg [4:0] mem_reg_btb_resp_entry; // @[RocketCore.scala 208:36:chipyard.TestHarness.RocketConfig.fir@250408.4]
  reg [31:0] _RAND_66;
  reg [7:0] mem_reg_btb_resp_bht_history; // @[RocketCore.scala 208:36:chipyard.TestHarness.RocketConfig.fir@250408.4]
  reg [31:0] _RAND_67;
  reg  mem_reg_xcpt; // @[RocketCore.scala 209:36:chipyard.TestHarness.RocketConfig.fir@250409.4]
  reg [31:0] _RAND_68;
  reg  mem_reg_replay; // @[RocketCore.scala 210:36:chipyard.TestHarness.RocketConfig.fir@250410.4]
  reg [31:0] _RAND_69;
  reg  mem_reg_flush_pipe; // @[RocketCore.scala 211:36:chipyard.TestHarness.RocketConfig.fir@250411.4]
  reg [31:0] _RAND_70;
  reg [63:0] mem_reg_cause; // @[RocketCore.scala 212:36:chipyard.TestHarness.RocketConfig.fir@250412.4]
  reg [63:0] _RAND_71;
  reg  mem_reg_slow_bypass; // @[RocketCore.scala 213:36:chipyard.TestHarness.RocketConfig.fir@250413.4]
  reg [31:0] _RAND_72;
  reg  mem_reg_load; // @[RocketCore.scala 214:36:chipyard.TestHarness.RocketConfig.fir@250414.4]
  reg [31:0] _RAND_73;
  reg  mem_reg_store; // @[RocketCore.scala 215:36:chipyard.TestHarness.RocketConfig.fir@250415.4]
  reg [31:0] _RAND_74;
  reg  mem_reg_sfence; // @[RocketCore.scala 216:27:chipyard.TestHarness.RocketConfig.fir@250416.4]
  reg [31:0] _RAND_75;
  reg [39:0] mem_reg_pc; // @[RocketCore.scala 217:23:chipyard.TestHarness.RocketConfig.fir@250417.4]
  reg [63:0] _RAND_76;
  reg [31:0] mem_reg_inst; // @[RocketCore.scala 218:25:chipyard.TestHarness.RocketConfig.fir@250418.4]
  reg [31:0] _RAND_77;
  reg [1:0] mem_reg_mem_size; // @[RocketCore.scala 219:29:chipyard.TestHarness.RocketConfig.fir@250419.4]
  reg [31:0] _RAND_78;
  reg [31:0] mem_reg_raw_inst; // @[RocketCore.scala 220:29:chipyard.TestHarness.RocketConfig.fir@250420.4]
  reg [31:0] _RAND_79;
  reg [63:0] mem_reg_wdata; // @[RocketCore.scala 223:26:chipyard.TestHarness.RocketConfig.fir@250423.4]
  reg [63:0] _RAND_80;
  reg [63:0] mem_reg_rs2; // @[RocketCore.scala 224:24:chipyard.TestHarness.RocketConfig.fir@250424.4]
  reg [63:0] _RAND_81;
  reg  mem_br_taken; // @[RocketCore.scala 225:25:chipyard.TestHarness.RocketConfig.fir@250425.4]
  reg [31:0] _RAND_82;
  reg  wb_reg_valid; // @[RocketCore.scala 229:35:chipyard.TestHarness.RocketConfig.fir@250429.4]
  reg [31:0] _RAND_83;
  reg  wb_reg_xcpt; // @[RocketCore.scala 230:35:chipyard.TestHarness.RocketConfig.fir@250430.4]
  reg [31:0] _RAND_84;
  reg  wb_reg_replay; // @[RocketCore.scala 231:35:chipyard.TestHarness.RocketConfig.fir@250431.4]
  reg [31:0] _RAND_85;
  reg  wb_reg_flush_pipe; // @[RocketCore.scala 232:35:chipyard.TestHarness.RocketConfig.fir@250432.4]
  reg [31:0] _RAND_86;
  reg [63:0] wb_reg_cause; // @[RocketCore.scala 233:35:chipyard.TestHarness.RocketConfig.fir@250433.4]
  reg [63:0] _RAND_87;
  reg  wb_reg_sfence; // @[RocketCore.scala 234:26:chipyard.TestHarness.RocketConfig.fir@250434.4]
  reg [31:0] _RAND_88;
  reg [39:0] wb_reg_pc; // @[RocketCore.scala 235:22:chipyard.TestHarness.RocketConfig.fir@250435.4]
  reg [63:0] _RAND_89;
  reg [1:0] wb_reg_mem_size; // @[RocketCore.scala 236:28:chipyard.TestHarness.RocketConfig.fir@250436.4]
  reg [31:0] _RAND_90;
  reg [31:0] wb_reg_inst; // @[RocketCore.scala 237:24:chipyard.TestHarness.RocketConfig.fir@250437.4]
  reg [31:0] _RAND_91;
  reg [31:0] wb_reg_raw_inst; // @[RocketCore.scala 238:28:chipyard.TestHarness.RocketConfig.fir@250438.4]
  reg [31:0] _RAND_92;
  reg [63:0] wb_reg_wdata; // @[RocketCore.scala 239:25:chipyard.TestHarness.RocketConfig.fir@250439.4]
  reg [63:0] _RAND_93;
  wire  replay_wb_common; // @[RocketCore.scala 629:42:chipyard.TestHarness.RocketConfig.fir@251845.4]
  wire  _T_1077; // @[RocketCore.scala 607:19:chipyard.TestHarness.RocketConfig.fir@251804.4]
  wire  _T_1078; // @[RocketCore.scala 607:34:chipyard.TestHarness.RocketConfig.fir@251805.4]
  wire  _T_1089; // @[RocketCore.scala 943:26:chipyard.TestHarness.RocketConfig.fir@251816.4]
  wire  _T_1080; // @[RocketCore.scala 608:34:chipyard.TestHarness.RocketConfig.fir@251807.4]
  wire  _T_1090; // @[RocketCore.scala 943:26:chipyard.TestHarness.RocketConfig.fir@251817.4]
  wire  _T_1082; // @[RocketCore.scala 609:34:chipyard.TestHarness.RocketConfig.fir@251809.4]
  wire  _T_1091; // @[RocketCore.scala 943:26:chipyard.TestHarness.RocketConfig.fir@251818.4]
  wire  _T_1084; // @[RocketCore.scala 610:34:chipyard.TestHarness.RocketConfig.fir@251811.4]
  wire  _T_1092; // @[RocketCore.scala 943:26:chipyard.TestHarness.RocketConfig.fir@251819.4]
  wire  _T_1086; // @[RocketCore.scala 611:34:chipyard.TestHarness.RocketConfig.fir@251813.4]
  wire  _T_1093; // @[RocketCore.scala 943:26:chipyard.TestHarness.RocketConfig.fir@251820.4]
  wire  _T_1088; // @[RocketCore.scala 612:34:chipyard.TestHarness.RocketConfig.fir@251815.4]
  wire  wb_xcpt; // @[RocketCore.scala 943:26:chipyard.TestHarness.RocketConfig.fir@251821.4]
  wire  _T_1115; // @[RocketCore.scala 632:27:chipyard.TestHarness.RocketConfig.fir@251850.4]
  wire  _T_1116; // @[RocketCore.scala 632:38:chipyard.TestHarness.RocketConfig.fir@251851.4]
  wire  take_pc_wb; // @[RocketCore.scala 632:53:chipyard.TestHarness.RocketConfig.fir@251852.4]
  wire  _T_761; // @[RocketCore.scala 482:34:chipyard.TestHarness.RocketConfig.fir@251400.4]
  wire  ex_pc_valid; // @[RocketCore.scala 482:51:chipyard.TestHarness.RocketConfig.fir@251401.4]
  wire  _T_917; // @[RocketCore.scala 505:36:chipyard.TestHarness.RocketConfig.fir@251567.4]
  wire [63:0] _T_918; // @[RocketCore.scala 957:16:chipyard.TestHarness.RocketConfig.fir@251568.4]
  wire [24:0] a; // @[RocketCore.scala 957:23:chipyard.TestHarness.RocketConfig.fir@251569.4]
  wire  _T_919; // @[RocketCore.scala 958:21:chipyard.TestHarness.RocketConfig.fir@251570.4]
  wire  _T_920; // @[RocketCore.scala 958:34:chipyard.TestHarness.RocketConfig.fir@251571.4]
  wire  _T_921; // @[RocketCore.scala 958:29:chipyard.TestHarness.RocketConfig.fir@251572.4]
  wire  _T_924; // @[RocketCore.scala 958:59:chipyard.TestHarness.RocketConfig.fir@251575.4]
  wire  msb; // @[RocketCore.scala 958:18:chipyard.TestHarness.RocketConfig.fir@251576.4]
  wire [39:0] _T_927; // @[RocketCore.scala 505:106:chipyard.TestHarness.RocketConfig.fir@251579.4]
  wire  _T_787; // @[RocketCore.scala 502:25:chipyard.TestHarness.RocketConfig.fir@251436.4]
  wire  _T_790; // @[RocketCore.scala 1005:53:chipyard.TestHarness.RocketConfig.fir@251439.4]
  wire  _T_845; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@251494.4]
  wire [10:0] _T_844; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@251493.4]
  wire [7:0] _T_842; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@251491.4]
  wire  _T_841; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@251490.4]
  wire [31:0] _T_849; // @[RocketCore.scala 1019:53:chipyard.TestHarness.RocketConfig.fir@251498.4]
  wire [7:0] _T_904; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@251553.4]
  wire  _T_903; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@251552.4]
  wire [31:0] _T_911; // @[RocketCore.scala 1019:53:chipyard.TestHarness.RocketConfig.fir@251560.4]
  wire [3:0] _T_912; // @[RocketCore.scala 504:8:chipyard.TestHarness.RocketConfig.fir@251561.4]
  wire [31:0] _T_913; // @[RocketCore.scala 503:8:chipyard.TestHarness.RocketConfig.fir@251562.4]
  wire [31:0] _T_914; // @[RocketCore.scala 502:8:chipyard.TestHarness.RocketConfig.fir@251563.4]
  wire [39:0] _GEN_248; // @[RocketCore.scala 501:41:chipyard.TestHarness.RocketConfig.fir@251564.4]
  wire [39:0] mem_br_target; // @[RocketCore.scala 501:41:chipyard.TestHarness.RocketConfig.fir@251566.4]
  wire [39:0] _T_928; // @[RocketCore.scala 505:21:chipyard.TestHarness.RocketConfig.fir@251580.4]
  wire [39:0] mem_npc; // @[RocketCore.scala 505:141:chipyard.TestHarness.RocketConfig.fir@251583.4]
  wire  _T_931; // @[RocketCore.scala 507:30:chipyard.TestHarness.RocketConfig.fir@251584.4]
  wire  _T_932; // @[RocketCore.scala 508:31:chipyard.TestHarness.RocketConfig.fir@251585.4]
  wire  _T_933; // @[RocketCore.scala 508:62:chipyard.TestHarness.RocketConfig.fir@251586.4]
  wire  _T_934; // @[RocketCore.scala 508:8:chipyard.TestHarness.RocketConfig.fir@251587.4]
  wire  mem_wrong_npc; // @[RocketCore.scala 507:8:chipyard.TestHarness.RocketConfig.fir@251588.4]
  wire  _T_950; // @[RocketCore.scala 515:54:chipyard.TestHarness.RocketConfig.fir@251609.4]
  wire  take_pc_mem; // @[RocketCore.scala 515:32:chipyard.TestHarness.RocketConfig.fir@251610.4]
  wire  take_pc_mem_wb; // @[RocketCore.scala 244:35:chipyard.TestHarness.RocketConfig.fir@250444.4]
  wire [31:0] _T; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250453.4]
  wire  _T_1; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250454.4]
  wire [31:0] _T_2; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250455.4]
  wire  _T_3; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250456.4]
  wire [31:0] _T_4; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250457.4]
  wire  _T_5; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250458.4]
  wire [31:0] _T_6; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250459.4]
  wire  _T_7; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250460.4]
  wire [31:0] _T_8; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250461.4]
  wire  _T_9; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250462.4]
  wire [31:0] _T_10; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250463.4]
  wire  _T_11; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250464.4]
  wire [31:0] _T_12; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250465.4]
  wire  _T_13; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250466.4]
  wire [31:0] _T_14; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250467.4]
  wire  _T_15; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250468.4]
  wire [31:0] _T_16; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250469.4]
  wire  _T_17; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250470.4]
  wire [31:0] _T_18; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250471.4]
  wire  _T_19; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250472.4]
  wire [31:0] _T_20; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250473.4]
  wire  _T_21; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250474.4]
  wire [31:0] _T_22; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250475.4]
  wire  _T_23; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250476.4]
  wire [31:0] _T_24; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250477.4]
  wire  _T_25; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250478.4]
  wire [31:0] _T_26; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250479.4]
  wire  _T_27; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250480.4]
  wire [31:0] _T_28; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250481.4]
  wire  _T_29; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250482.4]
  wire  _T_31; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250484.4]
  wire [31:0] _T_32; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250485.4]
  wire  _T_33; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250486.4]
  wire  _T_35; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250488.4]
  wire [31:0] _T_36; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250489.4]
  wire  _T_37; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250490.4]
  wire [31:0] _T_38; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250491.4]
  wire  _T_39; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250492.4]
  wire  _T_41; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250494.4]
  wire [31:0] _T_42; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250495.4]
  wire  _T_43; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250496.4]
  wire [31:0] _T_44; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250497.4]
  wire  _T_45; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250498.4]
  wire [31:0] _T_46; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250499.4]
  wire  _T_47; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250500.4]
  wire [31:0] _T_48; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250501.4]
  wire  _T_49; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250502.4]
  wire  _T_51; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250504.4]
  wire [31:0] _T_52; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250505.4]
  wire  _T_53; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250506.4]
  wire [31:0] _T_54; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250507.4]
  wire  _T_55; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250508.4]
  wire [31:0] _T_56; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250509.4]
  wire  _T_57; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250510.4]
  wire [31:0] _T_58; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250511.4]
  wire  _T_59; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250512.4]
  wire [31:0] _T_60; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250513.4]
  wire  _T_61; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250514.4]
  wire  _T_63; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250516.4]
  wire [31:0] _T_64; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250517.4]
  wire  _T_65; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250518.4]
  wire  _T_66; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250519.4]
  wire [31:0] _T_67; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250520.4]
  wire  _T_68; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250521.4]
  wire [31:0] _T_69; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250522.4]
  wire  _T_70; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250523.4]
  wire [31:0] _T_71; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250524.4]
  wire  _T_72; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250525.4]
  wire [31:0] _T_73; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250526.4]
  wire  _T_74; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250527.4]
  wire [31:0] _T_75; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250528.4]
  wire  _T_76; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250529.4]
  wire [31:0] _T_77; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250530.4]
  wire  _T_78; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250531.4]
  wire [31:0] _T_79; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250532.4]
  wire  _T_80; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250533.4]
  wire  _T_82; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250535.4]
  wire  _T_83; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250536.4]
  wire  _T_84; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250537.4]
  wire  _T_85; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250538.4]
  wire  _T_86; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250539.4]
  wire  _T_87; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250540.4]
  wire  _T_88; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250541.4]
  wire  _T_89; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250542.4]
  wire  _T_90; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250543.4]
  wire  _T_91; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250544.4]
  wire  _T_92; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250545.4]
  wire  _T_93; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250546.4]
  wire  _T_94; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250547.4]
  wire  _T_95; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250548.4]
  wire  _T_96; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250549.4]
  wire  _T_97; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250550.4]
  wire  _T_98; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250551.4]
  wire  _T_99; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250552.4]
  wire  _T_100; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250553.4]
  wire  _T_101; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250554.4]
  wire  _T_102; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250555.4]
  wire  _T_103; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250556.4]
  wire  _T_104; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250557.4]
  wire  _T_105; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250558.4]
  wire  _T_106; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250559.4]
  wire  _T_107; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250560.4]
  wire  _T_108; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250561.4]
  wire  _T_109; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250562.4]
  wire  _T_110; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250563.4]
  wire  _T_111; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250564.4]
  wire  _T_112; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250565.4]
  wire  _T_113; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250566.4]
  wire  _T_114; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250567.4]
  wire  _T_115; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250568.4]
  wire  _T_116; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250569.4]
  wire  _T_117; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250570.4]
  wire  _T_118; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250571.4]
  wire  _T_119; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250572.4]
  wire  _T_120; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250573.4]
  wire  id_ctrl_legal; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250574.4]
  wire [31:0] _T_122; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250575.4]
  wire  _T_123; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250576.4]
  wire [31:0] _T_124; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250577.4]
  wire  _T_125; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250578.4]
  wire  id_ctrl_fp; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250580.4]
  wire [31:0] _T_128; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250581.4]
  wire  id_ctrl_branch; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250582.4]
  wire [31:0] _T_131; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250584.4]
  wire  id_ctrl_jal; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250585.4]
  wire [31:0] _T_134; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250587.4]
  wire  id_ctrl_jalr; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250588.4]
  wire [31:0] _T_137; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250590.4]
  wire  _T_138; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250591.4]
  wire [31:0] _T_139; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250592.4]
  wire  _T_140; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250593.4]
  wire [31:0] _T_141; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250594.4]
  wire  _T_142; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250595.4]
  wire [31:0] _T_143; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250596.4]
  wire  _T_144; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250597.4]
  wire  _T_146; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250599.4]
  wire  _T_147; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250600.4]
  wire  id_ctrl_rxs2; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250601.4]
  wire [31:0] _T_149; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250602.4]
  wire  _T_150; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250603.4]
  wire [31:0] _T_151; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250604.4]
  wire  _T_152; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250605.4]
  wire [31:0] _T_153; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250606.4]
  wire  _T_154; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250607.4]
  wire [31:0] _T_155; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250608.4]
  wire  _T_156; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250609.4]
  wire [31:0] _T_157; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250610.4]
  wire  _T_158; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250611.4]
  wire  _T_160; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250613.4]
  wire  _T_161; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250614.4]
  wire  _T_162; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250615.4]
  wire  id_ctrl_rxs1; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250616.4]
  wire [31:0] _T_164; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250617.4]
  wire  _T_165; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250618.4]
  wire [31:0] _T_166; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250619.4]
  wire  _T_167; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250620.4]
  wire [31:0] _T_168; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250621.4]
  wire  _T_169; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250622.4]
  wire [31:0] _T_170; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250623.4]
  wire  _T_171; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250624.4]
  wire [31:0] _T_172; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250625.4]
  wire  _T_173; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250626.4]
  wire  _T_175; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250628.4]
  wire  _T_176; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250629.4]
  wire  _T_177; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250630.4]
  wire  _T_178; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250631.4]
  wire  _T_180; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250633.4]
  wire [31:0] _T_181; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250634.4]
  wire  _T_182; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250635.4]
  wire [31:0] _T_183; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250636.4]
  wire  _T_184; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250637.4]
  wire  _T_186; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250639.4]
  wire  _T_187; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250640.4]
  wire  _T_188; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250641.4]
  wire [1:0] id_ctrl_sel_alu2; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@250642.4]
  wire [31:0] _T_190; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250643.4]
  wire  _T_191; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250644.4]
  wire [31:0] _T_192; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250645.4]
  wire  _T_193; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250646.4]
  wire [31:0] _T_194; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250647.4]
  wire  _T_195; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250648.4]
  wire  _T_197; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250650.4]
  wire  _T_198; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250651.4]
  wire  _T_199; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250652.4]
  wire  _T_200; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250653.4]
  wire  _T_202; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250655.4]
  wire  _T_204; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250657.4]
  wire [1:0] id_ctrl_sel_alu1; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@250658.4]
  wire  _T_207; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250660.4]
  wire  _T_209; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250662.4]
  wire  _T_211; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250664.4]
  wire [31:0] _T_212; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250665.4]
  wire  _T_213; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250666.4]
  wire  _T_215; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250668.4]
  wire [31:0] _T_216; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250669.4]
  wire  _T_217; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250670.4]
  wire [31:0] _T_218; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250671.4]
  wire  _T_219; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250672.4]
  wire  _T_221; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250674.4]
  wire  _T_223; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250676.4]
  wire  _T_224; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250677.4]
  wire [2:0] id_ctrl_sel_imm; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@250679.4]
  wire [31:0] _T_227; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250680.4]
  wire  _T_228; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250681.4]
  wire [31:0] _T_229; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250682.4]
  wire  _T_230; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250683.4]
  wire  id_ctrl_alu_dw; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250685.4]
  wire [31:0] _T_233; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250686.4]
  wire  _T_234; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250687.4]
  wire [31:0] _T_235; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250688.4]
  wire  _T_236; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250689.4]
  wire [31:0] _T_237; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250690.4]
  wire  _T_238; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250691.4]
  wire [31:0] _T_239; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250692.4]
  wire  _T_240; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250693.4]
  wire  _T_242; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250695.4]
  wire  _T_243; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250696.4]
  wire  _T_244; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250697.4]
  wire [31:0] _T_245; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250698.4]
  wire  _T_246; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250699.4]
  wire [31:0] _T_247; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250700.4]
  wire  _T_248; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250701.4]
  wire  _T_250; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250703.4]
  wire [31:0] _T_251; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250704.4]
  wire  _T_252; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250705.4]
  wire [31:0] _T_253; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250706.4]
  wire  _T_254; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250707.4]
  wire [31:0] _T_255; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250708.4]
  wire  _T_256; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250709.4]
  wire [31:0] _T_257; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250710.4]
  wire  _T_258; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250711.4]
  wire  _T_260; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250713.4]
  wire  _T_261; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250714.4]
  wire  _T_262; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250715.4]
  wire  _T_263; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250716.4]
  wire  _T_264; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250717.4]
  wire  _T_265; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250718.4]
  wire [31:0] _T_266; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250719.4]
  wire  _T_267; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250720.4]
  wire [31:0] _T_268; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250721.4]
  wire  _T_269; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250722.4]
  wire [31:0] _T_270; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250723.4]
  wire  _T_271; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250724.4]
  wire [31:0] _T_272; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250725.4]
  wire  _T_273; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250726.4]
  wire [31:0] _T_274; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250727.4]
  wire  _T_275; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250728.4]
  wire  _T_277; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250730.4]
  wire  _T_278; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250731.4]
  wire  _T_279; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250732.4]
  wire  _T_280; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250733.4]
  wire [31:0] _T_281; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250734.4]
  wire  _T_282; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250735.4]
  wire [31:0] _T_283; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250736.4]
  wire  _T_284; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250737.4]
  wire [31:0] _T_285; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250738.4]
  wire  _T_286; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250739.4]
  wire  _T_288; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250741.4]
  wire  _T_289; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250742.4]
  wire  _T_290; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250743.4]
  wire  _T_291; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250744.4]
  wire [3:0] id_ctrl_alu_fn; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@250747.4]
  wire [31:0] _T_295; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250748.4]
  wire  _T_296; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250749.4]
  wire  _T_298; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250751.4]
  wire  _T_299; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250752.4]
  wire  _T_300; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250753.4]
  wire  _T_301; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250754.4]
  wire  _T_302; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250755.4]
  wire  _T_303; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250756.4]
  wire  id_ctrl_mem; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250757.4]
  wire  _T_306; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250759.4]
  wire [31:0] _T_307; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250760.4]
  wire  _T_308; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250761.4]
  wire [31:0] _T_309; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250762.4]
  wire  _T_310; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250763.4]
  wire  _T_312; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250765.4]
  wire  _T_313; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250766.4]
  wire [31:0] _T_314; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250767.4]
  wire  _T_315; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250768.4]
  wire [31:0] _T_316; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250769.4]
  wire  _T_317; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250770.4]
  wire  _T_319; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250772.4]
  wire [31:0] _T_320; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250773.4]
  wire  _T_321; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250774.4]
  wire [31:0] _T_322; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250775.4]
  wire  _T_323; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250776.4]
  wire [31:0] _T_324; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250777.4]
  wire  _T_325; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250778.4]
  wire  _T_327; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250780.4]
  wire  _T_328; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250781.4]
  wire  _T_329; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250782.4]
  wire [31:0] _T_330; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250783.4]
  wire  _T_331; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250784.4]
  wire [4:0] id_ctrl_mem_cmd; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@250790.4]
  wire [31:0] _T_338; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250791.4]
  wire  _T_339; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250792.4]
  wire [31:0] _T_340; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250793.4]
  wire  _T_341; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250794.4]
  wire [31:0] _T_342; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250795.4]
  wire  id_ctrl_rfs3; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250796.4]
  wire  _T_345; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250798.4]
  wire  id_ctrl_rfs1; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250799.4]
  wire [31:0] _T_347; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250800.4]
  wire  _T_348; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250801.4]
  wire [31:0] _T_349; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250802.4]
  wire  _T_350; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250803.4]
  wire [31:0] _T_351; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250804.4]
  wire  _T_352; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250805.4]
  wire  _T_354; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250807.4]
  wire  _T_355; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250808.4]
  wire  id_ctrl_rfs2; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250809.4]
  wire [31:0] _T_358; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250811.4]
  wire  _T_359; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250812.4]
  wire  _T_361; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250814.4]
  wire  _T_363; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250816.4]
  wire  _T_364; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250817.4]
  wire  id_ctrl_wfd; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250818.4]
  wire [31:0] _T_366; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250819.4]
  wire  id_ctrl_div; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250820.4]
  wire  _T_370; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250823.4]
  wire  _T_372; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250825.4]
  wire [31:0] _T_373; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250826.4]
  wire  _T_374; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250827.4]
  wire [31:0] _T_375; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250828.4]
  wire  _T_376; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250829.4]
  wire [31:0] _T_377; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250830.4]
  wire  _T_378; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250831.4]
  wire [31:0] _T_379; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250832.4]
  wire  _T_380; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250833.4]
  wire [31:0] _T_381; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250834.4]
  wire  _T_382; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250835.4]
  wire  _T_384; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250837.4]
  wire  _T_385; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250838.4]
  wire  _T_386; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250839.4]
  wire  _T_387; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250840.4]
  wire  _T_388; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250841.4]
  wire  id_ctrl_wxd; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250842.4]
  wire [31:0] _T_390; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250843.4]
  wire  _T_391; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250844.4]
  wire [31:0] _T_393; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250846.4]
  wire  _T_394; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250847.4]
  wire [31:0] _T_396; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250849.4]
  wire  _T_397; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250850.4]
  wire [31:0] _T_398; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250851.4]
  wire  _T_399; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250852.4]
  wire [31:0] _T_400; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250853.4]
  wire  _T_401; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250854.4]
  wire  _T_403; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250856.4]
  wire  _T_404; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250857.4]
  wire  _T_405; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250858.4]
  wire  _T_406; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250859.4]
  wire [2:0] id_ctrl_csr; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@250861.4]
  wire [31:0] _T_409; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250862.4]
  wire  id_ctrl_fence_i; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250863.4]
  wire  id_ctrl_fence; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250866.4]
  wire [31:0] _T_415; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250868.4]
  wire  id_ctrl_amo; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250869.4]
  wire [31:0] _T_418; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250871.4]
  wire  _T_419; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250872.4]
  wire [31:0] _T_420; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250873.4]
  wire  _T_421; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250874.4]
  wire [31:0] _T_422; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250875.4]
  wire  _T_423; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250876.4]
  wire  _T_425; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250878.4]
  wire  id_ctrl_dp; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250879.4]
  wire [4:0] id_raddr3; // @[RocketCore.scala 261:72:chipyard.TestHarness.RocketConfig.fir@250908.4]
  wire [4:0] id_raddr2; // @[RocketCore.scala 261:72:chipyard.TestHarness.RocketConfig.fir@250909.4]
  wire [4:0] id_raddr1; // @[RocketCore.scala 261:72:chipyard.TestHarness.RocketConfig.fir@250910.4]
  wire [4:0] id_waddr; // @[RocketCore.scala 261:72:chipyard.TestHarness.RocketConfig.fir@250911.4]
  reg  id_reg_fence; // @[RocketCore.scala 268:25:chipyard.TestHarness.RocketConfig.fir@250914.4]
  reg [31:0] _RAND_94;
  wire  _T_428; // @[RocketCore.scala 990:45:chipyard.TestHarness.RocketConfig.fir@250918.4]
  wire [63:0] _T_433; // @[RocketCore.scala 990:25:chipyard.TestHarness.RocketConfig.fir@250923.4]
  wire [63:0] _T_439; // @[RocketCore.scala 990:25:chipyard.TestHarness.RocketConfig.fir@250932.4]
  wire  _T_506; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@251007.4]
  wire  _T_507; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@251008.4]
  wire  _T_508; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@251009.4]
  wire  _T_509; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@251010.4]
  wire  id_csr_en; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@251011.4]
  wire  id_system_insn; // @[RocketCore.scala 278:36:chipyard.TestHarness.RocketConfig.fir@251012.4]
  wire  id_csr_ren; // @[RocketCore.scala 279:54:chipyard.TestHarness.RocketConfig.fir@251017.4]
  wire  _T_514; // @[RocketCore.scala 281:50:chipyard.TestHarness.RocketConfig.fir@251019.4]
  wire  id_sfence; // @[RocketCore.scala 281:31:chipyard.TestHarness.RocketConfig.fir@251020.4]
  wire  _T_515; // @[RocketCore.scala 282:32:chipyard.TestHarness.RocketConfig.fir@251021.4]
  wire  _T_516; // @[RocketCore.scala 282:67:chipyard.TestHarness.RocketConfig.fir@251022.4]
  wire  _T_517; // @[RocketCore.scala 282:64:chipyard.TestHarness.RocketConfig.fir@251023.4]
  wire  _T_518; // @[RocketCore.scala 282:79:chipyard.TestHarness.RocketConfig.fir@251024.4]
  wire  id_csr_flush; // @[RocketCore.scala 282:50:chipyard.TestHarness.RocketConfig.fir@251025.4]
  wire  _T_519; // @[RocketCore.scala 290:25:chipyard.TestHarness.RocketConfig.fir@251028.4]
  wire  _T_522; // @[RocketCore.scala 291:37:chipyard.TestHarness.RocketConfig.fir@251031.4]
  wire  _T_523; // @[RocketCore.scala 291:34:chipyard.TestHarness.RocketConfig.fir@251032.4]
  wire  _T_524; // @[RocketCore.scala 290:40:chipyard.TestHarness.RocketConfig.fir@251033.4]
  wire  _T_526; // @[RocketCore.scala 292:20:chipyard.TestHarness.RocketConfig.fir@251035.4]
  wire  _T_527; // @[RocketCore.scala 292:17:chipyard.TestHarness.RocketConfig.fir@251036.4]
  wire  _T_528; // @[RocketCore.scala 291:65:chipyard.TestHarness.RocketConfig.fir@251037.4]
  wire  _T_529; // @[RocketCore.scala 293:48:chipyard.TestHarness.RocketConfig.fir@251038.4]
  wire  _T_530; // @[RocketCore.scala 293:16:chipyard.TestHarness.RocketConfig.fir@251039.4]
  wire  _T_531; // @[RocketCore.scala 292:48:chipyard.TestHarness.RocketConfig.fir@251040.4]
  wire  _T_533; // @[RocketCore.scala 294:19:chipyard.TestHarness.RocketConfig.fir@251042.4]
  wire  _T_534; // @[RocketCore.scala 294:16:chipyard.TestHarness.RocketConfig.fir@251043.4]
  wire  _T_535; // @[RocketCore.scala 293:70:chipyard.TestHarness.RocketConfig.fir@251044.4]
  wire  _T_537; // @[RocketCore.scala 295:33:chipyard.TestHarness.RocketConfig.fir@251046.4]
  wire  _T_538; // @[RocketCore.scala 295:30:chipyard.TestHarness.RocketConfig.fir@251047.4]
  wire  _T_539; // @[RocketCore.scala 294:47:chipyard.TestHarness.RocketConfig.fir@251048.4]
  wire  _T_559; // @[RocketCore.scala 301:64:chipyard.TestHarness.RocketConfig.fir@251068.4]
  wire  _T_560; // @[RocketCore.scala 301:49:chipyard.TestHarness.RocketConfig.fir@251069.4]
  wire  _T_561; // @[RocketCore.scala 301:15:chipyard.TestHarness.RocketConfig.fir@251070.4]
  wire  _T_562; // @[RocketCore.scala 300:81:chipyard.TestHarness.RocketConfig.fir@251071.4]
  wire  _T_563; // @[RocketCore.scala 302:5:chipyard.TestHarness.RocketConfig.fir@251072.4]
  wire  _T_565; // @[RocketCore.scala 302:65:chipyard.TestHarness.RocketConfig.fir@251074.4]
  wire  _T_566; // @[RocketCore.scala 302:31:chipyard.TestHarness.RocketConfig.fir@251075.4]
  wire  id_illegal_insn; // @[RocketCore.scala 301:99:chipyard.TestHarness.RocketConfig.fir@251076.4]
  wire  id_amo_aq; // @[RocketCore.scala 304:29:chipyard.TestHarness.RocketConfig.fir@251077.4]
  wire  id_amo_rl; // @[RocketCore.scala 305:29:chipyard.TestHarness.RocketConfig.fir@251078.4]
  wire [3:0] id_fence_succ; // @[RocketCore.scala 307:33:chipyard.TestHarness.RocketConfig.fir@251080.4]
  wire  _T_567; // @[RocketCore.scala 308:52:chipyard.TestHarness.RocketConfig.fir@251081.4]
  wire  id_fence_next; // @[RocketCore.scala 308:37:chipyard.TestHarness.RocketConfig.fir@251082.4]
  wire  _T_568; // @[RocketCore.scala 309:21:chipyard.TestHarness.RocketConfig.fir@251083.4]
  wire  id_mem_busy; // @[RocketCore.scala 309:38:chipyard.TestHarness.RocketConfig.fir@251084.4]
  wire  _T_569; // @[RocketCore.scala 310:9:chipyard.TestHarness.RocketConfig.fir@251085.4]
  wire  _GEN_0; // @[RocketCore.scala 310:23:chipyard.TestHarness.RocketConfig.fir@251086.4]
  wire  _T_577; // @[RocketCore.scala 315:33:chipyard.TestHarness.RocketConfig.fir@251097.4]
  wire  _T_578; // @[RocketCore.scala 315:46:chipyard.TestHarness.RocketConfig.fir@251098.4]
  wire  _T_580; // @[RocketCore.scala 315:81:chipyard.TestHarness.RocketConfig.fir@251100.4]
  wire  _T_581; // @[RocketCore.scala 315:65:chipyard.TestHarness.RocketConfig.fir@251101.4]
  wire  id_do_fence; // @[RocketCore.scala 315:17:chipyard.TestHarness.RocketConfig.fir@251102.4]
  wire  _T_584; // @[RocketCore.scala 943:26:chipyard.TestHarness.RocketConfig.fir@251115.4]
  wire  _T_585; // @[RocketCore.scala 943:26:chipyard.TestHarness.RocketConfig.fir@251116.4]
  wire  _T_586; // @[RocketCore.scala 943:26:chipyard.TestHarness.RocketConfig.fir@251117.4]
  wire  _T_587; // @[RocketCore.scala 943:26:chipyard.TestHarness.RocketConfig.fir@251118.4]
  wire  _T_588; // @[RocketCore.scala 943:26:chipyard.TestHarness.RocketConfig.fir@251119.4]
  wire  _T_589; // @[RocketCore.scala 943:26:chipyard.TestHarness.RocketConfig.fir@251120.4]
  wire  id_xcpt; // @[RocketCore.scala 943:26:chipyard.TestHarness.RocketConfig.fir@251121.4]
  wire [1:0] _T_590; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@251122.4]
  wire [3:0] _T_591; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@251123.4]
  wire [3:0] _T_592; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@251124.4]
  wire [3:0] _T_593; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@251125.4]
  wire [3:0] _T_594; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@251126.4]
  wire [3:0] _T_595; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@251127.4]
  wire [4:0] ex_waddr; // @[RocketCore.scala 351:29:chipyard.TestHarness.RocketConfig.fir@251140.4]
  wire [4:0] mem_waddr; // @[RocketCore.scala 352:31:chipyard.TestHarness.RocketConfig.fir@251142.4]
  wire [4:0] wb_waddr; // @[RocketCore.scala 353:29:chipyard.TestHarness.RocketConfig.fir@251144.4]
  wire  _T_609; // @[RocketCore.scala 356:19:chipyard.TestHarness.RocketConfig.fir@251146.4]
  wire  _T_610; // @[RocketCore.scala 357:20:chipyard.TestHarness.RocketConfig.fir@251147.4]
  wire  _T_611; // @[RocketCore.scala 357:39:chipyard.TestHarness.RocketConfig.fir@251148.4]
  wire  _T_612; // @[RocketCore.scala 357:36:chipyard.TestHarness.RocketConfig.fir@251149.4]
  wire  id_bypass_src_0_0; // @[RocketCore.scala 359:82:chipyard.TestHarness.RocketConfig.fir@251151.4]
  wire  _T_615; // @[RocketCore.scala 359:82:chipyard.TestHarness.RocketConfig.fir@251153.4]
  wire  id_bypass_src_0_1; // @[RocketCore.scala 359:74:chipyard.TestHarness.RocketConfig.fir@251154.4]
  wire  _T_616; // @[RocketCore.scala 359:82:chipyard.TestHarness.RocketConfig.fir@251155.4]
  wire  id_bypass_src_0_2; // @[RocketCore.scala 359:74:chipyard.TestHarness.RocketConfig.fir@251156.4]
  wire  id_bypass_src_0_3; // @[RocketCore.scala 359:74:chipyard.TestHarness.RocketConfig.fir@251158.4]
  wire  id_bypass_src_1_0; // @[RocketCore.scala 359:82:chipyard.TestHarness.RocketConfig.fir@251159.4]
  wire  _T_619; // @[RocketCore.scala 359:82:chipyard.TestHarness.RocketConfig.fir@251161.4]
  wire  id_bypass_src_1_1; // @[RocketCore.scala 359:74:chipyard.TestHarness.RocketConfig.fir@251162.4]
  wire  _T_620; // @[RocketCore.scala 359:82:chipyard.TestHarness.RocketConfig.fir@251163.4]
  wire  id_bypass_src_1_2; // @[RocketCore.scala 359:74:chipyard.TestHarness.RocketConfig.fir@251164.4]
  wire  id_bypass_src_1_3; // @[RocketCore.scala 359:74:chipyard.TestHarness.RocketConfig.fir@251166.4]
  reg  ex_reg_rs_bypass_0; // @[RocketCore.scala 363:29:chipyard.TestHarness.RocketConfig.fir@251167.4]
  reg [31:0] _RAND_95;
  reg  ex_reg_rs_bypass_1; // @[RocketCore.scala 363:29:chipyard.TestHarness.RocketConfig.fir@251167.4]
  reg [31:0] _RAND_96;
  reg [1:0] ex_reg_rs_lsb_0; // @[RocketCore.scala 364:26:chipyard.TestHarness.RocketConfig.fir@251168.4]
  reg [31:0] _RAND_97;
  reg [1:0] ex_reg_rs_lsb_1; // @[RocketCore.scala 364:26:chipyard.TestHarness.RocketConfig.fir@251168.4]
  reg [31:0] _RAND_98;
  reg [61:0] ex_reg_rs_msb_0; // @[RocketCore.scala 365:26:chipyard.TestHarness.RocketConfig.fir@251169.4]
  reg [63:0] _RAND_99;
  reg [61:0] ex_reg_rs_msb_1; // @[RocketCore.scala 365:26:chipyard.TestHarness.RocketConfig.fir@251169.4]
  reg [63:0] _RAND_100;
  wire  _T_622; // @[package.scala 32:86:chipyard.TestHarness.RocketConfig.fir@251170.4]
  wire [63:0] _T_623; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@251171.4]
  wire  _T_624; // @[package.scala 32:86:chipyard.TestHarness.RocketConfig.fir@251172.4]
  wire [63:0] _T_625; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@251173.4]
  wire  _T_626; // @[package.scala 32:86:chipyard.TestHarness.RocketConfig.fir@251174.4]
  wire [63:0] _T_627; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@251175.4]
  wire [63:0] _T_628; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@251176.4]
  wire  _T_629; // @[package.scala 32:86:chipyard.TestHarness.RocketConfig.fir@251178.4]
  wire [63:0] _T_630; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@251179.4]
  wire  _T_631; // @[package.scala 32:86:chipyard.TestHarness.RocketConfig.fir@251180.4]
  wire [63:0] _T_632; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@251181.4]
  wire  _T_633; // @[package.scala 32:86:chipyard.TestHarness.RocketConfig.fir@251182.4]
  wire [63:0] _T_634; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@251183.4]
  wire [63:0] _T_635; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@251184.4]
  wire [63:0] ex_rs_1; // @[RocketCore.scala 367:14:chipyard.TestHarness.RocketConfig.fir@251185.4]
  wire  _T_636; // @[RocketCore.scala 1005:24:chipyard.TestHarness.RocketConfig.fir@251186.4]
  wire  _T_638; // @[RocketCore.scala 1005:53:chipyard.TestHarness.RocketConfig.fir@251188.4]
  wire  _T_639; // @[RocketCore.scala 1005:19:chipyard.TestHarness.RocketConfig.fir@251189.4]
  wire  _T_640; // @[RocketCore.scala 1006:26:chipyard.TestHarness.RocketConfig.fir@251190.4]
  wire [10:0] _T_642; // @[RocketCore.scala 1006:49:chipyard.TestHarness.RocketConfig.fir@251192.4]
  wire  _T_644; // @[RocketCore.scala 1007:26:chipyard.TestHarness.RocketConfig.fir@251194.4]
  wire  _T_645; // @[RocketCore.scala 1007:43:chipyard.TestHarness.RocketConfig.fir@251195.4]
  wire  _T_646; // @[RocketCore.scala 1007:36:chipyard.TestHarness.RocketConfig.fir@251196.4]
  wire [7:0] _T_648; // @[RocketCore.scala 1007:73:chipyard.TestHarness.RocketConfig.fir@251198.4]
  wire  _T_652; // @[RocketCore.scala 1008:33:chipyard.TestHarness.RocketConfig.fir@251202.4]
  wire  _T_653; // @[RocketCore.scala 1009:23:chipyard.TestHarness.RocketConfig.fir@251203.4]
  wire  _T_655; // @[RocketCore.scala 1009:44:chipyard.TestHarness.RocketConfig.fir@251205.4]
  wire  _T_656; // @[RocketCore.scala 1010:23:chipyard.TestHarness.RocketConfig.fir@251206.4]
  wire  _T_658; // @[RocketCore.scala 1010:43:chipyard.TestHarness.RocketConfig.fir@251208.4]
  wire  _T_659; // @[RocketCore.scala 1010:18:chipyard.TestHarness.RocketConfig.fir@251209.4]
  wire  _T_660; // @[RocketCore.scala 1009:18:chipyard.TestHarness.RocketConfig.fir@251210.4]
  wire [5:0] _T_666; // @[RocketCore.scala 1011:20:chipyard.TestHarness.RocketConfig.fir@251216.4]
  wire  _T_668; // @[RocketCore.scala 1013:24:chipyard.TestHarness.RocketConfig.fir@251218.4]
  wire  _T_670; // @[RocketCore.scala 1013:34:chipyard.TestHarness.RocketConfig.fir@251220.4]
  wire [3:0] _T_675; // @[RocketCore.scala 1014:19:chipyard.TestHarness.RocketConfig.fir@251225.4]
  wire [3:0] _T_676; // @[RocketCore.scala 1013:19:chipyard.TestHarness.RocketConfig.fir@251226.4]
  wire [3:0] _T_677; // @[RocketCore.scala 1012:19:chipyard.TestHarness.RocketConfig.fir@251227.4]
  wire  _T_680; // @[RocketCore.scala 1016:22:chipyard.TestHarness.RocketConfig.fir@251230.4]
  wire  _T_684; // @[RocketCore.scala 1017:17:chipyard.TestHarness.RocketConfig.fir@251234.4]
  wire  _T_685; // @[RocketCore.scala 1016:17:chipyard.TestHarness.RocketConfig.fir@251235.4]
  wire  _T_686; // @[RocketCore.scala 1015:17:chipyard.TestHarness.RocketConfig.fir@251236.4]
  wire  _T_689; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@251239.4]
  wire [7:0] _T_690; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@251240.4]
  wire [10:0] _T_692; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@251242.4]
  wire  _T_693; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@251243.4]
  wire [31:0] ex_imm; // @[RocketCore.scala 1019:53:chipyard.TestHarness.RocketConfig.fir@251247.4]
  wire [63:0] _T_697; // @[RocketCore.scala 370:24:chipyard.TestHarness.RocketConfig.fir@251248.4]
  wire [39:0] _T_698; // @[RocketCore.scala 371:24:chipyard.TestHarness.RocketConfig.fir@251249.4]
  wire  _T_699; // @[Mux.scala 80:60:chipyard.TestHarness.RocketConfig.fir@251250.4]
  wire [63:0] _T_700; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@251251.4]
  wire  _T_701; // @[Mux.scala 80:60:chipyard.TestHarness.RocketConfig.fir@251252.4]
  wire [63:0] _T_702; // @[RocketCore.scala 373:24:chipyard.TestHarness.RocketConfig.fir@251254.4]
  wire [3:0] _T_703; // @[RocketCore.scala 375:19:chipyard.TestHarness.RocketConfig.fir@251255.4]
  wire  _T_704; // @[Mux.scala 80:60:chipyard.TestHarness.RocketConfig.fir@251256.4]
  wire [63:0] _T_705; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@251257.4]
  wire  _T_706; // @[Mux.scala 80:60:chipyard.TestHarness.RocketConfig.fir@251258.4]
  wire [63:0] _T_707; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@251259.4]
  wire  _T_708; // @[Mux.scala 80:60:chipyard.TestHarness.RocketConfig.fir@251260.4]
  wire  _T_1373; // @[RocketCore.scala 774:17:chipyard.TestHarness.RocketConfig.fir@252210.4]
  wire  _T_1374; // @[RocketCore.scala 774:40:chipyard.TestHarness.RocketConfig.fir@252211.4]
  wire  _T_1375; // @[RocketCore.scala 774:71:chipyard.TestHarness.RocketConfig.fir@252212.4]
  wire  _T_1179; // @[RocketCore.scala 704:55:chipyard.TestHarness.RocketConfig.fir@251980.4]
  wire  _T_1180; // @[RocketCore.scala 704:42:chipyard.TestHarness.RocketConfig.fir@251981.4]
  wire  _T_1227; // @[RocketCore.scala 724:70:chipyard.TestHarness.RocketConfig.fir@252036.4]
  wire  _T_1228; // @[RocketCore.scala 952:27:chipyard.TestHarness.RocketConfig.fir@252037.4]
  wire  _T_1181; // @[RocketCore.scala 705:55:chipyard.TestHarness.RocketConfig.fir@251982.4]
  wire  _T_1182; // @[RocketCore.scala 705:42:chipyard.TestHarness.RocketConfig.fir@251983.4]
  wire  _T_1229; // @[RocketCore.scala 724:70:chipyard.TestHarness.RocketConfig.fir@252038.4]
  wire  _T_1230; // @[RocketCore.scala 952:27:chipyard.TestHarness.RocketConfig.fir@252039.4]
  wire  _T_1233; // @[RocketCore.scala 952:50:chipyard.TestHarness.RocketConfig.fir@252042.4]
  wire  _T_1183; // @[RocketCore.scala 706:55:chipyard.TestHarness.RocketConfig.fir@251984.4]
  wire  _T_1184; // @[RocketCore.scala 706:42:chipyard.TestHarness.RocketConfig.fir@251985.4]
  wire  _T_1231; // @[RocketCore.scala 724:70:chipyard.TestHarness.RocketConfig.fir@252040.4]
  wire  _T_1232; // @[RocketCore.scala 952:27:chipyard.TestHarness.RocketConfig.fir@252041.4]
  wire  _T_1234; // @[RocketCore.scala 952:50:chipyard.TestHarness.RocketConfig.fir@252043.4]
  wire  data_hazard_ex; // @[RocketCore.scala 724:36:chipyard.TestHarness.RocketConfig.fir@252044.4]
  wire  _T_1220; // @[RocketCore.scala 723:38:chipyard.TestHarness.RocketConfig.fir@252028.4]
  wire  _T_1221; // @[RocketCore.scala 723:48:chipyard.TestHarness.RocketConfig.fir@252029.4]
  wire  _T_1222; // @[RocketCore.scala 723:64:chipyard.TestHarness.RocketConfig.fir@252030.4]
  wire  _T_1224; // @[RocketCore.scala 723:94:chipyard.TestHarness.RocketConfig.fir@252032.4]
  wire  ex_cannot_bypass; // @[RocketCore.scala 723:109:chipyard.TestHarness.RocketConfig.fir@252033.4]
  wire  _T_1246; // @[RocketCore.scala 726:54:chipyard.TestHarness.RocketConfig.fir@252057.4]
  wire  _T_1236; // @[RocketCore.scala 952:27:chipyard.TestHarness.RocketConfig.fir@252046.4]
  wire  _T_1238; // @[RocketCore.scala 952:27:chipyard.TestHarness.RocketConfig.fir@252048.4]
  wire  _T_1243; // @[RocketCore.scala 952:50:chipyard.TestHarness.RocketConfig.fir@252053.4]
  wire  _T_1239; // @[RocketCore.scala 725:76:chipyard.TestHarness.RocketConfig.fir@252049.4]
  wire  _T_1240; // @[RocketCore.scala 952:27:chipyard.TestHarness.RocketConfig.fir@252050.4]
  wire  _T_1244; // @[RocketCore.scala 952:50:chipyard.TestHarness.RocketConfig.fir@252054.4]
  wire  _T_1242; // @[RocketCore.scala 952:27:chipyard.TestHarness.RocketConfig.fir@252052.4]
  wire  _T_1245; // @[RocketCore.scala 952:50:chipyard.TestHarness.RocketConfig.fir@252055.4]
  wire  fp_data_hazard_ex; // @[RocketCore.scala 725:39:chipyard.TestHarness.RocketConfig.fir@252056.4]
  wire  _T_1247; // @[RocketCore.scala 726:74:chipyard.TestHarness.RocketConfig.fir@252058.4]
  wire  id_ex_hazard; // @[RocketCore.scala 726:35:chipyard.TestHarness.RocketConfig.fir@252059.4]
  wire  _T_1254; // @[RocketCore.scala 733:72:chipyard.TestHarness.RocketConfig.fir@252068.4]
  wire  _T_1255; // @[RocketCore.scala 952:27:chipyard.TestHarness.RocketConfig.fir@252069.4]
  wire  _T_1256; // @[RocketCore.scala 733:72:chipyard.TestHarness.RocketConfig.fir@252070.4]
  wire  _T_1257; // @[RocketCore.scala 952:27:chipyard.TestHarness.RocketConfig.fir@252071.4]
  wire  _T_1260; // @[RocketCore.scala 952:50:chipyard.TestHarness.RocketConfig.fir@252074.4]
  wire  _T_1258; // @[RocketCore.scala 733:72:chipyard.TestHarness.RocketConfig.fir@252072.4]
  wire  _T_1259; // @[RocketCore.scala 952:27:chipyard.TestHarness.RocketConfig.fir@252073.4]
  wire  _T_1261; // @[RocketCore.scala 952:50:chipyard.TestHarness.RocketConfig.fir@252075.4]
  wire  data_hazard_mem; // @[RocketCore.scala 733:38:chipyard.TestHarness.RocketConfig.fir@252076.4]
  wire  _T_1248; // @[RocketCore.scala 732:40:chipyard.TestHarness.RocketConfig.fir@252061.4]
  wire  _T_1249; // @[RocketCore.scala 732:66:chipyard.TestHarness.RocketConfig.fir@252062.4]
  wire  _T_1250; // @[RocketCore.scala 732:50:chipyard.TestHarness.RocketConfig.fir@252063.4]
  wire  _T_1252; // @[RocketCore.scala 732:100:chipyard.TestHarness.RocketConfig.fir@252065.4]
  wire  mem_cannot_bypass; // @[RocketCore.scala 732:116:chipyard.TestHarness.RocketConfig.fir@252066.4]
  wire  _T_1273; // @[RocketCore.scala 735:57:chipyard.TestHarness.RocketConfig.fir@252089.4]
  wire  _T_1263; // @[RocketCore.scala 952:27:chipyard.TestHarness.RocketConfig.fir@252078.4]
  wire  _T_1265; // @[RocketCore.scala 952:27:chipyard.TestHarness.RocketConfig.fir@252080.4]
  wire  _T_1270; // @[RocketCore.scala 952:50:chipyard.TestHarness.RocketConfig.fir@252085.4]
  wire  _T_1266; // @[RocketCore.scala 734:78:chipyard.TestHarness.RocketConfig.fir@252081.4]
  wire  _T_1267; // @[RocketCore.scala 952:27:chipyard.TestHarness.RocketConfig.fir@252082.4]
  wire  _T_1271; // @[RocketCore.scala 952:50:chipyard.TestHarness.RocketConfig.fir@252086.4]
  wire  _T_1269; // @[RocketCore.scala 952:27:chipyard.TestHarness.RocketConfig.fir@252084.4]
  wire  _T_1272; // @[RocketCore.scala 952:50:chipyard.TestHarness.RocketConfig.fir@252087.4]
  wire  fp_data_hazard_mem; // @[RocketCore.scala 734:41:chipyard.TestHarness.RocketConfig.fir@252088.4]
  wire  _T_1274; // @[RocketCore.scala 735:78:chipyard.TestHarness.RocketConfig.fir@252090.4]
  wire  id_mem_hazard; // @[RocketCore.scala 735:37:chipyard.TestHarness.RocketConfig.fir@252091.4]
  wire  _T_1344; // @[RocketCore.scala 762:18:chipyard.TestHarness.RocketConfig.fir@252180.4]
  wire  _T_1277; // @[RocketCore.scala 739:70:chipyard.TestHarness.RocketConfig.fir@252095.4]
  wire  _T_1278; // @[RocketCore.scala 952:27:chipyard.TestHarness.RocketConfig.fir@252096.4]
  wire  _T_1279; // @[RocketCore.scala 739:70:chipyard.TestHarness.RocketConfig.fir@252097.4]
  wire  _T_1280; // @[RocketCore.scala 952:27:chipyard.TestHarness.RocketConfig.fir@252098.4]
  wire  _T_1283; // @[RocketCore.scala 952:50:chipyard.TestHarness.RocketConfig.fir@252101.4]
  wire  _T_1281; // @[RocketCore.scala 739:70:chipyard.TestHarness.RocketConfig.fir@252099.4]
  wire  _T_1282; // @[RocketCore.scala 952:27:chipyard.TestHarness.RocketConfig.fir@252100.4]
  wire  _T_1284; // @[RocketCore.scala 952:50:chipyard.TestHarness.RocketConfig.fir@252102.4]
  wire  data_hazard_wb; // @[RocketCore.scala 739:36:chipyard.TestHarness.RocketConfig.fir@252103.4]
  wire  _T_762; // @[RocketCore.scala 483:39:chipyard.TestHarness.RocketConfig.fir@251402.4]
  wire  wb_dcache_miss; // @[RocketCore.scala 483:36:chipyard.TestHarness.RocketConfig.fir@251403.4]
  wire  wb_set_sboard; // @[RocketCore.scala 628:35:chipyard.TestHarness.RocketConfig.fir@251843.4]
  wire  _T_1296; // @[RocketCore.scala 741:54:chipyard.TestHarness.RocketConfig.fir@252116.4]
  wire  _T_1286; // @[RocketCore.scala 952:27:chipyard.TestHarness.RocketConfig.fir@252105.4]
  wire  _T_1288; // @[RocketCore.scala 952:27:chipyard.TestHarness.RocketConfig.fir@252107.4]
  wire  _T_1293; // @[RocketCore.scala 952:50:chipyard.TestHarness.RocketConfig.fir@252112.4]
  wire  _T_1289; // @[RocketCore.scala 740:76:chipyard.TestHarness.RocketConfig.fir@252108.4]
  wire  _T_1290; // @[RocketCore.scala 952:27:chipyard.TestHarness.RocketConfig.fir@252109.4]
  wire  _T_1294; // @[RocketCore.scala 952:50:chipyard.TestHarness.RocketConfig.fir@252113.4]
  wire  _T_1292; // @[RocketCore.scala 952:27:chipyard.TestHarness.RocketConfig.fir@252111.4]
  wire  _T_1295; // @[RocketCore.scala 952:50:chipyard.TestHarness.RocketConfig.fir@252114.4]
  wire  fp_data_hazard_wb; // @[RocketCore.scala 740:39:chipyard.TestHarness.RocketConfig.fir@252115.4]
  wire  _T_1297; // @[RocketCore.scala 741:71:chipyard.TestHarness.RocketConfig.fir@252117.4]
  wire  id_wb_hazard; // @[RocketCore.scala 741:35:chipyard.TestHarness.RocketConfig.fir@252118.4]
  wire  _T_1345; // @[RocketCore.scala 762:35:chipyard.TestHarness.RocketConfig.fir@252181.4]
  reg [31:0] _T_1185; // @[RocketCore.scala 969:25:chipyard.TestHarness.RocketConfig.fir@251986.4]
  reg [31:0] _RAND_101;
  wire [31:0] _T_1187; // @[RocketCore.scala 970:40:chipyard.TestHarness.RocketConfig.fir@251988.4]
  wire [31:0] _T_1193; // @[RocketCore.scala 966:35:chipyard.TestHarness.RocketConfig.fir@251997.4]
  wire  dmem_resp_valid; // @[RocketCore.scala 638:44:chipyard.TestHarness.RocketConfig.fir@251860.4]
  wire  dmem_resp_replay; // @[RocketCore.scala 639:42:chipyard.TestHarness.RocketConfig.fir@251861.4]
  wire  dmem_resp_xpu; // @[RocketCore.scala 635:23:chipyard.TestHarness.RocketConfig.fir@251856.4]
  wire  _T_1123; // @[RocketCore.scala 654:26:chipyard.TestHarness.RocketConfig.fir@251874.4]
  wire  _T_1122; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@251870.4]
  wire  ll_wen; // @[RocketCore.scala 654:44:chipyard.TestHarness.RocketConfig.fir@251875.4]
  wire [4:0] dmem_resp_waddr; // @[RocketCore.scala 637:46:chipyard.TestHarness.RocketConfig.fir@251859.4]
  wire [4:0] ll_waddr; // @[RocketCore.scala 654:44:chipyard.TestHarness.RocketConfig.fir@251875.4]
  wire  _T_1195; // @[RocketCore.scala 716:70:chipyard.TestHarness.RocketConfig.fir@251999.4]
  wire  _T_1196; // @[RocketCore.scala 716:58:chipyard.TestHarness.RocketConfig.fir@252000.4]
  wire  _T_1197; // @[RocketCore.scala 719:80:chipyard.TestHarness.RocketConfig.fir@252001.4]
  wire  _T_1198; // @[RocketCore.scala 719:77:chipyard.TestHarness.RocketConfig.fir@252002.4]
  wire  _T_1199; // @[RocketCore.scala 952:27:chipyard.TestHarness.RocketConfig.fir@252003.4]
  wire [31:0] _T_1200; // @[RocketCore.scala 966:35:chipyard.TestHarness.RocketConfig.fir@252004.4]
  wire  _T_1202; // @[RocketCore.scala 716:70:chipyard.TestHarness.RocketConfig.fir@252006.4]
  wire  _T_1203; // @[RocketCore.scala 716:58:chipyard.TestHarness.RocketConfig.fir@252007.4]
  wire  _T_1204; // @[RocketCore.scala 719:80:chipyard.TestHarness.RocketConfig.fir@252008.4]
  wire  _T_1205; // @[RocketCore.scala 719:77:chipyard.TestHarness.RocketConfig.fir@252009.4]
  wire  _T_1206; // @[RocketCore.scala 952:27:chipyard.TestHarness.RocketConfig.fir@252010.4]
  wire  _T_1214; // @[RocketCore.scala 952:50:chipyard.TestHarness.RocketConfig.fir@252018.4]
  wire [31:0] _T_1207; // @[RocketCore.scala 966:35:chipyard.TestHarness.RocketConfig.fir@252011.4]
  wire  _T_1209; // @[RocketCore.scala 716:70:chipyard.TestHarness.RocketConfig.fir@252013.4]
  wire  _T_1210; // @[RocketCore.scala 716:58:chipyard.TestHarness.RocketConfig.fir@252014.4]
  wire  _T_1211; // @[RocketCore.scala 719:80:chipyard.TestHarness.RocketConfig.fir@252015.4]
  wire  _T_1212; // @[RocketCore.scala 719:77:chipyard.TestHarness.RocketConfig.fir@252016.4]
  wire  _T_1213; // @[RocketCore.scala 952:27:chipyard.TestHarness.RocketConfig.fir@252017.4]
  wire  id_sboard_hazard; // @[RocketCore.scala 952:50:chipyard.TestHarness.RocketConfig.fir@252019.4]
  wire  _T_1346; // @[RocketCore.scala 762:51:chipyard.TestHarness.RocketConfig.fir@252182.4]
  wire  _T_1347; // @[RocketCore.scala 763:40:chipyard.TestHarness.RocketConfig.fir@252183.4]
  wire  _T_1348; // @[RocketCore.scala 763:57:chipyard.TestHarness.RocketConfig.fir@252184.4]
  wire  _T_1349; // @[RocketCore.scala 763:23:chipyard.TestHarness.RocketConfig.fir@252185.4]
  wire  _T_1350; // @[RocketCore.scala 762:71:chipyard.TestHarness.RocketConfig.fir@252186.4]
  wire  _T_1351; // @[RocketCore.scala 764:15:chipyard.TestHarness.RocketConfig.fir@252187.4]
  wire  _T_1352; // @[RocketCore.scala 764:45:chipyard.TestHarness.RocketConfig.fir@252188.4]
  wire  _T_1353; // @[RocketCore.scala 764:42:chipyard.TestHarness.RocketConfig.fir@252189.4]
  wire  _T_1354; // @[RocketCore.scala 763:74:chipyard.TestHarness.RocketConfig.fir@252190.4]
  reg [31:0] _T_1298; // @[RocketCore.scala 969:25:chipyard.TestHarness.RocketConfig.fir@252119.4]
  reg [31:0] _RAND_102;
  wire [31:0] _T_1317; // @[RocketCore.scala 966:35:chipyard.TestHarness.RocketConfig.fir@252147.4]
  wire  _T_1319; // @[RocketCore.scala 952:27:chipyard.TestHarness.RocketConfig.fir@252149.4]
  wire [31:0] _T_1320; // @[RocketCore.scala 966:35:chipyard.TestHarness.RocketConfig.fir@252150.4]
  wire  _T_1322; // @[RocketCore.scala 952:27:chipyard.TestHarness.RocketConfig.fir@252152.4]
  wire  _T_1329; // @[RocketCore.scala 952:50:chipyard.TestHarness.RocketConfig.fir@252159.4]
  wire [31:0] _T_1323; // @[RocketCore.scala 966:35:chipyard.TestHarness.RocketConfig.fir@252153.4]
  wire  _T_1325; // @[RocketCore.scala 952:27:chipyard.TestHarness.RocketConfig.fir@252155.4]
  wire  _T_1330; // @[RocketCore.scala 952:50:chipyard.TestHarness.RocketConfig.fir@252160.4]
  wire [31:0] _T_1326; // @[RocketCore.scala 966:35:chipyard.TestHarness.RocketConfig.fir@252156.4]
  wire  _T_1328; // @[RocketCore.scala 952:27:chipyard.TestHarness.RocketConfig.fir@252158.4]
  wire  id_stall_fpu; // @[RocketCore.scala 952:50:chipyard.TestHarness.RocketConfig.fir@252161.4]
  wire  _T_1355; // @[RocketCore.scala 765:16:chipyard.TestHarness.RocketConfig.fir@252191.4]
  wire  _T_1356; // @[RocketCore.scala 764:62:chipyard.TestHarness.RocketConfig.fir@252192.4]
  reg  blocked; // @[RocketCore.scala 754:22:chipyard.TestHarness.RocketConfig.fir@252162.4]
  reg [31:0] _RAND_103;
  wire  _T_1338; // @[RocketCore.scala 756:16:chipyard.TestHarness.RocketConfig.fir@252171.4]
  wire  dcache_blocked; // @[RocketCore.scala 756:13:chipyard.TestHarness.RocketConfig.fir@252172.4]
  wire  _T_1357; // @[RocketCore.scala 766:17:chipyard.TestHarness.RocketConfig.fir@252193.4]
  wire  _T_1358; // @[RocketCore.scala 765:32:chipyard.TestHarness.RocketConfig.fir@252194.4]
  wire  wb_wxd; // @[RocketCore.scala 627:29:chipyard.TestHarness.RocketConfig.fir@251842.4]
  wire  _T_1361; // @[RocketCore.scala 768:65:chipyard.TestHarness.RocketConfig.fir@252197.4]
  wire  _T_1362; // @[RocketCore.scala 768:62:chipyard.TestHarness.RocketConfig.fir@252198.4]
  wire  _T_1363; // @[RocketCore.scala 768:40:chipyard.TestHarness.RocketConfig.fir@252199.4]
  wire  _T_1364; // @[RocketCore.scala 768:21:chipyard.TestHarness.RocketConfig.fir@252200.4]
  wire  _T_1365; // @[RocketCore.scala 768:75:chipyard.TestHarness.RocketConfig.fir@252201.4]
  wire  _T_1366; // @[RocketCore.scala 768:17:chipyard.TestHarness.RocketConfig.fir@252202.4]
  wire  _T_1367; // @[RocketCore.scala 767:34:chipyard.TestHarness.RocketConfig.fir@252203.4]
  wire  _T_1370; // @[RocketCore.scala 769:15:chipyard.TestHarness.RocketConfig.fir@252206.4]
  wire  _T_1371; // @[RocketCore.scala 770:17:chipyard.TestHarness.RocketConfig.fir@252207.4]
  wire  ctrl_stalld; // @[RocketCore.scala 771:22:chipyard.TestHarness.RocketConfig.fir@252208.4]
  wire  _T_1376; // @[RocketCore.scala 774:89:chipyard.TestHarness.RocketConfig.fir@252213.4]
  wire  ctrl_killd; // @[RocketCore.scala 774:104:chipyard.TestHarness.RocketConfig.fir@252214.4]
  wire  _T_712; // @[RocketCore.scala 415:19:chipyard.TestHarness.RocketConfig.fir@251283.4]
  wire  _T_713; // @[RocketCore.scala 416:20:chipyard.TestHarness.RocketConfig.fir@251285.4]
  wire  _T_714; // @[RocketCore.scala 416:29:chipyard.TestHarness.RocketConfig.fir@251286.4]
  wire  _T_724; // @[RocketCore.scala 426:42:chipyard.TestHarness.RocketConfig.fir@251305.6]
  wire  _T_725; // @[RocketCore.scala 426:25:chipyard.TestHarness.RocketConfig.fir@251306.6]
  wire  _GEN_1; // @[RocketCore.scala 426:49:chipyard.TestHarness.RocketConfig.fir@251307.6]
  wire  _GEN_2; // @[RocketCore.scala 427:26:chipyard.TestHarness.RocketConfig.fir@251310.6]
  wire [1:0] _T_726; // @[RocketCore.scala 433:22:chipyard.TestHarness.RocketConfig.fir@251318.8]
  wire  _T_727; // @[RocketCore.scala 433:29:chipyard.TestHarness.RocketConfig.fir@251319.8]
  wire  _GEN_5; // @[RocketCore.scala 433:34:chipyard.TestHarness.RocketConfig.fir@251320.8]
  wire [1:0] _T_728; // @[RocketCore.scala 438:40:chipyard.TestHarness.RocketConfig.fir@251325.8]
  wire  _T_729; // @[RocketCore.scala 438:47:chipyard.TestHarness.RocketConfig.fir@251326.8]
  wire  _T_730; // @[RocketCore.scala 438:28:chipyard.TestHarness.RocketConfig.fir@251327.8]
  wire  _GEN_9; // @[RocketCore.scala 428:20:chipyard.TestHarness.RocketConfig.fir@251313.6]
  wire  _T_731; // @[RocketCore.scala 443:42:chipyard.TestHarness.RocketConfig.fir@251333.6]
  wire  _T_734; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@251339.6]
  wire  _T_735; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@251340.6]
  wire [1:0] _T_738; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@251344.8]
  wire  _T_739; // @[RocketCore.scala 456:48:chipyard.TestHarness.RocketConfig.fir@251347.6]
  wire  _T_740; // @[RocketCore.scala 456:48:chipyard.TestHarness.RocketConfig.fir@251348.6]
  wire  do_bypass; // @[RocketCore.scala 456:48:chipyard.TestHarness.RocketConfig.fir@251349.6]
  wire  _T_743; // @[RocketCore.scala 460:26:chipyard.TestHarness.RocketConfig.fir@251355.6]
  wire  _T_744; // @[RocketCore.scala 460:23:chipyard.TestHarness.RocketConfig.fir@251356.6]
  wire  _T_1124; // @[RocketCore.scala 662:34:chipyard.TestHarness.RocketConfig.fir@251880.4]
  wire  _T_1125; // @[RocketCore.scala 662:31:chipyard.TestHarness.RocketConfig.fir@251881.4]
  wire  _T_1126; // @[RocketCore.scala 662:48:chipyard.TestHarness.RocketConfig.fir@251882.4]
  wire  wb_valid; // @[RocketCore.scala 662:45:chipyard.TestHarness.RocketConfig.fir@251883.4]
  wire  wb_wen; // @[RocketCore.scala 663:25:chipyard.TestHarness.RocketConfig.fir@251884.4]
  wire  rf_wen; // @[RocketCore.scala 664:23:chipyard.TestHarness.RocketConfig.fir@251885.4]
  wire [4:0] rf_waddr; // @[RocketCore.scala 665:21:chipyard.TestHarness.RocketConfig.fir@251886.4]
  wire  _T_1133; // @[RocketCore.scala 995:16:chipyard.TestHarness.RocketConfig.fir@251895.6]
  wire  _T_1137; // @[RocketCore.scala 998:20:chipyard.TestHarness.RocketConfig.fir@251901.8]
  wire  _T_1127; // @[RocketCore.scala 666:38:chipyard.TestHarness.RocketConfig.fir@251887.4]
  wire [63:0] ll_wdata; // @[:chipyard.TestHarness.RocketConfig.fir@251864.4 :chipyard.TestHarness.RocketConfig.fir@251866.4]
  wire  _T_1129; // @[RocketCore.scala 668:34:chipyard.TestHarness.RocketConfig.fir@251889.4]
  wire [63:0] _T_1131; // @[RocketCore.scala 668:21:chipyard.TestHarness.RocketConfig.fir@251891.4]
  wire [63:0] _T_1132; // @[RocketCore.scala 667:21:chipyard.TestHarness.RocketConfig.fir@251892.4]
  wire [63:0] rf_wdata; // @[RocketCore.scala 666:21:chipyard.TestHarness.RocketConfig.fir@251893.4]
  wire [63:0] _GEN_226; // @[RocketCore.scala 998:31:chipyard.TestHarness.RocketConfig.fir@251902.8]
  wire [63:0] _GEN_233; // @[RocketCore.scala 995:29:chipyard.TestHarness.RocketConfig.fir@251896.6]
  wire [63:0] id_rs_0; // @[RocketCore.scala 671:17:chipyard.TestHarness.RocketConfig.fir@251894.4]
  wire  _T_747; // @[RocketCore.scala 456:48:chipyard.TestHarness.RocketConfig.fir@251363.6]
  wire  _T_748; // @[RocketCore.scala 456:48:chipyard.TestHarness.RocketConfig.fir@251364.6]
  wire  do_bypass_1; // @[RocketCore.scala 456:48:chipyard.TestHarness.RocketConfig.fir@251365.6]
  wire  _T_751; // @[RocketCore.scala 460:26:chipyard.TestHarness.RocketConfig.fir@251371.6]
  wire  _T_752; // @[RocketCore.scala 460:23:chipyard.TestHarness.RocketConfig.fir@251372.6]
  wire  _T_1138; // @[RocketCore.scala 998:20:chipyard.TestHarness.RocketConfig.fir@251905.8]
  wire [63:0] _GEN_227; // @[RocketCore.scala 998:31:chipyard.TestHarness.RocketConfig.fir@251906.8]
  wire [63:0] _GEN_234; // @[RocketCore.scala 995:29:chipyard.TestHarness.RocketConfig.fir@251896.6]
  wire [63:0] id_rs_1; // @[RocketCore.scala 671:17:chipyard.TestHarness.RocketConfig.fir@251894.4]
  wire [31:0] inst; // @[RocketCore.scala 466:21:chipyard.TestHarness.RocketConfig.fir@251381.8]
  wire  _T_1275; // @[RocketCore.scala 736:32:chipyard.TestHarness.RocketConfig.fir@252092.4]
  wire  id_load_use; // @[RocketCore.scala 736:51:chipyard.TestHarness.RocketConfig.fir@252093.4]
  wire  _T_759; // @[RocketCore.scala 472:21:chipyard.TestHarness.RocketConfig.fir@251390.4]
  wire  _T_760; // @[RocketCore.scala 472:41:chipyard.TestHarness.RocketConfig.fir@251391.4]
  wire  _T_763; // @[RocketCore.scala 484:45:chipyard.TestHarness.RocketConfig.fir@251404.4]
  wire  _T_764; // @[RocketCore.scala 484:42:chipyard.TestHarness.RocketConfig.fir@251405.4]
  wire  _T_765; // @[RocketCore.scala 485:45:chipyard.TestHarness.RocketConfig.fir@251406.4]
  wire  _T_766; // @[RocketCore.scala 485:42:chipyard.TestHarness.RocketConfig.fir@251407.4]
  wire  replay_ex_structural; // @[RocketCore.scala 484:64:chipyard.TestHarness.RocketConfig.fir@251408.4]
  wire  replay_ex_load_use; // @[RocketCore.scala 486:43:chipyard.TestHarness.RocketConfig.fir@251409.4]
  wire  _T_767; // @[RocketCore.scala 487:75:chipyard.TestHarness.RocketConfig.fir@251410.4]
  wire  _T_768; // @[RocketCore.scala 487:50:chipyard.TestHarness.RocketConfig.fir@251411.4]
  wire  replay_ex; // @[RocketCore.scala 487:33:chipyard.TestHarness.RocketConfig.fir@251412.4]
  wire  _T_769; // @[RocketCore.scala 488:35:chipyard.TestHarness.RocketConfig.fir@251413.4]
  wire  _T_770; // @[RocketCore.scala 488:51:chipyard.TestHarness.RocketConfig.fir@251414.4]
  wire  ctrl_killx; // @[RocketCore.scala 488:48:chipyard.TestHarness.RocketConfig.fir@251415.4]
  wire  _T_771; // @[RocketCore.scala 490:40:chipyard.TestHarness.RocketConfig.fir@251416.4]
  wire  _T_772; // @[RocketCore.scala 490:69:chipyard.TestHarness.RocketConfig.fir@251417.4]
  wire  ex_slow_bypass; // @[RocketCore.scala 490:50:chipyard.TestHarness.RocketConfig.fir@251418.4]
  wire  _T_774; // @[RocketCore.scala 491:67:chipyard.TestHarness.RocketConfig.fir@251420.4]
  wire  ex_sfence; // @[RocketCore.scala 491:48:chipyard.TestHarness.RocketConfig.fir@251421.4]
  wire  ex_xcpt; // @[RocketCore.scala 494:28:chipyard.TestHarness.RocketConfig.fir@251422.4]
  wire  _T_785; // @[RocketCore.scala 500:36:chipyard.TestHarness.RocketConfig.fir@251433.4]
  wire  mem_pc_valid; // @[RocketCore.scala 500:54:chipyard.TestHarness.RocketConfig.fir@251434.4]
  wire  _T_938; // @[RocketCore.scala 509:56:chipyard.TestHarness.RocketConfig.fir@251592.4]
  wire  _T_939; // @[RocketCore.scala 509:73:chipyard.TestHarness.RocketConfig.fir@251593.4]
  wire  mem_npc_misaligned; // @[RocketCore.scala 509:70:chipyard.TestHarness.RocketConfig.fir@251594.4]
  wire  _T_940; // @[RocketCore.scala 510:27:chipyard.TestHarness.RocketConfig.fir@251595.4]
  wire  _T_941; // @[RocketCore.scala 510:59:chipyard.TestHarness.RocketConfig.fir@251596.4]
  wire  _T_942; // @[RocketCore.scala 510:41:chipyard.TestHarness.RocketConfig.fir@251597.4]
  wire [63:0] mem_int_wdata; // @[RocketCore.scala 510:119:chipyard.TestHarness.RocketConfig.fir@251600.4]
  wire  _T_945; // @[RocketCore.scala 511:33:chipyard.TestHarness.RocketConfig.fir@251601.4]
  wire  mem_cfi; // @[RocketCore.scala 511:50:chipyard.TestHarness.RocketConfig.fir@251602.4]
  wire  _T_947; // @[RocketCore.scala 512:57:chipyard.TestHarness.RocketConfig.fir@251604.4]
  wire  mem_cfi_taken; // @[RocketCore.scala 512:74:chipyard.TestHarness.RocketConfig.fir@251605.4]
  wire  _T_952; // @[RocketCore.scala 517:20:chipyard.TestHarness.RocketConfig.fir@251612.4]
  wire  _T_959; // @[RocketCore.scala 524:23:chipyard.TestHarness.RocketConfig.fir@251623.4]
  wire  _T_960; // @[Consts.scala 82:31:chipyard.TestHarness.RocketConfig.fir@251633.8]
  wire  _T_961; // @[Consts.scala 82:48:chipyard.TestHarness.RocketConfig.fir@251634.8]
  wire  _T_962; // @[Consts.scala 82:41:chipyard.TestHarness.RocketConfig.fir@251635.8]
  wire  _T_964; // @[Consts.scala 82:58:chipyard.TestHarness.RocketConfig.fir@251637.8]
  wire  _T_965; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@251638.8]
  wire  _T_966; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@251639.8]
  wire  _T_967; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@251640.8]
  wire  _T_968; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@251641.8]
  wire  _T_969; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@251642.8]
  wire  _T_970; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@251643.8]
  wire  _T_971; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@251644.8]
  wire  _T_972; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@251645.8]
  wire  _T_973; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@251646.8]
  wire  _T_974; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@251647.8]
  wire  _T_975; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@251648.8]
  wire  _T_976; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@251649.8]
  wire  _T_977; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@251650.8]
  wire  _T_978; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@251651.8]
  wire  _T_979; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@251652.8]
  wire  _T_980; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@251653.8]
  wire  _T_981; // @[Consts.scala 80:44:chipyard.TestHarness.RocketConfig.fir@251654.8]
  wire  _T_982; // @[Consts.scala 82:75:chipyard.TestHarness.RocketConfig.fir@251655.8]
  wire  _T_983; // @[RocketCore.scala 531:33:chipyard.TestHarness.RocketConfig.fir@251656.8]
  wire  _T_984; // @[Consts.scala 83:32:chipyard.TestHarness.RocketConfig.fir@251658.8]
  wire  _T_985; // @[Consts.scala 83:49:chipyard.TestHarness.RocketConfig.fir@251659.8]
  wire  _T_986; // @[Consts.scala 83:42:chipyard.TestHarness.RocketConfig.fir@251660.8]
  wire  _T_988; // @[Consts.scala 83:59:chipyard.TestHarness.RocketConfig.fir@251662.8]
  wire  _T_1006; // @[Consts.scala 83:76:chipyard.TestHarness.RocketConfig.fir@251680.8]
  wire  _T_1007; // @[RocketCore.scala 532:34:chipyard.TestHarness.RocketConfig.fir@251681.8]
  wire [63:0] _T_1008; // @[RocketCore.scala 544:25:chipyard.TestHarness.RocketConfig.fir@251693.8]
  wire  _T_1010; // @[RocketCore.scala 547:56:chipyard.TestHarness.RocketConfig.fir@251697.8]
  wire  _T_1011; // @[RocketCore.scala 547:24:chipyard.TestHarness.RocketConfig.fir@251698.8]
  wire  _T_1013; // @[AMOALU.scala 26:19:chipyard.TestHarness.RocketConfig.fir@251702.10]
  wire [63:0] _T_1017; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@251706.10]
  wire  _T_1018; // @[AMOALU.scala 26:19:chipyard.TestHarness.RocketConfig.fir@251707.10]
  wire [63:0] _T_1021; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@251710.10]
  wire  _T_1022; // @[AMOALU.scala 26:19:chipyard.TestHarness.RocketConfig.fir@251711.10]
  wire [63:0] _T_1024; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@251713.10]
  wire  _T_1028; // @[RocketCore.scala 551:24:chipyard.TestHarness.RocketConfig.fir@251719.8]
  wire  _GEN_77; // @[RocketCore.scala 551:48:chipyard.TestHarness.RocketConfig.fir@251720.8]
  wire  _GEN_78; // @[RocketCore.scala 551:48:chipyard.TestHarness.RocketConfig.fir@251720.8]
  wire  _T_1029; // @[RocketCore.scala 558:38:chipyard.TestHarness.RocketConfig.fir@251725.4]
  wire  _T_1030; // @[RocketCore.scala 558:75:chipyard.TestHarness.RocketConfig.fir@251726.4]
  wire  mem_breakpoint; // @[RocketCore.scala 558:57:chipyard.TestHarness.RocketConfig.fir@251727.4]
  wire  _T_1031; // @[RocketCore.scala 559:44:chipyard.TestHarness.RocketConfig.fir@251728.4]
  wire  _T_1032; // @[RocketCore.scala 559:82:chipyard.TestHarness.RocketConfig.fir@251729.4]
  wire  mem_debug_breakpoint; // @[RocketCore.scala 559:64:chipyard.TestHarness.RocketConfig.fir@251730.4]
  wire  mem_ldst_xcpt; // @[RocketCore.scala 943:26:chipyard.TestHarness.RocketConfig.fir@251731.4]
  wire [3:0] mem_ldst_cause; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@251732.4]
  wire  _T_1033; // @[RocketCore.scala 565:29:chipyard.TestHarness.RocketConfig.fir@251733.4]
  wire  _T_1034; // @[RocketCore.scala 566:20:chipyard.TestHarness.RocketConfig.fir@251734.4]
  wire  _T_1035; // @[RocketCore.scala 567:20:chipyard.TestHarness.RocketConfig.fir@251735.4]
  wire  _T_1036; // @[RocketCore.scala 943:26:chipyard.TestHarness.RocketConfig.fir@251736.4]
  wire  mem_xcpt; // @[RocketCore.scala 943:26:chipyard.TestHarness.RocketConfig.fir@251737.4]
  wire [3:0] _T_1037; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@251738.4]
  wire  dcache_kill_mem; // @[RocketCore.scala 576:55:chipyard.TestHarness.RocketConfig.fir@251753.4]
  wire  _T_1051; // @[RocketCore.scala 577:36:chipyard.TestHarness.RocketConfig.fir@251754.4]
  wire  fpu_kill_mem; // @[RocketCore.scala 577:51:chipyard.TestHarness.RocketConfig.fir@251755.4]
  wire  _T_1052; // @[RocketCore.scala 578:37:chipyard.TestHarness.RocketConfig.fir@251756.4]
  wire  replay_mem; // @[RocketCore.scala 578:55:chipyard.TestHarness.RocketConfig.fir@251757.4]
  wire  _T_1053; // @[RocketCore.scala 579:38:chipyard.TestHarness.RocketConfig.fir@251758.4]
  wire  _T_1054; // @[RocketCore.scala 579:52:chipyard.TestHarness.RocketConfig.fir@251759.4]
  wire  _T_1055; // @[RocketCore.scala 579:71:chipyard.TestHarness.RocketConfig.fir@251760.4]
  wire  killm_common; // @[RocketCore.scala 579:68:chipyard.TestHarness.RocketConfig.fir@251761.4]
  reg  _T_1057; // @[RocketCore.scala 580:37:chipyard.TestHarness.RocketConfig.fir@251763.4]
  reg [31:0] _RAND_104;
  wire  _T_1059; // @[RocketCore.scala 581:33:chipyard.TestHarness.RocketConfig.fir@251767.4]
  wire  ctrl_killm; // @[RocketCore.scala 581:45:chipyard.TestHarness.RocketConfig.fir@251768.4]
  wire  _T_1060; // @[RocketCore.scala 584:19:chipyard.TestHarness.RocketConfig.fir@251769.4]
  wire  _T_1061; // @[RocketCore.scala 585:34:chipyard.TestHarness.RocketConfig.fir@251771.4]
  wire  _T_1068; // @[RocketCore.scala 592:25:chipyard.TestHarness.RocketConfig.fir@251784.6]
  wire  _T_1069; // @[RocketCore.scala 592:40:chipyard.TestHarness.RocketConfig.fir@251785.6]
  wire [2:0] _T_1094; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@251822.4]
  wire [3:0] _T_1095; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@251823.4]
  wire [3:0] _T_1096; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@251824.4]
  wire [3:0] _T_1097; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@251825.4]
  wire [3:0] _T_1098; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@251826.4]
  wire [63:0] wb_cause; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@251827.4]
  wire  _T_1099; // @[RocketCore.scala 947:38:chipyard.TestHarness.RocketConfig.fir@251828.4]
  wire  _T_1101; // @[RocketCore.scala 947:38:chipyard.TestHarness.RocketConfig.fir@251830.4]
  wire  _T_1103; // @[RocketCore.scala 947:38:chipyard.TestHarness.RocketConfig.fir@251832.4]
  wire  _T_1105; // @[RocketCore.scala 947:38:chipyard.TestHarness.RocketConfig.fir@251834.4]
  wire  _T_1107; // @[RocketCore.scala 947:38:chipyard.TestHarness.RocketConfig.fir@251836.4]
  wire  _T_1109; // @[RocketCore.scala 947:38:chipyard.TestHarness.RocketConfig.fir@251838.4]
  wire  _T_1141; // @[RocketCore.scala 679:73:chipyard.TestHarness.RocketConfig.fir@251918.4]
  wire [15:0] _T_1143; // @[RocketCore.scala 679:50:chipyard.TestHarness.RocketConfig.fir@251920.4]
  wire  _T_1146; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@251930.4]
  wire  _T_1147; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@251931.4]
  wire  _T_1152; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@251936.4]
  wire  _T_1155; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@251939.4]
  wire  _T_1156; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@251940.4]
  wire  _T_1157; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@251941.4]
  wire  _T_1158; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@251942.4]
  wire  _T_1159; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@251943.4]
  wire  _T_1160; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@251944.4]
  wire  _T_1161; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@251945.4]
  wire  _T_1162; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@251946.4]
  wire  _T_1163; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@251947.4]
  wire  _T_1164; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@251948.4]
  wire  tval_valid; // @[RocketCore.scala 686:28:chipyard.TestHarness.RocketConfig.fir@251949.4]
  wire [63:0] _T_1165; // @[RocketCore.scala 957:16:chipyard.TestHarness.RocketConfig.fir@251950.4]
  wire [24:0] a_1; // @[RocketCore.scala 957:23:chipyard.TestHarness.RocketConfig.fir@251951.4]
  wire  _T_1166; // @[RocketCore.scala 958:21:chipyard.TestHarness.RocketConfig.fir@251952.4]
  wire  _T_1167; // @[RocketCore.scala 958:34:chipyard.TestHarness.RocketConfig.fir@251953.4]
  wire  _T_1168; // @[RocketCore.scala 958:29:chipyard.TestHarness.RocketConfig.fir@251954.4]
  wire  _T_1171; // @[RocketCore.scala 958:59:chipyard.TestHarness.RocketConfig.fir@251957.4]
  wire  msb_1; // @[RocketCore.scala 958:18:chipyard.TestHarness.RocketConfig.fir@251958.4]
  wire [39:0] _T_1173; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@251960.4]
  wire [2:0] _T_1176; // @[CSR.scala 131:15:chipyard.TestHarness.RocketConfig.fir@251972.4]
  wire [2:0] _T_1177; // @[CSR.scala 131:11:chipyard.TestHarness.RocketConfig.fir@251973.4]
  wire [31:0] _T_1188; // @[RocketCore.scala 973:62:chipyard.TestHarness.RocketConfig.fir@251989.4]
  wire [31:0] _T_1189; // @[RocketCore.scala 973:49:chipyard.TestHarness.RocketConfig.fir@251990.4]
  wire [31:0] _T_1190; // @[RocketCore.scala 965:64:chipyard.TestHarness.RocketConfig.fir@251991.4]
  wire [31:0] _T_1191; // @[RocketCore.scala 965:62:chipyard.TestHarness.RocketConfig.fir@251992.4]
  wire  _T_1215; // @[RocketCore.scala 720:28:chipyard.TestHarness.RocketConfig.fir@252020.4]
  wire [31:0] _T_1216; // @[RocketCore.scala 973:62:chipyard.TestHarness.RocketConfig.fir@252021.4]
  wire [31:0] _T_1217; // @[RocketCore.scala 973:49:chipyard.TestHarness.RocketConfig.fir@252022.4]
  wire [31:0] _T_1218; // @[RocketCore.scala 964:60:chipyard.TestHarness.RocketConfig.fir@252023.4]
  wire  _T_1219; // @[RocketCore.scala 976:17:chipyard.TestHarness.RocketConfig.fir@252024.4]
  wire  _T_1299; // @[RocketCore.scala 745:35:chipyard.TestHarness.RocketConfig.fir@252120.4]
  wire  _T_1300; // @[RocketCore.scala 745:50:chipyard.TestHarness.RocketConfig.fir@252121.4]
  wire  _T_1301; // @[RocketCore.scala 745:72:chipyard.TestHarness.RocketConfig.fir@252122.4]
  wire [31:0] _T_1303; // @[RocketCore.scala 973:49:chipyard.TestHarness.RocketConfig.fir@252124.4]
  wire [31:0] _T_1304; // @[RocketCore.scala 964:60:chipyard.TestHarness.RocketConfig.fir@252125.4]
  wire  _T_1306; // @[RocketCore.scala 746:38:chipyard.TestHarness.RocketConfig.fir@252130.4]
  wire [31:0] _T_1307; // @[RocketCore.scala 973:62:chipyard.TestHarness.RocketConfig.fir@252131.4]
  wire [31:0] _T_1308; // @[RocketCore.scala 973:49:chipyard.TestHarness.RocketConfig.fir@252132.4]
  wire [31:0] _T_1309; // @[RocketCore.scala 965:64:chipyard.TestHarness.RocketConfig.fir@252133.4]
  wire [31:0] _T_1310; // @[RocketCore.scala 965:62:chipyard.TestHarness.RocketConfig.fir@252134.4]
  wire  _T_1311; // @[RocketCore.scala 976:17:chipyard.TestHarness.RocketConfig.fir@252135.4]
  wire [31:0] _T_1312; // @[RocketCore.scala 973:62:chipyard.TestHarness.RocketConfig.fir@252139.4]
  wire [31:0] _T_1313; // @[RocketCore.scala 973:49:chipyard.TestHarness.RocketConfig.fir@252140.4]
  wire [31:0] _T_1314; // @[RocketCore.scala 965:64:chipyard.TestHarness.RocketConfig.fir@252141.4]
  wire [31:0] _T_1315; // @[RocketCore.scala 965:62:chipyard.TestHarness.RocketConfig.fir@252142.4]
  wire  _T_1316; // @[RocketCore.scala 976:17:chipyard.TestHarness.RocketConfig.fir@252143.4]
  wire  _T_1334; // @[RocketCore.scala 755:60:chipyard.TestHarness.RocketConfig.fir@252166.4]
  wire  _T_1335; // @[RocketCore.scala 755:95:chipyard.TestHarness.RocketConfig.fir@252167.4]
  wire  _T_1336; // @[RocketCore.scala 755:116:chipyard.TestHarness.RocketConfig.fir@252168.4]
  wire  _T_1379; // @[RocketCore.scala 779:17:chipyard.TestHarness.RocketConfig.fir@252219.4]
  wire [39:0] _T_1380; // @[RocketCore.scala 780:8:chipyard.TestHarness.RocketConfig.fir@252220.4]
  wire  _T_1382; // @[RocketCore.scala 782:40:chipyard.TestHarness.RocketConfig.fir@252223.4]
  wire  _T_1383; // @[RocketCore.scala 782:62:chipyard.TestHarness.RocketConfig.fir@252224.4]
  wire  _T_1385; // @[RocketCore.scala 784:43:chipyard.TestHarness.RocketConfig.fir@252227.4]
  wire  _T_1393; // @[RocketCore.scala 796:45:chipyard.TestHarness.RocketConfig.fir@252244.4]
  wire  _T_1394; // @[RocketCore.scala 796:60:chipyard.TestHarness.RocketConfig.fir@252245.4]
  wire  _T_1395; // @[RocketCore.scala 796:81:chipyard.TestHarness.RocketConfig.fir@252246.4]
  wire  _T_1396; // @[RocketCore.scala 796:90:chipyard.TestHarness.RocketConfig.fir@252247.4]
  wire  _T_1398; // @[RocketCore.scala 799:23:chipyard.TestHarness.RocketConfig.fir@252251.4]
  wire  _T_1400; // @[RocketCore.scala 799:41:chipyard.TestHarness.RocketConfig.fir@252253.4]
  wire [4:0] _T_1403; // @[RocketCore.scala 800:62:chipyard.TestHarness.RocketConfig.fir@252256.4]
  wire  _T_1404; // @[RocketCore.scala 800:62:chipyard.TestHarness.RocketConfig.fir@252257.4]
  wire  _T_1405; // @[RocketCore.scala 800:23:chipyard.TestHarness.RocketConfig.fir@252258.4]
  wire [1:0] _T_1408; // @[RocketCore.scala 800:8:chipyard.TestHarness.RocketConfig.fir@252261.4]
  wire [1:0] _T_1410; // @[RocketCore.scala 804:74:chipyard.TestHarness.RocketConfig.fir@252265.4]
  wire [39:0] _GEN_250; // @[RocketCore.scala 804:69:chipyard.TestHarness.RocketConfig.fir@252266.4]
  wire [39:0] _T_1412; // @[RocketCore.scala 804:69:chipyard.TestHarness.RocketConfig.fir@252267.4]
  wire [38:0] _T_1413; // @[RocketCore.scala 805:35:chipyard.TestHarness.RocketConfig.fir@252269.4]
  wire [38:0] _T_1414; // @[RocketCore.scala 805:66:chipyard.TestHarness.RocketConfig.fir@252270.4]
  wire [5:0] ex_dcache_tag; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@252298.4]
  wire [24:0] a_2; // @[RocketCore.scala 957:23:chipyard.TestHarness.RocketConfig.fir@252307.4]
  wire  _T_1426; // @[RocketCore.scala 958:21:chipyard.TestHarness.RocketConfig.fir@252308.4]
  wire  _T_1427; // @[RocketCore.scala 958:34:chipyard.TestHarness.RocketConfig.fir@252309.4]
  wire  _T_1428; // @[RocketCore.scala 958:29:chipyard.TestHarness.RocketConfig.fir@252310.4]
  wire  _T_1431; // @[RocketCore.scala 958:59:chipyard.TestHarness.RocketConfig.fir@252313.4]
  wire  msb_2; // @[RocketCore.scala 958:18:chipyard.TestHarness.RocketConfig.fir@252314.4]
  wire  _T_1435; // @[RocketCore.scala 837:35:chipyard.TestHarness.RocketConfig.fir@252321.4]
  wire  _T_1456; // @[RocketCore.scala 850:62:chipyard.TestHarness.RocketConfig.fir@252362.4]
  wire  _T_1457; // @[RocketCore.scala 850:68:chipyard.TestHarness.RocketConfig.fir@252363.4]
  wire  unpause; // @[RocketCore.scala 850:92:chipyard.TestHarness.RocketConfig.fir@252364.4]
  wire [31:0] coreMonitorBundle_timer; // @[RocketCore.scala 877:41:chipyard.TestHarness.RocketConfig.fir@252381.4]
  wire  _T_1463; // @[RocketCore.scala 878:55:chipyard.TestHarness.RocketConfig.fir@252383.4]
  wire  coreMonitorBundle_valid; // @[RocketCore.scala 878:52:chipyard.TestHarness.RocketConfig.fir@252384.4]
  wire [39:0] _T_1465; // @[RocketCore.scala 879:48:chipyard.TestHarness.RocketConfig.fir@252386.4]
  wire [23:0] _T_1468; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@252389.4]
  wire [63:0] coreMonitorBundle_pc; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@252390.4]
  wire  _T_1470; // @[RocketCore.scala 880:40:chipyard.TestHarness.RocketConfig.fir@252392.4]
  wire  coreMonitorBundle_wrenx; // @[RocketCore.scala 880:37:chipyard.TestHarness.RocketConfig.fir@252393.4]
  reg [63:0] _T_1473; // @[RocketCore.scala 885:43:chipyard.TestHarness.RocketConfig.fir@252400.4]
  reg [63:0] _RAND_105;
  reg [63:0] coreMonitorBundle_rd0val; // @[RocketCore.scala 885:34:chipyard.TestHarness.RocketConfig.fir@252402.4]
  reg [63:0] _RAND_106;
  reg [63:0] _T_1476; // @[RocketCore.scala 887:43:chipyard.TestHarness.RocketConfig.fir@252407.4]
  reg [63:0] _RAND_107;
  reg [63:0] coreMonitorBundle_rd1val; // @[RocketCore.scala 887:34:chipyard.TestHarness.RocketConfig.fir@252409.4]
  reg [63:0] _RAND_108;
  wire  _T_1478; // @[RocketCore.scala 923:26:chipyard.TestHarness.RocketConfig.fir@252416.6]
  wire [4:0] _T_1479; // @[RocketCore.scala 923:13:chipyard.TestHarness.RocketConfig.fir@252417.6]
  wire [63:0] _T_1480; // @[RocketCore.scala 924:13:chipyard.TestHarness.RocketConfig.fir@252418.6]
  wire  _T_1481; // @[RocketCore.scala 926:27:chipyard.TestHarness.RocketConfig.fir@252419.6]
  wire [4:0] _T_1482; // @[RocketCore.scala 926:13:chipyard.TestHarness.RocketConfig.fir@252420.6]
  wire [63:0] _T_1484; // @[RocketCore.scala 927:13:chipyard.TestHarness.RocketConfig.fir@252422.6]
  wire  _T_1485; // @[RocketCore.scala 928:27:chipyard.TestHarness.RocketConfig.fir@252423.6]
  wire [4:0] _T_1486; // @[RocketCore.scala 928:13:chipyard.TestHarness.RocketConfig.fir@252424.6]
  wire [63:0] _T_1488; // @[RocketCore.scala 929:13:chipyard.TestHarness.RocketConfig.fir@252426.6]
  wire  _T_1490; // @[RocketCore.scala 920:13:chipyard.TestHarness.RocketConfig.fir@252428.6]
  wire [31:0] coreMonitorBundle_inst; // @[RocketCore.scala 872:31:chipyard.TestHarness.RocketConfig.fir@252376.4 RocketCore.scala 888:26:chipyard.TestHarness.RocketConfig.fir@252412.4]
  IBuf ibuf ( // @[RocketCore.scala 248:20:chipyard.TestHarness.RocketConfig.fir@250445.4]
    .clock(ibuf_clock),
    .reset(ibuf_reset),
    .io_imem_ready(ibuf_io_imem_ready),
    .io_imem_valid(ibuf_io_imem_valid),
    .io_imem_bits_btb_taken(ibuf_io_imem_bits_btb_taken),
    .io_imem_bits_btb_bridx(ibuf_io_imem_bits_btb_bridx),
    .io_imem_bits_btb_entry(ibuf_io_imem_bits_btb_entry),
    .io_imem_bits_btb_bht_history(ibuf_io_imem_bits_btb_bht_history),
    .io_imem_bits_pc(ibuf_io_imem_bits_pc),
    .io_imem_bits_data(ibuf_io_imem_bits_data),
    .io_imem_bits_xcpt_pf_inst(ibuf_io_imem_bits_xcpt_pf_inst),
    .io_imem_bits_xcpt_ae_inst(ibuf_io_imem_bits_xcpt_ae_inst),
    .io_imem_bits_replay(ibuf_io_imem_bits_replay),
    .io_kill(ibuf_io_kill),
    .io_pc(ibuf_io_pc),
    .io_btb_resp_entry(ibuf_io_btb_resp_entry),
    .io_btb_resp_bht_history(ibuf_io_btb_resp_bht_history),
    .io_inst_0_ready(ibuf_io_inst_0_ready),
    .io_inst_0_valid(ibuf_io_inst_0_valid),
    .io_inst_0_bits_xcpt0_pf_inst(ibuf_io_inst_0_bits_xcpt0_pf_inst),
    .io_inst_0_bits_xcpt0_ae_inst(ibuf_io_inst_0_bits_xcpt0_ae_inst),
    .io_inst_0_bits_xcpt1_pf_inst(ibuf_io_inst_0_bits_xcpt1_pf_inst),
    .io_inst_0_bits_xcpt1_ae_inst(ibuf_io_inst_0_bits_xcpt1_ae_inst),
    .io_inst_0_bits_replay(ibuf_io_inst_0_bits_replay),
    .io_inst_0_bits_rvc(ibuf_io_inst_0_bits_rvc),
    .io_inst_0_bits_inst_bits(ibuf_io_inst_0_bits_inst_bits),
    .io_inst_0_bits_inst_rd(ibuf_io_inst_0_bits_inst_rd),
    .io_inst_0_bits_inst_rs1(ibuf_io_inst_0_bits_inst_rs1),
    .io_inst_0_bits_inst_rs2(ibuf_io_inst_0_bits_inst_rs2),
    .io_inst_0_bits_inst_rs3(ibuf_io_inst_0_bits_inst_rs3),
    .io_inst_0_bits_raw(ibuf_io_inst_0_bits_raw)
  );
  CSRFile csr ( // @[RocketCore.scala 276:19:chipyard.TestHarness.RocketConfig.fir@251003.4]
    .clock(csr_clock),
    .reset(csr_reset),
    .io_ungated_clock(csr_io_ungated_clock),
    .io_interrupts_debug(csr_io_interrupts_debug),
    .io_interrupts_mtip(csr_io_interrupts_mtip),
    .io_interrupts_msip(csr_io_interrupts_msip),
    .io_interrupts_meip(csr_io_interrupts_meip),
    .io_interrupts_seip(csr_io_interrupts_seip),
    .io_rw_addr(csr_io_rw_addr),
    .io_rw_cmd(csr_io_rw_cmd),
    .io_rw_rdata(csr_io_rw_rdata),
    .io_rw_wdata(csr_io_rw_wdata),
    .io_decode_0_csr(csr_io_decode_0_csr),
    .io_decode_0_fp_illegal(csr_io_decode_0_fp_illegal),
    .io_decode_0_fp_csr(csr_io_decode_0_fp_csr),
    .io_decode_0_read_illegal(csr_io_decode_0_read_illegal),
    .io_decode_0_write_illegal(csr_io_decode_0_write_illegal),
    .io_decode_0_write_flush(csr_io_decode_0_write_flush),
    .io_decode_0_system_illegal(csr_io_decode_0_system_illegal),
    .io_csr_stall(csr_io_csr_stall),
    .io_eret(csr_io_eret),
    .io_singleStep(csr_io_singleStep),
    .io_status_debug(csr_io_status_debug),
    .io_status_cease(csr_io_status_cease),
    .io_status_wfi(csr_io_status_wfi),
    .io_status_isa(csr_io_status_isa),
    .io_status_dprv(csr_io_status_dprv),
    .io_status_prv(csr_io_status_prv),
    .io_status_sd(csr_io_status_sd),
    .io_status_zero2(csr_io_status_zero2),
    .io_status_sxl(csr_io_status_sxl),
    .io_status_uxl(csr_io_status_uxl),
    .io_status_sd_rv32(csr_io_status_sd_rv32),
    .io_status_zero1(csr_io_status_zero1),
    .io_status_tsr(csr_io_status_tsr),
    .io_status_tw(csr_io_status_tw),
    .io_status_tvm(csr_io_status_tvm),
    .io_status_mxr(csr_io_status_mxr),
    .io_status_sum(csr_io_status_sum),
    .io_status_mprv(csr_io_status_mprv),
    .io_status_xs(csr_io_status_xs),
    .io_status_fs(csr_io_status_fs),
    .io_status_mpp(csr_io_status_mpp),
    .io_status_vs(csr_io_status_vs),
    .io_status_spp(csr_io_status_spp),
    .io_status_mpie(csr_io_status_mpie),
    .io_status_hpie(csr_io_status_hpie),
    .io_status_spie(csr_io_status_spie),
    .io_status_upie(csr_io_status_upie),
    .io_status_mie(csr_io_status_mie),
    .io_status_hie(csr_io_status_hie),
    .io_status_sie(csr_io_status_sie),
    .io_status_uie(csr_io_status_uie),
    .io_ptbr_mode(csr_io_ptbr_mode),
    .io_ptbr_ppn(csr_io_ptbr_ppn),
    .io_evec(csr_io_evec),
    .io_exception(csr_io_exception),
    .io_retire(csr_io_retire),
    .io_cause(csr_io_cause),
    .io_pc(csr_io_pc),
    .io_tval(csr_io_tval),
    .io_time(csr_io_time),
    .io_fcsr_rm(csr_io_fcsr_rm),
    .io_fcsr_flags_valid(csr_io_fcsr_flags_valid),
    .io_fcsr_flags_bits(csr_io_fcsr_flags_bits),
    .io_interrupt(csr_io_interrupt),
    .io_interrupt_cause(csr_io_interrupt_cause),
    .io_bp_0_control_action(csr_io_bp_0_control_action),
    .io_bp_0_control_tmatch(csr_io_bp_0_control_tmatch),
    .io_bp_0_control_m(csr_io_bp_0_control_m),
    .io_bp_0_control_s(csr_io_bp_0_control_s),
    .io_bp_0_control_u(csr_io_bp_0_control_u),
    .io_bp_0_control_x(csr_io_bp_0_control_x),
    .io_bp_0_control_w(csr_io_bp_0_control_w),
    .io_bp_0_control_r(csr_io_bp_0_control_r),
    .io_bp_0_address(csr_io_bp_0_address),
    .io_pmp_0_cfg_l(csr_io_pmp_0_cfg_l),
    .io_pmp_0_cfg_a(csr_io_pmp_0_cfg_a),
    .io_pmp_0_cfg_x(csr_io_pmp_0_cfg_x),
    .io_pmp_0_cfg_w(csr_io_pmp_0_cfg_w),
    .io_pmp_0_cfg_r(csr_io_pmp_0_cfg_r),
    .io_pmp_0_addr(csr_io_pmp_0_addr),
    .io_pmp_0_mask(csr_io_pmp_0_mask),
    .io_pmp_1_cfg_l(csr_io_pmp_1_cfg_l),
    .io_pmp_1_cfg_a(csr_io_pmp_1_cfg_a),
    .io_pmp_1_cfg_x(csr_io_pmp_1_cfg_x),
    .io_pmp_1_cfg_w(csr_io_pmp_1_cfg_w),
    .io_pmp_1_cfg_r(csr_io_pmp_1_cfg_r),
    .io_pmp_1_addr(csr_io_pmp_1_addr),
    .io_pmp_1_mask(csr_io_pmp_1_mask),
    .io_pmp_2_cfg_l(csr_io_pmp_2_cfg_l),
    .io_pmp_2_cfg_a(csr_io_pmp_2_cfg_a),
    .io_pmp_2_cfg_x(csr_io_pmp_2_cfg_x),
    .io_pmp_2_cfg_w(csr_io_pmp_2_cfg_w),
    .io_pmp_2_cfg_r(csr_io_pmp_2_cfg_r),
    .io_pmp_2_addr(csr_io_pmp_2_addr),
    .io_pmp_2_mask(csr_io_pmp_2_mask),
    .io_pmp_3_cfg_l(csr_io_pmp_3_cfg_l),
    .io_pmp_3_cfg_a(csr_io_pmp_3_cfg_a),
    .io_pmp_3_cfg_x(csr_io_pmp_3_cfg_x),
    .io_pmp_3_cfg_w(csr_io_pmp_3_cfg_w),
    .io_pmp_3_cfg_r(csr_io_pmp_3_cfg_r),
    .io_pmp_3_addr(csr_io_pmp_3_addr),
    .io_pmp_3_mask(csr_io_pmp_3_mask),
    .io_pmp_4_cfg_l(csr_io_pmp_4_cfg_l),
    .io_pmp_4_cfg_a(csr_io_pmp_4_cfg_a),
    .io_pmp_4_cfg_x(csr_io_pmp_4_cfg_x),
    .io_pmp_4_cfg_w(csr_io_pmp_4_cfg_w),
    .io_pmp_4_cfg_r(csr_io_pmp_4_cfg_r),
    .io_pmp_4_addr(csr_io_pmp_4_addr),
    .io_pmp_4_mask(csr_io_pmp_4_mask),
    .io_pmp_5_cfg_l(csr_io_pmp_5_cfg_l),
    .io_pmp_5_cfg_a(csr_io_pmp_5_cfg_a),
    .io_pmp_5_cfg_x(csr_io_pmp_5_cfg_x),
    .io_pmp_5_cfg_w(csr_io_pmp_5_cfg_w),
    .io_pmp_5_cfg_r(csr_io_pmp_5_cfg_r),
    .io_pmp_5_addr(csr_io_pmp_5_addr),
    .io_pmp_5_mask(csr_io_pmp_5_mask),
    .io_pmp_6_cfg_l(csr_io_pmp_6_cfg_l),
    .io_pmp_6_cfg_a(csr_io_pmp_6_cfg_a),
    .io_pmp_6_cfg_x(csr_io_pmp_6_cfg_x),
    .io_pmp_6_cfg_w(csr_io_pmp_6_cfg_w),
    .io_pmp_6_cfg_r(csr_io_pmp_6_cfg_r),
    .io_pmp_6_addr(csr_io_pmp_6_addr),
    .io_pmp_6_mask(csr_io_pmp_6_mask),
    .io_pmp_7_cfg_l(csr_io_pmp_7_cfg_l),
    .io_pmp_7_cfg_a(csr_io_pmp_7_cfg_a),
    .io_pmp_7_cfg_x(csr_io_pmp_7_cfg_x),
    .io_pmp_7_cfg_w(csr_io_pmp_7_cfg_w),
    .io_pmp_7_cfg_r(csr_io_pmp_7_cfg_r),
    .io_pmp_7_addr(csr_io_pmp_7_addr),
    .io_pmp_7_mask(csr_io_pmp_7_mask),
    .io_inst_0(csr_io_inst_0),
    .io_trace_0_valid(csr_io_trace_0_valid),
    .io_trace_0_iaddr(csr_io_trace_0_iaddr),
    .io_trace_0_insn(csr_io_trace_0_insn),
    .io_trace_0_exception(csr_io_trace_0_exception),
    .io_customCSRs_0_value(csr_io_customCSRs_0_value)
  );
  BreakpointUnit bpu ( // @[RocketCore.scala 317:19:chipyard.TestHarness.RocketConfig.fir@251107.4]
    .io_status_debug(bpu_io_status_debug),
    .io_status_prv(bpu_io_status_prv),
    .io_bp_0_control_action(bpu_io_bp_0_control_action),
    .io_bp_0_control_tmatch(bpu_io_bp_0_control_tmatch),
    .io_bp_0_control_m(bpu_io_bp_0_control_m),
    .io_bp_0_control_s(bpu_io_bp_0_control_s),
    .io_bp_0_control_u(bpu_io_bp_0_control_u),
    .io_bp_0_control_x(bpu_io_bp_0_control_x),
    .io_bp_0_control_w(bpu_io_bp_0_control_w),
    .io_bp_0_control_r(bpu_io_bp_0_control_r),
    .io_bp_0_address(bpu_io_bp_0_address),
    .io_pc(bpu_io_pc),
    .io_ea(bpu_io_ea),
    .io_xcpt_if(bpu_io_xcpt_if),
    .io_xcpt_ld(bpu_io_xcpt_ld),
    .io_xcpt_st(bpu_io_xcpt_st),
    .io_debug_if(bpu_io_debug_if),
    .io_debug_ld(bpu_io_debug_ld),
    .io_debug_st(bpu_io_debug_st)
  );
  ALU alu ( // @[RocketCore.scala 377:19:chipyard.TestHarness.RocketConfig.fir@251262.4]
    .io_dw(alu_io_dw),
    .io_fn(alu_io_fn),
    .io_in2(alu_io_in2),
    .io_in1(alu_io_in1),
    .io_out(alu_io_out),
    .io_adder_out(alu_io_adder_out),
    .io_cmp_out(alu_io_cmp_out)
  );
  MulDiv div ( // @[RocketCore.scala 401:19:chipyard.TestHarness.RocketConfig.fir@251272.4]
    .clock(div_clock),
    .reset(div_reset),
    .io_req_ready(div_io_req_ready),
    .io_req_valid(div_io_req_valid),
    .io_req_bits_fn(div_io_req_bits_fn),
    .io_req_bits_dw(div_io_req_bits_dw),
    .io_req_bits_in1(div_io_req_bits_in1),
    .io_req_bits_in2(div_io_req_bits_in2),
    .io_req_bits_tag(div_io_req_bits_tag),
    .io_kill(div_io_kill),
    .io_resp_ready(div_io_resp_ready),
    .io_resp_valid(div_io_resp_valid),
    .io_resp_bits_data(div_io_resp_bits_data),
    .io_resp_bits_tag(div_io_resp_bits_tag)
  );
  PlusArgTimeout PlusArgTimeout ( // @[PlusArg.scala 53:11:chipyard.TestHarness.RocketConfig.fir@252433.4]
    .clock(PlusArgTimeout_clock),
    .reset(PlusArgTimeout_reset),
    .io_count(PlusArgTimeout_io_count)
  );
  assign _T_427__T_432_addr = ~id_raddr1;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign _T_427__T_432_data = _T_427[_T_427__T_432_addr]; // @[RocketCore.scala 983:15:chipyard.TestHarness.RocketConfig.fir@250915.4]
  `else
  assign _T_427__T_432_data = _T_427__T_432_addr >= 5'h1f ? _RAND_1[63:0] : _T_427[_T_427__T_432_addr]; // @[RocketCore.scala 983:15:chipyard.TestHarness.RocketConfig.fir@250915.4]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign _T_427__T_438_addr = ~id_raddr2;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign _T_427__T_438_data = _T_427[_T_427__T_438_addr]; // @[RocketCore.scala 983:15:chipyard.TestHarness.RocketConfig.fir@250915.4]
  `else
  assign _T_427__T_438_data = _T_427__T_438_addr >= 5'h1f ? _RAND_2[63:0] : _T_427[_T_427__T_438_addr]; // @[RocketCore.scala 983:15:chipyard.TestHarness.RocketConfig.fir@250915.4]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign _T_427__T_1136_data = _T_1127 ? io_dmem_resp_bits_data : _T_1132;
  assign _T_427__T_1136_addr = ~rf_waddr;
  assign _T_427__T_1136_mask = 1'h1;
  assign _T_427__T_1136_en = rf_wen & _T_1133;
  assign replay_wb_common = io_dmem_s2_nack | wb_reg_replay; // @[RocketCore.scala 629:42:chipyard.TestHarness.RocketConfig.fir@251845.4]
  assign _T_1077 = wb_reg_valid & wb_ctrl_mem; // @[RocketCore.scala 607:19:chipyard.TestHarness.RocketConfig.fir@251804.4]
  assign _T_1078 = _T_1077 & io_dmem_s2_xcpt_ma_st; // @[RocketCore.scala 607:34:chipyard.TestHarness.RocketConfig.fir@251805.4]
  assign _T_1089 = wb_reg_xcpt | _T_1078; // @[RocketCore.scala 943:26:chipyard.TestHarness.RocketConfig.fir@251816.4]
  assign _T_1080 = _T_1077 & io_dmem_s2_xcpt_ma_ld; // @[RocketCore.scala 608:34:chipyard.TestHarness.RocketConfig.fir@251807.4]
  assign _T_1090 = _T_1089 | _T_1080; // @[RocketCore.scala 943:26:chipyard.TestHarness.RocketConfig.fir@251817.4]
  assign _T_1082 = _T_1077 & io_dmem_s2_xcpt_pf_st; // @[RocketCore.scala 609:34:chipyard.TestHarness.RocketConfig.fir@251809.4]
  assign _T_1091 = _T_1090 | _T_1082; // @[RocketCore.scala 943:26:chipyard.TestHarness.RocketConfig.fir@251818.4]
  assign _T_1084 = _T_1077 & io_dmem_s2_xcpt_pf_ld; // @[RocketCore.scala 610:34:chipyard.TestHarness.RocketConfig.fir@251811.4]
  assign _T_1092 = _T_1091 | _T_1084; // @[RocketCore.scala 943:26:chipyard.TestHarness.RocketConfig.fir@251819.4]
  assign _T_1086 = _T_1077 & io_dmem_s2_xcpt_ae_st; // @[RocketCore.scala 611:34:chipyard.TestHarness.RocketConfig.fir@251813.4]
  assign _T_1093 = _T_1092 | _T_1086; // @[RocketCore.scala 943:26:chipyard.TestHarness.RocketConfig.fir@251820.4]
  assign _T_1088 = _T_1077 & io_dmem_s2_xcpt_ae_ld; // @[RocketCore.scala 612:34:chipyard.TestHarness.RocketConfig.fir@251815.4]
  assign wb_xcpt = _T_1093 | _T_1088; // @[RocketCore.scala 943:26:chipyard.TestHarness.RocketConfig.fir@251821.4]
  assign _T_1115 = replay_wb_common | wb_xcpt; // @[RocketCore.scala 632:27:chipyard.TestHarness.RocketConfig.fir@251850.4]
  assign _T_1116 = _T_1115 | csr_io_eret; // @[RocketCore.scala 632:38:chipyard.TestHarness.RocketConfig.fir@251851.4]
  assign take_pc_wb = _T_1116 | wb_reg_flush_pipe; // @[RocketCore.scala 632:53:chipyard.TestHarness.RocketConfig.fir@251852.4]
  assign _T_761 = ex_reg_valid | ex_reg_replay; // @[RocketCore.scala 482:34:chipyard.TestHarness.RocketConfig.fir@251400.4]
  assign ex_pc_valid = _T_761 | ex_reg_xcpt_interrupt; // @[RocketCore.scala 482:51:chipyard.TestHarness.RocketConfig.fir@251401.4]
  assign _T_917 = mem_ctrl_jalr | mem_reg_sfence; // @[RocketCore.scala 505:36:chipyard.TestHarness.RocketConfig.fir@251567.4]
  assign _T_918 = mem_reg_wdata; // @[RocketCore.scala 957:16:chipyard.TestHarness.RocketConfig.fir@251568.4]
  assign a = _T_918[63:39]; // @[RocketCore.scala 957:23:chipyard.TestHarness.RocketConfig.fir@251569.4]
  assign _T_919 = $signed(a) == 25'sh0; // @[RocketCore.scala 958:21:chipyard.TestHarness.RocketConfig.fir@251570.4]
  assign _T_920 = $signed(a) == -25'sh1; // @[RocketCore.scala 958:34:chipyard.TestHarness.RocketConfig.fir@251571.4]
  assign _T_921 = _T_919 | _T_920; // @[RocketCore.scala 958:29:chipyard.TestHarness.RocketConfig.fir@251572.4]
  assign _T_924 = ~mem_reg_wdata[38]; // @[RocketCore.scala 958:59:chipyard.TestHarness.RocketConfig.fir@251575.4]
  assign msb = _T_921 ? mem_reg_wdata[39] : _T_924; // @[RocketCore.scala 958:18:chipyard.TestHarness.RocketConfig.fir@251576.4]
  assign _T_927 = {msb,mem_reg_wdata[38:0]}; // @[RocketCore.scala 505:106:chipyard.TestHarness.RocketConfig.fir@251579.4]
  assign _T_787 = mem_ctrl_branch & mem_br_taken; // @[RocketCore.scala 502:25:chipyard.TestHarness.RocketConfig.fir@251436.4]
  assign _T_790 = mem_reg_inst[31]; // @[RocketCore.scala 1005:53:chipyard.TestHarness.RocketConfig.fir@251439.4]
  assign _T_845 = mem_reg_inst[31]; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@251494.4]
  assign _T_844 = {11{_T_790}}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@251493.4]
  assign _T_842 = {8{_T_790}}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@251491.4]
  assign _T_841 = mem_reg_inst[7]; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@251490.4]
  assign _T_849 = {_T_845,_T_844,_T_842,_T_841,mem_reg_inst[30:25],mem_reg_inst[11:8],1'h0}; // @[RocketCore.scala 1019:53:chipyard.TestHarness.RocketConfig.fir@251498.4]
  assign _T_904 = mem_reg_inst[19:12]; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@251553.4]
  assign _T_903 = mem_reg_inst[20]; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@251552.4]
  assign _T_911 = {_T_845,_T_844,_T_904,_T_903,mem_reg_inst[30:25],mem_reg_inst[24:21],1'h0}; // @[RocketCore.scala 1019:53:chipyard.TestHarness.RocketConfig.fir@251560.4]
  assign _T_912 = mem_reg_rvc ? $signed(4'sh2) : $signed(4'sh4); // @[RocketCore.scala 504:8:chipyard.TestHarness.RocketConfig.fir@251561.4]
  assign _T_913 = mem_ctrl_jal ? $signed(_T_911) : $signed({{28{_T_912[3]}},_T_912}); // @[RocketCore.scala 503:8:chipyard.TestHarness.RocketConfig.fir@251562.4]
  assign _T_914 = _T_787 ? $signed(_T_849) : $signed(_T_913); // @[RocketCore.scala 502:8:chipyard.TestHarness.RocketConfig.fir@251563.4]
  assign _GEN_248 = {{8{_T_914[31]}},_T_914}; // @[RocketCore.scala 501:41:chipyard.TestHarness.RocketConfig.fir@251564.4]
  assign mem_br_target = $signed(mem_reg_pc) + $signed(_GEN_248); // @[RocketCore.scala 501:41:chipyard.TestHarness.RocketConfig.fir@251566.4]
  assign _T_928 = _T_917 ? $signed(_T_927) : $signed(mem_br_target); // @[RocketCore.scala 505:21:chipyard.TestHarness.RocketConfig.fir@251580.4]
  assign mem_npc = $signed(_T_928) & -40'sh2; // @[RocketCore.scala 505:141:chipyard.TestHarness.RocketConfig.fir@251583.4]
  assign _T_931 = mem_npc != ex_reg_pc; // @[RocketCore.scala 507:30:chipyard.TestHarness.RocketConfig.fir@251584.4]
  assign _T_932 = ibuf_io_inst_0_valid | ibuf_io_imem_valid; // @[RocketCore.scala 508:31:chipyard.TestHarness.RocketConfig.fir@251585.4]
  assign _T_933 = mem_npc != ibuf_io_pc; // @[RocketCore.scala 508:62:chipyard.TestHarness.RocketConfig.fir@251586.4]
  assign _T_934 = _T_932 ? _T_933 : 1'h1; // @[RocketCore.scala 508:8:chipyard.TestHarness.RocketConfig.fir@251587.4]
  assign mem_wrong_npc = ex_pc_valid ? _T_931 : _T_934; // @[RocketCore.scala 507:8:chipyard.TestHarness.RocketConfig.fir@251588.4]
  assign _T_950 = mem_wrong_npc | mem_reg_sfence; // @[RocketCore.scala 515:54:chipyard.TestHarness.RocketConfig.fir@251609.4]
  assign take_pc_mem = mem_reg_valid & _T_950; // @[RocketCore.scala 515:32:chipyard.TestHarness.RocketConfig.fir@251610.4]
  assign take_pc_mem_wb = take_pc_wb | take_pc_mem; // @[RocketCore.scala 244:35:chipyard.TestHarness.RocketConfig.fir@250444.4]
  assign _T = ibuf_io_inst_0_bits_inst_bits & 32'h207f; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250453.4]
  assign _T_1 = _T == 32'h3; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250454.4]
  assign _T_2 = ibuf_io_inst_0_bits_inst_bits & 32'h106f; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250455.4]
  assign _T_3 = _T_2 == 32'h3; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250456.4]
  assign _T_4 = ibuf_io_inst_0_bits_inst_bits & 32'h607f; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250457.4]
  assign _T_5 = _T_4 == 32'hf; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250458.4]
  assign _T_6 = ibuf_io_inst_0_bits_inst_bits & 32'h7077; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250459.4]
  assign _T_7 = _T_6 == 32'h13; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250460.4]
  assign _T_8 = ibuf_io_inst_0_bits_inst_bits & 32'h5f; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250461.4]
  assign _T_9 = _T_8 == 32'h17; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250462.4]
  assign _T_10 = ibuf_io_inst_0_bits_inst_bits & 32'hfc00007f; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250463.4]
  assign _T_11 = _T_10 == 32'h33; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250464.4]
  assign _T_12 = ibuf_io_inst_0_bits_inst_bits & 32'hbe007077; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250465.4]
  assign _T_13 = _T_12 == 32'h33; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250466.4]
  assign _T_14 = ibuf_io_inst_0_bits_inst_bits & 32'h4000073; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250467.4]
  assign _T_15 = _T_14 == 32'h43; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250468.4]
  assign _T_16 = ibuf_io_inst_0_bits_inst_bits & 32'he400007f; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250469.4]
  assign _T_17 = _T_16 == 32'h53; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250470.4]
  assign _T_18 = ibuf_io_inst_0_bits_inst_bits & 32'h707b; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250471.4]
  assign _T_19 = _T_18 == 32'h63; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250472.4]
  assign _T_20 = ibuf_io_inst_0_bits_inst_bits & 32'h7f; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250473.4]
  assign _T_21 = _T_20 == 32'h6f; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250474.4]
  assign _T_22 = ibuf_io_inst_0_bits_inst_bits & 32'hffefffff; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250475.4]
  assign _T_23 = _T_22 == 32'h73; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250476.4]
  assign _T_24 = ibuf_io_inst_0_bits_inst_bits & 32'hfc00305f; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250477.4]
  assign _T_25 = _T_24 == 32'h1013; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250478.4]
  assign _T_26 = ibuf_io_inst_0_bits_inst_bits & 32'hfe00305f; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250479.4]
  assign _T_27 = _T_26 == 32'h101b; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250480.4]
  assign _T_28 = ibuf_io_inst_0_bits_inst_bits & 32'h605b; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250481.4]
  assign _T_29 = _T_28 == 32'h2003; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250482.4]
  assign _T_31 = _T == 32'h2013; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250484.4]
  assign _T_32 = ibuf_io_inst_0_bits_inst_bits & 32'h1800607f; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250485.4]
  assign _T_33 = _T_32 == 32'h202f; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250486.4]
  assign _T_35 = _T == 32'h2073; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250488.4]
  assign _T_36 = ibuf_io_inst_0_bits_inst_bits & 32'hbc00707f; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250489.4]
  assign _T_37 = _T_36 == 32'h5013; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250490.4]
  assign _T_38 = ibuf_io_inst_0_bits_inst_bits & 32'hbe00705f; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250491.4]
  assign _T_39 = _T_38 == 32'h501b; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250492.4]
  assign _T_41 = _T_12 == 32'h5033; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250494.4]
  assign _T_42 = ibuf_io_inst_0_bits_inst_bits & 32'hfe004077; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250495.4]
  assign _T_43 = _T_42 == 32'h2004033; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250496.4]
  assign _T_44 = ibuf_io_inst_0_bits_inst_bits & 32'he800607f; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250497.4]
  assign _T_45 = _T_44 == 32'h800202f; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250498.4]
  assign _T_46 = ibuf_io_inst_0_bits_inst_bits & 32'hf9f0607f; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250499.4]
  assign _T_47 = _T_46 == 32'h1000202f; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250500.4]
  assign _T_48 = ibuf_io_inst_0_bits_inst_bits & 32'hdfffffff; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250501.4]
  assign _T_49 = _T_48 == 32'h10200073; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250502.4]
  assign _T_51 = _T_48 == 32'h10500073; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250504.4]
  assign _T_52 = ibuf_io_inst_0_bits_inst_bits & 32'hfe007fff; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250505.4]
  assign _T_53 = _T_52 == 32'h12000073; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250506.4]
  assign _T_54 = ibuf_io_inst_0_bits_inst_bits & 32'hf400607f; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250507.4]
  assign _T_55 = _T_54 == 32'h20000053; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250508.4]
  assign _T_56 = ibuf_io_inst_0_bits_inst_bits & 32'h7c00607f; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250509.4]
  assign _T_57 = _T_56 == 32'h20000053; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250510.4]
  assign _T_58 = ibuf_io_inst_0_bits_inst_bits & 32'h7c00507f; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250511.4]
  assign _T_59 = _T_58 == 32'h20000053; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250512.4]
  assign _T_60 = ibuf_io_inst_0_bits_inst_bits & 32'h7ff0007f; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250513.4]
  assign _T_61 = _T_60 == 32'h40100053; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250514.4]
  assign _T_63 = _T_60 == 32'h42000053; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250516.4]
  assign _T_64 = ibuf_io_inst_0_bits_inst_bits & 32'hfdf0007f; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250517.4]
  assign _T_65 = _T_64 == 32'h58000053; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250518.4]
  assign _T_66 = ibuf_io_inst_0_bits_inst_bits == 32'h7b200073; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250519.4]
  assign _T_67 = ibuf_io_inst_0_bits_inst_bits & 32'hedc0007f; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250520.4]
  assign _T_68 = _T_67 == 32'hc0000053; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250521.4]
  assign _T_69 = ibuf_io_inst_0_bits_inst_bits & 32'hfdf0607f; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250522.4]
  assign _T_70 = _T_69 == 32'he0000053; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250523.4]
  assign _T_71 = ibuf_io_inst_0_bits_inst_bits & 32'hedf0707f; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250524.4]
  assign _T_72 = _T_71 == 32'he0000053; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250525.4]
  assign _T_73 = ibuf_io_inst_0_bits_inst_bits & 32'h306f; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250526.4]
  assign _T_74 = _T_73 == 32'h1063; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250527.4]
  assign _T_75 = ibuf_io_inst_0_bits_inst_bits & 32'h407f; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250528.4]
  assign _T_76 = _T_75 == 32'h4063; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250529.4]
  assign _T_77 = ibuf_io_inst_0_bits_inst_bits & 32'hfc007077; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250530.4]
  assign _T_78 = _T_77 == 32'h33; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250531.4]
  assign _T_79 = ibuf_io_inst_0_bits_inst_bits & 32'h405f; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250532.4]
  assign _T_80 = _T_79 == 32'h3; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250533.4]
  assign _T_82 = _T_1 | _T_3; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250535.4]
  assign _T_83 = _T_82 | _T_5; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250536.4]
  assign _T_84 = _T_83 | _T_7; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250537.4]
  assign _T_85 = _T_84 | _T_9; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250538.4]
  assign _T_86 = _T_85 | _T_11; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250539.4]
  assign _T_87 = _T_86 | _T_13; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250540.4]
  assign _T_88 = _T_87 | _T_15; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250541.4]
  assign _T_89 = _T_88 | _T_17; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250542.4]
  assign _T_90 = _T_89 | _T_19; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250543.4]
  assign _T_91 = _T_90 | _T_21; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250544.4]
  assign _T_92 = _T_91 | _T_23; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250545.4]
  assign _T_93 = _T_92 | _T_25; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250546.4]
  assign _T_94 = _T_93 | _T_27; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250547.4]
  assign _T_95 = _T_94 | _T_29; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250548.4]
  assign _T_96 = _T_95 | _T_31; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250549.4]
  assign _T_97 = _T_96 | _T_33; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250550.4]
  assign _T_98 = _T_97 | _T_35; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250551.4]
  assign _T_99 = _T_98 | _T_37; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250552.4]
  assign _T_100 = _T_99 | _T_39; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250553.4]
  assign _T_101 = _T_100 | _T_41; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250554.4]
  assign _T_102 = _T_101 | _T_43; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250555.4]
  assign _T_103 = _T_102 | _T_45; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250556.4]
  assign _T_104 = _T_103 | _T_47; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250557.4]
  assign _T_105 = _T_104 | _T_49; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250558.4]
  assign _T_106 = _T_105 | _T_51; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250559.4]
  assign _T_107 = _T_106 | _T_53; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250560.4]
  assign _T_108 = _T_107 | _T_55; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250561.4]
  assign _T_109 = _T_108 | _T_57; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250562.4]
  assign _T_110 = _T_109 | _T_59; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250563.4]
  assign _T_111 = _T_110 | _T_61; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250564.4]
  assign _T_112 = _T_111 | _T_63; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250565.4]
  assign _T_113 = _T_112 | _T_65; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250566.4]
  assign _T_114 = _T_113 | _T_66; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250567.4]
  assign _T_115 = _T_114 | _T_68; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250568.4]
  assign _T_116 = _T_115 | _T_70; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250569.4]
  assign _T_117 = _T_116 | _T_72; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250570.4]
  assign _T_118 = _T_117 | _T_74; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250571.4]
  assign _T_119 = _T_118 | _T_76; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250572.4]
  assign _T_120 = _T_119 | _T_78; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250573.4]
  assign id_ctrl_legal = _T_120 | _T_80; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250574.4]
  assign _T_122 = ibuf_io_inst_0_bits_inst_bits & 32'h5c; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250575.4]
  assign _T_123 = _T_122 == 32'h4; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250576.4]
  assign _T_124 = ibuf_io_inst_0_bits_inst_bits & 32'h60; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250577.4]
  assign _T_125 = _T_124 == 32'h40; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250578.4]
  assign id_ctrl_fp = _T_123 | _T_125; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250580.4]
  assign _T_128 = ibuf_io_inst_0_bits_inst_bits & 32'h74; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250581.4]
  assign id_ctrl_branch = _T_128 == 32'h60; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250582.4]
  assign _T_131 = ibuf_io_inst_0_bits_inst_bits & 32'h68; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250584.4]
  assign id_ctrl_jal = _T_131 == 32'h68; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250585.4]
  assign _T_134 = ibuf_io_inst_0_bits_inst_bits & 32'h203c; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250587.4]
  assign id_ctrl_jalr = _T_134 == 32'h24; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250588.4]
  assign _T_137 = ibuf_io_inst_0_bits_inst_bits & 32'h64; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250590.4]
  assign _T_138 = _T_137 == 32'h20; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250591.4]
  assign _T_139 = ibuf_io_inst_0_bits_inst_bits & 32'h34; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250592.4]
  assign _T_140 = _T_139 == 32'h20; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250593.4]
  assign _T_141 = ibuf_io_inst_0_bits_inst_bits & 32'h2048; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250594.4]
  assign _T_142 = _T_141 == 32'h2008; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250595.4]
  assign _T_143 = ibuf_io_inst_0_bits_inst_bits & 32'h42003024; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250596.4]
  assign _T_144 = _T_143 == 32'h2000020; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250597.4]
  assign _T_146 = _T_138 | _T_140; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250599.4]
  assign _T_147 = _T_146 | _T_142; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250600.4]
  assign id_ctrl_rxs2 = _T_147 | _T_144; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250601.4]
  assign _T_149 = ibuf_io_inst_0_bits_inst_bits & 32'h44; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250602.4]
  assign _T_150 = _T_149 == 32'h0; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250603.4]
  assign _T_151 = ibuf_io_inst_0_bits_inst_bits & 32'h4024; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250604.4]
  assign _T_152 = _T_151 == 32'h20; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250605.4]
  assign _T_153 = ibuf_io_inst_0_bits_inst_bits & 32'h38; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250606.4]
  assign _T_154 = _T_153 == 32'h20; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250607.4]
  assign _T_155 = ibuf_io_inst_0_bits_inst_bits & 32'h2050; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250608.4]
  assign _T_156 = _T_155 == 32'h2000; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250609.4]
  assign _T_157 = ibuf_io_inst_0_bits_inst_bits & 32'h90000034; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250610.4]
  assign _T_158 = _T_157 == 32'h90000010; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250611.4]
  assign _T_160 = _T_150 | _T_152; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250613.4]
  assign _T_161 = _T_160 | _T_154; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250614.4]
  assign _T_162 = _T_161 | _T_156; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250615.4]
  assign id_ctrl_rxs1 = _T_162 | _T_158; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250616.4]
  assign _T_164 = ibuf_io_inst_0_bits_inst_bits & 32'h58; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250617.4]
  assign _T_165 = _T_164 == 32'h0; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250618.4]
  assign _T_166 = ibuf_io_inst_0_bits_inst_bits & 32'h20; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250619.4]
  assign _T_167 = _T_166 == 32'h0; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250620.4]
  assign _T_168 = ibuf_io_inst_0_bits_inst_bits & 32'hc; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250621.4]
  assign _T_169 = _T_168 == 32'h4; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250622.4]
  assign _T_170 = ibuf_io_inst_0_bits_inst_bits & 32'h48; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250623.4]
  assign _T_171 = _T_170 == 32'h48; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250624.4]
  assign _T_172 = ibuf_io_inst_0_bits_inst_bits & 32'h4050; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250625.4]
  assign _T_173 = _T_172 == 32'h4050; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250626.4]
  assign _T_175 = _T_165 | _T_167; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250628.4]
  assign _T_176 = _T_175 | _T_169; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250629.4]
  assign _T_177 = _T_176 | _T_171; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250630.4]
  assign _T_178 = _T_177 | _T_173; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250631.4]
  assign _T_180 = _T_170 == 32'h0; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250633.4]
  assign _T_181 = ibuf_io_inst_0_bits_inst_bits & 32'h18; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250634.4]
  assign _T_182 = _T_181 == 32'h0; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250635.4]
  assign _T_183 = ibuf_io_inst_0_bits_inst_bits & 32'h4008; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250636.4]
  assign _T_184 = _T_183 == 32'h4000; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250637.4]
  assign _T_186 = _T_180 | _T_150; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250639.4]
  assign _T_187 = _T_186 | _T_182; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250640.4]
  assign _T_188 = _T_187 | _T_184; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250641.4]
  assign id_ctrl_sel_alu2 = {_T_188,_T_178}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@250642.4]
  assign _T_190 = ibuf_io_inst_0_bits_inst_bits & 32'h4004; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250643.4]
  assign _T_191 = _T_190 == 32'h0; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250644.4]
  assign _T_192 = ibuf_io_inst_0_bits_inst_bits & 32'h50; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250645.4]
  assign _T_193 = _T_192 == 32'h0; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250646.4]
  assign _T_194 = ibuf_io_inst_0_bits_inst_bits & 32'h24; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250647.4]
  assign _T_195 = _T_194 == 32'h0; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250648.4]
  assign _T_197 = _T_191 | _T_193; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250650.4]
  assign _T_198 = _T_197 | _T_150; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250651.4]
  assign _T_199 = _T_198 | _T_195; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250652.4]
  assign _T_200 = _T_199 | _T_182; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250653.4]
  assign _T_202 = _T_139 == 32'h14; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250655.4]
  assign _T_204 = _T_202 | _T_171; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250657.4]
  assign id_ctrl_sel_alu1 = {_T_204,_T_200}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@250658.4]
  assign _T_207 = _T_181 == 32'h8; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250660.4]
  assign _T_209 = _T_149 == 32'h40; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250662.4]
  assign _T_211 = _T_207 | _T_209; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250664.4]
  assign _T_212 = ibuf_io_inst_0_bits_inst_bits & 32'h14; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250665.4]
  assign _T_213 = _T_212 == 32'h14; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250666.4]
  assign _T_215 = _T_207 | _T_213; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250668.4]
  assign _T_216 = ibuf_io_inst_0_bits_inst_bits & 32'h30; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250669.4]
  assign _T_217 = _T_216 == 32'h0; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250670.4]
  assign _T_218 = ibuf_io_inst_0_bits_inst_bits & 32'h201c; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250671.4]
  assign _T_219 = _T_218 == 32'h4; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250672.4]
  assign _T_221 = _T_212 == 32'h10; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250674.4]
  assign _T_223 = _T_217 | _T_219; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250676.4]
  assign _T_224 = _T_223 | _T_221; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250677.4]
  assign id_ctrl_sel_imm = {_T_224,_T_215,_T_211}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@250679.4]
  assign _T_227 = ibuf_io_inst_0_bits_inst_bits & 32'h10; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250680.4]
  assign _T_228 = _T_227 == 32'h0; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250681.4]
  assign _T_229 = ibuf_io_inst_0_bits_inst_bits & 32'h8; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250682.4]
  assign _T_230 = _T_229 == 32'h0; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250683.4]
  assign id_ctrl_alu_dw = _T_228 | _T_230; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250685.4]
  assign _T_233 = ibuf_io_inst_0_bits_inst_bits & 32'h3054; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250686.4]
  assign _T_234 = _T_233 == 32'h1010; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250687.4]
  assign _T_235 = ibuf_io_inst_0_bits_inst_bits & 32'h1058; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250688.4]
  assign _T_236 = _T_235 == 32'h1040; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250689.4]
  assign _T_237 = ibuf_io_inst_0_bits_inst_bits & 32'h7044; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250690.4]
  assign _T_238 = _T_237 == 32'h7000; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250691.4]
  assign _T_239 = ibuf_io_inst_0_bits_inst_bits & 32'h2001074; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250692.4]
  assign _T_240 = _T_239 == 32'h2001030; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250693.4]
  assign _T_242 = _T_234 | _T_236; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250695.4]
  assign _T_243 = _T_242 | _T_238; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250696.4]
  assign _T_244 = _T_243 | _T_240; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250697.4]
  assign _T_245 = ibuf_io_inst_0_bits_inst_bits & 32'h4054; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250698.4]
  assign _T_246 = _T_245 == 32'h40; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250699.4]
  assign _T_247 = ibuf_io_inst_0_bits_inst_bits & 32'h2058; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250700.4]
  assign _T_248 = _T_247 == 32'h2040; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250701.4]
  assign _T_250 = _T_233 == 32'h3010; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250703.4]
  assign _T_251 = ibuf_io_inst_0_bits_inst_bits & 32'h6054; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250704.4]
  assign _T_252 = _T_251 == 32'h6010; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250705.4]
  assign _T_253 = ibuf_io_inst_0_bits_inst_bits & 32'h2002074; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250706.4]
  assign _T_254 = _T_253 == 32'h2002030; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250707.4]
  assign _T_255 = ibuf_io_inst_0_bits_inst_bits & 32'h40003034; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250708.4]
  assign _T_256 = _T_255 == 32'h40000030; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250709.4]
  assign _T_257 = ibuf_io_inst_0_bits_inst_bits & 32'h40001054; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250710.4]
  assign _T_258 = _T_257 == 32'h40001010; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250711.4]
  assign _T_260 = _T_246 | _T_248; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250713.4]
  assign _T_261 = _T_260 | _T_250; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250714.4]
  assign _T_262 = _T_261 | _T_252; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250715.4]
  assign _T_263 = _T_262 | _T_254; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250716.4]
  assign _T_264 = _T_263 | _T_256; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250717.4]
  assign _T_265 = _T_264 | _T_258; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250718.4]
  assign _T_266 = ibuf_io_inst_0_bits_inst_bits & 32'h2002054; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250719.4]
  assign _T_267 = _T_266 == 32'h2010; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250720.4]
  assign _T_268 = ibuf_io_inst_0_bits_inst_bits & 32'h2034; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250721.4]
  assign _T_269 = _T_268 == 32'h2010; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250722.4]
  assign _T_270 = ibuf_io_inst_0_bits_inst_bits & 32'h40004054; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250723.4]
  assign _T_271 = _T_270 == 32'h4010; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250724.4]
  assign _T_272 = ibuf_io_inst_0_bits_inst_bits & 32'h5054; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250725.4]
  assign _T_273 = _T_272 == 32'h4010; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250726.4]
  assign _T_274 = ibuf_io_inst_0_bits_inst_bits & 32'h4058; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250727.4]
  assign _T_275 = _T_274 == 32'h4040; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250728.4]
  assign _T_277 = _T_267 | _T_269; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250730.4]
  assign _T_278 = _T_277 | _T_271; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250731.4]
  assign _T_279 = _T_278 | _T_273; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250732.4]
  assign _T_280 = _T_279 | _T_275; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250733.4]
  assign _T_281 = ibuf_io_inst_0_bits_inst_bits & 32'h2006054; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250734.4]
  assign _T_282 = _T_281 == 32'h2010; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250735.4]
  assign _T_283 = ibuf_io_inst_0_bits_inst_bits & 32'h6034; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250736.4]
  assign _T_284 = _T_283 == 32'h2010; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250737.4]
  assign _T_285 = ibuf_io_inst_0_bits_inst_bits & 32'h40003054; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250738.4]
  assign _T_286 = _T_285 == 32'h40001010; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250739.4]
  assign _T_288 = _T_282 | _T_284; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250741.4]
  assign _T_289 = _T_288 | _T_275; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250742.4]
  assign _T_290 = _T_289 | _T_256; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250743.4]
  assign _T_291 = _T_290 | _T_286; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250744.4]
  assign id_ctrl_alu_fn = {_T_291,_T_280,_T_265,_T_244}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@250747.4]
  assign _T_295 = ibuf_io_inst_0_bits_inst_bits & 32'h107f; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250748.4]
  assign _T_296 = _T_295 == 32'h3; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250749.4]
  assign _T_298 = _T_80 | _T_1; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250751.4]
  assign _T_299 = _T_298 | _T_296; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250752.4]
  assign _T_300 = _T_299 | _T_29; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250753.4]
  assign _T_301 = _T_300 | _T_33; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250754.4]
  assign _T_302 = _T_301 | _T_45; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250755.4]
  assign _T_303 = _T_302 | _T_47; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250756.4]
  assign id_ctrl_mem = _T_303 | _T_53; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250757.4]
  assign _T_306 = _T_131 == 32'h20; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250759.4]
  assign _T_307 = ibuf_io_inst_0_bits_inst_bits & 32'h18000020; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250760.4]
  assign _T_308 = _T_307 == 32'h18000020; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250761.4]
  assign _T_309 = ibuf_io_inst_0_bits_inst_bits & 32'h20000020; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250762.4]
  assign _T_310 = _T_309 == 32'h20000020; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250763.4]
  assign _T_312 = _T_306 | _T_308; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250765.4]
  assign _T_313 = _T_312 | _T_310; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250766.4]
  assign _T_314 = ibuf_io_inst_0_bits_inst_bits & 32'h10000008; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250767.4]
  assign _T_315 = _T_314 == 32'h10000008; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250768.4]
  assign _T_316 = ibuf_io_inst_0_bits_inst_bits & 32'h40000008; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250769.4]
  assign _T_317 = _T_316 == 32'h40000008; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250770.4]
  assign _T_319 = _T_315 | _T_317; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250772.4]
  assign _T_320 = ibuf_io_inst_0_bits_inst_bits & 32'h40; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250773.4]
  assign _T_321 = _T_320 == 32'h40; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250774.4]
  assign _T_322 = ibuf_io_inst_0_bits_inst_bits & 32'h8000008; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250775.4]
  assign _T_323 = _T_322 == 32'h8000008; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250776.4]
  assign _T_324 = ibuf_io_inst_0_bits_inst_bits & 32'h80000008; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250777.4]
  assign _T_325 = _T_324 == 32'h80000008; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250778.4]
  assign _T_327 = _T_321 | _T_323; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250780.4]
  assign _T_328 = _T_327 | _T_315; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250781.4]
  assign _T_329 = _T_328 | _T_325; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250782.4]
  assign _T_330 = ibuf_io_inst_0_bits_inst_bits & 32'h18000008; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250783.4]
  assign _T_331 = _T_330 == 32'h8; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250784.4]
  assign id_ctrl_mem_cmd = {_T_321,_T_331,_T_329,_T_319,_T_313}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@250790.4]
  assign _T_338 = ibuf_io_inst_0_bits_inst_bits & 32'h80000060; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250791.4]
  assign _T_339 = _T_338 == 32'h40; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250792.4]
  assign _T_340 = ibuf_io_inst_0_bits_inst_bits & 32'h10000060; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250793.4]
  assign _T_341 = _T_340 == 32'h40; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250794.4]
  assign _T_342 = ibuf_io_inst_0_bits_inst_bits & 32'h70; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250795.4]
  assign id_ctrl_rfs3 = _T_342 == 32'h40; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250796.4]
  assign _T_345 = _T_339 | _T_341; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250798.4]
  assign id_ctrl_rfs1 = _T_345 | id_ctrl_rfs3; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250799.4]
  assign _T_347 = ibuf_io_inst_0_bits_inst_bits & 32'h7c; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250800.4]
  assign _T_348 = _T_347 == 32'h24; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250801.4]
  assign _T_349 = ibuf_io_inst_0_bits_inst_bits & 32'h40000060; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250802.4]
  assign _T_350 = _T_349 == 32'h40; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250803.4]
  assign _T_351 = ibuf_io_inst_0_bits_inst_bits & 32'h90000060; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250804.4]
  assign _T_352 = _T_351 == 32'h10000040; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250805.4]
  assign _T_354 = _T_348 | _T_350; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250807.4]
  assign _T_355 = _T_354 | id_ctrl_rfs3; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250808.4]
  assign id_ctrl_rfs2 = _T_355 | _T_352; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250809.4]
  assign _T_358 = ibuf_io_inst_0_bits_inst_bits & 32'h3c; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250811.4]
  assign _T_359 = _T_358 == 32'h4; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250812.4]
  assign _T_361 = _T_340 == 32'h10000040; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250814.4]
  assign _T_363 = _T_359 | _T_339; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250816.4]
  assign _T_364 = _T_363 | id_ctrl_rfs3; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250817.4]
  assign id_ctrl_wfd = _T_364 | _T_361; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250818.4]
  assign _T_366 = ibuf_io_inst_0_bits_inst_bits & 32'h2000074; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250819.4]
  assign id_ctrl_div = _T_366 == 32'h2000030; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250820.4]
  assign _T_370 = _T_137 == 32'h0; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250823.4]
  assign _T_372 = _T_192 == 32'h10; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250825.4]
  assign _T_373 = ibuf_io_inst_0_bits_inst_bits & 32'h2024; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250826.4]
  assign _T_374 = _T_373 == 32'h24; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250827.4]
  assign _T_375 = ibuf_io_inst_0_bits_inst_bits & 32'h28; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250828.4]
  assign _T_376 = _T_375 == 32'h28; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250829.4]
  assign _T_377 = ibuf_io_inst_0_bits_inst_bits & 32'h1030; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250830.4]
  assign _T_378 = _T_377 == 32'h1030; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250831.4]
  assign _T_379 = ibuf_io_inst_0_bits_inst_bits & 32'h2030; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250832.4]
  assign _T_380 = _T_379 == 32'h2030; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250833.4]
  assign _T_381 = ibuf_io_inst_0_bits_inst_bits & 32'h90000010; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250834.4]
  assign _T_382 = _T_381 == 32'h80000010; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250835.4]
  assign _T_384 = _T_370 | _T_372; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250837.4]
  assign _T_385 = _T_384 | _T_374; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250838.4]
  assign _T_386 = _T_385 | _T_376; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250839.4]
  assign _T_387 = _T_386 | _T_378; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250840.4]
  assign _T_388 = _T_387 | _T_380; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250841.4]
  assign id_ctrl_wxd = _T_388 | _T_382; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250842.4]
  assign _T_390 = ibuf_io_inst_0_bits_inst_bits & 32'h1070; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250843.4]
  assign _T_391 = _T_390 == 32'h1070; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250844.4]
  assign _T_393 = ibuf_io_inst_0_bits_inst_bits & 32'h2070; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250846.4]
  assign _T_394 = _T_393 == 32'h2070; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250847.4]
  assign _T_396 = ibuf_io_inst_0_bits_inst_bits & 32'h10000070; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250849.4]
  assign _T_397 = _T_396 == 32'h70; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250850.4]
  assign _T_398 = ibuf_io_inst_0_bits_inst_bits & 32'h12000034; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250851.4]
  assign _T_399 = _T_398 == 32'h10000030; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250852.4]
  assign _T_400 = ibuf_io_inst_0_bits_inst_bits & 32'he0000050; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250853.4]
  assign _T_401 = _T_400 == 32'h60000050; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250854.4]
  assign _T_403 = _T_397 | _T_391; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250856.4]
  assign _T_404 = _T_403 | _T_394; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250857.4]
  assign _T_405 = _T_404 | _T_399; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250858.4]
  assign _T_406 = _T_405 | _T_401; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250859.4]
  assign id_ctrl_csr = {_T_406,_T_394,_T_391}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@250861.4]
  assign _T_409 = ibuf_io_inst_0_bits_inst_bits & 32'h3058; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250862.4]
  assign id_ctrl_fence_i = _T_409 == 32'h1008; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250863.4]
  assign id_ctrl_fence = _T_247 == 32'h8; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250866.4]
  assign _T_415 = ibuf_io_inst_0_bits_inst_bits & 32'h6048; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250868.4]
  assign id_ctrl_amo = _T_415 == 32'h2008; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250869.4]
  assign _T_418 = ibuf_io_inst_0_bits_inst_bits & 32'h105c; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250871.4]
  assign _T_419 = _T_418 == 32'h1004; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250872.4]
  assign _T_420 = ibuf_io_inst_0_bits_inst_bits & 32'h2000060; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250873.4]
  assign _T_421 = _T_420 == 32'h2000040; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250874.4]
  assign _T_422 = ibuf_io_inst_0_bits_inst_bits & 32'hd0000070; // @[Decode.scala 14:65:chipyard.TestHarness.RocketConfig.fir@250875.4]
  assign _T_423 = _T_422 == 32'h40000050; // @[Decode.scala 14:121:chipyard.TestHarness.RocketConfig.fir@250876.4]
  assign _T_425 = _T_419 | _T_421; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250878.4]
  assign id_ctrl_dp = _T_425 | _T_423; // @[Decode.scala 15:30:chipyard.TestHarness.RocketConfig.fir@250879.4]
  assign id_raddr3 = ibuf_io_inst_0_bits_inst_rs3; // @[RocketCore.scala 261:72:chipyard.TestHarness.RocketConfig.fir@250908.4]
  assign id_raddr2 = ibuf_io_inst_0_bits_inst_rs2; // @[RocketCore.scala 261:72:chipyard.TestHarness.RocketConfig.fir@250909.4]
  assign id_raddr1 = ibuf_io_inst_0_bits_inst_rs1; // @[RocketCore.scala 261:72:chipyard.TestHarness.RocketConfig.fir@250910.4]
  assign id_waddr = ibuf_io_inst_0_bits_inst_rd; // @[RocketCore.scala 261:72:chipyard.TestHarness.RocketConfig.fir@250911.4]
  assign _T_428 = id_raddr1 == 5'h0; // @[RocketCore.scala 990:45:chipyard.TestHarness.RocketConfig.fir@250918.4]
  assign _T_433 = _T_427__T_432_data; // @[RocketCore.scala 990:25:chipyard.TestHarness.RocketConfig.fir@250923.4]
  assign _T_439 = _T_427__T_438_data; // @[RocketCore.scala 990:25:chipyard.TestHarness.RocketConfig.fir@250932.4]
  assign _T_506 = id_ctrl_csr == 3'h6; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@251007.4]
  assign _T_507 = id_ctrl_csr == 3'h7; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@251008.4]
  assign _T_508 = id_ctrl_csr == 3'h5; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@251009.4]
  assign _T_509 = _T_506 | _T_507; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@251010.4]
  assign id_csr_en = _T_509 | _T_508; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@251011.4]
  assign id_system_insn = id_ctrl_csr == 3'h4; // @[RocketCore.scala 278:36:chipyard.TestHarness.RocketConfig.fir@251012.4]
  assign id_csr_ren = _T_509 & _T_428; // @[RocketCore.scala 279:54:chipyard.TestHarness.RocketConfig.fir@251017.4]
  assign _T_514 = id_ctrl_mem_cmd == 5'h14; // @[RocketCore.scala 281:50:chipyard.TestHarness.RocketConfig.fir@251019.4]
  assign id_sfence = id_ctrl_mem & _T_514; // @[RocketCore.scala 281:31:chipyard.TestHarness.RocketConfig.fir@251020.4]
  assign _T_515 = id_sfence | id_system_insn; // @[RocketCore.scala 282:32:chipyard.TestHarness.RocketConfig.fir@251021.4]
  assign _T_516 = ~id_csr_ren; // @[RocketCore.scala 282:67:chipyard.TestHarness.RocketConfig.fir@251022.4]
  assign _T_517 = id_csr_en & _T_516; // @[RocketCore.scala 282:64:chipyard.TestHarness.RocketConfig.fir@251023.4]
  assign _T_518 = _T_517 & csr_io_decode_0_write_flush; // @[RocketCore.scala 282:79:chipyard.TestHarness.RocketConfig.fir@251024.4]
  assign id_csr_flush = _T_515 | _T_518; // @[RocketCore.scala 282:50:chipyard.TestHarness.RocketConfig.fir@251025.4]
  assign _T_519 = ~id_ctrl_legal; // @[RocketCore.scala 290:25:chipyard.TestHarness.RocketConfig.fir@251028.4]
  assign _T_522 = ~csr_io_status_isa[12]; // @[RocketCore.scala 291:37:chipyard.TestHarness.RocketConfig.fir@251031.4]
  assign _T_523 = id_ctrl_div & _T_522; // @[RocketCore.scala 291:34:chipyard.TestHarness.RocketConfig.fir@251032.4]
  assign _T_524 = _T_519 | _T_523; // @[RocketCore.scala 290:40:chipyard.TestHarness.RocketConfig.fir@251033.4]
  assign _T_526 = ~csr_io_status_isa[0]; // @[RocketCore.scala 292:20:chipyard.TestHarness.RocketConfig.fir@251035.4]
  assign _T_527 = id_ctrl_amo & _T_526; // @[RocketCore.scala 292:17:chipyard.TestHarness.RocketConfig.fir@251036.4]
  assign _T_528 = _T_524 | _T_527; // @[RocketCore.scala 291:65:chipyard.TestHarness.RocketConfig.fir@251037.4]
  assign _T_529 = csr_io_decode_0_fp_illegal | io_fpu_illegal_rm; // @[RocketCore.scala 293:48:chipyard.TestHarness.RocketConfig.fir@251038.4]
  assign _T_530 = id_ctrl_fp & _T_529; // @[RocketCore.scala 293:16:chipyard.TestHarness.RocketConfig.fir@251039.4]
  assign _T_531 = _T_528 | _T_530; // @[RocketCore.scala 292:48:chipyard.TestHarness.RocketConfig.fir@251040.4]
  assign _T_533 = ~csr_io_status_isa[3]; // @[RocketCore.scala 294:19:chipyard.TestHarness.RocketConfig.fir@251042.4]
  assign _T_534 = id_ctrl_dp & _T_533; // @[RocketCore.scala 294:16:chipyard.TestHarness.RocketConfig.fir@251043.4]
  assign _T_535 = _T_531 | _T_534; // @[RocketCore.scala 293:70:chipyard.TestHarness.RocketConfig.fir@251044.4]
  assign _T_537 = ~csr_io_status_isa[2]; // @[RocketCore.scala 295:33:chipyard.TestHarness.RocketConfig.fir@251046.4]
  assign _T_538 = ibuf_io_inst_0_bits_rvc & _T_537; // @[RocketCore.scala 295:30:chipyard.TestHarness.RocketConfig.fir@251047.4]
  assign _T_539 = _T_535 | _T_538; // @[RocketCore.scala 294:47:chipyard.TestHarness.RocketConfig.fir@251048.4]
  assign _T_559 = _T_516 & csr_io_decode_0_write_illegal; // @[RocketCore.scala 301:64:chipyard.TestHarness.RocketConfig.fir@251068.4]
  assign _T_560 = csr_io_decode_0_read_illegal | _T_559; // @[RocketCore.scala 301:49:chipyard.TestHarness.RocketConfig.fir@251069.4]
  assign _T_561 = id_csr_en & _T_560; // @[RocketCore.scala 301:15:chipyard.TestHarness.RocketConfig.fir@251070.4]
  assign _T_562 = _T_539 | _T_561; // @[RocketCore.scala 300:81:chipyard.TestHarness.RocketConfig.fir@251071.4]
  assign _T_563 = ~ibuf_io_inst_0_bits_rvc; // @[RocketCore.scala 302:5:chipyard.TestHarness.RocketConfig.fir@251072.4]
  assign _T_565 = _T_515 & csr_io_decode_0_system_illegal; // @[RocketCore.scala 302:65:chipyard.TestHarness.RocketConfig.fir@251074.4]
  assign _T_566 = _T_563 & _T_565; // @[RocketCore.scala 302:31:chipyard.TestHarness.RocketConfig.fir@251075.4]
  assign id_illegal_insn = _T_562 | _T_566; // @[RocketCore.scala 301:99:chipyard.TestHarness.RocketConfig.fir@251076.4]
  assign id_amo_aq = ibuf_io_inst_0_bits_inst_bits[26]; // @[RocketCore.scala 304:29:chipyard.TestHarness.RocketConfig.fir@251077.4]
  assign id_amo_rl = ibuf_io_inst_0_bits_inst_bits[25]; // @[RocketCore.scala 305:29:chipyard.TestHarness.RocketConfig.fir@251078.4]
  assign id_fence_succ = ibuf_io_inst_0_bits_inst_bits[23:20]; // @[RocketCore.scala 307:33:chipyard.TestHarness.RocketConfig.fir@251080.4]
  assign _T_567 = id_ctrl_amo & id_amo_aq; // @[RocketCore.scala 308:52:chipyard.TestHarness.RocketConfig.fir@251081.4]
  assign id_fence_next = id_ctrl_fence | _T_567; // @[RocketCore.scala 308:37:chipyard.TestHarness.RocketConfig.fir@251082.4]
  assign _T_568 = ~io_dmem_ordered; // @[RocketCore.scala 309:21:chipyard.TestHarness.RocketConfig.fir@251083.4]
  assign id_mem_busy = _T_568 | io_dmem_req_valid; // @[RocketCore.scala 309:38:chipyard.TestHarness.RocketConfig.fir@251084.4]
  assign _T_569 = ~id_mem_busy; // @[RocketCore.scala 310:9:chipyard.TestHarness.RocketConfig.fir@251085.4]
  assign _GEN_0 = _T_569 ? 1'h0 : id_reg_fence; // @[RocketCore.scala 310:23:chipyard.TestHarness.RocketConfig.fir@251086.4]
  assign _T_577 = id_ctrl_amo & id_amo_rl; // @[RocketCore.scala 315:33:chipyard.TestHarness.RocketConfig.fir@251097.4]
  assign _T_578 = _T_577 | id_ctrl_fence_i; // @[RocketCore.scala 315:46:chipyard.TestHarness.RocketConfig.fir@251098.4]
  assign _T_580 = id_reg_fence & id_ctrl_mem; // @[RocketCore.scala 315:81:chipyard.TestHarness.RocketConfig.fir@251100.4]
  assign _T_581 = _T_578 | _T_580; // @[RocketCore.scala 315:65:chipyard.TestHarness.RocketConfig.fir@251101.4]
  assign id_do_fence = id_mem_busy & _T_581; // @[RocketCore.scala 315:17:chipyard.TestHarness.RocketConfig.fir@251102.4]
  assign _T_584 = csr_io_interrupt | bpu_io_debug_if; // @[RocketCore.scala 943:26:chipyard.TestHarness.RocketConfig.fir@251115.4]
  assign _T_585 = _T_584 | bpu_io_xcpt_if; // @[RocketCore.scala 943:26:chipyard.TestHarness.RocketConfig.fir@251116.4]
  assign _T_586 = _T_585 | ibuf_io_inst_0_bits_xcpt0_pf_inst; // @[RocketCore.scala 943:26:chipyard.TestHarness.RocketConfig.fir@251117.4]
  assign _T_587 = _T_586 | ibuf_io_inst_0_bits_xcpt0_ae_inst; // @[RocketCore.scala 943:26:chipyard.TestHarness.RocketConfig.fir@251118.4]
  assign _T_588 = _T_587 | ibuf_io_inst_0_bits_xcpt1_pf_inst; // @[RocketCore.scala 943:26:chipyard.TestHarness.RocketConfig.fir@251119.4]
  assign _T_589 = _T_588 | ibuf_io_inst_0_bits_xcpt1_ae_inst; // @[RocketCore.scala 943:26:chipyard.TestHarness.RocketConfig.fir@251120.4]
  assign id_xcpt = _T_589 | id_illegal_insn; // @[RocketCore.scala 943:26:chipyard.TestHarness.RocketConfig.fir@251121.4]
  assign _T_590 = ibuf_io_inst_0_bits_xcpt1_ae_inst ? 2'h1 : 2'h2; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@251122.4]
  assign _T_591 = ibuf_io_inst_0_bits_xcpt1_pf_inst ? 4'hc : {{2'd0}, _T_590}; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@251123.4]
  assign _T_592 = ibuf_io_inst_0_bits_xcpt0_ae_inst ? 4'h1 : _T_591; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@251124.4]
  assign _T_593 = ibuf_io_inst_0_bits_xcpt0_pf_inst ? 4'hc : _T_592; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@251125.4]
  assign _T_594 = bpu_io_xcpt_if ? 4'h3 : _T_593; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@251126.4]
  assign _T_595 = bpu_io_debug_if ? 4'he : _T_594; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@251127.4]
  assign ex_waddr = ex_reg_inst[11:7]; // @[RocketCore.scala 351:29:chipyard.TestHarness.RocketConfig.fir@251140.4]
  assign mem_waddr = mem_reg_inst[11:7]; // @[RocketCore.scala 352:31:chipyard.TestHarness.RocketConfig.fir@251142.4]
  assign wb_waddr = wb_reg_inst[11:7]; // @[RocketCore.scala 353:29:chipyard.TestHarness.RocketConfig.fir@251144.4]
  assign _T_609 = ex_reg_valid & ex_ctrl_wxd; // @[RocketCore.scala 356:19:chipyard.TestHarness.RocketConfig.fir@251146.4]
  assign _T_610 = mem_reg_valid & mem_ctrl_wxd; // @[RocketCore.scala 357:20:chipyard.TestHarness.RocketConfig.fir@251147.4]
  assign _T_611 = ~mem_ctrl_mem; // @[RocketCore.scala 357:39:chipyard.TestHarness.RocketConfig.fir@251148.4]
  assign _T_612 = _T_610 & _T_611; // @[RocketCore.scala 357:36:chipyard.TestHarness.RocketConfig.fir@251149.4]
  assign id_bypass_src_0_0 = 5'h0 == id_raddr1; // @[RocketCore.scala 359:82:chipyard.TestHarness.RocketConfig.fir@251151.4]
  assign _T_615 = ex_waddr == id_raddr1; // @[RocketCore.scala 359:82:chipyard.TestHarness.RocketConfig.fir@251153.4]
  assign id_bypass_src_0_1 = _T_609 & _T_615; // @[RocketCore.scala 359:74:chipyard.TestHarness.RocketConfig.fir@251154.4]
  assign _T_616 = mem_waddr == id_raddr1; // @[RocketCore.scala 359:82:chipyard.TestHarness.RocketConfig.fir@251155.4]
  assign id_bypass_src_0_2 = _T_612 & _T_616; // @[RocketCore.scala 359:74:chipyard.TestHarness.RocketConfig.fir@251156.4]
  assign id_bypass_src_0_3 = _T_610 & _T_616; // @[RocketCore.scala 359:74:chipyard.TestHarness.RocketConfig.fir@251158.4]
  assign id_bypass_src_1_0 = 5'h0 == id_raddr2; // @[RocketCore.scala 359:82:chipyard.TestHarness.RocketConfig.fir@251159.4]
  assign _T_619 = ex_waddr == id_raddr2; // @[RocketCore.scala 359:82:chipyard.TestHarness.RocketConfig.fir@251161.4]
  assign id_bypass_src_1_1 = _T_609 & _T_619; // @[RocketCore.scala 359:74:chipyard.TestHarness.RocketConfig.fir@251162.4]
  assign _T_620 = mem_waddr == id_raddr2; // @[RocketCore.scala 359:82:chipyard.TestHarness.RocketConfig.fir@251163.4]
  assign id_bypass_src_1_2 = _T_612 & _T_620; // @[RocketCore.scala 359:74:chipyard.TestHarness.RocketConfig.fir@251164.4]
  assign id_bypass_src_1_3 = _T_610 & _T_620; // @[RocketCore.scala 359:74:chipyard.TestHarness.RocketConfig.fir@251166.4]
  assign _T_622 = ex_reg_rs_lsb_0 == 2'h1; // @[package.scala 32:86:chipyard.TestHarness.RocketConfig.fir@251170.4]
  assign _T_623 = _T_622 ? mem_reg_wdata : 64'h0; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@251171.4]
  assign _T_624 = ex_reg_rs_lsb_0 == 2'h2; // @[package.scala 32:86:chipyard.TestHarness.RocketConfig.fir@251172.4]
  assign _T_625 = _T_624 ? wb_reg_wdata : _T_623; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@251173.4]
  assign _T_626 = ex_reg_rs_lsb_0 == 2'h3; // @[package.scala 32:86:chipyard.TestHarness.RocketConfig.fir@251174.4]
  assign _T_627 = _T_626 ? io_dmem_resp_bits_data_word_bypass : _T_625; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@251175.4]
  assign _T_628 = {ex_reg_rs_msb_0,ex_reg_rs_lsb_0}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@251176.4]
  assign _T_629 = ex_reg_rs_lsb_1 == 2'h1; // @[package.scala 32:86:chipyard.TestHarness.RocketConfig.fir@251178.4]
  assign _T_630 = _T_629 ? mem_reg_wdata : 64'h0; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@251179.4]
  assign _T_631 = ex_reg_rs_lsb_1 == 2'h2; // @[package.scala 32:86:chipyard.TestHarness.RocketConfig.fir@251180.4]
  assign _T_632 = _T_631 ? wb_reg_wdata : _T_630; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@251181.4]
  assign _T_633 = ex_reg_rs_lsb_1 == 2'h3; // @[package.scala 32:86:chipyard.TestHarness.RocketConfig.fir@251182.4]
  assign _T_634 = _T_633 ? io_dmem_resp_bits_data_word_bypass : _T_632; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@251183.4]
  assign _T_635 = {ex_reg_rs_msb_1,ex_reg_rs_lsb_1}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@251184.4]
  assign ex_rs_1 = ex_reg_rs_bypass_1 ? _T_634 : _T_635; // @[RocketCore.scala 367:14:chipyard.TestHarness.RocketConfig.fir@251185.4]
  assign _T_636 = ex_ctrl_sel_imm == 3'h5; // @[RocketCore.scala 1005:24:chipyard.TestHarness.RocketConfig.fir@251186.4]
  assign _T_638 = ex_reg_inst[31]; // @[RocketCore.scala 1005:53:chipyard.TestHarness.RocketConfig.fir@251188.4]
  assign _T_639 = _T_636 ? $signed(1'sh0) : $signed(_T_638); // @[RocketCore.scala 1005:19:chipyard.TestHarness.RocketConfig.fir@251189.4]
  assign _T_640 = ex_ctrl_sel_imm == 3'h2; // @[RocketCore.scala 1006:26:chipyard.TestHarness.RocketConfig.fir@251190.4]
  assign _T_642 = ex_reg_inst[30:20]; // @[RocketCore.scala 1006:49:chipyard.TestHarness.RocketConfig.fir@251192.4]
  assign _T_644 = ex_ctrl_sel_imm != 3'h2; // @[RocketCore.scala 1007:26:chipyard.TestHarness.RocketConfig.fir@251194.4]
  assign _T_645 = ex_ctrl_sel_imm != 3'h3; // @[RocketCore.scala 1007:43:chipyard.TestHarness.RocketConfig.fir@251195.4]
  assign _T_646 = _T_644 & _T_645; // @[RocketCore.scala 1007:36:chipyard.TestHarness.RocketConfig.fir@251196.4]
  assign _T_648 = ex_reg_inst[19:12]; // @[RocketCore.scala 1007:73:chipyard.TestHarness.RocketConfig.fir@251198.4]
  assign _T_652 = _T_640 | _T_636; // @[RocketCore.scala 1008:33:chipyard.TestHarness.RocketConfig.fir@251202.4]
  assign _T_653 = ex_ctrl_sel_imm == 3'h3; // @[RocketCore.scala 1009:23:chipyard.TestHarness.RocketConfig.fir@251203.4]
  assign _T_655 = ex_reg_inst[20]; // @[RocketCore.scala 1009:44:chipyard.TestHarness.RocketConfig.fir@251205.4]
  assign _T_656 = ex_ctrl_sel_imm == 3'h1; // @[RocketCore.scala 1010:23:chipyard.TestHarness.RocketConfig.fir@251206.4]
  assign _T_658 = ex_reg_inst[7]; // @[RocketCore.scala 1010:43:chipyard.TestHarness.RocketConfig.fir@251208.4]
  assign _T_659 = _T_656 ? $signed(_T_658) : $signed(_T_639); // @[RocketCore.scala 1010:18:chipyard.TestHarness.RocketConfig.fir@251209.4]
  assign _T_660 = _T_653 ? $signed(_T_655) : $signed(_T_659); // @[RocketCore.scala 1009:18:chipyard.TestHarness.RocketConfig.fir@251210.4]
  assign _T_666 = _T_652 ? 6'h0 : ex_reg_inst[30:25]; // @[RocketCore.scala 1011:20:chipyard.TestHarness.RocketConfig.fir@251216.4]
  assign _T_668 = ex_ctrl_sel_imm == 3'h0; // @[RocketCore.scala 1013:24:chipyard.TestHarness.RocketConfig.fir@251218.4]
  assign _T_670 = _T_668 | _T_656; // @[RocketCore.scala 1013:34:chipyard.TestHarness.RocketConfig.fir@251220.4]
  assign _T_675 = _T_636 ? ex_reg_inst[19:16] : ex_reg_inst[24:21]; // @[RocketCore.scala 1014:19:chipyard.TestHarness.RocketConfig.fir@251225.4]
  assign _T_676 = _T_670 ? ex_reg_inst[11:8] : _T_675; // @[RocketCore.scala 1013:19:chipyard.TestHarness.RocketConfig.fir@251226.4]
  assign _T_677 = _T_640 ? 4'h0 : _T_676; // @[RocketCore.scala 1012:19:chipyard.TestHarness.RocketConfig.fir@251227.4]
  assign _T_680 = ex_ctrl_sel_imm == 3'h4; // @[RocketCore.scala 1016:22:chipyard.TestHarness.RocketConfig.fir@251230.4]
  assign _T_684 = _T_636 & ex_reg_inst[15]; // @[RocketCore.scala 1017:17:chipyard.TestHarness.RocketConfig.fir@251234.4]
  assign _T_685 = _T_680 ? ex_reg_inst[20] : _T_684; // @[RocketCore.scala 1016:17:chipyard.TestHarness.RocketConfig.fir@251235.4]
  assign _T_686 = _T_668 ? ex_reg_inst[7] : _T_685; // @[RocketCore.scala 1015:17:chipyard.TestHarness.RocketConfig.fir@251236.4]
  assign _T_689 = _T_652 ? $signed(1'sh0) : $signed(_T_660); // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@251239.4]
  assign _T_690 = _T_646 ? $signed({8{_T_639}}) : $signed(_T_648); // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@251240.4]
  assign _T_692 = _T_640 ? $signed(_T_642) : $signed({11{_T_639}}); // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@251242.4]
  assign _T_693 = _T_636 ? $signed(1'sh0) : $signed(_T_638); // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@251243.4]
  assign ex_imm = {_T_693,_T_692,_T_690,_T_689,_T_666,_T_677,_T_686}; // @[RocketCore.scala 1019:53:chipyard.TestHarness.RocketConfig.fir@251247.4]
  assign _T_697 = ex_reg_rs_bypass_0 ? _T_627 : _T_628; // @[RocketCore.scala 370:24:chipyard.TestHarness.RocketConfig.fir@251248.4]
  assign _T_698 = ex_reg_pc; // @[RocketCore.scala 371:24:chipyard.TestHarness.RocketConfig.fir@251249.4]
  assign _T_699 = 2'h1 == ex_ctrl_sel_alu1; // @[Mux.scala 80:60:chipyard.TestHarness.RocketConfig.fir@251250.4]
  assign _T_700 = _T_699 ? $signed(_T_697) : $signed(64'sh0); // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@251251.4]
  assign _T_701 = 2'h2 == ex_ctrl_sel_alu1; // @[Mux.scala 80:60:chipyard.TestHarness.RocketConfig.fir@251252.4]
  assign _T_702 = ex_reg_rs_bypass_1 ? _T_634 : _T_635; // @[RocketCore.scala 373:24:chipyard.TestHarness.RocketConfig.fir@251254.4]
  assign _T_703 = ex_reg_rvc ? $signed(4'sh2) : $signed(4'sh4); // @[RocketCore.scala 375:19:chipyard.TestHarness.RocketConfig.fir@251255.4]
  assign _T_704 = 2'h2 == ex_ctrl_sel_alu2; // @[Mux.scala 80:60:chipyard.TestHarness.RocketConfig.fir@251256.4]
  assign _T_705 = _T_704 ? $signed(_T_702) : $signed(64'sh0); // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@251257.4]
  assign _T_706 = 2'h3 == ex_ctrl_sel_alu2; // @[Mux.scala 80:60:chipyard.TestHarness.RocketConfig.fir@251258.4]
  assign _T_707 = _T_706 ? $signed({{32{ex_imm[31]}},ex_imm}) : $signed(_T_705); // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@251259.4]
  assign _T_708 = 2'h1 == ex_ctrl_sel_alu2; // @[Mux.scala 80:60:chipyard.TestHarness.RocketConfig.fir@251260.4]
  assign _T_1373 = ~ibuf_io_inst_0_valid; // @[RocketCore.scala 774:17:chipyard.TestHarness.RocketConfig.fir@252210.4]
  assign _T_1374 = _T_1373 | ibuf_io_inst_0_bits_replay; // @[RocketCore.scala 774:40:chipyard.TestHarness.RocketConfig.fir@252211.4]
  assign _T_1375 = _T_1374 | take_pc_mem_wb; // @[RocketCore.scala 774:71:chipyard.TestHarness.RocketConfig.fir@252212.4]
  assign _T_1179 = id_raddr1 != 5'h0; // @[RocketCore.scala 704:55:chipyard.TestHarness.RocketConfig.fir@251980.4]
  assign _T_1180 = id_ctrl_rxs1 & _T_1179; // @[RocketCore.scala 704:42:chipyard.TestHarness.RocketConfig.fir@251981.4]
  assign _T_1227 = id_raddr1 == ex_waddr; // @[RocketCore.scala 724:70:chipyard.TestHarness.RocketConfig.fir@252036.4]
  assign _T_1228 = _T_1180 & _T_1227; // @[RocketCore.scala 952:27:chipyard.TestHarness.RocketConfig.fir@252037.4]
  assign _T_1181 = id_raddr2 != 5'h0; // @[RocketCore.scala 705:55:chipyard.TestHarness.RocketConfig.fir@251982.4]
  assign _T_1182 = id_ctrl_rxs2 & _T_1181; // @[RocketCore.scala 705:42:chipyard.TestHarness.RocketConfig.fir@251983.4]
  assign _T_1229 = id_raddr2 == ex_waddr; // @[RocketCore.scala 724:70:chipyard.TestHarness.RocketConfig.fir@252038.4]
  assign _T_1230 = _T_1182 & _T_1229; // @[RocketCore.scala 952:27:chipyard.TestHarness.RocketConfig.fir@252039.4]
  assign _T_1233 = _T_1228 | _T_1230; // @[RocketCore.scala 952:50:chipyard.TestHarness.RocketConfig.fir@252042.4]
  assign _T_1183 = id_waddr != 5'h0; // @[RocketCore.scala 706:55:chipyard.TestHarness.RocketConfig.fir@251984.4]
  assign _T_1184 = id_ctrl_wxd & _T_1183; // @[RocketCore.scala 706:42:chipyard.TestHarness.RocketConfig.fir@251985.4]
  assign _T_1231 = id_waddr == ex_waddr; // @[RocketCore.scala 724:70:chipyard.TestHarness.RocketConfig.fir@252040.4]
  assign _T_1232 = _T_1184 & _T_1231; // @[RocketCore.scala 952:27:chipyard.TestHarness.RocketConfig.fir@252041.4]
  assign _T_1234 = _T_1233 | _T_1232; // @[RocketCore.scala 952:50:chipyard.TestHarness.RocketConfig.fir@252043.4]
  assign data_hazard_ex = ex_ctrl_wxd & _T_1234; // @[RocketCore.scala 724:36:chipyard.TestHarness.RocketConfig.fir@252044.4]
  assign _T_1220 = ex_ctrl_csr != 3'h0; // @[RocketCore.scala 723:38:chipyard.TestHarness.RocketConfig.fir@252028.4]
  assign _T_1221 = _T_1220 | ex_ctrl_jalr; // @[RocketCore.scala 723:48:chipyard.TestHarness.RocketConfig.fir@252029.4]
  assign _T_1222 = _T_1221 | ex_ctrl_mem; // @[RocketCore.scala 723:64:chipyard.TestHarness.RocketConfig.fir@252030.4]
  assign _T_1224 = _T_1222 | ex_ctrl_div; // @[RocketCore.scala 723:94:chipyard.TestHarness.RocketConfig.fir@252032.4]
  assign ex_cannot_bypass = _T_1224 | ex_ctrl_fp; // @[RocketCore.scala 723:109:chipyard.TestHarness.RocketConfig.fir@252033.4]
  assign _T_1246 = data_hazard_ex & ex_cannot_bypass; // @[RocketCore.scala 726:54:chipyard.TestHarness.RocketConfig.fir@252057.4]
  assign _T_1236 = io_fpu_dec_ren1 & _T_1227; // @[RocketCore.scala 952:27:chipyard.TestHarness.RocketConfig.fir@252046.4]
  assign _T_1238 = io_fpu_dec_ren2 & _T_1229; // @[RocketCore.scala 952:27:chipyard.TestHarness.RocketConfig.fir@252048.4]
  assign _T_1243 = _T_1236 | _T_1238; // @[RocketCore.scala 952:50:chipyard.TestHarness.RocketConfig.fir@252053.4]
  assign _T_1239 = id_raddr3 == ex_waddr; // @[RocketCore.scala 725:76:chipyard.TestHarness.RocketConfig.fir@252049.4]
  assign _T_1240 = io_fpu_dec_ren3 & _T_1239; // @[RocketCore.scala 952:27:chipyard.TestHarness.RocketConfig.fir@252050.4]
  assign _T_1244 = _T_1243 | _T_1240; // @[RocketCore.scala 952:50:chipyard.TestHarness.RocketConfig.fir@252054.4]
  assign _T_1242 = io_fpu_dec_wen & _T_1231; // @[RocketCore.scala 952:27:chipyard.TestHarness.RocketConfig.fir@252052.4]
  assign _T_1245 = _T_1244 | _T_1242; // @[RocketCore.scala 952:50:chipyard.TestHarness.RocketConfig.fir@252055.4]
  assign fp_data_hazard_ex = ex_ctrl_wfd & _T_1245; // @[RocketCore.scala 725:39:chipyard.TestHarness.RocketConfig.fir@252056.4]
  assign _T_1247 = _T_1246 | fp_data_hazard_ex; // @[RocketCore.scala 726:74:chipyard.TestHarness.RocketConfig.fir@252058.4]
  assign id_ex_hazard = ex_reg_valid & _T_1247; // @[RocketCore.scala 726:35:chipyard.TestHarness.RocketConfig.fir@252059.4]
  assign _T_1254 = id_raddr1 == mem_waddr; // @[RocketCore.scala 733:72:chipyard.TestHarness.RocketConfig.fir@252068.4]
  assign _T_1255 = _T_1180 & _T_1254; // @[RocketCore.scala 952:27:chipyard.TestHarness.RocketConfig.fir@252069.4]
  assign _T_1256 = id_raddr2 == mem_waddr; // @[RocketCore.scala 733:72:chipyard.TestHarness.RocketConfig.fir@252070.4]
  assign _T_1257 = _T_1182 & _T_1256; // @[RocketCore.scala 952:27:chipyard.TestHarness.RocketConfig.fir@252071.4]
  assign _T_1260 = _T_1255 | _T_1257; // @[RocketCore.scala 952:50:chipyard.TestHarness.RocketConfig.fir@252074.4]
  assign _T_1258 = id_waddr == mem_waddr; // @[RocketCore.scala 733:72:chipyard.TestHarness.RocketConfig.fir@252072.4]
  assign _T_1259 = _T_1184 & _T_1258; // @[RocketCore.scala 952:27:chipyard.TestHarness.RocketConfig.fir@252073.4]
  assign _T_1261 = _T_1260 | _T_1259; // @[RocketCore.scala 952:50:chipyard.TestHarness.RocketConfig.fir@252075.4]
  assign data_hazard_mem = mem_ctrl_wxd & _T_1261; // @[RocketCore.scala 733:38:chipyard.TestHarness.RocketConfig.fir@252076.4]
  assign _T_1248 = mem_ctrl_csr != 3'h0; // @[RocketCore.scala 732:40:chipyard.TestHarness.RocketConfig.fir@252061.4]
  assign _T_1249 = mem_ctrl_mem & mem_reg_slow_bypass; // @[RocketCore.scala 732:66:chipyard.TestHarness.RocketConfig.fir@252062.4]
  assign _T_1250 = _T_1248 | _T_1249; // @[RocketCore.scala 732:50:chipyard.TestHarness.RocketConfig.fir@252063.4]
  assign _T_1252 = _T_1250 | mem_ctrl_div; // @[RocketCore.scala 732:100:chipyard.TestHarness.RocketConfig.fir@252065.4]
  assign mem_cannot_bypass = _T_1252 | mem_ctrl_fp; // @[RocketCore.scala 732:116:chipyard.TestHarness.RocketConfig.fir@252066.4]
  assign _T_1273 = data_hazard_mem & mem_cannot_bypass; // @[RocketCore.scala 735:57:chipyard.TestHarness.RocketConfig.fir@252089.4]
  assign _T_1263 = io_fpu_dec_ren1 & _T_1254; // @[RocketCore.scala 952:27:chipyard.TestHarness.RocketConfig.fir@252078.4]
  assign _T_1265 = io_fpu_dec_ren2 & _T_1256; // @[RocketCore.scala 952:27:chipyard.TestHarness.RocketConfig.fir@252080.4]
  assign _T_1270 = _T_1263 | _T_1265; // @[RocketCore.scala 952:50:chipyard.TestHarness.RocketConfig.fir@252085.4]
  assign _T_1266 = id_raddr3 == mem_waddr; // @[RocketCore.scala 734:78:chipyard.TestHarness.RocketConfig.fir@252081.4]
  assign _T_1267 = io_fpu_dec_ren3 & _T_1266; // @[RocketCore.scala 952:27:chipyard.TestHarness.RocketConfig.fir@252082.4]
  assign _T_1271 = _T_1270 | _T_1267; // @[RocketCore.scala 952:50:chipyard.TestHarness.RocketConfig.fir@252086.4]
  assign _T_1269 = io_fpu_dec_wen & _T_1258; // @[RocketCore.scala 952:27:chipyard.TestHarness.RocketConfig.fir@252084.4]
  assign _T_1272 = _T_1271 | _T_1269; // @[RocketCore.scala 952:50:chipyard.TestHarness.RocketConfig.fir@252087.4]
  assign fp_data_hazard_mem = mem_ctrl_wfd & _T_1272; // @[RocketCore.scala 734:41:chipyard.TestHarness.RocketConfig.fir@252088.4]
  assign _T_1274 = _T_1273 | fp_data_hazard_mem; // @[RocketCore.scala 735:78:chipyard.TestHarness.RocketConfig.fir@252090.4]
  assign id_mem_hazard = mem_reg_valid & _T_1274; // @[RocketCore.scala 735:37:chipyard.TestHarness.RocketConfig.fir@252091.4]
  assign _T_1344 = id_ex_hazard | id_mem_hazard; // @[RocketCore.scala 762:18:chipyard.TestHarness.RocketConfig.fir@252180.4]
  assign _T_1277 = id_raddr1 == wb_waddr; // @[RocketCore.scala 739:70:chipyard.TestHarness.RocketConfig.fir@252095.4]
  assign _T_1278 = _T_1180 & _T_1277; // @[RocketCore.scala 952:27:chipyard.TestHarness.RocketConfig.fir@252096.4]
  assign _T_1279 = id_raddr2 == wb_waddr; // @[RocketCore.scala 739:70:chipyard.TestHarness.RocketConfig.fir@252097.4]
  assign _T_1280 = _T_1182 & _T_1279; // @[RocketCore.scala 952:27:chipyard.TestHarness.RocketConfig.fir@252098.4]
  assign _T_1283 = _T_1278 | _T_1280; // @[RocketCore.scala 952:50:chipyard.TestHarness.RocketConfig.fir@252101.4]
  assign _T_1281 = id_waddr == wb_waddr; // @[RocketCore.scala 739:70:chipyard.TestHarness.RocketConfig.fir@252099.4]
  assign _T_1282 = _T_1184 & _T_1281; // @[RocketCore.scala 952:27:chipyard.TestHarness.RocketConfig.fir@252100.4]
  assign _T_1284 = _T_1283 | _T_1282; // @[RocketCore.scala 952:50:chipyard.TestHarness.RocketConfig.fir@252102.4]
  assign data_hazard_wb = wb_ctrl_wxd & _T_1284; // @[RocketCore.scala 739:36:chipyard.TestHarness.RocketConfig.fir@252103.4]
  assign _T_762 = ~io_dmem_resp_valid; // @[RocketCore.scala 483:39:chipyard.TestHarness.RocketConfig.fir@251402.4]
  assign wb_dcache_miss = wb_ctrl_mem & _T_762; // @[RocketCore.scala 483:36:chipyard.TestHarness.RocketConfig.fir@251403.4]
  assign wb_set_sboard = wb_ctrl_div | wb_dcache_miss; // @[RocketCore.scala 628:35:chipyard.TestHarness.RocketConfig.fir@251843.4]
  assign _T_1296 = data_hazard_wb & wb_set_sboard; // @[RocketCore.scala 741:54:chipyard.TestHarness.RocketConfig.fir@252116.4]
  assign _T_1286 = io_fpu_dec_ren1 & _T_1277; // @[RocketCore.scala 952:27:chipyard.TestHarness.RocketConfig.fir@252105.4]
  assign _T_1288 = io_fpu_dec_ren2 & _T_1279; // @[RocketCore.scala 952:27:chipyard.TestHarness.RocketConfig.fir@252107.4]
  assign _T_1293 = _T_1286 | _T_1288; // @[RocketCore.scala 952:50:chipyard.TestHarness.RocketConfig.fir@252112.4]
  assign _T_1289 = id_raddr3 == wb_waddr; // @[RocketCore.scala 740:76:chipyard.TestHarness.RocketConfig.fir@252108.4]
  assign _T_1290 = io_fpu_dec_ren3 & _T_1289; // @[RocketCore.scala 952:27:chipyard.TestHarness.RocketConfig.fir@252109.4]
  assign _T_1294 = _T_1293 | _T_1290; // @[RocketCore.scala 952:50:chipyard.TestHarness.RocketConfig.fir@252113.4]
  assign _T_1292 = io_fpu_dec_wen & _T_1281; // @[RocketCore.scala 952:27:chipyard.TestHarness.RocketConfig.fir@252111.4]
  assign _T_1295 = _T_1294 | _T_1292; // @[RocketCore.scala 952:50:chipyard.TestHarness.RocketConfig.fir@252114.4]
  assign fp_data_hazard_wb = wb_ctrl_wfd & _T_1295; // @[RocketCore.scala 740:39:chipyard.TestHarness.RocketConfig.fir@252115.4]
  assign _T_1297 = _T_1296 | fp_data_hazard_wb; // @[RocketCore.scala 741:71:chipyard.TestHarness.RocketConfig.fir@252117.4]
  assign id_wb_hazard = wb_reg_valid & _T_1297; // @[RocketCore.scala 741:35:chipyard.TestHarness.RocketConfig.fir@252118.4]
  assign _T_1345 = _T_1344 | id_wb_hazard; // @[RocketCore.scala 762:35:chipyard.TestHarness.RocketConfig.fir@252181.4]
  assign _T_1187 = {_T_1185[31:1], 1'h0}; // @[RocketCore.scala 970:40:chipyard.TestHarness.RocketConfig.fir@251988.4]
  assign _T_1193 = _T_1187 >> id_raddr1; // @[RocketCore.scala 966:35:chipyard.TestHarness.RocketConfig.fir@251997.4]
  assign dmem_resp_valid = io_dmem_resp_valid & io_dmem_resp_bits_has_data; // @[RocketCore.scala 638:44:chipyard.TestHarness.RocketConfig.fir@251860.4]
  assign dmem_resp_replay = dmem_resp_valid & io_dmem_resp_bits_replay; // @[RocketCore.scala 639:42:chipyard.TestHarness.RocketConfig.fir@251861.4]
  assign dmem_resp_xpu = ~io_dmem_resp_bits_tag[0]; // @[RocketCore.scala 635:23:chipyard.TestHarness.RocketConfig.fir@251856.4]
  assign _T_1123 = dmem_resp_replay & dmem_resp_xpu; // @[RocketCore.scala 654:26:chipyard.TestHarness.RocketConfig.fir@251874.4]
  assign _T_1122 = div_io_resp_ready & div_io_resp_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@251870.4]
  assign ll_wen = _T_1123 | _T_1122; // @[RocketCore.scala 654:44:chipyard.TestHarness.RocketConfig.fir@251875.4]
  assign dmem_resp_waddr = io_dmem_resp_bits_tag[5:1]; // @[RocketCore.scala 637:46:chipyard.TestHarness.RocketConfig.fir@251859.4]
  assign ll_waddr = _T_1123 ? dmem_resp_waddr : div_io_resp_bits_tag; // @[RocketCore.scala 654:44:chipyard.TestHarness.RocketConfig.fir@251875.4]
  assign _T_1195 = ll_waddr == id_raddr1; // @[RocketCore.scala 716:70:chipyard.TestHarness.RocketConfig.fir@251999.4]
  assign _T_1196 = ll_wen & _T_1195; // @[RocketCore.scala 716:58:chipyard.TestHarness.RocketConfig.fir@252000.4]
  assign _T_1197 = ~_T_1196; // @[RocketCore.scala 719:80:chipyard.TestHarness.RocketConfig.fir@252001.4]
  assign _T_1198 = _T_1193[0] & _T_1197; // @[RocketCore.scala 719:77:chipyard.TestHarness.RocketConfig.fir@252002.4]
  assign _T_1199 = _T_1180 & _T_1198; // @[RocketCore.scala 952:27:chipyard.TestHarness.RocketConfig.fir@252003.4]
  assign _T_1200 = _T_1187 >> id_raddr2; // @[RocketCore.scala 966:35:chipyard.TestHarness.RocketConfig.fir@252004.4]
  assign _T_1202 = ll_waddr == id_raddr2; // @[RocketCore.scala 716:70:chipyard.TestHarness.RocketConfig.fir@252006.4]
  assign _T_1203 = ll_wen & _T_1202; // @[RocketCore.scala 716:58:chipyard.TestHarness.RocketConfig.fir@252007.4]
  assign _T_1204 = ~_T_1203; // @[RocketCore.scala 719:80:chipyard.TestHarness.RocketConfig.fir@252008.4]
  assign _T_1205 = _T_1200[0] & _T_1204; // @[RocketCore.scala 719:77:chipyard.TestHarness.RocketConfig.fir@252009.4]
  assign _T_1206 = _T_1182 & _T_1205; // @[RocketCore.scala 952:27:chipyard.TestHarness.RocketConfig.fir@252010.4]
  assign _T_1214 = _T_1199 | _T_1206; // @[RocketCore.scala 952:50:chipyard.TestHarness.RocketConfig.fir@252018.4]
  assign _T_1207 = _T_1187 >> id_waddr; // @[RocketCore.scala 966:35:chipyard.TestHarness.RocketConfig.fir@252011.4]
  assign _T_1209 = ll_waddr == id_waddr; // @[RocketCore.scala 716:70:chipyard.TestHarness.RocketConfig.fir@252013.4]
  assign _T_1210 = ll_wen & _T_1209; // @[RocketCore.scala 716:58:chipyard.TestHarness.RocketConfig.fir@252014.4]
  assign _T_1211 = ~_T_1210; // @[RocketCore.scala 719:80:chipyard.TestHarness.RocketConfig.fir@252015.4]
  assign _T_1212 = _T_1207[0] & _T_1211; // @[RocketCore.scala 719:77:chipyard.TestHarness.RocketConfig.fir@252016.4]
  assign _T_1213 = _T_1184 & _T_1212; // @[RocketCore.scala 952:27:chipyard.TestHarness.RocketConfig.fir@252017.4]
  assign id_sboard_hazard = _T_1214 | _T_1213; // @[RocketCore.scala 952:50:chipyard.TestHarness.RocketConfig.fir@252019.4]
  assign _T_1346 = _T_1345 | id_sboard_hazard; // @[RocketCore.scala 762:51:chipyard.TestHarness.RocketConfig.fir@252182.4]
  assign _T_1347 = ex_reg_valid | mem_reg_valid; // @[RocketCore.scala 763:40:chipyard.TestHarness.RocketConfig.fir@252183.4]
  assign _T_1348 = _T_1347 | wb_reg_valid; // @[RocketCore.scala 763:57:chipyard.TestHarness.RocketConfig.fir@252184.4]
  assign _T_1349 = csr_io_singleStep & _T_1348; // @[RocketCore.scala 763:23:chipyard.TestHarness.RocketConfig.fir@252185.4]
  assign _T_1350 = _T_1346 | _T_1349; // @[RocketCore.scala 762:71:chipyard.TestHarness.RocketConfig.fir@252186.4]
  assign _T_1351 = id_csr_en & csr_io_decode_0_fp_csr; // @[RocketCore.scala 764:15:chipyard.TestHarness.RocketConfig.fir@252187.4]
  assign _T_1352 = ~io_fpu_fcsr_rdy; // @[RocketCore.scala 764:45:chipyard.TestHarness.RocketConfig.fir@252188.4]
  assign _T_1353 = _T_1351 & _T_1352; // @[RocketCore.scala 764:42:chipyard.TestHarness.RocketConfig.fir@252189.4]
  assign _T_1354 = _T_1350 | _T_1353; // @[RocketCore.scala 763:74:chipyard.TestHarness.RocketConfig.fir@252190.4]
  assign _T_1317 = _T_1298 >> id_raddr1; // @[RocketCore.scala 966:35:chipyard.TestHarness.RocketConfig.fir@252147.4]
  assign _T_1319 = io_fpu_dec_ren1 & _T_1317[0]; // @[RocketCore.scala 952:27:chipyard.TestHarness.RocketConfig.fir@252149.4]
  assign _T_1320 = _T_1298 >> id_raddr2; // @[RocketCore.scala 966:35:chipyard.TestHarness.RocketConfig.fir@252150.4]
  assign _T_1322 = io_fpu_dec_ren2 & _T_1320[0]; // @[RocketCore.scala 952:27:chipyard.TestHarness.RocketConfig.fir@252152.4]
  assign _T_1329 = _T_1319 | _T_1322; // @[RocketCore.scala 952:50:chipyard.TestHarness.RocketConfig.fir@252159.4]
  assign _T_1323 = _T_1298 >> id_raddr3; // @[RocketCore.scala 966:35:chipyard.TestHarness.RocketConfig.fir@252153.4]
  assign _T_1325 = io_fpu_dec_ren3 & _T_1323[0]; // @[RocketCore.scala 952:27:chipyard.TestHarness.RocketConfig.fir@252155.4]
  assign _T_1330 = _T_1329 | _T_1325; // @[RocketCore.scala 952:50:chipyard.TestHarness.RocketConfig.fir@252160.4]
  assign _T_1326 = _T_1298 >> id_waddr; // @[RocketCore.scala 966:35:chipyard.TestHarness.RocketConfig.fir@252156.4]
  assign _T_1328 = io_fpu_dec_wen & _T_1326[0]; // @[RocketCore.scala 952:27:chipyard.TestHarness.RocketConfig.fir@252158.4]
  assign id_stall_fpu = _T_1330 | _T_1328; // @[RocketCore.scala 952:50:chipyard.TestHarness.RocketConfig.fir@252161.4]
  assign _T_1355 = id_ctrl_fp & id_stall_fpu; // @[RocketCore.scala 765:16:chipyard.TestHarness.RocketConfig.fir@252191.4]
  assign _T_1356 = _T_1354 | _T_1355; // @[RocketCore.scala 764:62:chipyard.TestHarness.RocketConfig.fir@252192.4]
  assign _T_1338 = ~io_dmem_perf_grant; // @[RocketCore.scala 756:16:chipyard.TestHarness.RocketConfig.fir@252171.4]
  assign dcache_blocked = blocked & _T_1338; // @[RocketCore.scala 756:13:chipyard.TestHarness.RocketConfig.fir@252172.4]
  assign _T_1357 = id_ctrl_mem & dcache_blocked; // @[RocketCore.scala 766:17:chipyard.TestHarness.RocketConfig.fir@252193.4]
  assign _T_1358 = _T_1356 | _T_1357; // @[RocketCore.scala 765:32:chipyard.TestHarness.RocketConfig.fir@252194.4]
  assign wb_wxd = wb_reg_valid & wb_ctrl_wxd; // @[RocketCore.scala 627:29:chipyard.TestHarness.RocketConfig.fir@251842.4]
  assign _T_1361 = ~wb_wxd; // @[RocketCore.scala 768:65:chipyard.TestHarness.RocketConfig.fir@252197.4]
  assign _T_1362 = div_io_resp_valid & _T_1361; // @[RocketCore.scala 768:62:chipyard.TestHarness.RocketConfig.fir@252198.4]
  assign _T_1363 = div_io_req_ready | _T_1362; // @[RocketCore.scala 768:40:chipyard.TestHarness.RocketConfig.fir@252199.4]
  assign _T_1364 = ~_T_1363; // @[RocketCore.scala 768:21:chipyard.TestHarness.RocketConfig.fir@252200.4]
  assign _T_1365 = _T_1364 | div_io_req_valid; // @[RocketCore.scala 768:75:chipyard.TestHarness.RocketConfig.fir@252201.4]
  assign _T_1366 = id_ctrl_div & _T_1365; // @[RocketCore.scala 768:17:chipyard.TestHarness.RocketConfig.fir@252202.4]
  assign _T_1367 = _T_1358 | _T_1366; // @[RocketCore.scala 767:34:chipyard.TestHarness.RocketConfig.fir@252203.4]
  assign _T_1370 = _T_1367 | id_do_fence; // @[RocketCore.scala 769:15:chipyard.TestHarness.RocketConfig.fir@252206.4]
  assign _T_1371 = _T_1370 | csr_io_csr_stall; // @[RocketCore.scala 770:17:chipyard.TestHarness.RocketConfig.fir@252207.4]
  assign ctrl_stalld = _T_1371 | id_reg_pause; // @[RocketCore.scala 771:22:chipyard.TestHarness.RocketConfig.fir@252208.4]
  assign _T_1376 = _T_1375 | ctrl_stalld; // @[RocketCore.scala 774:89:chipyard.TestHarness.RocketConfig.fir@252213.4]
  assign ctrl_killd = _T_1376 | csr_io_interrupt; // @[RocketCore.scala 774:104:chipyard.TestHarness.RocketConfig.fir@252214.4]
  assign _T_712 = ~ctrl_killd; // @[RocketCore.scala 415:19:chipyard.TestHarness.RocketConfig.fir@251283.4]
  assign _T_713 = ~take_pc_mem_wb; // @[RocketCore.scala 416:20:chipyard.TestHarness.RocketConfig.fir@251285.4]
  assign _T_714 = _T_713 & ibuf_io_inst_0_valid; // @[RocketCore.scala 416:29:chipyard.TestHarness.RocketConfig.fir@251286.4]
  assign _T_724 = id_fence_succ == 4'h0; // @[RocketCore.scala 426:42:chipyard.TestHarness.RocketConfig.fir@251305.6]
  assign _T_725 = id_ctrl_fence & _T_724; // @[RocketCore.scala 426:25:chipyard.TestHarness.RocketConfig.fir@251306.6]
  assign _GEN_1 = _T_725 | id_reg_pause; // @[RocketCore.scala 426:49:chipyard.TestHarness.RocketConfig.fir@251307.6]
  assign _GEN_2 = id_fence_next | _GEN_0; // @[RocketCore.scala 427:26:chipyard.TestHarness.RocketConfig.fir@251310.6]
  assign _T_726 = {ibuf_io_inst_0_bits_xcpt1_pf_inst,ibuf_io_inst_0_bits_xcpt1_ae_inst}; // @[RocketCore.scala 433:22:chipyard.TestHarness.RocketConfig.fir@251318.8]
  assign _T_727 = |_T_726; // @[RocketCore.scala 433:29:chipyard.TestHarness.RocketConfig.fir@251319.8]
  assign _GEN_5 = _T_727 | ibuf_io_inst_0_bits_rvc; // @[RocketCore.scala 433:34:chipyard.TestHarness.RocketConfig.fir@251320.8]
  assign _T_728 = {ibuf_io_inst_0_bits_xcpt0_pf_inst,ibuf_io_inst_0_bits_xcpt0_ae_inst}; // @[RocketCore.scala 438:40:chipyard.TestHarness.RocketConfig.fir@251325.8]
  assign _T_729 = |_T_728; // @[RocketCore.scala 438:47:chipyard.TestHarness.RocketConfig.fir@251326.8]
  assign _T_730 = bpu_io_xcpt_if | _T_729; // @[RocketCore.scala 438:28:chipyard.TestHarness.RocketConfig.fir@251327.8]
  assign _GEN_9 = id_xcpt | id_ctrl_alu_dw; // @[RocketCore.scala 428:20:chipyard.TestHarness.RocketConfig.fir@251313.6]
  assign _T_731 = id_ctrl_fence_i | id_csr_flush; // @[RocketCore.scala 443:42:chipyard.TestHarness.RocketConfig.fir@251333.6]
  assign _T_734 = id_ctrl_mem_cmd == 5'h5; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@251339.6]
  assign _T_735 = _T_514 | _T_734; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@251340.6]
  assign _T_738 = {_T_1181,_T_1179}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@251344.8]
  assign _T_739 = id_bypass_src_0_0 | id_bypass_src_0_1; // @[RocketCore.scala 456:48:chipyard.TestHarness.RocketConfig.fir@251347.6]
  assign _T_740 = _T_739 | id_bypass_src_0_2; // @[RocketCore.scala 456:48:chipyard.TestHarness.RocketConfig.fir@251348.6]
  assign do_bypass = _T_740 | id_bypass_src_0_3; // @[RocketCore.scala 456:48:chipyard.TestHarness.RocketConfig.fir@251349.6]
  assign _T_743 = ~do_bypass; // @[RocketCore.scala 460:26:chipyard.TestHarness.RocketConfig.fir@251355.6]
  assign _T_744 = id_ctrl_rxs1 & _T_743; // @[RocketCore.scala 460:23:chipyard.TestHarness.RocketConfig.fir@251356.6]
  assign _T_1124 = ~replay_wb_common; // @[RocketCore.scala 662:34:chipyard.TestHarness.RocketConfig.fir@251880.4]
  assign _T_1125 = wb_reg_valid & _T_1124; // @[RocketCore.scala 662:31:chipyard.TestHarness.RocketConfig.fir@251881.4]
  assign _T_1126 = ~wb_xcpt; // @[RocketCore.scala 662:48:chipyard.TestHarness.RocketConfig.fir@251882.4]
  assign wb_valid = _T_1125 & _T_1126; // @[RocketCore.scala 662:45:chipyard.TestHarness.RocketConfig.fir@251883.4]
  assign wb_wen = wb_valid & wb_ctrl_wxd; // @[RocketCore.scala 663:25:chipyard.TestHarness.RocketConfig.fir@251884.4]
  assign rf_wen = wb_wen | ll_wen; // @[RocketCore.scala 664:23:chipyard.TestHarness.RocketConfig.fir@251885.4]
  assign rf_waddr = ll_wen ? ll_waddr : wb_waddr; // @[RocketCore.scala 665:21:chipyard.TestHarness.RocketConfig.fir@251886.4]
  assign _T_1133 = rf_waddr != 5'h0; // @[RocketCore.scala 995:16:chipyard.TestHarness.RocketConfig.fir@251895.6]
  assign _T_1137 = rf_waddr == id_raddr1; // @[RocketCore.scala 998:20:chipyard.TestHarness.RocketConfig.fir@251901.8]
  assign _T_1127 = dmem_resp_valid & dmem_resp_xpu; // @[RocketCore.scala 666:38:chipyard.TestHarness.RocketConfig.fir@251887.4]
  assign ll_wdata = div_io_resp_bits_data; // @[:chipyard.TestHarness.RocketConfig.fir@251864.4 :chipyard.TestHarness.RocketConfig.fir@251866.4]
  assign _T_1129 = wb_ctrl_csr != 3'h0; // @[RocketCore.scala 668:34:chipyard.TestHarness.RocketConfig.fir@251889.4]
  assign _T_1131 = _T_1129 ? csr_io_rw_rdata : wb_reg_wdata; // @[RocketCore.scala 668:21:chipyard.TestHarness.RocketConfig.fir@251891.4]
  assign _T_1132 = ll_wen ? ll_wdata : _T_1131; // @[RocketCore.scala 667:21:chipyard.TestHarness.RocketConfig.fir@251892.4]
  assign rf_wdata = _T_1127 ? io_dmem_resp_bits_data : _T_1132; // @[RocketCore.scala 666:21:chipyard.TestHarness.RocketConfig.fir@251893.4]
  assign _GEN_226 = _T_1137 ? rf_wdata : _T_433; // @[RocketCore.scala 998:31:chipyard.TestHarness.RocketConfig.fir@251902.8]
  assign _GEN_233 = _T_1133 ? _GEN_226 : _T_433; // @[RocketCore.scala 995:29:chipyard.TestHarness.RocketConfig.fir@251896.6]
  assign id_rs_0 = rf_wen ? _GEN_233 : _T_433; // @[RocketCore.scala 671:17:chipyard.TestHarness.RocketConfig.fir@251894.4]
  assign _T_747 = id_bypass_src_1_0 | id_bypass_src_1_1; // @[RocketCore.scala 456:48:chipyard.TestHarness.RocketConfig.fir@251363.6]
  assign _T_748 = _T_747 | id_bypass_src_1_2; // @[RocketCore.scala 456:48:chipyard.TestHarness.RocketConfig.fir@251364.6]
  assign do_bypass_1 = _T_748 | id_bypass_src_1_3; // @[RocketCore.scala 456:48:chipyard.TestHarness.RocketConfig.fir@251365.6]
  assign _T_751 = ~do_bypass_1; // @[RocketCore.scala 460:26:chipyard.TestHarness.RocketConfig.fir@251371.6]
  assign _T_752 = id_ctrl_rxs2 & _T_751; // @[RocketCore.scala 460:23:chipyard.TestHarness.RocketConfig.fir@251372.6]
  assign _T_1138 = rf_waddr == id_raddr2; // @[RocketCore.scala 998:20:chipyard.TestHarness.RocketConfig.fir@251905.8]
  assign _GEN_227 = _T_1138 ? rf_wdata : _T_439; // @[RocketCore.scala 998:31:chipyard.TestHarness.RocketConfig.fir@251906.8]
  assign _GEN_234 = _T_1133 ? _GEN_227 : _T_439; // @[RocketCore.scala 995:29:chipyard.TestHarness.RocketConfig.fir@251896.6]
  assign id_rs_1 = rf_wen ? _GEN_234 : _T_439; // @[RocketCore.scala 671:17:chipyard.TestHarness.RocketConfig.fir@251894.4]
  assign inst = ibuf_io_inst_0_bits_rvc ? {{16'd0}, ibuf_io_inst_0_bits_raw[15:0]} : ibuf_io_inst_0_bits_raw; // @[RocketCore.scala 466:21:chipyard.TestHarness.RocketConfig.fir@251381.8]
  assign _T_1275 = mem_reg_valid & data_hazard_mem; // @[RocketCore.scala 736:32:chipyard.TestHarness.RocketConfig.fir@252092.4]
  assign id_load_use = _T_1275 & mem_ctrl_mem; // @[RocketCore.scala 736:51:chipyard.TestHarness.RocketConfig.fir@252093.4]
  assign _T_759 = _T_712 | csr_io_interrupt; // @[RocketCore.scala 472:21:chipyard.TestHarness.RocketConfig.fir@251390.4]
  assign _T_760 = _T_759 | ibuf_io_inst_0_bits_replay; // @[RocketCore.scala 472:41:chipyard.TestHarness.RocketConfig.fir@251391.4]
  assign _T_763 = ~io_dmem_req_ready; // @[RocketCore.scala 484:45:chipyard.TestHarness.RocketConfig.fir@251404.4]
  assign _T_764 = ex_ctrl_mem & _T_763; // @[RocketCore.scala 484:42:chipyard.TestHarness.RocketConfig.fir@251405.4]
  assign _T_765 = ~div_io_req_ready; // @[RocketCore.scala 485:45:chipyard.TestHarness.RocketConfig.fir@251406.4]
  assign _T_766 = ex_ctrl_div & _T_765; // @[RocketCore.scala 485:42:chipyard.TestHarness.RocketConfig.fir@251407.4]
  assign replay_ex_structural = _T_764 | _T_766; // @[RocketCore.scala 484:64:chipyard.TestHarness.RocketConfig.fir@251408.4]
  assign replay_ex_load_use = wb_dcache_miss & ex_reg_load_use; // @[RocketCore.scala 486:43:chipyard.TestHarness.RocketConfig.fir@251409.4]
  assign _T_767 = replay_ex_structural | replay_ex_load_use; // @[RocketCore.scala 487:75:chipyard.TestHarness.RocketConfig.fir@251410.4]
  assign _T_768 = ex_reg_valid & _T_767; // @[RocketCore.scala 487:50:chipyard.TestHarness.RocketConfig.fir@251411.4]
  assign replay_ex = ex_reg_replay | _T_768; // @[RocketCore.scala 487:33:chipyard.TestHarness.RocketConfig.fir@251412.4]
  assign _T_769 = take_pc_mem_wb | replay_ex; // @[RocketCore.scala 488:35:chipyard.TestHarness.RocketConfig.fir@251413.4]
  assign _T_770 = ~ex_reg_valid; // @[RocketCore.scala 488:51:chipyard.TestHarness.RocketConfig.fir@251414.4]
  assign ctrl_killx = _T_769 | _T_770; // @[RocketCore.scala 488:48:chipyard.TestHarness.RocketConfig.fir@251415.4]
  assign _T_771 = ex_ctrl_mem_cmd == 5'h7; // @[RocketCore.scala 490:40:chipyard.TestHarness.RocketConfig.fir@251416.4]
  assign _T_772 = ex_reg_mem_size < 2'h2; // @[RocketCore.scala 490:69:chipyard.TestHarness.RocketConfig.fir@251417.4]
  assign ex_slow_bypass = _T_771 | _T_772; // @[RocketCore.scala 490:50:chipyard.TestHarness.RocketConfig.fir@251418.4]
  assign _T_774 = ex_ctrl_mem_cmd == 5'h14; // @[RocketCore.scala 491:67:chipyard.TestHarness.RocketConfig.fir@251420.4]
  assign ex_sfence = ex_ctrl_mem & _T_774; // @[RocketCore.scala 491:48:chipyard.TestHarness.RocketConfig.fir@251421.4]
  assign ex_xcpt = ex_reg_xcpt_interrupt | ex_reg_xcpt; // @[RocketCore.scala 494:28:chipyard.TestHarness.RocketConfig.fir@251422.4]
  assign _T_785 = mem_reg_valid | mem_reg_replay; // @[RocketCore.scala 500:36:chipyard.TestHarness.RocketConfig.fir@251433.4]
  assign mem_pc_valid = _T_785 | mem_reg_xcpt_interrupt; // @[RocketCore.scala 500:54:chipyard.TestHarness.RocketConfig.fir@251434.4]
  assign _T_938 = _T_537 & mem_npc[1]; // @[RocketCore.scala 509:56:chipyard.TestHarness.RocketConfig.fir@251592.4]
  assign _T_939 = ~mem_reg_sfence; // @[RocketCore.scala 509:73:chipyard.TestHarness.RocketConfig.fir@251593.4]
  assign mem_npc_misaligned = _T_938 & _T_939; // @[RocketCore.scala 509:70:chipyard.TestHarness.RocketConfig.fir@251594.4]
  assign _T_940 = ~mem_reg_xcpt; // @[RocketCore.scala 510:27:chipyard.TestHarness.RocketConfig.fir@251595.4]
  assign _T_941 = mem_ctrl_jalr ^ mem_npc_misaligned; // @[RocketCore.scala 510:59:chipyard.TestHarness.RocketConfig.fir@251596.4]
  assign _T_942 = _T_940 & _T_941; // @[RocketCore.scala 510:41:chipyard.TestHarness.RocketConfig.fir@251597.4]
  assign mem_int_wdata = _T_942 ? $signed({{24{mem_br_target[39]}},mem_br_target}) : $signed(mem_reg_wdata); // @[RocketCore.scala 510:119:chipyard.TestHarness.RocketConfig.fir@251600.4]
  assign _T_945 = mem_ctrl_branch | mem_ctrl_jalr; // @[RocketCore.scala 511:33:chipyard.TestHarness.RocketConfig.fir@251601.4]
  assign mem_cfi = _T_945 | mem_ctrl_jal; // @[RocketCore.scala 511:50:chipyard.TestHarness.RocketConfig.fir@251602.4]
  assign _T_947 = _T_787 | mem_ctrl_jalr; // @[RocketCore.scala 512:57:chipyard.TestHarness.RocketConfig.fir@251604.4]
  assign mem_cfi_taken = _T_947 | mem_ctrl_jal; // @[RocketCore.scala 512:74:chipyard.TestHarness.RocketConfig.fir@251605.4]
  assign _T_952 = ~ctrl_killx; // @[RocketCore.scala 517:20:chipyard.TestHarness.RocketConfig.fir@251612.4]
  assign _T_959 = mem_reg_valid & mem_reg_flush_pipe; // @[RocketCore.scala 524:23:chipyard.TestHarness.RocketConfig.fir@251623.4]
  assign _T_960 = ex_ctrl_mem_cmd == 5'h0; // @[Consts.scala 82:31:chipyard.TestHarness.RocketConfig.fir@251633.8]
  assign _T_961 = ex_ctrl_mem_cmd == 5'h6; // @[Consts.scala 82:48:chipyard.TestHarness.RocketConfig.fir@251634.8]
  assign _T_962 = _T_960 | _T_961; // @[Consts.scala 82:41:chipyard.TestHarness.RocketConfig.fir@251635.8]
  assign _T_964 = _T_962 | _T_771; // @[Consts.scala 82:58:chipyard.TestHarness.RocketConfig.fir@251637.8]
  assign _T_965 = ex_ctrl_mem_cmd == 5'h4; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@251638.8]
  assign _T_966 = ex_ctrl_mem_cmd == 5'h9; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@251639.8]
  assign _T_967 = ex_ctrl_mem_cmd == 5'ha; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@251640.8]
  assign _T_968 = ex_ctrl_mem_cmd == 5'hb; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@251641.8]
  assign _T_969 = _T_965 | _T_966; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@251642.8]
  assign _T_970 = _T_969 | _T_967; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@251643.8]
  assign _T_971 = _T_970 | _T_968; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@251644.8]
  assign _T_972 = ex_ctrl_mem_cmd == 5'h8; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@251645.8]
  assign _T_973 = ex_ctrl_mem_cmd == 5'hc; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@251646.8]
  assign _T_974 = ex_ctrl_mem_cmd == 5'hd; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@251647.8]
  assign _T_975 = ex_ctrl_mem_cmd == 5'he; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@251648.8]
  assign _T_976 = ex_ctrl_mem_cmd == 5'hf; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@251649.8]
  assign _T_977 = _T_972 | _T_973; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@251650.8]
  assign _T_978 = _T_977 | _T_974; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@251651.8]
  assign _T_979 = _T_978 | _T_975; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@251652.8]
  assign _T_980 = _T_979 | _T_976; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@251653.8]
  assign _T_981 = _T_971 | _T_980; // @[Consts.scala 80:44:chipyard.TestHarness.RocketConfig.fir@251654.8]
  assign _T_982 = _T_964 | _T_981; // @[Consts.scala 82:75:chipyard.TestHarness.RocketConfig.fir@251655.8]
  assign _T_983 = ex_ctrl_mem & _T_982; // @[RocketCore.scala 531:33:chipyard.TestHarness.RocketConfig.fir@251656.8]
  assign _T_984 = ex_ctrl_mem_cmd == 5'h1; // @[Consts.scala 83:32:chipyard.TestHarness.RocketConfig.fir@251658.8]
  assign _T_985 = ex_ctrl_mem_cmd == 5'h11; // @[Consts.scala 83:49:chipyard.TestHarness.RocketConfig.fir@251659.8]
  assign _T_986 = _T_984 | _T_985; // @[Consts.scala 83:42:chipyard.TestHarness.RocketConfig.fir@251660.8]
  assign _T_988 = _T_986 | _T_771; // @[Consts.scala 83:59:chipyard.TestHarness.RocketConfig.fir@251662.8]
  assign _T_1006 = _T_988 | _T_981; // @[Consts.scala 83:76:chipyard.TestHarness.RocketConfig.fir@251680.8]
  assign _T_1007 = ex_ctrl_mem & _T_1006; // @[RocketCore.scala 532:34:chipyard.TestHarness.RocketConfig.fir@251681.8]
  assign _T_1008 = alu_io_out; // @[RocketCore.scala 544:25:chipyard.TestHarness.RocketConfig.fir@251693.8]
  assign _T_1010 = ex_ctrl_mem | ex_sfence; // @[RocketCore.scala 547:56:chipyard.TestHarness.RocketConfig.fir@251697.8]
  assign _T_1011 = ex_ctrl_rxs2 & _T_1010; // @[RocketCore.scala 547:24:chipyard.TestHarness.RocketConfig.fir@251698.8]
  assign _T_1013 = ex_reg_mem_size == 2'h0; // @[AMOALU.scala 26:19:chipyard.TestHarness.RocketConfig.fir@251702.10]
  assign _T_1017 = {ex_rs_1[7:0],ex_rs_1[7:0],ex_rs_1[7:0],ex_rs_1[7:0],ex_rs_1[7:0],ex_rs_1[7:0],ex_rs_1[7:0],ex_rs_1[7:0]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@251706.10]
  assign _T_1018 = ex_reg_mem_size == 2'h1; // @[AMOALU.scala 26:19:chipyard.TestHarness.RocketConfig.fir@251707.10]
  assign _T_1021 = {ex_rs_1[15:0],ex_rs_1[15:0],ex_rs_1[15:0],ex_rs_1[15:0]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@251710.10]
  assign _T_1022 = ex_reg_mem_size == 2'h2; // @[AMOALU.scala 26:19:chipyard.TestHarness.RocketConfig.fir@251711.10]
  assign _T_1024 = {ex_rs_1[31:0],ex_rs_1[31:0]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@251713.10]
  assign _T_1028 = ex_ctrl_jalr & csr_io_status_debug; // @[RocketCore.scala 551:24:chipyard.TestHarness.RocketConfig.fir@251719.8]
  assign _GEN_77 = _T_1028 | ex_ctrl_fence_i; // @[RocketCore.scala 551:48:chipyard.TestHarness.RocketConfig.fir@251720.8]
  assign _GEN_78 = _T_1028 | ex_reg_flush_pipe; // @[RocketCore.scala 551:48:chipyard.TestHarness.RocketConfig.fir@251720.8]
  assign _T_1029 = mem_reg_load & bpu_io_xcpt_ld; // @[RocketCore.scala 558:38:chipyard.TestHarness.RocketConfig.fir@251725.4]
  assign _T_1030 = mem_reg_store & bpu_io_xcpt_st; // @[RocketCore.scala 558:75:chipyard.TestHarness.RocketConfig.fir@251726.4]
  assign mem_breakpoint = _T_1029 | _T_1030; // @[RocketCore.scala 558:57:chipyard.TestHarness.RocketConfig.fir@251727.4]
  assign _T_1031 = mem_reg_load & bpu_io_debug_ld; // @[RocketCore.scala 559:44:chipyard.TestHarness.RocketConfig.fir@251728.4]
  assign _T_1032 = mem_reg_store & bpu_io_debug_st; // @[RocketCore.scala 559:82:chipyard.TestHarness.RocketConfig.fir@251729.4]
  assign mem_debug_breakpoint = _T_1031 | _T_1032; // @[RocketCore.scala 559:64:chipyard.TestHarness.RocketConfig.fir@251730.4]
  assign mem_ldst_xcpt = mem_debug_breakpoint | mem_breakpoint; // @[RocketCore.scala 943:26:chipyard.TestHarness.RocketConfig.fir@251731.4]
  assign mem_ldst_cause = mem_debug_breakpoint ? 4'he : 4'h3; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@251732.4]
  assign _T_1033 = mem_reg_xcpt_interrupt | mem_reg_xcpt; // @[RocketCore.scala 565:29:chipyard.TestHarness.RocketConfig.fir@251733.4]
  assign _T_1034 = mem_reg_valid & mem_npc_misaligned; // @[RocketCore.scala 566:20:chipyard.TestHarness.RocketConfig.fir@251734.4]
  assign _T_1035 = mem_reg_valid & mem_ldst_xcpt; // @[RocketCore.scala 567:20:chipyard.TestHarness.RocketConfig.fir@251735.4]
  assign _T_1036 = _T_1033 | _T_1034; // @[RocketCore.scala 943:26:chipyard.TestHarness.RocketConfig.fir@251736.4]
  assign mem_xcpt = _T_1036 | _T_1035; // @[RocketCore.scala 943:26:chipyard.TestHarness.RocketConfig.fir@251737.4]
  assign _T_1037 = _T_1034 ? 4'h0 : mem_ldst_cause; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@251738.4]
  assign dcache_kill_mem = _T_610 & io_dmem_replay_next; // @[RocketCore.scala 576:55:chipyard.TestHarness.RocketConfig.fir@251753.4]
  assign _T_1051 = mem_reg_valid & mem_ctrl_fp; // @[RocketCore.scala 577:36:chipyard.TestHarness.RocketConfig.fir@251754.4]
  assign fpu_kill_mem = _T_1051 & io_fpu_nack_mem; // @[RocketCore.scala 577:51:chipyard.TestHarness.RocketConfig.fir@251755.4]
  assign _T_1052 = dcache_kill_mem | mem_reg_replay; // @[RocketCore.scala 578:37:chipyard.TestHarness.RocketConfig.fir@251756.4]
  assign replay_mem = _T_1052 | fpu_kill_mem; // @[RocketCore.scala 578:55:chipyard.TestHarness.RocketConfig.fir@251757.4]
  assign _T_1053 = dcache_kill_mem | take_pc_wb; // @[RocketCore.scala 579:38:chipyard.TestHarness.RocketConfig.fir@251758.4]
  assign _T_1054 = _T_1053 | mem_reg_xcpt; // @[RocketCore.scala 579:52:chipyard.TestHarness.RocketConfig.fir@251759.4]
  assign _T_1055 = ~mem_reg_valid; // @[RocketCore.scala 579:71:chipyard.TestHarness.RocketConfig.fir@251760.4]
  assign killm_common = _T_1054 | _T_1055; // @[RocketCore.scala 579:68:chipyard.TestHarness.RocketConfig.fir@251761.4]
  assign _T_1059 = killm_common | mem_xcpt; // @[RocketCore.scala 581:33:chipyard.TestHarness.RocketConfig.fir@251767.4]
  assign ctrl_killm = _T_1059 | fpu_kill_mem; // @[RocketCore.scala 581:45:chipyard.TestHarness.RocketConfig.fir@251768.4]
  assign _T_1060 = ~ctrl_killm; // @[RocketCore.scala 584:19:chipyard.TestHarness.RocketConfig.fir@251769.4]
  assign _T_1061 = ~take_pc_wb; // @[RocketCore.scala 585:34:chipyard.TestHarness.RocketConfig.fir@251771.4]
  assign _T_1068 = _T_940 & mem_ctrl_fp; // @[RocketCore.scala 592:25:chipyard.TestHarness.RocketConfig.fir@251784.6]
  assign _T_1069 = _T_1068 & mem_ctrl_wxd; // @[RocketCore.scala 592:40:chipyard.TestHarness.RocketConfig.fir@251785.6]
  assign _T_1094 = _T_1086 ? 3'h7 : 3'h5; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@251822.4]
  assign _T_1095 = _T_1084 ? 4'hd : {{1'd0}, _T_1094}; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@251823.4]
  assign _T_1096 = _T_1082 ? 4'hf : _T_1095; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@251824.4]
  assign _T_1097 = _T_1080 ? 4'h4 : _T_1096; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@251825.4]
  assign _T_1098 = _T_1078 ? 4'h6 : _T_1097; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@251826.4]
  assign wb_cause = wb_reg_xcpt ? wb_reg_cause : {{60'd0}, _T_1098}; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@251827.4]
  assign _T_1099 = wb_cause == 64'h6; // @[RocketCore.scala 947:38:chipyard.TestHarness.RocketConfig.fir@251828.4]
  assign _T_1101 = wb_cause == 64'h4; // @[RocketCore.scala 947:38:chipyard.TestHarness.RocketConfig.fir@251830.4]
  assign _T_1103 = wb_cause == 64'h7; // @[RocketCore.scala 947:38:chipyard.TestHarness.RocketConfig.fir@251832.4]
  assign _T_1105 = wb_cause == 64'h5; // @[RocketCore.scala 947:38:chipyard.TestHarness.RocketConfig.fir@251834.4]
  assign _T_1107 = wb_cause == 64'hf; // @[RocketCore.scala 947:38:chipyard.TestHarness.RocketConfig.fir@251836.4]
  assign _T_1109 = wb_cause == 64'hd; // @[RocketCore.scala 947:38:chipyard.TestHarness.RocketConfig.fir@251838.4]
  assign _T_1141 = &wb_reg_raw_inst[1:0]; // @[RocketCore.scala 679:73:chipyard.TestHarness.RocketConfig.fir@251918.4]
  assign _T_1143 = _T_1141 ? wb_reg_inst[31:16] : 16'h0; // @[RocketCore.scala 679:50:chipyard.TestHarness.RocketConfig.fir@251920.4]
  assign _T_1146 = wb_cause == 64'h2; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@251930.4]
  assign _T_1147 = wb_cause == 64'h3; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@251931.4]
  assign _T_1152 = wb_cause == 64'h1; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@251936.4]
  assign _T_1155 = wb_cause == 64'hc; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@251939.4]
  assign _T_1156 = _T_1146 | _T_1147; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@251940.4]
  assign _T_1157 = _T_1156 | _T_1101; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@251941.4]
  assign _T_1158 = _T_1157 | _T_1099; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@251942.4]
  assign _T_1159 = _T_1158 | _T_1105; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@251943.4]
  assign _T_1160 = _T_1159 | _T_1103; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@251944.4]
  assign _T_1161 = _T_1160 | _T_1152; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@251945.4]
  assign _T_1162 = _T_1161 | _T_1109; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@251946.4]
  assign _T_1163 = _T_1162 | _T_1107; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@251947.4]
  assign _T_1164 = _T_1163 | _T_1155; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@251948.4]
  assign tval_valid = wb_xcpt & _T_1164; // @[RocketCore.scala 686:28:chipyard.TestHarness.RocketConfig.fir@251949.4]
  assign _T_1165 = wb_reg_wdata; // @[RocketCore.scala 957:16:chipyard.TestHarness.RocketConfig.fir@251950.4]
  assign a_1 = _T_1165[63:39]; // @[RocketCore.scala 957:23:chipyard.TestHarness.RocketConfig.fir@251951.4]
  assign _T_1166 = $signed(a_1) == 25'sh0; // @[RocketCore.scala 958:21:chipyard.TestHarness.RocketConfig.fir@251952.4]
  assign _T_1167 = $signed(a_1) == -25'sh1; // @[RocketCore.scala 958:34:chipyard.TestHarness.RocketConfig.fir@251953.4]
  assign _T_1168 = _T_1166 | _T_1167; // @[RocketCore.scala 958:29:chipyard.TestHarness.RocketConfig.fir@251954.4]
  assign _T_1171 = ~wb_reg_wdata[38]; // @[RocketCore.scala 958:59:chipyard.TestHarness.RocketConfig.fir@251957.4]
  assign msb_1 = _T_1168 ? wb_reg_wdata[39] : _T_1171; // @[RocketCore.scala 958:18:chipyard.TestHarness.RocketConfig.fir@251958.4]
  assign _T_1173 = {msb_1,wb_reg_wdata[38:0]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@251960.4]
  assign _T_1176 = wb_reg_valid ? 3'h0 : 3'h4; // @[CSR.scala 131:15:chipyard.TestHarness.RocketConfig.fir@251972.4]
  assign _T_1177 = ~_T_1176; // @[CSR.scala 131:11:chipyard.TestHarness.RocketConfig.fir@251973.4]
  assign _T_1188 = 32'h1 << ll_waddr; // @[RocketCore.scala 973:62:chipyard.TestHarness.RocketConfig.fir@251989.4]
  assign _T_1189 = ll_wen ? _T_1188 : 32'h0; // @[RocketCore.scala 973:49:chipyard.TestHarness.RocketConfig.fir@251990.4]
  assign _T_1190 = ~_T_1189; // @[RocketCore.scala 965:64:chipyard.TestHarness.RocketConfig.fir@251991.4]
  assign _T_1191 = _T_1187 & _T_1190; // @[RocketCore.scala 965:62:chipyard.TestHarness.RocketConfig.fir@251992.4]
  assign _T_1215 = wb_set_sboard & wb_wen; // @[RocketCore.scala 720:28:chipyard.TestHarness.RocketConfig.fir@252020.4]
  assign _T_1216 = 32'h1 << wb_waddr; // @[RocketCore.scala 973:62:chipyard.TestHarness.RocketConfig.fir@252021.4]
  assign _T_1217 = _T_1215 ? _T_1216 : 32'h0; // @[RocketCore.scala 973:49:chipyard.TestHarness.RocketConfig.fir@252022.4]
  assign _T_1218 = _T_1191 | _T_1217; // @[RocketCore.scala 964:60:chipyard.TestHarness.RocketConfig.fir@252023.4]
  assign _T_1219 = ll_wen | _T_1215; // @[RocketCore.scala 976:17:chipyard.TestHarness.RocketConfig.fir@252024.4]
  assign _T_1299 = wb_dcache_miss & wb_ctrl_wfd; // @[RocketCore.scala 745:35:chipyard.TestHarness.RocketConfig.fir@252120.4]
  assign _T_1300 = _T_1299 | io_fpu_sboard_set; // @[RocketCore.scala 745:50:chipyard.TestHarness.RocketConfig.fir@252121.4]
  assign _T_1301 = _T_1300 & wb_valid; // @[RocketCore.scala 745:72:chipyard.TestHarness.RocketConfig.fir@252122.4]
  assign _T_1303 = _T_1301 ? _T_1216 : 32'h0; // @[RocketCore.scala 973:49:chipyard.TestHarness.RocketConfig.fir@252124.4]
  assign _T_1304 = _T_1298 | _T_1303; // @[RocketCore.scala 964:60:chipyard.TestHarness.RocketConfig.fir@252125.4]
  assign _T_1306 = dmem_resp_replay & io_dmem_resp_bits_tag[0]; // @[RocketCore.scala 746:38:chipyard.TestHarness.RocketConfig.fir@252130.4]
  assign _T_1307 = 32'h1 << dmem_resp_waddr; // @[RocketCore.scala 973:62:chipyard.TestHarness.RocketConfig.fir@252131.4]
  assign _T_1308 = _T_1306 ? _T_1307 : 32'h0; // @[RocketCore.scala 973:49:chipyard.TestHarness.RocketConfig.fir@252132.4]
  assign _T_1309 = ~_T_1308; // @[RocketCore.scala 965:64:chipyard.TestHarness.RocketConfig.fir@252133.4]
  assign _T_1310 = _T_1304 & _T_1309; // @[RocketCore.scala 965:62:chipyard.TestHarness.RocketConfig.fir@252134.4]
  assign _T_1311 = _T_1301 | _T_1306; // @[RocketCore.scala 976:17:chipyard.TestHarness.RocketConfig.fir@252135.4]
  assign _T_1312 = 32'h1 << io_fpu_sboard_clra; // @[RocketCore.scala 973:62:chipyard.TestHarness.RocketConfig.fir@252139.4]
  assign _T_1313 = io_fpu_sboard_clr ? _T_1312 : 32'h0; // @[RocketCore.scala 973:49:chipyard.TestHarness.RocketConfig.fir@252140.4]
  assign _T_1314 = ~_T_1313; // @[RocketCore.scala 965:64:chipyard.TestHarness.RocketConfig.fir@252141.4]
  assign _T_1315 = _T_1310 & _T_1314; // @[RocketCore.scala 965:62:chipyard.TestHarness.RocketConfig.fir@252142.4]
  assign _T_1316 = _T_1311 | io_fpu_sboard_clr; // @[RocketCore.scala 976:17:chipyard.TestHarness.RocketConfig.fir@252143.4]
  assign _T_1334 = _T_763 & _T_1338; // @[RocketCore.scala 755:60:chipyard.TestHarness.RocketConfig.fir@252166.4]
  assign _T_1335 = blocked | io_dmem_req_valid; // @[RocketCore.scala 755:95:chipyard.TestHarness.RocketConfig.fir@252167.4]
  assign _T_1336 = _T_1335 | io_dmem_s2_nack; // @[RocketCore.scala 755:116:chipyard.TestHarness.RocketConfig.fir@252168.4]
  assign _T_1379 = wb_xcpt | csr_io_eret; // @[RocketCore.scala 779:17:chipyard.TestHarness.RocketConfig.fir@252219.4]
  assign _T_1380 = replay_wb_common ? wb_reg_pc : mem_npc; // @[RocketCore.scala 780:8:chipyard.TestHarness.RocketConfig.fir@252220.4]
  assign _T_1382 = wb_reg_valid & wb_ctrl_fence_i; // @[RocketCore.scala 782:40:chipyard.TestHarness.RocketConfig.fir@252223.4]
  assign _T_1383 = ~io_dmem_s2_nack; // @[RocketCore.scala 782:62:chipyard.TestHarness.RocketConfig.fir@252224.4]
  assign _T_1385 = ex_pc_valid | mem_pc_valid; // @[RocketCore.scala 784:43:chipyard.TestHarness.RocketConfig.fir@252227.4]
  assign _T_1393 = mem_reg_valid & _T_1061; // @[RocketCore.scala 796:45:chipyard.TestHarness.RocketConfig.fir@252244.4]
  assign _T_1394 = _T_1393 & mem_wrong_npc; // @[RocketCore.scala 796:60:chipyard.TestHarness.RocketConfig.fir@252245.4]
  assign _T_1395 = ~mem_cfi; // @[RocketCore.scala 796:81:chipyard.TestHarness.RocketConfig.fir@252246.4]
  assign _T_1396 = _T_1395 | mem_cfi_taken; // @[RocketCore.scala 796:90:chipyard.TestHarness.RocketConfig.fir@252247.4]
  assign _T_1398 = mem_ctrl_jal | mem_ctrl_jalr; // @[RocketCore.scala 799:23:chipyard.TestHarness.RocketConfig.fir@252251.4]
  assign _T_1400 = _T_1398 & mem_waddr[0]; // @[RocketCore.scala 799:41:chipyard.TestHarness.RocketConfig.fir@252253.4]
  assign _T_1403 = mem_reg_inst[19:15] & 5'h1b; // @[RocketCore.scala 800:62:chipyard.TestHarness.RocketConfig.fir@252256.4]
  assign _T_1404 = 5'h1 == _T_1403; // @[RocketCore.scala 800:62:chipyard.TestHarness.RocketConfig.fir@252257.4]
  assign _T_1405 = mem_ctrl_jalr & _T_1404; // @[RocketCore.scala 800:23:chipyard.TestHarness.RocketConfig.fir@252258.4]
  assign _T_1408 = _T_1405 ? 2'h3 : {{1'd0}, _T_1398}; // @[RocketCore.scala 800:8:chipyard.TestHarness.RocketConfig.fir@252261.4]
  assign _T_1410 = mem_reg_rvc ? 2'h0 : 2'h2; // @[RocketCore.scala 804:74:chipyard.TestHarness.RocketConfig.fir@252265.4]
  assign _GEN_250 = {{38'd0}, _T_1410}; // @[RocketCore.scala 804:69:chipyard.TestHarness.RocketConfig.fir@252266.4]
  assign _T_1412 = mem_reg_pc + _GEN_250; // @[RocketCore.scala 804:69:chipyard.TestHarness.RocketConfig.fir@252267.4]
  assign _T_1413 = ~io_imem_btb_update_bits_br_pc; // @[RocketCore.scala 805:35:chipyard.TestHarness.RocketConfig.fir@252269.4]
  assign _T_1414 = _T_1413 | 39'h3; // @[RocketCore.scala 805:66:chipyard.TestHarness.RocketConfig.fir@252270.4]
  assign ex_dcache_tag = {ex_waddr,ex_ctrl_fp}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@252298.4]
  assign a_2 = _T_697[63:39]; // @[RocketCore.scala 957:23:chipyard.TestHarness.RocketConfig.fir@252307.4]
  assign _T_1426 = $signed(a_2) == 25'sh0; // @[RocketCore.scala 958:21:chipyard.TestHarness.RocketConfig.fir@252308.4]
  assign _T_1427 = $signed(a_2) == -25'sh1; // @[RocketCore.scala 958:34:chipyard.TestHarness.RocketConfig.fir@252309.4]
  assign _T_1428 = _T_1426 | _T_1427; // @[RocketCore.scala 958:29:chipyard.TestHarness.RocketConfig.fir@252310.4]
  assign _T_1431 = ~alu_io_adder_out[38]; // @[RocketCore.scala 958:59:chipyard.TestHarness.RocketConfig.fir@252313.4]
  assign msb_2 = _T_1428 ? alu_io_adder_out[39] : _T_1431; // @[RocketCore.scala 958:18:chipyard.TestHarness.RocketConfig.fir@252314.4]
  assign _T_1435 = killm_common | mem_ldst_xcpt; // @[RocketCore.scala 837:35:chipyard.TestHarness.RocketConfig.fir@252321.4]
  assign _T_1456 = csr_io_time[4:0] == 5'h0; // @[RocketCore.scala 850:62:chipyard.TestHarness.RocketConfig.fir@252362.4]
  assign _T_1457 = _T_1456 | io_dmem_perf_release; // @[RocketCore.scala 850:68:chipyard.TestHarness.RocketConfig.fir@252363.4]
  assign unpause = _T_1457 | take_pc_mem_wb; // @[RocketCore.scala 850:92:chipyard.TestHarness.RocketConfig.fir@252364.4]
  assign coreMonitorBundle_timer = csr_io_time[31:0]; // @[RocketCore.scala 877:41:chipyard.TestHarness.RocketConfig.fir@252381.4]
  assign _T_1463 = ~csr_io_trace_0_exception; // @[RocketCore.scala 878:55:chipyard.TestHarness.RocketConfig.fir@252383.4]
  assign coreMonitorBundle_valid = csr_io_trace_0_valid & _T_1463; // @[RocketCore.scala 878:52:chipyard.TestHarness.RocketConfig.fir@252384.4]
  assign _T_1465 = csr_io_trace_0_iaddr; // @[RocketCore.scala 879:48:chipyard.TestHarness.RocketConfig.fir@252386.4]
  assign _T_1468 = _T_1465[39] ? 24'hffffff : 24'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@252389.4]
  assign coreMonitorBundle_pc = {_T_1468,_T_1465}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@252390.4]
  assign _T_1470 = ~wb_set_sboard; // @[RocketCore.scala 880:40:chipyard.TestHarness.RocketConfig.fir@252392.4]
  assign coreMonitorBundle_wrenx = wb_wen & _T_1470; // @[RocketCore.scala 880:37:chipyard.TestHarness.RocketConfig.fir@252393.4]
  assign _T_1478 = wb_ctrl_wxd | wb_ctrl_wfd; // @[RocketCore.scala 923:26:chipyard.TestHarness.RocketConfig.fir@252416.6]
  assign _T_1479 = _T_1478 ? wb_waddr : 5'h0; // @[RocketCore.scala 923:13:chipyard.TestHarness.RocketConfig.fir@252417.6]
  assign _T_1480 = coreMonitorBundle_wrenx ? rf_wdata : 64'h0; // @[RocketCore.scala 924:13:chipyard.TestHarness.RocketConfig.fir@252418.6]
  assign _T_1481 = wb_ctrl_rxs1 | wb_ctrl_rfs1; // @[RocketCore.scala 926:27:chipyard.TestHarness.RocketConfig.fir@252419.6]
  assign _T_1482 = _T_1481 ? wb_reg_inst[19:15] : 5'h0; // @[RocketCore.scala 926:13:chipyard.TestHarness.RocketConfig.fir@252420.6]
  assign _T_1484 = _T_1481 ? coreMonitorBundle_rd0val : 64'h0; // @[RocketCore.scala 927:13:chipyard.TestHarness.RocketConfig.fir@252422.6]
  assign _T_1485 = wb_ctrl_rxs2 | wb_ctrl_rfs2; // @[RocketCore.scala 928:27:chipyard.TestHarness.RocketConfig.fir@252423.6]
  assign _T_1486 = _T_1485 ? wb_reg_inst[24:20] : 5'h0; // @[RocketCore.scala 928:13:chipyard.TestHarness.RocketConfig.fir@252424.6]
  assign _T_1488 = _T_1485 ? coreMonitorBundle_rd1val : 64'h0; // @[RocketCore.scala 929:13:chipyard.TestHarness.RocketConfig.fir@252426.6]
  assign _T_1490 = ~reset; // @[RocketCore.scala 920:13:chipyard.TestHarness.RocketConfig.fir@252428.6]
  assign coreMonitorBundle_inst = csr_io_trace_0_insn; // @[RocketCore.scala 872:31:chipyard.TestHarness.RocketConfig.fir@252376.4 RocketCore.scala 888:26:chipyard.TestHarness.RocketConfig.fir@252412.4]
  assign io_imem_might_request = imem_might_request_reg; // @[RocketCore.scala 783:25:chipyard.TestHarness.RocketConfig.fir@252231.4]
  assign io_imem_req_valid = take_pc_wb | take_pc_mem; // @[RocketCore.scala 776:21:chipyard.TestHarness.RocketConfig.fir@252216.4]
  assign io_imem_req_bits_pc = _T_1379 ? csr_io_evec : _T_1380; // @[RocketCore.scala 778:23:chipyard.TestHarness.RocketConfig.fir@252222.4]
  assign io_imem_req_bits_speculative = ~take_pc_wb; // @[RocketCore.scala 777:32:chipyard.TestHarness.RocketConfig.fir@252218.4]
  assign io_imem_sfence_valid = wb_reg_valid & wb_reg_sfence; // @[RocketCore.scala 787:24:chipyard.TestHarness.RocketConfig.fir@252233.4]
  assign io_imem_sfence_bits_rs1 = wb_reg_mem_size[0]; // @[RocketCore.scala 788:27:chipyard.TestHarness.RocketConfig.fir@252235.4]
  assign io_imem_sfence_bits_rs2 = wb_reg_mem_size[1]; // @[RocketCore.scala 789:27:chipyard.TestHarness.RocketConfig.fir@252237.4]
  assign io_imem_sfence_bits_addr = wb_reg_wdata[38:0]; // @[RocketCore.scala 790:28:chipyard.TestHarness.RocketConfig.fir@252238.4]
  assign io_imem_resp_ready = ibuf_io_imem_ready; // @[RocketCore.scala 252:16:chipyard.TestHarness.RocketConfig.fir@250449.4]
  assign io_imem_btb_update_valid = _T_1394 & _T_1396; // @[RocketCore.scala 796:28:chipyard.TestHarness.RocketConfig.fir@252249.4]
  assign io_imem_btb_update_bits_prediction_entry = mem_reg_btb_resp_entry; // @[RocketCore.scala 806:38:chipyard.TestHarness.RocketConfig.fir@252273.4]
  assign io_imem_btb_update_bits_pc = ~_T_1414; // @[RocketCore.scala 805:30:chipyard.TestHarness.RocketConfig.fir@252272.4]
  assign io_imem_btb_update_bits_isValid = _T_945 | mem_ctrl_jal; // @[RocketCore.scala 797:35:chipyard.TestHarness.RocketConfig.fir@252250.4]
  assign io_imem_btb_update_bits_br_pc = _T_1412[38:0]; // @[RocketCore.scala 804:33:chipyard.TestHarness.RocketConfig.fir@252268.4]
  assign io_imem_btb_update_bits_cfiType = _T_1400 ? 2'h2 : _T_1408; // @[RocketCore.scala 798:35:chipyard.TestHarness.RocketConfig.fir@252263.4]
  assign io_imem_bht_update_valid = mem_reg_valid & _T_1061; // @[RocketCore.scala 808:28:chipyard.TestHarness.RocketConfig.fir@252276.4]
  assign io_imem_bht_update_bits_prediction_history = mem_reg_btb_resp_bht_history; // @[RocketCore.scala 813:38:chipyard.TestHarness.RocketConfig.fir@252281.4]
  assign io_imem_bht_update_bits_pc = io_imem_btb_update_bits_pc; // @[RocketCore.scala 809:30:chipyard.TestHarness.RocketConfig.fir@252277.4]
  assign io_imem_bht_update_bits_branch = mem_ctrl_branch; // @[RocketCore.scala 812:34:chipyard.TestHarness.RocketConfig.fir@252280.4]
  assign io_imem_bht_update_bits_taken = mem_br_taken; // @[RocketCore.scala 810:33:chipyard.TestHarness.RocketConfig.fir@252278.4]
  assign io_imem_bht_update_bits_mispredict = ex_pc_valid ? _T_931 : _T_934; // @[RocketCore.scala 811:38:chipyard.TestHarness.RocketConfig.fir@252279.4]
  assign io_imem_flush_icache = _T_1382 & _T_1383; // @[RocketCore.scala 782:24:chipyard.TestHarness.RocketConfig.fir@252226.4]
  assign io_dmem_req_valid = ex_reg_valid & ex_ctrl_mem; // @[RocketCore.scala 826:25:chipyard.TestHarness.RocketConfig.fir@252297.4]
  assign io_dmem_req_bits_addr = {msb_2,alu_io_adder_out[38:0]}; // @[RocketCore.scala 834:25:chipyard.TestHarness.RocketConfig.fir@252317.4]
  assign io_dmem_req_bits_tag = {{1'd0}, ex_dcache_tag}; // @[RocketCore.scala 829:25:chipyard.TestHarness.RocketConfig.fir@252299.4]
  assign io_dmem_req_bits_cmd = ex_ctrl_mem_cmd; // @[RocketCore.scala 830:25:chipyard.TestHarness.RocketConfig.fir@252300.4]
  assign io_dmem_req_bits_size = ex_reg_mem_size; // @[RocketCore.scala 831:25:chipyard.TestHarness.RocketConfig.fir@252301.4]
  assign io_dmem_req_bits_signed = ~ex_reg_inst[14]; // @[RocketCore.scala 832:27:chipyard.TestHarness.RocketConfig.fir@252304.4]
  assign io_dmem_req_bits_dprv = csr_io_status_dprv; // @[RocketCore.scala 835:25:chipyard.TestHarness.RocketConfig.fir@252318.4]
  assign io_dmem_s1_kill = _T_1435 | fpu_kill_mem; // @[RocketCore.scala 837:19:chipyard.TestHarness.RocketConfig.fir@252323.4]
  assign io_dmem_s1_data_data = mem_ctrl_fp ? io_fpu_store_data : mem_reg_rs2; // @[RocketCore.scala 836:24:chipyard.TestHarness.RocketConfig.fir@252320.4]
  assign io_ptw_ptbr_mode = csr_io_ptbr_mode; // @[RocketCore.scala 691:15:chipyard.TestHarness.RocketConfig.fir@251963.4]
  assign io_ptw_ptbr_ppn = csr_io_ptbr_ppn; // @[RocketCore.scala 691:15:chipyard.TestHarness.RocketConfig.fir@251963.4]
  assign io_ptw_sfence_valid = io_imem_sfence_valid; // @[RocketCore.scala 792:17:chipyard.TestHarness.RocketConfig.fir@252240.4]
  assign io_ptw_sfence_bits_rs1 = io_imem_sfence_bits_rs1; // @[RocketCore.scala 792:17:chipyard.TestHarness.RocketConfig.fir@252240.4]
  assign io_ptw_sfence_bits_rs2 = io_imem_sfence_bits_rs2; // @[RocketCore.scala 792:17:chipyard.TestHarness.RocketConfig.fir@252240.4]
  assign io_ptw_sfence_bits_addr = io_imem_sfence_bits_addr; // @[RocketCore.scala 792:17:chipyard.TestHarness.RocketConfig.fir@252240.4]
  assign io_ptw_status_debug = csr_io_status_debug; // @[RocketCore.scala 693:17:chipyard.TestHarness.RocketConfig.fir@251968.4]
  assign io_ptw_status_dprv = csr_io_status_dprv; // @[RocketCore.scala 693:17:chipyard.TestHarness.RocketConfig.fir@251968.4]
  assign io_ptw_status_prv = csr_io_status_prv; // @[RocketCore.scala 693:17:chipyard.TestHarness.RocketConfig.fir@251968.4]
  assign io_ptw_status_mxr = csr_io_status_mxr; // @[RocketCore.scala 693:17:chipyard.TestHarness.RocketConfig.fir@251968.4]
  assign io_ptw_status_sum = csr_io_status_sum; // @[RocketCore.scala 693:17:chipyard.TestHarness.RocketConfig.fir@251968.4]
  assign io_ptw_pmp_0_cfg_l = csr_io_pmp_0_cfg_l; // @[RocketCore.scala 694:14:chipyard.TestHarness.RocketConfig.fir@251969.4]
  assign io_ptw_pmp_0_cfg_a = csr_io_pmp_0_cfg_a; // @[RocketCore.scala 694:14:chipyard.TestHarness.RocketConfig.fir@251969.4]
  assign io_ptw_pmp_0_cfg_x = csr_io_pmp_0_cfg_x; // @[RocketCore.scala 694:14:chipyard.TestHarness.RocketConfig.fir@251969.4]
  assign io_ptw_pmp_0_cfg_w = csr_io_pmp_0_cfg_w; // @[RocketCore.scala 694:14:chipyard.TestHarness.RocketConfig.fir@251969.4]
  assign io_ptw_pmp_0_cfg_r = csr_io_pmp_0_cfg_r; // @[RocketCore.scala 694:14:chipyard.TestHarness.RocketConfig.fir@251969.4]
  assign io_ptw_pmp_0_addr = csr_io_pmp_0_addr; // @[RocketCore.scala 694:14:chipyard.TestHarness.RocketConfig.fir@251969.4]
  assign io_ptw_pmp_0_mask = csr_io_pmp_0_mask; // @[RocketCore.scala 694:14:chipyard.TestHarness.RocketConfig.fir@251969.4]
  assign io_ptw_pmp_1_cfg_l = csr_io_pmp_1_cfg_l; // @[RocketCore.scala 694:14:chipyard.TestHarness.RocketConfig.fir@251969.4]
  assign io_ptw_pmp_1_cfg_a = csr_io_pmp_1_cfg_a; // @[RocketCore.scala 694:14:chipyard.TestHarness.RocketConfig.fir@251969.4]
  assign io_ptw_pmp_1_cfg_x = csr_io_pmp_1_cfg_x; // @[RocketCore.scala 694:14:chipyard.TestHarness.RocketConfig.fir@251969.4]
  assign io_ptw_pmp_1_cfg_w = csr_io_pmp_1_cfg_w; // @[RocketCore.scala 694:14:chipyard.TestHarness.RocketConfig.fir@251969.4]
  assign io_ptw_pmp_1_cfg_r = csr_io_pmp_1_cfg_r; // @[RocketCore.scala 694:14:chipyard.TestHarness.RocketConfig.fir@251969.4]
  assign io_ptw_pmp_1_addr = csr_io_pmp_1_addr; // @[RocketCore.scala 694:14:chipyard.TestHarness.RocketConfig.fir@251969.4]
  assign io_ptw_pmp_1_mask = csr_io_pmp_1_mask; // @[RocketCore.scala 694:14:chipyard.TestHarness.RocketConfig.fir@251969.4]
  assign io_ptw_pmp_2_cfg_l = csr_io_pmp_2_cfg_l; // @[RocketCore.scala 694:14:chipyard.TestHarness.RocketConfig.fir@251969.4]
  assign io_ptw_pmp_2_cfg_a = csr_io_pmp_2_cfg_a; // @[RocketCore.scala 694:14:chipyard.TestHarness.RocketConfig.fir@251969.4]
  assign io_ptw_pmp_2_cfg_x = csr_io_pmp_2_cfg_x; // @[RocketCore.scala 694:14:chipyard.TestHarness.RocketConfig.fir@251969.4]
  assign io_ptw_pmp_2_cfg_w = csr_io_pmp_2_cfg_w; // @[RocketCore.scala 694:14:chipyard.TestHarness.RocketConfig.fir@251969.4]
  assign io_ptw_pmp_2_cfg_r = csr_io_pmp_2_cfg_r; // @[RocketCore.scala 694:14:chipyard.TestHarness.RocketConfig.fir@251969.4]
  assign io_ptw_pmp_2_addr = csr_io_pmp_2_addr; // @[RocketCore.scala 694:14:chipyard.TestHarness.RocketConfig.fir@251969.4]
  assign io_ptw_pmp_2_mask = csr_io_pmp_2_mask; // @[RocketCore.scala 694:14:chipyard.TestHarness.RocketConfig.fir@251969.4]
  assign io_ptw_pmp_3_cfg_l = csr_io_pmp_3_cfg_l; // @[RocketCore.scala 694:14:chipyard.TestHarness.RocketConfig.fir@251969.4]
  assign io_ptw_pmp_3_cfg_a = csr_io_pmp_3_cfg_a; // @[RocketCore.scala 694:14:chipyard.TestHarness.RocketConfig.fir@251969.4]
  assign io_ptw_pmp_3_cfg_x = csr_io_pmp_3_cfg_x; // @[RocketCore.scala 694:14:chipyard.TestHarness.RocketConfig.fir@251969.4]
  assign io_ptw_pmp_3_cfg_w = csr_io_pmp_3_cfg_w; // @[RocketCore.scala 694:14:chipyard.TestHarness.RocketConfig.fir@251969.4]
  assign io_ptw_pmp_3_cfg_r = csr_io_pmp_3_cfg_r; // @[RocketCore.scala 694:14:chipyard.TestHarness.RocketConfig.fir@251969.4]
  assign io_ptw_pmp_3_addr = csr_io_pmp_3_addr; // @[RocketCore.scala 694:14:chipyard.TestHarness.RocketConfig.fir@251969.4]
  assign io_ptw_pmp_3_mask = csr_io_pmp_3_mask; // @[RocketCore.scala 694:14:chipyard.TestHarness.RocketConfig.fir@251969.4]
  assign io_ptw_pmp_4_cfg_l = csr_io_pmp_4_cfg_l; // @[RocketCore.scala 694:14:chipyard.TestHarness.RocketConfig.fir@251969.4]
  assign io_ptw_pmp_4_cfg_a = csr_io_pmp_4_cfg_a; // @[RocketCore.scala 694:14:chipyard.TestHarness.RocketConfig.fir@251969.4]
  assign io_ptw_pmp_4_cfg_x = csr_io_pmp_4_cfg_x; // @[RocketCore.scala 694:14:chipyard.TestHarness.RocketConfig.fir@251969.4]
  assign io_ptw_pmp_4_cfg_w = csr_io_pmp_4_cfg_w; // @[RocketCore.scala 694:14:chipyard.TestHarness.RocketConfig.fir@251969.4]
  assign io_ptw_pmp_4_cfg_r = csr_io_pmp_4_cfg_r; // @[RocketCore.scala 694:14:chipyard.TestHarness.RocketConfig.fir@251969.4]
  assign io_ptw_pmp_4_addr = csr_io_pmp_4_addr; // @[RocketCore.scala 694:14:chipyard.TestHarness.RocketConfig.fir@251969.4]
  assign io_ptw_pmp_4_mask = csr_io_pmp_4_mask; // @[RocketCore.scala 694:14:chipyard.TestHarness.RocketConfig.fir@251969.4]
  assign io_ptw_pmp_5_cfg_l = csr_io_pmp_5_cfg_l; // @[RocketCore.scala 694:14:chipyard.TestHarness.RocketConfig.fir@251969.4]
  assign io_ptw_pmp_5_cfg_a = csr_io_pmp_5_cfg_a; // @[RocketCore.scala 694:14:chipyard.TestHarness.RocketConfig.fir@251969.4]
  assign io_ptw_pmp_5_cfg_x = csr_io_pmp_5_cfg_x; // @[RocketCore.scala 694:14:chipyard.TestHarness.RocketConfig.fir@251969.4]
  assign io_ptw_pmp_5_cfg_w = csr_io_pmp_5_cfg_w; // @[RocketCore.scala 694:14:chipyard.TestHarness.RocketConfig.fir@251969.4]
  assign io_ptw_pmp_5_cfg_r = csr_io_pmp_5_cfg_r; // @[RocketCore.scala 694:14:chipyard.TestHarness.RocketConfig.fir@251969.4]
  assign io_ptw_pmp_5_addr = csr_io_pmp_5_addr; // @[RocketCore.scala 694:14:chipyard.TestHarness.RocketConfig.fir@251969.4]
  assign io_ptw_pmp_5_mask = csr_io_pmp_5_mask; // @[RocketCore.scala 694:14:chipyard.TestHarness.RocketConfig.fir@251969.4]
  assign io_ptw_pmp_6_cfg_l = csr_io_pmp_6_cfg_l; // @[RocketCore.scala 694:14:chipyard.TestHarness.RocketConfig.fir@251969.4]
  assign io_ptw_pmp_6_cfg_a = csr_io_pmp_6_cfg_a; // @[RocketCore.scala 694:14:chipyard.TestHarness.RocketConfig.fir@251969.4]
  assign io_ptw_pmp_6_cfg_x = csr_io_pmp_6_cfg_x; // @[RocketCore.scala 694:14:chipyard.TestHarness.RocketConfig.fir@251969.4]
  assign io_ptw_pmp_6_cfg_w = csr_io_pmp_6_cfg_w; // @[RocketCore.scala 694:14:chipyard.TestHarness.RocketConfig.fir@251969.4]
  assign io_ptw_pmp_6_cfg_r = csr_io_pmp_6_cfg_r; // @[RocketCore.scala 694:14:chipyard.TestHarness.RocketConfig.fir@251969.4]
  assign io_ptw_pmp_6_addr = csr_io_pmp_6_addr; // @[RocketCore.scala 694:14:chipyard.TestHarness.RocketConfig.fir@251969.4]
  assign io_ptw_pmp_6_mask = csr_io_pmp_6_mask; // @[RocketCore.scala 694:14:chipyard.TestHarness.RocketConfig.fir@251969.4]
  assign io_ptw_pmp_7_cfg_l = csr_io_pmp_7_cfg_l; // @[RocketCore.scala 694:14:chipyard.TestHarness.RocketConfig.fir@251969.4]
  assign io_ptw_pmp_7_cfg_a = csr_io_pmp_7_cfg_a; // @[RocketCore.scala 694:14:chipyard.TestHarness.RocketConfig.fir@251969.4]
  assign io_ptw_pmp_7_cfg_x = csr_io_pmp_7_cfg_x; // @[RocketCore.scala 694:14:chipyard.TestHarness.RocketConfig.fir@251969.4]
  assign io_ptw_pmp_7_cfg_w = csr_io_pmp_7_cfg_w; // @[RocketCore.scala 694:14:chipyard.TestHarness.RocketConfig.fir@251969.4]
  assign io_ptw_pmp_7_cfg_r = csr_io_pmp_7_cfg_r; // @[RocketCore.scala 694:14:chipyard.TestHarness.RocketConfig.fir@251969.4]
  assign io_ptw_pmp_7_addr = csr_io_pmp_7_addr; // @[RocketCore.scala 694:14:chipyard.TestHarness.RocketConfig.fir@251969.4]
  assign io_ptw_pmp_7_mask = csr_io_pmp_7_mask; // @[RocketCore.scala 694:14:chipyard.TestHarness.RocketConfig.fir@251969.4]
  assign io_ptw_customCSRs_csrs_0_value = csr_io_customCSRs_0_value; // @[RocketCore.scala 692:79:chipyard.TestHarness.RocketConfig.fir@251964.4]
  assign io_fpu_inst = ibuf_io_inst_0_bits_inst_bits; // @[RocketCore.scala 818:15:chipyard.TestHarness.RocketConfig.fir@252287.4]
  assign io_fpu_fromint_data = ex_reg_rs_bypass_0 ? _T_627 : _T_628; // @[RocketCore.scala 819:23:chipyard.TestHarness.RocketConfig.fir@252288.4]
  assign io_fpu_fcsr_rm = csr_io_fcsr_rm; // @[RocketCore.scala 682:18:chipyard.TestHarness.RocketConfig.fir@251926.4]
  assign io_fpu_dmem_resp_val = dmem_resp_valid & io_dmem_resp_bits_tag[0]; // @[RocketCore.scala 820:24:chipyard.TestHarness.RocketConfig.fir@252290.4]
  assign io_fpu_dmem_resp_type = {{1'd0}, io_dmem_resp_bits_size}; // @[RocketCore.scala 822:25:chipyard.TestHarness.RocketConfig.fir@252292.4]
  assign io_fpu_dmem_resp_tag = io_dmem_resp_bits_tag[5:1]; // @[RocketCore.scala 823:24:chipyard.TestHarness.RocketConfig.fir@252293.4]
  assign io_fpu_dmem_resp_data = io_dmem_resp_bits_data_word_bypass; // @[RocketCore.scala 821:25:chipyard.TestHarness.RocketConfig.fir@252291.4]
  assign io_fpu_valid = _T_712 & id_ctrl_fp; // @[RocketCore.scala 815:16:chipyard.TestHarness.RocketConfig.fir@252284.4]
  assign io_fpu_killx = _T_769 | _T_770; // @[RocketCore.scala 816:16:chipyard.TestHarness.RocketConfig.fir@252285.4]
  assign io_fpu_killm = _T_1054 | _T_1055; // @[RocketCore.scala 817:16:chipyard.TestHarness.RocketConfig.fir@252286.4]
  assign io_wfi = csr_io_status_wfi; // @[RocketCore.scala 853:10:chipyard.TestHarness.RocketConfig.fir@252371.4]
  assign ibuf_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@250447.4]
  assign ibuf_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@250448.4]
  assign ibuf_io_imem_valid = io_imem_resp_valid; // @[RocketCore.scala 252:16:chipyard.TestHarness.RocketConfig.fir@250449.4]
  assign ibuf_io_imem_bits_btb_taken = io_imem_resp_bits_btb_taken; // @[RocketCore.scala 252:16:chipyard.TestHarness.RocketConfig.fir@250449.4]
  assign ibuf_io_imem_bits_btb_bridx = io_imem_resp_bits_btb_bridx; // @[RocketCore.scala 252:16:chipyard.TestHarness.RocketConfig.fir@250449.4]
  assign ibuf_io_imem_bits_btb_entry = io_imem_resp_bits_btb_entry; // @[RocketCore.scala 252:16:chipyard.TestHarness.RocketConfig.fir@250449.4]
  assign ibuf_io_imem_bits_btb_bht_history = io_imem_resp_bits_btb_bht_history; // @[RocketCore.scala 252:16:chipyard.TestHarness.RocketConfig.fir@250449.4]
  assign ibuf_io_imem_bits_pc = io_imem_resp_bits_pc; // @[RocketCore.scala 252:16:chipyard.TestHarness.RocketConfig.fir@250449.4]
  assign ibuf_io_imem_bits_data = io_imem_resp_bits_data; // @[RocketCore.scala 252:16:chipyard.TestHarness.RocketConfig.fir@250449.4]
  assign ibuf_io_imem_bits_xcpt_pf_inst = io_imem_resp_bits_xcpt_pf_inst; // @[RocketCore.scala 252:16:chipyard.TestHarness.RocketConfig.fir@250449.4]
  assign ibuf_io_imem_bits_xcpt_ae_inst = io_imem_resp_bits_xcpt_ae_inst; // @[RocketCore.scala 252:16:chipyard.TestHarness.RocketConfig.fir@250449.4]
  assign ibuf_io_imem_bits_replay = io_imem_resp_bits_replay; // @[RocketCore.scala 252:16:chipyard.TestHarness.RocketConfig.fir@250449.4]
  assign ibuf_io_kill = take_pc_wb | take_pc_mem; // @[RocketCore.scala 253:16:chipyard.TestHarness.RocketConfig.fir@250450.4]
  assign ibuf_io_inst_0_ready = ~ctrl_stalld; // @[RocketCore.scala 794:25:chipyard.TestHarness.RocketConfig.fir@252242.4]
  assign csr_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@251005.4]
  assign csr_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@251006.4]
  assign csr_io_ungated_clock = clock; // @[RocketCore.scala 674:24:chipyard.TestHarness.RocketConfig.fir@251911.4]
  assign csr_io_interrupts_debug = io_interrupts_debug; // @[RocketCore.scala 680:21:chipyard.TestHarness.RocketConfig.fir@251924.4]
  assign csr_io_interrupts_mtip = io_interrupts_mtip; // @[RocketCore.scala 680:21:chipyard.TestHarness.RocketConfig.fir@251924.4]
  assign csr_io_interrupts_msip = io_interrupts_msip; // @[RocketCore.scala 680:21:chipyard.TestHarness.RocketConfig.fir@251924.4]
  assign csr_io_interrupts_meip = io_interrupts_meip; // @[RocketCore.scala 680:21:chipyard.TestHarness.RocketConfig.fir@251924.4]
  assign csr_io_interrupts_seip = io_interrupts_seip; // @[RocketCore.scala 680:21:chipyard.TestHarness.RocketConfig.fir@251924.4]
  assign csr_io_rw_addr = wb_reg_inst[31:20]; // @[RocketCore.scala 695:18:chipyard.TestHarness.RocketConfig.fir@251971.4]
  assign csr_io_rw_cmd = wb_ctrl_csr & _T_1177; // @[RocketCore.scala 696:17:chipyard.TestHarness.RocketConfig.fir@251975.4]
  assign csr_io_rw_wdata = wb_reg_wdata; // @[RocketCore.scala 697:19:chipyard.TestHarness.RocketConfig.fir@251976.4]
  assign csr_io_decode_0_csr = ibuf_io_inst_0_bits_raw[31:20]; // @[RocketCore.scala 675:24:chipyard.TestHarness.RocketConfig.fir@251913.4]
  assign csr_io_exception = _T_1093 | _T_1088; // @[RocketCore.scala 676:20:chipyard.TestHarness.RocketConfig.fir@251914.4]
  assign csr_io_retire = _T_1125 & _T_1126; // @[RocketCore.scala 678:17:chipyard.TestHarness.RocketConfig.fir@251916.4]
  assign csr_io_cause = wb_reg_xcpt ? wb_reg_cause : {{60'd0}, _T_1098}; // @[RocketCore.scala 677:16:chipyard.TestHarness.RocketConfig.fir@251915.4]
  assign csr_io_pc = wb_reg_pc; // @[RocketCore.scala 685:13:chipyard.TestHarness.RocketConfig.fir@251929.4]
  assign csr_io_tval = tval_valid ? _T_1173 : 40'h0; // @[RocketCore.scala 690:15:chipyard.TestHarness.RocketConfig.fir@251962.4]
  assign csr_io_fcsr_flags_valid = io_fpu_fcsr_flags_valid; // @[RocketCore.scala 683:21:chipyard.TestHarness.RocketConfig.fir@251927.4]
  assign csr_io_fcsr_flags_bits = io_fpu_fcsr_flags_bits; // @[RocketCore.scala 683:21:chipyard.TestHarness.RocketConfig.fir@251927.4]
  assign csr_io_inst_0 = {_T_1143,wb_reg_raw_inst[15:0]}; // @[RocketCore.scala 679:18:chipyard.TestHarness.RocketConfig.fir@251923.4]
  assign bpu_io_status_debug = csr_io_status_debug; // @[RocketCore.scala 318:17:chipyard.TestHarness.RocketConfig.fir@251111.4]
  assign bpu_io_status_prv = csr_io_status_prv; // @[RocketCore.scala 318:17:chipyard.TestHarness.RocketConfig.fir@251111.4]
  assign bpu_io_bp_0_control_action = csr_io_bp_0_control_action; // @[RocketCore.scala 319:13:chipyard.TestHarness.RocketConfig.fir@251112.4]
  assign bpu_io_bp_0_control_tmatch = csr_io_bp_0_control_tmatch; // @[RocketCore.scala 319:13:chipyard.TestHarness.RocketConfig.fir@251112.4]
  assign bpu_io_bp_0_control_m = csr_io_bp_0_control_m; // @[RocketCore.scala 319:13:chipyard.TestHarness.RocketConfig.fir@251112.4]
  assign bpu_io_bp_0_control_s = csr_io_bp_0_control_s; // @[RocketCore.scala 319:13:chipyard.TestHarness.RocketConfig.fir@251112.4]
  assign bpu_io_bp_0_control_u = csr_io_bp_0_control_u; // @[RocketCore.scala 319:13:chipyard.TestHarness.RocketConfig.fir@251112.4]
  assign bpu_io_bp_0_control_x = csr_io_bp_0_control_x; // @[RocketCore.scala 319:13:chipyard.TestHarness.RocketConfig.fir@251112.4]
  assign bpu_io_bp_0_control_w = csr_io_bp_0_control_w; // @[RocketCore.scala 319:13:chipyard.TestHarness.RocketConfig.fir@251112.4]
  assign bpu_io_bp_0_control_r = csr_io_bp_0_control_r; // @[RocketCore.scala 319:13:chipyard.TestHarness.RocketConfig.fir@251112.4]
  assign bpu_io_bp_0_address = csr_io_bp_0_address; // @[RocketCore.scala 319:13:chipyard.TestHarness.RocketConfig.fir@251112.4]
  assign bpu_io_pc = ibuf_io_pc[38:0]; // @[RocketCore.scala 320:13:chipyard.TestHarness.RocketConfig.fir@251113.4]
  assign bpu_io_ea = mem_reg_wdata[38:0]; // @[RocketCore.scala 321:13:chipyard.TestHarness.RocketConfig.fir@251114.4]
  assign alu_io_dw = ex_ctrl_alu_dw; // @[RocketCore.scala 378:13:chipyard.TestHarness.RocketConfig.fir@251266.4]
  assign alu_io_fn = ex_ctrl_alu_fn; // @[RocketCore.scala 379:13:chipyard.TestHarness.RocketConfig.fir@251267.4]
  assign alu_io_in2 = _T_708 ? $signed({{60{_T_703[3]}},_T_703}) : $signed(_T_707); // @[RocketCore.scala 380:14:chipyard.TestHarness.RocketConfig.fir@251269.4]
  assign alu_io_in1 = _T_701 ? $signed({{24{_T_698[39]}},_T_698}) : $signed(_T_700); // @[RocketCore.scala 381:14:chipyard.TestHarness.RocketConfig.fir@251271.4]
  assign div_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@251274.4]
  assign div_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@251275.4]
  assign div_io_req_valid = ex_reg_valid & ex_ctrl_div; // @[RocketCore.scala 402:20:chipyard.TestHarness.RocketConfig.fir@251277.4]
  assign div_io_req_bits_fn = ex_ctrl_alu_fn; // @[RocketCore.scala 404:22:chipyard.TestHarness.RocketConfig.fir@251279.4]
  assign div_io_req_bits_dw = ex_ctrl_alu_dw; // @[RocketCore.scala 403:22:chipyard.TestHarness.RocketConfig.fir@251278.4]
  assign div_io_req_bits_in1 = ex_reg_rs_bypass_0 ? _T_627 : _T_628; // @[RocketCore.scala 405:23:chipyard.TestHarness.RocketConfig.fir@251280.4]
  assign div_io_req_bits_in2 = ex_reg_rs_bypass_1 ? _T_634 : _T_635; // @[RocketCore.scala 406:23:chipyard.TestHarness.RocketConfig.fir@251281.4]
  assign div_io_req_bits_tag = ex_reg_inst[11:7]; // @[RocketCore.scala 407:23:chipyard.TestHarness.RocketConfig.fir@251282.4]
  assign div_io_kill = killm_common & _T_1057; // @[RocketCore.scala 580:15:chipyard.TestHarness.RocketConfig.fir@251766.4]
  assign div_io_resp_ready = _T_1123 ? 1'h0 : _T_1361; // @[RocketCore.scala 641:21:chipyard.TestHarness.RocketConfig.fir@251863.4 RocketCore.scala 655:23:chipyard.TestHarness.RocketConfig.fir@251876.6]
  assign PlusArgTimeout_clock = clock; // @[:chipyard.TestHarness.RocketConfig.fir@252434.4]
  assign PlusArgTimeout_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@252435.4]
  assign PlusArgTimeout_io_count = csr_io_time[31:0]; // @[PlusArg.scala 53:82:chipyard.TestHarness.RocketConfig.fir@252436.4]
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
  _RAND_0 = {2{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 31; initvar = initvar+1)
    _T_427[initvar] = _RAND_0[63:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_1 = {2{`RANDOM}};
  _RAND_2 = {2{`RANDOM}};
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  id_reg_pause = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  imem_might_request_reg = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  ex_ctrl_fp = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  ex_ctrl_branch = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  ex_ctrl_jal = _RAND_7[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  ex_ctrl_jalr = _RAND_8[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  ex_ctrl_rxs2 = _RAND_9[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  ex_ctrl_rxs1 = _RAND_10[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  ex_ctrl_sel_alu2 = _RAND_11[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  ex_ctrl_sel_alu1 = _RAND_12[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  ex_ctrl_sel_imm = _RAND_13[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  ex_ctrl_alu_dw = _RAND_14[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  ex_ctrl_alu_fn = _RAND_15[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  ex_ctrl_mem = _RAND_16[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  ex_ctrl_mem_cmd = _RAND_17[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  ex_ctrl_rfs1 = _RAND_18[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  ex_ctrl_rfs2 = _RAND_19[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  ex_ctrl_wfd = _RAND_20[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  ex_ctrl_div = _RAND_21[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{`RANDOM}};
  ex_ctrl_wxd = _RAND_22[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{`RANDOM}};
  ex_ctrl_csr = _RAND_23[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{`RANDOM}};
  ex_ctrl_fence_i = _RAND_24[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{`RANDOM}};
  mem_ctrl_fp = _RAND_25[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{`RANDOM}};
  mem_ctrl_branch = _RAND_26[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {1{`RANDOM}};
  mem_ctrl_jal = _RAND_27[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {1{`RANDOM}};
  mem_ctrl_jalr = _RAND_28[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {1{`RANDOM}};
  mem_ctrl_rxs2 = _RAND_29[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_30 = {1{`RANDOM}};
  mem_ctrl_rxs1 = _RAND_30[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_31 = {1{`RANDOM}};
  mem_ctrl_mem = _RAND_31[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_32 = {1{`RANDOM}};
  mem_ctrl_rfs1 = _RAND_32[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_33 = {1{`RANDOM}};
  mem_ctrl_rfs2 = _RAND_33[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_34 = {1{`RANDOM}};
  mem_ctrl_wfd = _RAND_34[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_35 = {1{`RANDOM}};
  mem_ctrl_div = _RAND_35[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_36 = {1{`RANDOM}};
  mem_ctrl_wxd = _RAND_36[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_37 = {1{`RANDOM}};
  mem_ctrl_csr = _RAND_37[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_38 = {1{`RANDOM}};
  mem_ctrl_fence_i = _RAND_38[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_39 = {1{`RANDOM}};
  wb_ctrl_rxs2 = _RAND_39[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_40 = {1{`RANDOM}};
  wb_ctrl_rxs1 = _RAND_40[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_41 = {1{`RANDOM}};
  wb_ctrl_mem = _RAND_41[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_42 = {1{`RANDOM}};
  wb_ctrl_rfs1 = _RAND_42[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_43 = {1{`RANDOM}};
  wb_ctrl_rfs2 = _RAND_43[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_44 = {1{`RANDOM}};
  wb_ctrl_wfd = _RAND_44[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_45 = {1{`RANDOM}};
  wb_ctrl_div = _RAND_45[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_46 = {1{`RANDOM}};
  wb_ctrl_wxd = _RAND_46[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_47 = {1{`RANDOM}};
  wb_ctrl_csr = _RAND_47[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_48 = {1{`RANDOM}};
  wb_ctrl_fence_i = _RAND_48[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_49 = {1{`RANDOM}};
  ex_reg_xcpt_interrupt = _RAND_49[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_50 = {1{`RANDOM}};
  ex_reg_valid = _RAND_50[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_51 = {1{`RANDOM}};
  ex_reg_rvc = _RAND_51[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_52 = {1{`RANDOM}};
  ex_reg_btb_resp_entry = _RAND_52[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_53 = {1{`RANDOM}};
  ex_reg_btb_resp_bht_history = _RAND_53[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_54 = {1{`RANDOM}};
  ex_reg_xcpt = _RAND_54[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_55 = {1{`RANDOM}};
  ex_reg_flush_pipe = _RAND_55[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_56 = {1{`RANDOM}};
  ex_reg_load_use = _RAND_56[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_57 = {2{`RANDOM}};
  ex_reg_cause = _RAND_57[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_58 = {1{`RANDOM}};
  ex_reg_replay = _RAND_58[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_59 = {2{`RANDOM}};
  ex_reg_pc = _RAND_59[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_60 = {1{`RANDOM}};
  ex_reg_mem_size = _RAND_60[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_61 = {1{`RANDOM}};
  ex_reg_inst = _RAND_61[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_62 = {1{`RANDOM}};
  ex_reg_raw_inst = _RAND_62[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_63 = {1{`RANDOM}};
  mem_reg_xcpt_interrupt = _RAND_63[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_64 = {1{`RANDOM}};
  mem_reg_valid = _RAND_64[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_65 = {1{`RANDOM}};
  mem_reg_rvc = _RAND_65[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_66 = {1{`RANDOM}};
  mem_reg_btb_resp_entry = _RAND_66[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_67 = {1{`RANDOM}};
  mem_reg_btb_resp_bht_history = _RAND_67[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_68 = {1{`RANDOM}};
  mem_reg_xcpt = _RAND_68[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_69 = {1{`RANDOM}};
  mem_reg_replay = _RAND_69[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_70 = {1{`RANDOM}};
  mem_reg_flush_pipe = _RAND_70[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_71 = {2{`RANDOM}};
  mem_reg_cause = _RAND_71[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_72 = {1{`RANDOM}};
  mem_reg_slow_bypass = _RAND_72[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_73 = {1{`RANDOM}};
  mem_reg_load = _RAND_73[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_74 = {1{`RANDOM}};
  mem_reg_store = _RAND_74[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_75 = {1{`RANDOM}};
  mem_reg_sfence = _RAND_75[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_76 = {2{`RANDOM}};
  mem_reg_pc = _RAND_76[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_77 = {1{`RANDOM}};
  mem_reg_inst = _RAND_77[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_78 = {1{`RANDOM}};
  mem_reg_mem_size = _RAND_78[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_79 = {1{`RANDOM}};
  mem_reg_raw_inst = _RAND_79[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_80 = {2{`RANDOM}};
  mem_reg_wdata = _RAND_80[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_81 = {2{`RANDOM}};
  mem_reg_rs2 = _RAND_81[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_82 = {1{`RANDOM}};
  mem_br_taken = _RAND_82[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_83 = {1{`RANDOM}};
  wb_reg_valid = _RAND_83[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_84 = {1{`RANDOM}};
  wb_reg_xcpt = _RAND_84[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_85 = {1{`RANDOM}};
  wb_reg_replay = _RAND_85[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_86 = {1{`RANDOM}};
  wb_reg_flush_pipe = _RAND_86[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_87 = {2{`RANDOM}};
  wb_reg_cause = _RAND_87[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_88 = {1{`RANDOM}};
  wb_reg_sfence = _RAND_88[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_89 = {2{`RANDOM}};
  wb_reg_pc = _RAND_89[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_90 = {1{`RANDOM}};
  wb_reg_mem_size = _RAND_90[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_91 = {1{`RANDOM}};
  wb_reg_inst = _RAND_91[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_92 = {1{`RANDOM}};
  wb_reg_raw_inst = _RAND_92[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_93 = {2{`RANDOM}};
  wb_reg_wdata = _RAND_93[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_94 = {1{`RANDOM}};
  id_reg_fence = _RAND_94[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_95 = {1{`RANDOM}};
  ex_reg_rs_bypass_0 = _RAND_95[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_96 = {1{`RANDOM}};
  ex_reg_rs_bypass_1 = _RAND_96[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_97 = {1{`RANDOM}};
  ex_reg_rs_lsb_0 = _RAND_97[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_98 = {1{`RANDOM}};
  ex_reg_rs_lsb_1 = _RAND_98[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_99 = {2{`RANDOM}};
  ex_reg_rs_msb_0 = _RAND_99[61:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_100 = {2{`RANDOM}};
  ex_reg_rs_msb_1 = _RAND_100[61:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_101 = {1{`RANDOM}};
  _T_1185 = _RAND_101[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_102 = {1{`RANDOM}};
  _T_1298 = _RAND_102[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_103 = {1{`RANDOM}};
  blocked = _RAND_103[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_104 = {1{`RANDOM}};
  _T_1057 = _RAND_104[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_105 = {2{`RANDOM}};
  _T_1473 = _RAND_105[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_106 = {2{`RANDOM}};
  coreMonitorBundle_rd0val = _RAND_106[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_107 = {2{`RANDOM}};
  _T_1476 = _RAND_107[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_108 = {2{`RANDOM}};
  coreMonitorBundle_rd1val = _RAND_108[63:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if(_T_427__T_1136_en & _T_427__T_1136_mask) begin
      _T_427[_T_427__T_1136_addr] <= _T_427__T_1136_data; // @[RocketCore.scala 983:15:chipyard.TestHarness.RocketConfig.fir@250915.4]
    end
    if (unpause) begin
      id_reg_pause <= 1'h0;
    end else if (_T_712) begin
      id_reg_pause <= _GEN_1;
    end
    imem_might_request_reg <= _T_1385 | io_ptw_customCSRs_csrs_0_value[1];
    if (_T_712) begin
      ex_ctrl_fp <= id_ctrl_fp;
    end
    if (_T_712) begin
      ex_ctrl_branch <= id_ctrl_branch;
    end
    if (_T_712) begin
      ex_ctrl_jal <= id_ctrl_jal;
    end
    if (_T_712) begin
      ex_ctrl_jalr <= id_ctrl_jalr;
    end
    if (_T_712) begin
      ex_ctrl_rxs2 <= id_ctrl_rxs2;
    end
    if (_T_712) begin
      ex_ctrl_rxs1 <= id_ctrl_rxs1;
    end
    if (_T_712) begin
      if (id_xcpt) begin
        if (_T_730) begin
          ex_ctrl_sel_alu2 <= 2'h0;
        end else if (_T_727) begin
          ex_ctrl_sel_alu2 <= 2'h1;
        end else begin
          ex_ctrl_sel_alu2 <= 2'h0;
        end
      end else begin
        ex_ctrl_sel_alu2 <= id_ctrl_sel_alu2;
      end
    end
    if (_T_712) begin
      if (id_xcpt) begin
        if (_T_730) begin
          ex_ctrl_sel_alu1 <= 2'h2;
        end else if (_T_727) begin
          ex_ctrl_sel_alu1 <= 2'h2;
        end else begin
          ex_ctrl_sel_alu1 <= 2'h1;
        end
      end else begin
        ex_ctrl_sel_alu1 <= id_ctrl_sel_alu1;
      end
    end
    if (_T_712) begin
      ex_ctrl_sel_imm <= id_ctrl_sel_imm;
    end
    if (_T_712) begin
      ex_ctrl_alu_dw <= _GEN_9;
    end
    if (_T_712) begin
      if (id_xcpt) begin
        ex_ctrl_alu_fn <= 4'h0;
      end else begin
        ex_ctrl_alu_fn <= id_ctrl_alu_fn;
      end
    end
    if (_T_712) begin
      ex_ctrl_mem <= id_ctrl_mem;
    end
    if (_T_712) begin
      ex_ctrl_mem_cmd <= id_ctrl_mem_cmd;
    end
    if (_T_712) begin
      ex_ctrl_rfs1 <= id_ctrl_rfs1;
    end
    if (_T_712) begin
      ex_ctrl_rfs2 <= id_ctrl_rfs2;
    end
    if (_T_712) begin
      ex_ctrl_wfd <= id_ctrl_wfd;
    end
    if (_T_712) begin
      ex_ctrl_div <= id_ctrl_div;
    end
    if (_T_712) begin
      ex_ctrl_wxd <= id_ctrl_wxd;
    end
    if (_T_712) begin
      if (id_csr_ren) begin
        ex_ctrl_csr <= 3'h2;
      end else begin
        ex_ctrl_csr <= id_ctrl_csr;
      end
    end
    if (_T_712) begin
      ex_ctrl_fence_i <= id_ctrl_fence_i;
    end
    if (!(_T_959)) begin
      if (ex_pc_valid) begin
        mem_ctrl_fp <= ex_ctrl_fp;
      end
    end
    if (!(_T_959)) begin
      if (ex_pc_valid) begin
        mem_ctrl_branch <= ex_ctrl_branch;
      end
    end
    if (!(_T_959)) begin
      if (ex_pc_valid) begin
        mem_ctrl_jal <= ex_ctrl_jal;
      end
    end
    if (!(_T_959)) begin
      if (ex_pc_valid) begin
        mem_ctrl_jalr <= ex_ctrl_jalr;
      end
    end
    if (!(_T_959)) begin
      if (ex_pc_valid) begin
        mem_ctrl_rxs2 <= ex_ctrl_rxs2;
      end
    end
    if (!(_T_959)) begin
      if (ex_pc_valid) begin
        mem_ctrl_rxs1 <= ex_ctrl_rxs1;
      end
    end
    if (!(_T_959)) begin
      if (ex_pc_valid) begin
        mem_ctrl_mem <= ex_ctrl_mem;
      end
    end
    if (!(_T_959)) begin
      if (ex_pc_valid) begin
        mem_ctrl_rfs1 <= ex_ctrl_rfs1;
      end
    end
    if (!(_T_959)) begin
      if (ex_pc_valid) begin
        mem_ctrl_rfs2 <= ex_ctrl_rfs2;
      end
    end
    if (!(_T_959)) begin
      if (ex_pc_valid) begin
        mem_ctrl_wfd <= ex_ctrl_wfd;
      end
    end
    if (!(_T_959)) begin
      if (ex_pc_valid) begin
        mem_ctrl_div <= ex_ctrl_div;
      end
    end
    if (!(_T_959)) begin
      if (ex_pc_valid) begin
        mem_ctrl_wxd <= ex_ctrl_wxd;
      end
    end
    if (!(_T_959)) begin
      if (ex_pc_valid) begin
        mem_ctrl_csr <= ex_ctrl_csr;
      end
    end
    if (!(_T_959)) begin
      if (ex_pc_valid) begin
        mem_ctrl_fence_i <= _GEN_77;
      end
    end
    if (mem_pc_valid) begin
      wb_ctrl_rxs2 <= mem_ctrl_rxs2;
    end
    if (mem_pc_valid) begin
      wb_ctrl_rxs1 <= mem_ctrl_rxs1;
    end
    if (mem_pc_valid) begin
      wb_ctrl_mem <= mem_ctrl_mem;
    end
    if (mem_pc_valid) begin
      wb_ctrl_rfs1 <= mem_ctrl_rfs1;
    end
    if (mem_pc_valid) begin
      wb_ctrl_rfs2 <= mem_ctrl_rfs2;
    end
    if (mem_pc_valid) begin
      wb_ctrl_wfd <= mem_ctrl_wfd;
    end
    if (mem_pc_valid) begin
      wb_ctrl_div <= mem_ctrl_div;
    end
    if (mem_pc_valid) begin
      wb_ctrl_wxd <= mem_ctrl_wxd;
    end
    if (mem_pc_valid) begin
      wb_ctrl_csr <= mem_ctrl_csr;
    end
    if (mem_pc_valid) begin
      wb_ctrl_fence_i <= mem_ctrl_fence_i;
    end
    ex_reg_xcpt_interrupt <= _T_714 & csr_io_interrupt;
    ex_reg_valid <= ~ctrl_killd;
    if (_T_712) begin
      if (id_xcpt) begin
        ex_reg_rvc <= _GEN_5;
      end else begin
        ex_reg_rvc <= ibuf_io_inst_0_bits_rvc;
      end
    end
    if (_T_760) begin
      ex_reg_btb_resp_entry <= ibuf_io_btb_resp_entry;
    end
    if (_T_760) begin
      ex_reg_btb_resp_bht_history <= ibuf_io_btb_resp_bht_history;
    end
    ex_reg_xcpt <= _T_712 & id_xcpt;
    if (_T_712) begin
      ex_reg_flush_pipe <= _T_731;
    end
    if (_T_712) begin
      ex_reg_load_use <= id_load_use;
    end
    if (_T_760) begin
      if (csr_io_interrupt) begin
        ex_reg_cause <= csr_io_interrupt_cause;
      end else begin
        ex_reg_cause <= {{60'd0}, _T_595};
      end
    end
    ex_reg_replay <= _T_714 & ibuf_io_inst_0_bits_replay;
    if (_T_760) begin
      ex_reg_pc <= ibuf_io_pc;
    end
    if (_T_712) begin
      if (_T_735) begin
        ex_reg_mem_size <= _T_738;
      end else begin
        ex_reg_mem_size <= ibuf_io_inst_0_bits_inst_bits[13:12];
      end
    end
    if (_T_760) begin
      ex_reg_inst <= ibuf_io_inst_0_bits_inst_bits;
    end
    if (_T_760) begin
      ex_reg_raw_inst <= ibuf_io_inst_0_bits_raw;
    end
    mem_reg_xcpt_interrupt <= _T_713 & ex_reg_xcpt_interrupt;
    mem_reg_valid <= ~ctrl_killx;
    if (!(_T_959)) begin
      if (ex_pc_valid) begin
        mem_reg_rvc <= ex_reg_rvc;
      end
    end
    if (!(_T_959)) begin
      if (ex_pc_valid) begin
        mem_reg_btb_resp_entry <= ex_reg_btb_resp_entry;
      end
    end
    if (!(_T_959)) begin
      if (ex_pc_valid) begin
        mem_reg_btb_resp_bht_history <= ex_reg_btb_resp_bht_history;
      end
    end
    mem_reg_xcpt <= _T_952 & ex_xcpt;
    mem_reg_replay <= _T_713 & replay_ex;
    if (!(_T_959)) begin
      if (ex_pc_valid) begin
        mem_reg_flush_pipe <= _GEN_78;
      end
    end
    if (!(_T_959)) begin
      if (ex_pc_valid) begin
        mem_reg_cause <= ex_reg_cause;
      end
    end
    if (!(_T_959)) begin
      if (ex_pc_valid) begin
        mem_reg_slow_bypass <= ex_slow_bypass;
      end
    end
    if (!(_T_959)) begin
      if (ex_pc_valid) begin
        mem_reg_load <= _T_983;
      end
    end
    if (!(_T_959)) begin
      if (ex_pc_valid) begin
        mem_reg_store <= _T_1007;
      end
    end
    if (_T_959) begin
      mem_reg_sfence <= 1'h0;
    end else if (ex_pc_valid) begin
      mem_reg_sfence <= ex_sfence;
    end
    if (!(_T_959)) begin
      if (ex_pc_valid) begin
        mem_reg_pc <= ex_reg_pc;
      end
    end
    if (!(_T_959)) begin
      if (ex_pc_valid) begin
        mem_reg_inst <= ex_reg_inst;
      end
    end
    if (!(_T_959)) begin
      if (ex_pc_valid) begin
        mem_reg_mem_size <= ex_reg_mem_size;
      end
    end
    if (!(_T_959)) begin
      if (ex_pc_valid) begin
        mem_reg_raw_inst <= ex_reg_raw_inst;
      end
    end
    if (!(_T_959)) begin
      if (ex_pc_valid) begin
        mem_reg_wdata <= _T_1008;
      end
    end
    if (!(_T_959)) begin
      if (ex_pc_valid) begin
        if (_T_1011) begin
          if (_T_1013) begin
            mem_reg_rs2 <= _T_1017;
          end else if (_T_1018) begin
            mem_reg_rs2 <= _T_1021;
          end else if (_T_1022) begin
            mem_reg_rs2 <= _T_1024;
          end else if (ex_reg_rs_bypass_1) begin
            if (_T_633) begin
              mem_reg_rs2 <= io_dmem_resp_bits_data_word_bypass;
            end else if (_T_631) begin
              mem_reg_rs2 <= wb_reg_wdata;
            end else if (_T_629) begin
              mem_reg_rs2 <= mem_reg_wdata;
            end else begin
              mem_reg_rs2 <= 64'h0;
            end
          end else begin
            mem_reg_rs2 <= _T_635;
          end
        end
      end
    end
    if (!(_T_959)) begin
      if (ex_pc_valid) begin
        mem_br_taken <= alu_io_cmp_out;
      end
    end
    wb_reg_valid <= ~ctrl_killm;
    wb_reg_xcpt <= mem_xcpt & _T_1061;
    wb_reg_replay <= replay_mem & _T_1061;
    wb_reg_flush_pipe <= _T_1060 & mem_reg_flush_pipe;
    if (mem_pc_valid) begin
      if (_T_1033) begin
        wb_reg_cause <= mem_reg_cause;
      end else begin
        wb_reg_cause <= {{60'd0}, _T_1037};
      end
    end
    if (mem_pc_valid) begin
      wb_reg_sfence <= mem_reg_sfence;
    end
    if (mem_pc_valid) begin
      wb_reg_pc <= mem_reg_pc;
    end
    if (mem_pc_valid) begin
      wb_reg_mem_size <= mem_reg_mem_size;
    end
    if (mem_pc_valid) begin
      wb_reg_inst <= mem_reg_inst;
    end
    if (mem_pc_valid) begin
      wb_reg_raw_inst <= mem_reg_raw_inst;
    end
    if (mem_pc_valid) begin
      if (_T_1069) begin
        wb_reg_wdata <= io_fpu_toint_data;
      end else begin
        wb_reg_wdata <= mem_int_wdata;
      end
    end
    if (reset) begin
      id_reg_fence <= 1'h0;
    end else if (_T_712) begin
      id_reg_fence <= _GEN_2;
    end else if (_T_569) begin
      id_reg_fence <= 1'h0;
    end
    if (_T_712) begin
      if (id_illegal_insn) begin
        ex_reg_rs_bypass_0 <= 1'h0;
      end else begin
        ex_reg_rs_bypass_0 <= do_bypass;
      end
    end
    if (_T_712) begin
      ex_reg_rs_bypass_1 <= do_bypass_1;
    end
    if (_T_712) begin
      if (id_illegal_insn) begin
        ex_reg_rs_lsb_0 <= inst[1:0];
      end else if (_T_744) begin
        ex_reg_rs_lsb_0 <= id_rs_0[1:0];
      end else if (id_bypass_src_0_0) begin
        ex_reg_rs_lsb_0 <= 2'h0;
      end else if (id_bypass_src_0_1) begin
        ex_reg_rs_lsb_0 <= 2'h1;
      end else if (id_bypass_src_0_2) begin
        ex_reg_rs_lsb_0 <= 2'h2;
      end else begin
        ex_reg_rs_lsb_0 <= 2'h3;
      end
    end
    if (_T_712) begin
      if (_T_752) begin
        ex_reg_rs_lsb_1 <= id_rs_1[1:0];
      end else if (id_bypass_src_1_0) begin
        ex_reg_rs_lsb_1 <= 2'h0;
      end else if (id_bypass_src_1_1) begin
        ex_reg_rs_lsb_1 <= 2'h1;
      end else if (id_bypass_src_1_2) begin
        ex_reg_rs_lsb_1 <= 2'h2;
      end else begin
        ex_reg_rs_lsb_1 <= 2'h3;
      end
    end
    if (_T_712) begin
      if (id_illegal_insn) begin
        ex_reg_rs_msb_0 <= {{32'd0}, inst[31:2]};
      end else if (_T_744) begin
        ex_reg_rs_msb_0 <= id_rs_0[63:2];
      end
    end
    if (_T_712) begin
      if (_T_752) begin
        ex_reg_rs_msb_1 <= id_rs_1[63:2];
      end
    end
    if (reset) begin
      _T_1185 <= 32'h0;
    end else if (_T_1219) begin
      _T_1185 <= _T_1218;
    end else if (ll_wen) begin
      _T_1185 <= _T_1191;
    end
    if (reset) begin
      _T_1298 <= 32'h0;
    end else if (_T_1316) begin
      _T_1298 <= _T_1315;
    end else if (_T_1311) begin
      _T_1298 <= _T_1310;
    end else if (_T_1301) begin
      _T_1298 <= _T_1304;
    end
    blocked <= _T_1334 & _T_1336;
    _T_1057 <= div_io_req_ready & div_io_req_valid;
    if (ex_reg_rs_bypass_0) begin
      if (_T_626) begin
        _T_1473 <= io_dmem_resp_bits_data_word_bypass;
      end else if (_T_624) begin
        _T_1473 <= wb_reg_wdata;
      end else if (_T_622) begin
        _T_1473 <= mem_reg_wdata;
      end else begin
        _T_1473 <= 64'h0;
      end
    end else begin
      _T_1473 <= _T_628;
    end
    coreMonitorBundle_rd0val <= _T_1473;
    if (ex_reg_rs_bypass_1) begin
      if (_T_633) begin
        _T_1476 <= io_dmem_resp_bits_data_word_bypass;
      end else if (_T_631) begin
        _T_1476 <= wb_reg_wdata;
      end else if (_T_629) begin
        _T_1476 <= mem_reg_wdata;
      end else begin
        _T_1476 <= 64'h0;
      end
    end else begin
      _T_1476 <= _T_635;
    end
    coreMonitorBundle_rd1val <= _T_1476;
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (csr_io_trace_0_valid & _T_1490) begin
          $fwrite(32'h80000002,"C%d: %d [%d] pc=[%x] W[r%d=%x][%d] R[r%d=%x] R[r%d=%x] inst=[%x] DASM(%x)\n",1'h0,coreMonitorBundle_timer,coreMonitorBundle_valid,coreMonitorBundle_pc,_T_1479,_T_1480,coreMonitorBundle_wrenx,_T_1482,_T_1484,_T_1486,_T_1488,coreMonitorBundle_inst,coreMonitorBundle_inst); // @[RocketCore.scala 920:13:chipyard.TestHarness.RocketConfig.fir@252430.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
