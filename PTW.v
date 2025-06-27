module PTW( // @[:chipyard.TestHarness.RocketConfig.fir@240866.2]
  input         clock, // @[:chipyard.TestHarness.RocketConfig.fir@240867.4]
  input         reset, // @[:chipyard.TestHarness.RocketConfig.fir@240868.4]
  output        io_requestor_0_req_ready, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  input         io_requestor_0_req_valid, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  input  [26:0] io_requestor_0_req_bits_bits_addr, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output        io_requestor_0_resp_valid, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output        io_requestor_0_resp_bits_ae, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output [53:0] io_requestor_0_resp_bits_pte_ppn, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output        io_requestor_0_resp_bits_pte_d, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output        io_requestor_0_resp_bits_pte_a, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output        io_requestor_0_resp_bits_pte_g, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output        io_requestor_0_resp_bits_pte_u, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output        io_requestor_0_resp_bits_pte_x, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output        io_requestor_0_resp_bits_pte_w, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output        io_requestor_0_resp_bits_pte_r, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output        io_requestor_0_resp_bits_pte_v, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output [1:0]  io_requestor_0_resp_bits_level, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output        io_requestor_0_resp_bits_homogeneous, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output [3:0]  io_requestor_0_ptbr_mode, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output        io_requestor_0_status_debug, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output [1:0]  io_requestor_0_status_dprv, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output        io_requestor_0_status_mxr, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output        io_requestor_0_status_sum, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output        io_requestor_0_pmp_0_cfg_l, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output [1:0]  io_requestor_0_pmp_0_cfg_a, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output        io_requestor_0_pmp_0_cfg_x, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output        io_requestor_0_pmp_0_cfg_w, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output        io_requestor_0_pmp_0_cfg_r, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output [29:0] io_requestor_0_pmp_0_addr, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output [31:0] io_requestor_0_pmp_0_mask, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output        io_requestor_0_pmp_1_cfg_l, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output [1:0]  io_requestor_0_pmp_1_cfg_a, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output        io_requestor_0_pmp_1_cfg_x, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output        io_requestor_0_pmp_1_cfg_w, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output        io_requestor_0_pmp_1_cfg_r, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output [29:0] io_requestor_0_pmp_1_addr, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output [31:0] io_requestor_0_pmp_1_mask, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output        io_requestor_0_pmp_2_cfg_l, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output [1:0]  io_requestor_0_pmp_2_cfg_a, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output        io_requestor_0_pmp_2_cfg_x, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output        io_requestor_0_pmp_2_cfg_w, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output        io_requestor_0_pmp_2_cfg_r, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output [29:0] io_requestor_0_pmp_2_addr, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output [31:0] io_requestor_0_pmp_2_mask, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output        io_requestor_0_pmp_3_cfg_l, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output [1:0]  io_requestor_0_pmp_3_cfg_a, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output        io_requestor_0_pmp_3_cfg_x, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output        io_requestor_0_pmp_3_cfg_w, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output        io_requestor_0_pmp_3_cfg_r, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output [29:0] io_requestor_0_pmp_3_addr, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output [31:0] io_requestor_0_pmp_3_mask, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output        io_requestor_0_pmp_4_cfg_l, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output [1:0]  io_requestor_0_pmp_4_cfg_a, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output        io_requestor_0_pmp_4_cfg_x, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output        io_requestor_0_pmp_4_cfg_w, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output        io_requestor_0_pmp_4_cfg_r, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output [29:0] io_requestor_0_pmp_4_addr, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output [31:0] io_requestor_0_pmp_4_mask, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output        io_requestor_0_pmp_5_cfg_l, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output [1:0]  io_requestor_0_pmp_5_cfg_a, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output        io_requestor_0_pmp_5_cfg_x, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output        io_requestor_0_pmp_5_cfg_w, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output        io_requestor_0_pmp_5_cfg_r, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output [29:0] io_requestor_0_pmp_5_addr, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output [31:0] io_requestor_0_pmp_5_mask, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output        io_requestor_0_pmp_6_cfg_l, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output [1:0]  io_requestor_0_pmp_6_cfg_a, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output        io_requestor_0_pmp_6_cfg_x, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output        io_requestor_0_pmp_6_cfg_w, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output        io_requestor_0_pmp_6_cfg_r, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output [29:0] io_requestor_0_pmp_6_addr, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output [31:0] io_requestor_0_pmp_6_mask, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output        io_requestor_0_pmp_7_cfg_l, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output [1:0]  io_requestor_0_pmp_7_cfg_a, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output        io_requestor_0_pmp_7_cfg_x, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output        io_requestor_0_pmp_7_cfg_w, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output        io_requestor_0_pmp_7_cfg_r, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output [29:0] io_requestor_0_pmp_7_addr, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output [31:0] io_requestor_0_pmp_7_mask, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output        io_requestor_1_req_ready, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  input         io_requestor_1_req_valid, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  input         io_requestor_1_req_bits_valid, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  input  [26:0] io_requestor_1_req_bits_bits_addr, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output        io_requestor_1_resp_valid, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output        io_requestor_1_resp_bits_ae, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output [53:0] io_requestor_1_resp_bits_pte_ppn, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output        io_requestor_1_resp_bits_pte_d, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output        io_requestor_1_resp_bits_pte_a, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output        io_requestor_1_resp_bits_pte_g, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output        io_requestor_1_resp_bits_pte_u, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output        io_requestor_1_resp_bits_pte_x, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output        io_requestor_1_resp_bits_pte_w, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output        io_requestor_1_resp_bits_pte_r, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output        io_requestor_1_resp_bits_pte_v, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output [1:0]  io_requestor_1_resp_bits_level, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output        io_requestor_1_resp_bits_homogeneous, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output [3:0]  io_requestor_1_ptbr_mode, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output        io_requestor_1_status_debug, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output [1:0]  io_requestor_1_status_prv, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output        io_requestor_1_pmp_0_cfg_l, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output [1:0]  io_requestor_1_pmp_0_cfg_a, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output        io_requestor_1_pmp_0_cfg_x, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output        io_requestor_1_pmp_0_cfg_w, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output        io_requestor_1_pmp_0_cfg_r, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output [29:0] io_requestor_1_pmp_0_addr, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output [31:0] io_requestor_1_pmp_0_mask, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output        io_requestor_1_pmp_1_cfg_l, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output [1:0]  io_requestor_1_pmp_1_cfg_a, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output        io_requestor_1_pmp_1_cfg_x, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output        io_requestor_1_pmp_1_cfg_w, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output        io_requestor_1_pmp_1_cfg_r, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output [29:0] io_requestor_1_pmp_1_addr, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output [31:0] io_requestor_1_pmp_1_mask, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output        io_requestor_1_pmp_2_cfg_l, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output [1:0]  io_requestor_1_pmp_2_cfg_a, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output        io_requestor_1_pmp_2_cfg_x, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output        io_requestor_1_pmp_2_cfg_w, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output        io_requestor_1_pmp_2_cfg_r, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output [29:0] io_requestor_1_pmp_2_addr, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output [31:0] io_requestor_1_pmp_2_mask, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output        io_requestor_1_pmp_3_cfg_l, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output [1:0]  io_requestor_1_pmp_3_cfg_a, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output        io_requestor_1_pmp_3_cfg_x, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output        io_requestor_1_pmp_3_cfg_w, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output        io_requestor_1_pmp_3_cfg_r, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output [29:0] io_requestor_1_pmp_3_addr, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output [31:0] io_requestor_1_pmp_3_mask, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output        io_requestor_1_pmp_4_cfg_l, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output [1:0]  io_requestor_1_pmp_4_cfg_a, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output        io_requestor_1_pmp_4_cfg_x, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output        io_requestor_1_pmp_4_cfg_w, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output        io_requestor_1_pmp_4_cfg_r, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output [29:0] io_requestor_1_pmp_4_addr, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output [31:0] io_requestor_1_pmp_4_mask, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output        io_requestor_1_pmp_5_cfg_l, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output [1:0]  io_requestor_1_pmp_5_cfg_a, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output        io_requestor_1_pmp_5_cfg_x, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output        io_requestor_1_pmp_5_cfg_w, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output        io_requestor_1_pmp_5_cfg_r, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output [29:0] io_requestor_1_pmp_5_addr, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output [31:0] io_requestor_1_pmp_5_mask, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output        io_requestor_1_pmp_6_cfg_l, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output [1:0]  io_requestor_1_pmp_6_cfg_a, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output        io_requestor_1_pmp_6_cfg_x, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output        io_requestor_1_pmp_6_cfg_w, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output        io_requestor_1_pmp_6_cfg_r, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output [29:0] io_requestor_1_pmp_6_addr, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output [31:0] io_requestor_1_pmp_6_mask, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output        io_requestor_1_pmp_7_cfg_l, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output [1:0]  io_requestor_1_pmp_7_cfg_a, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output        io_requestor_1_pmp_7_cfg_x, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output        io_requestor_1_pmp_7_cfg_w, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output        io_requestor_1_pmp_7_cfg_r, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output [29:0] io_requestor_1_pmp_7_addr, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output [31:0] io_requestor_1_pmp_7_mask, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output [63:0] io_requestor_1_customCSRs_csrs_0_value, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  input         io_mem_req_ready, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output        io_mem_req_valid, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output [39:0] io_mem_req_bits_addr, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  output        io_mem_s1_kill, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  input         io_mem_s2_nack, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  input         io_mem_resp_valid, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  input  [63:0] io_mem_resp_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  input         io_mem_s2_xcpt_ae_ld, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  input  [3:0]  io_dpath_ptbr_mode, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  input  [43:0] io_dpath_ptbr_ppn, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  input         io_dpath_sfence_valid, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  input         io_dpath_sfence_bits_rs1, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  input         io_dpath_sfence_bits_rs2, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  input  [38:0] io_dpath_sfence_bits_addr, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  input         io_dpath_status_debug, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  input  [1:0]  io_dpath_status_dprv, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  input  [1:0]  io_dpath_status_prv, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  input         io_dpath_status_mxr, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  input         io_dpath_status_sum, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  input         io_dpath_pmp_0_cfg_l, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  input  [1:0]  io_dpath_pmp_0_cfg_a, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  input         io_dpath_pmp_0_cfg_x, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  input         io_dpath_pmp_0_cfg_w, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  input         io_dpath_pmp_0_cfg_r, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  input  [29:0] io_dpath_pmp_0_addr, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  input  [31:0] io_dpath_pmp_0_mask, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  input         io_dpath_pmp_1_cfg_l, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  input  [1:0]  io_dpath_pmp_1_cfg_a, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  input         io_dpath_pmp_1_cfg_x, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  input         io_dpath_pmp_1_cfg_w, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  input         io_dpath_pmp_1_cfg_r, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  input  [29:0] io_dpath_pmp_1_addr, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  input  [31:0] io_dpath_pmp_1_mask, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  input         io_dpath_pmp_2_cfg_l, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  input  [1:0]  io_dpath_pmp_2_cfg_a, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  input         io_dpath_pmp_2_cfg_x, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  input         io_dpath_pmp_2_cfg_w, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  input         io_dpath_pmp_2_cfg_r, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  input  [29:0] io_dpath_pmp_2_addr, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  input  [31:0] io_dpath_pmp_2_mask, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  input         io_dpath_pmp_3_cfg_l, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  input  [1:0]  io_dpath_pmp_3_cfg_a, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  input         io_dpath_pmp_3_cfg_x, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  input         io_dpath_pmp_3_cfg_w, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  input         io_dpath_pmp_3_cfg_r, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  input  [29:0] io_dpath_pmp_3_addr, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  input  [31:0] io_dpath_pmp_3_mask, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  input         io_dpath_pmp_4_cfg_l, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  input  [1:0]  io_dpath_pmp_4_cfg_a, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  input         io_dpath_pmp_4_cfg_x, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  input         io_dpath_pmp_4_cfg_w, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  input         io_dpath_pmp_4_cfg_r, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  input  [29:0] io_dpath_pmp_4_addr, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  input  [31:0] io_dpath_pmp_4_mask, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  input         io_dpath_pmp_5_cfg_l, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  input  [1:0]  io_dpath_pmp_5_cfg_a, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  input         io_dpath_pmp_5_cfg_x, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  input         io_dpath_pmp_5_cfg_w, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  input         io_dpath_pmp_5_cfg_r, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  input  [29:0] io_dpath_pmp_5_addr, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  input  [31:0] io_dpath_pmp_5_mask, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  input         io_dpath_pmp_6_cfg_l, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  input  [1:0]  io_dpath_pmp_6_cfg_a, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  input         io_dpath_pmp_6_cfg_x, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  input         io_dpath_pmp_6_cfg_w, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  input         io_dpath_pmp_6_cfg_r, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  input  [29:0] io_dpath_pmp_6_addr, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  input  [31:0] io_dpath_pmp_6_mask, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  input         io_dpath_pmp_7_cfg_l, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  input  [1:0]  io_dpath_pmp_7_cfg_a, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  input         io_dpath_pmp_7_cfg_x, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  input         io_dpath_pmp_7_cfg_w, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  input         io_dpath_pmp_7_cfg_r, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  input  [29:0] io_dpath_pmp_7_addr, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  input  [31:0] io_dpath_pmp_7_mask, // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
  input  [63:0] io_dpath_customCSRs_csrs_0_value // @[:chipyard.TestHarness.RocketConfig.fir@240869.4]
);
  wire  arb_io_in_0_ready; // @[PTW.scala 105:19:chipyard.TestHarness.RocketConfig.fir@240875.4]
  wire  arb_io_in_0_valid; // @[PTW.scala 105:19:chipyard.TestHarness.RocketConfig.fir@240875.4]
  wire [26:0] arb_io_in_0_bits_bits_addr; // @[PTW.scala 105:19:chipyard.TestHarness.RocketConfig.fir@240875.4]
  wire  arb_io_in_1_ready; // @[PTW.scala 105:19:chipyard.TestHarness.RocketConfig.fir@240875.4]
  wire  arb_io_in_1_valid; // @[PTW.scala 105:19:chipyard.TestHarness.RocketConfig.fir@240875.4]
  wire  arb_io_in_1_bits_valid; // @[PTW.scala 105:19:chipyard.TestHarness.RocketConfig.fir@240875.4]
  wire [26:0] arb_io_in_1_bits_bits_addr; // @[PTW.scala 105:19:chipyard.TestHarness.RocketConfig.fir@240875.4]
  wire  arb_io_out_ready; // @[PTW.scala 105:19:chipyard.TestHarness.RocketConfig.fir@240875.4]
  wire  arb_io_out_valid; // @[PTW.scala 105:19:chipyard.TestHarness.RocketConfig.fir@240875.4]
  wire  arb_io_out_bits_valid; // @[PTW.scala 105:19:chipyard.TestHarness.RocketConfig.fir@240875.4]
  wire [26:0] arb_io_out_bits_bits_addr; // @[PTW.scala 105:19:chipyard.TestHarness.RocketConfig.fir@240875.4]
  wire  arb_io_chosen; // @[PTW.scala 105:19:chipyard.TestHarness.RocketConfig.fir@240875.4]
  wire [9:0] l2_tlb_ram_RW0_addr; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@241160.4]
  wire  l2_tlb_ram_RW0_en; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@241160.4]
  wire  l2_tlb_ram_RW0_clk; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@241160.4]
  wire  l2_tlb_ram_RW0_wmode; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@241160.4]
  wire [43:0] l2_tlb_ram_RW0_wdata; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@241160.4]
  wire [43:0] l2_tlb_ram_RW0_rdata; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@241160.4]
  wire [2:0] package_Anon_io_x; // @[package.scala 213:21:chipyard.TestHarness.RocketConfig.fir@242091.4]
  wire [2:0] package_Anon_io_y; // @[package.scala 213:21:chipyard.TestHarness.RocketConfig.fir@242091.4]
  wire [53:0] package_Anon_1_io_x_ppn; // @[package.scala 213:21:chipyard.TestHarness.RocketConfig.fir@242178.4]
  wire  package_Anon_1_io_x_d; // @[package.scala 213:21:chipyard.TestHarness.RocketConfig.fir@242178.4]
  wire  package_Anon_1_io_x_a; // @[package.scala 213:21:chipyard.TestHarness.RocketConfig.fir@242178.4]
  wire  package_Anon_1_io_x_g; // @[package.scala 213:21:chipyard.TestHarness.RocketConfig.fir@242178.4]
  wire  package_Anon_1_io_x_u; // @[package.scala 213:21:chipyard.TestHarness.RocketConfig.fir@242178.4]
  wire  package_Anon_1_io_x_x; // @[package.scala 213:21:chipyard.TestHarness.RocketConfig.fir@242178.4]
  wire  package_Anon_1_io_x_w; // @[package.scala 213:21:chipyard.TestHarness.RocketConfig.fir@242178.4]
  wire  package_Anon_1_io_x_r; // @[package.scala 213:21:chipyard.TestHarness.RocketConfig.fir@242178.4]
  wire  package_Anon_1_io_x_v; // @[package.scala 213:21:chipyard.TestHarness.RocketConfig.fir@242178.4]
  wire [53:0] package_Anon_1_io_y_ppn; // @[package.scala 213:21:chipyard.TestHarness.RocketConfig.fir@242178.4]
  wire  package_Anon_1_io_y_d; // @[package.scala 213:21:chipyard.TestHarness.RocketConfig.fir@242178.4]
  wire  package_Anon_1_io_y_a; // @[package.scala 213:21:chipyard.TestHarness.RocketConfig.fir@242178.4]
  wire  package_Anon_1_io_y_g; // @[package.scala 213:21:chipyard.TestHarness.RocketConfig.fir@242178.4]
  wire  package_Anon_1_io_y_u; // @[package.scala 213:21:chipyard.TestHarness.RocketConfig.fir@242178.4]
  wire  package_Anon_1_io_y_x; // @[package.scala 213:21:chipyard.TestHarness.RocketConfig.fir@242178.4]
  wire  package_Anon_1_io_y_w; // @[package.scala 213:21:chipyard.TestHarness.RocketConfig.fir@242178.4]
  wire  package_Anon_1_io_y_r; // @[package.scala 213:21:chipyard.TestHarness.RocketConfig.fir@242178.4]
  wire  package_Anon_1_io_y_v; // @[package.scala 213:21:chipyard.TestHarness.RocketConfig.fir@242178.4]
  reg [2:0] state; // @[PTW.scala 103:18:chipyard.TestHarness.RocketConfig.fir@240874.4]
  reg [31:0] _RAND_0;
  reg  resp_valid_0; // @[PTW.scala 109:23:chipyard.TestHarness.RocketConfig.fir@240887.4]
  reg [31:0] _RAND_1;
  reg  resp_valid_1; // @[PTW.scala 109:23:chipyard.TestHarness.RocketConfig.fir@240887.4]
  reg [31:0] _RAND_2;
  wire  _T_2; // @[PTW.scala 111:24:chipyard.TestHarness.RocketConfig.fir@240889.4]
  reg  invalidated; // @[PTW.scala 118:24:chipyard.TestHarness.RocketConfig.fir@240896.4]
  reg [31:0] _RAND_3;
  reg [1:0] count; // @[PTW.scala 119:18:chipyard.TestHarness.RocketConfig.fir@240897.4]
  reg [31:0] _RAND_4;
  reg  resp_ae; // @[PTW.scala 120:24:chipyard.TestHarness.RocketConfig.fir@240898.4]
  reg [31:0] _RAND_5;
  reg [26:0] r_req_addr; // @[PTW.scala 123:18:chipyard.TestHarness.RocketConfig.fir@240902.4]
  reg [31:0] _RAND_6;
  reg  r_req_dest; // @[PTW.scala 124:23:chipyard.TestHarness.RocketConfig.fir@240903.4]
  reg [31:0] _RAND_7;
  reg [53:0] r_pte_ppn; // @[PTW.scala 125:18:chipyard.TestHarness.RocketConfig.fir@240904.4]
  reg [63:0] _RAND_8;
  reg  r_pte_d; // @[PTW.scala 125:18:chipyard.TestHarness.RocketConfig.fir@240904.4]
  reg [31:0] _RAND_9;
  reg  r_pte_a; // @[PTW.scala 125:18:chipyard.TestHarness.RocketConfig.fir@240904.4]
  reg [31:0] _RAND_10;
  reg  r_pte_g; // @[PTW.scala 125:18:chipyard.TestHarness.RocketConfig.fir@240904.4]
  reg [31:0] _RAND_11;
  reg  r_pte_u; // @[PTW.scala 125:18:chipyard.TestHarness.RocketConfig.fir@240904.4]
  reg [31:0] _RAND_12;
  reg  r_pte_x; // @[PTW.scala 125:18:chipyard.TestHarness.RocketConfig.fir@240904.4]
  reg [31:0] _RAND_13;
  reg  r_pte_w; // @[PTW.scala 125:18:chipyard.TestHarness.RocketConfig.fir@240904.4]
  reg [31:0] _RAND_14;
  reg  r_pte_r; // @[PTW.scala 125:18:chipyard.TestHarness.RocketConfig.fir@240904.4]
  reg [31:0] _RAND_15;
  reg  r_pte_v; // @[PTW.scala 125:18:chipyard.TestHarness.RocketConfig.fir@240904.4]
  reg [31:0] _RAND_16;
  reg  mem_resp_valid; // @[PTW.scala 127:31:chipyard.TestHarness.RocketConfig.fir@240905.4]
  reg [31:0] _RAND_17;
  reg [63:0] mem_resp_data; // @[PTW.scala 128:30:chipyard.TestHarness.RocketConfig.fir@240907.4]
  reg [63:0] _RAND_18;
  wire  tmp_v; // @[PTW.scala 139:33:chipyard.TestHarness.RocketConfig.fir@240914.4]
  wire  tmp_r; // @[PTW.scala 139:33:chipyard.TestHarness.RocketConfig.fir@240916.4]
  wire  tmp_w; // @[PTW.scala 139:33:chipyard.TestHarness.RocketConfig.fir@240918.4]
  wire  tmp_x; // @[PTW.scala 139:33:chipyard.TestHarness.RocketConfig.fir@240920.4]
  wire  tmp_u; // @[PTW.scala 139:33:chipyard.TestHarness.RocketConfig.fir@240922.4]
  wire  tmp_g; // @[PTW.scala 139:33:chipyard.TestHarness.RocketConfig.fir@240924.4]
  wire  tmp_a; // @[PTW.scala 139:33:chipyard.TestHarness.RocketConfig.fir@240926.4]
  wire  tmp_d; // @[PTW.scala 139:33:chipyard.TestHarness.RocketConfig.fir@240928.4]
  wire [53:0] tmp_ppn; // @[PTW.scala 139:33:chipyard.TestHarness.RocketConfig.fir@240932.4]
  wire  _T_19; // @[PTW.scala 142:17:chipyard.TestHarness.RocketConfig.fir@240939.4]
  wire  _T_20; // @[PTW.scala 142:26:chipyard.TestHarness.RocketConfig.fir@240940.4]
  wire  _T_21; // @[PTW.scala 145:21:chipyard.TestHarness.RocketConfig.fir@240942.6]
  wire  _T_23; // @[PTW.scala 145:95:chipyard.TestHarness.RocketConfig.fir@240944.6]
  wire  _T_24; // @[PTW.scala 145:26:chipyard.TestHarness.RocketConfig.fir@240945.6]
  wire  _GEN_0; // @[PTW.scala 145:102:chipyard.TestHarness.RocketConfig.fir@240946.6]
  wire  _T_25; // @[PTW.scala 145:21:chipyard.TestHarness.RocketConfig.fir@240949.6]
  wire  _T_27; // @[PTW.scala 145:95:chipyard.TestHarness.RocketConfig.fir@240951.6]
  wire  _T_28; // @[PTW.scala 145:26:chipyard.TestHarness.RocketConfig.fir@240952.6]
  wire  _GEN_1; // @[PTW.scala 145:102:chipyard.TestHarness.RocketConfig.fir@240953.6]
  wire  res_v; // @[PTW.scala 142:36:chipyard.TestHarness.RocketConfig.fir@240941.4]
  wire  invalid_paddr; // @[PTW.scala 147:32:chipyard.TestHarness.RocketConfig.fir@240958.4]
  wire  _T_30; // @[PTW.scala 68:36:chipyard.TestHarness.RocketConfig.fir@240959.4]
  wire  _T_31; // @[PTW.scala 68:33:chipyard.TestHarness.RocketConfig.fir@240960.4]
  wire  _T_32; // @[PTW.scala 68:42:chipyard.TestHarness.RocketConfig.fir@240961.4]
  wire  _T_33; // @[PTW.scala 68:39:chipyard.TestHarness.RocketConfig.fir@240962.4]
  wire  _T_34; // @[PTW.scala 68:48:chipyard.TestHarness.RocketConfig.fir@240963.4]
  wire  _T_35; // @[PTW.scala 68:45:chipyard.TestHarness.RocketConfig.fir@240964.4]
  wire  _T_36; // @[PTW.scala 149:33:chipyard.TestHarness.RocketConfig.fir@240965.4]
  wire  _T_37; // @[PTW.scala 149:30:chipyard.TestHarness.RocketConfig.fir@240966.4]
  wire  _T_38; // @[PTW.scala 149:57:chipyard.TestHarness.RocketConfig.fir@240967.4]
  wire  traverse; // @[PTW.scala 149:48:chipyard.TestHarness.RocketConfig.fir@240968.4]
  wire [8:0] vpn_idxs_0; // @[PTW.scala 151:60:chipyard.TestHarness.RocketConfig.fir@240969.4]
  wire [8:0] vpn_idxs_1; // @[PTW.scala 151:90:chipyard.TestHarness.RocketConfig.fir@240972.4]
  wire [8:0] vpn_idxs_2; // @[PTW.scala 151:90:chipyard.TestHarness.RocketConfig.fir@240974.4]
  wire  _T_42; // @[package.scala 32:86:chipyard.TestHarness.RocketConfig.fir@240975.4]
  wire [8:0] _T_43; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@240976.4]
  wire  _T_44; // @[package.scala 32:86:chipyard.TestHarness.RocketConfig.fir@240977.4]
  wire [8:0] _T_45; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@240978.4]
  wire  _T_46; // @[package.scala 32:86:chipyard.TestHarness.RocketConfig.fir@240979.4]
  wire [8:0] vpn_idx; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@240980.4]
  wire [62:0] _T_47; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@240981.4]
  wire [65:0] pte_addr; // @[PTW.scala 153:29:chipyard.TestHarness.RocketConfig.fir@240982.4]
  wire [53:0] choices_0; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@240985.4]
  wire [53:0] choices_1; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@240988.4]
  wire [53:0] fragmented_superpage_ppn; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@240992.4]
  wire  _T_55; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@240993.4]
  reg [6:0] _T_56; // @[Replacement.scala 42:30:chipyard.TestHarness.RocketConfig.fir@240998.4]
  reg [31:0] _RAND_19;
  reg [7:0] valid; // @[PTW.scala 168:24:chipyard.TestHarness.RocketConfig.fir@240999.4]
  reg [31:0] _RAND_20;
  reg [31:0] tags_0; // @[PTW.scala 169:19:chipyard.TestHarness.RocketConfig.fir@241000.4]
  reg [31:0] _RAND_21;
  reg [31:0] tags_1; // @[PTW.scala 169:19:chipyard.TestHarness.RocketConfig.fir@241000.4]
  reg [31:0] _RAND_22;
  reg [31:0] tags_2; // @[PTW.scala 169:19:chipyard.TestHarness.RocketConfig.fir@241000.4]
  reg [31:0] _RAND_23;
  reg [31:0] tags_3; // @[PTW.scala 169:19:chipyard.TestHarness.RocketConfig.fir@241000.4]
  reg [31:0] _RAND_24;
  reg [31:0] tags_4; // @[PTW.scala 169:19:chipyard.TestHarness.RocketConfig.fir@241000.4]
  reg [31:0] _RAND_25;
  reg [31:0] tags_5; // @[PTW.scala 169:19:chipyard.TestHarness.RocketConfig.fir@241000.4]
  reg [31:0] _RAND_26;
  reg [31:0] tags_6; // @[PTW.scala 169:19:chipyard.TestHarness.RocketConfig.fir@241000.4]
  reg [31:0] _RAND_27;
  reg [31:0] tags_7; // @[PTW.scala 169:19:chipyard.TestHarness.RocketConfig.fir@241000.4]
  reg [31:0] _RAND_28;
  reg [19:0] data_0; // @[PTW.scala 170:19:chipyard.TestHarness.RocketConfig.fir@241001.4]
  reg [31:0] _RAND_29;
  reg [19:0] data_1; // @[PTW.scala 170:19:chipyard.TestHarness.RocketConfig.fir@241001.4]
  reg [31:0] _RAND_30;
  reg [19:0] data_2; // @[PTW.scala 170:19:chipyard.TestHarness.RocketConfig.fir@241001.4]
  reg [31:0] _RAND_31;
  reg [19:0] data_3; // @[PTW.scala 170:19:chipyard.TestHarness.RocketConfig.fir@241001.4]
  reg [31:0] _RAND_32;
  reg [19:0] data_4; // @[PTW.scala 170:19:chipyard.TestHarness.RocketConfig.fir@241001.4]
  reg [31:0] _RAND_33;
  reg [19:0] data_5; // @[PTW.scala 170:19:chipyard.TestHarness.RocketConfig.fir@241001.4]
  reg [31:0] _RAND_34;
  reg [19:0] data_6; // @[PTW.scala 170:19:chipyard.TestHarness.RocketConfig.fir@241001.4]
  reg [31:0] _RAND_35;
  reg [19:0] data_7; // @[PTW.scala 170:19:chipyard.TestHarness.RocketConfig.fir@241001.4]
  reg [31:0] _RAND_36;
  wire [65:0] _GEN_124; // @[PTW.scala 172:27:chipyard.TestHarness.RocketConfig.fir@241002.4]
  wire  _T_57; // @[PTW.scala 172:27:chipyard.TestHarness.RocketConfig.fir@241002.4]
  wire [65:0] _GEN_125; // @[PTW.scala 172:27:chipyard.TestHarness.RocketConfig.fir@241003.4]
  wire  _T_58; // @[PTW.scala 172:27:chipyard.TestHarness.RocketConfig.fir@241003.4]
  wire [65:0] _GEN_126; // @[PTW.scala 172:27:chipyard.TestHarness.RocketConfig.fir@241004.4]
  wire  _T_59; // @[PTW.scala 172:27:chipyard.TestHarness.RocketConfig.fir@241004.4]
  wire [65:0] _GEN_127; // @[PTW.scala 172:27:chipyard.TestHarness.RocketConfig.fir@241005.4]
  wire  _T_60; // @[PTW.scala 172:27:chipyard.TestHarness.RocketConfig.fir@241005.4]
  wire [65:0] _GEN_128; // @[PTW.scala 172:27:chipyard.TestHarness.RocketConfig.fir@241006.4]
  wire  _T_61; // @[PTW.scala 172:27:chipyard.TestHarness.RocketConfig.fir@241006.4]
  wire [65:0] _GEN_129; // @[PTW.scala 172:27:chipyard.TestHarness.RocketConfig.fir@241007.4]
  wire  _T_62; // @[PTW.scala 172:27:chipyard.TestHarness.RocketConfig.fir@241007.4]
  wire [65:0] _GEN_130; // @[PTW.scala 172:27:chipyard.TestHarness.RocketConfig.fir@241008.4]
  wire  _T_63; // @[PTW.scala 172:27:chipyard.TestHarness.RocketConfig.fir@241008.4]
  wire [65:0] _GEN_131; // @[PTW.scala 172:27:chipyard.TestHarness.RocketConfig.fir@241009.4]
  wire  _T_64; // @[PTW.scala 172:27:chipyard.TestHarness.RocketConfig.fir@241009.4]
  wire [7:0] _T_71; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@241016.4]
  wire [7:0] hits; // @[PTW.scala 172:48:chipyard.TestHarness.RocketConfig.fir@241017.4]
  wire  hit; // @[PTW.scala 173:20:chipyard.TestHarness.RocketConfig.fir@241018.4]
  wire  _T_72; // @[PTW.scala 174:26:chipyard.TestHarness.RocketConfig.fir@241019.4]
  wire  _T_73; // @[PTW.scala 174:41:chipyard.TestHarness.RocketConfig.fir@241020.4]
  wire  _T_74; // @[PTW.scala 174:38:chipyard.TestHarness.RocketConfig.fir@241021.4]
  wire  _T_75; // @[PTW.scala 174:49:chipyard.TestHarness.RocketConfig.fir@241022.4]
  wire  _T_76; // @[PTW.scala 174:46:chipyard.TestHarness.RocketConfig.fir@241023.4]
  wire  _T_77; // @[PTW.scala 175:25:chipyard.TestHarness.RocketConfig.fir@241025.6]
  wire [7:0] _T_78; // @[Replacement.scala 61:31:chipyard.TestHarness.RocketConfig.fir@241026.6]
  wire [7:0] _T_82; // @[Replacement.scala 65:48:chipyard.TestHarness.RocketConfig.fir@241030.6]
  wire [1:0] _T_85; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@241033.6]
  wire [7:0] _T_89; // @[Replacement.scala 65:48:chipyard.TestHarness.RocketConfig.fir@241037.6]
  wire [2:0] _T_92; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@241040.6]
  wire [7:0] _T_96; // @[Replacement.scala 65:48:chipyard.TestHarness.RocketConfig.fir@241044.6]
  wire [3:0] _T_99; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@241047.6]
  wire [7:0] _T_101; // @[PTW.scala 175:61:chipyard.TestHarness.RocketConfig.fir@241049.6]
  wire [2:0] _T_110; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@241058.6]
  wire [2:0] _T_111; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@241059.6]
  wire [2:0] _T_112; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@241060.6]
  wire [2:0] _T_113; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@241061.6]
  wire [2:0] _T_114; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@241062.6]
  wire [2:0] _T_115; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@241063.6]
  wire [2:0] _T_116; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@241064.6]
  wire [2:0] r; // @[PTW.scala 175:18:chipyard.TestHarness.RocketConfig.fir@241065.6]
  wire [7:0] _T_117; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@241066.6]
  wire [7:0] _T_118; // @[PTW.scala 176:22:chipyard.TestHarness.RocketConfig.fir@241067.6]
  wire [53:0] res_ppn; // @[:chipyard.TestHarness.RocketConfig.fir@240934.4 :chipyard.TestHarness.RocketConfig.fir@240936.4 PTW.scala 141:13:chipyard.TestHarness.RocketConfig.fir@240938.4]
  wire  _T_119; // @[PTW.scala 180:24:chipyard.TestHarness.RocketConfig.fir@241072.4]
  wire  _T_120; // @[PTW.scala 180:15:chipyard.TestHarness.RocketConfig.fir@241073.4]
  wire  _T_123; // @[OneHot.scala 32:14:chipyard.TestHarness.RocketConfig.fir@241077.6]
  wire [3:0] _T_124; // @[OneHot.scala 32:28:chipyard.TestHarness.RocketConfig.fir@241078.6]
  wire  _T_127; // @[OneHot.scala 32:14:chipyard.TestHarness.RocketConfig.fir@241081.6]
  wire [1:0] _T_128; // @[OneHot.scala 32:28:chipyard.TestHarness.RocketConfig.fir@241082.6]
  wire [2:0] _T_131; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@241085.6]
  wire  _T_134; // @[Replacement.scala 54:43:chipyard.TestHarness.RocketConfig.fir@241088.6]
  wire [7:0] _T_136; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@241090.6]
  wire [7:0] _T_137; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@241091.6]
  wire [7:0] _T_138; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@241092.6]
  wire [7:0] _T_139; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@241093.6]
  wire [7:0] _T_140; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@241094.6]
  wire [1:0] _T_141; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@241095.6]
  wire  _T_143; // @[Replacement.scala 54:43:chipyard.TestHarness.RocketConfig.fir@241097.6]
  wire [3:0] _T_144; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@241098.6]
  wire [7:0] _GEN_133; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@241099.6]
  wire [7:0] _T_145; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@241099.6]
  wire [7:0] _T_146; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@241100.6]
  wire [7:0] _T_147; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@241101.6]
  wire [7:0] _T_148; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@241102.6]
  wire [7:0] _T_149; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@241103.6]
  wire [2:0] _T_150; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@241104.6]
  wire  _T_152; // @[Replacement.scala 54:43:chipyard.TestHarness.RocketConfig.fir@241106.6]
  wire [7:0] _T_153; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@241107.6]
  wire [7:0] _T_154; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@241108.6]
  wire [7:0] _T_155; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@241109.6]
  wire [7:0] _T_156; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@241110.6]
  wire [7:0] _T_157; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@241111.6]
  wire [7:0] _T_158; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@241112.6]
  wire  _T_161; // @[PTW.scala 181:36:chipyard.TestHarness.RocketConfig.fir@241117.4]
  wire  _T_162; // @[PTW.scala 181:33:chipyard.TestHarness.RocketConfig.fir@241118.4]
  wire  pte_cache_hit; // @[PTW.scala 186:10:chipyard.TestHarness.RocketConfig.fir@241131.4]
  wire [19:0] _T_180; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@241140.4]
  wire [19:0] _T_181; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@241141.4]
  wire [19:0] _T_182; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@241142.4]
  wire [19:0] _T_183; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@241143.4]
  wire [19:0] _T_184; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@241144.4]
  wire [19:0] _T_185; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@241145.4]
  wire [19:0] _T_186; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@241146.4]
  wire [19:0] _T_187; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@241147.4]
  wire [19:0] _T_188; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@241148.4]
  wire [19:0] _T_189; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@241149.4]
  wire [19:0] _T_190; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@241150.4]
  wire [19:0] _T_191; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@241151.4]
  wire [19:0] _T_192; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@241152.4]
  wire [19:0] _T_193; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@241153.4]
  wire [19:0] pte_cache_data; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@241154.4]
  reg  l2_refill; // @[PTW.scala 189:26:chipyard.TestHarness.RocketConfig.fir@241157.4]
  reg [31:0] _RAND_37;
  reg [1023:0] g; // @[PTW.scala 203:16:chipyard.TestHarness.RocketConfig.fir@241161.4]
  reg [1023:0] _RAND_38;
  reg [1023:0] valid_1; // @[PTW.scala 204:24:chipyard.TestHarness.RocketConfig.fir@241162.4]
  reg [1023:0] _RAND_39;
  wire [16:0] r_tag; // @[package.scala 120:13:chipyard.TestHarness.RocketConfig.fir@241163.4]
  wire [9:0] r_idx; // @[package.scala 120:13:chipyard.TestHarness.RocketConfig.fir@241164.4]
  wire  _T_196; // @[PTW.scala 206:21:chipyard.TestHarness.RocketConfig.fir@241166.4]
  wire [19:0] entry_ppn; // @[PTW.scala 207:23:chipyard.TestHarness.RocketConfig.fir@241168.6 PTW.scala 208:13:chipyard.TestHarness.RocketConfig.fir@241170.6]
  wire [42:0] _T_203; // @[PTW.scala 210:42:chipyard.TestHarness.RocketConfig.fir@241178.6]
  wire  _T_204; // @[ECC.scala 64:59:chipyard.TestHarness.RocketConfig.fir@241179.6]
  wire [1023:0] mask; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@241184.6]
  wire [1023:0] _T_208; // @[PTW.scala 213:22:chipyard.TestHarness.RocketConfig.fir@241185.6]
  wire [1023:0] _T_209; // @[PTW.scala 214:27:chipyard.TestHarness.RocketConfig.fir@241187.6]
  wire [1023:0] _T_210; // @[PTW.scala 214:39:chipyard.TestHarness.RocketConfig.fir@241188.6]
  wire [1023:0] _T_211; // @[PTW.scala 214:37:chipyard.TestHarness.RocketConfig.fir@241189.6]
  wire [1023:0] _T_214; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@241195.6]
  wire [1023:0] _T_215; // @[PTW.scala 218:47:chipyard.TestHarness.RocketConfig.fir@241196.6]
  wire [1023:0] _T_216; // @[PTW.scala 218:45:chipyard.TestHarness.RocketConfig.fir@241197.6]
  wire [1023:0] _T_217; // @[PTW.scala 219:45:chipyard.TestHarness.RocketConfig.fir@241198.6]
  wire  _T_220; // @[PTW.scala 222:20:chipyard.TestHarness.RocketConfig.fir@241203.4]
  wire  s0_valid; // @[PTW.scala 222:31:chipyard.TestHarness.RocketConfig.fir@241205.4]
  reg  s1_valid; // @[PTW.scala 223:27:chipyard.TestHarness.RocketConfig.fir@241207.4]
  reg [31:0] _RAND_40;
  reg  s2_valid; // @[PTW.scala 224:27:chipyard.TestHarness.RocketConfig.fir@241209.4]
  reg [31:0] _RAND_41;
  reg [43:0] _T_227; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@241221.4]
  reg [63:0] _RAND_42;
  wire  l2_error; // @[ECC.scala 70:27:chipyard.TestHarness.RocketConfig.fir@241226.4]
  wire [1023:0] _T_230; // @[PTW.scala 227:39:chipyard.TestHarness.RocketConfig.fir@241227.4]
  reg  s2_valid_bit; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@241229.4]
  reg [31:0] _RAND_43;
  wire [1023:0] _T_232; // @[PTW.scala 228:27:chipyard.TestHarness.RocketConfig.fir@241233.4]
  reg  s2_g; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@241235.4]
  reg [31:0] _RAND_44;
  wire  _T_234; // @[PTW.scala 229:20:chipyard.TestHarness.RocketConfig.fir@241239.4]
  wire  _T_236; // @[PTW.scala 229:36:chipyard.TestHarness.RocketConfig.fir@241241.4]
  wire  s2_entry_r; // @[PTW.scala 231:49:chipyard.TestHarness.RocketConfig.fir@241250.4]
  wire  s2_entry_w; // @[PTW.scala 231:49:chipyard.TestHarness.RocketConfig.fir@241252.4]
  wire  s2_entry_x; // @[PTW.scala 231:49:chipyard.TestHarness.RocketConfig.fir@241254.4]
  wire  s2_entry_u; // @[PTW.scala 231:49:chipyard.TestHarness.RocketConfig.fir@241256.4]
  wire  s2_entry_a; // @[PTW.scala 231:49:chipyard.TestHarness.RocketConfig.fir@241258.4]
  wire  s2_entry_d; // @[PTW.scala 231:49:chipyard.TestHarness.RocketConfig.fir@241260.4]
  wire [19:0] s2_entry_ppn; // @[PTW.scala 231:49:chipyard.TestHarness.RocketConfig.fir@241262.4]
  wire [16:0] s2_entry_tag; // @[PTW.scala 231:49:chipyard.TestHarness.RocketConfig.fir@241264.4]
  wire  _T_247; // @[PTW.scala 232:52:chipyard.TestHarness.RocketConfig.fir@241267.4]
  wire  s2_hit; // @[PTW.scala 232:43:chipyard.TestHarness.RocketConfig.fir@241268.4]
  wire  _T_253; // @[PTW.scala 245:56:chipyard.TestHarness.RocketConfig.fir@241281.4]
  wire  _T_256; // @[PTW.scala 247:48:chipyard.TestHarness.RocketConfig.fir@241285.4]
  wire  _T_258; // @[PTW.scala 254:37:chipyard.TestHarness.RocketConfig.fir@241294.4]
  wire [65:0] _T_266; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@241304.4]
  wire [66:0] _T_267; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@241305.4]
  wire [66:0] _T_269; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@241307.4]
  wire  _T_270; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@241308.4]
  wire [65:0] _T_271; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@241309.4]
  wire [66:0] _T_272; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@241310.4]
  wire [66:0] _T_274; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@241312.4]
  wire  _T_275; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@241313.4]
  wire  pmaPgLevelHomogeneous_1; // @[TLBPermissions.scala 98:65:chipyard.TestHarness.RocketConfig.fir@241315.4]
  wire [66:0] _T_280; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@241319.4]
  wire [65:0] _T_295; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@241334.4]
  wire [66:0] _T_296; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@241335.4]
  wire [66:0] _T_298; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@241337.4]
  wire  _T_299; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@241338.4]
  wire [65:0] _T_300; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@241339.4]
  wire [66:0] _T_301; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@241340.4]
  wire [66:0] _T_303; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@241342.4]
  wire  _T_304; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@241343.4]
  wire [65:0] _T_305; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@241344.4]
  wire [66:0] _T_306; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@241345.4]
  wire [66:0] _T_308; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@241347.4]
  wire  _T_309; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@241348.4]
  wire [65:0] _T_315; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@241354.4]
  wire [66:0] _T_316; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@241355.4]
  wire [66:0] _T_318; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@241357.4]
  wire  _T_319; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@241358.4]
  wire [65:0] _T_325; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@241364.4]
  wire [66:0] _T_326; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@241365.4]
  wire [66:0] _T_328; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@241367.4]
  wire  _T_329; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@241368.4]
  wire [66:0] _T_333; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@241372.4]
  wire  _T_334; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@241373.4]
  wire  _T_336; // @[TLBPermissions.scala 98:65:chipyard.TestHarness.RocketConfig.fir@241375.4]
  wire  _T_337; // @[TLBPermissions.scala 98:65:chipyard.TestHarness.RocketConfig.fir@241376.4]
  wire  _T_338; // @[TLBPermissions.scala 98:65:chipyard.TestHarness.RocketConfig.fir@241377.4]
  wire  _T_339; // @[TLBPermissions.scala 98:65:chipyard.TestHarness.RocketConfig.fir@241378.4]
  wire  _T_340; // @[TLBPermissions.scala 98:65:chipyard.TestHarness.RocketConfig.fir@241379.4]
  wire  _T_341; // @[TLBPermissions.scala 98:65:chipyard.TestHarness.RocketConfig.fir@241380.4]
  wire  pmaPgLevelHomogeneous_2; // @[TLBPermissions.scala 98:65:chipyard.TestHarness.RocketConfig.fir@241381.4]
  wire  _T_383; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241423.4]
  wire  _T_385; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241425.4]
  wire  pmaHomogeneous; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241427.4]
  wire [65:0] _T_388; // @[PTW.scala 268:92:chipyard.TestHarness.RocketConfig.fir@241429.4]
  wire  _T_395; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241444.4]
  wire  _T_397; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241446.4]
  wire  _T_399; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241448.4]
  wire [31:0] _T_400; // @[PMP.scala 62:36:chipyard.TestHarness.RocketConfig.fir@241449.4]
  wire [31:0] _T_401; // @[PMP.scala 62:29:chipyard.TestHarness.RocketConfig.fir@241450.4]
  wire [31:0] _T_402; // @[PMP.scala 62:48:chipyard.TestHarness.RocketConfig.fir@241451.4]
  wire [31:0] _T_403; // @[PMP.scala 62:27:chipyard.TestHarness.RocketConfig.fir@241452.4]
  wire [65:0] _GEN_135; // @[PMP.scala 100:53:chipyard.TestHarness.RocketConfig.fir@241453.4]
  wire [65:0] _T_404; // @[PMP.scala 100:53:chipyard.TestHarness.RocketConfig.fir@241453.4]
  wire  _T_406; // @[PMP.scala 100:78:chipyard.TestHarness.RocketConfig.fir@241455.4]
  wire  _T_413; // @[PMP.scala 100:78:chipyard.TestHarness.RocketConfig.fir@241462.4]
  wire  _T_420; // @[PMP.scala 100:78:chipyard.TestHarness.RocketConfig.fir@241469.4]
  wire  _T_422; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241471.4]
  wire  _T_424; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241473.4]
  wire  _T_426; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241475.4]
  wire  _T_427; // @[PMP.scala 100:21:chipyard.TestHarness.RocketConfig.fir@241476.4]
  wire  _T_429; // @[PMP.scala 120:45:chipyard.TestHarness.RocketConfig.fir@241478.4]
  wire  _T_440; // @[PMP.scala 109:32:chipyard.TestHarness.RocketConfig.fir@241489.4]
  wire  _T_441; // @[PMP.scala 109:28:chipyard.TestHarness.RocketConfig.fir@241490.4]
  wire [31:0] _T_443; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241492.4]
  wire [31:0] _T_445; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241494.4]
  wire [31:0] _T_447; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241496.4]
  wire [65:0] _GEN_139; // @[PMP.scala 112:30:chipyard.TestHarness.RocketConfig.fir@241497.4]
  wire [65:0] _T_448; // @[PMP.scala 112:30:chipyard.TestHarness.RocketConfig.fir@241497.4]
  wire [31:0] _T_460; // @[PMP.scala 113:53:chipyard.TestHarness.RocketConfig.fir@241509.4]
  wire [65:0] _GEN_141; // @[PMP.scala 113:40:chipyard.TestHarness.RocketConfig.fir@241510.4]
  wire  _T_461; // @[PMP.scala 113:40:chipyard.TestHarness.RocketConfig.fir@241510.4]
  wire  _T_464; // @[PMP.scala 115:41:chipyard.TestHarness.RocketConfig.fir@241513.4]
  wire  _T_465; // @[PMP.scala 120:58:chipyard.TestHarness.RocketConfig.fir@241514.4]
  wire  _T_466; // @[PMP.scala 120:8:chipyard.TestHarness.RocketConfig.fir@241515.4]
  wire  _T_473; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241522.4]
  wire  _T_475; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241524.4]
  wire  _T_477; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241526.4]
  wire [31:0] _T_478; // @[PMP.scala 62:36:chipyard.TestHarness.RocketConfig.fir@241527.4]
  wire [31:0] _T_479; // @[PMP.scala 62:29:chipyard.TestHarness.RocketConfig.fir@241528.4]
  wire [31:0] _T_480; // @[PMP.scala 62:48:chipyard.TestHarness.RocketConfig.fir@241529.4]
  wire [31:0] _T_481; // @[PMP.scala 62:27:chipyard.TestHarness.RocketConfig.fir@241530.4]
  wire [65:0] _GEN_142; // @[PMP.scala 100:53:chipyard.TestHarness.RocketConfig.fir@241531.4]
  wire [65:0] _T_482; // @[PMP.scala 100:53:chipyard.TestHarness.RocketConfig.fir@241531.4]
  wire  _T_484; // @[PMP.scala 100:78:chipyard.TestHarness.RocketConfig.fir@241533.4]
  wire  _T_491; // @[PMP.scala 100:78:chipyard.TestHarness.RocketConfig.fir@241540.4]
  wire  _T_498; // @[PMP.scala 100:78:chipyard.TestHarness.RocketConfig.fir@241547.4]
  wire  _T_500; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241549.4]
  wire  _T_502; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241551.4]
  wire  _T_504; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241553.4]
  wire  _T_505; // @[PMP.scala 100:21:chipyard.TestHarness.RocketConfig.fir@241554.4]
  wire  _T_507; // @[PMP.scala 120:45:chipyard.TestHarness.RocketConfig.fir@241556.4]
  wire  _T_518; // @[PMP.scala 109:32:chipyard.TestHarness.RocketConfig.fir@241567.4]
  wire  _T_519; // @[PMP.scala 109:28:chipyard.TestHarness.RocketConfig.fir@241568.4]
  wire [31:0] _T_538; // @[PMP.scala 113:53:chipyard.TestHarness.RocketConfig.fir@241587.4]
  wire [65:0] _GEN_150; // @[PMP.scala 113:40:chipyard.TestHarness.RocketConfig.fir@241588.4]
  wire  _T_539; // @[PMP.scala 113:40:chipyard.TestHarness.RocketConfig.fir@241588.4]
  wire  _T_540; // @[PMP.scala 115:21:chipyard.TestHarness.RocketConfig.fir@241589.4]
  wire  _T_541; // @[PMP.scala 115:62:chipyard.TestHarness.RocketConfig.fir@241590.4]
  wire  _T_542; // @[PMP.scala 115:41:chipyard.TestHarness.RocketConfig.fir@241591.4]
  wire  _T_543; // @[PMP.scala 120:58:chipyard.TestHarness.RocketConfig.fir@241592.4]
  wire  _T_544; // @[PMP.scala 120:8:chipyard.TestHarness.RocketConfig.fir@241593.4]
  wire  _T_545; // @[PMP.scala 140:10:chipyard.TestHarness.RocketConfig.fir@241594.4]
  wire  _T_551; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241600.4]
  wire  _T_553; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241602.4]
  wire  _T_555; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241604.4]
  wire [31:0] _T_556; // @[PMP.scala 62:36:chipyard.TestHarness.RocketConfig.fir@241605.4]
  wire [31:0] _T_557; // @[PMP.scala 62:29:chipyard.TestHarness.RocketConfig.fir@241606.4]
  wire [31:0] _T_558; // @[PMP.scala 62:48:chipyard.TestHarness.RocketConfig.fir@241607.4]
  wire [31:0] _T_559; // @[PMP.scala 62:27:chipyard.TestHarness.RocketConfig.fir@241608.4]
  wire [65:0] _GEN_151; // @[PMP.scala 100:53:chipyard.TestHarness.RocketConfig.fir@241609.4]
  wire [65:0] _T_560; // @[PMP.scala 100:53:chipyard.TestHarness.RocketConfig.fir@241609.4]
  wire  _T_562; // @[PMP.scala 100:78:chipyard.TestHarness.RocketConfig.fir@241611.4]
  wire  _T_569; // @[PMP.scala 100:78:chipyard.TestHarness.RocketConfig.fir@241618.4]
  wire  _T_576; // @[PMP.scala 100:78:chipyard.TestHarness.RocketConfig.fir@241625.4]
  wire  _T_578; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241627.4]
  wire  _T_580; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241629.4]
  wire  _T_582; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241631.4]
  wire  _T_583; // @[PMP.scala 100:21:chipyard.TestHarness.RocketConfig.fir@241632.4]
  wire  _T_585; // @[PMP.scala 120:45:chipyard.TestHarness.RocketConfig.fir@241634.4]
  wire  _T_596; // @[PMP.scala 109:32:chipyard.TestHarness.RocketConfig.fir@241645.4]
  wire  _T_597; // @[PMP.scala 109:28:chipyard.TestHarness.RocketConfig.fir@241646.4]
  wire [31:0] _T_616; // @[PMP.scala 113:53:chipyard.TestHarness.RocketConfig.fir@241665.4]
  wire [65:0] _GEN_159; // @[PMP.scala 113:40:chipyard.TestHarness.RocketConfig.fir@241666.4]
  wire  _T_617; // @[PMP.scala 113:40:chipyard.TestHarness.RocketConfig.fir@241666.4]
  wire  _T_618; // @[PMP.scala 115:21:chipyard.TestHarness.RocketConfig.fir@241667.4]
  wire  _T_619; // @[PMP.scala 115:62:chipyard.TestHarness.RocketConfig.fir@241668.4]
  wire  _T_620; // @[PMP.scala 115:41:chipyard.TestHarness.RocketConfig.fir@241669.4]
  wire  _T_621; // @[PMP.scala 120:58:chipyard.TestHarness.RocketConfig.fir@241670.4]
  wire  _T_622; // @[PMP.scala 120:8:chipyard.TestHarness.RocketConfig.fir@241671.4]
  wire  _T_623; // @[PMP.scala 140:10:chipyard.TestHarness.RocketConfig.fir@241672.4]
  wire  _T_629; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241678.4]
  wire  _T_631; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241680.4]
  wire  _T_633; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241682.4]
  wire [31:0] _T_634; // @[PMP.scala 62:36:chipyard.TestHarness.RocketConfig.fir@241683.4]
  wire [31:0] _T_635; // @[PMP.scala 62:29:chipyard.TestHarness.RocketConfig.fir@241684.4]
  wire [31:0] _T_636; // @[PMP.scala 62:48:chipyard.TestHarness.RocketConfig.fir@241685.4]
  wire [31:0] _T_637; // @[PMP.scala 62:27:chipyard.TestHarness.RocketConfig.fir@241686.4]
  wire [65:0] _GEN_160; // @[PMP.scala 100:53:chipyard.TestHarness.RocketConfig.fir@241687.4]
  wire [65:0] _T_638; // @[PMP.scala 100:53:chipyard.TestHarness.RocketConfig.fir@241687.4]
  wire  _T_640; // @[PMP.scala 100:78:chipyard.TestHarness.RocketConfig.fir@241689.4]
  wire  _T_647; // @[PMP.scala 100:78:chipyard.TestHarness.RocketConfig.fir@241696.4]
  wire  _T_654; // @[PMP.scala 100:78:chipyard.TestHarness.RocketConfig.fir@241703.4]
  wire  _T_656; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241705.4]
  wire  _T_658; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241707.4]
  wire  _T_660; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241709.4]
  wire  _T_661; // @[PMP.scala 100:21:chipyard.TestHarness.RocketConfig.fir@241710.4]
  wire  _T_663; // @[PMP.scala 120:45:chipyard.TestHarness.RocketConfig.fir@241712.4]
  wire  _T_674; // @[PMP.scala 109:32:chipyard.TestHarness.RocketConfig.fir@241723.4]
  wire  _T_675; // @[PMP.scala 109:28:chipyard.TestHarness.RocketConfig.fir@241724.4]
  wire [31:0] _T_694; // @[PMP.scala 113:53:chipyard.TestHarness.RocketConfig.fir@241743.4]
  wire [65:0] _GEN_168; // @[PMP.scala 113:40:chipyard.TestHarness.RocketConfig.fir@241744.4]
  wire  _T_695; // @[PMP.scala 113:40:chipyard.TestHarness.RocketConfig.fir@241744.4]
  wire  _T_696; // @[PMP.scala 115:21:chipyard.TestHarness.RocketConfig.fir@241745.4]
  wire  _T_697; // @[PMP.scala 115:62:chipyard.TestHarness.RocketConfig.fir@241746.4]
  wire  _T_698; // @[PMP.scala 115:41:chipyard.TestHarness.RocketConfig.fir@241747.4]
  wire  _T_699; // @[PMP.scala 120:58:chipyard.TestHarness.RocketConfig.fir@241748.4]
  wire  _T_700; // @[PMP.scala 120:8:chipyard.TestHarness.RocketConfig.fir@241749.4]
  wire  _T_701; // @[PMP.scala 140:10:chipyard.TestHarness.RocketConfig.fir@241750.4]
  wire  _T_707; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241756.4]
  wire  _T_709; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241758.4]
  wire  _T_711; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241760.4]
  wire [31:0] _T_712; // @[PMP.scala 62:36:chipyard.TestHarness.RocketConfig.fir@241761.4]
  wire [31:0] _T_713; // @[PMP.scala 62:29:chipyard.TestHarness.RocketConfig.fir@241762.4]
  wire [31:0] _T_714; // @[PMP.scala 62:48:chipyard.TestHarness.RocketConfig.fir@241763.4]
  wire [31:0] _T_715; // @[PMP.scala 62:27:chipyard.TestHarness.RocketConfig.fir@241764.4]
  wire [65:0] _GEN_169; // @[PMP.scala 100:53:chipyard.TestHarness.RocketConfig.fir@241765.4]
  wire [65:0] _T_716; // @[PMP.scala 100:53:chipyard.TestHarness.RocketConfig.fir@241765.4]
  wire  _T_718; // @[PMP.scala 100:78:chipyard.TestHarness.RocketConfig.fir@241767.4]
  wire  _T_725; // @[PMP.scala 100:78:chipyard.TestHarness.RocketConfig.fir@241774.4]
  wire  _T_732; // @[PMP.scala 100:78:chipyard.TestHarness.RocketConfig.fir@241781.4]
  wire  _T_734; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241783.4]
  wire  _T_736; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241785.4]
  wire  _T_738; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241787.4]
  wire  _T_739; // @[PMP.scala 100:21:chipyard.TestHarness.RocketConfig.fir@241788.4]
  wire  _T_741; // @[PMP.scala 120:45:chipyard.TestHarness.RocketConfig.fir@241790.4]
  wire  _T_752; // @[PMP.scala 109:32:chipyard.TestHarness.RocketConfig.fir@241801.4]
  wire  _T_753; // @[PMP.scala 109:28:chipyard.TestHarness.RocketConfig.fir@241802.4]
  wire [31:0] _T_772; // @[PMP.scala 113:53:chipyard.TestHarness.RocketConfig.fir@241821.4]
  wire [65:0] _GEN_177; // @[PMP.scala 113:40:chipyard.TestHarness.RocketConfig.fir@241822.4]
  wire  _T_773; // @[PMP.scala 113:40:chipyard.TestHarness.RocketConfig.fir@241822.4]
  wire  _T_774; // @[PMP.scala 115:21:chipyard.TestHarness.RocketConfig.fir@241823.4]
  wire  _T_775; // @[PMP.scala 115:62:chipyard.TestHarness.RocketConfig.fir@241824.4]
  wire  _T_776; // @[PMP.scala 115:41:chipyard.TestHarness.RocketConfig.fir@241825.4]
  wire  _T_777; // @[PMP.scala 120:58:chipyard.TestHarness.RocketConfig.fir@241826.4]
  wire  _T_778; // @[PMP.scala 120:8:chipyard.TestHarness.RocketConfig.fir@241827.4]
  wire  _T_779; // @[PMP.scala 140:10:chipyard.TestHarness.RocketConfig.fir@241828.4]
  wire  _T_785; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241834.4]
  wire  _T_787; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241836.4]
  wire  _T_789; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241838.4]
  wire [31:0] _T_790; // @[PMP.scala 62:36:chipyard.TestHarness.RocketConfig.fir@241839.4]
  wire [31:0] _T_791; // @[PMP.scala 62:29:chipyard.TestHarness.RocketConfig.fir@241840.4]
  wire [31:0] _T_792; // @[PMP.scala 62:48:chipyard.TestHarness.RocketConfig.fir@241841.4]
  wire [31:0] _T_793; // @[PMP.scala 62:27:chipyard.TestHarness.RocketConfig.fir@241842.4]
  wire [65:0] _GEN_178; // @[PMP.scala 100:53:chipyard.TestHarness.RocketConfig.fir@241843.4]
  wire [65:0] _T_794; // @[PMP.scala 100:53:chipyard.TestHarness.RocketConfig.fir@241843.4]
  wire  _T_796; // @[PMP.scala 100:78:chipyard.TestHarness.RocketConfig.fir@241845.4]
  wire  _T_803; // @[PMP.scala 100:78:chipyard.TestHarness.RocketConfig.fir@241852.4]
  wire  _T_810; // @[PMP.scala 100:78:chipyard.TestHarness.RocketConfig.fir@241859.4]
  wire  _T_812; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241861.4]
  wire  _T_814; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241863.4]
  wire  _T_816; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241865.4]
  wire  _T_817; // @[PMP.scala 100:21:chipyard.TestHarness.RocketConfig.fir@241866.4]
  wire  _T_819; // @[PMP.scala 120:45:chipyard.TestHarness.RocketConfig.fir@241868.4]
  wire  _T_830; // @[PMP.scala 109:32:chipyard.TestHarness.RocketConfig.fir@241879.4]
  wire  _T_831; // @[PMP.scala 109:28:chipyard.TestHarness.RocketConfig.fir@241880.4]
  wire [31:0] _T_850; // @[PMP.scala 113:53:chipyard.TestHarness.RocketConfig.fir@241899.4]
  wire [65:0] _GEN_186; // @[PMP.scala 113:40:chipyard.TestHarness.RocketConfig.fir@241900.4]
  wire  _T_851; // @[PMP.scala 113:40:chipyard.TestHarness.RocketConfig.fir@241900.4]
  wire  _T_852; // @[PMP.scala 115:21:chipyard.TestHarness.RocketConfig.fir@241901.4]
  wire  _T_853; // @[PMP.scala 115:62:chipyard.TestHarness.RocketConfig.fir@241902.4]
  wire  _T_854; // @[PMP.scala 115:41:chipyard.TestHarness.RocketConfig.fir@241903.4]
  wire  _T_855; // @[PMP.scala 120:58:chipyard.TestHarness.RocketConfig.fir@241904.4]
  wire  _T_856; // @[PMP.scala 120:8:chipyard.TestHarness.RocketConfig.fir@241905.4]
  wire  _T_857; // @[PMP.scala 140:10:chipyard.TestHarness.RocketConfig.fir@241906.4]
  wire  _T_863; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241912.4]
  wire  _T_865; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241914.4]
  wire  _T_867; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241916.4]
  wire [31:0] _T_868; // @[PMP.scala 62:36:chipyard.TestHarness.RocketConfig.fir@241917.4]
  wire [31:0] _T_869; // @[PMP.scala 62:29:chipyard.TestHarness.RocketConfig.fir@241918.4]
  wire [31:0] _T_870; // @[PMP.scala 62:48:chipyard.TestHarness.RocketConfig.fir@241919.4]
  wire [31:0] _T_871; // @[PMP.scala 62:27:chipyard.TestHarness.RocketConfig.fir@241920.4]
  wire [65:0] _GEN_187; // @[PMP.scala 100:53:chipyard.TestHarness.RocketConfig.fir@241921.4]
  wire [65:0] _T_872; // @[PMP.scala 100:53:chipyard.TestHarness.RocketConfig.fir@241921.4]
  wire  _T_874; // @[PMP.scala 100:78:chipyard.TestHarness.RocketConfig.fir@241923.4]
  wire  _T_881; // @[PMP.scala 100:78:chipyard.TestHarness.RocketConfig.fir@241930.4]
  wire  _T_888; // @[PMP.scala 100:78:chipyard.TestHarness.RocketConfig.fir@241937.4]
  wire  _T_890; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241939.4]
  wire  _T_892; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241941.4]
  wire  _T_894; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241943.4]
  wire  _T_895; // @[PMP.scala 100:21:chipyard.TestHarness.RocketConfig.fir@241944.4]
  wire  _T_897; // @[PMP.scala 120:45:chipyard.TestHarness.RocketConfig.fir@241946.4]
  wire  _T_908; // @[PMP.scala 109:32:chipyard.TestHarness.RocketConfig.fir@241957.4]
  wire  _T_909; // @[PMP.scala 109:28:chipyard.TestHarness.RocketConfig.fir@241958.4]
  wire [31:0] _T_928; // @[PMP.scala 113:53:chipyard.TestHarness.RocketConfig.fir@241977.4]
  wire [65:0] _GEN_195; // @[PMP.scala 113:40:chipyard.TestHarness.RocketConfig.fir@241978.4]
  wire  _T_929; // @[PMP.scala 113:40:chipyard.TestHarness.RocketConfig.fir@241978.4]
  wire  _T_930; // @[PMP.scala 115:21:chipyard.TestHarness.RocketConfig.fir@241979.4]
  wire  _T_931; // @[PMP.scala 115:62:chipyard.TestHarness.RocketConfig.fir@241980.4]
  wire  _T_932; // @[PMP.scala 115:41:chipyard.TestHarness.RocketConfig.fir@241981.4]
  wire  _T_933; // @[PMP.scala 120:58:chipyard.TestHarness.RocketConfig.fir@241982.4]
  wire  _T_934; // @[PMP.scala 120:8:chipyard.TestHarness.RocketConfig.fir@241983.4]
  wire  _T_935; // @[PMP.scala 140:10:chipyard.TestHarness.RocketConfig.fir@241984.4]
  wire  _T_941; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241990.4]
  wire  _T_943; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241992.4]
  wire  _T_945; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241994.4]
  wire [31:0] _T_946; // @[PMP.scala 62:36:chipyard.TestHarness.RocketConfig.fir@241995.4]
  wire [31:0] _T_947; // @[PMP.scala 62:29:chipyard.TestHarness.RocketConfig.fir@241996.4]
  wire [31:0] _T_948; // @[PMP.scala 62:48:chipyard.TestHarness.RocketConfig.fir@241997.4]
  wire [31:0] _T_949; // @[PMP.scala 62:27:chipyard.TestHarness.RocketConfig.fir@241998.4]
  wire [65:0] _GEN_196; // @[PMP.scala 100:53:chipyard.TestHarness.RocketConfig.fir@241999.4]
  wire [65:0] _T_950; // @[PMP.scala 100:53:chipyard.TestHarness.RocketConfig.fir@241999.4]
  wire  _T_952; // @[PMP.scala 100:78:chipyard.TestHarness.RocketConfig.fir@242001.4]
  wire  _T_959; // @[PMP.scala 100:78:chipyard.TestHarness.RocketConfig.fir@242008.4]
  wire  _T_966; // @[PMP.scala 100:78:chipyard.TestHarness.RocketConfig.fir@242015.4]
  wire  _T_968; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@242017.4]
  wire  _T_970; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@242019.4]
  wire  _T_972; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@242021.4]
  wire  _T_973; // @[PMP.scala 100:21:chipyard.TestHarness.RocketConfig.fir@242022.4]
  wire  _T_975; // @[PMP.scala 120:45:chipyard.TestHarness.RocketConfig.fir@242024.4]
  wire  _T_986; // @[PMP.scala 109:32:chipyard.TestHarness.RocketConfig.fir@242035.4]
  wire  _T_987; // @[PMP.scala 109:28:chipyard.TestHarness.RocketConfig.fir@242036.4]
  wire [31:0] _T_1006; // @[PMP.scala 113:53:chipyard.TestHarness.RocketConfig.fir@242055.4]
  wire [65:0] _GEN_204; // @[PMP.scala 113:40:chipyard.TestHarness.RocketConfig.fir@242056.4]
  wire  _T_1007; // @[PMP.scala 113:40:chipyard.TestHarness.RocketConfig.fir@242056.4]
  wire  _T_1008; // @[PMP.scala 115:21:chipyard.TestHarness.RocketConfig.fir@242057.4]
  wire  _T_1009; // @[PMP.scala 115:62:chipyard.TestHarness.RocketConfig.fir@242058.4]
  wire  _T_1010; // @[PMP.scala 115:41:chipyard.TestHarness.RocketConfig.fir@242059.4]
  wire  _T_1011; // @[PMP.scala 120:58:chipyard.TestHarness.RocketConfig.fir@242060.4]
  wire  _T_1012; // @[PMP.scala 120:8:chipyard.TestHarness.RocketConfig.fir@242061.4]
  wire  pmpHomogeneous; // @[PMP.scala 140:10:chipyard.TestHarness.RocketConfig.fir@242062.4]
  wire  homogeneous; // @[PTW.scala 269:36:chipyard.TestHarness.RocketConfig.fir@242063.4]
  wire  _T_1017; // @[Conditional.scala 37:30:chipyard.TestHarness.RocketConfig.fir@242097.4]
  wire [2:0] _T_1019; // @[PTW.scala 291:26:chipyard.TestHarness.RocketConfig.fir@242101.8]
  wire [2:0] _GEN_56; // @[PTW.scala 290:32:chipyard.TestHarness.RocketConfig.fir@242100.6]
  wire  _T_1022; // @[Conditional.scala 37:30:chipyard.TestHarness.RocketConfig.fir@242109.6]
  wire [1:0] _T_1024; // @[PTW.scala 297:24:chipyard.TestHarness.RocketConfig.fir@242113.10]
  wire [2:0] _T_1025; // @[PTW.scala 299:26:chipyard.TestHarness.RocketConfig.fir@242117.10]
  wire [2:0] _GEN_58; // @[PTW.scala 296:28:chipyard.TestHarness.RocketConfig.fir@242111.8]
  wire  _T_1026; // @[Conditional.scala 37:30:chipyard.TestHarness.RocketConfig.fir@242122.8]
  wire [2:0] _T_1027; // @[PTW.scala 304:24:chipyard.TestHarness.RocketConfig.fir@242124.10]
  wire  _T_1028; // @[Conditional.scala 37:30:chipyard.TestHarness.RocketConfig.fir@242128.10]
  wire  _GEN_59; // @[PTW.scala 311:32:chipyard.TestHarness.RocketConfig.fir@242136.14]
  wire [2:0] _GEN_62; // @[PTW.scala 308:35:chipyard.TestHarness.RocketConfig.fir@242131.12]
  wire  _GEN_63; // @[PTW.scala 308:35:chipyard.TestHarness.RocketConfig.fir@242131.12]
  wire  _GEN_64; // @[PTW.scala 308:35:chipyard.TestHarness.RocketConfig.fir@242131.12]
  wire  _T_1031; // @[Conditional.scala 37:30:chipyard.TestHarness.RocketConfig.fir@242140.12]
  wire  _T_1034; // @[PTW.scala 318:13:chipyard.TestHarness.RocketConfig.fir@242147.14]
  wire [2:0] _GEN_69; // @[Conditional.scala 39:67:chipyard.TestHarness.RocketConfig.fir@242141.12]
  wire  _GEN_70; // @[Conditional.scala 39:67:chipyard.TestHarness.RocketConfig.fir@242141.12]
  wire  _GEN_71; // @[Conditional.scala 39:67:chipyard.TestHarness.RocketConfig.fir@242141.12]
  wire [2:0] _GEN_75; // @[Conditional.scala 39:67:chipyard.TestHarness.RocketConfig.fir@242129.10]
  wire  _GEN_76; // @[Conditional.scala 39:67:chipyard.TestHarness.RocketConfig.fir@242129.10]
  wire  _GEN_77; // @[Conditional.scala 39:67:chipyard.TestHarness.RocketConfig.fir@242129.10]
  wire  _GEN_78; // @[Conditional.scala 39:67:chipyard.TestHarness.RocketConfig.fir@242129.10]
  wire [2:0] _GEN_81; // @[Conditional.scala 39:67:chipyard.TestHarness.RocketConfig.fir@242123.8]
  wire  _GEN_83; // @[Conditional.scala 39:67:chipyard.TestHarness.RocketConfig.fir@242123.8]
  wire  _GEN_84; // @[Conditional.scala 39:67:chipyard.TestHarness.RocketConfig.fir@242123.8]
  wire [2:0] _GEN_88; // @[Conditional.scala 39:67:chipyard.TestHarness.RocketConfig.fir@242110.6]
  wire  _GEN_90; // @[Conditional.scala 39:67:chipyard.TestHarness.RocketConfig.fir@242110.6]
  wire  _GEN_91; // @[Conditional.scala 39:67:chipyard.TestHarness.RocketConfig.fir@242110.6]
  wire [2:0] _GEN_93; // @[Conditional.scala 40:58:chipyard.TestHarness.RocketConfig.fir@242098.4]
  wire  _GEN_96; // @[Conditional.scala 40:58:chipyard.TestHarness.RocketConfig.fir@242098.4]
  wire  _GEN_97; // @[Conditional.scala 40:58:chipyard.TestHarness.RocketConfig.fir@242098.4]
  wire  _T_1035; // @[PTW.scala 332:19:chipyard.TestHarness.RocketConfig.fir@242153.4]
  wire  _T_1036; // @[PTW.scala 332:16:chipyard.TestHarness.RocketConfig.fir@242154.4]
  wire  _T_1037; // @[PTW.scala 333:15:chipyard.TestHarness.RocketConfig.fir@242155.4]
  wire  _T_1039; // @[PTW.scala 333:40:chipyard.TestHarness.RocketConfig.fir@242157.4]
  wire  _T_1041; // @[PTW.scala 334:25:chipyard.TestHarness.RocketConfig.fir@242163.4]
  wire [53:0] pte_2_ppn; // @[:chipyard.TestHarness.RocketConfig.fir@242169.4 :chipyard.TestHarness.RocketConfig.fir@242171.4 PTW.scala 327:13:chipyard.TestHarness.RocketConfig.fir@242172.4]
  wire [53:0] _T_1043_ppn; // @[PTW.scala 335:8:chipyard.TestHarness.RocketConfig.fir@242173.4]
  wire [53:0] pte_1_ppn; // @[:chipyard.TestHarness.RocketConfig.fir@242164.4 :chipyard.TestHarness.RocketConfig.fir@242166.4 PTW.scala 327:13:chipyard.TestHarness.RocketConfig.fir@242167.4]
  wire [53:0] _T_1044_ppn; // @[PTW.scala 334:8:chipyard.TestHarness.RocketConfig.fir@242174.4]
  wire  _T_1044_d; // @[PTW.scala 334:8:chipyard.TestHarness.RocketConfig.fir@242174.4]
  wire  _T_1044_a; // @[PTW.scala 334:8:chipyard.TestHarness.RocketConfig.fir@242174.4]
  wire  _T_1044_g; // @[PTW.scala 334:8:chipyard.TestHarness.RocketConfig.fir@242174.4]
  wire  _T_1044_u; // @[PTW.scala 334:8:chipyard.TestHarness.RocketConfig.fir@242174.4]
  wire  _T_1044_x; // @[PTW.scala 334:8:chipyard.TestHarness.RocketConfig.fir@242174.4]
  wire  _T_1044_w; // @[PTW.scala 334:8:chipyard.TestHarness.RocketConfig.fir@242174.4]
  wire  _T_1044_r; // @[PTW.scala 334:8:chipyard.TestHarness.RocketConfig.fir@242174.4]
  wire  _T_1044_v; // @[PTW.scala 334:8:chipyard.TestHarness.RocketConfig.fir@242174.4]
  wire [53:0] _T_1045_ppn; // @[PTW.scala 333:8:chipyard.TestHarness.RocketConfig.fir@242175.4]
  wire  _T_1045_d; // @[PTW.scala 333:8:chipyard.TestHarness.RocketConfig.fir@242175.4]
  wire  _T_1045_a; // @[PTW.scala 333:8:chipyard.TestHarness.RocketConfig.fir@242175.4]
  wire  _T_1045_g; // @[PTW.scala 333:8:chipyard.TestHarness.RocketConfig.fir@242175.4]
  wire  _T_1045_u; // @[PTW.scala 333:8:chipyard.TestHarness.RocketConfig.fir@242175.4]
  wire  _T_1045_x; // @[PTW.scala 333:8:chipyard.TestHarness.RocketConfig.fir@242175.4]
  wire  _T_1045_w; // @[PTW.scala 333:8:chipyard.TestHarness.RocketConfig.fir@242175.4]
  wire  _T_1045_r; // @[PTW.scala 333:8:chipyard.TestHarness.RocketConfig.fir@242175.4]
  wire  _T_1045_v; // @[PTW.scala 333:8:chipyard.TestHarness.RocketConfig.fir@242175.4]
  wire [53:0] s2_pte_ppn; // @[PTW.scala 234:22:chipyard.TestHarness.RocketConfig.fir@241274.4 PTW.scala 235:12:chipyard.TestHarness.RocketConfig.fir@241276.4]
  wire [53:0] _T_1046_ppn; // @[PTW.scala 332:8:chipyard.TestHarness.RocketConfig.fir@242176.4]
  wire  _T_1046_d; // @[PTW.scala 332:8:chipyard.TestHarness.RocketConfig.fir@242176.4]
  wire  _T_1046_a; // @[PTW.scala 332:8:chipyard.TestHarness.RocketConfig.fir@242176.4]
  wire  _T_1046_g; // @[PTW.scala 332:8:chipyard.TestHarness.RocketConfig.fir@242176.4]
  wire  _T_1046_u; // @[PTW.scala 332:8:chipyard.TestHarness.RocketConfig.fir@242176.4]
  wire  _T_1046_x; // @[PTW.scala 332:8:chipyard.TestHarness.RocketConfig.fir@242176.4]
  wire  _T_1046_w; // @[PTW.scala 332:8:chipyard.TestHarness.RocketConfig.fir@242176.4]
  wire  _T_1046_r; // @[PTW.scala 332:8:chipyard.TestHarness.RocketConfig.fir@242176.4]
  wire  _T_1046_v; // @[PTW.scala 332:8:chipyard.TestHarness.RocketConfig.fir@242176.4]
  wire  _T_1051; // @[PTW.scala 339:37:chipyard.TestHarness.RocketConfig.fir@242188.6]
  wire  _T_1052; // @[PTW.scala 339:28:chipyard.TestHarness.RocketConfig.fir@242189.6]
  wire  _T_1054; // @[PTW.scala 339:11:chipyard.TestHarness.RocketConfig.fir@242191.6]
  wire  _T_1055; // @[PTW.scala 339:11:chipyard.TestHarness.RocketConfig.fir@242192.6]
  wire  _GEN_99; // @[PTW.scala 341:28:chipyard.TestHarness.RocketConfig.fir@242200.6]
  wire  _GEN_100; // @[PTW.scala 341:28:chipyard.TestHarness.RocketConfig.fir@242200.6]
  wire [2:0] _GEN_101; // @[PTW.scala 338:30:chipyard.TestHarness.RocketConfig.fir@242186.4]
  wire  _GEN_102; // @[PTW.scala 338:30:chipyard.TestHarness.RocketConfig.fir@242186.4]
  wire  _GEN_103; // @[PTW.scala 338:30:chipyard.TestHarness.RocketConfig.fir@242186.4]
  wire  _T_1058; // @[PTW.scala 346:18:chipyard.TestHarness.RocketConfig.fir@242205.6]
  wire  _T_1060; // @[PTW.scala 346:11:chipyard.TestHarness.RocketConfig.fir@242207.6]
  wire  _T_1061; // @[PTW.scala 346:11:chipyard.TestHarness.RocketConfig.fir@242208.6]
  wire  _T_1065; // @[PTW.scala 351:26:chipyard.TestHarness.RocketConfig.fir@242221.8]
  wire  _T_1067; // @[PTW.scala 351:44:chipyard.TestHarness.RocketConfig.fir@242223.8]
  wire  ae; // @[PTW.scala 352:22:chipyard.TestHarness.RocketConfig.fir@242225.8]
  wire  _GEN_106; // @[PTW.scala 358:32:chipyard.TestHarness.RocketConfig.fir@242238.10]
  wire  _GEN_107; // @[PTW.scala 358:32:chipyard.TestHarness.RocketConfig.fir@242238.10]
  wire [2:0] _GEN_111; // @[PTW.scala 347:21:chipyard.TestHarness.RocketConfig.fir@242213.6]
  wire  _GEN_113; // @[PTW.scala 347:21:chipyard.TestHarness.RocketConfig.fir@242213.6]
  wire [2:0] _GEN_117; // @[PTW.scala 345:25:chipyard.TestHarness.RocketConfig.fir@242204.4]
  wire  _T_1074; // @[PTW.scala 363:18:chipyard.TestHarness.RocketConfig.fir@242243.6]
  wire  _T_1076; // @[PTW.scala 363:11:chipyard.TestHarness.RocketConfig.fir@242245.6]
  wire  _T_1077; // @[PTW.scala 363:11:chipyard.TestHarness.RocketConfig.fir@242246.6]
  Arbiter arb ( // @[PTW.scala 105:19:chipyard.TestHarness.RocketConfig.fir@240875.4]
    .io_in_0_ready(arb_io_in_0_ready),
    .io_in_0_valid(arb_io_in_0_valid),
    .io_in_0_bits_bits_addr(arb_io_in_0_bits_bits_addr),
    .io_in_1_ready(arb_io_in_1_ready),
    .io_in_1_valid(arb_io_in_1_valid),
    .io_in_1_bits_valid(arb_io_in_1_bits_valid),
    .io_in_1_bits_bits_addr(arb_io_in_1_bits_bits_addr),
    .io_out_ready(arb_io_out_ready),
    .io_out_valid(arb_io_out_valid),
    .io_out_bits_valid(arb_io_out_bits_valid),
    .io_out_bits_bits_addr(arb_io_out_bits_bits_addr),
    .io_chosen(arb_io_chosen)
  );
  l2_tlb_ram l2_tlb_ram ( // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@241160.4]
    .RW0_addr(l2_tlb_ram_RW0_addr),
    .RW0_en(l2_tlb_ram_RW0_en),
    .RW0_clk(l2_tlb_ram_RW0_clk),
    .RW0_wmode(l2_tlb_ram_RW0_wmode),
    .RW0_wdata(l2_tlb_ram_RW0_wdata),
    .RW0_rdata(l2_tlb_ram_RW0_rdata)
  );
  package_Anon_117 package_Anon ( // @[package.scala 213:21:chipyard.TestHarness.RocketConfig.fir@242091.4]
    .io_x(package_Anon_io_x),
    .io_y(package_Anon_io_y)
  );
  package_Anon_118 package_Anon_1 ( // @[package.scala 213:21:chipyard.TestHarness.RocketConfig.fir@242178.4]
    .io_x_ppn(package_Anon_1_io_x_ppn),
    .io_x_d(package_Anon_1_io_x_d),
    .io_x_a(package_Anon_1_io_x_a),
    .io_x_g(package_Anon_1_io_x_g),
    .io_x_u(package_Anon_1_io_x_u),
    .io_x_x(package_Anon_1_io_x_x),
    .io_x_w(package_Anon_1_io_x_w),
    .io_x_r(package_Anon_1_io_x_r),
    .io_x_v(package_Anon_1_io_x_v),
    .io_y_ppn(package_Anon_1_io_y_ppn),
    .io_y_d(package_Anon_1_io_y_d),
    .io_y_a(package_Anon_1_io_y_a),
    .io_y_g(package_Anon_1_io_y_g),
    .io_y_u(package_Anon_1_io_y_u),
    .io_y_x(package_Anon_1_io_y_x),
    .io_y_w(package_Anon_1_io_y_w),
    .io_y_r(package_Anon_1_io_y_r),
    .io_y_v(package_Anon_1_io_y_v)
  );
  assign _T_2 = state != 3'h0; // @[PTW.scala 111:24:chipyard.TestHarness.RocketConfig.fir@240889.4]
  assign tmp_v = mem_resp_data[0]; // @[PTW.scala 139:33:chipyard.TestHarness.RocketConfig.fir@240914.4]
  assign tmp_r = mem_resp_data[1]; // @[PTW.scala 139:33:chipyard.TestHarness.RocketConfig.fir@240916.4]
  assign tmp_w = mem_resp_data[2]; // @[PTW.scala 139:33:chipyard.TestHarness.RocketConfig.fir@240918.4]
  assign tmp_x = mem_resp_data[3]; // @[PTW.scala 139:33:chipyard.TestHarness.RocketConfig.fir@240920.4]
  assign tmp_u = mem_resp_data[4]; // @[PTW.scala 139:33:chipyard.TestHarness.RocketConfig.fir@240922.4]
  assign tmp_g = mem_resp_data[5]; // @[PTW.scala 139:33:chipyard.TestHarness.RocketConfig.fir@240924.4]
  assign tmp_a = mem_resp_data[6]; // @[PTW.scala 139:33:chipyard.TestHarness.RocketConfig.fir@240926.4]
  assign tmp_d = mem_resp_data[7]; // @[PTW.scala 139:33:chipyard.TestHarness.RocketConfig.fir@240928.4]
  assign tmp_ppn = mem_resp_data[63:10]; // @[PTW.scala 139:33:chipyard.TestHarness.RocketConfig.fir@240932.4]
  assign _T_19 = tmp_r | tmp_w; // @[PTW.scala 142:17:chipyard.TestHarness.RocketConfig.fir@240939.4]
  assign _T_20 = _T_19 | tmp_x; // @[PTW.scala 142:26:chipyard.TestHarness.RocketConfig.fir@240940.4]
  assign _T_21 = count <= 2'h0; // @[PTW.scala 145:21:chipyard.TestHarness.RocketConfig.fir@240942.6]
  assign _T_23 = tmp_ppn[17:9] != 9'h0; // @[PTW.scala 145:95:chipyard.TestHarness.RocketConfig.fir@240944.6]
  assign _T_24 = _T_21 & _T_23; // @[PTW.scala 145:26:chipyard.TestHarness.RocketConfig.fir@240945.6]
  assign _GEN_0 = _T_24 ? 1'h0 : tmp_v; // @[PTW.scala 145:102:chipyard.TestHarness.RocketConfig.fir@240946.6]
  assign _T_25 = count <= 2'h1; // @[PTW.scala 145:21:chipyard.TestHarness.RocketConfig.fir@240949.6]
  assign _T_27 = tmp_ppn[8:0] != 9'h0; // @[PTW.scala 145:95:chipyard.TestHarness.RocketConfig.fir@240951.6]
  assign _T_28 = _T_25 & _T_27; // @[PTW.scala 145:26:chipyard.TestHarness.RocketConfig.fir@240952.6]
  assign _GEN_1 = _T_28 ? 1'h0 : _GEN_0; // @[PTW.scala 145:102:chipyard.TestHarness.RocketConfig.fir@240953.6]
  assign res_v = _T_20 ? _GEN_1 : tmp_v; // @[PTW.scala 142:36:chipyard.TestHarness.RocketConfig.fir@240941.4]
  assign invalid_paddr = tmp_ppn[53:20] != 34'h0; // @[PTW.scala 147:32:chipyard.TestHarness.RocketConfig.fir@240958.4]
  assign _T_30 = ~tmp_r; // @[PTW.scala 68:36:chipyard.TestHarness.RocketConfig.fir@240959.4]
  assign _T_31 = res_v & _T_30; // @[PTW.scala 68:33:chipyard.TestHarness.RocketConfig.fir@240960.4]
  assign _T_32 = ~tmp_w; // @[PTW.scala 68:42:chipyard.TestHarness.RocketConfig.fir@240961.4]
  assign _T_33 = _T_31 & _T_32; // @[PTW.scala 68:39:chipyard.TestHarness.RocketConfig.fir@240962.4]
  assign _T_34 = ~tmp_x; // @[PTW.scala 68:48:chipyard.TestHarness.RocketConfig.fir@240963.4]
  assign _T_35 = _T_33 & _T_34; // @[PTW.scala 68:45:chipyard.TestHarness.RocketConfig.fir@240964.4]
  assign _T_36 = ~invalid_paddr; // @[PTW.scala 149:33:chipyard.TestHarness.RocketConfig.fir@240965.4]
  assign _T_37 = _T_35 & _T_36; // @[PTW.scala 149:30:chipyard.TestHarness.RocketConfig.fir@240966.4]
  assign _T_38 = count < 2'h2; // @[PTW.scala 149:57:chipyard.TestHarness.RocketConfig.fir@240967.4]
  assign traverse = _T_37 & _T_38; // @[PTW.scala 149:48:chipyard.TestHarness.RocketConfig.fir@240968.4]
  assign vpn_idxs_0 = r_req_addr[26:18]; // @[PTW.scala 151:60:chipyard.TestHarness.RocketConfig.fir@240969.4]
  assign vpn_idxs_1 = r_req_addr[17:9]; // @[PTW.scala 151:90:chipyard.TestHarness.RocketConfig.fir@240972.4]
  assign vpn_idxs_2 = r_req_addr[8:0]; // @[PTW.scala 151:90:chipyard.TestHarness.RocketConfig.fir@240974.4]
  assign _T_42 = count == 2'h1; // @[package.scala 32:86:chipyard.TestHarness.RocketConfig.fir@240975.4]
  assign _T_43 = _T_42 ? vpn_idxs_1 : vpn_idxs_0; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@240976.4]
  assign _T_44 = count == 2'h2; // @[package.scala 32:86:chipyard.TestHarness.RocketConfig.fir@240977.4]
  assign _T_45 = _T_44 ? vpn_idxs_2 : _T_43; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@240978.4]
  assign _T_46 = count == 2'h3; // @[package.scala 32:86:chipyard.TestHarness.RocketConfig.fir@240979.4]
  assign vpn_idx = _T_46 ? vpn_idxs_2 : _T_45; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@240980.4]
  assign _T_47 = {r_pte_ppn,vpn_idx}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@240981.4]
  assign pte_addr = {_T_47, 3'h0}; // @[PTW.scala 153:29:chipyard.TestHarness.RocketConfig.fir@240982.4]
  assign choices_0 = {r_pte_ppn[53:18],r_req_addr[17:0]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@240985.4]
  assign choices_1 = {r_pte_ppn[53:9],vpn_idxs_2}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@240988.4]
  assign fragmented_superpage_ppn = count[0] ? choices_1 : choices_0; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@240992.4]
  assign _T_55 = arb_io_out_ready & arb_io_out_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@240993.4]
  assign _GEN_124 = {{34'd0}, tags_0}; // @[PTW.scala 172:27:chipyard.TestHarness.RocketConfig.fir@241002.4]
  assign _T_57 = _GEN_124 == pte_addr; // @[PTW.scala 172:27:chipyard.TestHarness.RocketConfig.fir@241002.4]
  assign _GEN_125 = {{34'd0}, tags_1}; // @[PTW.scala 172:27:chipyard.TestHarness.RocketConfig.fir@241003.4]
  assign _T_58 = _GEN_125 == pte_addr; // @[PTW.scala 172:27:chipyard.TestHarness.RocketConfig.fir@241003.4]
  assign _GEN_126 = {{34'd0}, tags_2}; // @[PTW.scala 172:27:chipyard.TestHarness.RocketConfig.fir@241004.4]
  assign _T_59 = _GEN_126 == pte_addr; // @[PTW.scala 172:27:chipyard.TestHarness.RocketConfig.fir@241004.4]
  assign _GEN_127 = {{34'd0}, tags_3}; // @[PTW.scala 172:27:chipyard.TestHarness.RocketConfig.fir@241005.4]
  assign _T_60 = _GEN_127 == pte_addr; // @[PTW.scala 172:27:chipyard.TestHarness.RocketConfig.fir@241005.4]
  assign _GEN_128 = {{34'd0}, tags_4}; // @[PTW.scala 172:27:chipyard.TestHarness.RocketConfig.fir@241006.4]
  assign _T_61 = _GEN_128 == pte_addr; // @[PTW.scala 172:27:chipyard.TestHarness.RocketConfig.fir@241006.4]
  assign _GEN_129 = {{34'd0}, tags_5}; // @[PTW.scala 172:27:chipyard.TestHarness.RocketConfig.fir@241007.4]
  assign _T_62 = _GEN_129 == pte_addr; // @[PTW.scala 172:27:chipyard.TestHarness.RocketConfig.fir@241007.4]
  assign _GEN_130 = {{34'd0}, tags_6}; // @[PTW.scala 172:27:chipyard.TestHarness.RocketConfig.fir@241008.4]
  assign _T_63 = _GEN_130 == pte_addr; // @[PTW.scala 172:27:chipyard.TestHarness.RocketConfig.fir@241008.4]
  assign _GEN_131 = {{34'd0}, tags_7}; // @[PTW.scala 172:27:chipyard.TestHarness.RocketConfig.fir@241009.4]
  assign _T_64 = _GEN_131 == pte_addr; // @[PTW.scala 172:27:chipyard.TestHarness.RocketConfig.fir@241009.4]
  assign _T_71 = {_T_64,_T_63,_T_62,_T_61,_T_60,_T_59,_T_58,_T_57}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@241016.4]
  assign hits = _T_71 & valid; // @[PTW.scala 172:48:chipyard.TestHarness.RocketConfig.fir@241017.4]
  assign hit = |hits; // @[PTW.scala 173:20:chipyard.TestHarness.RocketConfig.fir@241018.4]
  assign _T_72 = mem_resp_valid & traverse; // @[PTW.scala 174:26:chipyard.TestHarness.RocketConfig.fir@241019.4]
  assign _T_73 = ~hit; // @[PTW.scala 174:41:chipyard.TestHarness.RocketConfig.fir@241020.4]
  assign _T_74 = _T_72 & _T_73; // @[PTW.scala 174:38:chipyard.TestHarness.RocketConfig.fir@241021.4]
  assign _T_75 = ~invalidated; // @[PTW.scala 174:49:chipyard.TestHarness.RocketConfig.fir@241022.4]
  assign _T_76 = _T_74 & _T_75; // @[PTW.scala 174:46:chipyard.TestHarness.RocketConfig.fir@241023.4]
  assign _T_77 = &valid; // @[PTW.scala 175:25:chipyard.TestHarness.RocketConfig.fir@241025.6]
  assign _T_78 = {_T_56, 1'h0}; // @[Replacement.scala 61:31:chipyard.TestHarness.RocketConfig.fir@241026.6]
  assign _T_82 = {{1'd0}, _T_78[7:1]}; // @[Replacement.scala 65:48:chipyard.TestHarness.RocketConfig.fir@241030.6]
  assign _T_85 = {1'h1,_T_82[0]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@241033.6]
  assign _T_89 = _T_78 >> _T_85; // @[Replacement.scala 65:48:chipyard.TestHarness.RocketConfig.fir@241037.6]
  assign _T_92 = {1'h1,_T_82[0],_T_89[0]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@241040.6]
  assign _T_96 = _T_78 >> _T_92; // @[Replacement.scala 65:48:chipyard.TestHarness.RocketConfig.fir@241044.6]
  assign _T_99 = {1'h1,_T_82[0],_T_89[0],_T_96[0]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@241047.6]
  assign _T_101 = ~valid; // @[PTW.scala 175:61:chipyard.TestHarness.RocketConfig.fir@241049.6]
  assign _T_110 = _T_101[6] ? 3'h6 : 3'h7; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@241058.6]
  assign _T_111 = _T_101[5] ? 3'h5 : _T_110; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@241059.6]
  assign _T_112 = _T_101[4] ? 3'h4 : _T_111; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@241060.6]
  assign _T_113 = _T_101[3] ? 3'h3 : _T_112; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@241061.6]
  assign _T_114 = _T_101[2] ? 3'h2 : _T_113; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@241062.6]
  assign _T_115 = _T_101[1] ? 3'h1 : _T_114; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@241063.6]
  assign _T_116 = _T_101[0] ? 3'h0 : _T_115; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@241064.6]
  assign r = _T_77 ? _T_99[2:0] : _T_116; // @[PTW.scala 175:18:chipyard.TestHarness.RocketConfig.fir@241065.6]
  assign _T_117 = 8'h1 << r; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@241066.6]
  assign _T_118 = valid | _T_117; // @[PTW.scala 176:22:chipyard.TestHarness.RocketConfig.fir@241067.6]
  assign res_ppn = {{34'd0}, tmp_ppn[19:0]}; // @[:chipyard.TestHarness.RocketConfig.fir@240934.4 :chipyard.TestHarness.RocketConfig.fir@240936.4 PTW.scala 141:13:chipyard.TestHarness.RocketConfig.fir@240938.4]
  assign _T_119 = state == 3'h1; // @[PTW.scala 180:24:chipyard.TestHarness.RocketConfig.fir@241072.4]
  assign _T_120 = hit & _T_119; // @[PTW.scala 180:15:chipyard.TestHarness.RocketConfig.fir@241073.4]
  assign _T_123 = |hits[7:4]; // @[OneHot.scala 32:14:chipyard.TestHarness.RocketConfig.fir@241077.6]
  assign _T_124 = hits[7:4] | hits[3:0]; // @[OneHot.scala 32:28:chipyard.TestHarness.RocketConfig.fir@241078.6]
  assign _T_127 = |_T_124[3:2]; // @[OneHot.scala 32:14:chipyard.TestHarness.RocketConfig.fir@241081.6]
  assign _T_128 = _T_124[3:2] | _T_124[1:0]; // @[OneHot.scala 32:28:chipyard.TestHarness.RocketConfig.fir@241082.6]
  assign _T_131 = {_T_123,_T_127,_T_128[1]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@241085.6]
  assign _T_134 = ~_T_131[2]; // @[Replacement.scala 54:43:chipyard.TestHarness.RocketConfig.fir@241088.6]
  assign _T_136 = _T_78 | 8'h2; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@241090.6]
  assign _T_137 = ~_T_78; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@241091.6]
  assign _T_138 = _T_137 | 8'h2; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@241092.6]
  assign _T_139 = ~_T_138; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@241093.6]
  assign _T_140 = _T_134 ? _T_136 : _T_139; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@241094.6]
  assign _T_141 = {1'h1,_T_131[2]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@241095.6]
  assign _T_143 = ~_T_131[1]; // @[Replacement.scala 54:43:chipyard.TestHarness.RocketConfig.fir@241097.6]
  assign _T_144 = 4'h1 << _T_141; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@241098.6]
  assign _GEN_133 = {{4'd0}, _T_144}; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@241099.6]
  assign _T_145 = _T_140 | _GEN_133; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@241099.6]
  assign _T_146 = ~_T_140; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@241100.6]
  assign _T_147 = _T_146 | _GEN_133; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@241101.6]
  assign _T_148 = ~_T_147; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@241102.6]
  assign _T_149 = _T_143 ? _T_145 : _T_148; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@241103.6]
  assign _T_150 = {1'h1,_T_131[2],_T_131[1]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@241104.6]
  assign _T_152 = ~_T_131[0]; // @[Replacement.scala 54:43:chipyard.TestHarness.RocketConfig.fir@241106.6]
  assign _T_153 = 8'h1 << _T_150; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@241107.6]
  assign _T_154 = _T_149 | _T_153; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@241108.6]
  assign _T_155 = ~_T_149; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@241109.6]
  assign _T_156 = _T_155 | _T_153; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@241110.6]
  assign _T_157 = ~_T_156; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@241111.6]
  assign _T_158 = _T_152 ? _T_154 : _T_157; // @[Replacement.scala 54:37:chipyard.TestHarness.RocketConfig.fir@241112.6]
  assign _T_161 = ~io_dpath_sfence_bits_rs1; // @[PTW.scala 181:36:chipyard.TestHarness.RocketConfig.fir@241117.4]
  assign _T_162 = io_dpath_sfence_valid & _T_161; // @[PTW.scala 181:33:chipyard.TestHarness.RocketConfig.fir@241118.4]
  assign pte_cache_hit = hit & _T_38; // @[PTW.scala 186:10:chipyard.TestHarness.RocketConfig.fir@241131.4]
  assign _T_180 = hits[0] ? data_0 : 20'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@241140.4]
  assign _T_181 = hits[1] ? data_1 : 20'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@241141.4]
  assign _T_182 = hits[2] ? data_2 : 20'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@241142.4]
  assign _T_183 = hits[3] ? data_3 : 20'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@241143.4]
  assign _T_184 = hits[4] ? data_4 : 20'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@241144.4]
  assign _T_185 = hits[5] ? data_5 : 20'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@241145.4]
  assign _T_186 = hits[6] ? data_6 : 20'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@241146.4]
  assign _T_187 = hits[7] ? data_7 : 20'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@241147.4]
  assign _T_188 = _T_180 | _T_181; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@241148.4]
  assign _T_189 = _T_188 | _T_182; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@241149.4]
  assign _T_190 = _T_189 | _T_183; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@241150.4]
  assign _T_191 = _T_190 | _T_184; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@241151.4]
  assign _T_192 = _T_191 | _T_185; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@241152.4]
  assign _T_193 = _T_192 | _T_186; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@241153.4]
  assign pte_cache_data = _T_193 | _T_187; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@241154.4]
  assign r_tag = r_req_addr[26:10]; // @[package.scala 120:13:chipyard.TestHarness.RocketConfig.fir@241163.4]
  assign r_idx = r_req_addr[9:0]; // @[package.scala 120:13:chipyard.TestHarness.RocketConfig.fir@241164.4]
  assign _T_196 = l2_refill & _T_75; // @[PTW.scala 206:21:chipyard.TestHarness.RocketConfig.fir@241166.4]
  assign entry_ppn = r_pte_ppn[19:0]; // @[PTW.scala 207:23:chipyard.TestHarness.RocketConfig.fir@241168.6 PTW.scala 208:13:chipyard.TestHarness.RocketConfig.fir@241170.6]
  assign _T_203 = {r_tag,entry_ppn,r_pte_d,r_pte_a,r_pte_u,r_pte_x,r_pte_w,r_pte_r}; // @[PTW.scala 210:42:chipyard.TestHarness.RocketConfig.fir@241178.6]
  assign _T_204 = ^_T_203; // @[ECC.scala 64:59:chipyard.TestHarness.RocketConfig.fir@241179.6]
  assign mask = 1024'h1 << r_idx; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@241184.6]
  assign _T_208 = valid_1 | mask; // @[PTW.scala 213:22:chipyard.TestHarness.RocketConfig.fir@241185.6]
  assign _T_209 = g | mask; // @[PTW.scala 214:27:chipyard.TestHarness.RocketConfig.fir@241187.6]
  assign _T_210 = ~mask; // @[PTW.scala 214:39:chipyard.TestHarness.RocketConfig.fir@241188.6]
  assign _T_211 = g & _T_210; // @[PTW.scala 214:37:chipyard.TestHarness.RocketConfig.fir@241189.6]
  assign _T_214 = 1024'h1 << io_dpath_sfence_bits_addr[21:12]; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@241195.6]
  assign _T_215 = ~_T_214; // @[PTW.scala 218:47:chipyard.TestHarness.RocketConfig.fir@241196.6]
  assign _T_216 = valid_1 & _T_215; // @[PTW.scala 218:45:chipyard.TestHarness.RocketConfig.fir@241197.6]
  assign _T_217 = valid_1 & g; // @[PTW.scala 219:45:chipyard.TestHarness.RocketConfig.fir@241198.6]
  assign _T_220 = ~l2_refill; // @[PTW.scala 222:20:chipyard.TestHarness.RocketConfig.fir@241203.4]
  assign s0_valid = _T_220 & _T_55; // @[PTW.scala 222:31:chipyard.TestHarness.RocketConfig.fir@241205.4]
  assign l2_error = ^_T_227; // @[ECC.scala 70:27:chipyard.TestHarness.RocketConfig.fir@241226.4]
  assign _T_230 = valid_1 >> r_idx; // @[PTW.scala 227:39:chipyard.TestHarness.RocketConfig.fir@241227.4]
  assign _T_232 = g >> r_idx; // @[PTW.scala 228:27:chipyard.TestHarness.RocketConfig.fir@241233.4]
  assign _T_234 = s2_valid & s2_valid_bit; // @[PTW.scala 229:20:chipyard.TestHarness.RocketConfig.fir@241239.4]
  assign _T_236 = _T_234 & l2_error; // @[PTW.scala 229:36:chipyard.TestHarness.RocketConfig.fir@241241.4]
  assign s2_entry_r = _T_227[0]; // @[PTW.scala 231:49:chipyard.TestHarness.RocketConfig.fir@241250.4]
  assign s2_entry_w = _T_227[1]; // @[PTW.scala 231:49:chipyard.TestHarness.RocketConfig.fir@241252.4]
  assign s2_entry_x = _T_227[2]; // @[PTW.scala 231:49:chipyard.TestHarness.RocketConfig.fir@241254.4]
  assign s2_entry_u = _T_227[3]; // @[PTW.scala 231:49:chipyard.TestHarness.RocketConfig.fir@241256.4]
  assign s2_entry_a = _T_227[4]; // @[PTW.scala 231:49:chipyard.TestHarness.RocketConfig.fir@241258.4]
  assign s2_entry_d = _T_227[5]; // @[PTW.scala 231:49:chipyard.TestHarness.RocketConfig.fir@241260.4]
  assign s2_entry_ppn = _T_227[25:6]; // @[PTW.scala 231:49:chipyard.TestHarness.RocketConfig.fir@241262.4]
  assign s2_entry_tag = _T_227[42:26]; // @[PTW.scala 231:49:chipyard.TestHarness.RocketConfig.fir@241264.4]
  assign _T_247 = r_tag == s2_entry_tag; // @[PTW.scala 232:52:chipyard.TestHarness.RocketConfig.fir@241267.4]
  assign s2_hit = _T_234 & _T_247; // @[PTW.scala 232:43:chipyard.TestHarness.RocketConfig.fir@241268.4]
  assign _T_253 = invalidated & _T_2; // @[PTW.scala 245:56:chipyard.TestHarness.RocketConfig.fir@241281.4]
  assign _T_256 = state == 3'h3; // @[PTW.scala 247:48:chipyard.TestHarness.RocketConfig.fir@241285.4]
  assign _T_258 = state != 3'h2; // @[PTW.scala 254:37:chipyard.TestHarness.RocketConfig.fir@241294.4]
  assign _T_266 = pte_addr ^ 66'hc000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@241304.4]
  assign _T_267 = {1'b0,$signed(_T_266)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@241305.4]
  assign _T_269 = $signed(_T_267) & -67'sh4000000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@241307.4]
  assign _T_270 = $signed(_T_269) == 67'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@241308.4]
  assign _T_271 = pte_addr ^ 66'h80000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@241309.4]
  assign _T_272 = {1'b0,$signed(_T_271)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@241310.4]
  assign _T_274 = $signed(_T_272) & -67'sh10000000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@241312.4]
  assign _T_275 = $signed(_T_274) == 67'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@241313.4]
  assign pmaPgLevelHomogeneous_1 = _T_270 | _T_275; // @[TLBPermissions.scala 98:65:chipyard.TestHarness.RocketConfig.fir@241315.4]
  assign _T_280 = {1'b0,$signed(pte_addr)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@241319.4]
  assign _T_295 = pte_addr ^ 66'h3000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@241334.4]
  assign _T_296 = {1'b0,$signed(_T_295)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@241335.4]
  assign _T_298 = $signed(_T_296) & -67'sh1000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@241337.4]
  assign _T_299 = $signed(_T_298) == 67'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@241338.4]
  assign _T_300 = pte_addr ^ 66'h2010000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@241339.4]
  assign _T_301 = {1'b0,$signed(_T_300)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@241340.4]
  assign _T_303 = $signed(_T_301) & -67'sh1000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@241342.4]
  assign _T_304 = $signed(_T_303) == 67'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@241343.4]
  assign _T_305 = pte_addr ^ 66'h54000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@241344.4]
  assign _T_306 = {1'b0,$signed(_T_305)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@241345.4]
  assign _T_308 = $signed(_T_306) & -67'sh1000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@241347.4]
  assign _T_309 = $signed(_T_308) == 67'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@241348.4]
  assign _T_315 = pte_addr ^ 66'h2000000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@241354.4]
  assign _T_316 = {1'b0,$signed(_T_315)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@241355.4]
  assign _T_318 = $signed(_T_316) & -67'sh10000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@241357.4]
  assign _T_319 = $signed(_T_318) == 67'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@241358.4]
  assign _T_325 = pte_addr ^ 66'h10000; // @[Parameters.scala 137:31:chipyard.TestHarness.RocketConfig.fir@241364.4]
  assign _T_326 = {1'b0,$signed(_T_325)}; // @[Parameters.scala 137:49:chipyard.TestHarness.RocketConfig.fir@241365.4]
  assign _T_328 = $signed(_T_326) & -67'sh10000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@241367.4]
  assign _T_329 = $signed(_T_328) == 67'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@241368.4]
  assign _T_333 = $signed(_T_280) & -67'sh1000; // @[Parameters.scala 137:52:chipyard.TestHarness.RocketConfig.fir@241372.4]
  assign _T_334 = $signed(_T_333) == 67'sh0; // @[Parameters.scala 137:67:chipyard.TestHarness.RocketConfig.fir@241373.4]
  assign _T_336 = _T_299 | _T_304; // @[TLBPermissions.scala 98:65:chipyard.TestHarness.RocketConfig.fir@241375.4]
  assign _T_337 = _T_336 | _T_309; // @[TLBPermissions.scala 98:65:chipyard.TestHarness.RocketConfig.fir@241376.4]
  assign _T_338 = _T_337 | _T_270; // @[TLBPermissions.scala 98:65:chipyard.TestHarness.RocketConfig.fir@241377.4]
  assign _T_339 = _T_338 | _T_319; // @[TLBPermissions.scala 98:65:chipyard.TestHarness.RocketConfig.fir@241378.4]
  assign _T_340 = _T_339 | _T_275; // @[TLBPermissions.scala 98:65:chipyard.TestHarness.RocketConfig.fir@241379.4]
  assign _T_341 = _T_340 | _T_329; // @[TLBPermissions.scala 98:65:chipyard.TestHarness.RocketConfig.fir@241380.4]
  assign pmaPgLevelHomogeneous_2 = _T_341 | _T_334; // @[TLBPermissions.scala 98:65:chipyard.TestHarness.RocketConfig.fir@241381.4]
  assign _T_383 = _T_42 & pmaPgLevelHomogeneous_1; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241423.4]
  assign _T_385 = _T_44 ? pmaPgLevelHomogeneous_2 : _T_383; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241425.4]
  assign pmaHomogeneous = _T_46 ? pmaPgLevelHomogeneous_2 : _T_385; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241427.4]
  assign _T_388 = {pte_addr[65:12], 12'h0}; // @[PTW.scala 268:92:chipyard.TestHarness.RocketConfig.fir@241429.4]
  assign _T_395 = _T_42 ? io_dpath_pmp_0_mask[20] : io_dpath_pmp_0_mask[29]; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241444.4]
  assign _T_397 = _T_44 ? io_dpath_pmp_0_mask[11] : _T_395; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241446.4]
  assign _T_399 = _T_46 ? io_dpath_pmp_0_mask[11] : _T_397; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241448.4]
  assign _T_400 = {io_dpath_pmp_0_addr, 2'h0}; // @[PMP.scala 62:36:chipyard.TestHarness.RocketConfig.fir@241449.4]
  assign _T_401 = ~_T_400; // @[PMP.scala 62:29:chipyard.TestHarness.RocketConfig.fir@241450.4]
  assign _T_402 = _T_401 | 32'h3; // @[PMP.scala 62:48:chipyard.TestHarness.RocketConfig.fir@241451.4]
  assign _T_403 = ~_T_402; // @[PMP.scala 62:27:chipyard.TestHarness.RocketConfig.fir@241452.4]
  assign _GEN_135 = {{34'd0}, _T_403}; // @[PMP.scala 100:53:chipyard.TestHarness.RocketConfig.fir@241453.4]
  assign _T_404 = _T_388 ^ _GEN_135; // @[PMP.scala 100:53:chipyard.TestHarness.RocketConfig.fir@241453.4]
  assign _T_406 = _T_404[65:30] != 36'h0; // @[PMP.scala 100:78:chipyard.TestHarness.RocketConfig.fir@241455.4]
  assign _T_413 = _T_404[65:21] != 45'h0; // @[PMP.scala 100:78:chipyard.TestHarness.RocketConfig.fir@241462.4]
  assign _T_420 = _T_404[65:12] != 54'h0; // @[PMP.scala 100:78:chipyard.TestHarness.RocketConfig.fir@241469.4]
  assign _T_422 = _T_42 ? _T_413 : _T_406; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241471.4]
  assign _T_424 = _T_44 ? _T_420 : _T_422; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241473.4]
  assign _T_426 = _T_46 ? _T_420 : _T_424; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241475.4]
  assign _T_427 = _T_399 | _T_426; // @[PMP.scala 100:21:chipyard.TestHarness.RocketConfig.fir@241476.4]
  assign _T_429 = ~io_dpath_pmp_0_cfg_a[0]; // @[PMP.scala 120:45:chipyard.TestHarness.RocketConfig.fir@241478.4]
  assign _T_440 = _T_388 < _GEN_135; // @[PMP.scala 109:32:chipyard.TestHarness.RocketConfig.fir@241489.4]
  assign _T_441 = ~_T_440; // @[PMP.scala 109:28:chipyard.TestHarness.RocketConfig.fir@241490.4]
  assign _T_443 = _T_42 ? 32'hffe00000 : 32'hc0000000; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241492.4]
  assign _T_445 = _T_44 ? 32'hfffff000 : _T_443; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241494.4]
  assign _T_447 = _T_46 ? 32'hfffff000 : _T_445; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241496.4]
  assign _GEN_139 = {{34'd0}, _T_447}; // @[PMP.scala 112:30:chipyard.TestHarness.RocketConfig.fir@241497.4]
  assign _T_448 = _T_388 & _GEN_139; // @[PMP.scala 112:30:chipyard.TestHarness.RocketConfig.fir@241497.4]
  assign _T_460 = _T_403 & _T_447; // @[PMP.scala 113:53:chipyard.TestHarness.RocketConfig.fir@241509.4]
  assign _GEN_141 = {{34'd0}, _T_460}; // @[PMP.scala 113:40:chipyard.TestHarness.RocketConfig.fir@241510.4]
  assign _T_461 = _T_448 < _GEN_141; // @[PMP.scala 113:40:chipyard.TestHarness.RocketConfig.fir@241510.4]
  assign _T_464 = _T_441 | _T_461; // @[PMP.scala 115:41:chipyard.TestHarness.RocketConfig.fir@241513.4]
  assign _T_465 = _T_429 | _T_464; // @[PMP.scala 120:58:chipyard.TestHarness.RocketConfig.fir@241514.4]
  assign _T_466 = io_dpath_pmp_0_cfg_a[1] ? _T_427 : _T_465; // @[PMP.scala 120:8:chipyard.TestHarness.RocketConfig.fir@241515.4]
  assign _T_473 = _T_42 ? io_dpath_pmp_1_mask[20] : io_dpath_pmp_1_mask[29]; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241522.4]
  assign _T_475 = _T_44 ? io_dpath_pmp_1_mask[11] : _T_473; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241524.4]
  assign _T_477 = _T_46 ? io_dpath_pmp_1_mask[11] : _T_475; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241526.4]
  assign _T_478 = {io_dpath_pmp_1_addr, 2'h0}; // @[PMP.scala 62:36:chipyard.TestHarness.RocketConfig.fir@241527.4]
  assign _T_479 = ~_T_478; // @[PMP.scala 62:29:chipyard.TestHarness.RocketConfig.fir@241528.4]
  assign _T_480 = _T_479 | 32'h3; // @[PMP.scala 62:48:chipyard.TestHarness.RocketConfig.fir@241529.4]
  assign _T_481 = ~_T_480; // @[PMP.scala 62:27:chipyard.TestHarness.RocketConfig.fir@241530.4]
  assign _GEN_142 = {{34'd0}, _T_481}; // @[PMP.scala 100:53:chipyard.TestHarness.RocketConfig.fir@241531.4]
  assign _T_482 = _T_388 ^ _GEN_142; // @[PMP.scala 100:53:chipyard.TestHarness.RocketConfig.fir@241531.4]
  assign _T_484 = _T_482[65:30] != 36'h0; // @[PMP.scala 100:78:chipyard.TestHarness.RocketConfig.fir@241533.4]
  assign _T_491 = _T_482[65:21] != 45'h0; // @[PMP.scala 100:78:chipyard.TestHarness.RocketConfig.fir@241540.4]
  assign _T_498 = _T_482[65:12] != 54'h0; // @[PMP.scala 100:78:chipyard.TestHarness.RocketConfig.fir@241547.4]
  assign _T_500 = _T_42 ? _T_491 : _T_484; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241549.4]
  assign _T_502 = _T_44 ? _T_498 : _T_500; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241551.4]
  assign _T_504 = _T_46 ? _T_498 : _T_502; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241553.4]
  assign _T_505 = _T_477 | _T_504; // @[PMP.scala 100:21:chipyard.TestHarness.RocketConfig.fir@241554.4]
  assign _T_507 = ~io_dpath_pmp_1_cfg_a[0]; // @[PMP.scala 120:45:chipyard.TestHarness.RocketConfig.fir@241556.4]
  assign _T_518 = _T_388 < _GEN_142; // @[PMP.scala 109:32:chipyard.TestHarness.RocketConfig.fir@241567.4]
  assign _T_519 = ~_T_518; // @[PMP.scala 109:28:chipyard.TestHarness.RocketConfig.fir@241568.4]
  assign _T_538 = _T_481 & _T_447; // @[PMP.scala 113:53:chipyard.TestHarness.RocketConfig.fir@241587.4]
  assign _GEN_150 = {{34'd0}, _T_538}; // @[PMP.scala 113:40:chipyard.TestHarness.RocketConfig.fir@241588.4]
  assign _T_539 = _T_448 < _GEN_150; // @[PMP.scala 113:40:chipyard.TestHarness.RocketConfig.fir@241588.4]
  assign _T_540 = _T_461 | _T_519; // @[PMP.scala 115:21:chipyard.TestHarness.RocketConfig.fir@241589.4]
  assign _T_541 = _T_441 & _T_539; // @[PMP.scala 115:62:chipyard.TestHarness.RocketConfig.fir@241590.4]
  assign _T_542 = _T_540 | _T_541; // @[PMP.scala 115:41:chipyard.TestHarness.RocketConfig.fir@241591.4]
  assign _T_543 = _T_507 | _T_542; // @[PMP.scala 120:58:chipyard.TestHarness.RocketConfig.fir@241592.4]
  assign _T_544 = io_dpath_pmp_1_cfg_a[1] ? _T_505 : _T_543; // @[PMP.scala 120:8:chipyard.TestHarness.RocketConfig.fir@241593.4]
  assign _T_545 = _T_466 & _T_544; // @[PMP.scala 140:10:chipyard.TestHarness.RocketConfig.fir@241594.4]
  assign _T_551 = _T_42 ? io_dpath_pmp_2_mask[20] : io_dpath_pmp_2_mask[29]; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241600.4]
  assign _T_553 = _T_44 ? io_dpath_pmp_2_mask[11] : _T_551; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241602.4]
  assign _T_555 = _T_46 ? io_dpath_pmp_2_mask[11] : _T_553; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241604.4]
  assign _T_556 = {io_dpath_pmp_2_addr, 2'h0}; // @[PMP.scala 62:36:chipyard.TestHarness.RocketConfig.fir@241605.4]
  assign _T_557 = ~_T_556; // @[PMP.scala 62:29:chipyard.TestHarness.RocketConfig.fir@241606.4]
  assign _T_558 = _T_557 | 32'h3; // @[PMP.scala 62:48:chipyard.TestHarness.RocketConfig.fir@241607.4]
  assign _T_559 = ~_T_558; // @[PMP.scala 62:27:chipyard.TestHarness.RocketConfig.fir@241608.4]
  assign _GEN_151 = {{34'd0}, _T_559}; // @[PMP.scala 100:53:chipyard.TestHarness.RocketConfig.fir@241609.4]
  assign _T_560 = _T_388 ^ _GEN_151; // @[PMP.scala 100:53:chipyard.TestHarness.RocketConfig.fir@241609.4]
  assign _T_562 = _T_560[65:30] != 36'h0; // @[PMP.scala 100:78:chipyard.TestHarness.RocketConfig.fir@241611.4]
  assign _T_569 = _T_560[65:21] != 45'h0; // @[PMP.scala 100:78:chipyard.TestHarness.RocketConfig.fir@241618.4]
  assign _T_576 = _T_560[65:12] != 54'h0; // @[PMP.scala 100:78:chipyard.TestHarness.RocketConfig.fir@241625.4]
  assign _T_578 = _T_42 ? _T_569 : _T_562; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241627.4]
  assign _T_580 = _T_44 ? _T_576 : _T_578; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241629.4]
  assign _T_582 = _T_46 ? _T_576 : _T_580; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241631.4]
  assign _T_583 = _T_555 | _T_582; // @[PMP.scala 100:21:chipyard.TestHarness.RocketConfig.fir@241632.4]
  assign _T_585 = ~io_dpath_pmp_2_cfg_a[0]; // @[PMP.scala 120:45:chipyard.TestHarness.RocketConfig.fir@241634.4]
  assign _T_596 = _T_388 < _GEN_151; // @[PMP.scala 109:32:chipyard.TestHarness.RocketConfig.fir@241645.4]
  assign _T_597 = ~_T_596; // @[PMP.scala 109:28:chipyard.TestHarness.RocketConfig.fir@241646.4]
  assign _T_616 = _T_559 & _T_447; // @[PMP.scala 113:53:chipyard.TestHarness.RocketConfig.fir@241665.4]
  assign _GEN_159 = {{34'd0}, _T_616}; // @[PMP.scala 113:40:chipyard.TestHarness.RocketConfig.fir@241666.4]
  assign _T_617 = _T_448 < _GEN_159; // @[PMP.scala 113:40:chipyard.TestHarness.RocketConfig.fir@241666.4]
  assign _T_618 = _T_539 | _T_597; // @[PMP.scala 115:21:chipyard.TestHarness.RocketConfig.fir@241667.4]
  assign _T_619 = _T_519 & _T_617; // @[PMP.scala 115:62:chipyard.TestHarness.RocketConfig.fir@241668.4]
  assign _T_620 = _T_618 | _T_619; // @[PMP.scala 115:41:chipyard.TestHarness.RocketConfig.fir@241669.4]
  assign _T_621 = _T_585 | _T_620; // @[PMP.scala 120:58:chipyard.TestHarness.RocketConfig.fir@241670.4]
  assign _T_622 = io_dpath_pmp_2_cfg_a[1] ? _T_583 : _T_621; // @[PMP.scala 120:8:chipyard.TestHarness.RocketConfig.fir@241671.4]
  assign _T_623 = _T_545 & _T_622; // @[PMP.scala 140:10:chipyard.TestHarness.RocketConfig.fir@241672.4]
  assign _T_629 = _T_42 ? io_dpath_pmp_3_mask[20] : io_dpath_pmp_3_mask[29]; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241678.4]
  assign _T_631 = _T_44 ? io_dpath_pmp_3_mask[11] : _T_629; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241680.4]
  assign _T_633 = _T_46 ? io_dpath_pmp_3_mask[11] : _T_631; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241682.4]
  assign _T_634 = {io_dpath_pmp_3_addr, 2'h0}; // @[PMP.scala 62:36:chipyard.TestHarness.RocketConfig.fir@241683.4]
  assign _T_635 = ~_T_634; // @[PMP.scala 62:29:chipyard.TestHarness.RocketConfig.fir@241684.4]
  assign _T_636 = _T_635 | 32'h3; // @[PMP.scala 62:48:chipyard.TestHarness.RocketConfig.fir@241685.4]
  assign _T_637 = ~_T_636; // @[PMP.scala 62:27:chipyard.TestHarness.RocketConfig.fir@241686.4]
  assign _GEN_160 = {{34'd0}, _T_637}; // @[PMP.scala 100:53:chipyard.TestHarness.RocketConfig.fir@241687.4]
  assign _T_638 = _T_388 ^ _GEN_160; // @[PMP.scala 100:53:chipyard.TestHarness.RocketConfig.fir@241687.4]
  assign _T_640 = _T_638[65:30] != 36'h0; // @[PMP.scala 100:78:chipyard.TestHarness.RocketConfig.fir@241689.4]
  assign _T_647 = _T_638[65:21] != 45'h0; // @[PMP.scala 100:78:chipyard.TestHarness.RocketConfig.fir@241696.4]
  assign _T_654 = _T_638[65:12] != 54'h0; // @[PMP.scala 100:78:chipyard.TestHarness.RocketConfig.fir@241703.4]
  assign _T_656 = _T_42 ? _T_647 : _T_640; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241705.4]
  assign _T_658 = _T_44 ? _T_654 : _T_656; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241707.4]
  assign _T_660 = _T_46 ? _T_654 : _T_658; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241709.4]
  assign _T_661 = _T_633 | _T_660; // @[PMP.scala 100:21:chipyard.TestHarness.RocketConfig.fir@241710.4]
  assign _T_663 = ~io_dpath_pmp_3_cfg_a[0]; // @[PMP.scala 120:45:chipyard.TestHarness.RocketConfig.fir@241712.4]
  assign _T_674 = _T_388 < _GEN_160; // @[PMP.scala 109:32:chipyard.TestHarness.RocketConfig.fir@241723.4]
  assign _T_675 = ~_T_674; // @[PMP.scala 109:28:chipyard.TestHarness.RocketConfig.fir@241724.4]
  assign _T_694 = _T_637 & _T_447; // @[PMP.scala 113:53:chipyard.TestHarness.RocketConfig.fir@241743.4]
  assign _GEN_168 = {{34'd0}, _T_694}; // @[PMP.scala 113:40:chipyard.TestHarness.RocketConfig.fir@241744.4]
  assign _T_695 = _T_448 < _GEN_168; // @[PMP.scala 113:40:chipyard.TestHarness.RocketConfig.fir@241744.4]
  assign _T_696 = _T_617 | _T_675; // @[PMP.scala 115:21:chipyard.TestHarness.RocketConfig.fir@241745.4]
  assign _T_697 = _T_597 & _T_695; // @[PMP.scala 115:62:chipyard.TestHarness.RocketConfig.fir@241746.4]
  assign _T_698 = _T_696 | _T_697; // @[PMP.scala 115:41:chipyard.TestHarness.RocketConfig.fir@241747.4]
  assign _T_699 = _T_663 | _T_698; // @[PMP.scala 120:58:chipyard.TestHarness.RocketConfig.fir@241748.4]
  assign _T_700 = io_dpath_pmp_3_cfg_a[1] ? _T_661 : _T_699; // @[PMP.scala 120:8:chipyard.TestHarness.RocketConfig.fir@241749.4]
  assign _T_701 = _T_623 & _T_700; // @[PMP.scala 140:10:chipyard.TestHarness.RocketConfig.fir@241750.4]
  assign _T_707 = _T_42 ? io_dpath_pmp_4_mask[20] : io_dpath_pmp_4_mask[29]; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241756.4]
  assign _T_709 = _T_44 ? io_dpath_pmp_4_mask[11] : _T_707; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241758.4]
  assign _T_711 = _T_46 ? io_dpath_pmp_4_mask[11] : _T_709; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241760.4]
  assign _T_712 = {io_dpath_pmp_4_addr, 2'h0}; // @[PMP.scala 62:36:chipyard.TestHarness.RocketConfig.fir@241761.4]
  assign _T_713 = ~_T_712; // @[PMP.scala 62:29:chipyard.TestHarness.RocketConfig.fir@241762.4]
  assign _T_714 = _T_713 | 32'h3; // @[PMP.scala 62:48:chipyard.TestHarness.RocketConfig.fir@241763.4]
  assign _T_715 = ~_T_714; // @[PMP.scala 62:27:chipyard.TestHarness.RocketConfig.fir@241764.4]
  assign _GEN_169 = {{34'd0}, _T_715}; // @[PMP.scala 100:53:chipyard.TestHarness.RocketConfig.fir@241765.4]
  assign _T_716 = _T_388 ^ _GEN_169; // @[PMP.scala 100:53:chipyard.TestHarness.RocketConfig.fir@241765.4]
  assign _T_718 = _T_716[65:30] != 36'h0; // @[PMP.scala 100:78:chipyard.TestHarness.RocketConfig.fir@241767.4]
  assign _T_725 = _T_716[65:21] != 45'h0; // @[PMP.scala 100:78:chipyard.TestHarness.RocketConfig.fir@241774.4]
  assign _T_732 = _T_716[65:12] != 54'h0; // @[PMP.scala 100:78:chipyard.TestHarness.RocketConfig.fir@241781.4]
  assign _T_734 = _T_42 ? _T_725 : _T_718; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241783.4]
  assign _T_736 = _T_44 ? _T_732 : _T_734; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241785.4]
  assign _T_738 = _T_46 ? _T_732 : _T_736; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241787.4]
  assign _T_739 = _T_711 | _T_738; // @[PMP.scala 100:21:chipyard.TestHarness.RocketConfig.fir@241788.4]
  assign _T_741 = ~io_dpath_pmp_4_cfg_a[0]; // @[PMP.scala 120:45:chipyard.TestHarness.RocketConfig.fir@241790.4]
  assign _T_752 = _T_388 < _GEN_169; // @[PMP.scala 109:32:chipyard.TestHarness.RocketConfig.fir@241801.4]
  assign _T_753 = ~_T_752; // @[PMP.scala 109:28:chipyard.TestHarness.RocketConfig.fir@241802.4]
  assign _T_772 = _T_715 & _T_447; // @[PMP.scala 113:53:chipyard.TestHarness.RocketConfig.fir@241821.4]
  assign _GEN_177 = {{34'd0}, _T_772}; // @[PMP.scala 113:40:chipyard.TestHarness.RocketConfig.fir@241822.4]
  assign _T_773 = _T_448 < _GEN_177; // @[PMP.scala 113:40:chipyard.TestHarness.RocketConfig.fir@241822.4]
  assign _T_774 = _T_695 | _T_753; // @[PMP.scala 115:21:chipyard.TestHarness.RocketConfig.fir@241823.4]
  assign _T_775 = _T_675 & _T_773; // @[PMP.scala 115:62:chipyard.TestHarness.RocketConfig.fir@241824.4]
  assign _T_776 = _T_774 | _T_775; // @[PMP.scala 115:41:chipyard.TestHarness.RocketConfig.fir@241825.4]
  assign _T_777 = _T_741 | _T_776; // @[PMP.scala 120:58:chipyard.TestHarness.RocketConfig.fir@241826.4]
  assign _T_778 = io_dpath_pmp_4_cfg_a[1] ? _T_739 : _T_777; // @[PMP.scala 120:8:chipyard.TestHarness.RocketConfig.fir@241827.4]
  assign _T_779 = _T_701 & _T_778; // @[PMP.scala 140:10:chipyard.TestHarness.RocketConfig.fir@241828.4]
  assign _T_785 = _T_42 ? io_dpath_pmp_5_mask[20] : io_dpath_pmp_5_mask[29]; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241834.4]
  assign _T_787 = _T_44 ? io_dpath_pmp_5_mask[11] : _T_785; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241836.4]
  assign _T_789 = _T_46 ? io_dpath_pmp_5_mask[11] : _T_787; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241838.4]
  assign _T_790 = {io_dpath_pmp_5_addr, 2'h0}; // @[PMP.scala 62:36:chipyard.TestHarness.RocketConfig.fir@241839.4]
  assign _T_791 = ~_T_790; // @[PMP.scala 62:29:chipyard.TestHarness.RocketConfig.fir@241840.4]
  assign _T_792 = _T_791 | 32'h3; // @[PMP.scala 62:48:chipyard.TestHarness.RocketConfig.fir@241841.4]
  assign _T_793 = ~_T_792; // @[PMP.scala 62:27:chipyard.TestHarness.RocketConfig.fir@241842.4]
  assign _GEN_178 = {{34'd0}, _T_793}; // @[PMP.scala 100:53:chipyard.TestHarness.RocketConfig.fir@241843.4]
  assign _T_794 = _T_388 ^ _GEN_178; // @[PMP.scala 100:53:chipyard.TestHarness.RocketConfig.fir@241843.4]
  assign _T_796 = _T_794[65:30] != 36'h0; // @[PMP.scala 100:78:chipyard.TestHarness.RocketConfig.fir@241845.4]
  assign _T_803 = _T_794[65:21] != 45'h0; // @[PMP.scala 100:78:chipyard.TestHarness.RocketConfig.fir@241852.4]
  assign _T_810 = _T_794[65:12] != 54'h0; // @[PMP.scala 100:78:chipyard.TestHarness.RocketConfig.fir@241859.4]
  assign _T_812 = _T_42 ? _T_803 : _T_796; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241861.4]
  assign _T_814 = _T_44 ? _T_810 : _T_812; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241863.4]
  assign _T_816 = _T_46 ? _T_810 : _T_814; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241865.4]
  assign _T_817 = _T_789 | _T_816; // @[PMP.scala 100:21:chipyard.TestHarness.RocketConfig.fir@241866.4]
  assign _T_819 = ~io_dpath_pmp_5_cfg_a[0]; // @[PMP.scala 120:45:chipyard.TestHarness.RocketConfig.fir@241868.4]
  assign _T_830 = _T_388 < _GEN_178; // @[PMP.scala 109:32:chipyard.TestHarness.RocketConfig.fir@241879.4]
  assign _T_831 = ~_T_830; // @[PMP.scala 109:28:chipyard.TestHarness.RocketConfig.fir@241880.4]
  assign _T_850 = _T_793 & _T_447; // @[PMP.scala 113:53:chipyard.TestHarness.RocketConfig.fir@241899.4]
  assign _GEN_186 = {{34'd0}, _T_850}; // @[PMP.scala 113:40:chipyard.TestHarness.RocketConfig.fir@241900.4]
  assign _T_851 = _T_448 < _GEN_186; // @[PMP.scala 113:40:chipyard.TestHarness.RocketConfig.fir@241900.4]
  assign _T_852 = _T_773 | _T_831; // @[PMP.scala 115:21:chipyard.TestHarness.RocketConfig.fir@241901.4]
  assign _T_853 = _T_753 & _T_851; // @[PMP.scala 115:62:chipyard.TestHarness.RocketConfig.fir@241902.4]
  assign _T_854 = _T_852 | _T_853; // @[PMP.scala 115:41:chipyard.TestHarness.RocketConfig.fir@241903.4]
  assign _T_855 = _T_819 | _T_854; // @[PMP.scala 120:58:chipyard.TestHarness.RocketConfig.fir@241904.4]
  assign _T_856 = io_dpath_pmp_5_cfg_a[1] ? _T_817 : _T_855; // @[PMP.scala 120:8:chipyard.TestHarness.RocketConfig.fir@241905.4]
  assign _T_857 = _T_779 & _T_856; // @[PMP.scala 140:10:chipyard.TestHarness.RocketConfig.fir@241906.4]
  assign _T_863 = _T_42 ? io_dpath_pmp_6_mask[20] : io_dpath_pmp_6_mask[29]; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241912.4]
  assign _T_865 = _T_44 ? io_dpath_pmp_6_mask[11] : _T_863; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241914.4]
  assign _T_867 = _T_46 ? io_dpath_pmp_6_mask[11] : _T_865; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241916.4]
  assign _T_868 = {io_dpath_pmp_6_addr, 2'h0}; // @[PMP.scala 62:36:chipyard.TestHarness.RocketConfig.fir@241917.4]
  assign _T_869 = ~_T_868; // @[PMP.scala 62:29:chipyard.TestHarness.RocketConfig.fir@241918.4]
  assign _T_870 = _T_869 | 32'h3; // @[PMP.scala 62:48:chipyard.TestHarness.RocketConfig.fir@241919.4]
  assign _T_871 = ~_T_870; // @[PMP.scala 62:27:chipyard.TestHarness.RocketConfig.fir@241920.4]
  assign _GEN_187 = {{34'd0}, _T_871}; // @[PMP.scala 100:53:chipyard.TestHarness.RocketConfig.fir@241921.4]
  assign _T_872 = _T_388 ^ _GEN_187; // @[PMP.scala 100:53:chipyard.TestHarness.RocketConfig.fir@241921.4]
  assign _T_874 = _T_872[65:30] != 36'h0; // @[PMP.scala 100:78:chipyard.TestHarness.RocketConfig.fir@241923.4]
  assign _T_881 = _T_872[65:21] != 45'h0; // @[PMP.scala 100:78:chipyard.TestHarness.RocketConfig.fir@241930.4]
  assign _T_888 = _T_872[65:12] != 54'h0; // @[PMP.scala 100:78:chipyard.TestHarness.RocketConfig.fir@241937.4]
  assign _T_890 = _T_42 ? _T_881 : _T_874; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241939.4]
  assign _T_892 = _T_44 ? _T_888 : _T_890; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241941.4]
  assign _T_894 = _T_46 ? _T_888 : _T_892; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241943.4]
  assign _T_895 = _T_867 | _T_894; // @[PMP.scala 100:21:chipyard.TestHarness.RocketConfig.fir@241944.4]
  assign _T_897 = ~io_dpath_pmp_6_cfg_a[0]; // @[PMP.scala 120:45:chipyard.TestHarness.RocketConfig.fir@241946.4]
  assign _T_908 = _T_388 < _GEN_187; // @[PMP.scala 109:32:chipyard.TestHarness.RocketConfig.fir@241957.4]
  assign _T_909 = ~_T_908; // @[PMP.scala 109:28:chipyard.TestHarness.RocketConfig.fir@241958.4]
  assign _T_928 = _T_871 & _T_447; // @[PMP.scala 113:53:chipyard.TestHarness.RocketConfig.fir@241977.4]
  assign _GEN_195 = {{34'd0}, _T_928}; // @[PMP.scala 113:40:chipyard.TestHarness.RocketConfig.fir@241978.4]
  assign _T_929 = _T_448 < _GEN_195; // @[PMP.scala 113:40:chipyard.TestHarness.RocketConfig.fir@241978.4]
  assign _T_930 = _T_851 | _T_909; // @[PMP.scala 115:21:chipyard.TestHarness.RocketConfig.fir@241979.4]
  assign _T_931 = _T_831 & _T_929; // @[PMP.scala 115:62:chipyard.TestHarness.RocketConfig.fir@241980.4]
  assign _T_932 = _T_930 | _T_931; // @[PMP.scala 115:41:chipyard.TestHarness.RocketConfig.fir@241981.4]
  assign _T_933 = _T_897 | _T_932; // @[PMP.scala 120:58:chipyard.TestHarness.RocketConfig.fir@241982.4]
  assign _T_934 = io_dpath_pmp_6_cfg_a[1] ? _T_895 : _T_933; // @[PMP.scala 120:8:chipyard.TestHarness.RocketConfig.fir@241983.4]
  assign _T_935 = _T_857 & _T_934; // @[PMP.scala 140:10:chipyard.TestHarness.RocketConfig.fir@241984.4]
  assign _T_941 = _T_42 ? io_dpath_pmp_7_mask[20] : io_dpath_pmp_7_mask[29]; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241990.4]
  assign _T_943 = _T_44 ? io_dpath_pmp_7_mask[11] : _T_941; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241992.4]
  assign _T_945 = _T_46 ? io_dpath_pmp_7_mask[11] : _T_943; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@241994.4]
  assign _T_946 = {io_dpath_pmp_7_addr, 2'h0}; // @[PMP.scala 62:36:chipyard.TestHarness.RocketConfig.fir@241995.4]
  assign _T_947 = ~_T_946; // @[PMP.scala 62:29:chipyard.TestHarness.RocketConfig.fir@241996.4]
  assign _T_948 = _T_947 | 32'h3; // @[PMP.scala 62:48:chipyard.TestHarness.RocketConfig.fir@241997.4]
  assign _T_949 = ~_T_948; // @[PMP.scala 62:27:chipyard.TestHarness.RocketConfig.fir@241998.4]
  assign _GEN_196 = {{34'd0}, _T_949}; // @[PMP.scala 100:53:chipyard.TestHarness.RocketConfig.fir@241999.4]
  assign _T_950 = _T_388 ^ _GEN_196; // @[PMP.scala 100:53:chipyard.TestHarness.RocketConfig.fir@241999.4]
  assign _T_952 = _T_950[65:30] != 36'h0; // @[PMP.scala 100:78:chipyard.TestHarness.RocketConfig.fir@242001.4]
  assign _T_959 = _T_950[65:21] != 45'h0; // @[PMP.scala 100:78:chipyard.TestHarness.RocketConfig.fir@242008.4]
  assign _T_966 = _T_950[65:12] != 54'h0; // @[PMP.scala 100:78:chipyard.TestHarness.RocketConfig.fir@242015.4]
  assign _T_968 = _T_42 ? _T_959 : _T_952; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@242017.4]
  assign _T_970 = _T_44 ? _T_966 : _T_968; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@242019.4]
  assign _T_972 = _T_46 ? _T_966 : _T_970; // @[package.scala 32:76:chipyard.TestHarness.RocketConfig.fir@242021.4]
  assign _T_973 = _T_945 | _T_972; // @[PMP.scala 100:21:chipyard.TestHarness.RocketConfig.fir@242022.4]
  assign _T_975 = ~io_dpath_pmp_7_cfg_a[0]; // @[PMP.scala 120:45:chipyard.TestHarness.RocketConfig.fir@242024.4]
  assign _T_986 = _T_388 < _GEN_196; // @[PMP.scala 109:32:chipyard.TestHarness.RocketConfig.fir@242035.4]
  assign _T_987 = ~_T_986; // @[PMP.scala 109:28:chipyard.TestHarness.RocketConfig.fir@242036.4]
  assign _T_1006 = _T_949 & _T_447; // @[PMP.scala 113:53:chipyard.TestHarness.RocketConfig.fir@242055.4]
  assign _GEN_204 = {{34'd0}, _T_1006}; // @[PMP.scala 113:40:chipyard.TestHarness.RocketConfig.fir@242056.4]
  assign _T_1007 = _T_448 < _GEN_204; // @[PMP.scala 113:40:chipyard.TestHarness.RocketConfig.fir@242056.4]
  assign _T_1008 = _T_929 | _T_987; // @[PMP.scala 115:21:chipyard.TestHarness.RocketConfig.fir@242057.4]
  assign _T_1009 = _T_909 & _T_1007; // @[PMP.scala 115:62:chipyard.TestHarness.RocketConfig.fir@242058.4]
  assign _T_1010 = _T_1008 | _T_1009; // @[PMP.scala 115:41:chipyard.TestHarness.RocketConfig.fir@242059.4]
  assign _T_1011 = _T_975 | _T_1010; // @[PMP.scala 120:58:chipyard.TestHarness.RocketConfig.fir@242060.4]
  assign _T_1012 = io_dpath_pmp_7_cfg_a[1] ? _T_973 : _T_1011; // @[PMP.scala 120:8:chipyard.TestHarness.RocketConfig.fir@242061.4]
  assign pmpHomogeneous = _T_935 & _T_1012; // @[PMP.scala 140:10:chipyard.TestHarness.RocketConfig.fir@242062.4]
  assign homogeneous = pmaHomogeneous & pmpHomogeneous; // @[PTW.scala 269:36:chipyard.TestHarness.RocketConfig.fir@242063.4]
  assign _T_1017 = 3'h0 == state; // @[Conditional.scala 37:30:chipyard.TestHarness.RocketConfig.fir@242097.4]
  assign _T_1019 = arb_io_out_bits_valid ? 3'h1 : 3'h0; // @[PTW.scala 291:26:chipyard.TestHarness.RocketConfig.fir@242101.8]
  assign _GEN_56 = _T_55 ? _T_1019 : state; // @[PTW.scala 290:32:chipyard.TestHarness.RocketConfig.fir@242100.6]
  assign _T_1022 = 3'h1 == state; // @[Conditional.scala 37:30:chipyard.TestHarness.RocketConfig.fir@242109.6]
  assign _T_1024 = count + 2'h1; // @[PTW.scala 297:24:chipyard.TestHarness.RocketConfig.fir@242113.10]
  assign _T_1025 = io_mem_req_ready ? 3'h2 : 3'h1; // @[PTW.scala 299:26:chipyard.TestHarness.RocketConfig.fir@242117.10]
  assign _GEN_58 = pte_cache_hit ? state : _T_1025; // @[PTW.scala 296:28:chipyard.TestHarness.RocketConfig.fir@242111.8]
  assign _T_1026 = 3'h2 == state; // @[Conditional.scala 37:30:chipyard.TestHarness.RocketConfig.fir@242122.8]
  assign _T_1027 = s2_hit ? 3'h1 : 3'h4; // @[PTW.scala 304:24:chipyard.TestHarness.RocketConfig.fir@242124.10]
  assign _T_1028 = 3'h4 == state; // @[Conditional.scala 37:30:chipyard.TestHarness.RocketConfig.fir@242128.10]
  assign _GEN_59 = ~r_req_dest; // @[PTW.scala 311:32:chipyard.TestHarness.RocketConfig.fir@242136.14]
  assign _GEN_62 = io_mem_s2_xcpt_ae_ld ? 3'h0 : 3'h5; // @[PTW.scala 308:35:chipyard.TestHarness.RocketConfig.fir@242131.12]
  assign _GEN_63 = io_mem_s2_xcpt_ae_ld & _GEN_59; // @[PTW.scala 308:35:chipyard.TestHarness.RocketConfig.fir@242131.12]
  assign _GEN_64 = io_mem_s2_xcpt_ae_ld & r_req_dest; // @[PTW.scala 308:35:chipyard.TestHarness.RocketConfig.fir@242131.12]
  assign _T_1031 = 3'h7 == state; // @[Conditional.scala 37:30:chipyard.TestHarness.RocketConfig.fir@242140.12]
  assign _T_1034 = ~homogeneous; // @[PTW.scala 318:13:chipyard.TestHarness.RocketConfig.fir@242147.14]
  assign _GEN_69 = _T_1031 ? 3'h0 : state; // @[Conditional.scala 39:67:chipyard.TestHarness.RocketConfig.fir@242141.12]
  assign _GEN_70 = _T_1031 & _GEN_59; // @[Conditional.scala 39:67:chipyard.TestHarness.RocketConfig.fir@242141.12]
  assign _GEN_71 = _T_1031 & r_req_dest; // @[Conditional.scala 39:67:chipyard.TestHarness.RocketConfig.fir@242141.12]
  assign _GEN_75 = _T_1028 ? _GEN_62 : _GEN_69; // @[Conditional.scala 39:67:chipyard.TestHarness.RocketConfig.fir@242129.10]
  assign _GEN_76 = _T_1028 & io_mem_s2_xcpt_ae_ld; // @[Conditional.scala 39:67:chipyard.TestHarness.RocketConfig.fir@242129.10]
  assign _GEN_77 = _T_1028 ? _GEN_63 : _GEN_70; // @[Conditional.scala 39:67:chipyard.TestHarness.RocketConfig.fir@242129.10]
  assign _GEN_78 = _T_1028 ? _GEN_64 : _GEN_71; // @[Conditional.scala 39:67:chipyard.TestHarness.RocketConfig.fir@242129.10]
  assign _GEN_81 = _T_1026 ? _T_1027 : _GEN_75; // @[Conditional.scala 39:67:chipyard.TestHarness.RocketConfig.fir@242123.8]
  assign _GEN_83 = _T_1026 ? 1'h0 : _GEN_77; // @[Conditional.scala 39:67:chipyard.TestHarness.RocketConfig.fir@242123.8]
  assign _GEN_84 = _T_1026 ? 1'h0 : _GEN_78; // @[Conditional.scala 39:67:chipyard.TestHarness.RocketConfig.fir@242123.8]
  assign _GEN_88 = _T_1022 ? _GEN_58 : _GEN_81; // @[Conditional.scala 39:67:chipyard.TestHarness.RocketConfig.fir@242110.6]
  assign _GEN_90 = _T_1022 ? 1'h0 : _GEN_83; // @[Conditional.scala 39:67:chipyard.TestHarness.RocketConfig.fir@242110.6]
  assign _GEN_91 = _T_1022 ? 1'h0 : _GEN_84; // @[Conditional.scala 39:67:chipyard.TestHarness.RocketConfig.fir@242110.6]
  assign _GEN_93 = _T_1017 ? _GEN_56 : _GEN_88; // @[Conditional.scala 40:58:chipyard.TestHarness.RocketConfig.fir@242098.4]
  assign _GEN_96 = _T_1017 ? 1'h0 : _GEN_90; // @[Conditional.scala 40:58:chipyard.TestHarness.RocketConfig.fir@242098.4]
  assign _GEN_97 = _T_1017 ? 1'h0 : _GEN_91; // @[Conditional.scala 40:58:chipyard.TestHarness.RocketConfig.fir@242098.4]
  assign _T_1035 = ~l2_error; // @[PTW.scala 332:19:chipyard.TestHarness.RocketConfig.fir@242153.4]
  assign _T_1036 = s2_hit & _T_1035; // @[PTW.scala 332:16:chipyard.TestHarness.RocketConfig.fir@242154.4]
  assign _T_1037 = state == 3'h7; // @[PTW.scala 333:15:chipyard.TestHarness.RocketConfig.fir@242155.4]
  assign _T_1039 = _T_1037 & _T_1034; // @[PTW.scala 333:40:chipyard.TestHarness.RocketConfig.fir@242157.4]
  assign _T_1041 = _T_119 & pte_cache_hit; // @[PTW.scala 334:25:chipyard.TestHarness.RocketConfig.fir@242163.4]
  assign pte_2_ppn = {{10'd0}, io_dpath_ptbr_ppn}; // @[:chipyard.TestHarness.RocketConfig.fir@242169.4 :chipyard.TestHarness.RocketConfig.fir@242171.4 PTW.scala 327:13:chipyard.TestHarness.RocketConfig.fir@242172.4]
  assign _T_1043_ppn = _T_55 ? pte_2_ppn : r_pte_ppn; // @[PTW.scala 335:8:chipyard.TestHarness.RocketConfig.fir@242173.4]
  assign pte_1_ppn = {{34'd0}, pte_cache_data}; // @[:chipyard.TestHarness.RocketConfig.fir@242164.4 :chipyard.TestHarness.RocketConfig.fir@242166.4 PTW.scala 327:13:chipyard.TestHarness.RocketConfig.fir@242167.4]
  assign _T_1044_ppn = _T_1041 ? pte_1_ppn : _T_1043_ppn; // @[PTW.scala 334:8:chipyard.TestHarness.RocketConfig.fir@242174.4]
  assign _T_1044_d = _T_1041 ? s2_entry_d : r_pte_d; // @[PTW.scala 334:8:chipyard.TestHarness.RocketConfig.fir@242174.4]
  assign _T_1044_a = _T_1041 ? s2_entry_a : r_pte_a; // @[PTW.scala 334:8:chipyard.TestHarness.RocketConfig.fir@242174.4]
  assign _T_1044_g = _T_1041 ? s2_g : r_pte_g; // @[PTW.scala 334:8:chipyard.TestHarness.RocketConfig.fir@242174.4]
  assign _T_1044_u = _T_1041 ? s2_entry_u : r_pte_u; // @[PTW.scala 334:8:chipyard.TestHarness.RocketConfig.fir@242174.4]
  assign _T_1044_x = _T_1041 ? s2_entry_x : r_pte_x; // @[PTW.scala 334:8:chipyard.TestHarness.RocketConfig.fir@242174.4]
  assign _T_1044_w = _T_1041 ? s2_entry_w : r_pte_w; // @[PTW.scala 334:8:chipyard.TestHarness.RocketConfig.fir@242174.4]
  assign _T_1044_r = _T_1041 ? s2_entry_r : r_pte_r; // @[PTW.scala 334:8:chipyard.TestHarness.RocketConfig.fir@242174.4]
  assign _T_1044_v = _T_1041 | r_pte_v; // @[PTW.scala 334:8:chipyard.TestHarness.RocketConfig.fir@242174.4]
  assign _T_1045_ppn = _T_1039 ? fragmented_superpage_ppn : _T_1044_ppn; // @[PTW.scala 333:8:chipyard.TestHarness.RocketConfig.fir@242175.4]
  assign _T_1045_d = _T_1039 ? r_pte_d : _T_1044_d; // @[PTW.scala 333:8:chipyard.TestHarness.RocketConfig.fir@242175.4]
  assign _T_1045_a = _T_1039 ? r_pte_a : _T_1044_a; // @[PTW.scala 333:8:chipyard.TestHarness.RocketConfig.fir@242175.4]
  assign _T_1045_g = _T_1039 ? r_pte_g : _T_1044_g; // @[PTW.scala 333:8:chipyard.TestHarness.RocketConfig.fir@242175.4]
  assign _T_1045_u = _T_1039 ? r_pte_u : _T_1044_u; // @[PTW.scala 333:8:chipyard.TestHarness.RocketConfig.fir@242175.4]
  assign _T_1045_x = _T_1039 ? r_pte_x : _T_1044_x; // @[PTW.scala 333:8:chipyard.TestHarness.RocketConfig.fir@242175.4]
  assign _T_1045_w = _T_1039 ? r_pte_w : _T_1044_w; // @[PTW.scala 333:8:chipyard.TestHarness.RocketConfig.fir@242175.4]
  assign _T_1045_r = _T_1039 ? r_pte_r : _T_1044_r; // @[PTW.scala 333:8:chipyard.TestHarness.RocketConfig.fir@242175.4]
  assign _T_1045_v = _T_1039 ? r_pte_v : _T_1044_v; // @[PTW.scala 333:8:chipyard.TestHarness.RocketConfig.fir@242175.4]
  assign s2_pte_ppn = {{34'd0}, s2_entry_ppn}; // @[PTW.scala 234:22:chipyard.TestHarness.RocketConfig.fir@241274.4 PTW.scala 235:12:chipyard.TestHarness.RocketConfig.fir@241276.4]
  assign _T_1046_ppn = _T_1036 ? s2_pte_ppn : _T_1045_ppn; // @[PTW.scala 332:8:chipyard.TestHarness.RocketConfig.fir@242176.4]
  assign _T_1046_d = _T_1036 ? s2_entry_d : _T_1045_d; // @[PTW.scala 332:8:chipyard.TestHarness.RocketConfig.fir@242176.4]
  assign _T_1046_a = _T_1036 ? s2_entry_a : _T_1045_a; // @[PTW.scala 332:8:chipyard.TestHarness.RocketConfig.fir@242176.4]
  assign _T_1046_g = _T_1036 ? s2_g : _T_1045_g; // @[PTW.scala 332:8:chipyard.TestHarness.RocketConfig.fir@242176.4]
  assign _T_1046_u = _T_1036 ? s2_entry_u : _T_1045_u; // @[PTW.scala 332:8:chipyard.TestHarness.RocketConfig.fir@242176.4]
  assign _T_1046_x = _T_1036 ? s2_entry_x : _T_1045_x; // @[PTW.scala 332:8:chipyard.TestHarness.RocketConfig.fir@242176.4]
  assign _T_1046_w = _T_1036 ? s2_entry_w : _T_1045_w; // @[PTW.scala 332:8:chipyard.TestHarness.RocketConfig.fir@242176.4]
  assign _T_1046_r = _T_1036 ? s2_entry_r : _T_1045_r; // @[PTW.scala 332:8:chipyard.TestHarness.RocketConfig.fir@242176.4]
  assign _T_1046_v = _T_1036 | _T_1045_v; // @[PTW.scala 332:8:chipyard.TestHarness.RocketConfig.fir@242176.4]
  assign _T_1051 = state == 3'h2; // @[PTW.scala 339:37:chipyard.TestHarness.RocketConfig.fir@242188.6]
  assign _T_1052 = _T_119 | _T_1051; // @[PTW.scala 339:28:chipyard.TestHarness.RocketConfig.fir@242189.6]
  assign _T_1054 = _T_1052 | reset; // @[PTW.scala 339:11:chipyard.TestHarness.RocketConfig.fir@242191.6]
  assign _T_1055 = ~_T_1054; // @[PTW.scala 339:11:chipyard.TestHarness.RocketConfig.fir@242192.6]
  assign _GEN_99 = _GEN_59 | _GEN_96; // @[PTW.scala 341:28:chipyard.TestHarness.RocketConfig.fir@242200.6]
  assign _GEN_100 = r_req_dest | _GEN_97; // @[PTW.scala 341:28:chipyard.TestHarness.RocketConfig.fir@242200.6]
  assign _GEN_101 = _T_1036 ? 3'h0 : _GEN_93; // @[PTW.scala 338:30:chipyard.TestHarness.RocketConfig.fir@242186.4]
  assign _GEN_102 = _T_1036 ? _GEN_99 : _GEN_96; // @[PTW.scala 338:30:chipyard.TestHarness.RocketConfig.fir@242186.4]
  assign _GEN_103 = _T_1036 ? _GEN_100 : _GEN_97; // @[PTW.scala 338:30:chipyard.TestHarness.RocketConfig.fir@242186.4]
  assign _T_1058 = state == 3'h5; // @[PTW.scala 346:18:chipyard.TestHarness.RocketConfig.fir@242205.6]
  assign _T_1060 = _T_1058 | reset; // @[PTW.scala 346:11:chipyard.TestHarness.RocketConfig.fir@242207.6]
  assign _T_1061 = ~_T_1060; // @[PTW.scala 346:11:chipyard.TestHarness.RocketConfig.fir@242208.6]
  assign _T_1065 = res_v & _T_36; // @[PTW.scala 351:26:chipyard.TestHarness.RocketConfig.fir@242221.8]
  assign _T_1067 = _T_1065 & _T_44; // @[PTW.scala 351:44:chipyard.TestHarness.RocketConfig.fir@242223.8]
  assign ae = res_v & invalid_paddr; // @[PTW.scala 352:22:chipyard.TestHarness.RocketConfig.fir@242225.8]
  assign _GEN_106 = _GEN_59 | _GEN_102; // @[PTW.scala 358:32:chipyard.TestHarness.RocketConfig.fir@242238.10]
  assign _GEN_107 = r_req_dest | _GEN_103; // @[PTW.scala 358:32:chipyard.TestHarness.RocketConfig.fir@242238.10]
  assign _GEN_111 = traverse ? 3'h1 : 3'h0; // @[PTW.scala 347:21:chipyard.TestHarness.RocketConfig.fir@242213.6]
  assign _GEN_113 = traverse ? 1'h0 : _T_1067; // @[PTW.scala 347:21:chipyard.TestHarness.RocketConfig.fir@242213.6]
  assign _GEN_117 = mem_resp_valid ? _GEN_111 : _GEN_101; // @[PTW.scala 345:25:chipyard.TestHarness.RocketConfig.fir@242204.4]
  assign _T_1074 = state == 3'h4; // @[PTW.scala 363:18:chipyard.TestHarness.RocketConfig.fir@242243.6]
  assign _T_1076 = _T_1074 | reset; // @[PTW.scala 363:11:chipyard.TestHarness.RocketConfig.fir@242245.6]
  assign _T_1077 = ~_T_1076; // @[PTW.scala 363:11:chipyard.TestHarness.RocketConfig.fir@242246.6]
  assign io_requestor_0_req_ready = arb_io_in_0_ready; // @[PTW.scala 106:13:chipyard.TestHarness.RocketConfig.fir@240879.4]
  assign io_requestor_0_resp_valid = resp_valid_0; // @[PTW.scala 272:32:chipyard.TestHarness.RocketConfig.fir@242064.4]
  assign io_requestor_0_resp_bits_ae = resp_ae; // @[PTW.scala 273:34:chipyard.TestHarness.RocketConfig.fir@242065.4]
  assign io_requestor_0_resp_bits_pte_ppn = r_pte_ppn; // @[PTW.scala 274:35:chipyard.TestHarness.RocketConfig.fir@242066.4]
  assign io_requestor_0_resp_bits_pte_d = r_pte_d; // @[PTW.scala 274:35:chipyard.TestHarness.RocketConfig.fir@242066.4]
  assign io_requestor_0_resp_bits_pte_a = r_pte_a; // @[PTW.scala 274:35:chipyard.TestHarness.RocketConfig.fir@242066.4]
  assign io_requestor_0_resp_bits_pte_g = r_pte_g; // @[PTW.scala 274:35:chipyard.TestHarness.RocketConfig.fir@242066.4]
  assign io_requestor_0_resp_bits_pte_u = r_pte_u; // @[PTW.scala 274:35:chipyard.TestHarness.RocketConfig.fir@242066.4]
  assign io_requestor_0_resp_bits_pte_x = r_pte_x; // @[PTW.scala 274:35:chipyard.TestHarness.RocketConfig.fir@242066.4]
  assign io_requestor_0_resp_bits_pte_w = r_pte_w; // @[PTW.scala 274:35:chipyard.TestHarness.RocketConfig.fir@242066.4]
  assign io_requestor_0_resp_bits_pte_r = r_pte_r; // @[PTW.scala 274:35:chipyard.TestHarness.RocketConfig.fir@242066.4]
  assign io_requestor_0_resp_bits_pte_v = r_pte_v; // @[PTW.scala 274:35:chipyard.TestHarness.RocketConfig.fir@242066.4]
  assign io_requestor_0_resp_bits_level = count; // @[PTW.scala 275:37:chipyard.TestHarness.RocketConfig.fir@242067.4]
  assign io_requestor_0_resp_bits_homogeneous = pmaHomogeneous & pmpHomogeneous; // @[PTW.scala 276:43:chipyard.TestHarness.RocketConfig.fir@242069.4]
  assign io_requestor_0_ptbr_mode = io_dpath_ptbr_mode; // @[PTW.scala 278:26:chipyard.TestHarness.RocketConfig.fir@242072.4]
  assign io_requestor_0_status_debug = io_dpath_status_debug; // @[PTW.scala 280:28:chipyard.TestHarness.RocketConfig.fir@242074.4]
  assign io_requestor_0_status_dprv = io_dpath_status_dprv; // @[PTW.scala 280:28:chipyard.TestHarness.RocketConfig.fir@242074.4]
  assign io_requestor_0_status_mxr = io_dpath_status_mxr; // @[PTW.scala 280:28:chipyard.TestHarness.RocketConfig.fir@242074.4]
  assign io_requestor_0_status_sum = io_dpath_status_sum; // @[PTW.scala 280:28:chipyard.TestHarness.RocketConfig.fir@242074.4]
  assign io_requestor_0_pmp_0_cfg_l = io_dpath_pmp_0_cfg_l; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242075.4]
  assign io_requestor_0_pmp_0_cfg_a = io_dpath_pmp_0_cfg_a; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242075.4]
  assign io_requestor_0_pmp_0_cfg_x = io_dpath_pmp_0_cfg_x; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242075.4]
  assign io_requestor_0_pmp_0_cfg_w = io_dpath_pmp_0_cfg_w; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242075.4]
  assign io_requestor_0_pmp_0_cfg_r = io_dpath_pmp_0_cfg_r; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242075.4]
  assign io_requestor_0_pmp_0_addr = io_dpath_pmp_0_addr; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242075.4]
  assign io_requestor_0_pmp_0_mask = io_dpath_pmp_0_mask; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242075.4]
  assign io_requestor_0_pmp_1_cfg_l = io_dpath_pmp_1_cfg_l; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242075.4]
  assign io_requestor_0_pmp_1_cfg_a = io_dpath_pmp_1_cfg_a; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242075.4]
  assign io_requestor_0_pmp_1_cfg_x = io_dpath_pmp_1_cfg_x; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242075.4]
  assign io_requestor_0_pmp_1_cfg_w = io_dpath_pmp_1_cfg_w; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242075.4]
  assign io_requestor_0_pmp_1_cfg_r = io_dpath_pmp_1_cfg_r; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242075.4]
  assign io_requestor_0_pmp_1_addr = io_dpath_pmp_1_addr; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242075.4]
  assign io_requestor_0_pmp_1_mask = io_dpath_pmp_1_mask; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242075.4]
  assign io_requestor_0_pmp_2_cfg_l = io_dpath_pmp_2_cfg_l; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242075.4]
  assign io_requestor_0_pmp_2_cfg_a = io_dpath_pmp_2_cfg_a; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242075.4]
  assign io_requestor_0_pmp_2_cfg_x = io_dpath_pmp_2_cfg_x; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242075.4]
  assign io_requestor_0_pmp_2_cfg_w = io_dpath_pmp_2_cfg_w; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242075.4]
  assign io_requestor_0_pmp_2_cfg_r = io_dpath_pmp_2_cfg_r; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242075.4]
  assign io_requestor_0_pmp_2_addr = io_dpath_pmp_2_addr; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242075.4]
  assign io_requestor_0_pmp_2_mask = io_dpath_pmp_2_mask; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242075.4]
  assign io_requestor_0_pmp_3_cfg_l = io_dpath_pmp_3_cfg_l; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242075.4]
  assign io_requestor_0_pmp_3_cfg_a = io_dpath_pmp_3_cfg_a; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242075.4]
  assign io_requestor_0_pmp_3_cfg_x = io_dpath_pmp_3_cfg_x; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242075.4]
  assign io_requestor_0_pmp_3_cfg_w = io_dpath_pmp_3_cfg_w; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242075.4]
  assign io_requestor_0_pmp_3_cfg_r = io_dpath_pmp_3_cfg_r; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242075.4]
  assign io_requestor_0_pmp_3_addr = io_dpath_pmp_3_addr; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242075.4]
  assign io_requestor_0_pmp_3_mask = io_dpath_pmp_3_mask; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242075.4]
  assign io_requestor_0_pmp_4_cfg_l = io_dpath_pmp_4_cfg_l; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242075.4]
  assign io_requestor_0_pmp_4_cfg_a = io_dpath_pmp_4_cfg_a; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242075.4]
  assign io_requestor_0_pmp_4_cfg_x = io_dpath_pmp_4_cfg_x; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242075.4]
  assign io_requestor_0_pmp_4_cfg_w = io_dpath_pmp_4_cfg_w; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242075.4]
  assign io_requestor_0_pmp_4_cfg_r = io_dpath_pmp_4_cfg_r; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242075.4]
  assign io_requestor_0_pmp_4_addr = io_dpath_pmp_4_addr; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242075.4]
  assign io_requestor_0_pmp_4_mask = io_dpath_pmp_4_mask; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242075.4]
  assign io_requestor_0_pmp_5_cfg_l = io_dpath_pmp_5_cfg_l; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242075.4]
  assign io_requestor_0_pmp_5_cfg_a = io_dpath_pmp_5_cfg_a; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242075.4]
  assign io_requestor_0_pmp_5_cfg_x = io_dpath_pmp_5_cfg_x; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242075.4]
  assign io_requestor_0_pmp_5_cfg_w = io_dpath_pmp_5_cfg_w; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242075.4]
  assign io_requestor_0_pmp_5_cfg_r = io_dpath_pmp_5_cfg_r; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242075.4]
  assign io_requestor_0_pmp_5_addr = io_dpath_pmp_5_addr; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242075.4]
  assign io_requestor_0_pmp_5_mask = io_dpath_pmp_5_mask; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242075.4]
  assign io_requestor_0_pmp_6_cfg_l = io_dpath_pmp_6_cfg_l; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242075.4]
  assign io_requestor_0_pmp_6_cfg_a = io_dpath_pmp_6_cfg_a; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242075.4]
  assign io_requestor_0_pmp_6_cfg_x = io_dpath_pmp_6_cfg_x; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242075.4]
  assign io_requestor_0_pmp_6_cfg_w = io_dpath_pmp_6_cfg_w; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242075.4]
  assign io_requestor_0_pmp_6_cfg_r = io_dpath_pmp_6_cfg_r; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242075.4]
  assign io_requestor_0_pmp_6_addr = io_dpath_pmp_6_addr; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242075.4]
  assign io_requestor_0_pmp_6_mask = io_dpath_pmp_6_mask; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242075.4]
  assign io_requestor_0_pmp_7_cfg_l = io_dpath_pmp_7_cfg_l; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242075.4]
  assign io_requestor_0_pmp_7_cfg_a = io_dpath_pmp_7_cfg_a; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242075.4]
  assign io_requestor_0_pmp_7_cfg_x = io_dpath_pmp_7_cfg_x; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242075.4]
  assign io_requestor_0_pmp_7_cfg_w = io_dpath_pmp_7_cfg_w; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242075.4]
  assign io_requestor_0_pmp_7_cfg_r = io_dpath_pmp_7_cfg_r; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242075.4]
  assign io_requestor_0_pmp_7_addr = io_dpath_pmp_7_addr; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242075.4]
  assign io_requestor_0_pmp_7_mask = io_dpath_pmp_7_mask; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242075.4]
  assign io_requestor_1_req_ready = arb_io_in_1_ready; // @[PTW.scala 106:13:chipyard.TestHarness.RocketConfig.fir@240880.4]
  assign io_requestor_1_resp_valid = resp_valid_1; // @[PTW.scala 272:32:chipyard.TestHarness.RocketConfig.fir@242076.4]
  assign io_requestor_1_resp_bits_ae = resp_ae; // @[PTW.scala 273:34:chipyard.TestHarness.RocketConfig.fir@242077.4]
  assign io_requestor_1_resp_bits_pte_ppn = r_pte_ppn; // @[PTW.scala 274:35:chipyard.TestHarness.RocketConfig.fir@242078.4]
  assign io_requestor_1_resp_bits_pte_d = r_pte_d; // @[PTW.scala 274:35:chipyard.TestHarness.RocketConfig.fir@242078.4]
  assign io_requestor_1_resp_bits_pte_a = r_pte_a; // @[PTW.scala 274:35:chipyard.TestHarness.RocketConfig.fir@242078.4]
  assign io_requestor_1_resp_bits_pte_g = r_pte_g; // @[PTW.scala 274:35:chipyard.TestHarness.RocketConfig.fir@242078.4]
  assign io_requestor_1_resp_bits_pte_u = r_pte_u; // @[PTW.scala 274:35:chipyard.TestHarness.RocketConfig.fir@242078.4]
  assign io_requestor_1_resp_bits_pte_x = r_pte_x; // @[PTW.scala 274:35:chipyard.TestHarness.RocketConfig.fir@242078.4]
  assign io_requestor_1_resp_bits_pte_w = r_pte_w; // @[PTW.scala 274:35:chipyard.TestHarness.RocketConfig.fir@242078.4]
  assign io_requestor_1_resp_bits_pte_r = r_pte_r; // @[PTW.scala 274:35:chipyard.TestHarness.RocketConfig.fir@242078.4]
  assign io_requestor_1_resp_bits_pte_v = r_pte_v; // @[PTW.scala 274:35:chipyard.TestHarness.RocketConfig.fir@242078.4]
  assign io_requestor_1_resp_bits_level = count; // @[PTW.scala 275:37:chipyard.TestHarness.RocketConfig.fir@242079.4]
  assign io_requestor_1_resp_bits_homogeneous = pmaHomogeneous & pmpHomogeneous; // @[PTW.scala 276:43:chipyard.TestHarness.RocketConfig.fir@242081.4]
  assign io_requestor_1_ptbr_mode = io_dpath_ptbr_mode; // @[PTW.scala 278:26:chipyard.TestHarness.RocketConfig.fir@242084.4]
  assign io_requestor_1_status_debug = io_dpath_status_debug; // @[PTW.scala 280:28:chipyard.TestHarness.RocketConfig.fir@242086.4]
  assign io_requestor_1_status_prv = io_dpath_status_prv; // @[PTW.scala 280:28:chipyard.TestHarness.RocketConfig.fir@242086.4]
  assign io_requestor_1_pmp_0_cfg_l = io_dpath_pmp_0_cfg_l; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242087.4]
  assign io_requestor_1_pmp_0_cfg_a = io_dpath_pmp_0_cfg_a; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242087.4]
  assign io_requestor_1_pmp_0_cfg_x = io_dpath_pmp_0_cfg_x; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242087.4]
  assign io_requestor_1_pmp_0_cfg_w = io_dpath_pmp_0_cfg_w; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242087.4]
  assign io_requestor_1_pmp_0_cfg_r = io_dpath_pmp_0_cfg_r; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242087.4]
  assign io_requestor_1_pmp_0_addr = io_dpath_pmp_0_addr; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242087.4]
  assign io_requestor_1_pmp_0_mask = io_dpath_pmp_0_mask; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242087.4]
  assign io_requestor_1_pmp_1_cfg_l = io_dpath_pmp_1_cfg_l; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242087.4]
  assign io_requestor_1_pmp_1_cfg_a = io_dpath_pmp_1_cfg_a; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242087.4]
  assign io_requestor_1_pmp_1_cfg_x = io_dpath_pmp_1_cfg_x; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242087.4]
  assign io_requestor_1_pmp_1_cfg_w = io_dpath_pmp_1_cfg_w; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242087.4]
  assign io_requestor_1_pmp_1_cfg_r = io_dpath_pmp_1_cfg_r; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242087.4]
  assign io_requestor_1_pmp_1_addr = io_dpath_pmp_1_addr; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242087.4]
  assign io_requestor_1_pmp_1_mask = io_dpath_pmp_1_mask; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242087.4]
  assign io_requestor_1_pmp_2_cfg_l = io_dpath_pmp_2_cfg_l; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242087.4]
  assign io_requestor_1_pmp_2_cfg_a = io_dpath_pmp_2_cfg_a; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242087.4]
  assign io_requestor_1_pmp_2_cfg_x = io_dpath_pmp_2_cfg_x; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242087.4]
  assign io_requestor_1_pmp_2_cfg_w = io_dpath_pmp_2_cfg_w; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242087.4]
  assign io_requestor_1_pmp_2_cfg_r = io_dpath_pmp_2_cfg_r; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242087.4]
  assign io_requestor_1_pmp_2_addr = io_dpath_pmp_2_addr; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242087.4]
  assign io_requestor_1_pmp_2_mask = io_dpath_pmp_2_mask; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242087.4]
  assign io_requestor_1_pmp_3_cfg_l = io_dpath_pmp_3_cfg_l; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242087.4]
  assign io_requestor_1_pmp_3_cfg_a = io_dpath_pmp_3_cfg_a; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242087.4]
  assign io_requestor_1_pmp_3_cfg_x = io_dpath_pmp_3_cfg_x; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242087.4]
  assign io_requestor_1_pmp_3_cfg_w = io_dpath_pmp_3_cfg_w; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242087.4]
  assign io_requestor_1_pmp_3_cfg_r = io_dpath_pmp_3_cfg_r; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242087.4]
  assign io_requestor_1_pmp_3_addr = io_dpath_pmp_3_addr; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242087.4]
  assign io_requestor_1_pmp_3_mask = io_dpath_pmp_3_mask; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242087.4]
  assign io_requestor_1_pmp_4_cfg_l = io_dpath_pmp_4_cfg_l; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242087.4]
  assign io_requestor_1_pmp_4_cfg_a = io_dpath_pmp_4_cfg_a; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242087.4]
  assign io_requestor_1_pmp_4_cfg_x = io_dpath_pmp_4_cfg_x; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242087.4]
  assign io_requestor_1_pmp_4_cfg_w = io_dpath_pmp_4_cfg_w; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242087.4]
  assign io_requestor_1_pmp_4_cfg_r = io_dpath_pmp_4_cfg_r; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242087.4]
  assign io_requestor_1_pmp_4_addr = io_dpath_pmp_4_addr; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242087.4]
  assign io_requestor_1_pmp_4_mask = io_dpath_pmp_4_mask; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242087.4]
  assign io_requestor_1_pmp_5_cfg_l = io_dpath_pmp_5_cfg_l; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242087.4]
  assign io_requestor_1_pmp_5_cfg_a = io_dpath_pmp_5_cfg_a; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242087.4]
  assign io_requestor_1_pmp_5_cfg_x = io_dpath_pmp_5_cfg_x; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242087.4]
  assign io_requestor_1_pmp_5_cfg_w = io_dpath_pmp_5_cfg_w; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242087.4]
  assign io_requestor_1_pmp_5_cfg_r = io_dpath_pmp_5_cfg_r; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242087.4]
  assign io_requestor_1_pmp_5_addr = io_dpath_pmp_5_addr; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242087.4]
  assign io_requestor_1_pmp_5_mask = io_dpath_pmp_5_mask; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242087.4]
  assign io_requestor_1_pmp_6_cfg_l = io_dpath_pmp_6_cfg_l; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242087.4]
  assign io_requestor_1_pmp_6_cfg_a = io_dpath_pmp_6_cfg_a; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242087.4]
  assign io_requestor_1_pmp_6_cfg_x = io_dpath_pmp_6_cfg_x; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242087.4]
  assign io_requestor_1_pmp_6_cfg_w = io_dpath_pmp_6_cfg_w; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242087.4]
  assign io_requestor_1_pmp_6_cfg_r = io_dpath_pmp_6_cfg_r; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242087.4]
  assign io_requestor_1_pmp_6_addr = io_dpath_pmp_6_addr; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242087.4]
  assign io_requestor_1_pmp_6_mask = io_dpath_pmp_6_mask; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242087.4]
  assign io_requestor_1_pmp_7_cfg_l = io_dpath_pmp_7_cfg_l; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242087.4]
  assign io_requestor_1_pmp_7_cfg_a = io_dpath_pmp_7_cfg_a; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242087.4]
  assign io_requestor_1_pmp_7_cfg_x = io_dpath_pmp_7_cfg_x; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242087.4]
  assign io_requestor_1_pmp_7_cfg_w = io_dpath_pmp_7_cfg_w; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242087.4]
  assign io_requestor_1_pmp_7_cfg_r = io_dpath_pmp_7_cfg_r; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242087.4]
  assign io_requestor_1_pmp_7_addr = io_dpath_pmp_7_addr; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242087.4]
  assign io_requestor_1_pmp_7_mask = io_dpath_pmp_7_mask; // @[PTW.scala 281:25:chipyard.TestHarness.RocketConfig.fir@242087.4]
  assign io_requestor_1_customCSRs_csrs_0_value = io_dpath_customCSRs_csrs_0_value; // @[PTW.scala 279:32:chipyard.TestHarness.RocketConfig.fir@242085.4]
  assign io_mem_req_valid = _T_119 | _T_256; // @[PTW.scala 247:20:chipyard.TestHarness.RocketConfig.fir@241287.4]
  assign io_mem_req_bits_addr = pte_addr[39:0]; // @[PTW.scala 252:24:chipyard.TestHarness.RocketConfig.fir@241292.4]
  assign io_mem_s1_kill = s2_hit | _T_258; // @[PTW.scala 254:18:chipyard.TestHarness.RocketConfig.fir@241296.4]
  assign arb_io_in_0_valid = io_requestor_0_req_valid; // @[PTW.scala 106:13:chipyard.TestHarness.RocketConfig.fir@240879.4]
  assign arb_io_in_0_bits_bits_addr = io_requestor_0_req_bits_bits_addr; // @[PTW.scala 106:13:chipyard.TestHarness.RocketConfig.fir@240879.4]
  assign arb_io_in_1_valid = io_requestor_1_req_valid; // @[PTW.scala 106:13:chipyard.TestHarness.RocketConfig.fir@240880.4]
  assign arb_io_in_1_bits_valid = io_requestor_1_req_bits_valid; // @[PTW.scala 106:13:chipyard.TestHarness.RocketConfig.fir@240880.4]
  assign arb_io_in_1_bits_bits_addr = io_requestor_1_req_bits_bits_addr; // @[PTW.scala 106:13:chipyard.TestHarness.RocketConfig.fir@240880.4]
  assign arb_io_out_ready = state == 3'h0; // @[PTW.scala 107:20:chipyard.TestHarness.RocketConfig.fir@240882.4]
  assign l2_tlb_ram_RW0_wdata = {_T_204,_T_203}; // @[:chipyard.TestHarness.RocketConfig.fir@241183.6]
  assign package_Anon_io_x = io_mem_s2_nack ? 3'h1 : _GEN_117; // @[package.scala 220:14:chipyard.TestHarness.RocketConfig.fir@242095.4]
  assign package_Anon_1_io_x_ppn = mem_resp_valid ? res_ppn : _T_1046_ppn; // @[package.scala 220:14:chipyard.TestHarness.RocketConfig.fir@242182.4]
  assign package_Anon_1_io_x_d = mem_resp_valid ? tmp_d : _T_1046_d; // @[package.scala 220:14:chipyard.TestHarness.RocketConfig.fir@242182.4]
  assign package_Anon_1_io_x_a = mem_resp_valid ? tmp_a : _T_1046_a; // @[package.scala 220:14:chipyard.TestHarness.RocketConfig.fir@242182.4]
  assign package_Anon_1_io_x_g = mem_resp_valid ? tmp_g : _T_1046_g; // @[package.scala 220:14:chipyard.TestHarness.RocketConfig.fir@242182.4]
  assign package_Anon_1_io_x_u = mem_resp_valid ? tmp_u : _T_1046_u; // @[package.scala 220:14:chipyard.TestHarness.RocketConfig.fir@242182.4]
  assign package_Anon_1_io_x_x = mem_resp_valid ? tmp_x : _T_1046_x; // @[package.scala 220:14:chipyard.TestHarness.RocketConfig.fir@242182.4]
  assign package_Anon_1_io_x_w = mem_resp_valid ? tmp_w : _T_1046_w; // @[package.scala 220:14:chipyard.TestHarness.RocketConfig.fir@242182.4]
  assign package_Anon_1_io_x_r = mem_resp_valid ? tmp_r : _T_1046_r; // @[package.scala 220:14:chipyard.TestHarness.RocketConfig.fir@242182.4]
  assign package_Anon_1_io_x_v = mem_resp_valid ? res_v : _T_1046_v; // @[package.scala 220:14:chipyard.TestHarness.RocketConfig.fir@242182.4]
  assign l2_tlb_ram_RW0_wmode = l2_refill;
  assign l2_tlb_ram_RW0_clk = clock;
  assign l2_tlb_ram_RW0_en = s0_valid | _T_196;
  assign l2_tlb_ram_RW0_addr = _T_196 ? r_idx : arb_io_out_bits_bits_addr[9:0];
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
  state = _RAND_0[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  resp_valid_0 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  resp_valid_1 = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  invalidated = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  count = _RAND_4[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  resp_ae = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  r_req_addr = _RAND_6[26:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  r_req_dest = _RAND_7[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {2{`RANDOM}};
  r_pte_ppn = _RAND_8[53:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  r_pte_d = _RAND_9[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  r_pte_a = _RAND_10[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  r_pte_g = _RAND_11[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  r_pte_u = _RAND_12[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  r_pte_x = _RAND_13[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  r_pte_w = _RAND_14[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  r_pte_r = _RAND_15[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  r_pte_v = _RAND_16[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  mem_resp_valid = _RAND_17[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {2{`RANDOM}};
  mem_resp_data = _RAND_18[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  _T_56 = _RAND_19[6:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  valid = _RAND_20[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  tags_0 = _RAND_21[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{`RANDOM}};
  tags_1 = _RAND_22[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{`RANDOM}};
  tags_2 = _RAND_23[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{`RANDOM}};
  tags_3 = _RAND_24[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{`RANDOM}};
  tags_4 = _RAND_25[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{`RANDOM}};
  tags_5 = _RAND_26[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {1{`RANDOM}};
  tags_6 = _RAND_27[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {1{`RANDOM}};
  tags_7 = _RAND_28[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {1{`RANDOM}};
  data_0 = _RAND_29[19:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_30 = {1{`RANDOM}};
  data_1 = _RAND_30[19:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_31 = {1{`RANDOM}};
  data_2 = _RAND_31[19:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_32 = {1{`RANDOM}};
  data_3 = _RAND_32[19:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_33 = {1{`RANDOM}};
  data_4 = _RAND_33[19:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_34 = {1{`RANDOM}};
  data_5 = _RAND_34[19:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_35 = {1{`RANDOM}};
  data_6 = _RAND_35[19:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_36 = {1{`RANDOM}};
  data_7 = _RAND_36[19:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_37 = {1{`RANDOM}};
  l2_refill = _RAND_37[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_38 = {32{`RANDOM}};
  g = _RAND_38[1023:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_39 = {32{`RANDOM}};
  valid_1 = _RAND_39[1023:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_40 = {1{`RANDOM}};
  s1_valid = _RAND_40[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_41 = {1{`RANDOM}};
  s2_valid = _RAND_41[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_42 = {2{`RANDOM}};
  _T_227 = _RAND_42[43:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_43 = {1{`RANDOM}};
  s2_valid_bit = _RAND_43[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_44 = {1{`RANDOM}};
  s2_g = _RAND_44[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      state <= 3'h0;
    end else begin
      state <= package_Anon_io_y;
    end
    if (mem_resp_valid) begin
      if (traverse) begin
        if (_T_1036) begin
          resp_valid_0 <= _GEN_99;
        end else if (_T_1017) begin
          resp_valid_0 <= 1'h0;
        end else if (_T_1022) begin
          resp_valid_0 <= 1'h0;
        end else if (_T_1026) begin
          resp_valid_0 <= 1'h0;
        end else if (_T_1028) begin
          resp_valid_0 <= _GEN_63;
        end else begin
          resp_valid_0 <= _GEN_70;
        end
      end else begin
        resp_valid_0 <= _GEN_106;
      end
    end else if (_T_1036) begin
      resp_valid_0 <= _GEN_99;
    end else if (_T_1017) begin
      resp_valid_0 <= 1'h0;
    end else if (_T_1022) begin
      resp_valid_0 <= 1'h0;
    end else if (_T_1026) begin
      resp_valid_0 <= 1'h0;
    end else if (_T_1028) begin
      resp_valid_0 <= _GEN_63;
    end else begin
      resp_valid_0 <= _GEN_70;
    end
    if (mem_resp_valid) begin
      if (traverse) begin
        if (_T_1036) begin
          resp_valid_1 <= _GEN_100;
        end else if (_T_1017) begin
          resp_valid_1 <= 1'h0;
        end else if (_T_1022) begin
          resp_valid_1 <= 1'h0;
        end else if (_T_1026) begin
          resp_valid_1 <= 1'h0;
        end else if (_T_1028) begin
          resp_valid_1 <= _GEN_64;
        end else begin
          resp_valid_1 <= _GEN_71;
        end
      end else begin
        resp_valid_1 <= _GEN_107;
      end
    end else if (_T_1036) begin
      resp_valid_1 <= _GEN_100;
    end else if (_T_1017) begin
      resp_valid_1 <= 1'h0;
    end else if (_T_1022) begin
      resp_valid_1 <= 1'h0;
    end else if (_T_1026) begin
      resp_valid_1 <= 1'h0;
    end else if (_T_1028) begin
      resp_valid_1 <= _GEN_64;
    end else begin
      resp_valid_1 <= _GEN_71;
    end
    invalidated <= io_dpath_sfence_valid | _T_253;
    if (mem_resp_valid) begin
      if (traverse) begin
        count <= _T_1024;
      end else if (_T_1036) begin
        count <= 2'h2;
      end else if (_T_1017) begin
        count <= 2'h0;
      end else if (_T_1022) begin
        if (pte_cache_hit) begin
          count <= _T_1024;
        end
      end else if (!(_T_1026)) begin
        if (!(_T_1028)) begin
          if (_T_1031) begin
            if (_T_1034) begin
              count <= 2'h2;
            end
          end
        end
      end
    end else if (_T_1036) begin
      count <= 2'h2;
    end else if (_T_1017) begin
      count <= 2'h0;
    end else if (_T_1022) begin
      if (pte_cache_hit) begin
        count <= _T_1024;
      end
    end else if (!(_T_1026)) begin
      if (!(_T_1028)) begin
        if (_T_1031) begin
          if (_T_1034) begin
            count <= 2'h2;
          end
        end
      end
    end
    if (mem_resp_valid) begin
      if (traverse) begin
        if (_T_1036) begin
          resp_ae <= 1'h0;
        end else if (_T_1017) begin
          resp_ae <= 1'h0;
        end else if (_T_1022) begin
          resp_ae <= 1'h0;
        end else if (_T_1026) begin
          resp_ae <= 1'h0;
        end else begin
          resp_ae <= _GEN_76;
        end
      end else begin
        resp_ae <= ae;
      end
    end else if (_T_1036) begin
      resp_ae <= 1'h0;
    end else if (_T_1017) begin
      resp_ae <= 1'h0;
    end else if (_T_1022) begin
      resp_ae <= 1'h0;
    end else if (_T_1026) begin
      resp_ae <= 1'h0;
    end else begin
      resp_ae <= _GEN_76;
    end
    if (_T_55) begin
      r_req_addr <= arb_io_out_bits_bits_addr;
    end
    if (_T_55) begin
      r_req_dest <= arb_io_chosen;
    end
    r_pte_ppn <= package_Anon_1_io_y_ppn;
    r_pte_d <= package_Anon_1_io_y_d;
    r_pte_a <= package_Anon_1_io_y_a;
    r_pte_g <= package_Anon_1_io_y_g;
    r_pte_u <= package_Anon_1_io_y_u;
    r_pte_x <= package_Anon_1_io_y_x;
    r_pte_w <= package_Anon_1_io_y_w;
    r_pte_r <= package_Anon_1_io_y_r;
    r_pte_v <= package_Anon_1_io_y_v;
    mem_resp_valid <= io_mem_resp_valid;
    mem_resp_data <= io_mem_resp_bits_data;
    if (_T_120) begin
      _T_56 <= _T_158[7:1];
    end
    if (reset) begin
      valid <= 8'h0;
    end else if (_T_162) begin
      valid <= 8'h0;
    end else if (_T_76) begin
      valid <= _T_118;
    end
    if (_T_76) begin
      if (3'h0 == r) begin
        tags_0 <= pte_addr[31:0];
      end
    end
    if (_T_76) begin
      if (3'h1 == r) begin
        tags_1 <= pte_addr[31:0];
      end
    end
    if (_T_76) begin
      if (3'h2 == r) begin
        tags_2 <= pte_addr[31:0];
      end
    end
    if (_T_76) begin
      if (3'h3 == r) begin
        tags_3 <= pte_addr[31:0];
      end
    end
    if (_T_76) begin
      if (3'h4 == r) begin
        tags_4 <= pte_addr[31:0];
      end
    end
    if (_T_76) begin
      if (3'h5 == r) begin
        tags_5 <= pte_addr[31:0];
      end
    end
    if (_T_76) begin
      if (3'h6 == r) begin
        tags_6 <= pte_addr[31:0];
      end
    end
    if (_T_76) begin
      if (3'h7 == r) begin
        tags_7 <= pte_addr[31:0];
      end
    end
    if (_T_76) begin
      if (3'h0 == r) begin
        data_0 <= res_ppn[19:0];
      end
    end
    if (_T_76) begin
      if (3'h1 == r) begin
        data_1 <= res_ppn[19:0];
      end
    end
    if (_T_76) begin
      if (3'h2 == r) begin
        data_2 <= res_ppn[19:0];
      end
    end
    if (_T_76) begin
      if (3'h3 == r) begin
        data_3 <= res_ppn[19:0];
      end
    end
    if (_T_76) begin
      if (3'h4 == r) begin
        data_4 <= res_ppn[19:0];
      end
    end
    if (_T_76) begin
      if (3'h5 == r) begin
        data_5 <= res_ppn[19:0];
      end
    end
    if (_T_76) begin
      if (3'h6 == r) begin
        data_6 <= res_ppn[19:0];
      end
    end
    if (_T_76) begin
      if (3'h7 == r) begin
        data_7 <= res_ppn[19:0];
      end
    end
    l2_refill <= mem_resp_valid & _GEN_113;
    if (_T_196) begin
      if (r_pte_g) begin
        g <= _T_209;
      end else begin
        g <= _T_211;
      end
    end
    if (reset) begin
      valid_1 <= 1024'h0;
    end else if (_T_236) begin
      valid_1 <= 1024'h0;
    end else if (io_dpath_sfence_valid) begin
      if (io_dpath_sfence_bits_rs1) begin
        valid_1 <= _T_216;
      end else if (io_dpath_sfence_bits_rs2) begin
        valid_1 <= _T_217;
      end else begin
        valid_1 <= 1024'h0;
      end
    end else if (_T_196) begin
      valid_1 <= _T_208;
    end
    s1_valid <= s0_valid & arb_io_out_bits_valid;
    s2_valid <= s1_valid;
    if (s1_valid) begin
      _T_227 <= l2_tlb_ram_RW0_rdata;
    end
    if (s1_valid) begin
      s2_valid_bit <= _T_230[0];
    end
    if (s1_valid) begin
      s2_g <= _T_232[0];
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1036 & _T_1055) begin
          $fwrite(32'h80000002,"Assertion failed\n    at PTW.scala:339 assert(state === s_req || state === s_wait1)\n"); // @[PTW.scala 339:11:chipyard.TestHarness.RocketConfig.fir@242194.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1036 & _T_1055) begin
          $fatal; // @[PTW.scala 339:11:chipyard.TestHarness.RocketConfig.fir@242195.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (mem_resp_valid & _T_1061) begin
          $fwrite(32'h80000002,"Assertion failed\n    at PTW.scala:346 assert(state === s_wait3)\n"); // @[PTW.scala 346:11:chipyard.TestHarness.RocketConfig.fir@242210.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (mem_resp_valid & _T_1061) begin
          $fatal; // @[PTW.scala 346:11:chipyard.TestHarness.RocketConfig.fir@242211.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_mem_s2_nack & _T_1077) begin
          $fwrite(32'h80000002,"Assertion failed\n    at PTW.scala:363 assert(state === s_wait2)\n"); // @[PTW.scala 363:11:chipyard.TestHarness.RocketConfig.fir@242248.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (io_mem_s2_nack & _T_1077) begin
          $fatal; // @[PTW.scala 363:11:chipyard.TestHarness.RocketConfig.fir@242249.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
