module DCache( // @[:chipyard.TestHarness.RocketConfig.fir@213911.2]
  input         gated_clock, // @[:chipyard.TestHarness.RocketConfig.fir@213912.4]
  input         reset, // @[:chipyard.TestHarness.RocketConfig.fir@213913.4]
  input         auto_out_a_ready, // @[:chipyard.TestHarness.RocketConfig.fir@213914.4]
  output        auto_out_a_valid, // @[:chipyard.TestHarness.RocketConfig.fir@213914.4]
  output [2:0]  auto_out_a_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@213914.4]
  output [2:0]  auto_out_a_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@213914.4]
  output [3:0]  auto_out_a_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@213914.4]
  output        auto_out_a_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@213914.4]
  output [31:0] auto_out_a_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@213914.4]
  output [7:0]  auto_out_a_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@213914.4]
  output [63:0] auto_out_a_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@213914.4]
  output        auto_out_b_ready, // @[:chipyard.TestHarness.RocketConfig.fir@213914.4]
  input         auto_out_b_valid, // @[:chipyard.TestHarness.RocketConfig.fir@213914.4]
  input  [1:0]  auto_out_b_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@213914.4]
  input  [3:0]  auto_out_b_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@213914.4]
  input         auto_out_b_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@213914.4]
  input  [31:0] auto_out_b_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@213914.4]
  input         auto_out_c_ready, // @[:chipyard.TestHarness.RocketConfig.fir@213914.4]
  output        auto_out_c_valid, // @[:chipyard.TestHarness.RocketConfig.fir@213914.4]
  output [2:0]  auto_out_c_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@213914.4]
  output [2:0]  auto_out_c_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@213914.4]
  output [3:0]  auto_out_c_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@213914.4]
  output        auto_out_c_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@213914.4]
  output [31:0] auto_out_c_bits_address, // @[:chipyard.TestHarness.RocketConfig.fir@213914.4]
  output [63:0] auto_out_c_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@213914.4]
  output        auto_out_d_ready, // @[:chipyard.TestHarness.RocketConfig.fir@213914.4]
  input         auto_out_d_valid, // @[:chipyard.TestHarness.RocketConfig.fir@213914.4]
  input  [2:0]  auto_out_d_bits_opcode, // @[:chipyard.TestHarness.RocketConfig.fir@213914.4]
  input  [1:0]  auto_out_d_bits_param, // @[:chipyard.TestHarness.RocketConfig.fir@213914.4]
  input  [3:0]  auto_out_d_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@213914.4]
  input         auto_out_d_bits_source, // @[:chipyard.TestHarness.RocketConfig.fir@213914.4]
  input  [2:0]  auto_out_d_bits_sink, // @[:chipyard.TestHarness.RocketConfig.fir@213914.4]
  input         auto_out_d_bits_denied, // @[:chipyard.TestHarness.RocketConfig.fir@213914.4]
  input  [63:0] auto_out_d_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@213914.4]
  input         auto_out_e_ready, // @[:chipyard.TestHarness.RocketConfig.fir@213914.4]
  output        auto_out_e_valid, // @[:chipyard.TestHarness.RocketConfig.fir@213914.4]
  output [2:0]  auto_out_e_bits_sink, // @[:chipyard.TestHarness.RocketConfig.fir@213914.4]
  output        io_cpu_req_ready, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  input         io_cpu_req_valid, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  input  [39:0] io_cpu_req_bits_addr, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  input  [6:0]  io_cpu_req_bits_tag, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  input  [4:0]  io_cpu_req_bits_cmd, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  input  [1:0]  io_cpu_req_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  input         io_cpu_req_bits_signed, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  input  [1:0]  io_cpu_req_bits_dprv, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  input         io_cpu_req_bits_phys, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  input         io_cpu_s1_kill, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  input  [63:0] io_cpu_s1_data_data, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  input  [7:0]  io_cpu_s1_data_mask, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  output        io_cpu_s2_nack, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  output        io_cpu_resp_valid, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  output [39:0] io_cpu_resp_bits_addr, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  output [6:0]  io_cpu_resp_bits_tag, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  output [4:0]  io_cpu_resp_bits_cmd, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  output [1:0]  io_cpu_resp_bits_size, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  output        io_cpu_resp_bits_signed, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  output [1:0]  io_cpu_resp_bits_dprv, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  output [63:0] io_cpu_resp_bits_data, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  output [7:0]  io_cpu_resp_bits_mask, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  output        io_cpu_resp_bits_replay, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  output        io_cpu_resp_bits_has_data, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  output [63:0] io_cpu_resp_bits_data_word_bypass, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  output [63:0] io_cpu_resp_bits_data_raw, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  output [63:0] io_cpu_resp_bits_store_data, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  output        io_cpu_replay_next, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  output        io_cpu_s2_xcpt_ma_ld, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  output        io_cpu_s2_xcpt_ma_st, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  output        io_cpu_s2_xcpt_pf_ld, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  output        io_cpu_s2_xcpt_pf_st, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  output        io_cpu_s2_xcpt_ae_ld, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  output        io_cpu_s2_xcpt_ae_st, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  output        io_cpu_ordered, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  output        io_cpu_perf_release, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  output        io_cpu_perf_grant, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  input         io_ptw_req_ready, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  output        io_ptw_req_valid, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  output [26:0] io_ptw_req_bits_bits_addr, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  input         io_ptw_resp_valid, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  input         io_ptw_resp_bits_ae, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  input  [53:0] io_ptw_resp_bits_pte_ppn, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  input         io_ptw_resp_bits_pte_d, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  input         io_ptw_resp_bits_pte_a, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  input         io_ptw_resp_bits_pte_g, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  input         io_ptw_resp_bits_pte_u, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  input         io_ptw_resp_bits_pte_x, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  input         io_ptw_resp_bits_pte_w, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  input         io_ptw_resp_bits_pte_r, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  input         io_ptw_resp_bits_pte_v, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  input  [1:0]  io_ptw_resp_bits_level, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  input         io_ptw_resp_bits_homogeneous, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  input  [3:0]  io_ptw_ptbr_mode, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  input         io_ptw_status_debug, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  input  [1:0]  io_ptw_status_dprv, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  input         io_ptw_status_mxr, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  input         io_ptw_status_sum, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  input         io_ptw_pmp_0_cfg_l, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  input  [1:0]  io_ptw_pmp_0_cfg_a, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  input         io_ptw_pmp_0_cfg_x, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  input         io_ptw_pmp_0_cfg_w, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  input         io_ptw_pmp_0_cfg_r, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  input  [29:0] io_ptw_pmp_0_addr, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  input  [31:0] io_ptw_pmp_0_mask, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  input         io_ptw_pmp_1_cfg_l, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  input  [1:0]  io_ptw_pmp_1_cfg_a, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  input         io_ptw_pmp_1_cfg_x, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  input         io_ptw_pmp_1_cfg_w, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  input         io_ptw_pmp_1_cfg_r, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  input  [29:0] io_ptw_pmp_1_addr, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  input  [31:0] io_ptw_pmp_1_mask, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  input         io_ptw_pmp_2_cfg_l, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  input  [1:0]  io_ptw_pmp_2_cfg_a, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  input         io_ptw_pmp_2_cfg_x, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  input         io_ptw_pmp_2_cfg_w, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  input         io_ptw_pmp_2_cfg_r, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  input  [29:0] io_ptw_pmp_2_addr, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  input  [31:0] io_ptw_pmp_2_mask, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  input         io_ptw_pmp_3_cfg_l, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  input  [1:0]  io_ptw_pmp_3_cfg_a, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  input         io_ptw_pmp_3_cfg_x, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  input         io_ptw_pmp_3_cfg_w, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  input         io_ptw_pmp_3_cfg_r, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  input  [29:0] io_ptw_pmp_3_addr, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  input  [31:0] io_ptw_pmp_3_mask, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  input         io_ptw_pmp_4_cfg_l, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  input  [1:0]  io_ptw_pmp_4_cfg_a, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  input         io_ptw_pmp_4_cfg_x, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  input         io_ptw_pmp_4_cfg_w, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  input         io_ptw_pmp_4_cfg_r, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  input  [29:0] io_ptw_pmp_4_addr, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  input  [31:0] io_ptw_pmp_4_mask, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  input         io_ptw_pmp_5_cfg_l, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  input  [1:0]  io_ptw_pmp_5_cfg_a, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  input         io_ptw_pmp_5_cfg_x, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  input         io_ptw_pmp_5_cfg_w, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  input         io_ptw_pmp_5_cfg_r, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  input  [29:0] io_ptw_pmp_5_addr, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  input  [31:0] io_ptw_pmp_5_mask, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  input         io_ptw_pmp_6_cfg_l, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  input  [1:0]  io_ptw_pmp_6_cfg_a, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  input         io_ptw_pmp_6_cfg_x, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  input         io_ptw_pmp_6_cfg_w, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  input         io_ptw_pmp_6_cfg_r, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  input  [29:0] io_ptw_pmp_6_addr, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  input  [31:0] io_ptw_pmp_6_mask, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  input         io_ptw_pmp_7_cfg_l, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  input  [1:0]  io_ptw_pmp_7_cfg_a, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  input         io_ptw_pmp_7_cfg_x, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  input         io_ptw_pmp_7_cfg_w, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  input         io_ptw_pmp_7_cfg_r, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  input  [29:0] io_ptw_pmp_7_addr, // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
  input  [31:0] io_ptw_pmp_7_mask // @[:chipyard.TestHarness.RocketConfig.fir@213915.4]
);
  wire  tlb_clock; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire  tlb_reset; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire  tlb_io_req_ready; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire  tlb_io_req_valid; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire [39:0] tlb_io_req_bits_vaddr; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire  tlb_io_req_bits_passthrough; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire [1:0] tlb_io_req_bits_size; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire [4:0] tlb_io_req_bits_cmd; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire  tlb_io_resp_miss; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire [31:0] tlb_io_resp_paddr; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire  tlb_io_resp_pf_ld; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire  tlb_io_resp_pf_st; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire  tlb_io_resp_ae_ld; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire  tlb_io_resp_ae_st; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire  tlb_io_resp_ma_ld; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire  tlb_io_resp_ma_st; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire  tlb_io_resp_cacheable; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire  tlb_io_sfence_valid; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire  tlb_io_sfence_bits_rs1; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire  tlb_io_sfence_bits_rs2; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire [38:0] tlb_io_sfence_bits_addr; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire  tlb_io_ptw_req_ready; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire  tlb_io_ptw_req_valid; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire [26:0] tlb_io_ptw_req_bits_bits_addr; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire  tlb_io_ptw_resp_valid; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire  tlb_io_ptw_resp_bits_ae; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire [53:0] tlb_io_ptw_resp_bits_pte_ppn; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire  tlb_io_ptw_resp_bits_pte_d; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire  tlb_io_ptw_resp_bits_pte_a; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire  tlb_io_ptw_resp_bits_pte_g; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire  tlb_io_ptw_resp_bits_pte_u; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire  tlb_io_ptw_resp_bits_pte_x; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire  tlb_io_ptw_resp_bits_pte_w; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire  tlb_io_ptw_resp_bits_pte_r; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire  tlb_io_ptw_resp_bits_pte_v; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire [1:0] tlb_io_ptw_resp_bits_level; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire  tlb_io_ptw_resp_bits_homogeneous; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire [3:0] tlb_io_ptw_ptbr_mode; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire  tlb_io_ptw_status_debug; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire [1:0] tlb_io_ptw_status_dprv; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire  tlb_io_ptw_status_mxr; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire  tlb_io_ptw_status_sum; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire  tlb_io_ptw_pmp_0_cfg_l; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire [1:0] tlb_io_ptw_pmp_0_cfg_a; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire  tlb_io_ptw_pmp_0_cfg_x; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire  tlb_io_ptw_pmp_0_cfg_w; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire  tlb_io_ptw_pmp_0_cfg_r; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire [29:0] tlb_io_ptw_pmp_0_addr; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire [31:0] tlb_io_ptw_pmp_0_mask; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire  tlb_io_ptw_pmp_1_cfg_l; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire [1:0] tlb_io_ptw_pmp_1_cfg_a; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire  tlb_io_ptw_pmp_1_cfg_x; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire  tlb_io_ptw_pmp_1_cfg_w; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire  tlb_io_ptw_pmp_1_cfg_r; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire [29:0] tlb_io_ptw_pmp_1_addr; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire [31:0] tlb_io_ptw_pmp_1_mask; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire  tlb_io_ptw_pmp_2_cfg_l; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire [1:0] tlb_io_ptw_pmp_2_cfg_a; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire  tlb_io_ptw_pmp_2_cfg_x; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire  tlb_io_ptw_pmp_2_cfg_w; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire  tlb_io_ptw_pmp_2_cfg_r; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire [29:0] tlb_io_ptw_pmp_2_addr; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire [31:0] tlb_io_ptw_pmp_2_mask; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire  tlb_io_ptw_pmp_3_cfg_l; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire [1:0] tlb_io_ptw_pmp_3_cfg_a; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire  tlb_io_ptw_pmp_3_cfg_x; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire  tlb_io_ptw_pmp_3_cfg_w; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire  tlb_io_ptw_pmp_3_cfg_r; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire [29:0] tlb_io_ptw_pmp_3_addr; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire [31:0] tlb_io_ptw_pmp_3_mask; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire  tlb_io_ptw_pmp_4_cfg_l; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire [1:0] tlb_io_ptw_pmp_4_cfg_a; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire  tlb_io_ptw_pmp_4_cfg_x; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire  tlb_io_ptw_pmp_4_cfg_w; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire  tlb_io_ptw_pmp_4_cfg_r; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire [29:0] tlb_io_ptw_pmp_4_addr; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire [31:0] tlb_io_ptw_pmp_4_mask; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire  tlb_io_ptw_pmp_5_cfg_l; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire [1:0] tlb_io_ptw_pmp_5_cfg_a; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire  tlb_io_ptw_pmp_5_cfg_x; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire  tlb_io_ptw_pmp_5_cfg_w; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire  tlb_io_ptw_pmp_5_cfg_r; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire [29:0] tlb_io_ptw_pmp_5_addr; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire [31:0] tlb_io_ptw_pmp_5_mask; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire  tlb_io_ptw_pmp_6_cfg_l; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire [1:0] tlb_io_ptw_pmp_6_cfg_a; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire  tlb_io_ptw_pmp_6_cfg_x; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire  tlb_io_ptw_pmp_6_cfg_w; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire  tlb_io_ptw_pmp_6_cfg_r; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire [29:0] tlb_io_ptw_pmp_6_addr; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire [31:0] tlb_io_ptw_pmp_6_mask; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire  tlb_io_ptw_pmp_7_cfg_l; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire [1:0] tlb_io_ptw_pmp_7_cfg_a; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire  tlb_io_ptw_pmp_7_cfg_x; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire  tlb_io_ptw_pmp_7_cfg_w; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire  tlb_io_ptw_pmp_7_cfg_r; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire [29:0] tlb_io_ptw_pmp_7_addr; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire [31:0] tlb_io_ptw_pmp_7_mask; // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
  wire  pma_checker_clock; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire  pma_checker_reset; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire  pma_checker_io_req_ready; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire  pma_checker_io_req_valid; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire [39:0] pma_checker_io_req_bits_vaddr; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire  pma_checker_io_req_bits_passthrough; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire [1:0] pma_checker_io_req_bits_size; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire [4:0] pma_checker_io_req_bits_cmd; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire  pma_checker_io_resp_miss; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire [31:0] pma_checker_io_resp_paddr; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire  pma_checker_io_resp_pf_ld; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire  pma_checker_io_resp_pf_st; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire  pma_checker_io_resp_ae_ld; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire  pma_checker_io_resp_ae_st; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire  pma_checker_io_resp_ma_ld; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire  pma_checker_io_resp_ma_st; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire  pma_checker_io_resp_cacheable; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire  pma_checker_io_sfence_valid; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire  pma_checker_io_sfence_bits_rs1; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire  pma_checker_io_sfence_bits_rs2; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire [38:0] pma_checker_io_sfence_bits_addr; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire  pma_checker_io_ptw_req_ready; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire  pma_checker_io_ptw_req_valid; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire [26:0] pma_checker_io_ptw_req_bits_bits_addr; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire  pma_checker_io_ptw_resp_valid; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire  pma_checker_io_ptw_resp_bits_ae; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire [53:0] pma_checker_io_ptw_resp_bits_pte_ppn; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire  pma_checker_io_ptw_resp_bits_pte_d; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire  pma_checker_io_ptw_resp_bits_pte_a; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire  pma_checker_io_ptw_resp_bits_pte_g; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire  pma_checker_io_ptw_resp_bits_pte_u; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire  pma_checker_io_ptw_resp_bits_pte_x; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire  pma_checker_io_ptw_resp_bits_pte_w; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire  pma_checker_io_ptw_resp_bits_pte_r; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire  pma_checker_io_ptw_resp_bits_pte_v; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire [1:0] pma_checker_io_ptw_resp_bits_level; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire  pma_checker_io_ptw_resp_bits_homogeneous; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire [3:0] pma_checker_io_ptw_ptbr_mode; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire  pma_checker_io_ptw_status_debug; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire [1:0] pma_checker_io_ptw_status_dprv; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire  pma_checker_io_ptw_status_mxr; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire  pma_checker_io_ptw_status_sum; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire  pma_checker_io_ptw_pmp_0_cfg_l; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire [1:0] pma_checker_io_ptw_pmp_0_cfg_a; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire  pma_checker_io_ptw_pmp_0_cfg_x; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire  pma_checker_io_ptw_pmp_0_cfg_w; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire  pma_checker_io_ptw_pmp_0_cfg_r; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire [29:0] pma_checker_io_ptw_pmp_0_addr; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire [31:0] pma_checker_io_ptw_pmp_0_mask; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire  pma_checker_io_ptw_pmp_1_cfg_l; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire [1:0] pma_checker_io_ptw_pmp_1_cfg_a; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire  pma_checker_io_ptw_pmp_1_cfg_x; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire  pma_checker_io_ptw_pmp_1_cfg_w; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire  pma_checker_io_ptw_pmp_1_cfg_r; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire [29:0] pma_checker_io_ptw_pmp_1_addr; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire [31:0] pma_checker_io_ptw_pmp_1_mask; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire  pma_checker_io_ptw_pmp_2_cfg_l; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire [1:0] pma_checker_io_ptw_pmp_2_cfg_a; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire  pma_checker_io_ptw_pmp_2_cfg_x; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire  pma_checker_io_ptw_pmp_2_cfg_w; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire  pma_checker_io_ptw_pmp_2_cfg_r; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire [29:0] pma_checker_io_ptw_pmp_2_addr; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire [31:0] pma_checker_io_ptw_pmp_2_mask; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire  pma_checker_io_ptw_pmp_3_cfg_l; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire [1:0] pma_checker_io_ptw_pmp_3_cfg_a; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire  pma_checker_io_ptw_pmp_3_cfg_x; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire  pma_checker_io_ptw_pmp_3_cfg_w; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire  pma_checker_io_ptw_pmp_3_cfg_r; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire [29:0] pma_checker_io_ptw_pmp_3_addr; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire [31:0] pma_checker_io_ptw_pmp_3_mask; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire  pma_checker_io_ptw_pmp_4_cfg_l; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire [1:0] pma_checker_io_ptw_pmp_4_cfg_a; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire  pma_checker_io_ptw_pmp_4_cfg_x; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire  pma_checker_io_ptw_pmp_4_cfg_w; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire  pma_checker_io_ptw_pmp_4_cfg_r; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire [29:0] pma_checker_io_ptw_pmp_4_addr; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire [31:0] pma_checker_io_ptw_pmp_4_mask; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire  pma_checker_io_ptw_pmp_5_cfg_l; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire [1:0] pma_checker_io_ptw_pmp_5_cfg_a; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire  pma_checker_io_ptw_pmp_5_cfg_x; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire  pma_checker_io_ptw_pmp_5_cfg_w; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire  pma_checker_io_ptw_pmp_5_cfg_r; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire [29:0] pma_checker_io_ptw_pmp_5_addr; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire [31:0] pma_checker_io_ptw_pmp_5_mask; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire  pma_checker_io_ptw_pmp_6_cfg_l; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire [1:0] pma_checker_io_ptw_pmp_6_cfg_a; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire  pma_checker_io_ptw_pmp_6_cfg_x; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire  pma_checker_io_ptw_pmp_6_cfg_w; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire  pma_checker_io_ptw_pmp_6_cfg_r; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire [29:0] pma_checker_io_ptw_pmp_6_addr; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire [31:0] pma_checker_io_ptw_pmp_6_mask; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire  pma_checker_io_ptw_pmp_7_cfg_l; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire [1:0] pma_checker_io_ptw_pmp_7_cfg_a; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire  pma_checker_io_ptw_pmp_7_cfg_x; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire  pma_checker_io_ptw_pmp_7_cfg_w; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire  pma_checker_io_ptw_pmp_7_cfg_r; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire [29:0] pma_checker_io_ptw_pmp_7_addr; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire [31:0] pma_checker_io_ptw_pmp_7_mask; // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
  wire  MaxPeriodFibonacciLFSR_clock; // @[PRNG.scala 82:22:chipyard.TestHarness.RocketConfig.fir@213939.4]
  wire  MaxPeriodFibonacciLFSR_reset; // @[PRNG.scala 82:22:chipyard.TestHarness.RocketConfig.fir@213939.4]
  wire  MaxPeriodFibonacciLFSR_io_increment; // @[PRNG.scala 82:22:chipyard.TestHarness.RocketConfig.fir@213939.4]
  wire  MaxPeriodFibonacciLFSR_io_out_0; // @[PRNG.scala 82:22:chipyard.TestHarness.RocketConfig.fir@213939.4]
  wire  MaxPeriodFibonacciLFSR_io_out_1; // @[PRNG.scala 82:22:chipyard.TestHarness.RocketConfig.fir@213939.4]
  wire  MaxPeriodFibonacciLFSR_io_out_2; // @[PRNG.scala 82:22:chipyard.TestHarness.RocketConfig.fir@213939.4]
  wire  MaxPeriodFibonacciLFSR_io_out_3; // @[PRNG.scala 82:22:chipyard.TestHarness.RocketConfig.fir@213939.4]
  wire  MaxPeriodFibonacciLFSR_io_out_4; // @[PRNG.scala 82:22:chipyard.TestHarness.RocketConfig.fir@213939.4]
  wire  MaxPeriodFibonacciLFSR_io_out_5; // @[PRNG.scala 82:22:chipyard.TestHarness.RocketConfig.fir@213939.4]
  wire  MaxPeriodFibonacciLFSR_io_out_6; // @[PRNG.scala 82:22:chipyard.TestHarness.RocketConfig.fir@213939.4]
  wire  MaxPeriodFibonacciLFSR_io_out_7; // @[PRNG.scala 82:22:chipyard.TestHarness.RocketConfig.fir@213939.4]
  wire  MaxPeriodFibonacciLFSR_io_out_8; // @[PRNG.scala 82:22:chipyard.TestHarness.RocketConfig.fir@213939.4]
  wire  MaxPeriodFibonacciLFSR_io_out_9; // @[PRNG.scala 82:22:chipyard.TestHarness.RocketConfig.fir@213939.4]
  wire  MaxPeriodFibonacciLFSR_io_out_10; // @[PRNG.scala 82:22:chipyard.TestHarness.RocketConfig.fir@213939.4]
  wire  MaxPeriodFibonacciLFSR_io_out_11; // @[PRNG.scala 82:22:chipyard.TestHarness.RocketConfig.fir@213939.4]
  wire  MaxPeriodFibonacciLFSR_io_out_12; // @[PRNG.scala 82:22:chipyard.TestHarness.RocketConfig.fir@213939.4]
  wire  MaxPeriodFibonacciLFSR_io_out_13; // @[PRNG.scala 82:22:chipyard.TestHarness.RocketConfig.fir@213939.4]
  wire  MaxPeriodFibonacciLFSR_io_out_14; // @[PRNG.scala 82:22:chipyard.TestHarness.RocketConfig.fir@213939.4]
  wire  MaxPeriodFibonacciLFSR_io_out_15; // @[PRNG.scala 82:22:chipyard.TestHarness.RocketConfig.fir@213939.4]
  wire  metaArb_io_in_0_valid; // @[DCache.scala 120:23:chipyard.TestHarness.RocketConfig.fir@213975.4]
  wire [39:0] metaArb_io_in_0_bits_addr; // @[DCache.scala 120:23:chipyard.TestHarness.RocketConfig.fir@213975.4]
  wire [5:0] metaArb_io_in_0_bits_idx; // @[DCache.scala 120:23:chipyard.TestHarness.RocketConfig.fir@213975.4]
  wire [21:0] metaArb_io_in_0_bits_data; // @[DCache.scala 120:23:chipyard.TestHarness.RocketConfig.fir@213975.4]
  wire  metaArb_io_in_1_valid; // @[DCache.scala 120:23:chipyard.TestHarness.RocketConfig.fir@213975.4]
  wire [39:0] metaArb_io_in_1_bits_addr; // @[DCache.scala 120:23:chipyard.TestHarness.RocketConfig.fir@213975.4]
  wire [5:0] metaArb_io_in_1_bits_idx; // @[DCache.scala 120:23:chipyard.TestHarness.RocketConfig.fir@213975.4]
  wire [21:0] metaArb_io_in_1_bits_data; // @[DCache.scala 120:23:chipyard.TestHarness.RocketConfig.fir@213975.4]
  wire  metaArb_io_in_2_valid; // @[DCache.scala 120:23:chipyard.TestHarness.RocketConfig.fir@213975.4]
  wire [39:0] metaArb_io_in_2_bits_addr; // @[DCache.scala 120:23:chipyard.TestHarness.RocketConfig.fir@213975.4]
  wire [5:0] metaArb_io_in_2_bits_idx; // @[DCache.scala 120:23:chipyard.TestHarness.RocketConfig.fir@213975.4]
  wire [3:0] metaArb_io_in_2_bits_way_en; // @[DCache.scala 120:23:chipyard.TestHarness.RocketConfig.fir@213975.4]
  wire [21:0] metaArb_io_in_2_bits_data; // @[DCache.scala 120:23:chipyard.TestHarness.RocketConfig.fir@213975.4]
  wire  metaArb_io_in_3_valid; // @[DCache.scala 120:23:chipyard.TestHarness.RocketConfig.fir@213975.4]
  wire [39:0] metaArb_io_in_3_bits_addr; // @[DCache.scala 120:23:chipyard.TestHarness.RocketConfig.fir@213975.4]
  wire [5:0] metaArb_io_in_3_bits_idx; // @[DCache.scala 120:23:chipyard.TestHarness.RocketConfig.fir@213975.4]
  wire [3:0] metaArb_io_in_3_bits_way_en; // @[DCache.scala 120:23:chipyard.TestHarness.RocketConfig.fir@213975.4]
  wire [21:0] metaArb_io_in_3_bits_data; // @[DCache.scala 120:23:chipyard.TestHarness.RocketConfig.fir@213975.4]
  wire  metaArb_io_in_4_ready; // @[DCache.scala 120:23:chipyard.TestHarness.RocketConfig.fir@213975.4]
  wire  metaArb_io_in_4_valid; // @[DCache.scala 120:23:chipyard.TestHarness.RocketConfig.fir@213975.4]
  wire [39:0] metaArb_io_in_4_bits_addr; // @[DCache.scala 120:23:chipyard.TestHarness.RocketConfig.fir@213975.4]
  wire [5:0] metaArb_io_in_4_bits_idx; // @[DCache.scala 120:23:chipyard.TestHarness.RocketConfig.fir@213975.4]
  wire [3:0] metaArb_io_in_4_bits_way_en; // @[DCache.scala 120:23:chipyard.TestHarness.RocketConfig.fir@213975.4]
  wire [21:0] metaArb_io_in_4_bits_data; // @[DCache.scala 120:23:chipyard.TestHarness.RocketConfig.fir@213975.4]
  wire  metaArb_io_in_5_ready; // @[DCache.scala 120:23:chipyard.TestHarness.RocketConfig.fir@213975.4]
  wire  metaArb_io_in_5_valid; // @[DCache.scala 120:23:chipyard.TestHarness.RocketConfig.fir@213975.4]
  wire [39:0] metaArb_io_in_5_bits_addr; // @[DCache.scala 120:23:chipyard.TestHarness.RocketConfig.fir@213975.4]
  wire [5:0] metaArb_io_in_5_bits_idx; // @[DCache.scala 120:23:chipyard.TestHarness.RocketConfig.fir@213975.4]
  wire  metaArb_io_in_6_ready; // @[DCache.scala 120:23:chipyard.TestHarness.RocketConfig.fir@213975.4]
  wire  metaArb_io_in_6_valid; // @[DCache.scala 120:23:chipyard.TestHarness.RocketConfig.fir@213975.4]
  wire [39:0] metaArb_io_in_6_bits_addr; // @[DCache.scala 120:23:chipyard.TestHarness.RocketConfig.fir@213975.4]
  wire [5:0] metaArb_io_in_6_bits_idx; // @[DCache.scala 120:23:chipyard.TestHarness.RocketConfig.fir@213975.4]
  wire [3:0] metaArb_io_in_6_bits_way_en; // @[DCache.scala 120:23:chipyard.TestHarness.RocketConfig.fir@213975.4]
  wire [21:0] metaArb_io_in_6_bits_data; // @[DCache.scala 120:23:chipyard.TestHarness.RocketConfig.fir@213975.4]
  wire  metaArb_io_in_7_ready; // @[DCache.scala 120:23:chipyard.TestHarness.RocketConfig.fir@213975.4]
  wire  metaArb_io_in_7_valid; // @[DCache.scala 120:23:chipyard.TestHarness.RocketConfig.fir@213975.4]
  wire [39:0] metaArb_io_in_7_bits_addr; // @[DCache.scala 120:23:chipyard.TestHarness.RocketConfig.fir@213975.4]
  wire [5:0] metaArb_io_in_7_bits_idx; // @[DCache.scala 120:23:chipyard.TestHarness.RocketConfig.fir@213975.4]
  wire [3:0] metaArb_io_in_7_bits_way_en; // @[DCache.scala 120:23:chipyard.TestHarness.RocketConfig.fir@213975.4]
  wire [21:0] metaArb_io_in_7_bits_data; // @[DCache.scala 120:23:chipyard.TestHarness.RocketConfig.fir@213975.4]
  wire  metaArb_io_out_valid; // @[DCache.scala 120:23:chipyard.TestHarness.RocketConfig.fir@213975.4]
  wire  metaArb_io_out_bits_write; // @[DCache.scala 120:23:chipyard.TestHarness.RocketConfig.fir@213975.4]
  wire [39:0] metaArb_io_out_bits_addr; // @[DCache.scala 120:23:chipyard.TestHarness.RocketConfig.fir@213975.4]
  wire [5:0] metaArb_io_out_bits_idx; // @[DCache.scala 120:23:chipyard.TestHarness.RocketConfig.fir@213975.4]
  wire [3:0] metaArb_io_out_bits_way_en; // @[DCache.scala 120:23:chipyard.TestHarness.RocketConfig.fir@213975.4]
  wire [21:0] metaArb_io_out_bits_data; // @[DCache.scala 120:23:chipyard.TestHarness.RocketConfig.fir@213975.4]
  wire [5:0] tag_array_RW0_addr; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213979.4]
  wire  tag_array_RW0_en; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213979.4]
  wire  tag_array_RW0_clk; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213979.4]
  wire  tag_array_RW0_wmode; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213979.4]
  wire [21:0] tag_array_RW0_wdata_0; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213979.4]
  wire [21:0] tag_array_RW0_wdata_1; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213979.4]
  wire [21:0] tag_array_RW0_wdata_2; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213979.4]
  wire [21:0] tag_array_RW0_wdata_3; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213979.4]
  wire [21:0] tag_array_RW0_rdata_0; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213979.4]
  wire [21:0] tag_array_RW0_rdata_1; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213979.4]
  wire [21:0] tag_array_RW0_rdata_2; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213979.4]
  wire [21:0] tag_array_RW0_rdata_3; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213979.4]
  wire  tag_array_RW0_wmask_0; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213979.4]
  wire  tag_array_RW0_wmask_1; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213979.4]
  wire  tag_array_RW0_wmask_2; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213979.4]
  wire  tag_array_RW0_wmask_3; // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213979.4]
  wire  data_clock; // @[DCache.scala 130:20:chipyard.TestHarness.RocketConfig.fir@213980.4]
  wire  data_io_req_valid; // @[DCache.scala 130:20:chipyard.TestHarness.RocketConfig.fir@213980.4]
  wire [11:0] data_io_req_bits_addr; // @[DCache.scala 130:20:chipyard.TestHarness.RocketConfig.fir@213980.4]
  wire  data_io_req_bits_write; // @[DCache.scala 130:20:chipyard.TestHarness.RocketConfig.fir@213980.4]
  wire [63:0] data_io_req_bits_wdata; // @[DCache.scala 130:20:chipyard.TestHarness.RocketConfig.fir@213980.4]
  wire [7:0] data_io_req_bits_eccMask; // @[DCache.scala 130:20:chipyard.TestHarness.RocketConfig.fir@213980.4]
  wire [3:0] data_io_req_bits_way_en; // @[DCache.scala 130:20:chipyard.TestHarness.RocketConfig.fir@213980.4]
  wire [63:0] data_io_resp_0; // @[DCache.scala 130:20:chipyard.TestHarness.RocketConfig.fir@213980.4]
  wire [63:0] data_io_resp_1; // @[DCache.scala 130:20:chipyard.TestHarness.RocketConfig.fir@213980.4]
  wire [63:0] data_io_resp_2; // @[DCache.scala 130:20:chipyard.TestHarness.RocketConfig.fir@213980.4]
  wire [63:0] data_io_resp_3; // @[DCache.scala 130:20:chipyard.TestHarness.RocketConfig.fir@213980.4]
  wire  dataArb_io_in_0_valid; // @[DCache.scala 131:23:chipyard.TestHarness.RocketConfig.fir@213984.4]
  wire [11:0] dataArb_io_in_0_bits_addr; // @[DCache.scala 131:23:chipyard.TestHarness.RocketConfig.fir@213984.4]
  wire  dataArb_io_in_0_bits_write; // @[DCache.scala 131:23:chipyard.TestHarness.RocketConfig.fir@213984.4]
  wire [63:0] dataArb_io_in_0_bits_wdata; // @[DCache.scala 131:23:chipyard.TestHarness.RocketConfig.fir@213984.4]
  wire [7:0] dataArb_io_in_0_bits_eccMask; // @[DCache.scala 131:23:chipyard.TestHarness.RocketConfig.fir@213984.4]
  wire [3:0] dataArb_io_in_0_bits_way_en; // @[DCache.scala 131:23:chipyard.TestHarness.RocketConfig.fir@213984.4]
  wire  dataArb_io_in_1_ready; // @[DCache.scala 131:23:chipyard.TestHarness.RocketConfig.fir@213984.4]
  wire  dataArb_io_in_1_valid; // @[DCache.scala 131:23:chipyard.TestHarness.RocketConfig.fir@213984.4]
  wire [11:0] dataArb_io_in_1_bits_addr; // @[DCache.scala 131:23:chipyard.TestHarness.RocketConfig.fir@213984.4]
  wire  dataArb_io_in_1_bits_write; // @[DCache.scala 131:23:chipyard.TestHarness.RocketConfig.fir@213984.4]
  wire [63:0] dataArb_io_in_1_bits_wdata; // @[DCache.scala 131:23:chipyard.TestHarness.RocketConfig.fir@213984.4]
  wire [7:0] dataArb_io_in_1_bits_eccMask; // @[DCache.scala 131:23:chipyard.TestHarness.RocketConfig.fir@213984.4]
  wire [3:0] dataArb_io_in_1_bits_way_en; // @[DCache.scala 131:23:chipyard.TestHarness.RocketConfig.fir@213984.4]
  wire  dataArb_io_in_2_ready; // @[DCache.scala 131:23:chipyard.TestHarness.RocketConfig.fir@213984.4]
  wire  dataArb_io_in_2_valid; // @[DCache.scala 131:23:chipyard.TestHarness.RocketConfig.fir@213984.4]
  wire [11:0] dataArb_io_in_2_bits_addr; // @[DCache.scala 131:23:chipyard.TestHarness.RocketConfig.fir@213984.4]
  wire [63:0] dataArb_io_in_2_bits_wdata; // @[DCache.scala 131:23:chipyard.TestHarness.RocketConfig.fir@213984.4]
  wire [7:0] dataArb_io_in_2_bits_eccMask; // @[DCache.scala 131:23:chipyard.TestHarness.RocketConfig.fir@213984.4]
  wire  dataArb_io_in_3_ready; // @[DCache.scala 131:23:chipyard.TestHarness.RocketConfig.fir@213984.4]
  wire  dataArb_io_in_3_valid; // @[DCache.scala 131:23:chipyard.TestHarness.RocketConfig.fir@213984.4]
  wire [11:0] dataArb_io_in_3_bits_addr; // @[DCache.scala 131:23:chipyard.TestHarness.RocketConfig.fir@213984.4]
  wire [63:0] dataArb_io_in_3_bits_wdata; // @[DCache.scala 131:23:chipyard.TestHarness.RocketConfig.fir@213984.4]
  wire [7:0] dataArb_io_in_3_bits_eccMask; // @[DCache.scala 131:23:chipyard.TestHarness.RocketConfig.fir@213984.4]
  wire  dataArb_io_out_valid; // @[DCache.scala 131:23:chipyard.TestHarness.RocketConfig.fir@213984.4]
  wire [11:0] dataArb_io_out_bits_addr; // @[DCache.scala 131:23:chipyard.TestHarness.RocketConfig.fir@213984.4]
  wire  dataArb_io_out_bits_write; // @[DCache.scala 131:23:chipyard.TestHarness.RocketConfig.fir@213984.4]
  wire [63:0] dataArb_io_out_bits_wdata; // @[DCache.scala 131:23:chipyard.TestHarness.RocketConfig.fir@213984.4]
  wire [7:0] dataArb_io_out_bits_eccMask; // @[DCache.scala 131:23:chipyard.TestHarness.RocketConfig.fir@213984.4]
  wire [3:0] dataArb_io_out_bits_way_en; // @[DCache.scala 131:23:chipyard.TestHarness.RocketConfig.fir@213984.4]
  wire [7:0] amoalu_io_mask; // @[DCache.scala 879:24:chipyard.TestHarness.RocketConfig.fir@218097.4]
  wire [4:0] amoalu_io_cmd; // @[DCache.scala 879:24:chipyard.TestHarness.RocketConfig.fir@218097.4]
  wire [63:0] amoalu_io_lhs; // @[DCache.scala 879:24:chipyard.TestHarness.RocketConfig.fir@218097.4]
  wire [63:0] amoalu_io_rhs; // @[DCache.scala 879:24:chipyard.TestHarness.RocketConfig.fir@218097.4]
  wire [63:0] amoalu_io_out; // @[DCache.scala 879:24:chipyard.TestHarness.RocketConfig.fir@218097.4]
  wire [7:0] _T_7; // @[PRNG.scala 86:17:chipyard.TestHarness.RocketConfig.fir@213966.4]
  wire [15:0] _T_15; // @[PRNG.scala 86:17:chipyard.TestHarness.RocketConfig.fir@213974.4]
  wire  _T_16; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@214008.4]
  reg  s1_valid; // @[DCache.scala 159:21:chipyard.TestHarness.RocketConfig.fir@214009.4]
  reg [31:0] _RAND_0;
  reg [2:0] blockProbeAfterGrantCount; // @[DCache.scala 609:38:chipyard.TestHarness.RocketConfig.fir@217446.4]
  reg [31:0] _RAND_1;
  wire  _T_2871; // @[DCache.scala 707:65:chipyard.TestHarness.RocketConfig.fir@217673.4]
  reg [6:0] lrscCount; // @[DCache.scala 421:22:chipyard.TestHarness.RocketConfig.fir@215291.4]
  reg [31:0] _RAND_2;
  wire  lrscValid; // @[DCache.scala 422:29:chipyard.TestHarness.RocketConfig.fir@215292.4]
  wire  block_probe_for_core_progress; // @[DCache.scala 707:69:chipyard.TestHarness.RocketConfig.fir@217674.4]
  reg  s1_probe; // @[DCache.scala 160:21:chipyard.TestHarness.RocketConfig.fir@214012.4]
  reg [31:0] _RAND_3;
  reg  s2_probe; // @[DCache.scala 285:21:chipyard.TestHarness.RocketConfig.fir@214602.4]
  reg [31:0] _RAND_4;
  wire  _T_381; // @[DCache.scala 286:34:chipyard.TestHarness.RocketConfig.fir@214604.4]
  reg [2:0] release_state; // @[DCache.scala 199:26:chipyard.TestHarness.RocketConfig.fir@214144.4]
  reg [31:0] _RAND_5;
  wire  _T_382; // @[DCache.scala 286:63:chipyard.TestHarness.RocketConfig.fir@214605.4]
  wire  releaseInFlight; // @[DCache.scala 286:46:chipyard.TestHarness.RocketConfig.fir@214606.4]
  reg  release_ack_wait; // @[DCache.scala 197:29:chipyard.TestHarness.RocketConfig.fir@214142.4]
  reg [31:0] _RAND_6;
  reg [31:0] release_ack_addr; // @[DCache.scala 198:29:chipyard.TestHarness.RocketConfig.fir@214143.4]
  reg [31:0] _RAND_7;
  wire [31:0] _T_2872; // @[DCache.scala 708:88:chipyard.TestHarness.RocketConfig.fir@217675.4]
  wire  _T_2874; // @[DCache.scala 708:124:chipyard.TestHarness.RocketConfig.fir@217677.4]
  wire  block_probe_for_pending_release_ack; // @[DCache.scala 708:62:chipyard.TestHarness.RocketConfig.fir@217678.4]
  wire  _T_2875; // @[DCache.scala 709:50:chipyard.TestHarness.RocketConfig.fir@217679.4]
  reg  grantInProgress; // @[DCache.scala 608:28:chipyard.TestHarness.RocketConfig.fir@217445.4]
  reg [31:0] _RAND_8;
  wire  block_probe_for_ordering; // @[DCache.scala 709:89:chipyard.TestHarness.RocketConfig.fir@217680.4]
  wire  _T_2879; // @[DCache.scala 711:79:chipyard.TestHarness.RocketConfig.fir@217685.4]
  wire  _T_2880; // @[DCache.scala 711:107:chipyard.TestHarness.RocketConfig.fir@217686.4]
  reg  s2_valid; // @[DCache.scala 283:21:chipyard.TestHarness.RocketConfig.fir@214592.4]
  reg [31:0] _RAND_9;
  wire  _T_2881; // @[DCache.scala 711:119:chipyard.TestHarness.RocketConfig.fir@217687.4]
  wire  _T_2882; // @[DCache.scala 711:47:chipyard.TestHarness.RocketConfig.fir@217688.4]
  wire  tl_out__b_ready; // @[DCache.scala 711:44:chipyard.TestHarness.RocketConfig.fir@217689.4]
  wire  _T_17; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@214011.4]
  reg [1:0] probe_bits_param; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@214015.4]
  reg [31:0] _RAND_10;
  reg [3:0] probe_bits_size; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@214015.4]
  reg [31:0] _RAND_11;
  reg  probe_bits_source; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@214015.4]
  reg [31:0] _RAND_12;
  reg [31:0] probe_bits_address; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@214015.4]
  reg [31:0] _RAND_13;
  wire  _T_19; // @[DCache.scala 163:37:chipyard.TestHarness.RocketConfig.fir@214029.4]
  wire  s1_valid_masked; // @[DCache.scala 163:34:chipyard.TestHarness.RocketConfig.fir@214030.4]
  wire  s2_meta_error; // @[DCache.scala 312:83:chipyard.TestHarness.RocketConfig.fir@214783.4]
  reg [1:0] s2_probe_state_state; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@214824.4]
  reg [31:0] _RAND_14;
  wire [3:0] _T_681; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@215065.4]
  wire  _T_738; // @[Misc.scala 55:20:chipyard.TestHarness.RocketConfig.fir@215122.4]
  wire  _T_734; // @[Misc.scala 55:20:chipyard.TestHarness.RocketConfig.fir@215118.4]
  wire  _T_730; // @[Misc.scala 55:20:chipyard.TestHarness.RocketConfig.fir@215114.4]
  wire  _T_726; // @[Misc.scala 55:20:chipyard.TestHarness.RocketConfig.fir@215110.4]
  wire  _T_722; // @[Misc.scala 55:20:chipyard.TestHarness.RocketConfig.fir@215106.4]
  wire  _T_718; // @[Misc.scala 55:20:chipyard.TestHarness.RocketConfig.fir@215102.4]
  wire  _T_714; // @[Misc.scala 55:20:chipyard.TestHarness.RocketConfig.fir@215098.4]
  wire  _T_710; // @[Misc.scala 55:20:chipyard.TestHarness.RocketConfig.fir@215094.4]
  wire  _T_706; // @[Misc.scala 55:20:chipyard.TestHarness.RocketConfig.fir@215090.4]
  wire  _T_702; // @[Misc.scala 55:20:chipyard.TestHarness.RocketConfig.fir@215086.4]
  wire  _T_698; // @[Misc.scala 55:20:chipyard.TestHarness.RocketConfig.fir@215082.4]
  wire  _T_694; // @[Misc.scala 55:20:chipyard.TestHarness.RocketConfig.fir@215078.4]
  wire  _T_711; // @[Misc.scala 37:9:chipyard.TestHarness.RocketConfig.fir@215095.4]
  wire  _T_715; // @[Misc.scala 37:9:chipyard.TestHarness.RocketConfig.fir@215099.4]
  wire  _T_719; // @[Misc.scala 37:9:chipyard.TestHarness.RocketConfig.fir@215103.4]
  wire  _T_723; // @[Misc.scala 37:9:chipyard.TestHarness.RocketConfig.fir@215107.4]
  wire  _T_727; // @[Misc.scala 37:9:chipyard.TestHarness.RocketConfig.fir@215111.4]
  wire  _T_731; // @[Misc.scala 37:9:chipyard.TestHarness.RocketConfig.fir@215115.4]
  wire  _T_735; // @[Misc.scala 37:9:chipyard.TestHarness.RocketConfig.fir@215119.4]
  wire  s2_prb_ack_data; // @[Misc.scala 37:9:chipyard.TestHarness.RocketConfig.fir@215123.4]
  wire  _T_2932; // @[Metadata.scala 50:45:chipyard.TestHarness.RocketConfig.fir@217817.10]
  reg [8:0] _T_2895; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@217707.4]
  reg [31:0] _RAND_15;
  wire  _T_2898; // @[Edges.scala 233:25:chipyard.TestHarness.RocketConfig.fir@217711.4]
  wire  _T_2943; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@217870.4]
  wire  _T_2944; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@217871.4]
  wire  _T_2945; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@217872.4]
  wire  _T_2942; // @[DCache.scala 777:25:chipyard.TestHarness.RocketConfig.fir@217863.4]
  wire  _T_2941; // @[DCache.scala 772:25:chipyard.TestHarness.RocketConfig.fir@217855.4]
  wire [2:0] _GEN_314; // @[DCache.scala 777:48:chipyard.TestHarness.RocketConfig.fir@217864.4]
  wire [2:0] tl_out__c_bits_opcode; // @[DCache.scala 781:81:chipyard.TestHarness.RocketConfig.fir@217873.4]
  wire [3:0] tl_out__c_bits_size; // @[DCache.scala 781:81:chipyard.TestHarness.RocketConfig.fir@217873.4]
  wire [26:0] _T_2889; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@217701.4]
  wire [11:0] _T_2891; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@217703.4]
  wire [8:0] _T_2894; // @[Edges.scala 222:14:chipyard.TestHarness.RocketConfig.fir@217706.4]
  wire  _T_2899; // @[Edges.scala 233:47:chipyard.TestHarness.RocketConfig.fir@217712.4]
  wire  c_last; // @[Edges.scala 233:37:chipyard.TestHarness.RocketConfig.fir@217713.4]
  wire  _T_2940; // @[DCache.scala 768:25:chipyard.TestHarness.RocketConfig.fir@217848.4]
  reg  s2_release_data_valid; // @[DCache.scala 722:34:chipyard.TestHarness.RocketConfig.fir@217728.4]
  reg [31:0] _RAND_16;
  wire  c_first; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@217710.4]
  wire  _T_2914; // @[DCache.scala 730:56:chipyard.TestHarness.RocketConfig.fir@217768.4]
  wire  _T_2915; // @[DCache.scala 730:46:chipyard.TestHarness.RocketConfig.fir@217769.4]
  wire  _T_2916; // @[DCache.scala 730:43:chipyard.TestHarness.RocketConfig.fir@217770.4]
  wire  _GEN_263; // @[DCache.scala 746:36:chipyard.TestHarness.RocketConfig.fir@217813.8]
  wire  _GEN_273; // @[DCache.scala 744:28:chipyard.TestHarness.RocketConfig.fir@217809.6]
  wire  _GEN_284; // @[DCache.scala 742:21:chipyard.TestHarness.RocketConfig.fir@217805.4]
  wire  _GEN_301; // @[DCache.scala 768:47:chipyard.TestHarness.RocketConfig.fir@217849.4]
  wire  tl_out__c_valid; // @[DCache.scala 772:48:chipyard.TestHarness.RocketConfig.fir@217856.4]
  wire  _T_2887; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@217699.4]
  wire  releaseDone; // @[Edges.scala 234:22:chipyard.TestHarness.RocketConfig.fir@217714.4]
  wire  _T_2934; // @[DCache.scala 754:22:chipyard.TestHarness.RocketConfig.fir@217826.12]
  wire  _GEN_261; // @[DCache.scala 748:45:chipyard.TestHarness.RocketConfig.fir@217818.10]
  wire  _GEN_271; // @[DCache.scala 746:36:chipyard.TestHarness.RocketConfig.fir@217813.8]
  wire  probeNack; // @[DCache.scala 744:28:chipyard.TestHarness.RocketConfig.fir@217809.6]
  reg [4:0] s1_req_cmd; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@214051.4]
  reg [31:0] _RAND_17;
  wire  _T_30; // @[Consts.scala 82:31:chipyard.TestHarness.RocketConfig.fir@214084.4]
  wire  _T_31; // @[Consts.scala 82:48:chipyard.TestHarness.RocketConfig.fir@214085.4]
  wire  _T_32; // @[Consts.scala 82:41:chipyard.TestHarness.RocketConfig.fir@214086.4]
  wire  _T_33; // @[Consts.scala 82:65:chipyard.TestHarness.RocketConfig.fir@214087.4]
  wire  _T_34; // @[Consts.scala 82:58:chipyard.TestHarness.RocketConfig.fir@214088.4]
  wire  _T_35; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@214089.4]
  wire  _T_36; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@214090.4]
  wire  _T_39; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@214093.4]
  wire  _T_37; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@214091.4]
  wire  _T_40; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@214094.4]
  wire  _T_38; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@214092.4]
  wire  _T_41; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@214095.4]
  wire  _T_42; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@214096.4]
  wire  _T_43; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@214097.4]
  wire  _T_47; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@214101.4]
  wire  _T_44; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@214098.4]
  wire  _T_48; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@214102.4]
  wire  _T_45; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@214099.4]
  wire  _T_49; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@214103.4]
  wire  _T_46; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@214100.4]
  wire  _T_50; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@214104.4]
  wire  _T_51; // @[Consts.scala 80:44:chipyard.TestHarness.RocketConfig.fir@214105.4]
  wire  s1_read; // @[Consts.scala 82:75:chipyard.TestHarness.RocketConfig.fir@214106.4]
  reg [4:0] s2_req_cmd; // @[DCache.scala 289:19:chipyard.TestHarness.RocketConfig.fir@214613.4]
  reg [31:0] _RAND_18;
  wire  _T_419; // @[Consts.scala 83:32:chipyard.TestHarness.RocketConfig.fir@214663.4]
  wire  _T_420; // @[Consts.scala 83:49:chipyard.TestHarness.RocketConfig.fir@214664.4]
  wire  _T_421; // @[Consts.scala 83:42:chipyard.TestHarness.RocketConfig.fir@214665.4]
  wire  _T_422; // @[Consts.scala 83:66:chipyard.TestHarness.RocketConfig.fir@214666.4]
  wire  _T_423; // @[Consts.scala 83:59:chipyard.TestHarness.RocketConfig.fir@214667.4]
  wire  _T_424; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@214668.4]
  wire  _T_425; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@214669.4]
  wire  _T_428; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@214672.4]
  wire  _T_426; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@214670.4]
  wire  _T_429; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@214673.4]
  wire  _T_427; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@214671.4]
  wire  _T_430; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@214674.4]
  wire  _T_431; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@214675.4]
  wire  _T_432; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@214676.4]
  wire  _T_436; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@214680.4]
  wire  _T_433; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@214677.4]
  wire  _T_437; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@214681.4]
  wire  _T_434; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@214678.4]
  wire  _T_438; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@214682.4]
  wire  _T_435; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@214679.4]
  wire  _T_439; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@214683.4]
  wire  _T_440; // @[Consts.scala 80:44:chipyard.TestHarness.RocketConfig.fir@214684.4]
  wire  s2_write; // @[Consts.scala 83:76:chipyard.TestHarness.RocketConfig.fir@214685.4]
  wire  _T_1018; // @[DCache.scala 454:39:chipyard.TestHarness.RocketConfig.fir@215506.4]
  reg  pstore1_held; // @[DCache.scala 453:25:chipyard.TestHarness.RocketConfig.fir@215505.4]
  reg [31:0] _RAND_19;
  wire  pstore1_valid_likely; // @[DCache.scala 454:51:chipyard.TestHarness.RocketConfig.fir@215507.4]
  reg [39:0] pstore1_addr; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@215343.4]
  reg [63:0] _RAND_20;
  reg [39:0] s1_req_addr; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@214051.4]
  reg [63:0] _RAND_21;
  wire  _T_1179; // @[DCache.scala 506:31:chipyard.TestHarness.RocketConfig.fir@215727.4]
  wire  _T_52; // @[Consts.scala 83:32:chipyard.TestHarness.RocketConfig.fir@214107.4]
  wire  _T_53; // @[Consts.scala 83:49:chipyard.TestHarness.RocketConfig.fir@214108.4]
  wire  _T_54; // @[Consts.scala 83:42:chipyard.TestHarness.RocketConfig.fir@214109.4]
  wire  _T_56; // @[Consts.scala 83:59:chipyard.TestHarness.RocketConfig.fir@214111.4]
  wire  s1_write; // @[Consts.scala 83:76:chipyard.TestHarness.RocketConfig.fir@214129.4]
  reg [7:0] pstore1_mask; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@215358.4]
  reg [31:0] _RAND_22;
  wire  _T_1195; // @[DCache.scala 1073:66:chipyard.TestHarness.RocketConfig.fir@215743.4]
  wire  _T_1194; // @[DCache.scala 1073:66:chipyard.TestHarness.RocketConfig.fir@215742.4]
  wire  _T_1193; // @[DCache.scala 1073:66:chipyard.TestHarness.RocketConfig.fir@215741.4]
  wire  _T_1192; // @[DCache.scala 1073:66:chipyard.TestHarness.RocketConfig.fir@215740.4]
  wire  _T_1191; // @[DCache.scala 1073:66:chipyard.TestHarness.RocketConfig.fir@215739.4]
  wire  _T_1190; // @[DCache.scala 1073:66:chipyard.TestHarness.RocketConfig.fir@215738.4]
  wire  _T_1189; // @[DCache.scala 1073:66:chipyard.TestHarness.RocketConfig.fir@215737.4]
  wire  _T_1188; // @[DCache.scala 1073:66:chipyard.TestHarness.RocketConfig.fir@215736.4]
  wire [7:0] _T_1202; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@215750.4]
  wire [7:0] _T_1217; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@215765.4]
  reg [1:0] s1_req_size; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@214051.4]
  reg [31:0] _RAND_23;
  wire  _T_340; // @[AMOALU.scala 17:57:chipyard.TestHarness.RocketConfig.fir@214552.4]
  wire  _T_342; // @[AMOALU.scala 17:46:chipyard.TestHarness.RocketConfig.fir@214554.4]
  wire  _T_344; // @[AMOALU.scala 18:22:chipyard.TestHarness.RocketConfig.fir@214556.4]
  wire [1:0] _T_345; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@214557.4]
  wire [1:0] _T_347; // @[AMOALU.scala 17:22:chipyard.TestHarness.RocketConfig.fir@214559.4]
  wire  _T_348; // @[AMOALU.scala 17:57:chipyard.TestHarness.RocketConfig.fir@214560.4]
  wire [1:0] _T_349; // @[AMOALU.scala 17:51:chipyard.TestHarness.RocketConfig.fir@214561.4]
  wire [1:0] _T_350; // @[AMOALU.scala 17:46:chipyard.TestHarness.RocketConfig.fir@214562.4]
  wire [1:0] _T_352; // @[AMOALU.scala 18:22:chipyard.TestHarness.RocketConfig.fir@214564.4]
  wire [3:0] _T_353; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@214565.4]
  wire [3:0] _T_355; // @[AMOALU.scala 17:22:chipyard.TestHarness.RocketConfig.fir@214567.4]
  wire  _T_356; // @[AMOALU.scala 17:57:chipyard.TestHarness.RocketConfig.fir@214568.4]
  wire [3:0] _T_357; // @[AMOALU.scala 17:51:chipyard.TestHarness.RocketConfig.fir@214569.4]
  wire [3:0] _T_358; // @[AMOALU.scala 17:46:chipyard.TestHarness.RocketConfig.fir@214570.4]
  wire [3:0] _T_360; // @[AMOALU.scala 18:22:chipyard.TestHarness.RocketConfig.fir@214572.4]
  wire [7:0] s1_mask_xwr; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@214573.4]
  wire  _T_1233; // @[DCache.scala 1073:66:chipyard.TestHarness.RocketConfig.fir@215781.4]
  wire  _T_1232; // @[DCache.scala 1073:66:chipyard.TestHarness.RocketConfig.fir@215780.4]
  wire  _T_1231; // @[DCache.scala 1073:66:chipyard.TestHarness.RocketConfig.fir@215779.4]
  wire  _T_1230; // @[DCache.scala 1073:66:chipyard.TestHarness.RocketConfig.fir@215778.4]
  wire  _T_1229; // @[DCache.scala 1073:66:chipyard.TestHarness.RocketConfig.fir@215777.4]
  wire  _T_1228; // @[DCache.scala 1073:66:chipyard.TestHarness.RocketConfig.fir@215776.4]
  wire  _T_1227; // @[DCache.scala 1073:66:chipyard.TestHarness.RocketConfig.fir@215775.4]
  wire  _T_1226; // @[DCache.scala 1073:66:chipyard.TestHarness.RocketConfig.fir@215774.4]
  wire [7:0] _T_1240; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@215788.4]
  wire [7:0] _T_1255; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@215803.4]
  wire [7:0] _T_1256; // @[DCache.scala 507:38:chipyard.TestHarness.RocketConfig.fir@215804.4]
  wire  _T_1257; // @[DCache.scala 507:66:chipyard.TestHarness.RocketConfig.fir@215805.4]
  wire [7:0] _T_1258; // @[DCache.scala 507:77:chipyard.TestHarness.RocketConfig.fir@215806.4]
  wire  _T_1259; // @[DCache.scala 507:92:chipyard.TestHarness.RocketConfig.fir@215807.4]
  wire  _T_1260; // @[DCache.scala 507:8:chipyard.TestHarness.RocketConfig.fir@215808.4]
  wire  _T_1261; // @[DCache.scala 506:68:chipyard.TestHarness.RocketConfig.fir@215809.4]
  wire  _T_1262; // @[DCache.scala 509:27:chipyard.TestHarness.RocketConfig.fir@215810.4]
  reg  pstore2_valid; // @[DCache.scala 450:26:chipyard.TestHarness.RocketConfig.fir@215430.4]
  reg [31:0] _RAND_24;
  reg [39:0] pstore2_addr; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@215569.4]
  reg [63:0] _RAND_25;
  wire  _T_1265; // @[DCache.scala 506:31:chipyard.TestHarness.RocketConfig.fir@215813.4]
  reg [7:0] mask; // @[DCache.scala 480:19:chipyard.TestHarness.RocketConfig.fir@215649.4]
  reg [31:0] _RAND_26;
  wire  _T_1281; // @[DCache.scala 1073:66:chipyard.TestHarness.RocketConfig.fir@215829.4]
  wire  _T_1280; // @[DCache.scala 1073:66:chipyard.TestHarness.RocketConfig.fir@215828.4]
  wire  _T_1279; // @[DCache.scala 1073:66:chipyard.TestHarness.RocketConfig.fir@215827.4]
  wire  _T_1278; // @[DCache.scala 1073:66:chipyard.TestHarness.RocketConfig.fir@215826.4]
  wire  _T_1277; // @[DCache.scala 1073:66:chipyard.TestHarness.RocketConfig.fir@215825.4]
  wire  _T_1276; // @[DCache.scala 1073:66:chipyard.TestHarness.RocketConfig.fir@215824.4]
  wire  _T_1275; // @[DCache.scala 1073:66:chipyard.TestHarness.RocketConfig.fir@215823.4]
  wire  _T_1274; // @[DCache.scala 1073:66:chipyard.TestHarness.RocketConfig.fir@215822.4]
  wire [7:0] _T_1288; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@215836.4]
  wire [7:0] _T_1303; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@215851.4]
  wire [7:0] _T_1342; // @[DCache.scala 507:38:chipyard.TestHarness.RocketConfig.fir@215890.4]
  wire  _T_1343; // @[DCache.scala 507:66:chipyard.TestHarness.RocketConfig.fir@215891.4]
  wire [7:0] _T_1344; // @[DCache.scala 507:77:chipyard.TestHarness.RocketConfig.fir@215892.4]
  wire  _T_1345; // @[DCache.scala 507:92:chipyard.TestHarness.RocketConfig.fir@215893.4]
  wire  _T_1346; // @[DCache.scala 507:8:chipyard.TestHarness.RocketConfig.fir@215894.4]
  wire  _T_1347; // @[DCache.scala 506:68:chipyard.TestHarness.RocketConfig.fir@215895.4]
  wire  _T_1348; // @[DCache.scala 510:21:chipyard.TestHarness.RocketConfig.fir@215896.4]
  wire  s1_hazard; // @[DCache.scala 509:69:chipyard.TestHarness.RocketConfig.fir@215897.4]
  wire  s1_raw_hazard; // @[DCache.scala 511:31:chipyard.TestHarness.RocketConfig.fir@215898.4]
  wire  _T_1349; // @[DCache.scala 516:18:chipyard.TestHarness.RocketConfig.fir@215900.4]
  wire [5:0] _T_378; // @[DCache.scala 284:54:chipyard.TestHarness.RocketConfig.fir@214598.4]
  wire  _T_379; // @[DCache.scala 284:61:chipyard.TestHarness.RocketConfig.fir@214599.4]
  wire  _T_380; // @[DCache.scala 284:38:chipyard.TestHarness.RocketConfig.fir@214600.4]
  wire  s2_valid_no_xcpt; // @[DCache.scala 284:35:chipyard.TestHarness.RocketConfig.fir@214601.4]
  reg  _T_384; // @[DCache.scala 287:48:chipyard.TestHarness.RocketConfig.fir@214608.4]
  reg [31:0] _RAND_27;
  wire  s2_valid_masked; // @[DCache.scala 287:42:chipyard.TestHarness.RocketConfig.fir@214610.4]
  wire  _T_644; // @[DCache.scala 347:74:chipyard.TestHarness.RocketConfig.fir@215003.4]
  wire  _T_645; // @[DCache.scala 347:71:chipyard.TestHarness.RocketConfig.fir@215004.4]
  wire  _T_540; // @[Consts.scala 84:54:chipyard.TestHarness.RocketConfig.fir@214890.4]
  wire  _T_541; // @[Consts.scala 84:47:chipyard.TestHarness.RocketConfig.fir@214891.4]
  wire  _T_542; // @[Consts.scala 84:71:chipyard.TestHarness.RocketConfig.fir@214892.4]
  wire  _T_543; // @[Consts.scala 84:64:chipyard.TestHarness.RocketConfig.fir@214893.4]
  reg [1:0] s2_hit_state_state; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@214833.4]
  reg [31:0] _RAND_28;
  wire [3:0] _T_545; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@214895.4]
  wire  _T_603; // @[Misc.scala 48:20:chipyard.TestHarness.RocketConfig.fir@214953.4]
  wire  _T_600; // @[Misc.scala 48:20:chipyard.TestHarness.RocketConfig.fir@214950.4]
  wire  _T_597; // @[Misc.scala 48:20:chipyard.TestHarness.RocketConfig.fir@214947.4]
  wire  _T_594; // @[Misc.scala 48:20:chipyard.TestHarness.RocketConfig.fir@214944.4]
  wire  _T_591; // @[Misc.scala 48:20:chipyard.TestHarness.RocketConfig.fir@214941.4]
  wire  _T_588; // @[Misc.scala 48:20:chipyard.TestHarness.RocketConfig.fir@214938.4]
  wire  _T_585; // @[Misc.scala 48:20:chipyard.TestHarness.RocketConfig.fir@214935.4]
  wire  _T_582; // @[Misc.scala 48:20:chipyard.TestHarness.RocketConfig.fir@214932.4]
  wire  _T_579; // @[Misc.scala 48:20:chipyard.TestHarness.RocketConfig.fir@214929.4]
  wire  _T_576; // @[Misc.scala 48:20:chipyard.TestHarness.RocketConfig.fir@214926.4]
  wire  _T_573; // @[Misc.scala 48:20:chipyard.TestHarness.RocketConfig.fir@214923.4]
  wire  _T_570; // @[Misc.scala 48:20:chipyard.TestHarness.RocketConfig.fir@214920.4]
  wire  _T_589; // @[Misc.scala 34:9:chipyard.TestHarness.RocketConfig.fir@214939.4]
  wire  _T_592; // @[Misc.scala 34:9:chipyard.TestHarness.RocketConfig.fir@214942.4]
  wire  _T_595; // @[Misc.scala 34:9:chipyard.TestHarness.RocketConfig.fir@214945.4]
  wire  _T_598; // @[Misc.scala 34:9:chipyard.TestHarness.RocketConfig.fir@214948.4]
  wire  _T_601; // @[Misc.scala 34:9:chipyard.TestHarness.RocketConfig.fir@214951.4]
  wire  s2_hit; // @[Misc.scala 34:9:chipyard.TestHarness.RocketConfig.fir@214954.4]
  wire  s2_valid_hit_maybe_flush_pre_data_ecc_and_waw; // @[DCache.scala 347:89:chipyard.TestHarness.RocketConfig.fir@215005.4]
  wire  _T_397; // @[Consts.scala 82:31:chipyard.TestHarness.RocketConfig.fir@214640.4]
  wire  _T_399; // @[Consts.scala 82:41:chipyard.TestHarness.RocketConfig.fir@214642.4]
  wire  _T_401; // @[Consts.scala 82:58:chipyard.TestHarness.RocketConfig.fir@214644.4]
  wire  s2_read; // @[Consts.scala 82:75:chipyard.TestHarness.RocketConfig.fir@214662.4]
  wire  s2_readwrite; // @[DCache.scala 304:30:chipyard.TestHarness.RocketConfig.fir@214686.4]
  wire  s2_valid_hit_pre_data_ecc_and_waw; // @[DCache.scala 368:89:chipyard.TestHarness.RocketConfig.fir@215006.4]
  wire [1:0] _T_572; // @[Misc.scala 34:36:chipyard.TestHarness.RocketConfig.fir@214922.4]
  wire [1:0] _T_575; // @[Misc.scala 34:36:chipyard.TestHarness.RocketConfig.fir@214925.4]
  wire [1:0] _T_578; // @[Misc.scala 34:36:chipyard.TestHarness.RocketConfig.fir@214928.4]
  wire [1:0] _T_581; // @[Misc.scala 34:36:chipyard.TestHarness.RocketConfig.fir@214931.4]
  wire [1:0] _T_584; // @[Misc.scala 34:36:chipyard.TestHarness.RocketConfig.fir@214934.4]
  wire [1:0] _T_587; // @[Misc.scala 34:36:chipyard.TestHarness.RocketConfig.fir@214937.4]
  wire [1:0] _T_590; // @[Misc.scala 34:36:chipyard.TestHarness.RocketConfig.fir@214940.4]
  wire [1:0] _T_593; // @[Misc.scala 34:36:chipyard.TestHarness.RocketConfig.fir@214943.4]
  wire [1:0] _T_596; // @[Misc.scala 34:36:chipyard.TestHarness.RocketConfig.fir@214946.4]
  wire [1:0] _T_599; // @[Misc.scala 34:36:chipyard.TestHarness.RocketConfig.fir@214949.4]
  wire [1:0] _T_602; // @[Misc.scala 34:36:chipyard.TestHarness.RocketConfig.fir@214952.4]
  wire [1:0] s2_grow_param; // @[Misc.scala 34:36:chipyard.TestHarness.RocketConfig.fir@214955.4]
  wire  _T_805; // @[Metadata.scala 46:46:chipyard.TestHarness.RocketConfig.fir@215199.4]
  wire  s2_update_meta; // @[Metadata.scala 47:40:chipyard.TestHarness.RocketConfig.fir@215200.4]
  wire  _T_824; // @[DCache.scala 395:62:chipyard.TestHarness.RocketConfig.fir@215222.4]
  wire  _T_825; // @[DCache.scala 395:24:chipyard.TestHarness.RocketConfig.fir@215223.4]
  wire  s1_readwrite; // @[DCache.scala 185:30:chipyard.TestHarness.RocketConfig.fir@214130.4]
  wire  _T_74; // @[DCache.scala 187:34:chipyard.TestHarness.RocketConfig.fir@214132.4]
  wire  s1_flush_line; // @[DCache.scala 187:50:chipyard.TestHarness.RocketConfig.fir@214134.4]
  wire  _T_227; // @[DCache.scala 229:38:chipyard.TestHarness.RocketConfig.fir@214337.4]
  wire  _T_228; // @[DCache.scala 229:69:chipyard.TestHarness.RocketConfig.fir@214338.4]
  wire  s1_cmd_uses_tlb; // @[DCache.scala 229:55:chipyard.TestHarness.RocketConfig.fir@214339.4]
  wire  _T_242; // @[DCache.scala 235:39:chipyard.TestHarness.RocketConfig.fir@214360.4]
  wire  _T_243; // @[DCache.scala 235:58:chipyard.TestHarness.RocketConfig.fir@214361.4]
  wire  _GEN_118; // @[DCache.scala 395:82:chipyard.TestHarness.RocketConfig.fir@215224.4]
  wire  _GEN_142; // @[DCache.scala 516:36:chipyard.TestHarness.RocketConfig.fir@215901.4]
  wire  _GEN_282; // @[DCache.scala 757:24:chipyard.TestHarness.RocketConfig.fir@217831.6]
  wire  s1_nack; // @[DCache.scala 742:21:chipyard.TestHarness.RocketConfig.fir@217805.4]
  wire  _T_20; // @[DCache.scala 164:41:chipyard.TestHarness.RocketConfig.fir@214031.4]
  wire  s1_valid_not_nacked; // @[DCache.scala 164:38:chipyard.TestHarness.RocketConfig.fir@214032.4]
  wire  _T_22; // @[DCache.scala 167:43:chipyard.TestHarness.RocketConfig.fir@214038.4]
  wire  s0_clk_en; // @[DCache.scala 167:40:chipyard.TestHarness.RocketConfig.fir@214039.4]
  wire [39:0] s0_req_addr; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@214045.4]
  wire  _T_26; // @[DCache.scala 171:9:chipyard.TestHarness.RocketConfig.fir@214047.4]
  wire  s0_req_phys; // @[DCache.scala 171:34:chipyard.TestHarness.RocketConfig.fir@214048.4]
  reg [6:0] s1_req_tag; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@214051.4]
  reg [31:0] _RAND_29;
  reg  s1_req_signed; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@214051.4]
  reg [31:0] _RAND_30;
  reg [1:0] s1_req_dprv; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@214051.4]
  reg [31:0] _RAND_31;
  reg [39:0] s1_tlb_req_vaddr; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@214077.4]
  reg [63:0] _RAND_32;
  reg  s1_tlb_req_passthrough; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@214077.4]
  reg [31:0] _RAND_33;
  reg [1:0] s1_tlb_req_size; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@214077.4]
  reg [31:0] _RAND_34;
  reg [4:0] s1_tlb_req_cmd; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@214077.4]
  reg [31:0] _RAND_35;
  wire  s1_sfence; // @[DCache.scala 186:30:chipyard.TestHarness.RocketConfig.fir@214131.4]
  reg  s1_flush_valid; // @[DCache.scala 188:27:chipyard.TestHarness.RocketConfig.fir@214135.4]
  reg [31:0] _RAND_36;
  reg  cached_grant_wait; // @[DCache.scala 196:30:chipyard.TestHarness.RocketConfig.fir@214141.4]
  reg [31:0] _RAND_37;
  wire  inWriteback; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@214149.4]
  wire  _T_78; // @[DCache.scala 203:38:chipyard.TestHarness.RocketConfig.fir@214152.4]
  wire  _T_79; // @[DCache.scala 203:54:chipyard.TestHarness.RocketConfig.fir@214153.4]
  wire  _T_80; // @[DCache.scala 203:51:chipyard.TestHarness.RocketConfig.fir@214154.4]
  wire  _T_82; // @[DCache.scala 203:73:chipyard.TestHarness.RocketConfig.fir@214156.4]
  reg  uncachedInFlight_0; // @[DCache.scala 206:33:chipyard.TestHarness.RocketConfig.fir@214161.4]
  reg [31:0] _RAND_38;
  reg [39:0] uncachedReqs_0_addr; // @[DCache.scala 207:25:chipyard.TestHarness.RocketConfig.fir@214162.4]
  reg [63:0] _RAND_39;
  reg [6:0] uncachedReqs_0_tag; // @[DCache.scala 207:25:chipyard.TestHarness.RocketConfig.fir@214162.4]
  reg [31:0] _RAND_40;
  reg [1:0] uncachedReqs_0_size; // @[DCache.scala 207:25:chipyard.TestHarness.RocketConfig.fir@214162.4]
  reg [31:0] _RAND_41;
  reg  uncachedReqs_0_signed; // @[DCache.scala 207:25:chipyard.TestHarness.RocketConfig.fir@214162.4]
  reg [31:0] _RAND_42;
  wire  _T_84; // @[Consts.scala 82:31:chipyard.TestHarness.RocketConfig.fir@214166.4]
  wire  _T_85; // @[Consts.scala 82:48:chipyard.TestHarness.RocketConfig.fir@214167.4]
  wire  _T_86; // @[Consts.scala 82:41:chipyard.TestHarness.RocketConfig.fir@214168.4]
  wire  _T_87; // @[Consts.scala 82:65:chipyard.TestHarness.RocketConfig.fir@214169.4]
  wire  _T_88; // @[Consts.scala 82:58:chipyard.TestHarness.RocketConfig.fir@214170.4]
  wire  _T_89; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@214171.4]
  wire  _T_90; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@214172.4]
  wire  _T_91; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@214173.4]
  wire  _T_92; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@214174.4]
  wire  _T_93; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@214175.4]
  wire  _T_94; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@214176.4]
  wire  _T_95; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@214177.4]
  wire  _T_96; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@214178.4]
  wire  _T_97; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@214179.4]
  wire  _T_98; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@214180.4]
  wire  _T_99; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@214181.4]
  wire  _T_100; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@214182.4]
  wire  _T_101; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@214183.4]
  wire  _T_102; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@214184.4]
  wire  _T_103; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@214185.4]
  wire  _T_104; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@214186.4]
  wire  _T_105; // @[Consts.scala 80:44:chipyard.TestHarness.RocketConfig.fir@214187.4]
  wire  s0_read; // @[Consts.scala 82:75:chipyard.TestHarness.RocketConfig.fir@214188.4]
  wire  _T_106; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@214189.4]
  wire  _T_107; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@214190.4]
  wire  _T_108; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@214191.4]
  wire  res; // @[DCache.scala 1077:15:chipyard.TestHarness.RocketConfig.fir@214192.4]
  wire  _T_135; // @[Consts.scala 83:49:chipyard.TestHarness.RocketConfig.fir@214219.4]
  wire  _T_136; // @[Consts.scala 83:42:chipyard.TestHarness.RocketConfig.fir@214220.4]
  wire  _T_138; // @[Consts.scala 83:59:chipyard.TestHarness.RocketConfig.fir@214222.4]
  wire  _T_156; // @[Consts.scala 83:76:chipyard.TestHarness.RocketConfig.fir@214240.4]
  wire  _T_160; // @[DCache.scala 1083:23:chipyard.TestHarness.RocketConfig.fir@214244.4]
  wire  _T_161; // @[DCache.scala 1082:21:chipyard.TestHarness.RocketConfig.fir@214245.4]
  wire  _T_162; // @[DCache.scala 1078:12:chipyard.TestHarness.RocketConfig.fir@214246.4]
  wire  _T_163; // @[DCache.scala 1078:28:chipyard.TestHarness.RocketConfig.fir@214247.4]
  wire  _T_165; // @[DCache.scala 1078:11:chipyard.TestHarness.RocketConfig.fir@214249.4]
  wire  _T_166; // @[DCache.scala 1078:11:chipyard.TestHarness.RocketConfig.fir@214250.4]
  wire  _T_167; // @[DCache.scala 212:46:chipyard.TestHarness.RocketConfig.fir@214255.4]
  wire  _T_170; // @[DCache.scala 218:9:chipyard.TestHarness.RocketConfig.fir@214264.4]
  wire  _T_171; // @[DCache.scala 218:33:chipyard.TestHarness.RocketConfig.fir@214265.4]
  wire  _GEN_28; // @[DCache.scala 218:45:chipyard.TestHarness.RocketConfig.fir@214266.4]
  wire  _T_223; // @[DCache.scala 219:75:chipyard.TestHarness.RocketConfig.fir@214320.4]
  wire  _T_224; // @[DCache.scala 219:54:chipyard.TestHarness.RocketConfig.fir@214321.4]
  reg  s1_did_read; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@214322.4]
  reg [31:0] _RAND_43;
  wire  _GEN_30; // @[DCache.scala 226:34:chipyard.TestHarness.RocketConfig.fir@214334.4]
  wire  _T_235; // @[DCache.scala 234:9:chipyard.TestHarness.RocketConfig.fir@214350.4]
  wire  _T_236; // @[DCache.scala 234:30:chipyard.TestHarness.RocketConfig.fir@214351.4]
  wire  _T_237; // @[DCache.scala 234:27:chipyard.TestHarness.RocketConfig.fir@214352.4]
  wire  _T_238; // @[DCache.scala 234:56:chipyard.TestHarness.RocketConfig.fir@214353.4]
  wire  _T_239; // @[DCache.scala 234:53:chipyard.TestHarness.RocketConfig.fir@214354.4]
  wire  _GEN_31; // @[DCache.scala 234:79:chipyard.TestHarness.RocketConfig.fir@214355.4]
  wire [31:0] s1_paddr; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@214390.4]
  wire [1:0] s1_victim_way; // @[package.scala 120:13:chipyard.TestHarness.RocketConfig.fir@214391.4]
  wire  _T_258; // @[DCache.scala 262:27:chipyard.TestHarness.RocketConfig.fir@214395.4]
  wire [5:0] _GEN_42; // @[DCache.scala 262:50:chipyard.TestHarness.RocketConfig.fir@214396.4]
  wire [21:0] _T_266; // @[:chipyard.TestHarness.RocketConfig.fir@214434.4 :chipyard.TestHarness.RocketConfig.fir@214436.4]
  wire [19:0] s1_meta_uncorrected_0_tag; // @[DCache.scala 267:80:chipyard.TestHarness.RocketConfig.fir@214437.4]
  wire [1:0] s1_meta_uncorrected_0_coh_state; // @[DCache.scala 267:80:chipyard.TestHarness.RocketConfig.fir@214439.4]
  wire [21:0] _T_269; // @[:chipyard.TestHarness.RocketConfig.fir@214443.4 :chipyard.TestHarness.RocketConfig.fir@214445.4]
  wire [19:0] s1_meta_uncorrected_1_tag; // @[DCache.scala 267:80:chipyard.TestHarness.RocketConfig.fir@214446.4]
  wire [1:0] s1_meta_uncorrected_1_coh_state; // @[DCache.scala 267:80:chipyard.TestHarness.RocketConfig.fir@214448.4]
  wire [21:0] _T_272; // @[:chipyard.TestHarness.RocketConfig.fir@214452.4 :chipyard.TestHarness.RocketConfig.fir@214454.4]
  wire [19:0] s1_meta_uncorrected_2_tag; // @[DCache.scala 267:80:chipyard.TestHarness.RocketConfig.fir@214455.4]
  wire [1:0] s1_meta_uncorrected_2_coh_state; // @[DCache.scala 267:80:chipyard.TestHarness.RocketConfig.fir@214457.4]
  wire [21:0] _T_275; // @[:chipyard.TestHarness.RocketConfig.fir@214461.4 :chipyard.TestHarness.RocketConfig.fir@214463.4]
  wire [19:0] s1_meta_uncorrected_3_tag; // @[DCache.scala 267:80:chipyard.TestHarness.RocketConfig.fir@214464.4]
  wire [1:0] s1_meta_uncorrected_3_coh_state; // @[DCache.scala 267:80:chipyard.TestHarness.RocketConfig.fir@214466.4]
  wire [19:0] s1_tag; // @[DCache.scala 268:29:chipyard.TestHarness.RocketConfig.fir@214468.4]
  wire  _T_278; // @[Metadata.scala 50:45:chipyard.TestHarness.RocketConfig.fir@214469.4]
  wire  _T_279; // @[DCache.scala 269:83:chipyard.TestHarness.RocketConfig.fir@214470.4]
  wire  _T_280; // @[DCache.scala 269:74:chipyard.TestHarness.RocketConfig.fir@214471.4]
  wire  _T_281; // @[Metadata.scala 50:45:chipyard.TestHarness.RocketConfig.fir@214472.4]
  wire  _T_282; // @[DCache.scala 269:83:chipyard.TestHarness.RocketConfig.fir@214473.4]
  wire  _T_283; // @[DCache.scala 269:74:chipyard.TestHarness.RocketConfig.fir@214474.4]
  wire  _T_284; // @[Metadata.scala 50:45:chipyard.TestHarness.RocketConfig.fir@214475.4]
  wire  _T_285; // @[DCache.scala 269:83:chipyard.TestHarness.RocketConfig.fir@214476.4]
  wire  _T_286; // @[DCache.scala 269:74:chipyard.TestHarness.RocketConfig.fir@214477.4]
  wire  _T_287; // @[Metadata.scala 50:45:chipyard.TestHarness.RocketConfig.fir@214478.4]
  wire  _T_288; // @[DCache.scala 269:83:chipyard.TestHarness.RocketConfig.fir@214479.4]
  wire  _T_289; // @[DCache.scala 269:74:chipyard.TestHarness.RocketConfig.fir@214480.4]
  wire [3:0] s1_meta_hit_way; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@214483.4]
  wire  _T_294; // @[DCache.scala 271:62:chipyard.TestHarness.RocketConfig.fir@214488.4]
  wire  _T_295; // @[DCache.scala 271:59:chipyard.TestHarness.RocketConfig.fir@214489.4]
  wire [1:0] _T_296; // @[DCache.scala 271:41:chipyard.TestHarness.RocketConfig.fir@214490.4]
  wire  _T_299; // @[DCache.scala 271:59:chipyard.TestHarness.RocketConfig.fir@214493.4]
  wire [1:0] _T_300; // @[DCache.scala 271:41:chipyard.TestHarness.RocketConfig.fir@214494.4]
  wire  _T_303; // @[DCache.scala 271:59:chipyard.TestHarness.RocketConfig.fir@214497.4]
  wire [1:0] _T_304; // @[DCache.scala 271:41:chipyard.TestHarness.RocketConfig.fir@214498.4]
  wire  _T_307; // @[DCache.scala 271:59:chipyard.TestHarness.RocketConfig.fir@214501.4]
  wire [1:0] _T_308; // @[DCache.scala 271:41:chipyard.TestHarness.RocketConfig.fir@214502.4]
  wire [1:0] _T_309; // @[DCache.scala 272:19:chipyard.TestHarness.RocketConfig.fir@214503.4]
  wire [1:0] _T_310; // @[DCache.scala 272:19:chipyard.TestHarness.RocketConfig.fir@214504.4]
  wire [1:0] s1_meta_hit_state_state; // @[DCache.scala 272:19:chipyard.TestHarness.RocketConfig.fir@214505.4]
  wire  _T_316; // @[package.scala 32:86:chipyard.TestHarness.RocketConfig.fir@214515.4]
  wire  _T_318; // @[package.scala 32:86:chipyard.TestHarness.RocketConfig.fir@214517.4]
  wire  _T_320; // @[package.scala 32:86:chipyard.TestHarness.RocketConfig.fir@214519.4]
  wire  s2_hit_valid; // @[Metadata.scala 50:45:chipyard.TestHarness.RocketConfig.fir@214843.4]
  reg [3:0] s2_hit_way; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@214828.4]
  reg [31:0] _RAND_44;
  reg [1:0] _T_673; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@215045.4]
  reg [31:0] _RAND_45;
  wire [3:0] _T_674; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@215049.4]
  wire [3:0] s2_victim_way; // @[DCache.scala 381:26:chipyard.TestHarness.RocketConfig.fir@215050.4]
  reg [3:0] s2_probe_way; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@214820.4]
  reg [31:0] _RAND_46;
  wire [3:0] releaseWay; // @[DCache.scala 781:81:chipyard.TestHarness.RocketConfig.fir@217873.4]
  wire [3:0] _T_321; // @[DCache.scala 275:61:chipyard.TestHarness.RocketConfig.fir@214521.4]
  wire [31:0] _T_332; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@214535.4]
  wire [31:0] _T_335; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@214538.4]
  wire [63:0] _T_336; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@214539.4]
  wire  _T_363; // @[DCache.scala 281:28:chipyard.TestHarness.RocketConfig.fir@214577.4]
  wire  _T_364; // @[DCache.scala 281:10:chipyard.TestHarness.RocketConfig.fir@214578.4]
  wire [7:0] _T_365; // @[DCache.scala 281:71:chipyard.TestHarness.RocketConfig.fir@214579.4]
  wire [7:0] _T_366; // @[DCache.scala 281:69:chipyard.TestHarness.RocketConfig.fir@214580.4]
  wire  _T_367; // @[DCache.scala 281:93:chipyard.TestHarness.RocketConfig.fir@214581.4]
  wire  _T_368; // @[DCache.scala 281:53:chipyard.TestHarness.RocketConfig.fir@214582.4]
  wire  _T_370; // @[DCache.scala 281:9:chipyard.TestHarness.RocketConfig.fir@214584.4]
  wire  _T_371; // @[DCache.scala 281:9:chipyard.TestHarness.RocketConfig.fir@214585.4]
  wire  _T_372; // @[DCache.scala 283:46:chipyard.TestHarness.RocketConfig.fir@214590.4]
  wire  _T_373; // @[DCache.scala 283:43:chipyard.TestHarness.RocketConfig.fir@214591.4]
  reg [39:0] s2_req_addr; // @[DCache.scala 289:19:chipyard.TestHarness.RocketConfig.fir@214613.4]
  reg [63:0] _RAND_47;
  reg [6:0] s2_req_tag; // @[DCache.scala 289:19:chipyard.TestHarness.RocketConfig.fir@214613.4]
  reg [31:0] _RAND_48;
  reg [1:0] s2_req_size; // @[DCache.scala 289:19:chipyard.TestHarness.RocketConfig.fir@214613.4]
  reg [31:0] _RAND_49;
  reg  s2_req_signed; // @[DCache.scala 289:19:chipyard.TestHarness.RocketConfig.fir@214613.4]
  reg [31:0] _RAND_50;
  reg [1:0] s2_req_dprv; // @[DCache.scala 289:19:chipyard.TestHarness.RocketConfig.fir@214613.4]
  reg [31:0] _RAND_51;
  wire  _T_386; // @[DCache.scala 290:37:chipyard.TestHarness.RocketConfig.fir@214614.4]
  wire  s2_cmd_flush_line; // @[DCache.scala 291:54:chipyard.TestHarness.RocketConfig.fir@214620.4]
  reg  s2_tlb_xcpt_pf_ld; // @[DCache.scala 292:24:chipyard.TestHarness.RocketConfig.fir@214621.4]
  reg [31:0] _RAND_52;
  reg  s2_tlb_xcpt_pf_st; // @[DCache.scala 292:24:chipyard.TestHarness.RocketConfig.fir@214621.4]
  reg [31:0] _RAND_53;
  reg  s2_tlb_xcpt_ae_ld; // @[DCache.scala 292:24:chipyard.TestHarness.RocketConfig.fir@214621.4]
  reg [31:0] _RAND_54;
  reg  s2_tlb_xcpt_ae_st; // @[DCache.scala 292:24:chipyard.TestHarness.RocketConfig.fir@214621.4]
  reg [31:0] _RAND_55;
  reg  s2_tlb_xcpt_ma_ld; // @[DCache.scala 292:24:chipyard.TestHarness.RocketConfig.fir@214621.4]
  reg [31:0] _RAND_56;
  reg  s2_tlb_xcpt_ma_st; // @[DCache.scala 292:24:chipyard.TestHarness.RocketConfig.fir@214621.4]
  reg [31:0] _RAND_57;
  reg  s2_pma_cacheable; // @[DCache.scala 293:19:chipyard.TestHarness.RocketConfig.fir@214622.4]
  reg [31:0] _RAND_58;
  reg [39:0] s2_uncached_resp_addr; // @[DCache.scala 294:34:chipyard.TestHarness.RocketConfig.fir@214623.4]
  reg [63:0] _RAND_59;
  wire  _T_391; // @[DCache.scala 295:29:chipyard.TestHarness.RocketConfig.fir@214624.4]
  wire  _T_392_cacheable; // @[DCache.scala 299:18:chipyard.TestHarness.RocketConfig.fir@214629.6]
  reg [39:0] _T_394; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@214633.4]
  reg [63:0] _RAND_60;
  wire [39:0] s2_vaddr; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@214639.4]
  reg  s2_flush_valid_pre_tag_ecc; // @[DCache.scala 305:43:chipyard.TestHarness.RocketConfig.fir@214687.4]
  reg [31:0] _RAND_61;
  wire  s1_meta_clk_en; // @[DCache.scala 307:62:chipyard.TestHarness.RocketConfig.fir@214690.4]
  reg [21:0] _T_466; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@214769.4]
  reg [31:0] _RAND_62;
  wire [19:0] s2_meta_corrected_3_tag; // @[DCache.scala 311:99:chipyard.TestHarness.RocketConfig.fir@214778.4]
  wire [1:0] s2_meta_corrected_3_coh_state; // @[DCache.scala 311:99:chipyard.TestHarness.RocketConfig.fir@214780.4]
  wire  s2_flush_valid; // @[DCache.scala 313:51:chipyard.TestHarness.RocketConfig.fir@214785.4]
  wire  _T_472; // @[DCache.scala 316:23:chipyard.TestHarness.RocketConfig.fir@214786.4]
  wire  en; // @[DCache.scala 316:38:chipyard.TestHarness.RocketConfig.fir@214787.4]
  wire  _T_473; // @[DCache.scala 317:64:chipyard.TestHarness.RocketConfig.fir@214788.4]
  wire  _T_474; // @[DCache.scala 317:63:chipyard.TestHarness.RocketConfig.fir@214789.4]
  wire  word_en; // @[DCache.scala 317:22:chipyard.TestHarness.RocketConfig.fir@214790.4]
  wire [63:0] s1_all_data_ways_0; // @[DCache.scala 277:29:chipyard.TestHarness.RocketConfig.fir@214542.4 DCache.scala 277:29:chipyard.TestHarness.RocketConfig.fir@214544.4]
  wire [63:0] s1_all_data_ways_1; // @[DCache.scala 277:29:chipyard.TestHarness.RocketConfig.fir@214542.4 DCache.scala 277:29:chipyard.TestHarness.RocketConfig.fir@214545.4]
  wire [63:0] s1_all_data_ways_2; // @[DCache.scala 277:29:chipyard.TestHarness.RocketConfig.fir@214542.4 DCache.scala 277:29:chipyard.TestHarness.RocketConfig.fir@214546.4]
  wire [63:0] s1_all_data_ways_3; // @[DCache.scala 277:29:chipyard.TestHarness.RocketConfig.fir@214542.4 DCache.scala 277:29:chipyard.TestHarness.RocketConfig.fir@214547.4]
  wire  _T_475; // @[DCache.scala 327:28:chipyard.TestHarness.RocketConfig.fir@214796.4]
  wire  s1_word_en; // @[DCache.scala 327:27:chipyard.TestHarness.RocketConfig.fir@214797.4]
  wire  grantIsUncachedData; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@217418.4]
  reg  blockUncachedGrant; // @[DCache.scala 691:33:chipyard.TestHarness.RocketConfig.fir@217657.4]
  reg [31:0] _RAND_63;
  wire  _T_2866; // @[DCache.scala 693:54:chipyard.TestHarness.RocketConfig.fir@217659.4]
  wire  _T_2867; // @[DCache.scala 693:31:chipyard.TestHarness.RocketConfig.fir@217660.4]
  wire  grantIsRefill; // @[DCache.scala 607:29:chipyard.TestHarness.RocketConfig.fir@217444.4]
  wire  _T_2780; // @[DCache.scala 663:26:chipyard.TestHarness.RocketConfig.fir@217550.4]
  wire  _T_2781; // @[DCache.scala 663:23:chipyard.TestHarness.RocketConfig.fir@217551.4]
  wire  _T_2734; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@217440.4]
  wire  grantIsCached; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@217442.4]
  reg [8:0] _T_2702; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@217398.4]
  reg [31:0] _RAND_64;
  wire  d_first; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@217401.4]
  wire  _T_2742; // @[DCache.scala 612:41:chipyard.TestHarness.RocketConfig.fir@217457.4]
  wire  _T_2743; // @[DCache.scala 612:50:chipyard.TestHarness.RocketConfig.fir@217458.4]
  wire  canAcceptCachedGrant; // @[DCache.scala 611:30:chipyard.TestHarness.RocketConfig.fir@217456.4]
  wire  _T_2744; // @[DCache.scala 612:69:chipyard.TestHarness.RocketConfig.fir@217459.4]
  wire  _T_2745; // @[DCache.scala 612:24:chipyard.TestHarness.RocketConfig.fir@217460.4]
  wire  _GEN_232; // @[DCache.scala 663:51:chipyard.TestHarness.RocketConfig.fir@217552.4]
  wire  tl_out__d_ready; // @[DCache.scala 693:68:chipyard.TestHarness.RocketConfig.fir@217661.4]
  wire  _T_2750; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@217468.4]
  wire  _T_2711; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@217414.4]
  wire  _T_2713; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@217416.4]
  wire  _T_2712; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@217415.4]
  wire  grantIsUncached; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@217417.4]
  wire [4:0] _GEN_188; // @[DCache.scala 632:34:chipyard.TestHarness.RocketConfig.fir@217500.10]
  wire [4:0] _GEN_197; // @[DCache.scala 625:35:chipyard.TestHarness.RocketConfig.fir@217487.8]
  wire [4:0] _GEN_210; // @[DCache.scala 616:26:chipyard.TestHarness.RocketConfig.fir@217470.6]
  wire [4:0] s1_data_way; // @[DCache.scala 615:26:chipyard.TestHarness.RocketConfig.fir@217469.4]
  wire [4:0] _T_477; // @[DCache.scala 329:28:chipyard.TestHarness.RocketConfig.fir@214799.4]
  wire [63:0] _T_483; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@214805.4]
  wire [63:0] _T_484; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@214806.4]
  wire [63:0] _T_485; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@214807.4]
  wire [63:0] _T_486; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@214808.4]
  wire [63:0] _T_487; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@214809.4]
  wire [63:0] _T_488; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@214810.4]
  wire [63:0] _T_489; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@214811.4]
  wire [63:0] _T_490; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@214812.4]
  wire [63:0] _T_491; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@214813.4]
  reg [63:0] s2_data; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@214816.4]
  reg [63:0] _RAND_65;
  wire [31:0] _T_634; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@214991.4]
  wire [31:0] _T_637; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@214994.4]
  wire [63:0] s2_data_corrected; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@214995.4]
  wire  s2_valid_flush_line; // @[DCache.scala 369:75:chipyard.TestHarness.RocketConfig.fir@215009.4]
  wire  _T_651; // @[DCache.scala 373:39:chipyard.TestHarness.RocketConfig.fir@215016.4]
  wire  _T_653; // @[DCache.scala 373:55:chipyard.TestHarness.RocketConfig.fir@215018.4]
  wire  _T_654; // @[DCache.scala 373:76:chipyard.TestHarness.RocketConfig.fir@215019.4]
  wire  s2_valid_miss; // @[DCache.scala 373:73:chipyard.TestHarness.RocketConfig.fir@215020.4]
  wire  s2_uncached; // @[DCache.scala 374:21:chipyard.TestHarness.RocketConfig.fir@215021.4]
  wire  _T_660; // @[DCache.scala 375:47:chipyard.TestHarness.RocketConfig.fir@215027.4]
  wire  _T_661; // @[DCache.scala 375:44:chipyard.TestHarness.RocketConfig.fir@215028.4]
  wire  _T_662; // @[DCache.scala 375:88:chipyard.TestHarness.RocketConfig.fir@215029.4]
  wire  _T_663; // @[DCache.scala 375:63:chipyard.TestHarness.RocketConfig.fir@215030.4]
  wire  s2_valid_cached_miss; // @[DCache.scala 375:60:chipyard.TestHarness.RocketConfig.fir@215031.4]
  wire  _T_664; // @[DCache.scala 377:79:chipyard.TestHarness.RocketConfig.fir@215032.4]
  wire  s2_want_victimize; // @[DCache.scala 377:125:chipyard.TestHarness.RocketConfig.fir@215034.4]
  wire  _T_669; // @[DCache.scala 380:49:chipyard.TestHarness.RocketConfig.fir@215040.4]
  wire  _T_670; // @[DCache.scala 380:92:chipyard.TestHarness.RocketConfig.fir@215041.4]
  wire  _T_671; // @[DCache.scala 380:67:chipyard.TestHarness.RocketConfig.fir@215042.4]
  wire  s2_valid_uncached_pending; // @[DCache.scala 380:64:chipyard.TestHarness.RocketConfig.fir@215043.4]
  reg [19:0] _T_678; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@215054.4]
  reg [31:0] _RAND_66;
  wire [19:0] s2_victim_tag; // @[DCache.scala 382:26:chipyard.TestHarness.RocketConfig.fir@215058.4]
  reg [1:0] _T_680_state; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@215060.4]
  reg [31:0] _RAND_67;
  wire [1:0] s2_victim_state_state; // @[DCache.scala 383:28:chipyard.TestHarness.RocketConfig.fir@215064.4]
  wire [2:0] _T_696; // @[Misc.scala 37:36:chipyard.TestHarness.RocketConfig.fir@215080.4]
  wire [2:0] _T_700; // @[Misc.scala 37:36:chipyard.TestHarness.RocketConfig.fir@215084.4]
  wire [2:0] _T_704; // @[Misc.scala 37:36:chipyard.TestHarness.RocketConfig.fir@215088.4]
  wire [2:0] _T_708; // @[Misc.scala 37:36:chipyard.TestHarness.RocketConfig.fir@215092.4]
  wire [2:0] _T_712; // @[Misc.scala 37:36:chipyard.TestHarness.RocketConfig.fir@215096.4]
  wire [2:0] _T_716; // @[Misc.scala 37:36:chipyard.TestHarness.RocketConfig.fir@215100.4]
  wire [1:0] _T_717; // @[Misc.scala 37:63:chipyard.TestHarness.RocketConfig.fir@215101.4]
  wire [2:0] _T_720; // @[Misc.scala 37:36:chipyard.TestHarness.RocketConfig.fir@215104.4]
  wire [1:0] _T_721; // @[Misc.scala 37:63:chipyard.TestHarness.RocketConfig.fir@215105.4]
  wire [2:0] _T_724; // @[Misc.scala 37:36:chipyard.TestHarness.RocketConfig.fir@215108.4]
  wire [1:0] _T_725; // @[Misc.scala 37:63:chipyard.TestHarness.RocketConfig.fir@215109.4]
  wire [2:0] _T_728; // @[Misc.scala 37:36:chipyard.TestHarness.RocketConfig.fir@215112.4]
  wire [1:0] _T_729; // @[Misc.scala 37:63:chipyard.TestHarness.RocketConfig.fir@215113.4]
  wire [2:0] _T_732; // @[Misc.scala 37:36:chipyard.TestHarness.RocketConfig.fir@215116.4]
  wire [1:0] _T_733; // @[Misc.scala 37:63:chipyard.TestHarness.RocketConfig.fir@215117.4]
  wire [2:0] _T_736; // @[Misc.scala 37:36:chipyard.TestHarness.RocketConfig.fir@215120.4]
  wire [1:0] _T_737; // @[Misc.scala 37:63:chipyard.TestHarness.RocketConfig.fir@215121.4]
  wire [2:0] s2_report_param; // @[Misc.scala 37:36:chipyard.TestHarness.RocketConfig.fir@215124.4]
  wire [1:0] probeNewCoh_state; // @[Misc.scala 37:63:chipyard.TestHarness.RocketConfig.fir@215125.4]
  wire [3:0] _T_746; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@215135.4]
  wire  _T_759; // @[Misc.scala 55:20:chipyard.TestHarness.RocketConfig.fir@215148.4]
  wire [2:0] _T_761; // @[Misc.scala 37:36:chipyard.TestHarness.RocketConfig.fir@215150.4]
  wire  _T_763; // @[Misc.scala 55:20:chipyard.TestHarness.RocketConfig.fir@215152.4]
  wire [2:0] _T_765; // @[Misc.scala 37:36:chipyard.TestHarness.RocketConfig.fir@215154.4]
  wire  _T_767; // @[Misc.scala 55:20:chipyard.TestHarness.RocketConfig.fir@215156.4]
  wire [2:0] _T_769; // @[Misc.scala 37:36:chipyard.TestHarness.RocketConfig.fir@215158.4]
  wire  _T_771; // @[Misc.scala 55:20:chipyard.TestHarness.RocketConfig.fir@215160.4]
  wire [2:0] _T_773; // @[Misc.scala 37:36:chipyard.TestHarness.RocketConfig.fir@215162.4]
  wire  _T_775; // @[Misc.scala 55:20:chipyard.TestHarness.RocketConfig.fir@215164.4]
  wire  _T_776; // @[Misc.scala 37:9:chipyard.TestHarness.RocketConfig.fir@215165.4]
  wire [2:0] _T_777; // @[Misc.scala 37:36:chipyard.TestHarness.RocketConfig.fir@215166.4]
  wire  _T_779; // @[Misc.scala 55:20:chipyard.TestHarness.RocketConfig.fir@215168.4]
  wire  _T_780; // @[Misc.scala 37:9:chipyard.TestHarness.RocketConfig.fir@215169.4]
  wire [2:0] _T_781; // @[Misc.scala 37:36:chipyard.TestHarness.RocketConfig.fir@215170.4]
  wire [1:0] _T_782; // @[Misc.scala 37:63:chipyard.TestHarness.RocketConfig.fir@215171.4]
  wire  _T_783; // @[Misc.scala 55:20:chipyard.TestHarness.RocketConfig.fir@215172.4]
  wire  _T_784; // @[Misc.scala 37:9:chipyard.TestHarness.RocketConfig.fir@215173.4]
  wire [2:0] _T_785; // @[Misc.scala 37:36:chipyard.TestHarness.RocketConfig.fir@215174.4]
  wire [1:0] _T_786; // @[Misc.scala 37:63:chipyard.TestHarness.RocketConfig.fir@215175.4]
  wire  _T_787; // @[Misc.scala 55:20:chipyard.TestHarness.RocketConfig.fir@215176.4]
  wire  _T_788; // @[Misc.scala 37:9:chipyard.TestHarness.RocketConfig.fir@215177.4]
  wire [2:0] _T_789; // @[Misc.scala 37:36:chipyard.TestHarness.RocketConfig.fir@215178.4]
  wire [1:0] _T_790; // @[Misc.scala 37:63:chipyard.TestHarness.RocketConfig.fir@215179.4]
  wire  _T_791; // @[Misc.scala 55:20:chipyard.TestHarness.RocketConfig.fir@215180.4]
  wire  _T_792; // @[Misc.scala 37:9:chipyard.TestHarness.RocketConfig.fir@215181.4]
  wire [2:0] _T_793; // @[Misc.scala 37:36:chipyard.TestHarness.RocketConfig.fir@215182.4]
  wire [1:0] _T_794; // @[Misc.scala 37:63:chipyard.TestHarness.RocketConfig.fir@215183.4]
  wire  _T_795; // @[Misc.scala 55:20:chipyard.TestHarness.RocketConfig.fir@215184.4]
  wire  _T_796; // @[Misc.scala 37:9:chipyard.TestHarness.RocketConfig.fir@215185.4]
  wire [2:0] _T_797; // @[Misc.scala 37:36:chipyard.TestHarness.RocketConfig.fir@215186.4]
  wire [1:0] _T_798; // @[Misc.scala 37:63:chipyard.TestHarness.RocketConfig.fir@215187.4]
  wire  _T_799; // @[Misc.scala 55:20:chipyard.TestHarness.RocketConfig.fir@215188.4]
  wire  _T_800; // @[Misc.scala 37:9:chipyard.TestHarness.RocketConfig.fir@215189.4]
  wire [2:0] _T_801; // @[Misc.scala 37:36:chipyard.TestHarness.RocketConfig.fir@215190.4]
  wire [1:0] _T_802; // @[Misc.scala 37:63:chipyard.TestHarness.RocketConfig.fir@215191.4]
  wire  _T_803; // @[Misc.scala 55:20:chipyard.TestHarness.RocketConfig.fir@215192.4]
  wire  s2_victim_dirty; // @[Misc.scala 37:9:chipyard.TestHarness.RocketConfig.fir@215193.4]
  wire [2:0] s2_shrink_param; // @[Misc.scala 37:36:chipyard.TestHarness.RocketConfig.fir@215194.4]
  wire [1:0] voluntaryNewCoh_state; // @[Misc.scala 37:63:chipyard.TestHarness.RocketConfig.fir@215195.4]
  wire  s2_dont_nack_uncached; // @[DCache.scala 389:57:chipyard.TestHarness.RocketConfig.fir@215201.4]
  wire  _T_816; // @[DCache.scala 393:17:chipyard.TestHarness.RocketConfig.fir@215212.4]
  wire  s2_dont_nack_misc; // @[DCache.scala 390:61:chipyard.TestHarness.RocketConfig.fir@215214.4]
  wire  _T_818; // @[DCache.scala 394:41:chipyard.TestHarness.RocketConfig.fir@215215.4]
  wire  _T_819; // @[DCache.scala 394:38:chipyard.TestHarness.RocketConfig.fir@215216.4]
  wire  _T_820; // @[DCache.scala 394:67:chipyard.TestHarness.RocketConfig.fir@215217.4]
  wire  _T_821; // @[DCache.scala 394:64:chipyard.TestHarness.RocketConfig.fir@215218.4]
  wire  _T_822; // @[DCache.scala 394:89:chipyard.TestHarness.RocketConfig.fir@215219.4]
  wire  _T_832; // @[DCache.scala 399:63:chipyard.TestHarness.RocketConfig.fir@215234.4]
  wire  _T_833; // @[DCache.scala 399:93:chipyard.TestHarness.RocketConfig.fir@215235.4]
  wire [11:0] _T_849; // @[DCache.scala 403:98:chipyard.TestHarness.RocketConfig.fir@215255.4]
  wire [1:0] new_meta_coh_state; // @[DCache.scala 406:40:chipyard.TestHarness.RocketConfig.fir@215261.4]
  wire  _T_864; // @[DCache.scala 423:34:chipyard.TestHarness.RocketConfig.fir@215293.4]
  wire  _T_865; // @[DCache.scala 423:41:chipyard.TestHarness.RocketConfig.fir@215294.4]
  wire  lrscBackingOff; // @[DCache.scala 423:38:chipyard.TestHarness.RocketConfig.fir@215295.4]
  reg [33:0] lrscAddr; // @[DCache.scala 424:21:chipyard.TestHarness.RocketConfig.fir@215296.4]
  reg [63:0] _RAND_68;
  wire  lrscAddrMatch; // @[DCache.scala 425:32:chipyard.TestHarness.RocketConfig.fir@215298.4]
  wire  _T_867; // @[DCache.scala 426:41:chipyard.TestHarness.RocketConfig.fir@215299.4]
  wire  _T_868; // @[DCache.scala 426:29:chipyard.TestHarness.RocketConfig.fir@215300.4]
  wire  s2_sc_fail; // @[DCache.scala 426:26:chipyard.TestHarness.RocketConfig.fir@215301.4]
  wire  _T_869; // @[DCache.scala 427:23:chipyard.TestHarness.RocketConfig.fir@215302.4]
  wire  _T_871; // @[DCache.scala 427:32:chipyard.TestHarness.RocketConfig.fir@215304.4]
  wire  _T_872; // @[DCache.scala 427:54:chipyard.TestHarness.RocketConfig.fir@215305.4]
  wire [6:0] _T_879; // @[DCache.scala 431:49:chipyard.TestHarness.RocketConfig.fir@215317.6]
  wire  _T_880; // @[DCache.scala 432:29:chipyard.TestHarness.RocketConfig.fir@215320.4]
  wire  _T_888; // @[DCache.scala 441:63:chipyard.TestHarness.RocketConfig.fir@215337.4]
  reg [4:0] pstore1_cmd; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@215338.4]
  reg [31:0] _RAND_69;
  reg [63:0] pstore1_data; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@215348.4]
  reg [63:0] _RAND_70;
  reg [3:0] pstore1_way; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@215353.4]
  reg [31:0] _RAND_71;
  wire  _T_942; // @[DCache.scala 1083:23:chipyard.TestHarness.RocketConfig.fir@215414.4]
  wire  _T_943; // @[DCache.scala 1082:21:chipyard.TestHarness.RocketConfig.fir@215415.4]
  reg  pstore1_rmw; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@215417.4]
  reg [31:0] _RAND_72;
  wire  _T_947; // @[DCache.scala 439:46:chipyard.TestHarness.RocketConfig.fir@215424.4]
  wire  _T_948; // @[DCache.scala 439:61:chipyard.TestHarness.RocketConfig.fir@215425.4]
  wire  _T_949; // @[DCache.scala 439:58:chipyard.TestHarness.RocketConfig.fir@215426.4]
  wire  pstore_drain_opportunistic; // @[DCache.scala 451:36:chipyard.TestHarness.RocketConfig.fir@215498.4]
  reg  _T_1017; // @[DCache.scala 452:56:chipyard.TestHarness.RocketConfig.fir@215502.4]
  reg [31:0] _RAND_73;
  wire  pstore_drain_on_miss; // @[DCache.scala 452:46:chipyard.TestHarness.RocketConfig.fir@215504.4]
  wire  pstore1_valid; // @[DCache.scala 456:38:chipyard.TestHarness.RocketConfig.fir@215513.4]
  wire  _T_1025; // @[DCache.scala 458:54:chipyard.TestHarness.RocketConfig.fir@215516.4]
  wire  _T_1026; // @[DCache.scala 458:85:chipyard.TestHarness.RocketConfig.fir@215517.4]
  wire  _T_1027; // @[DCache.scala 458:98:chipyard.TestHarness.RocketConfig.fir@215518.4]
  wire  pstore_drain_structural; // @[DCache.scala 458:71:chipyard.TestHarness.RocketConfig.fir@215519.4]
  wire  _T_1031; // @[DCache.scala 455:96:chipyard.TestHarness.RocketConfig.fir@215523.4]
  wire  _T_1032; // @[DCache.scala 459:63:chipyard.TestHarness.RocketConfig.fir@215524.4]
  wire  _T_1033; // @[DCache.scala 459:22:chipyard.TestHarness.RocketConfig.fir@215525.4]
  wire  _T_1035; // @[DCache.scala 459:9:chipyard.TestHarness.RocketConfig.fir@215527.4]
  wire  _T_1036; // @[DCache.scala 459:9:chipyard.TestHarness.RocketConfig.fir@215528.4]
  wire  _T_1045; // @[DCache.scala 467:44:chipyard.TestHarness.RocketConfig.fir@215542.4]
  wire  _T_1046; // @[DCache.scala 467:41:chipyard.TestHarness.RocketConfig.fir@215543.4]
  wire  _T_1047; // @[DCache.scala 467:58:chipyard.TestHarness.RocketConfig.fir@215544.4]
  wire  _T_1048; // @[DCache.scala 467:107:chipyard.TestHarness.RocketConfig.fir@215545.4]
  wire  _T_1049; // @[DCache.scala 467:76:chipyard.TestHarness.RocketConfig.fir@215546.4]
  wire  pstore_drain; // @[DCache.scala 466:48:chipyard.TestHarness.RocketConfig.fir@215547.4]
  wire  _T_1059; // @[DCache.scala 470:71:chipyard.TestHarness.RocketConfig.fir@215557.4]
  wire  _T_1060; // @[DCache.scala 470:91:chipyard.TestHarness.RocketConfig.fir@215558.4]
  wire  _T_1063; // @[DCache.scala 471:79:chipyard.TestHarness.RocketConfig.fir@215562.4]
  wire  advance_pstore1; // @[DCache.scala 471:61:chipyard.TestHarness.RocketConfig.fir@215563.4]
  wire  _T_1065; // @[DCache.scala 472:34:chipyard.TestHarness.RocketConfig.fir@215565.4]
  reg [3:0] pstore2_way; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@215574.4]
  reg [31:0] _RAND_74;
  wire [63:0] pstore1_storegen_data; // @[:chipyard.TestHarness.RocketConfig.fir@215362.4 :chipyard.TestHarness.RocketConfig.fir@215364.4 DCache.scala 884:27:chipyard.TestHarness.RocketConfig.fir@218105.4]
  reg [7:0] _T_1073; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@215582.4]
  reg [31:0] _RAND_75;
  reg [7:0] _T_1078; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@215590.4]
  reg [31:0] _RAND_76;
  reg [7:0] _T_1083; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@215598.4]
  reg [31:0] _RAND_77;
  reg [7:0] _T_1088; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@215606.4]
  reg [31:0] _RAND_78;
  reg [7:0] _T_1093; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@215614.4]
  reg [31:0] _RAND_79;
  reg [7:0] _T_1098; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@215622.4]
  reg [31:0] _RAND_80;
  reg [7:0] _T_1103; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@215630.4]
  reg [31:0] _RAND_81;
  reg [7:0] _T_1108; // @[Reg.scala 15:16:chipyard.TestHarness.RocketConfig.fir@215638.4]
  reg [31:0] _RAND_82;
  wire [63:0] pstore2_storegen_data; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@215648.4]
  wire [7:0] _T_1117; // @[DCache.scala 483:37:chipyard.TestHarness.RocketConfig.fir@215654.6]
  wire [7:0] _T_1119; // @[DCache.scala 483:15:chipyard.TestHarness.RocketConfig.fir@215656.6]
  wire [39:0] _T_1133; // @[DCache.scala 498:36:chipyard.TestHarness.RocketConfig.fir@215676.4]
  wire [63:0] _T_1135; // @[DCache.scala 500:63:chipyard.TestHarness.RocketConfig.fir@215680.4]
  wire [31:0] _T_1146; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@215691.4]
  wire [31:0] _T_1149; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@215694.4]
  wire [7:0] _T_1153; // @[DCache.scala 502:47:chipyard.TestHarness.RocketConfig.fir@215700.4]
  wire  _T_1162; // @[DCache.scala 1073:66:chipyard.TestHarness.RocketConfig.fir@215709.4]
  wire  _T_1163; // @[DCache.scala 1073:66:chipyard.TestHarness.RocketConfig.fir@215710.4]
  wire  _T_1164; // @[DCache.scala 1073:66:chipyard.TestHarness.RocketConfig.fir@215711.4]
  wire  _T_1165; // @[DCache.scala 1073:66:chipyard.TestHarness.RocketConfig.fir@215712.4]
  wire  _T_1166; // @[DCache.scala 1073:66:chipyard.TestHarness.RocketConfig.fir@215713.4]
  wire  _T_1167; // @[DCache.scala 1073:66:chipyard.TestHarness.RocketConfig.fir@215714.4]
  wire  _T_1168; // @[DCache.scala 1073:66:chipyard.TestHarness.RocketConfig.fir@215715.4]
  wire  _T_1169; // @[DCache.scala 1073:66:chipyard.TestHarness.RocketConfig.fir@215716.4]
  wire [3:0] _T_1172; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@215719.4]
  wire [3:0] _T_1175; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@215722.4]
  wire  _T_1355; // @[DCache.scala 522:34:chipyard.TestHarness.RocketConfig.fir@215911.4]
  wire [1:0] _T_1356; // @[DCache.scala 522:59:chipyard.TestHarness.RocketConfig.fir@215912.4]
  wire  a_source; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@215915.4]
  wire [39:0] acquire_address; // @[DCache.scala 523:49:chipyard.TestHarness.RocketConfig.fir@215917.4]
  wire [22:0] a_mask; // @[DCache.scala 527:29:chipyard.TestHarness.RocketConfig.fir@215919.4]
  wire [2:0] _T_1413; // @[Misc.scala 201:34:chipyard.TestHarness.RocketConfig.fir@215979.4]
  wire [3:0] _T_1415; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@215981.4]
  wire [2:0] _T_1417; // @[Misc.scala 201:81:chipyard.TestHarness.RocketConfig.fir@215983.4]
  wire  _T_1418; // @[Misc.scala 205:21:chipyard.TestHarness.RocketConfig.fir@215984.4]
  wire  _T_1421; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@215987.4]
  wire  _T_1423; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@215989.4]
  wire  _T_1424; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@215990.4]
  wire  _T_1426; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@215992.4]
  wire  _T_1427; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@215993.4]
  wire  _T_1430; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@215996.4]
  wire  _T_1431; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@215997.4]
  wire  _T_1432; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@215998.4]
  wire  _T_1433; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@215999.4]
  wire  _T_1434; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@216000.4]
  wire  _T_1435; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@216001.4]
  wire  _T_1436; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@216002.4]
  wire  _T_1437; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@216003.4]
  wire  _T_1438; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@216004.4]
  wire  _T_1439; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@216005.4]
  wire  _T_1440; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@216006.4]
  wire  _T_1441; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@216007.4]
  wire  _T_1442; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@216008.4]
  wire  _T_1445; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@216011.4]
  wire  _T_1446; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@216012.4]
  wire  _T_1447; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@216013.4]
  wire  _T_1448; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@216014.4]
  wire  _T_1449; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@216015.4]
  wire  _T_1450; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@216016.4]
  wire  _T_1451; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@216017.4]
  wire  _T_1452; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@216018.4]
  wire  _T_1453; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@216019.4]
  wire  _T_1454; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@216020.4]
  wire  _T_1455; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@216021.4]
  wire  _T_1456; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@216022.4]
  wire  _T_1457; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@216023.4]
  wire  _T_1458; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@216024.4]
  wire  _T_1459; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@216025.4]
  wire  _T_1460; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@216026.4]
  wire  _T_1461; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@216027.4]
  wire  _T_1462; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@216028.4]
  wire  _T_1463; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@216029.4]
  wire  _T_1464; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@216030.4]
  wire  _T_1465; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@216031.4]
  wire  _T_1466; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@216032.4]
  wire  _T_1467; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@216033.4]
  wire  _T_1468; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@216034.4]
  wire  _T_1469; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@216035.4]
  wire [7:0] get_mask; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@216042.4]
  wire  _T_2568; // @[Mux.scala 80:60:chipyard.TestHarness.RocketConfig.fir@217239.4]
  wire [2:0] _T_2569_opcode; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217240.4]
  wire [3:0] _T_1687_size; // @[Edges.scala 496:17:chipyard.TestHarness.RocketConfig.fir@216277.4 Edges.scala 499:15:chipyard.TestHarness.RocketConfig.fir@216281.4]
  wire [3:0] _T_2569_size; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217240.4]
  wire  _T_2569_source; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217240.4]
  wire [31:0] _T_2569_address; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217240.4]
  wire [7:0] _T_2569_mask; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217240.4]
  wire [63:0] _T_2569_data; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217240.4]
  wire  _T_2570; // @[Mux.scala 80:60:chipyard.TestHarness.RocketConfig.fir@217241.4]
  wire [2:0] _T_2571_opcode; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217242.4]
  wire [2:0] _T_2571_param; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217242.4]
  wire [3:0] _T_2571_size; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217242.4]
  wire  _T_2571_source; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217242.4]
  wire [31:0] _T_2571_address; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217242.4]
  wire [7:0] _T_2571_mask; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217242.4]
  wire [63:0] _T_2571_data; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217242.4]
  wire  _T_2572; // @[Mux.scala 80:60:chipyard.TestHarness.RocketConfig.fir@217243.4]
  wire [2:0] _T_2573_opcode; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217244.4]
  wire [2:0] _T_2573_param; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217244.4]
  wire [3:0] _T_2573_size; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217244.4]
  wire  _T_2573_source; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217244.4]
  wire [31:0] _T_2573_address; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217244.4]
  wire [7:0] _T_2573_mask; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217244.4]
  wire [63:0] _T_2573_data; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217244.4]
  wire  _T_2574; // @[Mux.scala 80:60:chipyard.TestHarness.RocketConfig.fir@217245.4]
  wire [2:0] _T_2575_opcode; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217246.4]
  wire [2:0] _T_2575_param; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217246.4]
  wire [3:0] _T_2575_size; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217246.4]
  wire  _T_2575_source; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217246.4]
  wire [31:0] _T_2575_address; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217246.4]
  wire [7:0] _T_2575_mask; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217246.4]
  wire [63:0] _T_2575_data; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217246.4]
  wire  _T_2576; // @[Mux.scala 80:60:chipyard.TestHarness.RocketConfig.fir@217247.4]
  wire [2:0] _T_2577_opcode; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217248.4]
  wire [2:0] _T_2577_param; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217248.4]
  wire [3:0] _T_2577_size; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217248.4]
  wire  _T_2577_source; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217248.4]
  wire [31:0] _T_2577_address; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217248.4]
  wire [7:0] _T_2577_mask; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217248.4]
  wire [63:0] _T_2577_data; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217248.4]
  wire  _T_2578; // @[Mux.scala 80:60:chipyard.TestHarness.RocketConfig.fir@217249.4]
  wire [2:0] _T_2579_opcode; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217250.4]
  wire [2:0] _T_2579_param; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217250.4]
  wire [3:0] _T_2579_size; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217250.4]
  wire  _T_2579_source; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217250.4]
  wire [31:0] _T_2579_address; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217250.4]
  wire [7:0] _T_2579_mask; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217250.4]
  wire [63:0] _T_2579_data; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217250.4]
  wire  _T_2580; // @[Mux.scala 80:60:chipyard.TestHarness.RocketConfig.fir@217251.4]
  wire [2:0] _T_2581_opcode; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217252.4]
  wire [2:0] _T_2581_param; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217252.4]
  wire [3:0] _T_2581_size; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217252.4]
  wire  _T_2581_source; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217252.4]
  wire [31:0] _T_2581_address; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217252.4]
  wire [7:0] _T_2581_mask; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217252.4]
  wire [63:0] _T_2581_data; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217252.4]
  wire  _T_2582; // @[Mux.scala 80:60:chipyard.TestHarness.RocketConfig.fir@217253.4]
  wire [2:0] _T_2583_opcode; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217254.4]
  wire [2:0] _T_2583_param; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217254.4]
  wire [3:0] _T_2583_size; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217254.4]
  wire  _T_2583_source; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217254.4]
  wire [31:0] _T_2583_address; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217254.4]
  wire [7:0] _T_2583_mask; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217254.4]
  wire [63:0] _T_2583_data; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217254.4]
  wire  _T_2584; // @[Mux.scala 80:60:chipyard.TestHarness.RocketConfig.fir@217255.4]
  wire [2:0] atomics_opcode; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217256.4]
  wire [2:0] atomics_param; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217256.4]
  wire [3:0] atomics_size; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217256.4]
  wire  atomics_source; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217256.4]
  wire [31:0] atomics_address; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217256.4]
  wire [7:0] atomics_mask; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217256.4]
  wire [63:0] atomics_data; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217256.4]
  wire  _T_2586; // @[DCache.scala 549:30:chipyard.TestHarness.RocketConfig.fir@217258.4]
  wire  _T_2587; // @[DCache.scala 549:27:chipyard.TestHarness.RocketConfig.fir@217259.4]
  wire  _T_2589; // @[DCache.scala 549:117:chipyard.TestHarness.RocketConfig.fir@217261.4]
  wire  _T_2591; // @[DCache.scala 549:48:chipyard.TestHarness.RocketConfig.fir@217263.4]
  wire  tl_out_a_valid; // @[DCache.scala 548:67:chipyard.TestHarness.RocketConfig.fir@217264.4]
  wire  _T_2679; // @[DCache.scala 551:9:chipyard.TestHarness.RocketConfig.fir@217361.4]
  wire  _T_2681; // @[DCache.scala 553:9:chipyard.TestHarness.RocketConfig.fir@217363.4]
  wire [2:0] _T_2682_opcode; // @[DCache.scala 553:8:chipyard.TestHarness.RocketConfig.fir@217364.4]
  wire [2:0] _T_2682_param; // @[DCache.scala 553:8:chipyard.TestHarness.RocketConfig.fir@217364.4]
  wire [3:0] _T_2682_size; // @[DCache.scala 553:8:chipyard.TestHarness.RocketConfig.fir@217364.4]
  wire  _T_2682_source; // @[DCache.scala 553:8:chipyard.TestHarness.RocketConfig.fir@217364.4]
  wire [31:0] _T_2682_address; // @[DCache.scala 553:8:chipyard.TestHarness.RocketConfig.fir@217364.4]
  wire [7:0] _T_2682_mask; // @[DCache.scala 553:8:chipyard.TestHarness.RocketConfig.fir@217364.4]
  wire [63:0] _T_2682_data; // @[DCache.scala 553:8:chipyard.TestHarness.RocketConfig.fir@217364.4]
  wire [2:0] _T_2683_opcode; // @[DCache.scala 552:8:chipyard.TestHarness.RocketConfig.fir@217365.4]
  wire [2:0] _T_2683_param; // @[DCache.scala 552:8:chipyard.TestHarness.RocketConfig.fir@217365.4]
  wire [3:0] _T_2683_size; // @[DCache.scala 552:8:chipyard.TestHarness.RocketConfig.fir@217365.4]
  wire  _T_2683_source; // @[DCache.scala 552:8:chipyard.TestHarness.RocketConfig.fir@217365.4]
  wire [31:0] _T_2683_address; // @[DCache.scala 552:8:chipyard.TestHarness.RocketConfig.fir@217365.4]
  wire [7:0] putpartial_mask; // @[Edges.scala 466:17:chipyard.TestHarness.RocketConfig.fir@216228.4 Edges.scala 472:15:chipyard.TestHarness.RocketConfig.fir@216235.4]
  wire [7:0] _T_2683_mask; // @[DCache.scala 552:8:chipyard.TestHarness.RocketConfig.fir@217365.4]
  wire [63:0] _T_2683_data; // @[DCache.scala 552:8:chipyard.TestHarness.RocketConfig.fir@217365.4]
  wire [2:0] _T_2684_opcode; // @[DCache.scala 551:8:chipyard.TestHarness.RocketConfig.fir@217366.4]
  wire [2:0] _T_2684_param; // @[DCache.scala 551:8:chipyard.TestHarness.RocketConfig.fir@217366.4]
  wire [3:0] _T_2684_size; // @[DCache.scala 551:8:chipyard.TestHarness.RocketConfig.fir@217366.4]
  wire  _T_2684_source; // @[DCache.scala 551:8:chipyard.TestHarness.RocketConfig.fir@217366.4]
  wire [31:0] _T_2684_address; // @[DCache.scala 551:8:chipyard.TestHarness.RocketConfig.fir@217366.4]
  wire [7:0] _T_2684_mask; // @[DCache.scala 551:8:chipyard.TestHarness.RocketConfig.fir@217366.4]
  wire [63:0] _T_2684_data; // @[DCache.scala 551:8:chipyard.TestHarness.RocketConfig.fir@217366.4]
  wire [2:0] _T_2614_param; // @[Edges.scala 328:17:chipyard.TestHarness.RocketConfig.fir@217287.4 Edges.scala 330:15:chipyard.TestHarness.RocketConfig.fir@217290.4]
  wire [1:0] _T_2687; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@217370.4]
  wire  a_sel; // @[DCache.scala 572:66:chipyard.TestHarness.RocketConfig.fir@217372.4]
  wire  _T_2689; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@217373.4]
  wire  _GEN_143; // @[DCache.scala 576:18:chipyard.TestHarness.RocketConfig.fir@217377.8]
  wire [26:0] _T_2696; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@217392.4]
  wire [11:0] _T_2698; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@217394.4]
  wire [8:0] _T_2701; // @[Edges.scala 222:14:chipyard.TestHarness.RocketConfig.fir@217397.4]
  wire [8:0] _T_2704; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@217400.4]
  wire  _T_2705; // @[Edges.scala 233:25:chipyard.TestHarness.RocketConfig.fir@217402.4]
  wire  _T_2706; // @[Edges.scala 233:47:chipyard.TestHarness.RocketConfig.fir@217403.4]
  wire  d_last; // @[Edges.scala 233:37:chipyard.TestHarness.RocketConfig.fir@217404.4]
  wire  d_done; // @[Edges.scala 234:22:chipyard.TestHarness.RocketConfig.fir@217405.4]
  wire [8:0] _T_2707; // @[Edges.scala 235:27:chipyard.TestHarness.RocketConfig.fir@217406.4]
  wire [8:0] _T_2708; // @[Edges.scala 235:25:chipyard.TestHarness.RocketConfig.fir@217407.4]
  wire [11:0] d_address_inc; // @[Edges.scala 270:29:chipyard.TestHarness.RocketConfig.fir@217412.4]
  wire  _T_2717; // @[DCache.scala 604:129:chipyard.TestHarness.RocketConfig.fir@217422.4]
  wire  grantIsVoluntary; // @[DCache.scala 606:32:chipyard.TestHarness.RocketConfig.fir@217443.4]
  wire [2:0] _T_2738; // @[DCache.scala 610:97:chipyard.TestHarness.RocketConfig.fir@217450.6]
  wire [1:0] _T_2747; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@217463.4]
  wire  uncachedRespIdxOH; // @[DCache.scala 613:90:chipyard.TestHarness.RocketConfig.fir@217465.4]
  wire  _T_2752; // @[DCache.scala 618:13:chipyard.TestHarness.RocketConfig.fir@217473.8]
  wire  _T_2753; // @[DCache.scala 618:13:chipyard.TestHarness.RocketConfig.fir@217474.8]
  wire  _T_2755; // @[DCache.scala 627:17:chipyard.TestHarness.RocketConfig.fir@217489.10]
  wire  _T_2757; // @[DCache.scala 628:17:chipyard.TestHarness.RocketConfig.fir@217492.12]
  wire  _T_2758; // @[DCache.scala 628:17:chipyard.TestHarness.RocketConfig.fir@217493.12]
  wire [31:0] dontCareBits; // @[DCache.scala 642:55:chipyard.TestHarness.RocketConfig.fir@217508.12]
  wire [31:0] _GEN_347; // @[DCache.scala 643:26:chipyard.TestHarness.RocketConfig.fir@217510.12]
  wire [31:0] _T_2762; // @[DCache.scala 643:26:chipyard.TestHarness.RocketConfig.fir@217510.12]
  wire  _T_2764; // @[DCache.scala 649:13:chipyard.TestHarness.RocketConfig.fir@217518.12]
  wire  _T_2765; // @[DCache.scala 649:13:chipyard.TestHarness.RocketConfig.fir@217519.12]
  wire  _GEN_195; // @[DCache.scala 648:36:chipyard.TestHarness.RocketConfig.fir@217516.10]
  wire  _GEN_204; // @[DCache.scala 625:35:chipyard.TestHarness.RocketConfig.fir@217487.8]
  wire  _GEN_208; // @[DCache.scala 616:26:chipyard.TestHarness.RocketConfig.fir@217470.6]
  wire  _GEN_217; // @[DCache.scala 616:26:chipyard.TestHarness.RocketConfig.fir@217470.6]
  wire  _GEN_230; // @[DCache.scala 615:26:chipyard.TestHarness.RocketConfig.fir@217469.4]
  wire  _T_2766; // @[DCache.scala 655:36:chipyard.TestHarness.RocketConfig.fir@217527.4]
  wire  _T_2767; // @[DCache.scala 655:47:chipyard.TestHarness.RocketConfig.fir@217528.4]
  wire  _T_2768; // @[DCache.scala 655:64:chipyard.TestHarness.RocketConfig.fir@217529.4]
  wire  tl_out__e_valid; // @[DCache.scala 663:51:chipyard.TestHarness.RocketConfig.fir@217552.4]
  wire  _T_2770; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@217535.4]
  wire  _T_2772; // @[DCache.scala 657:47:chipyard.TestHarness.RocketConfig.fir@217537.4]
  wire  _T_2773; // @[DCache.scala 657:58:chipyard.TestHarness.RocketConfig.fir@217538.4]
  wire  _T_2774; // @[DCache.scala 657:26:chipyard.TestHarness.RocketConfig.fir@217539.4]
  wire  _T_2776; // @[DCache.scala 657:9:chipyard.TestHarness.RocketConfig.fir@217541.4]
  wire  _T_2777; // @[DCache.scala 657:9:chipyard.TestHarness.RocketConfig.fir@217542.4]
  wire  _T_2778; // @[DCache.scala 662:44:chipyard.TestHarness.RocketConfig.fir@217547.4]
  wire  _T_2779; // @[DCache.scala 662:61:chipyard.TestHarness.RocketConfig.fir@217548.4]
  wire [39:0] _T_2783; // @[DCache.scala 669:57:chipyard.TestHarness.RocketConfig.fir@217558.4]
  wire [39:0] _GEN_348; // @[DCache.scala 669:67:chipyard.TestHarness.RocketConfig.fir@217559.4]
  wire [39:0] _T_2784; // @[DCache.scala 669:67:chipyard.TestHarness.RocketConfig.fir@217559.4]
  wire  _T_2787; // @[DCache.scala 682:43:chipyard.TestHarness.RocketConfig.fir@217567.4]
  wire  _T_2788; // @[DCache.scala 682:56:chipyard.TestHarness.RocketConfig.fir@217568.4]
  wire [3:0] _T_2846; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@217631.4]
  wire  _T_2855; // @[Mux.scala 80:60:chipyard.TestHarness.RocketConfig.fir@217640.4]
  wire [1:0] _T_2856; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217641.4]
  wire  _T_2857; // @[Mux.scala 80:60:chipyard.TestHarness.RocketConfig.fir@217642.4]
  wire [1:0] _T_2858; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217643.4]
  wire  _T_2859; // @[Mux.scala 80:60:chipyard.TestHarness.RocketConfig.fir@217644.4]
  wire [1:0] _T_2860; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217645.4]
  wire  _T_2861; // @[Mux.scala 80:60:chipyard.TestHarness.RocketConfig.fir@217646.4]
  wire [1:0] _T_2862; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217647.4]
  wire  _GEN_233; // @[DCache.scala 696:29:chipyard.TestHarness.RocketConfig.fir@217663.6]
  wire  _GEN_234; // @[DCache.scala 696:29:chipyard.TestHarness.RocketConfig.fir@217663.6]
  wire  _GEN_235; // @[DCache.scala 696:29:chipyard.TestHarness.RocketConfig.fir@217663.6]
  wire  _T_2876; // @[DCache.scala 710:48:chipyard.TestHarness.RocketConfig.fir@217681.4]
  wire  _T_2877; // @[DCache.scala 710:79:chipyard.TestHarness.RocketConfig.fir@217682.4]
  wire  _T_2878; // @[DCache.scala 710:44:chipyard.TestHarness.RocketConfig.fir@217683.4]
  wire [39:0] _T_2886; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@217695.4]
  wire [8:0] _T_2897; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@217709.4]
  wire [8:0] _T_2900; // @[Edges.scala 235:27:chipyard.TestHarness.RocketConfig.fir@217715.4]
  wire [8:0] c_count; // @[Edges.scala 235:25:chipyard.TestHarness.RocketConfig.fir@217716.4]
  reg  s1_release_data_valid; // @[DCache.scala 721:34:chipyard.TestHarness.RocketConfig.fir@217724.4]
  reg [31:0] _RAND_83;
  wire  _T_2906; // @[DCache.scala 723:47:chipyard.TestHarness.RocketConfig.fir@217731.4]
  wire  releaseRejected; // @[DCache.scala 723:44:chipyard.TestHarness.RocketConfig.fir@217732.4]
  wire  _T_2903; // @[DCache.scala 722:67:chipyard.TestHarness.RocketConfig.fir@217726.4]
  wire [9:0] _T_2908; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@217734.4]
  wire [1:0] _T_2909; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@217735.4]
  wire [1:0] _GEN_349; // @[DCache.scala 724:101:chipyard.TestHarness.RocketConfig.fir@217736.4]
  wire [1:0] _T_2911; // @[DCache.scala 724:101:chipyard.TestHarness.RocketConfig.fir@217737.4]
  wire [1:0] _T_2912; // @[DCache.scala 724:52:chipyard.TestHarness.RocketConfig.fir@217738.4]
  wire [9:0] _GEN_350; // @[DCache.scala 724:47:chipyard.TestHarness.RocketConfig.fir@217739.4]
  wire [9:0] releaseDataBeat; // @[DCache.scala 724:47:chipyard.TestHarness.RocketConfig.fir@217740.4]
  wire  _T_2917; // @[DCache.scala 737:34:chipyard.TestHarness.RocketConfig.fir@217778.6]
  wire  _T_2918; // @[DCache.scala 737:52:chipyard.TestHarness.RocketConfig.fir@217779.6]
  wire  _T_2920; // @[DCache.scala 737:13:chipyard.TestHarness.RocketConfig.fir@217781.6]
  wire  _T_2921; // @[DCache.scala 737:13:chipyard.TestHarness.RocketConfig.fir@217782.6]
  wire  discard_line; // @[DCache.scala 738:46:chipyard.TestHarness.RocketConfig.fir@217788.6]
  wire  _T_2926; // @[DCache.scala 739:47:chipyard.TestHarness.RocketConfig.fir@217792.6]
  wire  _T_2927; // @[DCache.scala 739:44:chipyard.TestHarness.RocketConfig.fir@217793.6]
  wire [2:0] _T_2928; // @[DCache.scala 739:27:chipyard.TestHarness.RocketConfig.fir@217794.6]
  wire [25:0] _T_2930; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@217797.6]
  wire [31:0] res_2_address; // @[DCache.scala 740:96:chipyard.TestHarness.RocketConfig.fir@217798.6]
  wire [2:0] _GEN_243; // @[DCache.scala 736:25:chipyard.TestHarness.RocketConfig.fir@217777.4]
  wire [2:0] _T_2933; // @[DCache.scala 751:29:chipyard.TestHarness.RocketConfig.fir@217821.12]
  wire [2:0] _T_2935; // @[DCache.scala 755:29:chipyard.TestHarness.RocketConfig.fir@217828.12]
  wire [2:0] _GEN_254; // @[DCache.scala 748:45:chipyard.TestHarness.RocketConfig.fir@217818.10]
  wire [2:0] _GEN_260; // @[DCache.scala 748:45:chipyard.TestHarness.RocketConfig.fir@217818.10]
  wire [2:0] _GEN_262; // @[DCache.scala 746:36:chipyard.TestHarness.RocketConfig.fir@217813.8]
  wire [2:0] _GEN_265; // @[DCache.scala 746:36:chipyard.TestHarness.RocketConfig.fir@217813.8]
  wire [2:0] _GEN_272; // @[DCache.scala 744:28:chipyard.TestHarness.RocketConfig.fir@217809.6]
  wire [2:0] _GEN_275; // @[DCache.scala 744:28:chipyard.TestHarness.RocketConfig.fir@217809.6]
  wire [2:0] _GEN_283; // @[DCache.scala 742:21:chipyard.TestHarness.RocketConfig.fir@217805.4]
  wire [2:0] _GEN_286; // @[DCache.scala 742:21:chipyard.TestHarness.RocketConfig.fir@217805.4]
  wire  _T_2936; // @[DCache.scala 759:25:chipyard.TestHarness.RocketConfig.fir@217835.4]
  wire [39:0] _T_2939; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@217841.6]
  wire [2:0] _GEN_293; // @[DCache.scala 763:37:chipyard.TestHarness.RocketConfig.fir@217843.6]
  wire  _GEN_294; // @[DCache.scala 763:37:chipyard.TestHarness.RocketConfig.fir@217843.6]
  wire [2:0] _GEN_298; // @[DCache.scala 759:44:chipyard.TestHarness.RocketConfig.fir@217836.4]
  wire [2:0] _GEN_300; // @[DCache.scala 770:26:chipyard.TestHarness.RocketConfig.fir@217851.6]
  wire [2:0] _GEN_302; // @[DCache.scala 768:47:chipyard.TestHarness.RocketConfig.fir@217849.4]
  wire [2:0] _GEN_306; // @[DCache.scala 772:48:chipyard.TestHarness.RocketConfig.fir@217856.4]
  wire [2:0] _GEN_315; // @[DCache.scala 777:48:chipyard.TestHarness.RocketConfig.fir@217864.4]
  wire  _T_2965; // @[DCache.scala 790:29:chipyard.TestHarness.RocketConfig.fir@217907.6]
  wire  _GEN_323; // @[DCache.scala 790:41:chipyard.TestHarness.RocketConfig.fir@217908.6]
  wire [1:0] newCoh_state; // @[DCache.scala 781:81:chipyard.TestHarness.RocketConfig.fir@217873.4]
  wire  _T_2967; // @[DCache.scala 801:60:chipyard.TestHarness.RocketConfig.fir@217918.4]
  wire [11:0] _T_2970; // @[DCache.scala 804:55:chipyard.TestHarness.RocketConfig.fir@217924.4]
  wire [5:0] _T_2972; // @[DCache.scala 804:117:chipyard.TestHarness.RocketConfig.fir@217926.4]
  wire [11:0] _GEN_352; // @[DCache.scala 804:72:chipyard.TestHarness.RocketConfig.fir@217927.4]
  wire  _T_2977; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@217934.4]
  wire  _T_2986; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@217952.4]
  wire  _T_2993; // @[DCache.scala 827:57:chipyard.TestHarness.RocketConfig.fir@217967.4]
  wire  _T_2994; // @[DCache.scala 827:94:chipyard.TestHarness.RocketConfig.fir@217968.4]
  wire  _T_2996; // @[DCache.scala 827:115:chipyard.TestHarness.RocketConfig.fir@217970.4]
  wire  _T_2999; // @[DCache.scala 829:40:chipyard.TestHarness.RocketConfig.fir@217974.4]
  reg  _T_3001; // @[DCache.scala 830:32:chipyard.TestHarness.RocketConfig.fir@217977.4]
  reg [31:0] _RAND_84;
  reg  doUncachedResp; // @[DCache.scala 845:27:chipyard.TestHarness.RocketConfig.fir@218004.4]
  reg [31:0] _RAND_85;
  wire  _T_3014; // @[DCache.scala 849:11:chipyard.TestHarness.RocketConfig.fir@218017.6]
  wire  _T_3015; // @[DCache.scala 849:11:chipyard.TestHarness.RocketConfig.fir@218018.6]
  wire [31:0] _T_3022; // @[AMOALU.scala 39:24:chipyard.TestHarness.RocketConfig.fir@218035.4]
  wire  _T_3025; // @[AMOALU.scala 42:26:chipyard.TestHarness.RocketConfig.fir@218038.4]
  wire  _T_3028; // @[AMOALU.scala 42:76:chipyard.TestHarness.RocketConfig.fir@218041.4]
  wire [31:0] _T_3030; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@218043.4]
  wire [31:0] _T_3032; // @[AMOALU.scala 42:20:chipyard.TestHarness.RocketConfig.fir@218045.4]
  wire [63:0] _T_3033; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@218046.4]
  wire [15:0] _T_3037; // @[AMOALU.scala 39:24:chipyard.TestHarness.RocketConfig.fir@218050.4]
  wire  _T_3040; // @[AMOALU.scala 42:26:chipyard.TestHarness.RocketConfig.fir@218053.4]
  wire  _T_3043; // @[AMOALU.scala 42:76:chipyard.TestHarness.RocketConfig.fir@218056.4]
  wire [47:0] _T_3045; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@218058.4]
  wire [47:0] _T_3047; // @[AMOALU.scala 42:20:chipyard.TestHarness.RocketConfig.fir@218060.4]
  wire [63:0] _T_3048; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@218061.4]
  wire [7:0] _T_3052; // @[AMOALU.scala 39:24:chipyard.TestHarness.RocketConfig.fir@218065.4]
  wire [7:0] _T_3054; // @[AMOALU.scala 41:23:chipyard.TestHarness.RocketConfig.fir@218067.4]
  wire  _T_3055; // @[AMOALU.scala 42:26:chipyard.TestHarness.RocketConfig.fir@218068.4]
  wire  _T_3056; // @[AMOALU.scala 42:38:chipyard.TestHarness.RocketConfig.fir@218069.4]
  wire  _T_3058; // @[AMOALU.scala 42:76:chipyard.TestHarness.RocketConfig.fir@218071.4]
  wire [55:0] _T_3060; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@218073.4]
  wire [55:0] _T_3062; // @[AMOALU.scala 42:20:chipyard.TestHarness.RocketConfig.fir@218075.4]
  wire [63:0] _T_3063; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@218076.4]
  wire [63:0] _GEN_353; // @[DCache.scala 871:41:chipyard.TestHarness.RocketConfig.fir@218077.4]
  reg  resetting; // @[DCache.scala 903:26:chipyard.TestHarness.RocketConfig.fir@218106.4]
  reg [31:0] _RAND_86;
  reg  _T_3081; // @[DCache.scala 905:18:chipyard.TestHarness.RocketConfig.fir@218108.4]
  reg [31:0] _RAND_87;
  wire  _GEN_341; // @[DCache.scala 905:27:chipyard.TestHarness.RocketConfig.fir@218110.4]
  reg [7:0] flushCounter; // @[DCache.scala 906:25:chipyard.TestHarness.RocketConfig.fir@218113.4]
  reg [31:0] _RAND_88;
  wire [8:0] flushCounterNext; // @[DCache.scala 907:39:chipyard.TestHarness.RocketConfig.fir@218114.4]
  wire  flushDone; // @[DCache.scala 908:57:chipyard.TestHarness.RocketConfig.fir@218116.4]
  wire  _T_3087; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@218122.4]
  wire  _T_3089; // @[DCache.scala 912:45:chipyard.TestHarness.RocketConfig.fir@218124.4]
  wire  _T_3090; // @[DCache.scala 912:67:chipyard.TestHarness.RocketConfig.fir@218125.4]
  wire  _T_3091; // @[DCache.scala 912:64:chipyard.TestHarness.RocketConfig.fir@218126.4]
  wire  _T_3093; // @[DCache.scala 912:95:chipyard.TestHarness.RocketConfig.fir@218128.4]
  wire [11:0] _T_3100; // @[DCache.scala 916:98:chipyard.TestHarness.RocketConfig.fir@218139.4]
  wire [8:0] _GEN_343; // @[DCache.scala 949:20:chipyard.TestHarness.RocketConfig.fir@218159.4]
  reg [8:0] _T_3162; // @[Edges.scala 230:27:chipyard.TestHarness.RocketConfig.fir@218225.4]
  reg [31:0] _RAND_89;
  wire [8:0] _T_3164; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@218227.4]
  wire  _T_3165; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@218228.4]
  wire  _T_3166; // @[Edges.scala 233:25:chipyard.TestHarness.RocketConfig.fir@218229.4]
  wire  _T_3168; // @[Edges.scala 233:37:chipyard.TestHarness.RocketConfig.fir@218231.4]
  wire  _T_3283; // @[DCache.scala 1025:35:chipyard.TestHarness.RocketConfig.fir@218365.4]
  wire  _GEN_356; // @[DCache.scala 618:13:chipyard.TestHarness.RocketConfig.fir@217476.10]
  wire  _GEN_359; // @[DCache.scala 628:17:chipyard.TestHarness.RocketConfig.fir@217495.14]
  wire  _GEN_360; // @[DCache.scala 628:17:chipyard.TestHarness.RocketConfig.fir@217495.14]
  wire  _GEN_361; // @[DCache.scala 628:17:chipyard.TestHarness.RocketConfig.fir@217495.14]
  wire  _GEN_369; // @[DCache.scala 649:13:chipyard.TestHarness.RocketConfig.fir@217521.14]
  wire  _GEN_370; // @[DCache.scala 649:13:chipyard.TestHarness.RocketConfig.fir@217521.14]
  TLB tlb ( // @[DCache.scala 115:19:chipyard.TestHarness.RocketConfig.fir@213928.4]
    .clock(tlb_clock),
    .reset(tlb_reset),
    .io_req_ready(tlb_io_req_ready),
    .io_req_valid(tlb_io_req_valid),
    .io_req_bits_vaddr(tlb_io_req_bits_vaddr),
    .io_req_bits_passthrough(tlb_io_req_bits_passthrough),
    .io_req_bits_size(tlb_io_req_bits_size),
    .io_req_bits_cmd(tlb_io_req_bits_cmd),
    .io_resp_miss(tlb_io_resp_miss),
    .io_resp_paddr(tlb_io_resp_paddr),
    .io_resp_pf_ld(tlb_io_resp_pf_ld),
    .io_resp_pf_st(tlb_io_resp_pf_st),
    .io_resp_ae_ld(tlb_io_resp_ae_ld),
    .io_resp_ae_st(tlb_io_resp_ae_st),
    .io_resp_ma_ld(tlb_io_resp_ma_ld),
    .io_resp_ma_st(tlb_io_resp_ma_st),
    .io_resp_cacheable(tlb_io_resp_cacheable),
    .io_sfence_valid(tlb_io_sfence_valid),
    .io_sfence_bits_rs1(tlb_io_sfence_bits_rs1),
    .io_sfence_bits_rs2(tlb_io_sfence_bits_rs2),
    .io_sfence_bits_addr(tlb_io_sfence_bits_addr),
    .io_ptw_req_ready(tlb_io_ptw_req_ready),
    .io_ptw_req_valid(tlb_io_ptw_req_valid),
    .io_ptw_req_bits_bits_addr(tlb_io_ptw_req_bits_bits_addr),
    .io_ptw_resp_valid(tlb_io_ptw_resp_valid),
    .io_ptw_resp_bits_ae(tlb_io_ptw_resp_bits_ae),
    .io_ptw_resp_bits_pte_ppn(tlb_io_ptw_resp_bits_pte_ppn),
    .io_ptw_resp_bits_pte_d(tlb_io_ptw_resp_bits_pte_d),
    .io_ptw_resp_bits_pte_a(tlb_io_ptw_resp_bits_pte_a),
    .io_ptw_resp_bits_pte_g(tlb_io_ptw_resp_bits_pte_g),
    .io_ptw_resp_bits_pte_u(tlb_io_ptw_resp_bits_pte_u),
    .io_ptw_resp_bits_pte_x(tlb_io_ptw_resp_bits_pte_x),
    .io_ptw_resp_bits_pte_w(tlb_io_ptw_resp_bits_pte_w),
    .io_ptw_resp_bits_pte_r(tlb_io_ptw_resp_bits_pte_r),
    .io_ptw_resp_bits_pte_v(tlb_io_ptw_resp_bits_pte_v),
    .io_ptw_resp_bits_level(tlb_io_ptw_resp_bits_level),
    .io_ptw_resp_bits_homogeneous(tlb_io_ptw_resp_bits_homogeneous),
    .io_ptw_ptbr_mode(tlb_io_ptw_ptbr_mode),
    .io_ptw_status_debug(tlb_io_ptw_status_debug),
    .io_ptw_status_dprv(tlb_io_ptw_status_dprv),
    .io_ptw_status_mxr(tlb_io_ptw_status_mxr),
    .io_ptw_status_sum(tlb_io_ptw_status_sum),
    .io_ptw_pmp_0_cfg_l(tlb_io_ptw_pmp_0_cfg_l),
    .io_ptw_pmp_0_cfg_a(tlb_io_ptw_pmp_0_cfg_a),
    .io_ptw_pmp_0_cfg_x(tlb_io_ptw_pmp_0_cfg_x),
    .io_ptw_pmp_0_cfg_w(tlb_io_ptw_pmp_0_cfg_w),
    .io_ptw_pmp_0_cfg_r(tlb_io_ptw_pmp_0_cfg_r),
    .io_ptw_pmp_0_addr(tlb_io_ptw_pmp_0_addr),
    .io_ptw_pmp_0_mask(tlb_io_ptw_pmp_0_mask),
    .io_ptw_pmp_1_cfg_l(tlb_io_ptw_pmp_1_cfg_l),
    .io_ptw_pmp_1_cfg_a(tlb_io_ptw_pmp_1_cfg_a),
    .io_ptw_pmp_1_cfg_x(tlb_io_ptw_pmp_1_cfg_x),
    .io_ptw_pmp_1_cfg_w(tlb_io_ptw_pmp_1_cfg_w),
    .io_ptw_pmp_1_cfg_r(tlb_io_ptw_pmp_1_cfg_r),
    .io_ptw_pmp_1_addr(tlb_io_ptw_pmp_1_addr),
    .io_ptw_pmp_1_mask(tlb_io_ptw_pmp_1_mask),
    .io_ptw_pmp_2_cfg_l(tlb_io_ptw_pmp_2_cfg_l),
    .io_ptw_pmp_2_cfg_a(tlb_io_ptw_pmp_2_cfg_a),
    .io_ptw_pmp_2_cfg_x(tlb_io_ptw_pmp_2_cfg_x),
    .io_ptw_pmp_2_cfg_w(tlb_io_ptw_pmp_2_cfg_w),
    .io_ptw_pmp_2_cfg_r(tlb_io_ptw_pmp_2_cfg_r),
    .io_ptw_pmp_2_addr(tlb_io_ptw_pmp_2_addr),
    .io_ptw_pmp_2_mask(tlb_io_ptw_pmp_2_mask),
    .io_ptw_pmp_3_cfg_l(tlb_io_ptw_pmp_3_cfg_l),
    .io_ptw_pmp_3_cfg_a(tlb_io_ptw_pmp_3_cfg_a),
    .io_ptw_pmp_3_cfg_x(tlb_io_ptw_pmp_3_cfg_x),
    .io_ptw_pmp_3_cfg_w(tlb_io_ptw_pmp_3_cfg_w),
    .io_ptw_pmp_3_cfg_r(tlb_io_ptw_pmp_3_cfg_r),
    .io_ptw_pmp_3_addr(tlb_io_ptw_pmp_3_addr),
    .io_ptw_pmp_3_mask(tlb_io_ptw_pmp_3_mask),
    .io_ptw_pmp_4_cfg_l(tlb_io_ptw_pmp_4_cfg_l),
    .io_ptw_pmp_4_cfg_a(tlb_io_ptw_pmp_4_cfg_a),
    .io_ptw_pmp_4_cfg_x(tlb_io_ptw_pmp_4_cfg_x),
    .io_ptw_pmp_4_cfg_w(tlb_io_ptw_pmp_4_cfg_w),
    .io_ptw_pmp_4_cfg_r(tlb_io_ptw_pmp_4_cfg_r),
    .io_ptw_pmp_4_addr(tlb_io_ptw_pmp_4_addr),
    .io_ptw_pmp_4_mask(tlb_io_ptw_pmp_4_mask),
    .io_ptw_pmp_5_cfg_l(tlb_io_ptw_pmp_5_cfg_l),
    .io_ptw_pmp_5_cfg_a(tlb_io_ptw_pmp_5_cfg_a),
    .io_ptw_pmp_5_cfg_x(tlb_io_ptw_pmp_5_cfg_x),
    .io_ptw_pmp_5_cfg_w(tlb_io_ptw_pmp_5_cfg_w),
    .io_ptw_pmp_5_cfg_r(tlb_io_ptw_pmp_5_cfg_r),
    .io_ptw_pmp_5_addr(tlb_io_ptw_pmp_5_addr),
    .io_ptw_pmp_5_mask(tlb_io_ptw_pmp_5_mask),
    .io_ptw_pmp_6_cfg_l(tlb_io_ptw_pmp_6_cfg_l),
    .io_ptw_pmp_6_cfg_a(tlb_io_ptw_pmp_6_cfg_a),
    .io_ptw_pmp_6_cfg_x(tlb_io_ptw_pmp_6_cfg_x),
    .io_ptw_pmp_6_cfg_w(tlb_io_ptw_pmp_6_cfg_w),
    .io_ptw_pmp_6_cfg_r(tlb_io_ptw_pmp_6_cfg_r),
    .io_ptw_pmp_6_addr(tlb_io_ptw_pmp_6_addr),
    .io_ptw_pmp_6_mask(tlb_io_ptw_pmp_6_mask),
    .io_ptw_pmp_7_cfg_l(tlb_io_ptw_pmp_7_cfg_l),
    .io_ptw_pmp_7_cfg_a(tlb_io_ptw_pmp_7_cfg_a),
    .io_ptw_pmp_7_cfg_x(tlb_io_ptw_pmp_7_cfg_x),
    .io_ptw_pmp_7_cfg_w(tlb_io_ptw_pmp_7_cfg_w),
    .io_ptw_pmp_7_cfg_r(tlb_io_ptw_pmp_7_cfg_r),
    .io_ptw_pmp_7_addr(tlb_io_ptw_pmp_7_addr),
    .io_ptw_pmp_7_mask(tlb_io_ptw_pmp_7_mask)
  );
  TLB pma_checker ( // @[DCache.scala 116:27:chipyard.TestHarness.RocketConfig.fir@213932.4]
    .clock(pma_checker_clock),
    .reset(pma_checker_reset),
    .io_req_ready(pma_checker_io_req_ready),
    .io_req_valid(pma_checker_io_req_valid),
    .io_req_bits_vaddr(pma_checker_io_req_bits_vaddr),
    .io_req_bits_passthrough(pma_checker_io_req_bits_passthrough),
    .io_req_bits_size(pma_checker_io_req_bits_size),
    .io_req_bits_cmd(pma_checker_io_req_bits_cmd),
    .io_resp_miss(pma_checker_io_resp_miss),
    .io_resp_paddr(pma_checker_io_resp_paddr),
    .io_resp_pf_ld(pma_checker_io_resp_pf_ld),
    .io_resp_pf_st(pma_checker_io_resp_pf_st),
    .io_resp_ae_ld(pma_checker_io_resp_ae_ld),
    .io_resp_ae_st(pma_checker_io_resp_ae_st),
    .io_resp_ma_ld(pma_checker_io_resp_ma_ld),
    .io_resp_ma_st(pma_checker_io_resp_ma_st),
    .io_resp_cacheable(pma_checker_io_resp_cacheable),
    .io_sfence_valid(pma_checker_io_sfence_valid),
    .io_sfence_bits_rs1(pma_checker_io_sfence_bits_rs1),
    .io_sfence_bits_rs2(pma_checker_io_sfence_bits_rs2),
    .io_sfence_bits_addr(pma_checker_io_sfence_bits_addr),
    .io_ptw_req_ready(pma_checker_io_ptw_req_ready),
    .io_ptw_req_valid(pma_checker_io_ptw_req_valid),
    .io_ptw_req_bits_bits_addr(pma_checker_io_ptw_req_bits_bits_addr),
    .io_ptw_resp_valid(pma_checker_io_ptw_resp_valid),
    .io_ptw_resp_bits_ae(pma_checker_io_ptw_resp_bits_ae),
    .io_ptw_resp_bits_pte_ppn(pma_checker_io_ptw_resp_bits_pte_ppn),
    .io_ptw_resp_bits_pte_d(pma_checker_io_ptw_resp_bits_pte_d),
    .io_ptw_resp_bits_pte_a(pma_checker_io_ptw_resp_bits_pte_a),
    .io_ptw_resp_bits_pte_g(pma_checker_io_ptw_resp_bits_pte_g),
    .io_ptw_resp_bits_pte_u(pma_checker_io_ptw_resp_bits_pte_u),
    .io_ptw_resp_bits_pte_x(pma_checker_io_ptw_resp_bits_pte_x),
    .io_ptw_resp_bits_pte_w(pma_checker_io_ptw_resp_bits_pte_w),
    .io_ptw_resp_bits_pte_r(pma_checker_io_ptw_resp_bits_pte_r),
    .io_ptw_resp_bits_pte_v(pma_checker_io_ptw_resp_bits_pte_v),
    .io_ptw_resp_bits_level(pma_checker_io_ptw_resp_bits_level),
    .io_ptw_resp_bits_homogeneous(pma_checker_io_ptw_resp_bits_homogeneous),
    .io_ptw_ptbr_mode(pma_checker_io_ptw_ptbr_mode),
    .io_ptw_status_debug(pma_checker_io_ptw_status_debug),
    .io_ptw_status_dprv(pma_checker_io_ptw_status_dprv),
    .io_ptw_status_mxr(pma_checker_io_ptw_status_mxr),
    .io_ptw_status_sum(pma_checker_io_ptw_status_sum),
    .io_ptw_pmp_0_cfg_l(pma_checker_io_ptw_pmp_0_cfg_l),
    .io_ptw_pmp_0_cfg_a(pma_checker_io_ptw_pmp_0_cfg_a),
    .io_ptw_pmp_0_cfg_x(pma_checker_io_ptw_pmp_0_cfg_x),
    .io_ptw_pmp_0_cfg_w(pma_checker_io_ptw_pmp_0_cfg_w),
    .io_ptw_pmp_0_cfg_r(pma_checker_io_ptw_pmp_0_cfg_r),
    .io_ptw_pmp_0_addr(pma_checker_io_ptw_pmp_0_addr),
    .io_ptw_pmp_0_mask(pma_checker_io_ptw_pmp_0_mask),
    .io_ptw_pmp_1_cfg_l(pma_checker_io_ptw_pmp_1_cfg_l),
    .io_ptw_pmp_1_cfg_a(pma_checker_io_ptw_pmp_1_cfg_a),
    .io_ptw_pmp_1_cfg_x(pma_checker_io_ptw_pmp_1_cfg_x),
    .io_ptw_pmp_1_cfg_w(pma_checker_io_ptw_pmp_1_cfg_w),
    .io_ptw_pmp_1_cfg_r(pma_checker_io_ptw_pmp_1_cfg_r),
    .io_ptw_pmp_1_addr(pma_checker_io_ptw_pmp_1_addr),
    .io_ptw_pmp_1_mask(pma_checker_io_ptw_pmp_1_mask),
    .io_ptw_pmp_2_cfg_l(pma_checker_io_ptw_pmp_2_cfg_l),
    .io_ptw_pmp_2_cfg_a(pma_checker_io_ptw_pmp_2_cfg_a),
    .io_ptw_pmp_2_cfg_x(pma_checker_io_ptw_pmp_2_cfg_x),
    .io_ptw_pmp_2_cfg_w(pma_checker_io_ptw_pmp_2_cfg_w),
    .io_ptw_pmp_2_cfg_r(pma_checker_io_ptw_pmp_2_cfg_r),
    .io_ptw_pmp_2_addr(pma_checker_io_ptw_pmp_2_addr),
    .io_ptw_pmp_2_mask(pma_checker_io_ptw_pmp_2_mask),
    .io_ptw_pmp_3_cfg_l(pma_checker_io_ptw_pmp_3_cfg_l),
    .io_ptw_pmp_3_cfg_a(pma_checker_io_ptw_pmp_3_cfg_a),
    .io_ptw_pmp_3_cfg_x(pma_checker_io_ptw_pmp_3_cfg_x),
    .io_ptw_pmp_3_cfg_w(pma_checker_io_ptw_pmp_3_cfg_w),
    .io_ptw_pmp_3_cfg_r(pma_checker_io_ptw_pmp_3_cfg_r),
    .io_ptw_pmp_3_addr(pma_checker_io_ptw_pmp_3_addr),
    .io_ptw_pmp_3_mask(pma_checker_io_ptw_pmp_3_mask),
    .io_ptw_pmp_4_cfg_l(pma_checker_io_ptw_pmp_4_cfg_l),
    .io_ptw_pmp_4_cfg_a(pma_checker_io_ptw_pmp_4_cfg_a),
    .io_ptw_pmp_4_cfg_x(pma_checker_io_ptw_pmp_4_cfg_x),
    .io_ptw_pmp_4_cfg_w(pma_checker_io_ptw_pmp_4_cfg_w),
    .io_ptw_pmp_4_cfg_r(pma_checker_io_ptw_pmp_4_cfg_r),
    .io_ptw_pmp_4_addr(pma_checker_io_ptw_pmp_4_addr),
    .io_ptw_pmp_4_mask(pma_checker_io_ptw_pmp_4_mask),
    .io_ptw_pmp_5_cfg_l(pma_checker_io_ptw_pmp_5_cfg_l),
    .io_ptw_pmp_5_cfg_a(pma_checker_io_ptw_pmp_5_cfg_a),
    .io_ptw_pmp_5_cfg_x(pma_checker_io_ptw_pmp_5_cfg_x),
    .io_ptw_pmp_5_cfg_w(pma_checker_io_ptw_pmp_5_cfg_w),
    .io_ptw_pmp_5_cfg_r(pma_checker_io_ptw_pmp_5_cfg_r),
    .io_ptw_pmp_5_addr(pma_checker_io_ptw_pmp_5_addr),
    .io_ptw_pmp_5_mask(pma_checker_io_ptw_pmp_5_mask),
    .io_ptw_pmp_6_cfg_l(pma_checker_io_ptw_pmp_6_cfg_l),
    .io_ptw_pmp_6_cfg_a(pma_checker_io_ptw_pmp_6_cfg_a),
    .io_ptw_pmp_6_cfg_x(pma_checker_io_ptw_pmp_6_cfg_x),
    .io_ptw_pmp_6_cfg_w(pma_checker_io_ptw_pmp_6_cfg_w),
    .io_ptw_pmp_6_cfg_r(pma_checker_io_ptw_pmp_6_cfg_r),
    .io_ptw_pmp_6_addr(pma_checker_io_ptw_pmp_6_addr),
    .io_ptw_pmp_6_mask(pma_checker_io_ptw_pmp_6_mask),
    .io_ptw_pmp_7_cfg_l(pma_checker_io_ptw_pmp_7_cfg_l),
    .io_ptw_pmp_7_cfg_a(pma_checker_io_ptw_pmp_7_cfg_a),
    .io_ptw_pmp_7_cfg_x(pma_checker_io_ptw_pmp_7_cfg_x),
    .io_ptw_pmp_7_cfg_w(pma_checker_io_ptw_pmp_7_cfg_w),
    .io_ptw_pmp_7_cfg_r(pma_checker_io_ptw_pmp_7_cfg_r),
    .io_ptw_pmp_7_addr(pma_checker_io_ptw_pmp_7_addr),
    .io_ptw_pmp_7_mask(pma_checker_io_ptw_pmp_7_mask)
  );
  MaxPeriodFibonacciLFSR_1 MaxPeriodFibonacciLFSR ( // @[PRNG.scala 82:22:chipyard.TestHarness.RocketConfig.fir@213939.4]
    .clock(MaxPeriodFibonacciLFSR_clock),
    .reset(MaxPeriodFibonacciLFSR_reset),
    .io_increment(MaxPeriodFibonacciLFSR_io_increment),
    .io_out_0(MaxPeriodFibonacciLFSR_io_out_0),
    .io_out_1(MaxPeriodFibonacciLFSR_io_out_1),
    .io_out_2(MaxPeriodFibonacciLFSR_io_out_2),
    .io_out_3(MaxPeriodFibonacciLFSR_io_out_3),
    .io_out_4(MaxPeriodFibonacciLFSR_io_out_4),
    .io_out_5(MaxPeriodFibonacciLFSR_io_out_5),
    .io_out_6(MaxPeriodFibonacciLFSR_io_out_6),
    .io_out_7(MaxPeriodFibonacciLFSR_io_out_7),
    .io_out_8(MaxPeriodFibonacciLFSR_io_out_8),
    .io_out_9(MaxPeriodFibonacciLFSR_io_out_9),
    .io_out_10(MaxPeriodFibonacciLFSR_io_out_10),
    .io_out_11(MaxPeriodFibonacciLFSR_io_out_11),
    .io_out_12(MaxPeriodFibonacciLFSR_io_out_12),
    .io_out_13(MaxPeriodFibonacciLFSR_io_out_13),
    .io_out_14(MaxPeriodFibonacciLFSR_io_out_14),
    .io_out_15(MaxPeriodFibonacciLFSR_io_out_15)
  );
  DCacheModuleImpl_Anon_1 metaArb ( // @[DCache.scala 120:23:chipyard.TestHarness.RocketConfig.fir@213975.4]
    .io_in_0_valid(metaArb_io_in_0_valid),
    .io_in_0_bits_addr(metaArb_io_in_0_bits_addr),
    .io_in_0_bits_idx(metaArb_io_in_0_bits_idx),
    .io_in_0_bits_data(metaArb_io_in_0_bits_data),
    .io_in_1_valid(metaArb_io_in_1_valid),
    .io_in_1_bits_addr(metaArb_io_in_1_bits_addr),
    .io_in_1_bits_idx(metaArb_io_in_1_bits_idx),
    .io_in_1_bits_data(metaArb_io_in_1_bits_data),
    .io_in_2_valid(metaArb_io_in_2_valid),
    .io_in_2_bits_addr(metaArb_io_in_2_bits_addr),
    .io_in_2_bits_idx(metaArb_io_in_2_bits_idx),
    .io_in_2_bits_way_en(metaArb_io_in_2_bits_way_en),
    .io_in_2_bits_data(metaArb_io_in_2_bits_data),
    .io_in_3_valid(metaArb_io_in_3_valid),
    .io_in_3_bits_addr(metaArb_io_in_3_bits_addr),
    .io_in_3_bits_idx(metaArb_io_in_3_bits_idx),
    .io_in_3_bits_way_en(metaArb_io_in_3_bits_way_en),
    .io_in_3_bits_data(metaArb_io_in_3_bits_data),
    .io_in_4_ready(metaArb_io_in_4_ready),
    .io_in_4_valid(metaArb_io_in_4_valid),
    .io_in_4_bits_addr(metaArb_io_in_4_bits_addr),
    .io_in_4_bits_idx(metaArb_io_in_4_bits_idx),
    .io_in_4_bits_way_en(metaArb_io_in_4_bits_way_en),
    .io_in_4_bits_data(metaArb_io_in_4_bits_data),
    .io_in_5_ready(metaArb_io_in_5_ready),
    .io_in_5_valid(metaArb_io_in_5_valid),
    .io_in_5_bits_addr(metaArb_io_in_5_bits_addr),
    .io_in_5_bits_idx(metaArb_io_in_5_bits_idx),
    .io_in_6_ready(metaArb_io_in_6_ready),
    .io_in_6_valid(metaArb_io_in_6_valid),
    .io_in_6_bits_addr(metaArb_io_in_6_bits_addr),
    .io_in_6_bits_idx(metaArb_io_in_6_bits_idx),
    .io_in_6_bits_way_en(metaArb_io_in_6_bits_way_en),
    .io_in_6_bits_data(metaArb_io_in_6_bits_data),
    .io_in_7_ready(metaArb_io_in_7_ready),
    .io_in_7_valid(metaArb_io_in_7_valid),
    .io_in_7_bits_addr(metaArb_io_in_7_bits_addr),
    .io_in_7_bits_idx(metaArb_io_in_7_bits_idx),
    .io_in_7_bits_way_en(metaArb_io_in_7_bits_way_en),
    .io_in_7_bits_data(metaArb_io_in_7_bits_data),
    .io_out_valid(metaArb_io_out_valid),
    .io_out_bits_write(metaArb_io_out_bits_write),
    .io_out_bits_addr(metaArb_io_out_bits_addr),
    .io_out_bits_idx(metaArb_io_out_bits_idx),
    .io_out_bits_way_en(metaArb_io_out_bits_way_en),
    .io_out_bits_data(metaArb_io_out_bits_data)
  );
  tag_array tag_array ( // @[DescribedSRAM.scala 23:26:chipyard.TestHarness.RocketConfig.fir@213979.4]
    .RW0_addr(tag_array_RW0_addr),
    .RW0_en(tag_array_RW0_en),
    .RW0_clk(tag_array_RW0_clk),
    .RW0_wmode(tag_array_RW0_wmode),
    .RW0_wdata_0(tag_array_RW0_wdata_0),
    .RW0_wdata_1(tag_array_RW0_wdata_1),
    .RW0_wdata_2(tag_array_RW0_wdata_2),
    .RW0_wdata_3(tag_array_RW0_wdata_3),
    .RW0_rdata_0(tag_array_RW0_rdata_0),
    .RW0_rdata_1(tag_array_RW0_rdata_1),
    .RW0_rdata_2(tag_array_RW0_rdata_2),
    .RW0_rdata_3(tag_array_RW0_rdata_3),
    .RW0_wmask_0(tag_array_RW0_wmask_0),
    .RW0_wmask_1(tag_array_RW0_wmask_1),
    .RW0_wmask_2(tag_array_RW0_wmask_2),
    .RW0_wmask_3(tag_array_RW0_wmask_3)
  );
  DCacheDataArray data ( // @[DCache.scala 130:20:chipyard.TestHarness.RocketConfig.fir@213980.4]
    .clock(data_clock),
    .io_req_valid(data_io_req_valid),
    .io_req_bits_addr(data_io_req_bits_addr),
    .io_req_bits_write(data_io_req_bits_write),
    .io_req_bits_wdata(data_io_req_bits_wdata),
    .io_req_bits_eccMask(data_io_req_bits_eccMask),
    .io_req_bits_way_en(data_io_req_bits_way_en),
    .io_resp_0(data_io_resp_0),
    .io_resp_1(data_io_resp_1),
    .io_resp_2(data_io_resp_2),
    .io_resp_3(data_io_resp_3)
  );
  DCacheModuleImpl_Anon_2 dataArb ( // @[DCache.scala 131:23:chipyard.TestHarness.RocketConfig.fir@213984.4]
    .io_in_0_valid(dataArb_io_in_0_valid),
    .io_in_0_bits_addr(dataArb_io_in_0_bits_addr),
    .io_in_0_bits_write(dataArb_io_in_0_bits_write),
    .io_in_0_bits_wdata(dataArb_io_in_0_bits_wdata),
    .io_in_0_bits_eccMask(dataArb_io_in_0_bits_eccMask),
    .io_in_0_bits_way_en(dataArb_io_in_0_bits_way_en),
    .io_in_1_ready(dataArb_io_in_1_ready),
    .io_in_1_valid(dataArb_io_in_1_valid),
    .io_in_1_bits_addr(dataArb_io_in_1_bits_addr),
    .io_in_1_bits_write(dataArb_io_in_1_bits_write),
    .io_in_1_bits_wdata(dataArb_io_in_1_bits_wdata),
    .io_in_1_bits_eccMask(dataArb_io_in_1_bits_eccMask),
    .io_in_1_bits_way_en(dataArb_io_in_1_bits_way_en),
    .io_in_2_ready(dataArb_io_in_2_ready),
    .io_in_2_valid(dataArb_io_in_2_valid),
    .io_in_2_bits_addr(dataArb_io_in_2_bits_addr),
    .io_in_2_bits_wdata(dataArb_io_in_2_bits_wdata),
    .io_in_2_bits_eccMask(dataArb_io_in_2_bits_eccMask),
    .io_in_3_ready(dataArb_io_in_3_ready),
    .io_in_3_valid(dataArb_io_in_3_valid),
    .io_in_3_bits_addr(dataArb_io_in_3_bits_addr),
    .io_in_3_bits_wdata(dataArb_io_in_3_bits_wdata),
    .io_in_3_bits_eccMask(dataArb_io_in_3_bits_eccMask),
    .io_out_valid(dataArb_io_out_valid),
    .io_out_bits_addr(dataArb_io_out_bits_addr),
    .io_out_bits_write(dataArb_io_out_bits_write),
    .io_out_bits_wdata(dataArb_io_out_bits_wdata),
    .io_out_bits_eccMask(dataArb_io_out_bits_eccMask),
    .io_out_bits_way_en(dataArb_io_out_bits_way_en)
  );
  AMOALU amoalu ( // @[DCache.scala 879:24:chipyard.TestHarness.RocketConfig.fir@218097.4]
    .io_mask(amoalu_io_mask),
    .io_cmd(amoalu_io_cmd),
    .io_lhs(amoalu_io_lhs),
    .io_rhs(amoalu_io_rhs),
    .io_out(amoalu_io_out)
  );
  assign _T_7 = {MaxPeriodFibonacciLFSR_io_out_7,MaxPeriodFibonacciLFSR_io_out_6,MaxPeriodFibonacciLFSR_io_out_5,MaxPeriodFibonacciLFSR_io_out_4,MaxPeriodFibonacciLFSR_io_out_3,MaxPeriodFibonacciLFSR_io_out_2,MaxPeriodFibonacciLFSR_io_out_1,MaxPeriodFibonacciLFSR_io_out_0}; // @[PRNG.scala 86:17:chipyard.TestHarness.RocketConfig.fir@213966.4]
  assign _T_15 = {MaxPeriodFibonacciLFSR_io_out_15,MaxPeriodFibonacciLFSR_io_out_14,MaxPeriodFibonacciLFSR_io_out_13,MaxPeriodFibonacciLFSR_io_out_12,MaxPeriodFibonacciLFSR_io_out_11,MaxPeriodFibonacciLFSR_io_out_10,MaxPeriodFibonacciLFSR_io_out_9,MaxPeriodFibonacciLFSR_io_out_8,_T_7}; // @[PRNG.scala 86:17:chipyard.TestHarness.RocketConfig.fir@213974.4]
  assign _T_16 = io_cpu_req_ready & io_cpu_req_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@214008.4]
  assign _T_2871 = blockProbeAfterGrantCount > 3'h0; // @[DCache.scala 707:65:chipyard.TestHarness.RocketConfig.fir@217673.4]
  assign lrscValid = lrscCount > 7'h3; // @[DCache.scala 422:29:chipyard.TestHarness.RocketConfig.fir@215292.4]
  assign block_probe_for_core_progress = _T_2871 | lrscValid; // @[DCache.scala 707:69:chipyard.TestHarness.RocketConfig.fir@217674.4]
  assign _T_381 = s1_probe | s2_probe; // @[DCache.scala 286:34:chipyard.TestHarness.RocketConfig.fir@214604.4]
  assign _T_382 = release_state != 3'h0; // @[DCache.scala 286:63:chipyard.TestHarness.RocketConfig.fir@214605.4]
  assign releaseInFlight = _T_381 | _T_382; // @[DCache.scala 286:46:chipyard.TestHarness.RocketConfig.fir@214606.4]
  assign _T_2872 = auto_out_b_bits_address ^ release_ack_addr; // @[DCache.scala 708:88:chipyard.TestHarness.RocketConfig.fir@217675.4]
  assign _T_2874 = _T_2872[11:6] == 6'h0; // @[DCache.scala 708:124:chipyard.TestHarness.RocketConfig.fir@217677.4]
  assign block_probe_for_pending_release_ack = release_ack_wait & _T_2874; // @[DCache.scala 708:62:chipyard.TestHarness.RocketConfig.fir@217678.4]
  assign _T_2875 = releaseInFlight | block_probe_for_pending_release_ack; // @[DCache.scala 709:50:chipyard.TestHarness.RocketConfig.fir@217679.4]
  assign block_probe_for_ordering = _T_2875 | grantInProgress; // @[DCache.scala 709:89:chipyard.TestHarness.RocketConfig.fir@217680.4]
  assign _T_2879 = block_probe_for_core_progress | block_probe_for_ordering; // @[DCache.scala 711:79:chipyard.TestHarness.RocketConfig.fir@217685.4]
  assign _T_2880 = _T_2879 | s1_valid; // @[DCache.scala 711:107:chipyard.TestHarness.RocketConfig.fir@217686.4]
  assign _T_2881 = _T_2880 | s2_valid; // @[DCache.scala 711:119:chipyard.TestHarness.RocketConfig.fir@217687.4]
  assign _T_2882 = ~_T_2881; // @[DCache.scala 711:47:chipyard.TestHarness.RocketConfig.fir@217688.4]
  assign tl_out__b_ready = metaArb_io_in_6_ready & _T_2882; // @[DCache.scala 711:44:chipyard.TestHarness.RocketConfig.fir@217689.4]
  assign _T_17 = tl_out__b_ready & auto_out_b_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@214011.4]
  assign _T_19 = ~io_cpu_s1_kill; // @[DCache.scala 163:37:chipyard.TestHarness.RocketConfig.fir@214029.4]
  assign s1_valid_masked = s1_valid & _T_19; // @[DCache.scala 163:34:chipyard.TestHarness.RocketConfig.fir@214030.4]
  assign s2_meta_error = |4'h0; // @[DCache.scala 312:83:chipyard.TestHarness.RocketConfig.fir@214783.4]
  assign _T_681 = {probe_bits_param,s2_probe_state_state}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@215065.4]
  assign _T_738 = 4'h3 == _T_681; // @[Misc.scala 55:20:chipyard.TestHarness.RocketConfig.fir@215122.4]
  assign _T_734 = 4'h2 == _T_681; // @[Misc.scala 55:20:chipyard.TestHarness.RocketConfig.fir@215118.4]
  assign _T_730 = 4'h1 == _T_681; // @[Misc.scala 55:20:chipyard.TestHarness.RocketConfig.fir@215114.4]
  assign _T_726 = 4'h0 == _T_681; // @[Misc.scala 55:20:chipyard.TestHarness.RocketConfig.fir@215110.4]
  assign _T_722 = 4'h7 == _T_681; // @[Misc.scala 55:20:chipyard.TestHarness.RocketConfig.fir@215106.4]
  assign _T_718 = 4'h6 == _T_681; // @[Misc.scala 55:20:chipyard.TestHarness.RocketConfig.fir@215102.4]
  assign _T_714 = 4'h5 == _T_681; // @[Misc.scala 55:20:chipyard.TestHarness.RocketConfig.fir@215098.4]
  assign _T_710 = 4'h4 == _T_681; // @[Misc.scala 55:20:chipyard.TestHarness.RocketConfig.fir@215094.4]
  assign _T_706 = 4'hb == _T_681; // @[Misc.scala 55:20:chipyard.TestHarness.RocketConfig.fir@215090.4]
  assign _T_702 = 4'ha == _T_681; // @[Misc.scala 55:20:chipyard.TestHarness.RocketConfig.fir@215086.4]
  assign _T_698 = 4'h9 == _T_681; // @[Misc.scala 55:20:chipyard.TestHarness.RocketConfig.fir@215082.4]
  assign _T_694 = 4'h8 == _T_681; // @[Misc.scala 55:20:chipyard.TestHarness.RocketConfig.fir@215078.4]
  assign _T_711 = _T_710 ? 1'h0 : _T_706; // @[Misc.scala 37:9:chipyard.TestHarness.RocketConfig.fir@215095.4]
  assign _T_715 = _T_714 ? 1'h0 : _T_711; // @[Misc.scala 37:9:chipyard.TestHarness.RocketConfig.fir@215099.4]
  assign _T_719 = _T_718 ? 1'h0 : _T_715; // @[Misc.scala 37:9:chipyard.TestHarness.RocketConfig.fir@215103.4]
  assign _T_723 = _T_722 | _T_719; // @[Misc.scala 37:9:chipyard.TestHarness.RocketConfig.fir@215107.4]
  assign _T_727 = _T_726 ? 1'h0 : _T_723; // @[Misc.scala 37:9:chipyard.TestHarness.RocketConfig.fir@215111.4]
  assign _T_731 = _T_730 ? 1'h0 : _T_727; // @[Misc.scala 37:9:chipyard.TestHarness.RocketConfig.fir@215115.4]
  assign _T_735 = _T_734 ? 1'h0 : _T_731; // @[Misc.scala 37:9:chipyard.TestHarness.RocketConfig.fir@215119.4]
  assign s2_prb_ack_data = _T_738 | _T_735; // @[Misc.scala 37:9:chipyard.TestHarness.RocketConfig.fir@215123.4]
  assign _T_2932 = s2_probe_state_state > 2'h0; // @[Metadata.scala 50:45:chipyard.TestHarness.RocketConfig.fir@217817.10]
  assign _T_2898 = _T_2895 == 9'h1; // @[Edges.scala 233:25:chipyard.TestHarness.RocketConfig.fir@217711.4]
  assign _T_2943 = release_state == 3'h1; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@217870.4]
  assign _T_2944 = release_state == 3'h6; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@217871.4]
  assign _T_2945 = _T_2943 | _T_2944; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@217872.4]
  assign _T_2942 = release_state == 3'h2; // @[DCache.scala 777:25:chipyard.TestHarness.RocketConfig.fir@217863.4]
  assign _T_2941 = release_state == 3'h3; // @[DCache.scala 772:25:chipyard.TestHarness.RocketConfig.fir@217855.4]
  assign _GEN_314 = _T_2942 ? 3'h5 : 3'h4; // @[DCache.scala 777:48:chipyard.TestHarness.RocketConfig.fir@217864.4]
  assign tl_out__c_bits_opcode = _T_2945 ? 3'h7 : _GEN_314; // @[DCache.scala 781:81:chipyard.TestHarness.RocketConfig.fir@217873.4]
  assign tl_out__c_bits_size = _T_2945 ? 4'h6 : probe_bits_size; // @[DCache.scala 781:81:chipyard.TestHarness.RocketConfig.fir@217873.4]
  assign _T_2889 = 27'hfff << tl_out__c_bits_size; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@217701.4]
  assign _T_2891 = ~_T_2889[11:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@217703.4]
  assign _T_2894 = tl_out__c_bits_opcode[0] ? _T_2891[11:3] : 9'h0; // @[Edges.scala 222:14:chipyard.TestHarness.RocketConfig.fir@217706.4]
  assign _T_2899 = _T_2894 == 9'h0; // @[Edges.scala 233:47:chipyard.TestHarness.RocketConfig.fir@217712.4]
  assign c_last = _T_2898 | _T_2899; // @[Edges.scala 233:37:chipyard.TestHarness.RocketConfig.fir@217713.4]
  assign _T_2940 = release_state == 3'h5; // @[DCache.scala 768:25:chipyard.TestHarness.RocketConfig.fir@217848.4]
  assign c_first = _T_2895 == 9'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@217710.4]
  assign _T_2914 = c_first & release_ack_wait; // @[DCache.scala 730:56:chipyard.TestHarness.RocketConfig.fir@217768.4]
  assign _T_2915 = ~_T_2914; // @[DCache.scala 730:46:chipyard.TestHarness.RocketConfig.fir@217769.4]
  assign _T_2916 = s2_release_data_valid & _T_2915; // @[DCache.scala 730:43:chipyard.TestHarness.RocketConfig.fir@217770.4]
  assign _GEN_263 = s2_prb_ack_data ? _T_2916 : 1'h1; // @[DCache.scala 746:36:chipyard.TestHarness.RocketConfig.fir@217813.8]
  assign _GEN_273 = s2_meta_error ? _T_2916 : _GEN_263; // @[DCache.scala 744:28:chipyard.TestHarness.RocketConfig.fir@217809.6]
  assign _GEN_284 = s2_probe ? _GEN_273 : _T_2916; // @[DCache.scala 742:21:chipyard.TestHarness.RocketConfig.fir@217805.4]
  assign _GEN_301 = _T_2940 | _GEN_284; // @[DCache.scala 768:47:chipyard.TestHarness.RocketConfig.fir@217849.4]
  assign tl_out__c_valid = _T_2941 | _GEN_301; // @[DCache.scala 772:48:chipyard.TestHarness.RocketConfig.fir@217856.4]
  assign _T_2887 = auto_out_c_ready & tl_out__c_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@217699.4]
  assign releaseDone = c_last & _T_2887; // @[Edges.scala 234:22:chipyard.TestHarness.RocketConfig.fir@217714.4]
  assign _T_2934 = ~releaseDone; // @[DCache.scala 754:22:chipyard.TestHarness.RocketConfig.fir@217826.12]
  assign _GEN_261 = _T_2932 | _T_2934; // @[DCache.scala 748:45:chipyard.TestHarness.RocketConfig.fir@217818.10]
  assign _GEN_271 = s2_prb_ack_data | _GEN_261; // @[DCache.scala 746:36:chipyard.TestHarness.RocketConfig.fir@217813.8]
  assign probeNack = s2_meta_error | _GEN_271; // @[DCache.scala 744:28:chipyard.TestHarness.RocketConfig.fir@217809.6]
  assign _T_30 = s1_req_cmd == 5'h0; // @[Consts.scala 82:31:chipyard.TestHarness.RocketConfig.fir@214084.4]
  assign _T_31 = s1_req_cmd == 5'h6; // @[Consts.scala 82:48:chipyard.TestHarness.RocketConfig.fir@214085.4]
  assign _T_32 = _T_30 | _T_31; // @[Consts.scala 82:41:chipyard.TestHarness.RocketConfig.fir@214086.4]
  assign _T_33 = s1_req_cmd == 5'h7; // @[Consts.scala 82:65:chipyard.TestHarness.RocketConfig.fir@214087.4]
  assign _T_34 = _T_32 | _T_33; // @[Consts.scala 82:58:chipyard.TestHarness.RocketConfig.fir@214088.4]
  assign _T_35 = s1_req_cmd == 5'h4; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@214089.4]
  assign _T_36 = s1_req_cmd == 5'h9; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@214090.4]
  assign _T_39 = _T_35 | _T_36; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@214093.4]
  assign _T_37 = s1_req_cmd == 5'ha; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@214091.4]
  assign _T_40 = _T_39 | _T_37; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@214094.4]
  assign _T_38 = s1_req_cmd == 5'hb; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@214092.4]
  assign _T_41 = _T_40 | _T_38; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@214095.4]
  assign _T_42 = s1_req_cmd == 5'h8; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@214096.4]
  assign _T_43 = s1_req_cmd == 5'hc; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@214097.4]
  assign _T_47 = _T_42 | _T_43; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@214101.4]
  assign _T_44 = s1_req_cmd == 5'hd; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@214098.4]
  assign _T_48 = _T_47 | _T_44; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@214102.4]
  assign _T_45 = s1_req_cmd == 5'he; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@214099.4]
  assign _T_49 = _T_48 | _T_45; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@214103.4]
  assign _T_46 = s1_req_cmd == 5'hf; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@214100.4]
  assign _T_50 = _T_49 | _T_46; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@214104.4]
  assign _T_51 = _T_41 | _T_50; // @[Consts.scala 80:44:chipyard.TestHarness.RocketConfig.fir@214105.4]
  assign s1_read = _T_34 | _T_51; // @[Consts.scala 82:75:chipyard.TestHarness.RocketConfig.fir@214106.4]
  assign _T_419 = s2_req_cmd == 5'h1; // @[Consts.scala 83:32:chipyard.TestHarness.RocketConfig.fir@214663.4]
  assign _T_420 = s2_req_cmd == 5'h11; // @[Consts.scala 83:49:chipyard.TestHarness.RocketConfig.fir@214664.4]
  assign _T_421 = _T_419 | _T_420; // @[Consts.scala 83:42:chipyard.TestHarness.RocketConfig.fir@214665.4]
  assign _T_422 = s2_req_cmd == 5'h7; // @[Consts.scala 83:66:chipyard.TestHarness.RocketConfig.fir@214666.4]
  assign _T_423 = _T_421 | _T_422; // @[Consts.scala 83:59:chipyard.TestHarness.RocketConfig.fir@214667.4]
  assign _T_424 = s2_req_cmd == 5'h4; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@214668.4]
  assign _T_425 = s2_req_cmd == 5'h9; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@214669.4]
  assign _T_428 = _T_424 | _T_425; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@214672.4]
  assign _T_426 = s2_req_cmd == 5'ha; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@214670.4]
  assign _T_429 = _T_428 | _T_426; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@214673.4]
  assign _T_427 = s2_req_cmd == 5'hb; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@214671.4]
  assign _T_430 = _T_429 | _T_427; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@214674.4]
  assign _T_431 = s2_req_cmd == 5'h8; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@214675.4]
  assign _T_432 = s2_req_cmd == 5'hc; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@214676.4]
  assign _T_436 = _T_431 | _T_432; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@214680.4]
  assign _T_433 = s2_req_cmd == 5'hd; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@214677.4]
  assign _T_437 = _T_436 | _T_433; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@214681.4]
  assign _T_434 = s2_req_cmd == 5'he; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@214678.4]
  assign _T_438 = _T_437 | _T_434; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@214682.4]
  assign _T_435 = s2_req_cmd == 5'hf; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@214679.4]
  assign _T_439 = _T_438 | _T_435; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@214683.4]
  assign _T_440 = _T_430 | _T_439; // @[Consts.scala 80:44:chipyard.TestHarness.RocketConfig.fir@214684.4]
  assign s2_write = _T_423 | _T_440; // @[Consts.scala 83:76:chipyard.TestHarness.RocketConfig.fir@214685.4]
  assign _T_1018 = s2_valid & s2_write; // @[DCache.scala 454:39:chipyard.TestHarness.RocketConfig.fir@215506.4]
  assign pstore1_valid_likely = _T_1018 | pstore1_held; // @[DCache.scala 454:51:chipyard.TestHarness.RocketConfig.fir@215507.4]
  assign _T_1179 = pstore1_addr[11:3] == s1_req_addr[11:3]; // @[DCache.scala 506:31:chipyard.TestHarness.RocketConfig.fir@215727.4]
  assign _T_52 = s1_req_cmd == 5'h1; // @[Consts.scala 83:32:chipyard.TestHarness.RocketConfig.fir@214107.4]
  assign _T_53 = s1_req_cmd == 5'h11; // @[Consts.scala 83:49:chipyard.TestHarness.RocketConfig.fir@214108.4]
  assign _T_54 = _T_52 | _T_53; // @[Consts.scala 83:42:chipyard.TestHarness.RocketConfig.fir@214109.4]
  assign _T_56 = _T_54 | _T_33; // @[Consts.scala 83:59:chipyard.TestHarness.RocketConfig.fir@214111.4]
  assign s1_write = _T_56 | _T_51; // @[Consts.scala 83:76:chipyard.TestHarness.RocketConfig.fir@214129.4]
  assign _T_1195 = |pstore1_mask[7]; // @[DCache.scala 1073:66:chipyard.TestHarness.RocketConfig.fir@215743.4]
  assign _T_1194 = |pstore1_mask[6]; // @[DCache.scala 1073:66:chipyard.TestHarness.RocketConfig.fir@215742.4]
  assign _T_1193 = |pstore1_mask[5]; // @[DCache.scala 1073:66:chipyard.TestHarness.RocketConfig.fir@215741.4]
  assign _T_1192 = |pstore1_mask[4]; // @[DCache.scala 1073:66:chipyard.TestHarness.RocketConfig.fir@215740.4]
  assign _T_1191 = |pstore1_mask[3]; // @[DCache.scala 1073:66:chipyard.TestHarness.RocketConfig.fir@215739.4]
  assign _T_1190 = |pstore1_mask[2]; // @[DCache.scala 1073:66:chipyard.TestHarness.RocketConfig.fir@215738.4]
  assign _T_1189 = |pstore1_mask[1]; // @[DCache.scala 1073:66:chipyard.TestHarness.RocketConfig.fir@215737.4]
  assign _T_1188 = |pstore1_mask[0]; // @[DCache.scala 1073:66:chipyard.TestHarness.RocketConfig.fir@215736.4]
  assign _T_1202 = {_T_1195,_T_1194,_T_1193,_T_1192,_T_1191,_T_1190,_T_1189,_T_1188}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@215750.4]
  assign _T_1217 = {_T_1202[7],_T_1202[6],_T_1202[5],_T_1202[4],_T_1202[3],_T_1202[2],_T_1202[1],_T_1202[0]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@215765.4]
  assign _T_340 = s1_req_size >= 2'h1; // @[AMOALU.scala 17:57:chipyard.TestHarness.RocketConfig.fir@214552.4]
  assign _T_342 = s1_req_addr[0] | _T_340; // @[AMOALU.scala 17:46:chipyard.TestHarness.RocketConfig.fir@214554.4]
  assign _T_344 = s1_req_addr[0] ? 1'h0 : 1'h1; // @[AMOALU.scala 18:22:chipyard.TestHarness.RocketConfig.fir@214556.4]
  assign _T_345 = {_T_342,_T_344}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@214557.4]
  assign _T_347 = s1_req_addr[1] ? _T_345 : 2'h0; // @[AMOALU.scala 17:22:chipyard.TestHarness.RocketConfig.fir@214559.4]
  assign _T_348 = s1_req_size >= 2'h2; // @[AMOALU.scala 17:57:chipyard.TestHarness.RocketConfig.fir@214560.4]
  assign _T_349 = _T_348 ? 2'h3 : 2'h0; // @[AMOALU.scala 17:51:chipyard.TestHarness.RocketConfig.fir@214561.4]
  assign _T_350 = _T_347 | _T_349; // @[AMOALU.scala 17:46:chipyard.TestHarness.RocketConfig.fir@214562.4]
  assign _T_352 = s1_req_addr[1] ? 2'h0 : _T_345; // @[AMOALU.scala 18:22:chipyard.TestHarness.RocketConfig.fir@214564.4]
  assign _T_353 = {_T_350,_T_352}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@214565.4]
  assign _T_355 = s1_req_addr[2] ? _T_353 : 4'h0; // @[AMOALU.scala 17:22:chipyard.TestHarness.RocketConfig.fir@214567.4]
  assign _T_356 = s1_req_size >= 2'h3; // @[AMOALU.scala 17:57:chipyard.TestHarness.RocketConfig.fir@214568.4]
  assign _T_357 = _T_356 ? 4'hf : 4'h0; // @[AMOALU.scala 17:51:chipyard.TestHarness.RocketConfig.fir@214569.4]
  assign _T_358 = _T_355 | _T_357; // @[AMOALU.scala 17:46:chipyard.TestHarness.RocketConfig.fir@214570.4]
  assign _T_360 = s1_req_addr[2] ? 4'h0 : _T_353; // @[AMOALU.scala 18:22:chipyard.TestHarness.RocketConfig.fir@214572.4]
  assign s1_mask_xwr = {_T_358,_T_360}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@214573.4]
  assign _T_1233 = |s1_mask_xwr[7]; // @[DCache.scala 1073:66:chipyard.TestHarness.RocketConfig.fir@215781.4]
  assign _T_1232 = |s1_mask_xwr[6]; // @[DCache.scala 1073:66:chipyard.TestHarness.RocketConfig.fir@215780.4]
  assign _T_1231 = |s1_mask_xwr[5]; // @[DCache.scala 1073:66:chipyard.TestHarness.RocketConfig.fir@215779.4]
  assign _T_1230 = |s1_mask_xwr[4]; // @[DCache.scala 1073:66:chipyard.TestHarness.RocketConfig.fir@215778.4]
  assign _T_1229 = |s1_mask_xwr[3]; // @[DCache.scala 1073:66:chipyard.TestHarness.RocketConfig.fir@215777.4]
  assign _T_1228 = |s1_mask_xwr[2]; // @[DCache.scala 1073:66:chipyard.TestHarness.RocketConfig.fir@215776.4]
  assign _T_1227 = |s1_mask_xwr[1]; // @[DCache.scala 1073:66:chipyard.TestHarness.RocketConfig.fir@215775.4]
  assign _T_1226 = |s1_mask_xwr[0]; // @[DCache.scala 1073:66:chipyard.TestHarness.RocketConfig.fir@215774.4]
  assign _T_1240 = {_T_1233,_T_1232,_T_1231,_T_1230,_T_1229,_T_1228,_T_1227,_T_1226}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@215788.4]
  assign _T_1255 = {_T_1240[7],_T_1240[6],_T_1240[5],_T_1240[4],_T_1240[3],_T_1240[2],_T_1240[1],_T_1240[0]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@215803.4]
  assign _T_1256 = _T_1217 & _T_1255; // @[DCache.scala 507:38:chipyard.TestHarness.RocketConfig.fir@215804.4]
  assign _T_1257 = |_T_1256; // @[DCache.scala 507:66:chipyard.TestHarness.RocketConfig.fir@215805.4]
  assign _T_1258 = pstore1_mask & s1_mask_xwr; // @[DCache.scala 507:77:chipyard.TestHarness.RocketConfig.fir@215806.4]
  assign _T_1259 = |_T_1258; // @[DCache.scala 507:92:chipyard.TestHarness.RocketConfig.fir@215807.4]
  assign _T_1260 = s1_write ? _T_1257 : _T_1259; // @[DCache.scala 507:8:chipyard.TestHarness.RocketConfig.fir@215808.4]
  assign _T_1261 = _T_1179 & _T_1260; // @[DCache.scala 506:68:chipyard.TestHarness.RocketConfig.fir@215809.4]
  assign _T_1262 = pstore1_valid_likely & _T_1261; // @[DCache.scala 509:27:chipyard.TestHarness.RocketConfig.fir@215810.4]
  assign _T_1265 = pstore2_addr[11:3] == s1_req_addr[11:3]; // @[DCache.scala 506:31:chipyard.TestHarness.RocketConfig.fir@215813.4]
  assign _T_1281 = |mask[7]; // @[DCache.scala 1073:66:chipyard.TestHarness.RocketConfig.fir@215829.4]
  assign _T_1280 = |mask[6]; // @[DCache.scala 1073:66:chipyard.TestHarness.RocketConfig.fir@215828.4]
  assign _T_1279 = |mask[5]; // @[DCache.scala 1073:66:chipyard.TestHarness.RocketConfig.fir@215827.4]
  assign _T_1278 = |mask[4]; // @[DCache.scala 1073:66:chipyard.TestHarness.RocketConfig.fir@215826.4]
  assign _T_1277 = |mask[3]; // @[DCache.scala 1073:66:chipyard.TestHarness.RocketConfig.fir@215825.4]
  assign _T_1276 = |mask[2]; // @[DCache.scala 1073:66:chipyard.TestHarness.RocketConfig.fir@215824.4]
  assign _T_1275 = |mask[1]; // @[DCache.scala 1073:66:chipyard.TestHarness.RocketConfig.fir@215823.4]
  assign _T_1274 = |mask[0]; // @[DCache.scala 1073:66:chipyard.TestHarness.RocketConfig.fir@215822.4]
  assign _T_1288 = {_T_1281,_T_1280,_T_1279,_T_1278,_T_1277,_T_1276,_T_1275,_T_1274}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@215836.4]
  assign _T_1303 = {_T_1288[7],_T_1288[6],_T_1288[5],_T_1288[4],_T_1288[3],_T_1288[2],_T_1288[1],_T_1288[0]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@215851.4]
  assign _T_1342 = _T_1303 & _T_1255; // @[DCache.scala 507:38:chipyard.TestHarness.RocketConfig.fir@215890.4]
  assign _T_1343 = |_T_1342; // @[DCache.scala 507:66:chipyard.TestHarness.RocketConfig.fir@215891.4]
  assign _T_1344 = mask & s1_mask_xwr; // @[DCache.scala 507:77:chipyard.TestHarness.RocketConfig.fir@215892.4]
  assign _T_1345 = |_T_1344; // @[DCache.scala 507:92:chipyard.TestHarness.RocketConfig.fir@215893.4]
  assign _T_1346 = s1_write ? _T_1343 : _T_1345; // @[DCache.scala 507:8:chipyard.TestHarness.RocketConfig.fir@215894.4]
  assign _T_1347 = _T_1265 & _T_1346; // @[DCache.scala 506:68:chipyard.TestHarness.RocketConfig.fir@215895.4]
  assign _T_1348 = pstore2_valid & _T_1347; // @[DCache.scala 510:21:chipyard.TestHarness.RocketConfig.fir@215896.4]
  assign s1_hazard = _T_1262 | _T_1348; // @[DCache.scala 509:69:chipyard.TestHarness.RocketConfig.fir@215897.4]
  assign s1_raw_hazard = s1_read & s1_hazard; // @[DCache.scala 511:31:chipyard.TestHarness.RocketConfig.fir@215898.4]
  assign _T_1349 = s1_valid & s1_raw_hazard; // @[DCache.scala 516:18:chipyard.TestHarness.RocketConfig.fir@215900.4]
  assign _T_378 = {io_cpu_s2_xcpt_ma_ld,io_cpu_s2_xcpt_ma_st,io_cpu_s2_xcpt_pf_ld,io_cpu_s2_xcpt_pf_st,io_cpu_s2_xcpt_ae_ld,io_cpu_s2_xcpt_ae_st}; // @[DCache.scala 284:54:chipyard.TestHarness.RocketConfig.fir@214598.4]
  assign _T_379 = |_T_378; // @[DCache.scala 284:61:chipyard.TestHarness.RocketConfig.fir@214599.4]
  assign _T_380 = ~_T_379; // @[DCache.scala 284:38:chipyard.TestHarness.RocketConfig.fir@214600.4]
  assign s2_valid_no_xcpt = s2_valid & _T_380; // @[DCache.scala 284:35:chipyard.TestHarness.RocketConfig.fir@214601.4]
  assign s2_valid_masked = s2_valid_no_xcpt & _T_384; // @[DCache.scala 287:42:chipyard.TestHarness.RocketConfig.fir@214610.4]
  assign _T_644 = ~s2_meta_error; // @[DCache.scala 347:74:chipyard.TestHarness.RocketConfig.fir@215003.4]
  assign _T_645 = s2_valid_masked & _T_644; // @[DCache.scala 347:71:chipyard.TestHarness.RocketConfig.fir@215004.4]
  assign _T_540 = s2_req_cmd == 5'h3; // @[Consts.scala 84:54:chipyard.TestHarness.RocketConfig.fir@214890.4]
  assign _T_541 = s2_write | _T_540; // @[Consts.scala 84:47:chipyard.TestHarness.RocketConfig.fir@214891.4]
  assign _T_542 = s2_req_cmd == 5'h6; // @[Consts.scala 84:71:chipyard.TestHarness.RocketConfig.fir@214892.4]
  assign _T_543 = _T_541 | _T_542; // @[Consts.scala 84:64:chipyard.TestHarness.RocketConfig.fir@214893.4]
  assign _T_545 = {s2_write,_T_543,s2_hit_state_state}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@214895.4]
  assign _T_603 = 4'h3 == _T_545; // @[Misc.scala 48:20:chipyard.TestHarness.RocketConfig.fir@214953.4]
  assign _T_600 = 4'h2 == _T_545; // @[Misc.scala 48:20:chipyard.TestHarness.RocketConfig.fir@214950.4]
  assign _T_597 = 4'h1 == _T_545; // @[Misc.scala 48:20:chipyard.TestHarness.RocketConfig.fir@214947.4]
  assign _T_594 = 4'h7 == _T_545; // @[Misc.scala 48:20:chipyard.TestHarness.RocketConfig.fir@214944.4]
  assign _T_591 = 4'h6 == _T_545; // @[Misc.scala 48:20:chipyard.TestHarness.RocketConfig.fir@214941.4]
  assign _T_588 = 4'hf == _T_545; // @[Misc.scala 48:20:chipyard.TestHarness.RocketConfig.fir@214938.4]
  assign _T_585 = 4'he == _T_545; // @[Misc.scala 48:20:chipyard.TestHarness.RocketConfig.fir@214935.4]
  assign _T_582 = 4'h0 == _T_545; // @[Misc.scala 48:20:chipyard.TestHarness.RocketConfig.fir@214932.4]
  assign _T_579 = 4'h5 == _T_545; // @[Misc.scala 48:20:chipyard.TestHarness.RocketConfig.fir@214929.4]
  assign _T_576 = 4'h4 == _T_545; // @[Misc.scala 48:20:chipyard.TestHarness.RocketConfig.fir@214926.4]
  assign _T_573 = 4'hd == _T_545; // @[Misc.scala 48:20:chipyard.TestHarness.RocketConfig.fir@214923.4]
  assign _T_570 = 4'hc == _T_545; // @[Misc.scala 48:20:chipyard.TestHarness.RocketConfig.fir@214920.4]
  assign _T_589 = _T_588 | _T_585; // @[Misc.scala 34:9:chipyard.TestHarness.RocketConfig.fir@214939.4]
  assign _T_592 = _T_591 | _T_589; // @[Misc.scala 34:9:chipyard.TestHarness.RocketConfig.fir@214942.4]
  assign _T_595 = _T_594 | _T_592; // @[Misc.scala 34:9:chipyard.TestHarness.RocketConfig.fir@214945.4]
  assign _T_598 = _T_597 | _T_595; // @[Misc.scala 34:9:chipyard.TestHarness.RocketConfig.fir@214948.4]
  assign _T_601 = _T_600 | _T_598; // @[Misc.scala 34:9:chipyard.TestHarness.RocketConfig.fir@214951.4]
  assign s2_hit = _T_603 | _T_601; // @[Misc.scala 34:9:chipyard.TestHarness.RocketConfig.fir@214954.4]
  assign s2_valid_hit_maybe_flush_pre_data_ecc_and_waw = _T_645 & s2_hit; // @[DCache.scala 347:89:chipyard.TestHarness.RocketConfig.fir@215005.4]
  assign _T_397 = s2_req_cmd == 5'h0; // @[Consts.scala 82:31:chipyard.TestHarness.RocketConfig.fir@214640.4]
  assign _T_399 = _T_397 | _T_542; // @[Consts.scala 82:41:chipyard.TestHarness.RocketConfig.fir@214642.4]
  assign _T_401 = _T_399 | _T_422; // @[Consts.scala 82:58:chipyard.TestHarness.RocketConfig.fir@214644.4]
  assign s2_read = _T_401 | _T_440; // @[Consts.scala 82:75:chipyard.TestHarness.RocketConfig.fir@214662.4]
  assign s2_readwrite = s2_read | s2_write; // @[DCache.scala 304:30:chipyard.TestHarness.RocketConfig.fir@214686.4]
  assign s2_valid_hit_pre_data_ecc_and_waw = s2_valid_hit_maybe_flush_pre_data_ecc_and_waw & s2_readwrite; // @[DCache.scala 368:89:chipyard.TestHarness.RocketConfig.fir@215006.4]
  assign _T_572 = _T_570 ? 2'h1 : 2'h0; // @[Misc.scala 34:36:chipyard.TestHarness.RocketConfig.fir@214922.4]
  assign _T_575 = _T_573 ? 2'h2 : _T_572; // @[Misc.scala 34:36:chipyard.TestHarness.RocketConfig.fir@214925.4]
  assign _T_578 = _T_576 ? 2'h1 : _T_575; // @[Misc.scala 34:36:chipyard.TestHarness.RocketConfig.fir@214928.4]
  assign _T_581 = _T_579 ? 2'h2 : _T_578; // @[Misc.scala 34:36:chipyard.TestHarness.RocketConfig.fir@214931.4]
  assign _T_584 = _T_582 ? 2'h0 : _T_581; // @[Misc.scala 34:36:chipyard.TestHarness.RocketConfig.fir@214934.4]
  assign _T_587 = _T_585 ? 2'h3 : _T_584; // @[Misc.scala 34:36:chipyard.TestHarness.RocketConfig.fir@214937.4]
  assign _T_590 = _T_588 ? 2'h3 : _T_587; // @[Misc.scala 34:36:chipyard.TestHarness.RocketConfig.fir@214940.4]
  assign _T_593 = _T_591 ? 2'h2 : _T_590; // @[Misc.scala 34:36:chipyard.TestHarness.RocketConfig.fir@214943.4]
  assign _T_596 = _T_594 ? 2'h3 : _T_593; // @[Misc.scala 34:36:chipyard.TestHarness.RocketConfig.fir@214946.4]
  assign _T_599 = _T_597 ? 2'h1 : _T_596; // @[Misc.scala 34:36:chipyard.TestHarness.RocketConfig.fir@214949.4]
  assign _T_602 = _T_600 ? 2'h2 : _T_599; // @[Misc.scala 34:36:chipyard.TestHarness.RocketConfig.fir@214952.4]
  assign s2_grow_param = _T_603 ? 2'h3 : _T_602; // @[Misc.scala 34:36:chipyard.TestHarness.RocketConfig.fir@214955.4]
  assign _T_805 = s2_hit_state_state == s2_grow_param; // @[Metadata.scala 46:46:chipyard.TestHarness.RocketConfig.fir@215199.4]
  assign s2_update_meta = ~_T_805; // @[Metadata.scala 47:40:chipyard.TestHarness.RocketConfig.fir@215200.4]
  assign _T_824 = s2_valid_hit_pre_data_ecc_and_waw & s2_update_meta; // @[DCache.scala 395:62:chipyard.TestHarness.RocketConfig.fir@215222.4]
  assign _T_825 = io_cpu_s2_nack | _T_824; // @[DCache.scala 395:24:chipyard.TestHarness.RocketConfig.fir@215223.4]
  assign s1_readwrite = s1_read | s1_write; // @[DCache.scala 185:30:chipyard.TestHarness.RocketConfig.fir@214130.4]
  assign _T_74 = s1_req_cmd == 5'h5; // @[DCache.scala 187:34:chipyard.TestHarness.RocketConfig.fir@214132.4]
  assign s1_flush_line = _T_74 & s1_req_size[0]; // @[DCache.scala 187:50:chipyard.TestHarness.RocketConfig.fir@214134.4]
  assign _T_227 = s1_readwrite | s1_flush_line; // @[DCache.scala 229:38:chipyard.TestHarness.RocketConfig.fir@214337.4]
  assign _T_228 = s1_req_cmd == 5'h17; // @[DCache.scala 229:69:chipyard.TestHarness.RocketConfig.fir@214338.4]
  assign s1_cmd_uses_tlb = _T_227 | _T_228; // @[DCache.scala 229:55:chipyard.TestHarness.RocketConfig.fir@214339.4]
  assign _T_242 = s1_valid & s1_cmd_uses_tlb; // @[DCache.scala 235:39:chipyard.TestHarness.RocketConfig.fir@214360.4]
  assign _T_243 = _T_242 & tlb_io_resp_miss; // @[DCache.scala 235:58:chipyard.TestHarness.RocketConfig.fir@214361.4]
  assign _GEN_118 = _T_825 | _T_243; // @[DCache.scala 395:82:chipyard.TestHarness.RocketConfig.fir@215224.4]
  assign _GEN_142 = _T_1349 | _GEN_118; // @[DCache.scala 516:36:chipyard.TestHarness.RocketConfig.fir@215901.4]
  assign _GEN_282 = probeNack | _GEN_142; // @[DCache.scala 757:24:chipyard.TestHarness.RocketConfig.fir@217831.6]
  assign s1_nack = s2_probe ? _GEN_282 : _GEN_142; // @[DCache.scala 742:21:chipyard.TestHarness.RocketConfig.fir@217805.4]
  assign _T_20 = ~s1_nack; // @[DCache.scala 164:41:chipyard.TestHarness.RocketConfig.fir@214031.4]
  assign s1_valid_not_nacked = s1_valid & _T_20; // @[DCache.scala 164:38:chipyard.TestHarness.RocketConfig.fir@214032.4]
  assign _T_22 = ~metaArb_io_out_bits_write; // @[DCache.scala 167:43:chipyard.TestHarness.RocketConfig.fir@214038.4]
  assign s0_clk_en = metaArb_io_out_valid & _T_22; // @[DCache.scala 167:40:chipyard.TestHarness.RocketConfig.fir@214039.4]
  assign s0_req_addr = {metaArb_io_out_bits_addr[39:6],io_cpu_req_bits_addr[5:0]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@214045.4]
  assign _T_26 = ~metaArb_io_in_7_ready; // @[DCache.scala 171:9:chipyard.TestHarness.RocketConfig.fir@214047.4]
  assign s0_req_phys = _T_26 | io_cpu_req_bits_phys; // @[DCache.scala 171:34:chipyard.TestHarness.RocketConfig.fir@214048.4]
  assign s1_sfence = s1_req_cmd == 5'h14; // @[DCache.scala 186:30:chipyard.TestHarness.RocketConfig.fir@214131.4]
  assign inWriteback = _T_2943 | _T_2942; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@214149.4]
  assign _T_78 = release_state == 3'h0; // @[DCache.scala 203:38:chipyard.TestHarness.RocketConfig.fir@214152.4]
  assign _T_79 = ~cached_grant_wait; // @[DCache.scala 203:54:chipyard.TestHarness.RocketConfig.fir@214153.4]
  assign _T_80 = _T_78 & _T_79; // @[DCache.scala 203:51:chipyard.TestHarness.RocketConfig.fir@214154.4]
  assign _T_82 = _T_80 & _T_20; // @[DCache.scala 203:73:chipyard.TestHarness.RocketConfig.fir@214156.4]
  assign _T_84 = io_cpu_req_bits_cmd == 5'h0; // @[Consts.scala 82:31:chipyard.TestHarness.RocketConfig.fir@214166.4]
  assign _T_85 = io_cpu_req_bits_cmd == 5'h6; // @[Consts.scala 82:48:chipyard.TestHarness.RocketConfig.fir@214167.4]
  assign _T_86 = _T_84 | _T_85; // @[Consts.scala 82:41:chipyard.TestHarness.RocketConfig.fir@214168.4]
  assign _T_87 = io_cpu_req_bits_cmd == 5'h7; // @[Consts.scala 82:65:chipyard.TestHarness.RocketConfig.fir@214169.4]
  assign _T_88 = _T_86 | _T_87; // @[Consts.scala 82:58:chipyard.TestHarness.RocketConfig.fir@214170.4]
  assign _T_89 = io_cpu_req_bits_cmd == 5'h4; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@214171.4]
  assign _T_90 = io_cpu_req_bits_cmd == 5'h9; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@214172.4]
  assign _T_91 = io_cpu_req_bits_cmd == 5'ha; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@214173.4]
  assign _T_92 = io_cpu_req_bits_cmd == 5'hb; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@214174.4]
  assign _T_93 = _T_89 | _T_90; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@214175.4]
  assign _T_94 = _T_93 | _T_91; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@214176.4]
  assign _T_95 = _T_94 | _T_92; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@214177.4]
  assign _T_96 = io_cpu_req_bits_cmd == 5'h8; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@214178.4]
  assign _T_97 = io_cpu_req_bits_cmd == 5'hc; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@214179.4]
  assign _T_98 = io_cpu_req_bits_cmd == 5'hd; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@214180.4]
  assign _T_99 = io_cpu_req_bits_cmd == 5'he; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@214181.4]
  assign _T_100 = io_cpu_req_bits_cmd == 5'hf; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@214182.4]
  assign _T_101 = _T_96 | _T_97; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@214183.4]
  assign _T_102 = _T_101 | _T_98; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@214184.4]
  assign _T_103 = _T_102 | _T_99; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@214185.4]
  assign _T_104 = _T_103 | _T_100; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@214186.4]
  assign _T_105 = _T_95 | _T_104; // @[Consts.scala 80:44:chipyard.TestHarness.RocketConfig.fir@214187.4]
  assign s0_read = _T_88 | _T_105; // @[Consts.scala 82:75:chipyard.TestHarness.RocketConfig.fir@214188.4]
  assign _T_106 = io_cpu_req_bits_cmd == 5'h1; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@214189.4]
  assign _T_107 = io_cpu_req_bits_cmd == 5'h3; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@214190.4]
  assign _T_108 = _T_106 | _T_107; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@214191.4]
  assign res = ~_T_108; // @[DCache.scala 1077:15:chipyard.TestHarness.RocketConfig.fir@214192.4]
  assign _T_135 = io_cpu_req_bits_cmd == 5'h11; // @[Consts.scala 83:49:chipyard.TestHarness.RocketConfig.fir@214219.4]
  assign _T_136 = _T_106 | _T_135; // @[Consts.scala 83:42:chipyard.TestHarness.RocketConfig.fir@214220.4]
  assign _T_138 = _T_136 | _T_87; // @[Consts.scala 83:59:chipyard.TestHarness.RocketConfig.fir@214222.4]
  assign _T_156 = _T_138 | _T_105; // @[Consts.scala 83:76:chipyard.TestHarness.RocketConfig.fir@214240.4]
  assign _T_160 = _T_156 & _T_135; // @[DCache.scala 1083:23:chipyard.TestHarness.RocketConfig.fir@214244.4]
  assign _T_161 = s0_read | _T_160; // @[DCache.scala 1082:21:chipyard.TestHarness.RocketConfig.fir@214245.4]
  assign _T_162 = ~_T_161; // @[DCache.scala 1078:12:chipyard.TestHarness.RocketConfig.fir@214246.4]
  assign _T_163 = _T_162 | res; // @[DCache.scala 1078:28:chipyard.TestHarness.RocketConfig.fir@214247.4]
  assign _T_165 = _T_163 | reset; // @[DCache.scala 1078:11:chipyard.TestHarness.RocketConfig.fir@214249.4]
  assign _T_166 = ~_T_165; // @[DCache.scala 1078:11:chipyard.TestHarness.RocketConfig.fir@214250.4]
  assign _T_167 = io_cpu_req_valid & res; // @[DCache.scala 212:46:chipyard.TestHarness.RocketConfig.fir@214255.4]
  assign _T_170 = ~dataArb_io_in_3_ready; // @[DCache.scala 218:9:chipyard.TestHarness.RocketConfig.fir@214264.4]
  assign _T_171 = _T_170 & s0_read; // @[DCache.scala 218:33:chipyard.TestHarness.RocketConfig.fir@214265.4]
  assign _GEN_28 = _T_171 ? 1'h0 : _T_82; // @[DCache.scala 218:45:chipyard.TestHarness.RocketConfig.fir@214266.4]
  assign _T_223 = io_cpu_req_valid & _T_161; // @[DCache.scala 219:75:chipyard.TestHarness.RocketConfig.fir@214320.4]
  assign _T_224 = dataArb_io_in_3_ready & _T_223; // @[DCache.scala 219:54:chipyard.TestHarness.RocketConfig.fir@214321.4]
  assign _GEN_30 = _T_26 ? 1'h0 : _GEN_28; // @[DCache.scala 226:34:chipyard.TestHarness.RocketConfig.fir@214334.4]
  assign _T_235 = ~tlb_io_req_ready; // @[DCache.scala 234:9:chipyard.TestHarness.RocketConfig.fir@214350.4]
  assign _T_236 = ~tlb_io_ptw_resp_valid; // @[DCache.scala 234:30:chipyard.TestHarness.RocketConfig.fir@214351.4]
  assign _T_237 = _T_235 & _T_236; // @[DCache.scala 234:27:chipyard.TestHarness.RocketConfig.fir@214352.4]
  assign _T_238 = ~io_cpu_req_bits_phys; // @[DCache.scala 234:56:chipyard.TestHarness.RocketConfig.fir@214353.4]
  assign _T_239 = _T_237 & _T_238; // @[DCache.scala 234:53:chipyard.TestHarness.RocketConfig.fir@214354.4]
  assign _GEN_31 = _T_239 ? 1'h0 : _GEN_30; // @[DCache.scala 234:79:chipyard.TestHarness.RocketConfig.fir@214355.4]
  assign s1_paddr = {tlb_io_resp_paddr[31:12],s1_req_addr[11:0]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@214390.4]
  assign s1_victim_way = _T_15[1:0]; // @[package.scala 120:13:chipyard.TestHarness.RocketConfig.fir@214391.4]
  assign _T_258 = metaArb_io_out_valid & metaArb_io_out_bits_write; // @[DCache.scala 262:27:chipyard.TestHarness.RocketConfig.fir@214395.4]
  assign _GEN_42 = metaArb_io_out_bits_idx; // @[DCache.scala 262:50:chipyard.TestHarness.RocketConfig.fir@214396.4]
  assign _T_266 = tag_array_RW0_rdata_0; // @[:chipyard.TestHarness.RocketConfig.fir@214434.4 :chipyard.TestHarness.RocketConfig.fir@214436.4]
  assign s1_meta_uncorrected_0_tag = _T_266[19:0]; // @[DCache.scala 267:80:chipyard.TestHarness.RocketConfig.fir@214437.4]
  assign s1_meta_uncorrected_0_coh_state = _T_266[21:20]; // @[DCache.scala 267:80:chipyard.TestHarness.RocketConfig.fir@214439.4]
  assign _T_269 = tag_array_RW0_rdata_1; // @[:chipyard.TestHarness.RocketConfig.fir@214443.4 :chipyard.TestHarness.RocketConfig.fir@214445.4]
  assign s1_meta_uncorrected_1_tag = _T_269[19:0]; // @[DCache.scala 267:80:chipyard.TestHarness.RocketConfig.fir@214446.4]
  assign s1_meta_uncorrected_1_coh_state = _T_269[21:20]; // @[DCache.scala 267:80:chipyard.TestHarness.RocketConfig.fir@214448.4]
  assign _T_272 = tag_array_RW0_rdata_2; // @[:chipyard.TestHarness.RocketConfig.fir@214452.4 :chipyard.TestHarness.RocketConfig.fir@214454.4]
  assign s1_meta_uncorrected_2_tag = _T_272[19:0]; // @[DCache.scala 267:80:chipyard.TestHarness.RocketConfig.fir@214455.4]
  assign s1_meta_uncorrected_2_coh_state = _T_272[21:20]; // @[DCache.scala 267:80:chipyard.TestHarness.RocketConfig.fir@214457.4]
  assign _T_275 = tag_array_RW0_rdata_3; // @[:chipyard.TestHarness.RocketConfig.fir@214461.4 :chipyard.TestHarness.RocketConfig.fir@214463.4]
  assign s1_meta_uncorrected_3_tag = _T_275[19:0]; // @[DCache.scala 267:80:chipyard.TestHarness.RocketConfig.fir@214464.4]
  assign s1_meta_uncorrected_3_coh_state = _T_275[21:20]; // @[DCache.scala 267:80:chipyard.TestHarness.RocketConfig.fir@214466.4]
  assign s1_tag = s1_paddr[31:12]; // @[DCache.scala 268:29:chipyard.TestHarness.RocketConfig.fir@214468.4]
  assign _T_278 = s1_meta_uncorrected_0_coh_state > 2'h0; // @[Metadata.scala 50:45:chipyard.TestHarness.RocketConfig.fir@214469.4]
  assign _T_279 = s1_meta_uncorrected_0_tag == s1_tag; // @[DCache.scala 269:83:chipyard.TestHarness.RocketConfig.fir@214470.4]
  assign _T_280 = _T_278 & _T_279; // @[DCache.scala 269:74:chipyard.TestHarness.RocketConfig.fir@214471.4]
  assign _T_281 = s1_meta_uncorrected_1_coh_state > 2'h0; // @[Metadata.scala 50:45:chipyard.TestHarness.RocketConfig.fir@214472.4]
  assign _T_282 = s1_meta_uncorrected_1_tag == s1_tag; // @[DCache.scala 269:83:chipyard.TestHarness.RocketConfig.fir@214473.4]
  assign _T_283 = _T_281 & _T_282; // @[DCache.scala 269:74:chipyard.TestHarness.RocketConfig.fir@214474.4]
  assign _T_284 = s1_meta_uncorrected_2_coh_state > 2'h0; // @[Metadata.scala 50:45:chipyard.TestHarness.RocketConfig.fir@214475.4]
  assign _T_285 = s1_meta_uncorrected_2_tag == s1_tag; // @[DCache.scala 269:83:chipyard.TestHarness.RocketConfig.fir@214476.4]
  assign _T_286 = _T_284 & _T_285; // @[DCache.scala 269:74:chipyard.TestHarness.RocketConfig.fir@214477.4]
  assign _T_287 = s1_meta_uncorrected_3_coh_state > 2'h0; // @[Metadata.scala 50:45:chipyard.TestHarness.RocketConfig.fir@214478.4]
  assign _T_288 = s1_meta_uncorrected_3_tag == s1_tag; // @[DCache.scala 269:83:chipyard.TestHarness.RocketConfig.fir@214479.4]
  assign _T_289 = _T_287 & _T_288; // @[DCache.scala 269:74:chipyard.TestHarness.RocketConfig.fir@214480.4]
  assign s1_meta_hit_way = {_T_289,_T_286,_T_283,_T_280}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@214483.4]
  assign _T_294 = ~s1_flush_valid; // @[DCache.scala 271:62:chipyard.TestHarness.RocketConfig.fir@214488.4]
  assign _T_295 = _T_279 & _T_294; // @[DCache.scala 271:59:chipyard.TestHarness.RocketConfig.fir@214489.4]
  assign _T_296 = _T_295 ? s1_meta_uncorrected_0_coh_state : 2'h0; // @[DCache.scala 271:41:chipyard.TestHarness.RocketConfig.fir@214490.4]
  assign _T_299 = _T_282 & _T_294; // @[DCache.scala 271:59:chipyard.TestHarness.RocketConfig.fir@214493.4]
  assign _T_300 = _T_299 ? s1_meta_uncorrected_1_coh_state : 2'h0; // @[DCache.scala 271:41:chipyard.TestHarness.RocketConfig.fir@214494.4]
  assign _T_303 = _T_285 & _T_294; // @[DCache.scala 271:59:chipyard.TestHarness.RocketConfig.fir@214497.4]
  assign _T_304 = _T_303 ? s1_meta_uncorrected_2_coh_state : 2'h0; // @[DCache.scala 271:41:chipyard.TestHarness.RocketConfig.fir@214498.4]
  assign _T_307 = _T_288 & _T_294; // @[DCache.scala 271:59:chipyard.TestHarness.RocketConfig.fir@214501.4]
  assign _T_308 = _T_307 ? s1_meta_uncorrected_3_coh_state : 2'h0; // @[DCache.scala 271:41:chipyard.TestHarness.RocketConfig.fir@214502.4]
  assign _T_309 = _T_296 | _T_300; // @[DCache.scala 272:19:chipyard.TestHarness.RocketConfig.fir@214503.4]
  assign _T_310 = _T_309 | _T_304; // @[DCache.scala 272:19:chipyard.TestHarness.RocketConfig.fir@214504.4]
  assign s1_meta_hit_state_state = _T_310 | _T_308; // @[DCache.scala 272:19:chipyard.TestHarness.RocketConfig.fir@214505.4]
  assign _T_316 = s1_victim_way == 2'h1; // @[package.scala 32:86:chipyard.TestHarness.RocketConfig.fir@214515.4]
  assign _T_318 = s1_victim_way == 2'h2; // @[package.scala 32:86:chipyard.TestHarness.RocketConfig.fir@214517.4]
  assign _T_320 = s1_victim_way == 2'h3; // @[package.scala 32:86:chipyard.TestHarness.RocketConfig.fir@214519.4]
  assign s2_hit_valid = s2_hit_state_state > 2'h0; // @[Metadata.scala 50:45:chipyard.TestHarness.RocketConfig.fir@214843.4]
  assign _T_674 = 4'h1 << _T_673; // @[OneHot.scala 58:35:chipyard.TestHarness.RocketConfig.fir@215049.4]
  assign s2_victim_way = s2_hit_valid ? s2_hit_way : _T_674; // @[DCache.scala 381:26:chipyard.TestHarness.RocketConfig.fir@215050.4]
  assign releaseWay = _T_2945 ? s2_victim_way : s2_probe_way; // @[DCache.scala 781:81:chipyard.TestHarness.RocketConfig.fir@217873.4]
  assign _T_321 = inWriteback ? releaseWay : s1_meta_hit_way; // @[DCache.scala 275:61:chipyard.TestHarness.RocketConfig.fir@214521.4]
  assign _T_332 = {auto_out_d_bits_data[31:24],auto_out_d_bits_data[23:16],auto_out_d_bits_data[15:8],auto_out_d_bits_data[7:0]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@214535.4]
  assign _T_335 = {auto_out_d_bits_data[63:56],auto_out_d_bits_data[55:48],auto_out_d_bits_data[47:40],auto_out_d_bits_data[39:32]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@214538.4]
  assign _T_336 = {auto_out_d_bits_data[63:56],auto_out_d_bits_data[55:48],auto_out_d_bits_data[47:40],auto_out_d_bits_data[39:32],auto_out_d_bits_data[31:24],auto_out_d_bits_data[23:16],auto_out_d_bits_data[15:8],auto_out_d_bits_data[7:0]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@214539.4]
  assign _T_363 = s1_valid_masked & _T_53; // @[DCache.scala 281:28:chipyard.TestHarness.RocketConfig.fir@214577.4]
  assign _T_364 = ~_T_363; // @[DCache.scala 281:10:chipyard.TestHarness.RocketConfig.fir@214578.4]
  assign _T_365 = ~io_cpu_s1_data_mask; // @[DCache.scala 281:71:chipyard.TestHarness.RocketConfig.fir@214579.4]
  assign _T_366 = s1_mask_xwr | _T_365; // @[DCache.scala 281:69:chipyard.TestHarness.RocketConfig.fir@214580.4]
  assign _T_367 = &_T_366; // @[DCache.scala 281:93:chipyard.TestHarness.RocketConfig.fir@214581.4]
  assign _T_368 = _T_364 | _T_367; // @[DCache.scala 281:53:chipyard.TestHarness.RocketConfig.fir@214582.4]
  assign _T_370 = _T_368 | reset; // @[DCache.scala 281:9:chipyard.TestHarness.RocketConfig.fir@214584.4]
  assign _T_371 = ~_T_370; // @[DCache.scala 281:9:chipyard.TestHarness.RocketConfig.fir@214585.4]
  assign _T_372 = ~s1_sfence; // @[DCache.scala 283:46:chipyard.TestHarness.RocketConfig.fir@214590.4]
  assign _T_373 = s1_valid_masked & _T_372; // @[DCache.scala 283:43:chipyard.TestHarness.RocketConfig.fir@214591.4]
  assign _T_386 = s2_req_cmd == 5'h5; // @[DCache.scala 290:37:chipyard.TestHarness.RocketConfig.fir@214614.4]
  assign s2_cmd_flush_line = _T_386 & s2_req_size[0]; // @[DCache.scala 291:54:chipyard.TestHarness.RocketConfig.fir@214620.4]
  assign _T_391 = s1_valid_not_nacked | s1_flush_valid; // @[DCache.scala 295:29:chipyard.TestHarness.RocketConfig.fir@214624.4]
  assign _T_392_cacheable = tlb_io_resp_cacheable; // @[DCache.scala 299:18:chipyard.TestHarness.RocketConfig.fir@214629.6]
  assign s2_vaddr = {_T_394[39:12],s2_req_addr[11:0]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@214639.4]
  assign s1_meta_clk_en = _T_391 | s1_probe; // @[DCache.scala 307:62:chipyard.TestHarness.RocketConfig.fir@214690.4]
  assign s2_meta_corrected_3_tag = _T_466[19:0]; // @[DCache.scala 311:99:chipyard.TestHarness.RocketConfig.fir@214778.4]
  assign s2_meta_corrected_3_coh_state = _T_466[21:20]; // @[DCache.scala 311:99:chipyard.TestHarness.RocketConfig.fir@214780.4]
  assign s2_flush_valid = s2_flush_valid_pre_tag_ecc & _T_644; // @[DCache.scala 313:51:chipyard.TestHarness.RocketConfig.fir@214785.4]
  assign _T_472 = s1_valid | inWriteback; // @[DCache.scala 316:23:chipyard.TestHarness.RocketConfig.fir@214786.4]
  assign en = _T_472 | io_cpu_replay_next; // @[DCache.scala 316:38:chipyard.TestHarness.RocketConfig.fir@214787.4]
  assign _T_473 = ~s1_did_read; // @[DCache.scala 317:64:chipyard.TestHarness.RocketConfig.fir@214788.4]
  assign _T_474 = _T_473 ? 1'h0 : 1'h1; // @[DCache.scala 317:63:chipyard.TestHarness.RocketConfig.fir@214789.4]
  assign word_en = inWriteback | _T_474; // @[DCache.scala 317:22:chipyard.TestHarness.RocketConfig.fir@214790.4]
  assign s1_all_data_ways_0 = data_io_resp_0; // @[DCache.scala 277:29:chipyard.TestHarness.RocketConfig.fir@214542.4 DCache.scala 277:29:chipyard.TestHarness.RocketConfig.fir@214544.4]
  assign s1_all_data_ways_1 = data_io_resp_1; // @[DCache.scala 277:29:chipyard.TestHarness.RocketConfig.fir@214542.4 DCache.scala 277:29:chipyard.TestHarness.RocketConfig.fir@214545.4]
  assign s1_all_data_ways_2 = data_io_resp_2; // @[DCache.scala 277:29:chipyard.TestHarness.RocketConfig.fir@214542.4 DCache.scala 277:29:chipyard.TestHarness.RocketConfig.fir@214546.4]
  assign s1_all_data_ways_3 = data_io_resp_3; // @[DCache.scala 277:29:chipyard.TestHarness.RocketConfig.fir@214542.4 DCache.scala 277:29:chipyard.TestHarness.RocketConfig.fir@214547.4]
  assign _T_475 = ~io_cpu_replay_next; // @[DCache.scala 327:28:chipyard.TestHarness.RocketConfig.fir@214796.4]
  assign s1_word_en = _T_475 ? word_en : 1'h1; // @[DCache.scala 327:27:chipyard.TestHarness.RocketConfig.fir@214797.4]
  assign grantIsUncachedData = auto_out_d_bits_opcode == 3'h1; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@217418.4]
  assign _T_2866 = blockUncachedGrant | s1_valid; // @[DCache.scala 693:54:chipyard.TestHarness.RocketConfig.fir@217659.4]
  assign _T_2867 = grantIsUncachedData & _T_2866; // @[DCache.scala 693:31:chipyard.TestHarness.RocketConfig.fir@217660.4]
  assign grantIsRefill = auto_out_d_bits_opcode == 3'h5; // @[DCache.scala 607:29:chipyard.TestHarness.RocketConfig.fir@217444.4]
  assign _T_2780 = ~dataArb_io_in_1_ready; // @[DCache.scala 663:26:chipyard.TestHarness.RocketConfig.fir@217550.4]
  assign _T_2781 = grantIsRefill & _T_2780; // @[DCache.scala 663:23:chipyard.TestHarness.RocketConfig.fir@217551.4]
  assign _T_2734 = auto_out_d_bits_opcode == 3'h4; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@217440.4]
  assign grantIsCached = _T_2734 | grantIsRefill; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@217442.4]
  assign d_first = _T_2702 == 9'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@217401.4]
  assign _T_2742 = ~d_first; // @[DCache.scala 612:41:chipyard.TestHarness.RocketConfig.fir@217457.4]
  assign _T_2743 = _T_2742 | auto_out_e_ready; // @[DCache.scala 612:50:chipyard.TestHarness.RocketConfig.fir@217458.4]
  assign canAcceptCachedGrant = ~_T_2945; // @[DCache.scala 611:30:chipyard.TestHarness.RocketConfig.fir@217456.4]
  assign _T_2744 = _T_2743 & canAcceptCachedGrant; // @[DCache.scala 612:69:chipyard.TestHarness.RocketConfig.fir@217459.4]
  assign _T_2745 = grantIsCached ? _T_2744 : 1'h1; // @[DCache.scala 612:24:chipyard.TestHarness.RocketConfig.fir@217460.4]
  assign _GEN_232 = _T_2781 ? 1'h0 : _T_2745; // @[DCache.scala 663:51:chipyard.TestHarness.RocketConfig.fir@217552.4]
  assign tl_out__d_ready = _T_2867 ? 1'h0 : _GEN_232; // @[DCache.scala 693:68:chipyard.TestHarness.RocketConfig.fir@217661.4]
  assign _T_2750 = tl_out__d_ready & auto_out_d_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@217468.4]
  assign _T_2711 = auto_out_d_bits_opcode == 3'h0; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@217414.4]
  assign _T_2713 = grantIsUncachedData | _T_2711; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@217416.4]
  assign _T_2712 = auto_out_d_bits_opcode == 3'h2; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@217415.4]
  assign grantIsUncached = _T_2713 | _T_2712; // @[package.scala 64:59:chipyard.TestHarness.RocketConfig.fir@217417.4]
  assign _GEN_188 = grantIsUncachedData ? 5'h10 : {{1'd0}, _T_321}; // @[DCache.scala 632:34:chipyard.TestHarness.RocketConfig.fir@217500.10]
  assign _GEN_197 = grantIsUncached ? _GEN_188 : {{1'd0}, _T_321}; // @[DCache.scala 625:35:chipyard.TestHarness.RocketConfig.fir@217487.8]
  assign _GEN_210 = grantIsCached ? {{1'd0}, _T_321} : _GEN_197; // @[DCache.scala 616:26:chipyard.TestHarness.RocketConfig.fir@217470.6]
  assign s1_data_way = _T_2750 ? _GEN_210 : {{1'd0}, _T_321}; // @[DCache.scala 615:26:chipyard.TestHarness.RocketConfig.fir@217469.4]
  assign _T_477 = s1_word_en ? s1_data_way : 5'h0; // @[DCache.scala 329:28:chipyard.TestHarness.RocketConfig.fir@214799.4]
  assign _T_483 = _T_477[0] ? s1_all_data_ways_0 : 64'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@214805.4]
  assign _T_484 = _T_477[1] ? s1_all_data_ways_1 : 64'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@214806.4]
  assign _T_485 = _T_477[2] ? s1_all_data_ways_2 : 64'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@214807.4]
  assign _T_486 = _T_477[3] ? s1_all_data_ways_3 : 64'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@214808.4]
  assign _T_487 = _T_477[4] ? _T_336 : 64'h0; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@214809.4]
  assign _T_488 = _T_483 | _T_484; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@214810.4]
  assign _T_489 = _T_488 | _T_485; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@214811.4]
  assign _T_490 = _T_489 | _T_486; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@214812.4]
  assign _T_491 = _T_490 | _T_487; // @[Mux.scala 27:72:chipyard.TestHarness.RocketConfig.fir@214813.4]
  assign _T_634 = {s2_data[31:24],s2_data[23:16],s2_data[15:8],s2_data[7:0]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@214991.4]
  assign _T_637 = {s2_data[63:56],s2_data[55:48],s2_data[47:40],s2_data[39:32]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@214994.4]
  assign s2_data_corrected = {s2_data[63:56],s2_data[55:48],s2_data[47:40],s2_data[39:32],s2_data[31:24],s2_data[23:16],s2_data[15:8],s2_data[7:0]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@214995.4]
  assign s2_valid_flush_line = s2_valid_hit_maybe_flush_pre_data_ecc_and_waw & s2_cmd_flush_line; // @[DCache.scala 369:75:chipyard.TestHarness.RocketConfig.fir@215009.4]
  assign _T_651 = s2_valid_masked & s2_readwrite; // @[DCache.scala 373:39:chipyard.TestHarness.RocketConfig.fir@215016.4]
  assign _T_653 = _T_651 & _T_644; // @[DCache.scala 373:55:chipyard.TestHarness.RocketConfig.fir@215018.4]
  assign _T_654 = ~s2_hit; // @[DCache.scala 373:76:chipyard.TestHarness.RocketConfig.fir@215019.4]
  assign s2_valid_miss = _T_653 & _T_654; // @[DCache.scala 373:73:chipyard.TestHarness.RocketConfig.fir@215020.4]
  assign s2_uncached = ~s2_pma_cacheable; // @[DCache.scala 374:21:chipyard.TestHarness.RocketConfig.fir@215021.4]
  assign _T_660 = ~s2_uncached; // @[DCache.scala 375:47:chipyard.TestHarness.RocketConfig.fir@215027.4]
  assign _T_661 = s2_valid_miss & _T_660; // @[DCache.scala 375:44:chipyard.TestHarness.RocketConfig.fir@215028.4]
  assign _T_662 = |uncachedInFlight_0; // @[DCache.scala 375:88:chipyard.TestHarness.RocketConfig.fir@215029.4]
  assign _T_663 = ~_T_662; // @[DCache.scala 375:63:chipyard.TestHarness.RocketConfig.fir@215030.4]
  assign s2_valid_cached_miss = _T_661 & _T_663; // @[DCache.scala 375:60:chipyard.TestHarness.RocketConfig.fir@215031.4]
  assign _T_664 = s2_valid_cached_miss | s2_valid_flush_line; // @[DCache.scala 377:79:chipyard.TestHarness.RocketConfig.fir@215032.4]
  assign s2_want_victimize = _T_664 | s2_flush_valid; // @[DCache.scala 377:125:chipyard.TestHarness.RocketConfig.fir@215034.4]
  assign _T_669 = s2_valid_miss & s2_uncached; // @[DCache.scala 380:49:chipyard.TestHarness.RocketConfig.fir@215040.4]
  assign _T_670 = &uncachedInFlight_0; // @[DCache.scala 380:92:chipyard.TestHarness.RocketConfig.fir@215041.4]
  assign _T_671 = ~_T_670; // @[DCache.scala 380:67:chipyard.TestHarness.RocketConfig.fir@215042.4]
  assign s2_valid_uncached_pending = _T_669 & _T_671; // @[DCache.scala 380:64:chipyard.TestHarness.RocketConfig.fir@215043.4]
  assign s2_victim_tag = s2_valid_flush_line ? s2_req_addr[31:12] : _T_678; // @[DCache.scala 382:26:chipyard.TestHarness.RocketConfig.fir@215058.4]
  assign s2_victim_state_state = s2_hit_valid ? s2_hit_state_state : _T_680_state; // @[DCache.scala 383:28:chipyard.TestHarness.RocketConfig.fir@215064.4]
  assign _T_696 = _T_694 ? 3'h5 : 3'h0; // @[Misc.scala 37:36:chipyard.TestHarness.RocketConfig.fir@215080.4]
  assign _T_700 = _T_698 ? 3'h2 : _T_696; // @[Misc.scala 37:36:chipyard.TestHarness.RocketConfig.fir@215084.4]
  assign _T_704 = _T_702 ? 3'h1 : _T_700; // @[Misc.scala 37:36:chipyard.TestHarness.RocketConfig.fir@215088.4]
  assign _T_708 = _T_706 ? 3'h1 : _T_704; // @[Misc.scala 37:36:chipyard.TestHarness.RocketConfig.fir@215092.4]
  assign _T_712 = _T_710 ? 3'h5 : _T_708; // @[Misc.scala 37:36:chipyard.TestHarness.RocketConfig.fir@215096.4]
  assign _T_716 = _T_714 ? 3'h4 : _T_712; // @[Misc.scala 37:36:chipyard.TestHarness.RocketConfig.fir@215100.4]
  assign _T_717 = _T_714 ? 2'h1 : 2'h0; // @[Misc.scala 37:63:chipyard.TestHarness.RocketConfig.fir@215101.4]
  assign _T_720 = _T_718 ? 3'h0 : _T_716; // @[Misc.scala 37:36:chipyard.TestHarness.RocketConfig.fir@215104.4]
  assign _T_721 = _T_718 ? 2'h1 : _T_717; // @[Misc.scala 37:63:chipyard.TestHarness.RocketConfig.fir@215105.4]
  assign _T_724 = _T_722 ? 3'h0 : _T_720; // @[Misc.scala 37:36:chipyard.TestHarness.RocketConfig.fir@215108.4]
  assign _T_725 = _T_722 ? 2'h1 : _T_721; // @[Misc.scala 37:63:chipyard.TestHarness.RocketConfig.fir@215109.4]
  assign _T_728 = _T_726 ? 3'h5 : _T_724; // @[Misc.scala 37:36:chipyard.TestHarness.RocketConfig.fir@215112.4]
  assign _T_729 = _T_726 ? 2'h0 : _T_725; // @[Misc.scala 37:63:chipyard.TestHarness.RocketConfig.fir@215113.4]
  assign _T_732 = _T_730 ? 3'h4 : _T_728; // @[Misc.scala 37:36:chipyard.TestHarness.RocketConfig.fir@215116.4]
  assign _T_733 = _T_730 ? 2'h1 : _T_729; // @[Misc.scala 37:63:chipyard.TestHarness.RocketConfig.fir@215117.4]
  assign _T_736 = _T_734 ? 3'h3 : _T_732; // @[Misc.scala 37:36:chipyard.TestHarness.RocketConfig.fir@215120.4]
  assign _T_737 = _T_734 ? 2'h2 : _T_733; // @[Misc.scala 37:63:chipyard.TestHarness.RocketConfig.fir@215121.4]
  assign s2_report_param = _T_738 ? 3'h3 : _T_736; // @[Misc.scala 37:36:chipyard.TestHarness.RocketConfig.fir@215124.4]
  assign probeNewCoh_state = _T_738 ? 2'h2 : _T_737; // @[Misc.scala 37:63:chipyard.TestHarness.RocketConfig.fir@215125.4]
  assign _T_746 = {2'h2,s2_victim_state_state}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@215135.4]
  assign _T_759 = 4'h8 == _T_746; // @[Misc.scala 55:20:chipyard.TestHarness.RocketConfig.fir@215148.4]
  assign _T_761 = _T_759 ? 3'h5 : 3'h0; // @[Misc.scala 37:36:chipyard.TestHarness.RocketConfig.fir@215150.4]
  assign _T_763 = 4'h9 == _T_746; // @[Misc.scala 55:20:chipyard.TestHarness.RocketConfig.fir@215152.4]
  assign _T_765 = _T_763 ? 3'h2 : _T_761; // @[Misc.scala 37:36:chipyard.TestHarness.RocketConfig.fir@215154.4]
  assign _T_767 = 4'ha == _T_746; // @[Misc.scala 55:20:chipyard.TestHarness.RocketConfig.fir@215156.4]
  assign _T_769 = _T_767 ? 3'h1 : _T_765; // @[Misc.scala 37:36:chipyard.TestHarness.RocketConfig.fir@215158.4]
  assign _T_771 = 4'hb == _T_746; // @[Misc.scala 55:20:chipyard.TestHarness.RocketConfig.fir@215160.4]
  assign _T_773 = _T_771 ? 3'h1 : _T_769; // @[Misc.scala 37:36:chipyard.TestHarness.RocketConfig.fir@215162.4]
  assign _T_775 = 4'h4 == _T_746; // @[Misc.scala 55:20:chipyard.TestHarness.RocketConfig.fir@215164.4]
  assign _T_776 = _T_775 ? 1'h0 : _T_771; // @[Misc.scala 37:9:chipyard.TestHarness.RocketConfig.fir@215165.4]
  assign _T_777 = _T_775 ? 3'h5 : _T_773; // @[Misc.scala 37:36:chipyard.TestHarness.RocketConfig.fir@215166.4]
  assign _T_779 = 4'h5 == _T_746; // @[Misc.scala 55:20:chipyard.TestHarness.RocketConfig.fir@215168.4]
  assign _T_780 = _T_779 ? 1'h0 : _T_776; // @[Misc.scala 37:9:chipyard.TestHarness.RocketConfig.fir@215169.4]
  assign _T_781 = _T_779 ? 3'h4 : _T_777; // @[Misc.scala 37:36:chipyard.TestHarness.RocketConfig.fir@215170.4]
  assign _T_782 = _T_779 ? 2'h1 : 2'h0; // @[Misc.scala 37:63:chipyard.TestHarness.RocketConfig.fir@215171.4]
  assign _T_783 = 4'h6 == _T_746; // @[Misc.scala 55:20:chipyard.TestHarness.RocketConfig.fir@215172.4]
  assign _T_784 = _T_783 ? 1'h0 : _T_780; // @[Misc.scala 37:9:chipyard.TestHarness.RocketConfig.fir@215173.4]
  assign _T_785 = _T_783 ? 3'h0 : _T_781; // @[Misc.scala 37:36:chipyard.TestHarness.RocketConfig.fir@215174.4]
  assign _T_786 = _T_783 ? 2'h1 : _T_782; // @[Misc.scala 37:63:chipyard.TestHarness.RocketConfig.fir@215175.4]
  assign _T_787 = 4'h7 == _T_746; // @[Misc.scala 55:20:chipyard.TestHarness.RocketConfig.fir@215176.4]
  assign _T_788 = _T_787 | _T_784; // @[Misc.scala 37:9:chipyard.TestHarness.RocketConfig.fir@215177.4]
  assign _T_789 = _T_787 ? 3'h0 : _T_785; // @[Misc.scala 37:36:chipyard.TestHarness.RocketConfig.fir@215178.4]
  assign _T_790 = _T_787 ? 2'h1 : _T_786; // @[Misc.scala 37:63:chipyard.TestHarness.RocketConfig.fir@215179.4]
  assign _T_791 = 4'h0 == _T_746; // @[Misc.scala 55:20:chipyard.TestHarness.RocketConfig.fir@215180.4]
  assign _T_792 = _T_791 ? 1'h0 : _T_788; // @[Misc.scala 37:9:chipyard.TestHarness.RocketConfig.fir@215181.4]
  assign _T_793 = _T_791 ? 3'h5 : _T_789; // @[Misc.scala 37:36:chipyard.TestHarness.RocketConfig.fir@215182.4]
  assign _T_794 = _T_791 ? 2'h0 : _T_790; // @[Misc.scala 37:63:chipyard.TestHarness.RocketConfig.fir@215183.4]
  assign _T_795 = 4'h1 == _T_746; // @[Misc.scala 55:20:chipyard.TestHarness.RocketConfig.fir@215184.4]
  assign _T_796 = _T_795 ? 1'h0 : _T_792; // @[Misc.scala 37:9:chipyard.TestHarness.RocketConfig.fir@215185.4]
  assign _T_797 = _T_795 ? 3'h4 : _T_793; // @[Misc.scala 37:36:chipyard.TestHarness.RocketConfig.fir@215186.4]
  assign _T_798 = _T_795 ? 2'h1 : _T_794; // @[Misc.scala 37:63:chipyard.TestHarness.RocketConfig.fir@215187.4]
  assign _T_799 = 4'h2 == _T_746; // @[Misc.scala 55:20:chipyard.TestHarness.RocketConfig.fir@215188.4]
  assign _T_800 = _T_799 ? 1'h0 : _T_796; // @[Misc.scala 37:9:chipyard.TestHarness.RocketConfig.fir@215189.4]
  assign _T_801 = _T_799 ? 3'h3 : _T_797; // @[Misc.scala 37:36:chipyard.TestHarness.RocketConfig.fir@215190.4]
  assign _T_802 = _T_799 ? 2'h2 : _T_798; // @[Misc.scala 37:63:chipyard.TestHarness.RocketConfig.fir@215191.4]
  assign _T_803 = 4'h3 == _T_746; // @[Misc.scala 55:20:chipyard.TestHarness.RocketConfig.fir@215192.4]
  assign s2_victim_dirty = _T_803 | _T_800; // @[Misc.scala 37:9:chipyard.TestHarness.RocketConfig.fir@215193.4]
  assign s2_shrink_param = _T_803 ? 3'h3 : _T_801; // @[Misc.scala 37:36:chipyard.TestHarness.RocketConfig.fir@215194.4]
  assign voluntaryNewCoh_state = _T_803 ? 2'h2 : _T_802; // @[Misc.scala 37:63:chipyard.TestHarness.RocketConfig.fir@215195.4]
  assign s2_dont_nack_uncached = s2_valid_uncached_pending & auto_out_a_ready; // @[DCache.scala 389:57:chipyard.TestHarness.RocketConfig.fir@215201.4]
  assign _T_816 = s2_req_cmd == 5'h17; // @[DCache.scala 393:17:chipyard.TestHarness.RocketConfig.fir@215212.4]
  assign s2_dont_nack_misc = _T_645 & _T_816; // @[DCache.scala 390:61:chipyard.TestHarness.RocketConfig.fir@215214.4]
  assign _T_818 = ~s2_dont_nack_uncached; // @[DCache.scala 394:41:chipyard.TestHarness.RocketConfig.fir@215215.4]
  assign _T_819 = s2_valid_no_xcpt & _T_818; // @[DCache.scala 394:38:chipyard.TestHarness.RocketConfig.fir@215216.4]
  assign _T_820 = ~s2_dont_nack_misc; // @[DCache.scala 394:67:chipyard.TestHarness.RocketConfig.fir@215217.4]
  assign _T_821 = _T_819 & _T_820; // @[DCache.scala 394:64:chipyard.TestHarness.RocketConfig.fir@215218.4]
  assign _T_822 = ~s2_valid_hit_pre_data_ecc_and_waw; // @[DCache.scala 394:89:chipyard.TestHarness.RocketConfig.fir@215219.4]
  assign _T_832 = s2_valid_masked | s2_flush_valid_pre_tag_ecc; // @[DCache.scala 399:63:chipyard.TestHarness.RocketConfig.fir@215234.4]
  assign _T_833 = _T_832 | s2_probe; // @[DCache.scala 399:93:chipyard.TestHarness.RocketConfig.fir@215235.4]
  assign _T_849 = {metaArb_io_in_1_bits_idx, 6'h0}; // @[DCache.scala 403:98:chipyard.TestHarness.RocketConfig.fir@215255.4]
  assign new_meta_coh_state = s2_meta_error ? 2'h0 : s2_meta_corrected_3_coh_state; // @[DCache.scala 406:40:chipyard.TestHarness.RocketConfig.fir@215261.4]
  assign _T_864 = lrscCount > 7'h0; // @[DCache.scala 423:34:chipyard.TestHarness.RocketConfig.fir@215293.4]
  assign _T_865 = ~lrscValid; // @[DCache.scala 423:41:chipyard.TestHarness.RocketConfig.fir@215294.4]
  assign lrscBackingOff = _T_864 & _T_865; // @[DCache.scala 423:38:chipyard.TestHarness.RocketConfig.fir@215295.4]
  assign lrscAddrMatch = lrscAddr == s2_req_addr[39:6]; // @[DCache.scala 425:32:chipyard.TestHarness.RocketConfig.fir@215298.4]
  assign _T_867 = lrscValid & lrscAddrMatch; // @[DCache.scala 426:41:chipyard.TestHarness.RocketConfig.fir@215299.4]
  assign _T_868 = ~_T_867; // @[DCache.scala 426:29:chipyard.TestHarness.RocketConfig.fir@215300.4]
  assign s2_sc_fail = _T_422 & _T_868; // @[DCache.scala 426:26:chipyard.TestHarness.RocketConfig.fir@215301.4]
  assign _T_869 = s2_valid_hit_pre_data_ecc_and_waw & _T_542; // @[DCache.scala 427:23:chipyard.TestHarness.RocketConfig.fir@215302.4]
  assign _T_871 = _T_869 & _T_79; // @[DCache.scala 427:32:chipyard.TestHarness.RocketConfig.fir@215304.4]
  assign _T_872 = _T_871 | s2_valid_cached_miss; // @[DCache.scala 427:54:chipyard.TestHarness.RocketConfig.fir@215305.4]
  assign _T_879 = lrscCount - 7'h1; // @[DCache.scala 431:49:chipyard.TestHarness.RocketConfig.fir@215317.6]
  assign _T_880 = s2_valid_masked & lrscValid; // @[DCache.scala 432:29:chipyard.TestHarness.RocketConfig.fir@215320.4]
  assign _T_888 = s1_valid_not_nacked & s1_write; // @[DCache.scala 441:63:chipyard.TestHarness.RocketConfig.fir@215337.4]
  assign _T_942 = s1_write & _T_53; // @[DCache.scala 1083:23:chipyard.TestHarness.RocketConfig.fir@215414.4]
  assign _T_943 = s1_read | _T_942; // @[DCache.scala 1082:21:chipyard.TestHarness.RocketConfig.fir@215415.4]
  assign _T_947 = s2_valid_hit_pre_data_ecc_and_waw & s2_write; // @[DCache.scala 439:46:chipyard.TestHarness.RocketConfig.fir@215424.4]
  assign _T_948 = ~s2_sc_fail; // @[DCache.scala 439:61:chipyard.TestHarness.RocketConfig.fir@215425.4]
  assign _T_949 = _T_947 & _T_948; // @[DCache.scala 439:58:chipyard.TestHarness.RocketConfig.fir@215426.4]
  assign pstore_drain_opportunistic = ~_T_167; // @[DCache.scala 451:36:chipyard.TestHarness.RocketConfig.fir@215498.4]
  assign pstore_drain_on_miss = releaseInFlight | _T_1017; // @[DCache.scala 452:46:chipyard.TestHarness.RocketConfig.fir@215504.4]
  assign pstore1_valid = _T_949 | pstore1_held; // @[DCache.scala 456:38:chipyard.TestHarness.RocketConfig.fir@215513.4]
  assign _T_1025 = pstore1_valid_likely & pstore2_valid; // @[DCache.scala 458:54:chipyard.TestHarness.RocketConfig.fir@215516.4]
  assign _T_1026 = s1_valid & s1_write; // @[DCache.scala 458:85:chipyard.TestHarness.RocketConfig.fir@215517.4]
  assign _T_1027 = _T_1026 | pstore1_rmw; // @[DCache.scala 458:98:chipyard.TestHarness.RocketConfig.fir@215518.4]
  assign pstore_drain_structural = _T_1025 & _T_1027; // @[DCache.scala 458:71:chipyard.TestHarness.RocketConfig.fir@215519.4]
  assign _T_1031 = _T_947 | pstore1_held; // @[DCache.scala 455:96:chipyard.TestHarness.RocketConfig.fir@215523.4]
  assign _T_1032 = _T_1031 == pstore1_valid; // @[DCache.scala 459:63:chipyard.TestHarness.RocketConfig.fir@215524.4]
  assign _T_1033 = pstore1_rmw | _T_1032; // @[DCache.scala 459:22:chipyard.TestHarness.RocketConfig.fir@215525.4]
  assign _T_1035 = _T_1033 | reset; // @[DCache.scala 459:9:chipyard.TestHarness.RocketConfig.fir@215527.4]
  assign _T_1036 = ~_T_1035; // @[DCache.scala 459:9:chipyard.TestHarness.RocketConfig.fir@215528.4]
  assign _T_1045 = ~pstore1_rmw; // @[DCache.scala 467:44:chipyard.TestHarness.RocketConfig.fir@215542.4]
  assign _T_1046 = _T_1031 & _T_1045; // @[DCache.scala 467:41:chipyard.TestHarness.RocketConfig.fir@215543.4]
  assign _T_1047 = _T_1046 | pstore2_valid; // @[DCache.scala 467:58:chipyard.TestHarness.RocketConfig.fir@215544.4]
  assign _T_1048 = pstore_drain_opportunistic | pstore_drain_on_miss; // @[DCache.scala 467:107:chipyard.TestHarness.RocketConfig.fir@215545.4]
  assign _T_1049 = _T_1047 & _T_1048; // @[DCache.scala 467:76:chipyard.TestHarness.RocketConfig.fir@215546.4]
  assign pstore_drain = pstore_drain_structural | _T_1049; // @[DCache.scala 466:48:chipyard.TestHarness.RocketConfig.fir@215547.4]
  assign _T_1059 = pstore1_valid & pstore2_valid; // @[DCache.scala 470:71:chipyard.TestHarness.RocketConfig.fir@215557.4]
  assign _T_1060 = ~pstore_drain; // @[DCache.scala 470:91:chipyard.TestHarness.RocketConfig.fir@215558.4]
  assign _T_1063 = pstore2_valid == pstore_drain; // @[DCache.scala 471:79:chipyard.TestHarness.RocketConfig.fir@215562.4]
  assign advance_pstore1 = pstore1_valid & _T_1063; // @[DCache.scala 471:61:chipyard.TestHarness.RocketConfig.fir@215563.4]
  assign _T_1065 = pstore2_valid & _T_1060; // @[DCache.scala 472:34:chipyard.TestHarness.RocketConfig.fir@215565.4]
  assign pstore1_storegen_data = amoalu_io_out; // @[:chipyard.TestHarness.RocketConfig.fir@215362.4 :chipyard.TestHarness.RocketConfig.fir@215364.4 DCache.scala 884:27:chipyard.TestHarness.RocketConfig.fir@218105.4]
  assign pstore2_storegen_data = {_T_1108,_T_1103,_T_1098,_T_1093,_T_1088,_T_1083,_T_1078,_T_1073}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@215648.4]
  assign _T_1117 = ~pstore1_mask; // @[DCache.scala 483:37:chipyard.TestHarness.RocketConfig.fir@215654.6]
  assign _T_1119 = ~_T_1117; // @[DCache.scala 483:15:chipyard.TestHarness.RocketConfig.fir@215656.6]
  assign _T_1133 = pstore2_valid ? pstore2_addr : pstore1_addr; // @[DCache.scala 498:36:chipyard.TestHarness.RocketConfig.fir@215676.4]
  assign _T_1135 = pstore2_valid ? pstore2_storegen_data : pstore1_data; // @[DCache.scala 500:63:chipyard.TestHarness.RocketConfig.fir@215680.4]
  assign _T_1146 = {_T_1135[31:24],_T_1135[23:16],_T_1135[15:8],_T_1135[7:0]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@215691.4]
  assign _T_1149 = {_T_1135[63:56],_T_1135[55:48],_T_1135[47:40],_T_1135[39:32]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@215694.4]
  assign _T_1153 = pstore2_valid ? mask : pstore1_mask; // @[DCache.scala 502:47:chipyard.TestHarness.RocketConfig.fir@215700.4]
  assign _T_1162 = |_T_1153[0]; // @[DCache.scala 1073:66:chipyard.TestHarness.RocketConfig.fir@215709.4]
  assign _T_1163 = |_T_1153[1]; // @[DCache.scala 1073:66:chipyard.TestHarness.RocketConfig.fir@215710.4]
  assign _T_1164 = |_T_1153[2]; // @[DCache.scala 1073:66:chipyard.TestHarness.RocketConfig.fir@215711.4]
  assign _T_1165 = |_T_1153[3]; // @[DCache.scala 1073:66:chipyard.TestHarness.RocketConfig.fir@215712.4]
  assign _T_1166 = |_T_1153[4]; // @[DCache.scala 1073:66:chipyard.TestHarness.RocketConfig.fir@215713.4]
  assign _T_1167 = |_T_1153[5]; // @[DCache.scala 1073:66:chipyard.TestHarness.RocketConfig.fir@215714.4]
  assign _T_1168 = |_T_1153[6]; // @[DCache.scala 1073:66:chipyard.TestHarness.RocketConfig.fir@215715.4]
  assign _T_1169 = |_T_1153[7]; // @[DCache.scala 1073:66:chipyard.TestHarness.RocketConfig.fir@215716.4]
  assign _T_1172 = {_T_1165,_T_1164,_T_1163,_T_1162}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@215719.4]
  assign _T_1175 = {_T_1169,_T_1168,_T_1167,_T_1166}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@215722.4]
  assign _T_1355 = ~uncachedInFlight_0; // @[DCache.scala 522:34:chipyard.TestHarness.RocketConfig.fir@215911.4]
  assign _T_1356 = {_T_1355, 1'h0}; // @[DCache.scala 522:59:chipyard.TestHarness.RocketConfig.fir@215912.4]
  assign a_source = _T_1356[0] ? 1'h0 : 1'h1; // @[Mux.scala 47:69:chipyard.TestHarness.RocketConfig.fir@215915.4]
  assign acquire_address = {s2_req_addr[39:6], 6'h0}; // @[DCache.scala 523:49:chipyard.TestHarness.RocketConfig.fir@215917.4]
  assign a_mask = {{15'd0}, pstore1_mask}; // @[DCache.scala 527:29:chipyard.TestHarness.RocketConfig.fir@215919.4]
  assign _T_1413 = {{1'd0}, s2_req_size}; // @[Misc.scala 201:34:chipyard.TestHarness.RocketConfig.fir@215979.4]
  assign _T_1415 = 4'h1 << _T_1413[1:0]; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@215981.4]
  assign _T_1417 = _T_1415[2:0] | 3'h1; // @[Misc.scala 201:81:chipyard.TestHarness.RocketConfig.fir@215983.4]
  assign _T_1418 = s2_req_size >= 2'h3; // @[Misc.scala 205:21:chipyard.TestHarness.RocketConfig.fir@215984.4]
  assign _T_1421 = ~s2_req_addr[2]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@215987.4]
  assign _T_1423 = _T_1417[2] & _T_1421; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@215989.4]
  assign _T_1424 = _T_1418 | _T_1423; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@215990.4]
  assign _T_1426 = _T_1417[2] & s2_req_addr[2]; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@215992.4]
  assign _T_1427 = _T_1418 | _T_1426; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@215993.4]
  assign _T_1430 = ~s2_req_addr[1]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@215996.4]
  assign _T_1431 = _T_1421 & _T_1430; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@215997.4]
  assign _T_1432 = _T_1417[1] & _T_1431; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@215998.4]
  assign _T_1433 = _T_1424 | _T_1432; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@215999.4]
  assign _T_1434 = _T_1421 & s2_req_addr[1]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@216000.4]
  assign _T_1435 = _T_1417[1] & _T_1434; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@216001.4]
  assign _T_1436 = _T_1424 | _T_1435; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@216002.4]
  assign _T_1437 = s2_req_addr[2] & _T_1430; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@216003.4]
  assign _T_1438 = _T_1417[1] & _T_1437; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@216004.4]
  assign _T_1439 = _T_1427 | _T_1438; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@216005.4]
  assign _T_1440 = s2_req_addr[2] & s2_req_addr[1]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@216006.4]
  assign _T_1441 = _T_1417[1] & _T_1440; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@216007.4]
  assign _T_1442 = _T_1427 | _T_1441; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@216008.4]
  assign _T_1445 = ~s2_req_addr[0]; // @[Misc.scala 210:20:chipyard.TestHarness.RocketConfig.fir@216011.4]
  assign _T_1446 = _T_1431 & _T_1445; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@216012.4]
  assign _T_1447 = _T_1417[0] & _T_1446; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@216013.4]
  assign _T_1448 = _T_1433 | _T_1447; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@216014.4]
  assign _T_1449 = _T_1431 & s2_req_addr[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@216015.4]
  assign _T_1450 = _T_1417[0] & _T_1449; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@216016.4]
  assign _T_1451 = _T_1433 | _T_1450; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@216017.4]
  assign _T_1452 = _T_1434 & _T_1445; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@216018.4]
  assign _T_1453 = _T_1417[0] & _T_1452; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@216019.4]
  assign _T_1454 = _T_1436 | _T_1453; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@216020.4]
  assign _T_1455 = _T_1434 & s2_req_addr[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@216021.4]
  assign _T_1456 = _T_1417[0] & _T_1455; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@216022.4]
  assign _T_1457 = _T_1436 | _T_1456; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@216023.4]
  assign _T_1458 = _T_1437 & _T_1445; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@216024.4]
  assign _T_1459 = _T_1417[0] & _T_1458; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@216025.4]
  assign _T_1460 = _T_1439 | _T_1459; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@216026.4]
  assign _T_1461 = _T_1437 & s2_req_addr[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@216027.4]
  assign _T_1462 = _T_1417[0] & _T_1461; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@216028.4]
  assign _T_1463 = _T_1439 | _T_1462; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@216029.4]
  assign _T_1464 = _T_1440 & _T_1445; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@216030.4]
  assign _T_1465 = _T_1417[0] & _T_1464; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@216031.4]
  assign _T_1466 = _T_1442 | _T_1465; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@216032.4]
  assign _T_1467 = _T_1440 & s2_req_addr[0]; // @[Misc.scala 213:27:chipyard.TestHarness.RocketConfig.fir@216033.4]
  assign _T_1468 = _T_1417[0] & _T_1467; // @[Misc.scala 214:38:chipyard.TestHarness.RocketConfig.fir@216034.4]
  assign _T_1469 = _T_1442 | _T_1468; // @[Misc.scala 214:29:chipyard.TestHarness.RocketConfig.fir@216035.4]
  assign get_mask = {_T_1469,_T_1466,_T_1463,_T_1460,_T_1457,_T_1454,_T_1451,_T_1448}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@216042.4]
  assign _T_2568 = 5'h4 == s2_req_cmd; // @[Mux.scala 80:60:chipyard.TestHarness.RocketConfig.fir@217239.4]
  assign _T_2569_opcode = _T_2568 ? 3'h3 : 3'h0; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217240.4]
  assign _T_1687_size = {{2'd0}, s2_req_size}; // @[Edges.scala 496:17:chipyard.TestHarness.RocketConfig.fir@216277.4 Edges.scala 499:15:chipyard.TestHarness.RocketConfig.fir@216281.4]
  assign _T_2569_size = _T_2568 ? _T_1687_size : 4'h0; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217240.4]
  assign _T_2569_source = _T_2568 & a_source; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217240.4]
  assign _T_2569_address = _T_2568 ? s2_req_addr[31:0] : 32'h0; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217240.4]
  assign _T_2569_mask = _T_2568 ? get_mask : 8'h0; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217240.4]
  assign _T_2569_data = _T_2568 ? pstore1_data : 64'h0; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217240.4]
  assign _T_2570 = 5'h9 == s2_req_cmd; // @[Mux.scala 80:60:chipyard.TestHarness.RocketConfig.fir@217241.4]
  assign _T_2571_opcode = _T_2570 ? 3'h3 : _T_2569_opcode; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217242.4]
  assign _T_2571_param = _T_2570 ? 3'h0 : _T_2569_opcode; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217242.4]
  assign _T_2571_size = _T_2570 ? _T_1687_size : _T_2569_size; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217242.4]
  assign _T_2571_source = _T_2570 ? a_source : _T_2569_source; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217242.4]
  assign _T_2571_address = _T_2570 ? s2_req_addr[31:0] : _T_2569_address; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217242.4]
  assign _T_2571_mask = _T_2570 ? get_mask : _T_2569_mask; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217242.4]
  assign _T_2571_data = _T_2570 ? pstore1_data : _T_2569_data; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217242.4]
  assign _T_2572 = 5'ha == s2_req_cmd; // @[Mux.scala 80:60:chipyard.TestHarness.RocketConfig.fir@217243.4]
  assign _T_2573_opcode = _T_2572 ? 3'h3 : _T_2571_opcode; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217244.4]
  assign _T_2573_param = _T_2572 ? 3'h1 : _T_2571_param; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217244.4]
  assign _T_2573_size = _T_2572 ? _T_1687_size : _T_2571_size; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217244.4]
  assign _T_2573_source = _T_2572 ? a_source : _T_2571_source; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217244.4]
  assign _T_2573_address = _T_2572 ? s2_req_addr[31:0] : _T_2571_address; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217244.4]
  assign _T_2573_mask = _T_2572 ? get_mask : _T_2571_mask; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217244.4]
  assign _T_2573_data = _T_2572 ? pstore1_data : _T_2571_data; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217244.4]
  assign _T_2574 = 5'hb == s2_req_cmd; // @[Mux.scala 80:60:chipyard.TestHarness.RocketConfig.fir@217245.4]
  assign _T_2575_opcode = _T_2574 ? 3'h3 : _T_2573_opcode; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217246.4]
  assign _T_2575_param = _T_2574 ? 3'h2 : _T_2573_param; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217246.4]
  assign _T_2575_size = _T_2574 ? _T_1687_size : _T_2573_size; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217246.4]
  assign _T_2575_source = _T_2574 ? a_source : _T_2573_source; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217246.4]
  assign _T_2575_address = _T_2574 ? s2_req_addr[31:0] : _T_2573_address; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217246.4]
  assign _T_2575_mask = _T_2574 ? get_mask : _T_2573_mask; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217246.4]
  assign _T_2575_data = _T_2574 ? pstore1_data : _T_2573_data; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217246.4]
  assign _T_2576 = 5'h8 == s2_req_cmd; // @[Mux.scala 80:60:chipyard.TestHarness.RocketConfig.fir@217247.4]
  assign _T_2577_opcode = _T_2576 ? 3'h2 : _T_2575_opcode; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217248.4]
  assign _T_2577_param = _T_2576 ? 3'h4 : _T_2575_param; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217248.4]
  assign _T_2577_size = _T_2576 ? _T_1687_size : _T_2575_size; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217248.4]
  assign _T_2577_source = _T_2576 ? a_source : _T_2575_source; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217248.4]
  assign _T_2577_address = _T_2576 ? s2_req_addr[31:0] : _T_2575_address; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217248.4]
  assign _T_2577_mask = _T_2576 ? get_mask : _T_2575_mask; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217248.4]
  assign _T_2577_data = _T_2576 ? pstore1_data : _T_2575_data; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217248.4]
  assign _T_2578 = 5'hc == s2_req_cmd; // @[Mux.scala 80:60:chipyard.TestHarness.RocketConfig.fir@217249.4]
  assign _T_2579_opcode = _T_2578 ? 3'h2 : _T_2577_opcode; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217250.4]
  assign _T_2579_param = _T_2578 ? 3'h0 : _T_2577_param; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217250.4]
  assign _T_2579_size = _T_2578 ? _T_1687_size : _T_2577_size; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217250.4]
  assign _T_2579_source = _T_2578 ? a_source : _T_2577_source; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217250.4]
  assign _T_2579_address = _T_2578 ? s2_req_addr[31:0] : _T_2577_address; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217250.4]
  assign _T_2579_mask = _T_2578 ? get_mask : _T_2577_mask; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217250.4]
  assign _T_2579_data = _T_2578 ? pstore1_data : _T_2577_data; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217250.4]
  assign _T_2580 = 5'hd == s2_req_cmd; // @[Mux.scala 80:60:chipyard.TestHarness.RocketConfig.fir@217251.4]
  assign _T_2581_opcode = _T_2580 ? 3'h2 : _T_2579_opcode; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217252.4]
  assign _T_2581_param = _T_2580 ? 3'h1 : _T_2579_param; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217252.4]
  assign _T_2581_size = _T_2580 ? _T_1687_size : _T_2579_size; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217252.4]
  assign _T_2581_source = _T_2580 ? a_source : _T_2579_source; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217252.4]
  assign _T_2581_address = _T_2580 ? s2_req_addr[31:0] : _T_2579_address; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217252.4]
  assign _T_2581_mask = _T_2580 ? get_mask : _T_2579_mask; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217252.4]
  assign _T_2581_data = _T_2580 ? pstore1_data : _T_2579_data; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217252.4]
  assign _T_2582 = 5'he == s2_req_cmd; // @[Mux.scala 80:60:chipyard.TestHarness.RocketConfig.fir@217253.4]
  assign _T_2583_opcode = _T_2582 ? 3'h2 : _T_2581_opcode; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217254.4]
  assign _T_2583_param = _T_2582 ? 3'h2 : _T_2581_param; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217254.4]
  assign _T_2583_size = _T_2582 ? _T_1687_size : _T_2581_size; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217254.4]
  assign _T_2583_source = _T_2582 ? a_source : _T_2581_source; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217254.4]
  assign _T_2583_address = _T_2582 ? s2_req_addr[31:0] : _T_2581_address; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217254.4]
  assign _T_2583_mask = _T_2582 ? get_mask : _T_2581_mask; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217254.4]
  assign _T_2583_data = _T_2582 ? pstore1_data : _T_2581_data; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217254.4]
  assign _T_2584 = 5'hf == s2_req_cmd; // @[Mux.scala 80:60:chipyard.TestHarness.RocketConfig.fir@217255.4]
  assign atomics_opcode = _T_2584 ? 3'h2 : _T_2583_opcode; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217256.4]
  assign atomics_param = _T_2584 ? 3'h3 : _T_2583_param; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217256.4]
  assign atomics_size = _T_2584 ? _T_1687_size : _T_2583_size; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217256.4]
  assign atomics_source = _T_2584 ? a_source : _T_2583_source; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217256.4]
  assign atomics_address = _T_2584 ? s2_req_addr[31:0] : _T_2583_address; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217256.4]
  assign atomics_mask = _T_2584 ? get_mask : _T_2583_mask; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217256.4]
  assign atomics_data = _T_2584 ? pstore1_data : _T_2583_data; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217256.4]
  assign _T_2586 = ~release_ack_wait; // @[DCache.scala 549:30:chipyard.TestHarness.RocketConfig.fir@217258.4]
  assign _T_2587 = s2_valid_cached_miss & _T_2586; // @[DCache.scala 549:27:chipyard.TestHarness.RocketConfig.fir@217259.4]
  assign _T_2589 = ~s2_victim_dirty; // @[DCache.scala 549:117:chipyard.TestHarness.RocketConfig.fir@217261.4]
  assign _T_2591 = _T_2587 & _T_2589; // @[DCache.scala 549:48:chipyard.TestHarness.RocketConfig.fir@217263.4]
  assign tl_out_a_valid = s2_valid_uncached_pending | _T_2591; // @[DCache.scala 548:67:chipyard.TestHarness.RocketConfig.fir@217264.4]
  assign _T_2679 = ~s2_write; // @[DCache.scala 551:9:chipyard.TestHarness.RocketConfig.fir@217361.4]
  assign _T_2681 = ~s2_read; // @[DCache.scala 553:9:chipyard.TestHarness.RocketConfig.fir@217363.4]
  assign _T_2682_opcode = _T_2681 ? 3'h0 : atomics_opcode; // @[DCache.scala 553:8:chipyard.TestHarness.RocketConfig.fir@217364.4]
  assign _T_2682_param = _T_2681 ? 3'h0 : atomics_param; // @[DCache.scala 553:8:chipyard.TestHarness.RocketConfig.fir@217364.4]
  assign _T_2682_size = _T_2681 ? _T_1687_size : atomics_size; // @[DCache.scala 553:8:chipyard.TestHarness.RocketConfig.fir@217364.4]
  assign _T_2682_source = _T_2681 ? a_source : atomics_source; // @[DCache.scala 553:8:chipyard.TestHarness.RocketConfig.fir@217364.4]
  assign _T_2682_address = _T_2681 ? s2_req_addr[31:0] : atomics_address; // @[DCache.scala 553:8:chipyard.TestHarness.RocketConfig.fir@217364.4]
  assign _T_2682_mask = _T_2681 ? get_mask : atomics_mask; // @[DCache.scala 553:8:chipyard.TestHarness.RocketConfig.fir@217364.4]
  assign _T_2682_data = _T_2681 ? pstore1_data : atomics_data; // @[DCache.scala 553:8:chipyard.TestHarness.RocketConfig.fir@217364.4]
  assign _T_2683_opcode = _T_420 ? 3'h1 : _T_2682_opcode; // @[DCache.scala 552:8:chipyard.TestHarness.RocketConfig.fir@217365.4]
  assign _T_2683_param = _T_420 ? 3'h0 : _T_2682_param; // @[DCache.scala 552:8:chipyard.TestHarness.RocketConfig.fir@217365.4]
  assign _T_2683_size = _T_420 ? _T_1687_size : _T_2682_size; // @[DCache.scala 552:8:chipyard.TestHarness.RocketConfig.fir@217365.4]
  assign _T_2683_source = _T_420 ? a_source : _T_2682_source; // @[DCache.scala 552:8:chipyard.TestHarness.RocketConfig.fir@217365.4]
  assign _T_2683_address = _T_420 ? s2_req_addr[31:0] : _T_2682_address; // @[DCache.scala 552:8:chipyard.TestHarness.RocketConfig.fir@217365.4]
  assign putpartial_mask = a_mask[7:0]; // @[Edges.scala 466:17:chipyard.TestHarness.RocketConfig.fir@216228.4 Edges.scala 472:15:chipyard.TestHarness.RocketConfig.fir@216235.4]
  assign _T_2683_mask = _T_420 ? putpartial_mask : _T_2682_mask; // @[DCache.scala 552:8:chipyard.TestHarness.RocketConfig.fir@217365.4]
  assign _T_2683_data = _T_420 ? pstore1_data : _T_2682_data; // @[DCache.scala 552:8:chipyard.TestHarness.RocketConfig.fir@217365.4]
  assign _T_2684_opcode = _T_2679 ? 3'h4 : _T_2683_opcode; // @[DCache.scala 551:8:chipyard.TestHarness.RocketConfig.fir@217366.4]
  assign _T_2684_param = _T_2679 ? 3'h0 : _T_2683_param; // @[DCache.scala 551:8:chipyard.TestHarness.RocketConfig.fir@217366.4]
  assign _T_2684_size = _T_2679 ? _T_1687_size : _T_2683_size; // @[DCache.scala 551:8:chipyard.TestHarness.RocketConfig.fir@217366.4]
  assign _T_2684_source = _T_2679 ? a_source : _T_2683_source; // @[DCache.scala 551:8:chipyard.TestHarness.RocketConfig.fir@217366.4]
  assign _T_2684_address = _T_2679 ? s2_req_addr[31:0] : _T_2683_address; // @[DCache.scala 551:8:chipyard.TestHarness.RocketConfig.fir@217366.4]
  assign _T_2684_mask = _T_2679 ? get_mask : _T_2683_mask; // @[DCache.scala 551:8:chipyard.TestHarness.RocketConfig.fir@217366.4]
  assign _T_2684_data = _T_2679 ? 64'h0 : _T_2683_data; // @[DCache.scala 551:8:chipyard.TestHarness.RocketConfig.fir@217366.4]
  assign _T_2614_param = {{1'd0}, s2_grow_param}; // @[Edges.scala 328:17:chipyard.TestHarness.RocketConfig.fir@217287.4 Edges.scala 330:15:chipyard.TestHarness.RocketConfig.fir@217290.4]
  assign _T_2687 = 2'h1 << a_source; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@217370.4]
  assign a_sel = _T_2687[1]; // @[DCache.scala 572:66:chipyard.TestHarness.RocketConfig.fir@217372.4]
  assign _T_2689 = auto_out_a_ready & tl_out_a_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@217373.4]
  assign _GEN_143 = a_sel | uncachedInFlight_0; // @[DCache.scala 576:18:chipyard.TestHarness.RocketConfig.fir@217377.8]
  assign _T_2696 = 27'hfff << auto_out_d_bits_size; // @[package.scala 189:77:chipyard.TestHarness.RocketConfig.fir@217392.4]
  assign _T_2698 = ~_T_2696[11:0]; // @[package.scala 189:46:chipyard.TestHarness.RocketConfig.fir@217394.4]
  assign _T_2701 = auto_out_d_bits_opcode[0] ? _T_2698[11:3] : 9'h0; // @[Edges.scala 222:14:chipyard.TestHarness.RocketConfig.fir@217397.4]
  assign _T_2704 = _T_2702 - 9'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@217400.4]
  assign _T_2705 = _T_2702 == 9'h1; // @[Edges.scala 233:25:chipyard.TestHarness.RocketConfig.fir@217402.4]
  assign _T_2706 = _T_2701 == 9'h0; // @[Edges.scala 233:47:chipyard.TestHarness.RocketConfig.fir@217403.4]
  assign d_last = _T_2705 | _T_2706; // @[Edges.scala 233:37:chipyard.TestHarness.RocketConfig.fir@217404.4]
  assign d_done = d_last & _T_2750; // @[Edges.scala 234:22:chipyard.TestHarness.RocketConfig.fir@217405.4]
  assign _T_2707 = ~_T_2704; // @[Edges.scala 235:27:chipyard.TestHarness.RocketConfig.fir@217406.4]
  assign _T_2708 = _T_2701 & _T_2707; // @[Edges.scala 235:25:chipyard.TestHarness.RocketConfig.fir@217407.4]
  assign d_address_inc = {_T_2708, 3'h0}; // @[Edges.scala 270:29:chipyard.TestHarness.RocketConfig.fir@217412.4]
  assign _T_2717 = ~grantIsUncached; // @[DCache.scala 604:129:chipyard.TestHarness.RocketConfig.fir@217422.4]
  assign grantIsVoluntary = auto_out_d_bits_opcode == 3'h6; // @[DCache.scala 606:32:chipyard.TestHarness.RocketConfig.fir@217443.4]
  assign _T_2738 = blockProbeAfterGrantCount - 3'h1; // @[DCache.scala 610:97:chipyard.TestHarness.RocketConfig.fir@217450.6]
  assign _T_2747 = 2'h1 << auto_out_d_bits_source; // @[OneHot.scala 65:12:chipyard.TestHarness.RocketConfig.fir@217463.4]
  assign uncachedRespIdxOH = _T_2747[1]; // @[DCache.scala 613:90:chipyard.TestHarness.RocketConfig.fir@217465.4]
  assign _T_2752 = cached_grant_wait | reset; // @[DCache.scala 618:13:chipyard.TestHarness.RocketConfig.fir@217473.8]
  assign _T_2753 = ~_T_2752; // @[DCache.scala 618:13:chipyard.TestHarness.RocketConfig.fir@217474.8]
  assign _T_2755 = uncachedRespIdxOH & d_last; // @[DCache.scala 627:17:chipyard.TestHarness.RocketConfig.fir@217489.10]
  assign _T_2757 = uncachedInFlight_0 | reset; // @[DCache.scala 628:17:chipyard.TestHarness.RocketConfig.fir@217492.12]
  assign _T_2758 = ~_T_2757; // @[DCache.scala 628:17:chipyard.TestHarness.RocketConfig.fir@217493.12]
  assign dontCareBits = {s1_paddr[31:3], 3'h0}; // @[DCache.scala 642:55:chipyard.TestHarness.RocketConfig.fir@217508.12]
  assign _GEN_347 = {{29'd0}, uncachedReqs_0_addr[2:0]}; // @[DCache.scala 643:26:chipyard.TestHarness.RocketConfig.fir@217510.12]
  assign _T_2762 = dontCareBits | _GEN_347; // @[DCache.scala 643:26:chipyard.TestHarness.RocketConfig.fir@217510.12]
  assign _T_2764 = release_ack_wait | reset; // @[DCache.scala 649:13:chipyard.TestHarness.RocketConfig.fir@217518.12]
  assign _T_2765 = ~_T_2764; // @[DCache.scala 649:13:chipyard.TestHarness.RocketConfig.fir@217519.12]
  assign _GEN_195 = grantIsVoluntary ? 1'h0 : release_ack_wait; // @[DCache.scala 648:36:chipyard.TestHarness.RocketConfig.fir@217516.10]
  assign _GEN_204 = grantIsUncached ? release_ack_wait : _GEN_195; // @[DCache.scala 625:35:chipyard.TestHarness.RocketConfig.fir@217487.8]
  assign _GEN_208 = grantIsCached & d_last; // @[DCache.scala 616:26:chipyard.TestHarness.RocketConfig.fir@217470.6]
  assign _GEN_217 = grantIsCached ? release_ack_wait : _GEN_204; // @[DCache.scala 616:26:chipyard.TestHarness.RocketConfig.fir@217470.6]
  assign _GEN_230 = _T_2750 ? _GEN_217 : release_ack_wait; // @[DCache.scala 615:26:chipyard.TestHarness.RocketConfig.fir@217469.4]
  assign _T_2766 = auto_out_d_valid & d_first; // @[DCache.scala 655:36:chipyard.TestHarness.RocketConfig.fir@217527.4]
  assign _T_2767 = _T_2766 & grantIsCached; // @[DCache.scala 655:47:chipyard.TestHarness.RocketConfig.fir@217528.4]
  assign _T_2768 = _T_2767 & canAcceptCachedGrant; // @[DCache.scala 655:64:chipyard.TestHarness.RocketConfig.fir@217529.4]
  assign tl_out__e_valid = _T_2781 ? 1'h0 : _T_2768; // @[DCache.scala 663:51:chipyard.TestHarness.RocketConfig.fir@217552.4]
  assign _T_2770 = auto_out_e_ready & tl_out__e_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@217535.4]
  assign _T_2772 = _T_2750 & d_first; // @[DCache.scala 657:47:chipyard.TestHarness.RocketConfig.fir@217537.4]
  assign _T_2773 = _T_2772 & grantIsCached; // @[DCache.scala 657:58:chipyard.TestHarness.RocketConfig.fir@217538.4]
  assign _T_2774 = _T_2770 == _T_2773; // @[DCache.scala 657:26:chipyard.TestHarness.RocketConfig.fir@217539.4]
  assign _T_2776 = _T_2774 | reset; // @[DCache.scala 657:9:chipyard.TestHarness.RocketConfig.fir@217541.4]
  assign _T_2777 = ~_T_2776; // @[DCache.scala 657:9:chipyard.TestHarness.RocketConfig.fir@217542.4]
  assign _T_2778 = auto_out_d_valid & grantIsRefill; // @[DCache.scala 662:44:chipyard.TestHarness.RocketConfig.fir@217547.4]
  assign _T_2779 = _T_2778 & canAcceptCachedGrant; // @[DCache.scala 662:61:chipyard.TestHarness.RocketConfig.fir@217548.4]
  assign _T_2783 = {s2_vaddr[39:6], 6'h0}; // @[DCache.scala 669:57:chipyard.TestHarness.RocketConfig.fir@217558.4]
  assign _GEN_348 = {{28'd0}, d_address_inc}; // @[DCache.scala 669:67:chipyard.TestHarness.RocketConfig.fir@217559.4]
  assign _T_2784 = _T_2783 | _GEN_348; // @[DCache.scala 669:67:chipyard.TestHarness.RocketConfig.fir@217559.4]
  assign _T_2787 = grantIsCached & d_done; // @[DCache.scala 682:43:chipyard.TestHarness.RocketConfig.fir@217567.4]
  assign _T_2788 = ~auto_out_d_bits_denied; // @[DCache.scala 682:56:chipyard.TestHarness.RocketConfig.fir@217568.4]
  assign _T_2846 = {s2_write,_T_543,auto_out_d_bits_param}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@217631.4]
  assign _T_2855 = 4'h1 == _T_2846; // @[Mux.scala 80:60:chipyard.TestHarness.RocketConfig.fir@217640.4]
  assign _T_2856 = _T_2855 ? 2'h1 : 2'h0; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217641.4]
  assign _T_2857 = 4'h0 == _T_2846; // @[Mux.scala 80:60:chipyard.TestHarness.RocketConfig.fir@217642.4]
  assign _T_2858 = _T_2857 ? 2'h2 : _T_2856; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217643.4]
  assign _T_2859 = 4'h4 == _T_2846; // @[Mux.scala 80:60:chipyard.TestHarness.RocketConfig.fir@217644.4]
  assign _T_2860 = _T_2859 ? 2'h2 : _T_2858; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217645.4]
  assign _T_2861 = 4'hc == _T_2846; // @[Mux.scala 80:60:chipyard.TestHarness.RocketConfig.fir@217646.4]
  assign _T_2862 = _T_2861 ? 2'h3 : _T_2860; // @[Mux.scala 80:57:chipyard.TestHarness.RocketConfig.fir@217647.4]
  assign _GEN_233 = auto_out_d_valid ? 1'h0 : _GEN_31; // @[DCache.scala 696:29:chipyard.TestHarness.RocketConfig.fir@217663.6]
  assign _GEN_234 = auto_out_d_valid | _T_2779; // @[DCache.scala 696:29:chipyard.TestHarness.RocketConfig.fir@217663.6]
  assign _GEN_235 = auto_out_d_valid ? 1'h0 : 1'h1; // @[DCache.scala 696:29:chipyard.TestHarness.RocketConfig.fir@217663.6]
  assign _T_2876 = ~block_probe_for_core_progress; // @[DCache.scala 710:48:chipyard.TestHarness.RocketConfig.fir@217681.4]
  assign _T_2877 = _T_2876 | lrscBackingOff; // @[DCache.scala 710:79:chipyard.TestHarness.RocketConfig.fir@217682.4]
  assign _T_2878 = auto_out_b_valid & _T_2877; // @[DCache.scala 710:44:chipyard.TestHarness.RocketConfig.fir@217683.4]
  assign _T_2886 = {io_cpu_req_bits_addr[39:32],auto_out_b_bits_address}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@217695.4]
  assign _T_2897 = _T_2895 - 9'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@217709.4]
  assign _T_2900 = ~_T_2897; // @[Edges.scala 235:27:chipyard.TestHarness.RocketConfig.fir@217715.4]
  assign c_count = _T_2894 & _T_2900; // @[Edges.scala 235:25:chipyard.TestHarness.RocketConfig.fir@217716.4]
  assign _T_2906 = ~_T_2887; // @[DCache.scala 723:47:chipyard.TestHarness.RocketConfig.fir@217731.4]
  assign releaseRejected = s2_release_data_valid & _T_2906; // @[DCache.scala 723:44:chipyard.TestHarness.RocketConfig.fir@217732.4]
  assign _T_2903 = ~releaseRejected; // @[DCache.scala 722:67:chipyard.TestHarness.RocketConfig.fir@217726.4]
  assign _T_2908 = {1'h0,c_count}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@217734.4]
  assign _T_2909 = {1'h0,s2_release_data_valid}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@217735.4]
  assign _GEN_349 = {{1'd0}, s1_release_data_valid}; // @[DCache.scala 724:101:chipyard.TestHarness.RocketConfig.fir@217736.4]
  assign _T_2911 = _GEN_349 + _T_2909; // @[DCache.scala 724:101:chipyard.TestHarness.RocketConfig.fir@217737.4]
  assign _T_2912 = releaseRejected ? 2'h0 : _T_2911; // @[DCache.scala 724:52:chipyard.TestHarness.RocketConfig.fir@217738.4]
  assign _GEN_350 = {{8'd0}, _T_2912}; // @[DCache.scala 724:47:chipyard.TestHarness.RocketConfig.fir@217739.4]
  assign releaseDataBeat = _T_2908 + _GEN_350; // @[DCache.scala 724:47:chipyard.TestHarness.RocketConfig.fir@217740.4]
  assign _T_2917 = s2_valid_flush_line | s2_flush_valid; // @[DCache.scala 737:34:chipyard.TestHarness.RocketConfig.fir@217778.6]
  assign _T_2918 = _T_2917 | io_cpu_s2_nack; // @[DCache.scala 737:52:chipyard.TestHarness.RocketConfig.fir@217779.6]
  assign _T_2920 = _T_2918 | reset; // @[DCache.scala 737:13:chipyard.TestHarness.RocketConfig.fir@217781.6]
  assign _T_2921 = ~_T_2920; // @[DCache.scala 737:13:chipyard.TestHarness.RocketConfig.fir@217782.6]
  assign discard_line = s2_valid_flush_line & s2_req_size[1]; // @[DCache.scala 738:46:chipyard.TestHarness.RocketConfig.fir@217788.6]
  assign _T_2926 = ~discard_line; // @[DCache.scala 739:47:chipyard.TestHarness.RocketConfig.fir@217792.6]
  assign _T_2927 = s2_victim_dirty & _T_2926; // @[DCache.scala 739:44:chipyard.TestHarness.RocketConfig.fir@217793.6]
  assign _T_2928 = _T_2927 ? 3'h1 : 3'h6; // @[DCache.scala 739:27:chipyard.TestHarness.RocketConfig.fir@217794.6]
  assign _T_2930 = {s2_victim_tag,s2_req_addr[11:6]}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@217797.6]
  assign res_2_address = {_T_2930, 6'h0}; // @[DCache.scala 740:96:chipyard.TestHarness.RocketConfig.fir@217798.6]
  assign _GEN_243 = s2_want_victimize ? _T_2928 : release_state; // @[DCache.scala 736:25:chipyard.TestHarness.RocketConfig.fir@217777.4]
  assign _T_2933 = releaseDone ? 3'h7 : 3'h3; // @[DCache.scala 751:29:chipyard.TestHarness.RocketConfig.fir@217821.12]
  assign _T_2935 = releaseDone ? 3'h0 : 3'h5; // @[DCache.scala 755:29:chipyard.TestHarness.RocketConfig.fir@217828.12]
  assign _GEN_254 = _T_2932 ? s2_report_param : 3'h5; // @[DCache.scala 748:45:chipyard.TestHarness.RocketConfig.fir@217818.10]
  assign _GEN_260 = _T_2932 ? _T_2933 : _T_2935; // @[DCache.scala 748:45:chipyard.TestHarness.RocketConfig.fir@217818.10]
  assign _GEN_262 = s2_prb_ack_data ? 3'h2 : _GEN_260; // @[DCache.scala 746:36:chipyard.TestHarness.RocketConfig.fir@217813.8]
  assign _GEN_265 = s2_prb_ack_data ? 3'h5 : _GEN_254; // @[DCache.scala 746:36:chipyard.TestHarness.RocketConfig.fir@217813.8]
  assign _GEN_272 = s2_meta_error ? 3'h4 : _GEN_262; // @[DCache.scala 744:28:chipyard.TestHarness.RocketConfig.fir@217809.6]
  assign _GEN_275 = s2_meta_error ? 3'h5 : _GEN_265; // @[DCache.scala 744:28:chipyard.TestHarness.RocketConfig.fir@217809.6]
  assign _GEN_283 = s2_probe ? _GEN_272 : _GEN_243; // @[DCache.scala 742:21:chipyard.TestHarness.RocketConfig.fir@217805.4]
  assign _GEN_286 = s2_probe ? _GEN_275 : 3'h5; // @[DCache.scala 742:21:chipyard.TestHarness.RocketConfig.fir@217805.4]
  assign _T_2936 = release_state == 3'h4; // @[DCache.scala 759:25:chipyard.TestHarness.RocketConfig.fir@217835.4]
  assign _T_2939 = {io_cpu_req_bits_addr[39:32],probe_bits_address}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@217841.6]
  assign _GEN_293 = metaArb_io_in_6_ready ? 3'h0 : _GEN_283; // @[DCache.scala 763:37:chipyard.TestHarness.RocketConfig.fir@217843.6]
  assign _GEN_294 = metaArb_io_in_6_ready | _T_17; // @[DCache.scala 763:37:chipyard.TestHarness.RocketConfig.fir@217843.6]
  assign _GEN_298 = _T_2936 ? _GEN_293 : _GEN_283; // @[DCache.scala 759:44:chipyard.TestHarness.RocketConfig.fir@217836.4]
  assign _GEN_300 = releaseDone ? 3'h0 : _GEN_298; // @[DCache.scala 770:26:chipyard.TestHarness.RocketConfig.fir@217851.6]
  assign _GEN_302 = _T_2940 ? _GEN_300 : _GEN_298; // @[DCache.scala 768:47:chipyard.TestHarness.RocketConfig.fir@217849.4]
  assign _GEN_306 = _T_2941 ? s2_report_param : _GEN_286; // @[DCache.scala 772:48:chipyard.TestHarness.RocketConfig.fir@217856.4]
  assign _GEN_315 = _T_2942 ? s2_report_param : _GEN_306; // @[DCache.scala 777:48:chipyard.TestHarness.RocketConfig.fir@217864.4]
  assign _T_2965 = _T_2887 & c_first; // @[DCache.scala 790:29:chipyard.TestHarness.RocketConfig.fir@217907.6]
  assign _GEN_323 = _T_2965 | _GEN_230; // @[DCache.scala 790:41:chipyard.TestHarness.RocketConfig.fir@217908.6]
  assign newCoh_state = _T_2945 ? voluntaryNewCoh_state : probeNewCoh_state; // @[DCache.scala 781:81:chipyard.TestHarness.RocketConfig.fir@217873.4]
  assign _T_2967 = releaseDataBeat < 10'h8; // @[DCache.scala 801:60:chipyard.TestHarness.RocketConfig.fir@217918.4]
  assign _T_2970 = {probe_bits_address[11:6], 6'h0}; // @[DCache.scala 804:55:chipyard.TestHarness.RocketConfig.fir@217924.4]
  assign _T_2972 = {releaseDataBeat[2:0], 3'h0}; // @[DCache.scala 804:117:chipyard.TestHarness.RocketConfig.fir@217926.4]
  assign _GEN_352 = {{6'd0}, _T_2972}; // @[DCache.scala 804:72:chipyard.TestHarness.RocketConfig.fir@217927.4]
  assign _T_2977 = release_state == 3'h7; // @[package.scala 15:47:chipyard.TestHarness.RocketConfig.fir@217934.4]
  assign _T_2986 = metaArb_io_in_4_ready & metaArb_io_in_4_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@217952.4]
  assign _T_2993 = s1_valid | s2_valid; // @[DCache.scala 827:57:chipyard.TestHarness.RocketConfig.fir@217967.4]
  assign _T_2994 = _T_2993 | cached_grant_wait; // @[DCache.scala 827:94:chipyard.TestHarness.RocketConfig.fir@217968.4]
  assign _T_2996 = _T_2994 | _T_662; // @[DCache.scala 827:115:chipyard.TestHarness.RocketConfig.fir@217970.4]
  assign _T_2999 = tlb_io_req_valid; // @[DCache.scala 829:40:chipyard.TestHarness.RocketConfig.fir@217974.4]
  assign _T_3014 = _T_822 | reset; // @[DCache.scala 849:11:chipyard.TestHarness.RocketConfig.fir@218017.6]
  assign _T_3015 = ~_T_3014; // @[DCache.scala 849:11:chipyard.TestHarness.RocketConfig.fir@218018.6]
  assign _T_3022 = s2_req_addr[2] ? s2_data_corrected[63:32] : s2_data_corrected[31:0]; // @[AMOALU.scala 39:24:chipyard.TestHarness.RocketConfig.fir@218035.4]
  assign _T_3025 = s2_req_size == 2'h2; // @[AMOALU.scala 42:26:chipyard.TestHarness.RocketConfig.fir@218038.4]
  assign _T_3028 = s2_req_signed & _T_3022[31]; // @[AMOALU.scala 42:76:chipyard.TestHarness.RocketConfig.fir@218041.4]
  assign _T_3030 = _T_3028 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@218043.4]
  assign _T_3032 = _T_3025 ? _T_3030 : s2_data_corrected[63:32]; // @[AMOALU.scala 42:20:chipyard.TestHarness.RocketConfig.fir@218045.4]
  assign _T_3033 = {_T_3032,_T_3022}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@218046.4]
  assign _T_3037 = s2_req_addr[1] ? _T_3033[31:16] : _T_3033[15:0]; // @[AMOALU.scala 39:24:chipyard.TestHarness.RocketConfig.fir@218050.4]
  assign _T_3040 = s2_req_size == 2'h1; // @[AMOALU.scala 42:26:chipyard.TestHarness.RocketConfig.fir@218053.4]
  assign _T_3043 = s2_req_signed & _T_3037[15]; // @[AMOALU.scala 42:76:chipyard.TestHarness.RocketConfig.fir@218056.4]
  assign _T_3045 = _T_3043 ? 48'hffffffffffff : 48'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@218058.4]
  assign _T_3047 = _T_3040 ? _T_3045 : _T_3033[63:16]; // @[AMOALU.scala 42:20:chipyard.TestHarness.RocketConfig.fir@218060.4]
  assign _T_3048 = {_T_3047,_T_3037}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@218061.4]
  assign _T_3052 = s2_req_addr[0] ? _T_3048[15:8] : _T_3048[7:0]; // @[AMOALU.scala 39:24:chipyard.TestHarness.RocketConfig.fir@218065.4]
  assign _T_3054 = _T_422 ? 8'h0 : _T_3052; // @[AMOALU.scala 41:23:chipyard.TestHarness.RocketConfig.fir@218067.4]
  assign _T_3055 = s2_req_size == 2'h0; // @[AMOALU.scala 42:26:chipyard.TestHarness.RocketConfig.fir@218068.4]
  assign _T_3056 = _T_3055 | _T_422; // @[AMOALU.scala 42:38:chipyard.TestHarness.RocketConfig.fir@218069.4]
  assign _T_3058 = s2_req_signed & _T_3054[7]; // @[AMOALU.scala 42:76:chipyard.TestHarness.RocketConfig.fir@218071.4]
  assign _T_3060 = _T_3058 ? 56'hffffffffffffff : 56'h0; // @[Bitwise.scala 72:12:chipyard.TestHarness.RocketConfig.fir@218073.4]
  assign _T_3062 = _T_3056 ? _T_3060 : _T_3048[63:8]; // @[AMOALU.scala 42:20:chipyard.TestHarness.RocketConfig.fir@218075.4]
  assign _T_3063 = {_T_3062,_T_3054}; // @[Cat.scala 29:58:chipyard.TestHarness.RocketConfig.fir@218076.4]
  assign _GEN_353 = {{63'd0}, s2_sc_fail}; // @[DCache.scala 871:41:chipyard.TestHarness.RocketConfig.fir@218077.4]
  assign _GEN_341 = _T_3081 | resetting; // @[DCache.scala 905:27:chipyard.TestHarness.RocketConfig.fir@218110.4]
  assign flushCounterNext = flushCounter + 8'h1; // @[DCache.scala 907:39:chipyard.TestHarness.RocketConfig.fir@218114.4]
  assign flushDone = flushCounterNext[8:6] == 3'h4; // @[DCache.scala 908:57:chipyard.TestHarness.RocketConfig.fir@218116.4]
  assign _T_3087 = metaArb_io_in_5_ready & metaArb_io_in_5_valid; // @[Decoupled.scala 40:37:chipyard.TestHarness.RocketConfig.fir@218122.4]
  assign _T_3089 = _T_3087 & _T_294; // @[DCache.scala 912:45:chipyard.TestHarness.RocketConfig.fir@218124.4]
  assign _T_3090 = ~s2_flush_valid_pre_tag_ecc; // @[DCache.scala 912:67:chipyard.TestHarness.RocketConfig.fir@218125.4]
  assign _T_3091 = _T_3089 & _T_3090; // @[DCache.scala 912:64:chipyard.TestHarness.RocketConfig.fir@218126.4]
  assign _T_3093 = _T_3091 & _T_78; // @[DCache.scala 912:95:chipyard.TestHarness.RocketConfig.fir@218128.4]
  assign _T_3100 = {metaArb_io_in_5_bits_idx, 6'h0}; // @[DCache.scala 916:98:chipyard.TestHarness.RocketConfig.fir@218139.4]
  assign _GEN_343 = resetting ? flushCounterNext : {{1'd0}, flushCounter}; // @[DCache.scala 949:20:chipyard.TestHarness.RocketConfig.fir@218159.4]
  assign _T_3164 = _T_3162 - 9'h1; // @[Edges.scala 231:28:chipyard.TestHarness.RocketConfig.fir@218227.4]
  assign _T_3165 = _T_3162 == 9'h0; // @[Edges.scala 232:25:chipyard.TestHarness.RocketConfig.fir@218228.4]
  assign _T_3166 = _T_3162 == 9'h1; // @[Edges.scala 233:25:chipyard.TestHarness.RocketConfig.fir@218229.4]
  assign _T_3168 = _T_3166 | _T_2899; // @[Edges.scala 233:37:chipyard.TestHarness.RocketConfig.fir@218231.4]
  assign _T_3283 = ~grantIsCached; // @[DCache.scala 1025:35:chipyard.TestHarness.RocketConfig.fir@218365.4]
  assign auto_out_a_valid = s2_valid_uncached_pending | _T_2591; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@213925.4]
  assign auto_out_a_bits_opcode = _T_660 ? 3'h6 : _T_2684_opcode; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@213925.4]
  assign auto_out_a_bits_param = _T_660 ? _T_2614_param : _T_2684_param; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@213925.4]
  assign auto_out_a_bits_size = _T_660 ? 4'h6 : _T_2684_size; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@213925.4]
  assign auto_out_a_bits_source = _T_660 ? 1'h0 : _T_2684_source; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@213925.4]
  assign auto_out_a_bits_address = _T_660 ? acquire_address[31:0] : _T_2684_address; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@213925.4]
  assign auto_out_a_bits_mask = _T_660 ? 8'hff : _T_2684_mask; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@213925.4]
  assign auto_out_a_bits_data = _T_660 ? 64'h0 : _T_2684_data; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@213925.4]
  assign auto_out_b_ready = metaArb_io_in_6_ready & _T_2882; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@213925.4]
  assign auto_out_c_valid = _T_2941 | _GEN_301; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@213925.4]
  assign auto_out_c_bits_opcode = _T_2945 ? 3'h7 : _GEN_314; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@213925.4]
  assign auto_out_c_bits_param = _T_2945 ? s2_shrink_param : _GEN_315; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@213925.4]
  assign auto_out_c_bits_size = _T_2945 ? 4'h6 : probe_bits_size; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@213925.4]
  assign auto_out_c_bits_source = probe_bits_source; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@213925.4]
  assign auto_out_c_bits_address = probe_bits_address; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@213925.4]
  assign auto_out_c_bits_data = {_T_637,_T_634}; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@213925.4]
  assign auto_out_d_ready = _T_2867 ? 1'h0 : _GEN_232; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@213925.4]
  assign auto_out_e_valid = _T_2781 ? 1'h0 : _T_2768; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@213925.4]
  assign auto_out_e_bits_sink = auto_out_d_bits_sink; // @[LazyModule.scala 181:49:chipyard.TestHarness.RocketConfig.fir@213925.4]
  assign io_cpu_req_ready = _T_2867 ? _GEN_233 : _GEN_31; // @[DCache.scala 203:20:chipyard.TestHarness.RocketConfig.fir@214157.4 DCache.scala 218:64:chipyard.TestHarness.RocketConfig.fir@214267.6 DCache.scala 226:53:chipyard.TestHarness.RocketConfig.fir@214335.6 DCache.scala 234:98:chipyard.TestHarness.RocketConfig.fir@214356.6 DCache.scala 697:26:chipyard.TestHarness.RocketConfig.fir@217664.8]
  assign io_cpu_s2_nack = _T_821 & _T_822; // @[DCache.scala 394:18:chipyard.TestHarness.RocketConfig.fir@215221.4]
  assign io_cpu_resp_valid = s2_valid_hit_pre_data_ecc_and_waw | doUncachedResp; // @[DCache.scala 846:21:chipyard.TestHarness.RocketConfig.fir@218009.4]
  assign io_cpu_resp_bits_addr = doUncachedResp ? s2_uncached_resp_addr : s2_req_addr; // @[DCache.scala 817:20:chipyard.TestHarness.RocketConfig.fir@217956.4 DCache.scala 851:27:chipyard.TestHarness.RocketConfig.fir@218024.6]
  assign io_cpu_resp_bits_tag = s2_req_tag; // @[DCache.scala 817:20:chipyard.TestHarness.RocketConfig.fir@217956.4]
  assign io_cpu_resp_bits_cmd = s2_req_cmd; // @[DCache.scala 817:20:chipyard.TestHarness.RocketConfig.fir@217956.4]
  assign io_cpu_resp_bits_size = s2_req_size; // @[DCache.scala 817:20:chipyard.TestHarness.RocketConfig.fir@217956.4]
  assign io_cpu_resp_bits_signed = s2_req_signed; // @[DCache.scala 817:20:chipyard.TestHarness.RocketConfig.fir@217956.4]
  assign io_cpu_resp_bits_dprv = s2_req_dprv; // @[DCache.scala 817:20:chipyard.TestHarness.RocketConfig.fir@217956.4]
  assign io_cpu_resp_bits_data = _T_3063 | _GEN_353; // @[DCache.scala 817:20:chipyard.TestHarness.RocketConfig.fir@217956.4 DCache.scala 871:25:chipyard.TestHarness.RocketConfig.fir@218078.4]
  assign io_cpu_resp_bits_mask = 8'h0; // @[DCache.scala 817:20:chipyard.TestHarness.RocketConfig.fir@217956.4]
  assign io_cpu_resp_bits_replay = doUncachedResp; // @[DCache.scala 819:27:chipyard.TestHarness.RocketConfig.fir@217958.4 DCache.scala 850:29:chipyard.TestHarness.RocketConfig.fir@218023.6]
  assign io_cpu_resp_bits_has_data = _T_401 | _T_440; // @[DCache.scala 818:29:chipyard.TestHarness.RocketConfig.fir@217957.4]
  assign io_cpu_resp_bits_data_word_bypass = {_T_3032,_T_3022}; // @[DCache.scala 872:37:chipyard.TestHarness.RocketConfig.fir@218094.4]
  assign io_cpu_resp_bits_data_raw = {_T_637,_T_634}; // @[DCache.scala 873:29:chipyard.TestHarness.RocketConfig.fir@218095.4]
  assign io_cpu_resp_bits_store_data = pstore1_data; // @[DCache.scala 874:31:chipyard.TestHarness.RocketConfig.fir@218096.4]
  assign io_cpu_replay_next = _T_2750 & grantIsUncachedData; // @[DCache.scala 847:22:chipyard.TestHarness.RocketConfig.fir@218013.4]
  assign io_cpu_s2_xcpt_ma_ld = _T_3001 & s2_tlb_xcpt_ma_ld; // @[DCache.scala 830:18:chipyard.TestHarness.RocketConfig.fir@217996.4]
  assign io_cpu_s2_xcpt_ma_st = _T_3001 & s2_tlb_xcpt_ma_st; // @[DCache.scala 830:18:chipyard.TestHarness.RocketConfig.fir@217996.4]
  assign io_cpu_s2_xcpt_pf_ld = _T_3001 & s2_tlb_xcpt_pf_ld; // @[DCache.scala 830:18:chipyard.TestHarness.RocketConfig.fir@217996.4]
  assign io_cpu_s2_xcpt_pf_st = _T_3001 & s2_tlb_xcpt_pf_st; // @[DCache.scala 830:18:chipyard.TestHarness.RocketConfig.fir@217996.4]
  assign io_cpu_s2_xcpt_ae_ld = _T_3001 & s2_tlb_xcpt_ae_ld; // @[DCache.scala 830:18:chipyard.TestHarness.RocketConfig.fir@217996.4]
  assign io_cpu_s2_xcpt_ae_st = _T_3001 & s2_tlb_xcpt_ae_st; // @[DCache.scala 830:18:chipyard.TestHarness.RocketConfig.fir@217996.4]
  assign io_cpu_ordered = ~_T_2996; // @[DCache.scala 827:18:chipyard.TestHarness.RocketConfig.fir@217972.4]
  assign io_cpu_perf_release = _T_3168 & _T_2887; // @[DCache.scala 975:23:chipyard.TestHarness.RocketConfig.fir@218239.4]
  assign io_cpu_perf_grant = auto_out_d_valid & d_last; // @[DCache.scala 976:21:chipyard.TestHarness.RocketConfig.fir@218241.4]
  assign io_ptw_req_valid = tlb_io_ptw_req_valid; // @[DCache.scala 230:10:chipyard.TestHarness.RocketConfig.fir@214340.4]
  assign io_ptw_req_bits_bits_addr = tlb_io_ptw_req_bits_bits_addr; // @[DCache.scala 230:10:chipyard.TestHarness.RocketConfig.fir@214340.4]
  assign tlb_clock = gated_clock; // @[:chipyard.TestHarness.RocketConfig.fir@213930.4]
  assign tlb_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@213931.4]
  assign tlb_io_req_valid = s1_valid_masked & s1_cmd_uses_tlb; // @[DCache.scala 232:20:chipyard.TestHarness.RocketConfig.fir@214348.4]
  assign tlb_io_req_bits_vaddr = s1_tlb_req_vaddr; // @[DCache.scala 233:19:chipyard.TestHarness.RocketConfig.fir@214349.4]
  assign tlb_io_req_bits_passthrough = s1_tlb_req_passthrough; // @[DCache.scala 233:19:chipyard.TestHarness.RocketConfig.fir@214349.4]
  assign tlb_io_req_bits_size = s1_tlb_req_size; // @[DCache.scala 233:19:chipyard.TestHarness.RocketConfig.fir@214349.4]
  assign tlb_io_req_bits_cmd = s1_tlb_req_cmd; // @[DCache.scala 233:19:chipyard.TestHarness.RocketConfig.fir@214349.4]
  assign tlb_io_sfence_valid = s1_valid_masked & s1_sfence; // @[DCache.scala 237:23:chipyard.TestHarness.RocketConfig.fir@214368.4]
  assign tlb_io_sfence_bits_rs1 = s1_req_size[0]; // @[DCache.scala 238:26:chipyard.TestHarness.RocketConfig.fir@214370.4]
  assign tlb_io_sfence_bits_rs2 = s1_req_size[1]; // @[DCache.scala 239:26:chipyard.TestHarness.RocketConfig.fir@214372.4]
  assign tlb_io_sfence_bits_addr = s1_req_addr[38:0]; // @[DCache.scala 241:27:chipyard.TestHarness.RocketConfig.fir@214374.4]
  assign tlb_io_ptw_req_ready = io_ptw_req_ready; // @[DCache.scala 230:10:chipyard.TestHarness.RocketConfig.fir@214340.4]
  assign tlb_io_ptw_resp_valid = io_ptw_resp_valid; // @[DCache.scala 230:10:chipyard.TestHarness.RocketConfig.fir@214340.4]
  assign tlb_io_ptw_resp_bits_ae = io_ptw_resp_bits_ae; // @[DCache.scala 230:10:chipyard.TestHarness.RocketConfig.fir@214340.4]
  assign tlb_io_ptw_resp_bits_pte_ppn = io_ptw_resp_bits_pte_ppn; // @[DCache.scala 230:10:chipyard.TestHarness.RocketConfig.fir@214340.4]
  assign tlb_io_ptw_resp_bits_pte_d = io_ptw_resp_bits_pte_d; // @[DCache.scala 230:10:chipyard.TestHarness.RocketConfig.fir@214340.4]
  assign tlb_io_ptw_resp_bits_pte_a = io_ptw_resp_bits_pte_a; // @[DCache.scala 230:10:chipyard.TestHarness.RocketConfig.fir@214340.4]
  assign tlb_io_ptw_resp_bits_pte_g = io_ptw_resp_bits_pte_g; // @[DCache.scala 230:10:chipyard.TestHarness.RocketConfig.fir@214340.4]
  assign tlb_io_ptw_resp_bits_pte_u = io_ptw_resp_bits_pte_u; // @[DCache.scala 230:10:chipyard.TestHarness.RocketConfig.fir@214340.4]
  assign tlb_io_ptw_resp_bits_pte_x = io_ptw_resp_bits_pte_x; // @[DCache.scala 230:10:chipyard.TestHarness.RocketConfig.fir@214340.4]
  assign tlb_io_ptw_resp_bits_pte_w = io_ptw_resp_bits_pte_w; // @[DCache.scala 230:10:chipyard.TestHarness.RocketConfig.fir@214340.4]
  assign tlb_io_ptw_resp_bits_pte_r = io_ptw_resp_bits_pte_r; // @[DCache.scala 230:10:chipyard.TestHarness.RocketConfig.fir@214340.4]
  assign tlb_io_ptw_resp_bits_pte_v = io_ptw_resp_bits_pte_v; // @[DCache.scala 230:10:chipyard.TestHarness.RocketConfig.fir@214340.4]
  assign tlb_io_ptw_resp_bits_level = io_ptw_resp_bits_level; // @[DCache.scala 230:10:chipyard.TestHarness.RocketConfig.fir@214340.4]
  assign tlb_io_ptw_resp_bits_homogeneous = io_ptw_resp_bits_homogeneous; // @[DCache.scala 230:10:chipyard.TestHarness.RocketConfig.fir@214340.4]
  assign tlb_io_ptw_ptbr_mode = io_ptw_ptbr_mode; // @[DCache.scala 230:10:chipyard.TestHarness.RocketConfig.fir@214340.4]
  assign tlb_io_ptw_status_debug = io_ptw_status_debug; // @[DCache.scala 230:10:chipyard.TestHarness.RocketConfig.fir@214340.4]
  assign tlb_io_ptw_status_dprv = io_ptw_status_dprv; // @[DCache.scala 230:10:chipyard.TestHarness.RocketConfig.fir@214340.4]
  assign tlb_io_ptw_status_mxr = io_ptw_status_mxr; // @[DCache.scala 230:10:chipyard.TestHarness.RocketConfig.fir@214340.4]
  assign tlb_io_ptw_status_sum = io_ptw_status_sum; // @[DCache.scala 230:10:chipyard.TestHarness.RocketConfig.fir@214340.4]
  assign tlb_io_ptw_pmp_0_cfg_l = io_ptw_pmp_0_cfg_l; // @[DCache.scala 230:10:chipyard.TestHarness.RocketConfig.fir@214340.4]
  assign tlb_io_ptw_pmp_0_cfg_a = io_ptw_pmp_0_cfg_a; // @[DCache.scala 230:10:chipyard.TestHarness.RocketConfig.fir@214340.4]
  assign tlb_io_ptw_pmp_0_cfg_x = io_ptw_pmp_0_cfg_x; // @[DCache.scala 230:10:chipyard.TestHarness.RocketConfig.fir@214340.4]
  assign tlb_io_ptw_pmp_0_cfg_w = io_ptw_pmp_0_cfg_w; // @[DCache.scala 230:10:chipyard.TestHarness.RocketConfig.fir@214340.4]
  assign tlb_io_ptw_pmp_0_cfg_r = io_ptw_pmp_0_cfg_r; // @[DCache.scala 230:10:chipyard.TestHarness.RocketConfig.fir@214340.4]
  assign tlb_io_ptw_pmp_0_addr = io_ptw_pmp_0_addr; // @[DCache.scala 230:10:chipyard.TestHarness.RocketConfig.fir@214340.4]
  assign tlb_io_ptw_pmp_0_mask = io_ptw_pmp_0_mask; // @[DCache.scala 230:10:chipyard.TestHarness.RocketConfig.fir@214340.4]
  assign tlb_io_ptw_pmp_1_cfg_l = io_ptw_pmp_1_cfg_l; // @[DCache.scala 230:10:chipyard.TestHarness.RocketConfig.fir@214340.4]
  assign tlb_io_ptw_pmp_1_cfg_a = io_ptw_pmp_1_cfg_a; // @[DCache.scala 230:10:chipyard.TestHarness.RocketConfig.fir@214340.4]
  assign tlb_io_ptw_pmp_1_cfg_x = io_ptw_pmp_1_cfg_x; // @[DCache.scala 230:10:chipyard.TestHarness.RocketConfig.fir@214340.4]
  assign tlb_io_ptw_pmp_1_cfg_w = io_ptw_pmp_1_cfg_w; // @[DCache.scala 230:10:chipyard.TestHarness.RocketConfig.fir@214340.4]
  assign tlb_io_ptw_pmp_1_cfg_r = io_ptw_pmp_1_cfg_r; // @[DCache.scala 230:10:chipyard.TestHarness.RocketConfig.fir@214340.4]
  assign tlb_io_ptw_pmp_1_addr = io_ptw_pmp_1_addr; // @[DCache.scala 230:10:chipyard.TestHarness.RocketConfig.fir@214340.4]
  assign tlb_io_ptw_pmp_1_mask = io_ptw_pmp_1_mask; // @[DCache.scala 230:10:chipyard.TestHarness.RocketConfig.fir@214340.4]
  assign tlb_io_ptw_pmp_2_cfg_l = io_ptw_pmp_2_cfg_l; // @[DCache.scala 230:10:chipyard.TestHarness.RocketConfig.fir@214340.4]
  assign tlb_io_ptw_pmp_2_cfg_a = io_ptw_pmp_2_cfg_a; // @[DCache.scala 230:10:chipyard.TestHarness.RocketConfig.fir@214340.4]
  assign tlb_io_ptw_pmp_2_cfg_x = io_ptw_pmp_2_cfg_x; // @[DCache.scala 230:10:chipyard.TestHarness.RocketConfig.fir@214340.4]
  assign tlb_io_ptw_pmp_2_cfg_w = io_ptw_pmp_2_cfg_w; // @[DCache.scala 230:10:chipyard.TestHarness.RocketConfig.fir@214340.4]
  assign tlb_io_ptw_pmp_2_cfg_r = io_ptw_pmp_2_cfg_r; // @[DCache.scala 230:10:chipyard.TestHarness.RocketConfig.fir@214340.4]
  assign tlb_io_ptw_pmp_2_addr = io_ptw_pmp_2_addr; // @[DCache.scala 230:10:chipyard.TestHarness.RocketConfig.fir@214340.4]
  assign tlb_io_ptw_pmp_2_mask = io_ptw_pmp_2_mask; // @[DCache.scala 230:10:chipyard.TestHarness.RocketConfig.fir@214340.4]
  assign tlb_io_ptw_pmp_3_cfg_l = io_ptw_pmp_3_cfg_l; // @[DCache.scala 230:10:chipyard.TestHarness.RocketConfig.fir@214340.4]
  assign tlb_io_ptw_pmp_3_cfg_a = io_ptw_pmp_3_cfg_a; // @[DCache.scala 230:10:chipyard.TestHarness.RocketConfig.fir@214340.4]
  assign tlb_io_ptw_pmp_3_cfg_x = io_ptw_pmp_3_cfg_x; // @[DCache.scala 230:10:chipyard.TestHarness.RocketConfig.fir@214340.4]
  assign tlb_io_ptw_pmp_3_cfg_w = io_ptw_pmp_3_cfg_w; // @[DCache.scala 230:10:chipyard.TestHarness.RocketConfig.fir@214340.4]
  assign tlb_io_ptw_pmp_3_cfg_r = io_ptw_pmp_3_cfg_r; // @[DCache.scala 230:10:chipyard.TestHarness.RocketConfig.fir@214340.4]
  assign tlb_io_ptw_pmp_3_addr = io_ptw_pmp_3_addr; // @[DCache.scala 230:10:chipyard.TestHarness.RocketConfig.fir@214340.4]
  assign tlb_io_ptw_pmp_3_mask = io_ptw_pmp_3_mask; // @[DCache.scala 230:10:chipyard.TestHarness.RocketConfig.fir@214340.4]
  assign tlb_io_ptw_pmp_4_cfg_l = io_ptw_pmp_4_cfg_l; // @[DCache.scala 230:10:chipyard.TestHarness.RocketConfig.fir@214340.4]
  assign tlb_io_ptw_pmp_4_cfg_a = io_ptw_pmp_4_cfg_a; // @[DCache.scala 230:10:chipyard.TestHarness.RocketConfig.fir@214340.4]
  assign tlb_io_ptw_pmp_4_cfg_x = io_ptw_pmp_4_cfg_x; // @[DCache.scala 230:10:chipyard.TestHarness.RocketConfig.fir@214340.4]
  assign tlb_io_ptw_pmp_4_cfg_w = io_ptw_pmp_4_cfg_w; // @[DCache.scala 230:10:chipyard.TestHarness.RocketConfig.fir@214340.4]
  assign tlb_io_ptw_pmp_4_cfg_r = io_ptw_pmp_4_cfg_r; // @[DCache.scala 230:10:chipyard.TestHarness.RocketConfig.fir@214340.4]
  assign tlb_io_ptw_pmp_4_addr = io_ptw_pmp_4_addr; // @[DCache.scala 230:10:chipyard.TestHarness.RocketConfig.fir@214340.4]
  assign tlb_io_ptw_pmp_4_mask = io_ptw_pmp_4_mask; // @[DCache.scala 230:10:chipyard.TestHarness.RocketConfig.fir@214340.4]
  assign tlb_io_ptw_pmp_5_cfg_l = io_ptw_pmp_5_cfg_l; // @[DCache.scala 230:10:chipyard.TestHarness.RocketConfig.fir@214340.4]
  assign tlb_io_ptw_pmp_5_cfg_a = io_ptw_pmp_5_cfg_a; // @[DCache.scala 230:10:chipyard.TestHarness.RocketConfig.fir@214340.4]
  assign tlb_io_ptw_pmp_5_cfg_x = io_ptw_pmp_5_cfg_x; // @[DCache.scala 230:10:chipyard.TestHarness.RocketConfig.fir@214340.4]
  assign tlb_io_ptw_pmp_5_cfg_w = io_ptw_pmp_5_cfg_w; // @[DCache.scala 230:10:chipyard.TestHarness.RocketConfig.fir@214340.4]
  assign tlb_io_ptw_pmp_5_cfg_r = io_ptw_pmp_5_cfg_r; // @[DCache.scala 230:10:chipyard.TestHarness.RocketConfig.fir@214340.4]
  assign tlb_io_ptw_pmp_5_addr = io_ptw_pmp_5_addr; // @[DCache.scala 230:10:chipyard.TestHarness.RocketConfig.fir@214340.4]
  assign tlb_io_ptw_pmp_5_mask = io_ptw_pmp_5_mask; // @[DCache.scala 230:10:chipyard.TestHarness.RocketConfig.fir@214340.4]
  assign tlb_io_ptw_pmp_6_cfg_l = io_ptw_pmp_6_cfg_l; // @[DCache.scala 230:10:chipyard.TestHarness.RocketConfig.fir@214340.4]
  assign tlb_io_ptw_pmp_6_cfg_a = io_ptw_pmp_6_cfg_a; // @[DCache.scala 230:10:chipyard.TestHarness.RocketConfig.fir@214340.4]
  assign tlb_io_ptw_pmp_6_cfg_x = io_ptw_pmp_6_cfg_x; // @[DCache.scala 230:10:chipyard.TestHarness.RocketConfig.fir@214340.4]
  assign tlb_io_ptw_pmp_6_cfg_w = io_ptw_pmp_6_cfg_w; // @[DCache.scala 230:10:chipyard.TestHarness.RocketConfig.fir@214340.4]
  assign tlb_io_ptw_pmp_6_cfg_r = io_ptw_pmp_6_cfg_r; // @[DCache.scala 230:10:chipyard.TestHarness.RocketConfig.fir@214340.4]
  assign tlb_io_ptw_pmp_6_addr = io_ptw_pmp_6_addr; // @[DCache.scala 230:10:chipyard.TestHarness.RocketConfig.fir@214340.4]
  assign tlb_io_ptw_pmp_6_mask = io_ptw_pmp_6_mask; // @[DCache.scala 230:10:chipyard.TestHarness.RocketConfig.fir@214340.4]
  assign tlb_io_ptw_pmp_7_cfg_l = io_ptw_pmp_7_cfg_l; // @[DCache.scala 230:10:chipyard.TestHarness.RocketConfig.fir@214340.4]
  assign tlb_io_ptw_pmp_7_cfg_a = io_ptw_pmp_7_cfg_a; // @[DCache.scala 230:10:chipyard.TestHarness.RocketConfig.fir@214340.4]
  assign tlb_io_ptw_pmp_7_cfg_x = io_ptw_pmp_7_cfg_x; // @[DCache.scala 230:10:chipyard.TestHarness.RocketConfig.fir@214340.4]
  assign tlb_io_ptw_pmp_7_cfg_w = io_ptw_pmp_7_cfg_w; // @[DCache.scala 230:10:chipyard.TestHarness.RocketConfig.fir@214340.4]
  assign tlb_io_ptw_pmp_7_cfg_r = io_ptw_pmp_7_cfg_r; // @[DCache.scala 230:10:chipyard.TestHarness.RocketConfig.fir@214340.4]
  assign tlb_io_ptw_pmp_7_addr = io_ptw_pmp_7_addr; // @[DCache.scala 230:10:chipyard.TestHarness.RocketConfig.fir@214340.4]
  assign tlb_io_ptw_pmp_7_mask = io_ptw_pmp_7_mask; // @[DCache.scala 230:10:chipyard.TestHarness.RocketConfig.fir@214340.4]
  assign pma_checker_clock = gated_clock; // @[:chipyard.TestHarness.RocketConfig.fir@213934.4]
  assign pma_checker_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@213935.4]
  assign pma_checker_io_req_valid = 1'h0;
  assign pma_checker_io_req_bits_vaddr = 40'h0;
  assign pma_checker_io_req_bits_passthrough = 1'h1; // @[DCache.scala 247:39:chipyard.TestHarness.RocketConfig.fir@214384.4]
  assign pma_checker_io_req_bits_size = s1_req_size; // @[DCache.scala 248:27:chipyard.TestHarness.RocketConfig.fir@214385.4]
  assign pma_checker_io_req_bits_cmd = s1_req_cmd; // @[DCache.scala 248:27:chipyard.TestHarness.RocketConfig.fir@214385.4]
  assign pma_checker_io_sfence_valid = 1'h0;
  assign pma_checker_io_sfence_bits_rs1 = 1'h0;
  assign pma_checker_io_sfence_bits_rs2 = 1'h0;
  assign pma_checker_io_sfence_bits_addr = 39'h0;
  assign pma_checker_io_ptw_req_ready = 1'h0;
  assign pma_checker_io_ptw_resp_valid = 1'h0;
  assign pma_checker_io_ptw_resp_bits_ae = 1'h0;
  assign pma_checker_io_ptw_resp_bits_pte_ppn = 54'h0;
  assign pma_checker_io_ptw_resp_bits_pte_d = 1'h0;
  assign pma_checker_io_ptw_resp_bits_pte_a = 1'h0;
  assign pma_checker_io_ptw_resp_bits_pte_g = 1'h0;
  assign pma_checker_io_ptw_resp_bits_pte_u = 1'h0;
  assign pma_checker_io_ptw_resp_bits_pte_x = 1'h0;
  assign pma_checker_io_ptw_resp_bits_pte_w = 1'h0;
  assign pma_checker_io_ptw_resp_bits_pte_r = 1'h0;
  assign pma_checker_io_ptw_resp_bits_pte_v = 1'h0;
  assign pma_checker_io_ptw_resp_bits_level = 2'h0;
  assign pma_checker_io_ptw_resp_bits_homogeneous = 1'h0;
  assign pma_checker_io_ptw_ptbr_mode = 4'h0;
  assign pma_checker_io_ptw_status_debug = 1'h0;
  assign pma_checker_io_ptw_status_dprv = 2'h0;
  assign pma_checker_io_ptw_status_mxr = 1'h0;
  assign pma_checker_io_ptw_status_sum = 1'h0;
  assign pma_checker_io_ptw_pmp_0_cfg_l = 1'h0;
  assign pma_checker_io_ptw_pmp_0_cfg_a = 2'h0;
  assign pma_checker_io_ptw_pmp_0_cfg_x = 1'h0;
  assign pma_checker_io_ptw_pmp_0_cfg_w = 1'h0;
  assign pma_checker_io_ptw_pmp_0_cfg_r = 1'h0;
  assign pma_checker_io_ptw_pmp_0_addr = 30'h0;
  assign pma_checker_io_ptw_pmp_0_mask = 32'h0;
  assign pma_checker_io_ptw_pmp_1_cfg_l = 1'h0;
  assign pma_checker_io_ptw_pmp_1_cfg_a = 2'h0;
  assign pma_checker_io_ptw_pmp_1_cfg_x = 1'h0;
  assign pma_checker_io_ptw_pmp_1_cfg_w = 1'h0;
  assign pma_checker_io_ptw_pmp_1_cfg_r = 1'h0;
  assign pma_checker_io_ptw_pmp_1_addr = 30'h0;
  assign pma_checker_io_ptw_pmp_1_mask = 32'h0;
  assign pma_checker_io_ptw_pmp_2_cfg_l = 1'h0;
  assign pma_checker_io_ptw_pmp_2_cfg_a = 2'h0;
  assign pma_checker_io_ptw_pmp_2_cfg_x = 1'h0;
  assign pma_checker_io_ptw_pmp_2_cfg_w = 1'h0;
  assign pma_checker_io_ptw_pmp_2_cfg_r = 1'h0;
  assign pma_checker_io_ptw_pmp_2_addr = 30'h0;
  assign pma_checker_io_ptw_pmp_2_mask = 32'h0;
  assign pma_checker_io_ptw_pmp_3_cfg_l = 1'h0;
  assign pma_checker_io_ptw_pmp_3_cfg_a = 2'h0;
  assign pma_checker_io_ptw_pmp_3_cfg_x = 1'h0;
  assign pma_checker_io_ptw_pmp_3_cfg_w = 1'h0;
  assign pma_checker_io_ptw_pmp_3_cfg_r = 1'h0;
  assign pma_checker_io_ptw_pmp_3_addr = 30'h0;
  assign pma_checker_io_ptw_pmp_3_mask = 32'h0;
  assign pma_checker_io_ptw_pmp_4_cfg_l = 1'h0;
  assign pma_checker_io_ptw_pmp_4_cfg_a = 2'h0;
  assign pma_checker_io_ptw_pmp_4_cfg_x = 1'h0;
  assign pma_checker_io_ptw_pmp_4_cfg_w = 1'h0;
  assign pma_checker_io_ptw_pmp_4_cfg_r = 1'h0;
  assign pma_checker_io_ptw_pmp_4_addr = 30'h0;
  assign pma_checker_io_ptw_pmp_4_mask = 32'h0;
  assign pma_checker_io_ptw_pmp_5_cfg_l = 1'h0;
  assign pma_checker_io_ptw_pmp_5_cfg_a = 2'h0;
  assign pma_checker_io_ptw_pmp_5_cfg_x = 1'h0;
  assign pma_checker_io_ptw_pmp_5_cfg_w = 1'h0;
  assign pma_checker_io_ptw_pmp_5_cfg_r = 1'h0;
  assign pma_checker_io_ptw_pmp_5_addr = 30'h0;
  assign pma_checker_io_ptw_pmp_5_mask = 32'h0;
  assign pma_checker_io_ptw_pmp_6_cfg_l = 1'h0;
  assign pma_checker_io_ptw_pmp_6_cfg_a = 2'h0;
  assign pma_checker_io_ptw_pmp_6_cfg_x = 1'h0;
  assign pma_checker_io_ptw_pmp_6_cfg_w = 1'h0;
  assign pma_checker_io_ptw_pmp_6_cfg_r = 1'h0;
  assign pma_checker_io_ptw_pmp_6_addr = 30'h0;
  assign pma_checker_io_ptw_pmp_6_mask = 32'h0;
  assign pma_checker_io_ptw_pmp_7_cfg_l = 1'h0;
  assign pma_checker_io_ptw_pmp_7_cfg_a = 2'h0;
  assign pma_checker_io_ptw_pmp_7_cfg_x = 1'h0;
  assign pma_checker_io_ptw_pmp_7_cfg_w = 1'h0;
  assign pma_checker_io_ptw_pmp_7_cfg_r = 1'h0;
  assign pma_checker_io_ptw_pmp_7_addr = 30'h0;
  assign pma_checker_io_ptw_pmp_7_mask = 32'h0;
  assign MaxPeriodFibonacciLFSR_clock = gated_clock; // @[:chipyard.TestHarness.RocketConfig.fir@213940.4]
  assign MaxPeriodFibonacciLFSR_reset = reset; // @[:chipyard.TestHarness.RocketConfig.fir@213941.4]
  assign MaxPeriodFibonacciLFSR_io_increment = _T_2750 & _GEN_208; // @[PRNG.scala 85:23:chipyard.TestHarness.RocketConfig.fir@213959.4]
  assign metaArb_io_in_0_valid = resetting; // @[DCache.scala 944:26:chipyard.TestHarness.RocketConfig.fir@218144.4]
  assign metaArb_io_in_0_bits_addr = metaArb_io_in_5_bits_addr; // @[DCache.scala 945:25:chipyard.TestHarness.RocketConfig.fir@218145.4]
  assign metaArb_io_in_0_bits_idx = metaArb_io_in_5_bits_idx; // @[DCache.scala 945:25:chipyard.TestHarness.RocketConfig.fir@218145.4]
  assign metaArb_io_in_0_bits_data = {2'h0,s2_req_addr[31:12]}; // @[DCache.scala 945:25:chipyard.TestHarness.RocketConfig.fir@218145.4 DCache.scala 948:30:chipyard.TestHarness.RocketConfig.fir@218158.4]
  assign metaArb_io_in_1_valid = s2_meta_error & _T_833; // @[DCache.scala 399:26:chipyard.TestHarness.RocketConfig.fir@215237.4]
  assign metaArb_io_in_1_bits_addr = {io_cpu_req_bits_addr[39:12],_T_849}; // @[DCache.scala 403:30:chipyard.TestHarness.RocketConfig.fir@215257.4]
  assign metaArb_io_in_1_bits_idx = s2_probe ? probe_bits_address[11:6] : s2_vaddr[11:6]; // @[DCache.scala 402:29:chipyard.TestHarness.RocketConfig.fir@215253.4]
  assign metaArb_io_in_1_bits_data = {new_meta_coh_state,s2_meta_corrected_3_tag}; // @[DCache.scala 404:30:chipyard.TestHarness.RocketConfig.fir@215268.4]
  assign metaArb_io_in_2_valid = s2_valid_hit_pre_data_ecc_and_waw & s2_update_meta; // @[DCache.scala 411:26:chipyard.TestHarness.RocketConfig.fir@215270.4]
  assign metaArb_io_in_2_bits_addr = {io_cpu_req_bits_addr[39:12],s2_vaddr[11:0]}; // @[DCache.scala 415:30:chipyard.TestHarness.RocketConfig.fir@215279.4]
  assign metaArb_io_in_2_bits_idx = s2_vaddr[11:6]; // @[DCache.scala 414:29:chipyard.TestHarness.RocketConfig.fir@215275.4]
  assign metaArb_io_in_2_bits_way_en = s2_hit_valid ? s2_hit_way : _T_674; // @[DCache.scala 413:32:chipyard.TestHarness.RocketConfig.fir@215273.4]
  assign metaArb_io_in_2_bits_data = {s2_grow_param,s2_req_addr[31:12]}; // @[DCache.scala 416:30:chipyard.TestHarness.RocketConfig.fir@215286.4]
  assign metaArb_io_in_3_valid = _T_2787 & _T_2788; // @[DCache.scala 682:26:chipyard.TestHarness.RocketConfig.fir@217570.4]
  assign metaArb_io_in_3_bits_addr = {io_cpu_req_bits_addr[39:12],s2_vaddr[11:0]}; // @[DCache.scala 686:30:chipyard.TestHarness.RocketConfig.fir@217578.4]
  assign metaArb_io_in_3_bits_idx = s2_vaddr[11:6]; // @[DCache.scala 685:29:chipyard.TestHarness.RocketConfig.fir@217574.4]
  assign metaArb_io_in_3_bits_way_en = s2_hit_valid ? s2_hit_way : _T_674; // @[DCache.scala 684:32:chipyard.TestHarness.RocketConfig.fir@217572.4]
  assign metaArb_io_in_3_bits_data = {_T_2862,s2_req_addr[31:12]}; // @[DCache.scala 687:30:chipyard.TestHarness.RocketConfig.fir@217656.4]
  assign metaArb_io_in_4_valid = _T_2944 | _T_2977; // @[DCache.scala 808:26:chipyard.TestHarness.RocketConfig.fir@217936.4]
  assign metaArb_io_in_4_bits_addr = {io_cpu_req_bits_addr[39:12],probe_bits_address[11:0]}; // @[DCache.scala 812:30:chipyard.TestHarness.RocketConfig.fir@217944.4]
  assign metaArb_io_in_4_bits_idx = probe_bits_address[11:6]; // @[DCache.scala 811:29:chipyard.TestHarness.RocketConfig.fir@217940.4]
  assign metaArb_io_in_4_bits_way_en = _T_2945 ? s2_victim_way : s2_probe_way; // @[DCache.scala 810:32:chipyard.TestHarness.RocketConfig.fir@217938.4]
  assign metaArb_io_in_4_bits_data = {newCoh_state,probe_bits_address[31:12]}; // @[DCache.scala 813:30:chipyard.TestHarness.RocketConfig.fir@217951.4]
  assign metaArb_io_in_5_valid = 1'h0; // @[DCache.scala 913:26:chipyard.TestHarness.RocketConfig.fir@218134.4]
  assign metaArb_io_in_5_bits_addr = {io_cpu_req_bits_addr[39:12],_T_3100}; // @[DCache.scala 916:30:chipyard.TestHarness.RocketConfig.fir@218141.4]
  assign metaArb_io_in_5_bits_idx = flushCounter[5:0]; // @[DCache.scala 915:29:chipyard.TestHarness.RocketConfig.fir@218137.4]
  assign metaArb_io_in_6_valid = _T_2936 | _T_2878; // @[DCache.scala 710:26:chipyard.TestHarness.RocketConfig.fir@217684.4 DCache.scala 760:30:chipyard.TestHarness.RocketConfig.fir@217837.6]
  assign metaArb_io_in_6_bits_addr = _T_2936 ? _T_2939 : _T_2886; // @[DCache.scala 714:30:chipyard.TestHarness.RocketConfig.fir@217696.4 DCache.scala 762:34:chipyard.TestHarness.RocketConfig.fir@217842.6]
  assign metaArb_io_in_6_bits_idx = _T_2936 ? probe_bits_address[11:6] : auto_out_b_bits_address[11:6]; // @[DCache.scala 713:29:chipyard.TestHarness.RocketConfig.fir@217693.4 DCache.scala 761:33:chipyard.TestHarness.RocketConfig.fir@217839.6]
  assign metaArb_io_in_6_bits_way_en = metaArb_io_in_4_bits_way_en; // @[DCache.scala 715:32:chipyard.TestHarness.RocketConfig.fir@217697.4]
  assign metaArb_io_in_6_bits_data = metaArb_io_in_4_bits_data; // @[DCache.scala 716:30:chipyard.TestHarness.RocketConfig.fir@217698.4]
  assign metaArb_io_in_7_valid = io_cpu_req_valid; // @[DCache.scala 220:26:chipyard.TestHarness.RocketConfig.fir@214326.4]
  assign metaArb_io_in_7_bits_addr = io_cpu_req_bits_addr; // @[DCache.scala 223:30:chipyard.TestHarness.RocketConfig.fir@214330.4]
  assign metaArb_io_in_7_bits_idx = io_cpu_req_bits_addr[11:6]; // @[DCache.scala 222:29:chipyard.TestHarness.RocketConfig.fir@214329.4]
  assign metaArb_io_in_7_bits_way_en = metaArb_io_in_4_bits_way_en; // @[DCache.scala 224:32:chipyard.TestHarness.RocketConfig.fir@214331.4]
  assign metaArb_io_in_7_bits_data = metaArb_io_in_4_bits_data; // @[DCache.scala 225:30:chipyard.TestHarness.RocketConfig.fir@214332.4]
  assign tag_array_RW0_wdata_0 = metaArb_io_out_bits_data; // @[:chipyard.TestHarness.RocketConfig.fir@214409.8]
  assign tag_array_RW0_wdata_1 = metaArb_io_out_bits_data; // @[:chipyard.TestHarness.RocketConfig.fir@214412.8]
  assign tag_array_RW0_wdata_2 = metaArb_io_out_bits_data; // @[:chipyard.TestHarness.RocketConfig.fir@214415.8]
  assign tag_array_RW0_wdata_3 = metaArb_io_out_bits_data; // @[:chipyard.TestHarness.RocketConfig.fir@214418.8]
  assign tag_array_RW0_wmask_0 = metaArb_io_out_bits_way_en[0]; // @[:chipyard.TestHarness.RocketConfig.fir@214407.6 :chipyard.TestHarness.RocketConfig.fir@214409.8]
  assign tag_array_RW0_wmask_1 = metaArb_io_out_bits_way_en[1]; // @[:chipyard.TestHarness.RocketConfig.fir@214407.6 :chipyard.TestHarness.RocketConfig.fir@214412.8]
  assign tag_array_RW0_wmask_2 = metaArb_io_out_bits_way_en[2]; // @[:chipyard.TestHarness.RocketConfig.fir@214407.6 :chipyard.TestHarness.RocketConfig.fir@214415.8]
  assign tag_array_RW0_wmask_3 = metaArb_io_out_bits_way_en[3]; // @[:chipyard.TestHarness.RocketConfig.fir@214407.6 :chipyard.TestHarness.RocketConfig.fir@214418.8]
  assign data_clock = gated_clock; // @[:chipyard.TestHarness.RocketConfig.fir@213982.4]
  assign data_io_req_valid = dataArb_io_out_valid; // @[DCache.scala 133:15:chipyard.TestHarness.RocketConfig.fir@213991.4]
  assign data_io_req_bits_addr = dataArb_io_out_bits_addr; // @[DCache.scala 133:15:chipyard.TestHarness.RocketConfig.fir@213991.4]
  assign data_io_req_bits_write = dataArb_io_out_bits_write; // @[DCache.scala 133:15:chipyard.TestHarness.RocketConfig.fir@213991.4]
  assign data_io_req_bits_wdata = dataArb_io_out_bits_wdata; // @[DCache.scala 133:15:chipyard.TestHarness.RocketConfig.fir@213991.4]
  assign data_io_req_bits_eccMask = dataArb_io_out_bits_eccMask; // @[DCache.scala 133:15:chipyard.TestHarness.RocketConfig.fir@213991.4]
  assign data_io_req_bits_way_en = dataArb_io_out_bits_way_en; // @[DCache.scala 133:15:chipyard.TestHarness.RocketConfig.fir@213991.4]
  assign dataArb_io_in_0_valid = pstore_drain_structural | _T_1049; // @[DCache.scala 496:26:chipyard.TestHarness.RocketConfig.fir@215674.4]
  assign dataArb_io_in_0_bits_addr = _T_1133[11:0]; // @[DCache.scala 498:30:chipyard.TestHarness.RocketConfig.fir@215677.4]
  assign dataArb_io_in_0_bits_write = pstore_drain_structural | _T_1049; // @[DCache.scala 497:31:chipyard.TestHarness.RocketConfig.fir@215675.4]
  assign dataArb_io_in_0_bits_wdata = {_T_1149,_T_1146}; // @[DCache.scala 500:31:chipyard.TestHarness.RocketConfig.fir@215696.4]
  assign dataArb_io_in_0_bits_eccMask = {_T_1175,_T_1172}; // @[DCache.scala 502:33:chipyard.TestHarness.RocketConfig.fir@215724.4]
  assign dataArb_io_in_0_bits_way_en = pstore2_valid ? pstore2_way : pstore1_way; // @[DCache.scala 499:32:chipyard.TestHarness.RocketConfig.fir@215679.4]
  assign dataArb_io_in_1_valid = _T_2867 ? _GEN_234 : _T_2779; // @[DCache.scala 662:26:chipyard.TestHarness.RocketConfig.fir@217549.4 DCache.scala 698:32:chipyard.TestHarness.RocketConfig.fir@217665.8]
  assign dataArb_io_in_1_bits_addr = _T_2784[11:0]; // @[DCache.scala 669:32:chipyard.TestHarness.RocketConfig.fir@217560.4]
  assign dataArb_io_in_1_bits_write = _T_2867 ? _GEN_235 : 1'h1; // @[DCache.scala 668:33:chipyard.TestHarness.RocketConfig.fir@217556.4 DCache.scala 699:37:chipyard.TestHarness.RocketConfig.fir@217666.8]
  assign dataArb_io_in_1_bits_wdata = {_T_335,_T_332}; // @[DCache.scala 132:43:chipyard.TestHarness.RocketConfig.fir@213988.4 DCache.scala 671:33:chipyard.TestHarness.RocketConfig.fir@217562.4]
  assign dataArb_io_in_1_bits_eccMask = 8'hff; // @[DCache.scala 673:35:chipyard.TestHarness.RocketConfig.fir@217566.4]
  assign dataArb_io_in_1_bits_way_en = s2_hit_valid ? s2_hit_way : _T_674; // @[DCache.scala 670:34:chipyard.TestHarness.RocketConfig.fir@217561.4]
  assign dataArb_io_in_2_valid = inWriteback & _T_2967; // @[DCache.scala 801:26:chipyard.TestHarness.RocketConfig.fir@217920.4]
  assign dataArb_io_in_2_bits_addr = _T_2970 | _GEN_352; // @[DCache.scala 802:25:chipyard.TestHarness.RocketConfig.fir@217921.4 DCache.scala 804:30:chipyard.TestHarness.RocketConfig.fir@217928.4]
  assign dataArb_io_in_2_bits_wdata = dataArb_io_in_1_bits_wdata; // @[DCache.scala 132:43:chipyard.TestHarness.RocketConfig.fir@213989.4 DCache.scala 802:25:chipyard.TestHarness.RocketConfig.fir@217921.4]
  assign dataArb_io_in_2_bits_eccMask = dataArb_io_in_1_bits_eccMask; // @[DCache.scala 802:25:chipyard.TestHarness.RocketConfig.fir@217921.4]
  assign dataArb_io_in_3_valid = io_cpu_req_valid & res; // @[DCache.scala 212:26:chipyard.TestHarness.RocketConfig.fir@214256.4]
  assign dataArb_io_in_3_bits_addr = io_cpu_req_bits_addr[11:0]; // @[DCache.scala 213:25:chipyard.TestHarness.RocketConfig.fir@214257.4 DCache.scala 215:30:chipyard.TestHarness.RocketConfig.fir@214259.4]
  assign dataArb_io_in_3_bits_wdata = dataArb_io_in_1_bits_wdata; // @[DCache.scala 132:43:chipyard.TestHarness.RocketConfig.fir@213990.4 DCache.scala 213:25:chipyard.TestHarness.RocketConfig.fir@214257.4]
  assign dataArb_io_in_3_bits_eccMask = dataArb_io_in_1_bits_eccMask; // @[DCache.scala 213:25:chipyard.TestHarness.RocketConfig.fir@214257.4]
  assign amoalu_io_mask = pstore1_mask; // @[DCache.scala 880:20:chipyard.TestHarness.RocketConfig.fir@218101.4]
  assign amoalu_io_cmd = pstore1_cmd; // @[DCache.scala 881:19:chipyard.TestHarness.RocketConfig.fir@218102.4]
  assign amoalu_io_lhs = {_T_637,_T_634}; // @[DCache.scala 882:19:chipyard.TestHarness.RocketConfig.fir@218103.4]
  assign amoalu_io_rhs = pstore1_data; // @[DCache.scala 883:19:chipyard.TestHarness.RocketConfig.fir@218104.4]
  assign _GEN_356 = _T_2750 & grantIsCached; // @[DCache.scala 618:13:chipyard.TestHarness.RocketConfig.fir@217476.10]
  assign _GEN_359 = _T_2750 & _T_3283; // @[DCache.scala 628:17:chipyard.TestHarness.RocketConfig.fir@217495.14]
  assign _GEN_360 = _GEN_359 & grantIsUncached; // @[DCache.scala 628:17:chipyard.TestHarness.RocketConfig.fir@217495.14]
  assign _GEN_361 = _GEN_360 & _T_2755; // @[DCache.scala 628:17:chipyard.TestHarness.RocketConfig.fir@217495.14]
  assign _GEN_369 = _GEN_359 & _T_2717; // @[DCache.scala 649:13:chipyard.TestHarness.RocketConfig.fir@217521.14]
  assign _GEN_370 = _GEN_369 & grantIsVoluntary; // @[DCache.scala 649:13:chipyard.TestHarness.RocketConfig.fir@217521.14]
  assign tag_array_RW0_wmode = metaArb_io_out_bits_write;
  assign tag_array_RW0_clk = gated_clock;
  assign tag_array_RW0_en = s0_clk_en | _T_258;
  assign tag_array_RW0_addr = _T_258 ? _GEN_42 : _GEN_42;
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
  s1_valid = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  blockProbeAfterGrantCount = _RAND_1[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  lrscCount = _RAND_2[6:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  s1_probe = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  s2_probe = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  release_state = _RAND_5[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  release_ack_wait = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  release_ack_addr = _RAND_7[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  grantInProgress = _RAND_8[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  s2_valid = _RAND_9[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  probe_bits_param = _RAND_10[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  probe_bits_size = _RAND_11[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  probe_bits_source = _RAND_12[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  probe_bits_address = _RAND_13[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  s2_probe_state_state = _RAND_14[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  _T_2895 = _RAND_15[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  s2_release_data_valid = _RAND_16[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  s1_req_cmd = _RAND_17[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  s2_req_cmd = _RAND_18[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  pstore1_held = _RAND_19[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {2{`RANDOM}};
  pstore1_addr = _RAND_20[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {2{`RANDOM}};
  s1_req_addr = _RAND_21[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{`RANDOM}};
  pstore1_mask = _RAND_22[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{`RANDOM}};
  s1_req_size = _RAND_23[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{`RANDOM}};
  pstore2_valid = _RAND_24[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {2{`RANDOM}};
  pstore2_addr = _RAND_25[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{`RANDOM}};
  mask = _RAND_26[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {1{`RANDOM}};
  _T_384 = _RAND_27[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {1{`RANDOM}};
  s2_hit_state_state = _RAND_28[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {1{`RANDOM}};
  s1_req_tag = _RAND_29[6:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_30 = {1{`RANDOM}};
  s1_req_signed = _RAND_30[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_31 = {1{`RANDOM}};
  s1_req_dprv = _RAND_31[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_32 = {2{`RANDOM}};
  s1_tlb_req_vaddr = _RAND_32[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_33 = {1{`RANDOM}};
  s1_tlb_req_passthrough = _RAND_33[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_34 = {1{`RANDOM}};
  s1_tlb_req_size = _RAND_34[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_35 = {1{`RANDOM}};
  s1_tlb_req_cmd = _RAND_35[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_36 = {1{`RANDOM}};
  s1_flush_valid = _RAND_36[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_37 = {1{`RANDOM}};
  cached_grant_wait = _RAND_37[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_38 = {1{`RANDOM}};
  uncachedInFlight_0 = _RAND_38[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_39 = {2{`RANDOM}};
  uncachedReqs_0_addr = _RAND_39[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_40 = {1{`RANDOM}};
  uncachedReqs_0_tag = _RAND_40[6:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_41 = {1{`RANDOM}};
  uncachedReqs_0_size = _RAND_41[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_42 = {1{`RANDOM}};
  uncachedReqs_0_signed = _RAND_42[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_43 = {1{`RANDOM}};
  s1_did_read = _RAND_43[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_44 = {1{`RANDOM}};
  s2_hit_way = _RAND_44[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_45 = {1{`RANDOM}};
  _T_673 = _RAND_45[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_46 = {1{`RANDOM}};
  s2_probe_way = _RAND_46[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_47 = {2{`RANDOM}};
  s2_req_addr = _RAND_47[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_48 = {1{`RANDOM}};
  s2_req_tag = _RAND_48[6:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_49 = {1{`RANDOM}};
  s2_req_size = _RAND_49[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_50 = {1{`RANDOM}};
  s2_req_signed = _RAND_50[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_51 = {1{`RANDOM}};
  s2_req_dprv = _RAND_51[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_52 = {1{`RANDOM}};
  s2_tlb_xcpt_pf_ld = _RAND_52[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_53 = {1{`RANDOM}};
  s2_tlb_xcpt_pf_st = _RAND_53[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_54 = {1{`RANDOM}};
  s2_tlb_xcpt_ae_ld = _RAND_54[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_55 = {1{`RANDOM}};
  s2_tlb_xcpt_ae_st = _RAND_55[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_56 = {1{`RANDOM}};
  s2_tlb_xcpt_ma_ld = _RAND_56[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_57 = {1{`RANDOM}};
  s2_tlb_xcpt_ma_st = _RAND_57[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_58 = {1{`RANDOM}};
  s2_pma_cacheable = _RAND_58[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_59 = {2{`RANDOM}};
  s2_uncached_resp_addr = _RAND_59[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_60 = {2{`RANDOM}};
  _T_394 = _RAND_60[39:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_61 = {1{`RANDOM}};
  s2_flush_valid_pre_tag_ecc = _RAND_61[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_62 = {1{`RANDOM}};
  _T_466 = _RAND_62[21:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_63 = {1{`RANDOM}};
  blockUncachedGrant = _RAND_63[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_64 = {1{`RANDOM}};
  _T_2702 = _RAND_64[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_65 = {2{`RANDOM}};
  s2_data = _RAND_65[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_66 = {1{`RANDOM}};
  _T_678 = _RAND_66[19:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_67 = {1{`RANDOM}};
  _T_680_state = _RAND_67[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_68 = {2{`RANDOM}};
  lrscAddr = _RAND_68[33:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_69 = {1{`RANDOM}};
  pstore1_cmd = _RAND_69[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_70 = {2{`RANDOM}};
  pstore1_data = _RAND_70[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_71 = {1{`RANDOM}};
  pstore1_way = _RAND_71[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_72 = {1{`RANDOM}};
  pstore1_rmw = _RAND_72[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_73 = {1{`RANDOM}};
  _T_1017 = _RAND_73[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_74 = {1{`RANDOM}};
  pstore2_way = _RAND_74[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_75 = {1{`RANDOM}};
  _T_1073 = _RAND_75[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_76 = {1{`RANDOM}};
  _T_1078 = _RAND_76[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_77 = {1{`RANDOM}};
  _T_1083 = _RAND_77[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_78 = {1{`RANDOM}};
  _T_1088 = _RAND_78[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_79 = {1{`RANDOM}};
  _T_1093 = _RAND_79[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_80 = {1{`RANDOM}};
  _T_1098 = _RAND_80[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_81 = {1{`RANDOM}};
  _T_1103 = _RAND_81[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_82 = {1{`RANDOM}};
  _T_1108 = _RAND_82[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_83 = {1{`RANDOM}};
  s1_release_data_valid = _RAND_83[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_84 = {1{`RANDOM}};
  _T_3001 = _RAND_84[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_85 = {1{`RANDOM}};
  doUncachedResp = _RAND_85[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_86 = {1{`RANDOM}};
  resetting = _RAND_86[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_87 = {1{`RANDOM}};
  _T_3081 = _RAND_87[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_88 = {1{`RANDOM}};
  flushCounter = _RAND_88[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_89 = {1{`RANDOM}};
  _T_3162 = _RAND_89[8:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge gated_clock) begin
    if (reset) begin
      s1_valid <= 1'h0;
    end else begin
      s1_valid <= _T_16;
    end
    if (reset) begin
      blockProbeAfterGrantCount <= 3'h0;
    end else if (_T_2750) begin
      if (grantIsCached) begin
        if (d_last) begin
          blockProbeAfterGrantCount <= 3'h7;
        end else if (_T_2871) begin
          blockProbeAfterGrantCount <= _T_2738;
        end
      end else if (_T_2871) begin
        blockProbeAfterGrantCount <= _T_2738;
      end
    end else if (_T_2871) begin
      blockProbeAfterGrantCount <= _T_2738;
    end
    if (reset) begin
      lrscCount <= 7'h0;
    end else if (s1_probe) begin
      lrscCount <= 7'h0;
    end else if (_T_880) begin
      lrscCount <= 7'h3;
    end else if (_T_864) begin
      lrscCount <= _T_879;
    end else if (_T_872) begin
      if (s2_hit) begin
        lrscCount <= 7'h4f;
      end else begin
        lrscCount <= 7'h0;
      end
    end
    if (reset) begin
      s1_probe <= 1'h0;
    end else if (_T_2936) begin
      s1_probe <= _GEN_294;
    end else begin
      s1_probe <= _T_17;
    end
    if (reset) begin
      s2_probe <= 1'h0;
    end else begin
      s2_probe <= s1_probe;
    end
    if (reset) begin
      release_state <= 3'h0;
    end else if (_T_2986) begin
      release_state <= 3'h0;
    end else if (_T_2945) begin
      if (releaseDone) begin
        release_state <= 3'h6;
      end else if (_T_2942) begin
        if (releaseDone) begin
          release_state <= 3'h7;
        end else if (_T_2941) begin
          if (releaseDone) begin
            release_state <= 3'h7;
          end else if (_T_2940) begin
            if (releaseDone) begin
              release_state <= 3'h0;
            end else if (_T_2936) begin
              if (metaArb_io_in_6_ready) begin
                release_state <= 3'h0;
              end else if (s2_probe) begin
                if (s2_meta_error) begin
                  release_state <= 3'h4;
                end else if (s2_prb_ack_data) begin
                  release_state <= 3'h2;
                end else if (_T_2932) begin
                  if (releaseDone) begin
                    release_state <= 3'h7;
                  end else begin
                    release_state <= 3'h3;
                  end
                end else if (releaseDone) begin
                  release_state <= 3'h0;
                end else begin
                  release_state <= 3'h5;
                end
              end else if (s2_want_victimize) begin
                if (_T_2927) begin
                  release_state <= 3'h1;
                end else begin
                  release_state <= 3'h6;
                end
              end
            end else if (s2_probe) begin
              if (s2_meta_error) begin
                release_state <= 3'h4;
              end else if (s2_prb_ack_data) begin
                release_state <= 3'h2;
              end else if (_T_2932) begin
                if (releaseDone) begin
                  release_state <= 3'h7;
                end else begin
                  release_state <= 3'h3;
                end
              end else if (releaseDone) begin
                release_state <= 3'h0;
              end else begin
                release_state <= 3'h5;
              end
            end else if (s2_want_victimize) begin
              if (_T_2927) begin
                release_state <= 3'h1;
              end else begin
                release_state <= 3'h6;
              end
            end
          end else if (_T_2936) begin
            if (metaArb_io_in_6_ready) begin
              release_state <= 3'h0;
            end else if (s2_probe) begin
              if (s2_meta_error) begin
                release_state <= 3'h4;
              end else if (s2_prb_ack_data) begin
                release_state <= 3'h2;
              end else if (_T_2932) begin
                if (releaseDone) begin
                  release_state <= 3'h7;
                end else begin
                  release_state <= 3'h3;
                end
              end else if (releaseDone) begin
                release_state <= 3'h0;
              end else begin
                release_state <= 3'h5;
              end
            end else if (s2_want_victimize) begin
              if (_T_2927) begin
                release_state <= 3'h1;
              end else begin
                release_state <= 3'h6;
              end
            end
          end else if (s2_probe) begin
            if (s2_meta_error) begin
              release_state <= 3'h4;
            end else if (s2_prb_ack_data) begin
              release_state <= 3'h2;
            end else if (_T_2932) begin
              if (releaseDone) begin
                release_state <= 3'h7;
              end else begin
                release_state <= 3'h3;
              end
            end else if (releaseDone) begin
              release_state <= 3'h0;
            end else begin
              release_state <= 3'h5;
            end
          end else if (s2_want_victimize) begin
            if (_T_2927) begin
              release_state <= 3'h1;
            end else begin
              release_state <= 3'h6;
            end
          end
        end else if (_T_2940) begin
          if (releaseDone) begin
            release_state <= 3'h0;
          end else if (_T_2936) begin
            if (metaArb_io_in_6_ready) begin
              release_state <= 3'h0;
            end else begin
              release_state <= _GEN_283;
            end
          end else begin
            release_state <= _GEN_283;
          end
        end else if (_T_2936) begin
          if (metaArb_io_in_6_ready) begin
            release_state <= 3'h0;
          end else begin
            release_state <= _GEN_283;
          end
        end else begin
          release_state <= _GEN_283;
        end
      end else if (_T_2941) begin
        if (releaseDone) begin
          release_state <= 3'h7;
        end else if (_T_2940) begin
          if (releaseDone) begin
            release_state <= 3'h0;
          end else begin
            release_state <= _GEN_298;
          end
        end else begin
          release_state <= _GEN_298;
        end
      end else if (_T_2940) begin
        if (releaseDone) begin
          release_state <= 3'h0;
        end else begin
          release_state <= _GEN_298;
        end
      end else begin
        release_state <= _GEN_298;
      end
    end else if (_T_2942) begin
      if (releaseDone) begin
        release_state <= 3'h7;
      end else if (_T_2941) begin
        if (releaseDone) begin
          release_state <= 3'h7;
        end else begin
          release_state <= _GEN_302;
        end
      end else begin
        release_state <= _GEN_302;
      end
    end else if (_T_2941) begin
      if (releaseDone) begin
        release_state <= 3'h7;
      end else begin
        release_state <= _GEN_302;
      end
    end else begin
      release_state <= _GEN_302;
    end
    if (reset) begin
      release_ack_wait <= 1'h0;
    end else if (_T_2945) begin
      release_ack_wait <= _GEN_323;
    end else if (_T_2750) begin
      if (!(grantIsCached)) begin
        if (!(grantIsUncached)) begin
          if (grantIsVoluntary) begin
            release_ack_wait <= 1'h0;
          end
        end
      end
    end
    if (_T_2945) begin
      if (_T_2965) begin
        release_ack_addr <= probe_bits_address;
      end
    end
    if (reset) begin
      grantInProgress <= 1'h0;
    end else if (_T_2750) begin
      if (grantIsCached) begin
        if (d_last) begin
          grantInProgress <= 1'h0;
        end else begin
          grantInProgress <= 1'h1;
        end
      end
    end
    if (reset) begin
      s2_valid <= 1'h0;
    end else begin
      s2_valid <= _T_373;
    end
    if (s2_want_victimize) begin
      probe_bits_param <= 2'h0;
    end else if (_T_17) begin
      probe_bits_param <= auto_out_b_bits_param;
    end
    if (s2_want_victimize) begin
      probe_bits_size <= 4'h0;
    end else if (_T_17) begin
      probe_bits_size <= auto_out_b_bits_size;
    end
    if (s2_want_victimize) begin
      probe_bits_source <= 1'h0;
    end else if (_T_17) begin
      probe_bits_source <= auto_out_b_bits_source;
    end
    if (s2_want_victimize) begin
      probe_bits_address <= res_2_address;
    end else if (_T_17) begin
      probe_bits_address <= auto_out_b_bits_address;
    end
    if (s1_probe) begin
      s2_probe_state_state <= s1_meta_hit_state_state;
    end
    if (reset) begin
      _T_2895 <= 9'h0;
    end else if (_T_2887) begin
      if (c_first) begin
        if (tl_out__c_bits_opcode[0]) begin
          _T_2895 <= _T_2891[11:3];
        end else begin
          _T_2895 <= 9'h0;
        end
      end else begin
        _T_2895 <= _T_2897;
      end
    end
    s2_release_data_valid <= s1_release_data_valid & _T_2903;
    if (s0_clk_en) begin
      s1_req_cmd <= io_cpu_req_bits_cmd;
    end
    if (_T_2750) begin
      if (grantIsCached) begin
        if (_T_391) begin
          s2_req_cmd <= s1_req_cmd;
        end
      end else if (grantIsUncached) begin
        if (grantIsUncachedData) begin
          s2_req_cmd <= 5'h0;
        end else if (_T_391) begin
          s2_req_cmd <= s1_req_cmd;
        end
      end else if (_T_391) begin
        s2_req_cmd <= s1_req_cmd;
      end
    end else if (_T_391) begin
      s2_req_cmd <= s1_req_cmd;
    end
    pstore1_held <= _T_1059 & _T_1060;
    if (_T_888) begin
      pstore1_addr <= s1_req_addr;
    end
    if (s0_clk_en) begin
      s1_req_addr <= s0_req_addr;
    end
    if (_T_888) begin
      if (_T_53) begin
        pstore1_mask <= io_cpu_s1_data_mask;
      end else begin
        pstore1_mask <= s1_mask_xwr;
      end
    end
    if (s0_clk_en) begin
      s1_req_size <= io_cpu_req_bits_size;
    end
    pstore2_valid <= _T_1065 | advance_pstore1;
    if (advance_pstore1) begin
      pstore2_addr <= pstore1_addr;
    end
    if (advance_pstore1) begin
      mask <= _T_1119;
    end
    _T_384 <= ~s1_nack;
    if (_T_391) begin
      s2_hit_state_state <= s1_meta_hit_state_state;
    end
    if (s0_clk_en) begin
      s1_req_tag <= io_cpu_req_bits_tag;
    end
    if (s0_clk_en) begin
      s1_req_signed <= io_cpu_req_bits_signed;
    end
    if (s0_clk_en) begin
      s1_req_dprv <= io_cpu_req_bits_dprv;
    end
    if (s0_clk_en) begin
      s1_tlb_req_vaddr <= s0_req_addr;
    end
    if (s0_clk_en) begin
      s1_tlb_req_passthrough <= s0_req_phys;
    end
    if (s0_clk_en) begin
      s1_tlb_req_size <= io_cpu_req_bits_size;
    end
    if (s0_clk_en) begin
      s1_tlb_req_cmd <= io_cpu_req_bits_cmd;
    end
    s1_flush_valid <= _T_3093 & _T_2586;
    if (reset) begin
      cached_grant_wait <= 1'h0;
    end else if (_T_2750) begin
      if (grantIsCached) begin
        if (d_last) begin
          cached_grant_wait <= 1'h0;
        end else if (_T_2689) begin
          if (!(s2_uncached)) begin
            cached_grant_wait <= 1'h1;
          end
        end
      end else if (_T_2689) begin
        if (!(s2_uncached)) begin
          cached_grant_wait <= 1'h1;
        end
      end
    end else if (_T_2689) begin
      if (!(s2_uncached)) begin
        cached_grant_wait <= 1'h1;
      end
    end
    if (reset) begin
      uncachedInFlight_0 <= 1'h0;
    end else if (_T_2750) begin
      if (grantIsCached) begin
        if (_T_2689) begin
          if (s2_uncached) begin
            uncachedInFlight_0 <= _GEN_143;
          end
        end
      end else if (grantIsUncached) begin
        if (_T_2755) begin
          uncachedInFlight_0 <= 1'h0;
        end else if (_T_2689) begin
          if (s2_uncached) begin
            uncachedInFlight_0 <= _GEN_143;
          end
        end
      end else if (_T_2689) begin
        if (s2_uncached) begin
          uncachedInFlight_0 <= _GEN_143;
        end
      end
    end else if (_T_2689) begin
      if (s2_uncached) begin
        uncachedInFlight_0 <= _GEN_143;
      end
    end
    if (_T_2689) begin
      if (s2_uncached) begin
        if (a_sel) begin
          uncachedReqs_0_addr <= s2_req_addr;
        end
      end
    end
    if (_T_2689) begin
      if (s2_uncached) begin
        if (a_sel) begin
          uncachedReqs_0_tag <= s2_req_tag;
        end
      end
    end
    if (_T_2689) begin
      if (s2_uncached) begin
        if (a_sel) begin
          uncachedReqs_0_size <= s2_req_size;
        end
      end
    end
    if (_T_2689) begin
      if (s2_uncached) begin
        if (a_sel) begin
          uncachedReqs_0_signed <= s2_req_signed;
        end
      end
    end
    if (s0_clk_en) begin
      s1_did_read <= _T_224;
    end
    if (s1_valid_not_nacked) begin
      s2_hit_way <= s1_meta_hit_way;
    end
    if (_T_391) begin
      _T_673 <= s1_victim_way;
    end
    if (s1_probe) begin
      s2_probe_way <= s1_meta_hit_way;
    end
    if (_T_2750) begin
      if (grantIsCached) begin
        if (_T_391) begin
          s2_req_addr <= {{8'd0}, s1_paddr};
        end
      end else if (grantIsUncached) begin
        if (grantIsUncachedData) begin
          s2_req_addr <= {{8'd0}, _T_2762};
        end else if (_T_391) begin
          s2_req_addr <= {{8'd0}, s1_paddr};
        end
      end else if (_T_391) begin
        s2_req_addr <= {{8'd0}, s1_paddr};
      end
    end else if (_T_391) begin
      s2_req_addr <= {{8'd0}, s1_paddr};
    end
    if (_T_2750) begin
      if (grantIsCached) begin
        if (_T_391) begin
          s2_req_tag <= s1_req_tag;
        end
      end else if (grantIsUncached) begin
        if (grantIsUncachedData) begin
          s2_req_tag <= uncachedReqs_0_tag;
        end else if (_T_391) begin
          s2_req_tag <= s1_req_tag;
        end
      end else if (_T_391) begin
        s2_req_tag <= s1_req_tag;
      end
    end else if (_T_391) begin
      s2_req_tag <= s1_req_tag;
    end
    if (_T_2750) begin
      if (grantIsCached) begin
        if (_T_391) begin
          s2_req_size <= s1_req_size;
        end
      end else if (grantIsUncached) begin
        if (grantIsUncachedData) begin
          s2_req_size <= uncachedReqs_0_size;
        end else if (_T_391) begin
          s2_req_size <= s1_req_size;
        end
      end else if (_T_391) begin
        s2_req_size <= s1_req_size;
      end
    end else if (_T_391) begin
      s2_req_size <= s1_req_size;
    end
    if (_T_2750) begin
      if (grantIsCached) begin
        if (_T_391) begin
          s2_req_signed <= s1_req_signed;
        end
      end else if (grantIsUncached) begin
        if (grantIsUncachedData) begin
          s2_req_signed <= uncachedReqs_0_signed;
        end else if (_T_391) begin
          s2_req_signed <= s1_req_signed;
        end
      end else if (_T_391) begin
        s2_req_signed <= s1_req_signed;
      end
    end else if (_T_391) begin
      s2_req_signed <= s1_req_signed;
    end
    if (_T_391) begin
      s2_req_dprv <= s1_req_dprv;
    end
    if (_T_391) begin
      s2_tlb_xcpt_pf_ld <= tlb_io_resp_pf_ld;
    end
    if (_T_391) begin
      s2_tlb_xcpt_pf_st <= tlb_io_resp_pf_st;
    end
    if (_T_391) begin
      s2_tlb_xcpt_ae_ld <= tlb_io_resp_ae_ld;
    end
    if (_T_391) begin
      s2_tlb_xcpt_ae_st <= tlb_io_resp_ae_st;
    end
    if (_T_391) begin
      s2_tlb_xcpt_ma_ld <= tlb_io_resp_ma_ld;
    end
    if (_T_391) begin
      s2_tlb_xcpt_ma_st <= tlb_io_resp_ma_st;
    end
    if (_T_391) begin
      s2_pma_cacheable <= _T_392_cacheable;
    end
    if (_T_2750) begin
      if (!(grantIsCached)) begin
        if (grantIsUncached) begin
          if (grantIsUncachedData) begin
            s2_uncached_resp_addr <= uncachedReqs_0_addr;
          end
        end
      end
    end
    if (_T_391) begin
      _T_394 <= s1_req_addr;
    end
    s2_flush_valid_pre_tag_ecc <= s1_flush_valid;
    if (s1_meta_clk_en) begin
      _T_466 <= tag_array_RW0_rdata_3;
    end
    if (_T_2867) begin
      if (auto_out_d_valid) begin
        blockUncachedGrant <= _T_2780;
      end else begin
        blockUncachedGrant <= dataArb_io_out_valid;
      end
    end else begin
      blockUncachedGrant <= dataArb_io_out_valid;
    end
    if (reset) begin
      _T_2702 <= 9'h0;
    end else if (_T_2750) begin
      if (d_first) begin
        if (auto_out_d_bits_opcode[0]) begin
          _T_2702 <= _T_2698[11:3];
        end else begin
          _T_2702 <= 9'h0;
        end
      end else begin
        _T_2702 <= _T_2704;
      end
    end
    if (en) begin
      s2_data <= _T_491;
    end
    if (_T_391) begin
      if (_T_320) begin
        _T_678 <= s1_meta_uncorrected_3_tag;
      end else if (_T_318) begin
        _T_678 <= s1_meta_uncorrected_2_tag;
      end else if (_T_316) begin
        _T_678 <= s1_meta_uncorrected_1_tag;
      end else begin
        _T_678 <= s1_meta_uncorrected_0_tag;
      end
    end
    if (_T_391) begin
      if (_T_320) begin
        _T_680_state <= s1_meta_uncorrected_3_coh_state;
      end else if (_T_318) begin
        _T_680_state <= s1_meta_uncorrected_2_coh_state;
      end else if (_T_316) begin
        _T_680_state <= s1_meta_uncorrected_1_coh_state;
      end else begin
        _T_680_state <= s1_meta_uncorrected_0_coh_state;
      end
    end
    if (_T_872) begin
      lrscAddr <= s2_req_addr[39:6];
    end
    if (_T_888) begin
      pstore1_cmd <= s1_req_cmd;
    end
    if (_T_888) begin
      pstore1_data <= io_cpu_s1_data_data;
    end
    if (_T_888) begin
      pstore1_way <= s1_meta_hit_way;
    end
    if (_T_888) begin
      pstore1_rmw <= _T_943;
    end
    _T_1017 <= io_cpu_s2_nack;
    if (advance_pstore1) begin
      pstore2_way <= pstore1_way;
    end
    if (advance_pstore1) begin
      _T_1073 <= pstore1_storegen_data[7:0];
    end
    if (advance_pstore1) begin
      _T_1078 <= pstore1_storegen_data[15:8];
    end
    if (advance_pstore1) begin
      _T_1083 <= pstore1_storegen_data[23:16];
    end
    if (advance_pstore1) begin
      _T_1088 <= pstore1_storegen_data[31:24];
    end
    if (advance_pstore1) begin
      _T_1093 <= pstore1_storegen_data[39:32];
    end
    if (advance_pstore1) begin
      _T_1098 <= pstore1_storegen_data[47:40];
    end
    if (advance_pstore1) begin
      _T_1103 <= pstore1_storegen_data[55:48];
    end
    if (advance_pstore1) begin
      _T_1108 <= pstore1_storegen_data[63:56];
    end
    s1_release_data_valid <= dataArb_io_in_2_ready & dataArb_io_in_2_valid;
    _T_3001 <= _T_2999 & _T_20;
    doUncachedResp <= io_cpu_replay_next;
    if (reset) begin
      resetting <= 1'h0;
    end else if (resetting) begin
      if (flushDone) begin
        resetting <= 1'h0;
      end else begin
        resetting <= _GEN_341;
      end
    end else begin
      resetting <= _GEN_341;
    end
    _T_3081 <= reset;
    if (reset) begin
      flushCounter <= 8'hc0;
    end else begin
      flushCounter <= _GEN_343[7:0];
    end
    if (reset) begin
      _T_3162 <= 9'h0;
    end else if (_T_2887) begin
      if (_T_3165) begin
        if (tl_out__c_bits_opcode[0]) begin
          _T_3162 <= _T_2891[11:3];
        end else begin
          _T_3162 <= 9'h0;
        end
      end else begin
        _T_3162 <= _T_3164;
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_166) begin
          $fwrite(32'h80000002,"Assertion failed\n    at DCache.scala:1078 assert(!needsRead(req) || res)\n"); // @[DCache.scala 1078:11:chipyard.TestHarness.RocketConfig.fir@214252.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_166) begin
          $fatal; // @[DCache.scala 1078:11:chipyard.TestHarness.RocketConfig.fir@214253.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_371) begin
          $fwrite(32'h80000002,"Assertion failed\n    at DCache.scala:281 assert(!(s1_valid_masked && s1_req.cmd === M_PWR) || (s1_mask_xwr | ~io.cpu.s1_data.mask).andR)\n"); // @[DCache.scala 281:9:chipyard.TestHarness.RocketConfig.fir@214587.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_371) begin
          $fatal; // @[DCache.scala 281:9:chipyard.TestHarness.RocketConfig.fir@214588.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_166) begin
          $fwrite(32'h80000002,"Assertion failed\n    at DCache.scala:1078 assert(!needsRead(req) || res)\n"); // @[DCache.scala 1078:11:chipyard.TestHarness.RocketConfig.fir@215494.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_166) begin
          $fatal; // @[DCache.scala 1078:11:chipyard.TestHarness.RocketConfig.fir@215495.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1036) begin
          $fwrite(32'h80000002,"Assertion failed\n    at DCache.scala:459 assert(pstore1_rmw || pstore1_valid_not_rmw(io.cpu.s2_kill) === pstore1_valid)\n"); // @[DCache.scala 459:9:chipyard.TestHarness.RocketConfig.fir@215530.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1036) begin
          $fatal; // @[DCache.scala 459:9:chipyard.TestHarness.RocketConfig.fir@215531.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_356 & _T_2753) begin
          $fwrite(32'h80000002,"Assertion failed: A GrantData was unexpected by the dcache.\n    at DCache.scala:618 assert(cached_grant_wait, \"A GrantData was unexpected by the dcache.\")\n"); // @[DCache.scala 618:13:chipyard.TestHarness.RocketConfig.fir@217476.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_356 & _T_2753) begin
          $fatal; // @[DCache.scala 618:13:chipyard.TestHarness.RocketConfig.fir@217477.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_361 & _T_2758) begin
          $fwrite(32'h80000002,"Assertion failed: An AccessAck was unexpected by the dcache.\n    at DCache.scala:628 assert(f, \"An AccessAck was unexpected by the dcache.\") // TODO must handle Ack coming back on same cycle!\n"); // @[DCache.scala 628:17:chipyard.TestHarness.RocketConfig.fir@217495.14]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_361 & _T_2758) begin
          $fatal; // @[DCache.scala 628:17:chipyard.TestHarness.RocketConfig.fir@217496.14]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_370 & _T_2765) begin
          $fwrite(32'h80000002,"Assertion failed: A ReleaseAck was unexpected by the dcache.\n    at DCache.scala:649 assert(release_ack_wait, \"A ReleaseAck was unexpected by the dcache.\") // TODO should handle Ack coming back on same cycle!\n"); // @[DCache.scala 649:13:chipyard.TestHarness.RocketConfig.fir@217521.14]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_370 & _T_2765) begin
          $fatal; // @[DCache.scala 649:13:chipyard.TestHarness.RocketConfig.fir@217522.14]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_2777) begin
          $fwrite(32'h80000002,"Assertion failed\n    at DCache.scala:657 assert(tl_out.e.fire() === (tl_out.d.fire() && d_first && grantIsCached))\n"); // @[DCache.scala 657:9:chipyard.TestHarness.RocketConfig.fir@217544.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_2777) begin
          $fatal; // @[DCache.scala 657:9:chipyard.TestHarness.RocketConfig.fir@217545.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (s2_want_victimize & _T_2921) begin
          $fwrite(32'h80000002,"Assertion failed\n    at DCache.scala:737 assert(s2_valid_flush_line || s2_flush_valid || io.cpu.s2_nack)\n"); // @[DCache.scala 737:13:chipyard.TestHarness.RocketConfig.fir@217784.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (s2_want_victimize & _T_2921) begin
          $fatal; // @[DCache.scala 737:13:chipyard.TestHarness.RocketConfig.fir@217785.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (doUncachedResp & _T_3015) begin
          $fwrite(32'h80000002,"Assertion failed\n    at DCache.scala:849 assert(!s2_valid_hit)\n"); // @[DCache.scala 849:11:chipyard.TestHarness.RocketConfig.fir@218020.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (doUncachedResp & _T_3015) begin
          $fatal; // @[DCache.scala 849:11:chipyard.TestHarness.RocketConfig.fir@218021.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
